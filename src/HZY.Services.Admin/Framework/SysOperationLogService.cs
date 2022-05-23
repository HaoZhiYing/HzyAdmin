﻿using HZY.Domain.Services.Accounts;
using HZY.EFCore.Models;
using HZY.EFCore.Repositories.Core;
using HZY.Infrastructure;
using HZY.Infrastructure.ApiResultManage;
using HZY.Infrastructure.MessageQueue;
using HZY.Infrastructure.Permission.Attributes;
using HZY.Models.DTO;
using HZY.Models.DTO.Framework;
using HZY.Models.Entities;
using HZY.Models.Entities.Framework;
using HZY.Services.Admin.Core;
using HzyEFCoreRepositories.Extensions;
using HzyScanDiService.Extensions;
using Microsoft.AspNetCore.Http;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using Microsoft.Extensions.DependencyInjection;
using Newtonsoft.Json;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HZY.Services.Admin.Framework;

/// <summary>
/// 操作日服务
/// </summary>
public class SysOperationLogService : AdminBaseService<IRepository<SysOperationLog>>
{
    private readonly HttpContext _httpContext;
    private readonly IAccountDomainService _accountService;
    private readonly IMessageQueueProvider _messageQueueProvider;
    private readonly IRepository<SysUser> _sysUserRepository;

    public SysOperationLogService(IRepository<SysOperationLog> defaultRepository,
        IHttpContextAccessor iHttpContextAccessor,
        IAccountDomainService accountService,
        IMessageQueueProvider messageQueueProvider,
        IRepository<SysUser> sysUserRepository
        ) : base(defaultRepository)
    {
        this._httpContext = iHttpContextAccessor.HttpContext;
        _accountService = accountService;
        this._messageQueueProvider = messageQueueProvider;
        _sysUserRepository = sysUserRepository;
    }

    /// <summary>
    /// 写入操作日志
    /// </summary>
    /// <returns></returns>
    public async Task WriteInLogAsync(long time, string bodyString, Endpoint endpoint)
    {
        var queryString = _httpContext.Request.QueryString.ToString();
        var apiUrl = _httpContext.Request.Path;

        //获取请求ip
        var ip = _httpContext.Request.Headers["X-Forwarded-For"].FirstOrDefault();
        if (string.IsNullOrEmpty(ip))
        {
            ip = _httpContext.Connection.RemoteIpAddress.MapToIPv4().ToString();
        }
        //
        var clientInfo = _httpContext.GetBrowserClientInfo();
        var browser = clientInfo?.UA.Family + clientInfo?.UA.Major;
        var os = clientInfo?.OS.Family + clientInfo?.OS.Major;

        //本机不记录
        // if (_IP == "::1") return;

        var formString = string.Empty;

        //form
        try
        {
            if (_httpContext.Request.HasFormContentType)
            {
                //读取 表单 信息
                var form = await _httpContext.Request.ReadFormAsync();
                if (form != null)
                {
                    var _Dictionary = new Dictionary<string, object>();
                    foreach (var key in form.Keys)
                    {
                        _Dictionary[key] = form[key];
                    }

                    formString = JsonConvert.SerializeObject(_Dictionary);
                }
            }
        }
        catch (Exception) { }

        var userInfo = _accountService.GetAccountInfo();
        var sysOperationLog = new SysOperationLog
        {
            Api = apiUrl,
            Ip = ip,
            Form = formString,
            QueryString = queryString,
            FormBody = bodyString,
            UserId = userInfo?.Id,
            TakeUpTime = time,
            Browser = browser,
            OS = os,
        };

        //
        if (endpoint != null)
        {
            var controllerDescriptorAttribute = endpoint.Metadata.GetMetadata<ControllerDescriptorAttribute>();
            var actionDescriptorAttribute = endpoint.Metadata.GetMetadata<ActionDescriptorAttribute>();
            sysOperationLog.ControllerDisplayName = controllerDescriptorAttribute?.DisplayName;
            sysOperationLog.ActionDisplayName = actionDescriptorAttribute?.DisplayName;
        }

        //发布消息
        await _messageQueueProvider.SendMessageQueueAsync("WriteInLogAsync", sysOperationLog, (value, serviceProvider) =>
        {
            //消费消息
            using var scope = ServiceProviderExtensions.CreateScope();
            var repository = scope.ServiceProvider.GetRequiredService<IRepository<SysOperationLog>>();
            repository.InsertAsync((SysOperationLog)value).Wait();
        });
    }

    /// <summary>
    /// 获取列表数据
    /// </summary>
    /// <param name="page">page</param>
    /// <param name="size">size</param>
    /// <param name="search">search</param>
    /// <returns></returns>
    public async Task<PagingViewModel> FindListAsync(int page, int size, SysOperationLogSearchDto search)
    {
        var query = (from log in _defaultRepository.Select.OrderByDescending(w => w.CreationTime)
                     from use in _sysUserRepository.Select.Where(w => w.Id == log.UserId).DefaultIfEmpty()
                     select new { log, use })
                     .WhereIf(!string.IsNullOrWhiteSpace(search.Api), w => w.log.Api.Contains(search.Api))
                     .WhereIf(!string.IsNullOrWhiteSpace(search.Browser), w => w.log.Browser.Contains(search.Browser))
                     .WhereIf(!string.IsNullOrWhiteSpace(search.Ip), w => w.log.Ip.Contains(search.Ip))
                     .WhereIf(!string.IsNullOrWhiteSpace(search.OS), w => w.log.OS.Contains(search.OS))
                     .WhereIf(search.StartTime != null, w => w.log.CreationTime.Date >= search.StartTime.Value)
                     .WhereIf(search.EndTime != null, w => w.log.CreationTime.Date <= search.EndTime.Value)
                     .Select(w => new
                     {
                         w.log.Id,
                         w.log.Api,
                         w.log.Browser,
                         w.log.Ip,
                         w.log.OS,
                         w.log.TakeUpTime,
                         UserName = w.use.Name,
                         w.use.LoginName,
                         w.log.ControllerDisplayName,
                         w.log.ActionDisplayName,
                         CreationTime = w.log.CreationTime.ToString("yyyy-MM-dd HH:mm:ss")
                     })
                     ;

        return await this._defaultRepository.AsPagingViewModelAsync(query, page, size);
    }

    /// <summary>
    /// 删除所有数据
    /// </summary>
    /// <returns></returns>
    public async Task<bool> DeletedAllData()
    {
        return await _defaultRepository.DeleteAsync(w => 1 == 1) >= 0;
    }

    /// <summary>
    /// 查询表单数据
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public async Task<Dictionary<string, object>> FindFormAsync(Guid id)
    {
        var res = new Dictionary<string, object>();
        var form = await this._defaultRepository.FindByIdAsync(id);
        form = form.NullSafe();
        var use = await _sysUserRepository.FindByIdAsync(form.UserId);
        use = use.NullSafe();
        res[nameof(id)] = id == Guid.Empty ? "" : id;
        res[nameof(form)] = form;
        res[nameof(use)] = use;
        return res;
    }




}