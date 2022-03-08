﻿using HZY.FreeSqlCore;
using HZY.EFCore;
using HZY.Infrastructure;
using HZY.Infrastructure.ScanDIService;
using HZY.WebHost.Middlewares;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.IdentityModel.Tokens;
using Microsoft.OpenApi.Models;
using Swashbuckle.AspNetCore.Filters;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using HZY.Repositories.Redis;
using Quartz;
using Quartz.Impl;
using HZY.Infrastructure.Quartz;
using Microsoft.AspNetCore.Authorization;

namespace HZY.WebHost.Configure;

public class AppConfigureServices
{
    private static readonly IEnumerable<string> _versionList = typeof(ApiVersions).GetEnumNames().OrderBy(w => w);

    /// <summary>
    /// 获取 Swagger 版本集合
    /// </summary>
    /// <returns></returns>
    public static IEnumerable<string> GetVersionList() => _versionList;

    /// <summary>
    /// 配置服务
    /// </summary>
    /// <param name="services"></param>
    /// <param name="configuration"></param>
    public static void Build(IServiceCollection services, IConfiguration configuration)
    {
        var prefixString = configuration.GetSection("AppConfiguration:Namespace").Value + ".";

        #region 自动扫描服务注册 、 其他服务注册

        //扫描服务自动化注册
        services.ScanningAppServices(prefixString);

        services.AddSingleton<IHostedService, LifetimeEventsHostedService>();

        #region HttpContext、IMemoryCache

        services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();
        services.AddMemoryCache();

        #endregion

        #region Quartz

        //AutoMapper 配置
        services.AddAutoMapper(typeof(AutoMapperConfig));
        //注册ISchedulerFactory的实例。
        services.AddTransient<ISchedulerFactory, StdSchedulerFactory>();

        #endregion

        #endregion

        var appConfig = services.BuildServiceProvider().GetRequiredService<AppConfiguration>();

        #region 数据库仓储注册 、 中间件注册
        //配置efcore
        EFCoreModule.RegisterAdminBaseDbContext(services, configuration);
        //配置freesql
        FreeSqlCoreModule.RegisterFreeSql(services, configuration, $"{prefixString}Repositories");
        //配置redis
        RepositoryRedisModule.RegisterRedisRepository(services, appConfig.ConnectionStringRedis);
        //添加中间件
        services.AddScoped<TakeUpTimeMiddleware>();

        #endregion

        #region 取消默认验证Api 接收参数模型 的 验证特性 如有 [ApiController]

        services.Configure<ApiBehaviorOptions>(options => { options.SuppressModelStateInvalidFilter = true; });

        #endregion

        #region 跨域配置 配置跨域处理

        services.AddCors(options =>
        {
            options.AddPolicy("WebHostCors", builder =>
            {
                builder.WithOrigins("*")
                    .AllowAnyMethod()
                    .AllowAnyHeader();
                //.AllowAnyOrigin()
                //.AllowCredentials();
                //6877
            });
        });

        #endregion

        #region JWT

        #region 此配置可用于自定义 token 的 key name
        services.AddAuthorization(options =>
        {
            options.AddPolicy("WebHostPolicy", policy => policy.Requirements.Add(new CustomPolicyRequirement(appConfig.AuthorizationKeyName)));
        });
        services.AddSingleton<IAuthorizationHandler, CustomAuthorizationHandler>();
        #endregion

        services.AddAuthentication(JwtBearerDefaults.AuthenticationScheme).AddJwtBearer(options =>
        {
            options.TokenValidationParameters = new TokenValidationParameters
            {
                ValidateIssuer = true, //是否验证Issuer
                ValidateAudience = true, //是否验证Audience
                ValidateLifetime = true, //是否验证失效时间
                ValidateIssuerSigningKey = true, //是否验证SecurityKey
                ValidAudience = appConfig.JwtValidAudience, //Audience
                ValidIssuer = appConfig.JwtValidIssuer, //Issuer，这两项和前面签发jwt的设置一致
                IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(appConfig.JwtIssuerSigningKey)) //拿到SecurityKey
            };
        });

        #endregion

        #region Swagger 注册Swagger生成器，定义一个和多个Swagger 文档

        services.AddSwaggerGen(options =>
        {
            foreach (var item in _versionList)
            {
                options.SwaggerDoc(item, new OpenApiInfo
                {
                    Title = item
                });
            }

            //为 Swagger JSON and UI设置xml文档注释路径
            Directory.GetFiles(AppDomain.CurrentDomain.BaseDirectory)
            .Where(w => w.EndsWith(".xml") && w.Contains(prefixString))
            .Select(w => w)
            .ToList()
            .ForEach(w => options.IncludeXmlComments(w, true))
            ;

            #region Jwt token 配置

            //option.OperationFilter<AppService.SwaggerParameterFilter>(); // 给每个接口配置授权码传入参数文本框
            //
            options.OperationFilter<AddResponseHeadersFilter>();
            options.OperationFilter<AppendAuthorizeToSummaryOperationFilter>();
            //很重要！这里配置安全校验，和之前的版本不一样
            options.OperationFilter<SecurityRequirementsOperationFilter>();
            //开启 oauth2 安全描述
            options.AddSecurityDefinition("oauth2", new OpenApiSecurityScheme
            {
                Description = "JWT授权(数据将在请求头中进行传输) 直接在下框中输入Bearer {token}（注意两者之间是一个空格）\"",
                In = ParameterLocation.Header,
                Name = appConfig.AuthorizationKeyName,
                Type = SecuritySchemeType.ApiKey,
                //Scheme = "basic",
            });

            #endregion
        });

        #endregion

    }



}