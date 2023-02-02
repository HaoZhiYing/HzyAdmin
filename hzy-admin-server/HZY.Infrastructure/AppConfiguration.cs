﻿using HZY.Infrastructure.Files;
using HZY.Framework.AutoRegisterIOC;
using Microsoft.Extensions.Configuration;
using HZY.Framework.AutoRegisterIOC.Attributes;
using HZY.Infrastructure.Enums;

namespace HZY.Infrastructure;

/// <summary>
/// 程序配置信息映射类 appsettings.json
/// </summary>
public class AppConfiguration : ISingletonSelfDependency
{
    /// <summary>
    /// IConfiguration 通过属性注入
    /// </summary>
    [Autowired]
    public virtual IConfiguration _configuration { get; }

    /// <summary>
    /// 程序默认配置项 通过属性注入
    /// </summary>
    [AppSettings(nameof(AppConfigurationOptions))]
    public virtual AppConfigurationOptions Configs { get; }

    /// <summary>
    /// 连接字符串 通过属性注入
    /// </summary>
    [AppSettings(nameof(ConnectionStrings))]
    public virtual ConnectionStringsOptions ConnectionStrings { get; }

    /// <summary>
    /// 程序配置信息映射类
    /// </summary>
    public AppConfiguration()
    {

    }

    /// <summary>
    /// 程序配置信息映射类
    /// </summary>
    /// <param name="configuration"></param>
    public AppConfiguration(IConfiguration configuration)
    {
        this._configuration = configuration;
        Configs = _configuration.GetSection(nameof(AppConfigurationOptions)).Get<AppConfigurationOptions>();
        ConnectionStrings = _configuration.GetSection(nameof(ConnectionStrings)).Get<ConnectionStringsOptions>();

    }

}

/// <summary>
/// 连接字符串配置
/// </summary>
public class ConnectionStringsOptions
{
    /// <summary>
    /// 默认数据库类型
    /// </summary>
    /// <value></value>
    public DefaultDatabaseType DefaultDatabaseType { get; set; }
    /// <summary>
    /// redis 地址
    /// </summary>
    /// <value></value>
    public string Redis { get; set; }
    /// <summary>
    /// sqlserver
    /// </summary>
    /// <value></value>
    public string DefaultSqlServer { get; set; }
    /// <summary>
    /// mysql
    /// </summary>
    /// <value></value>
    public string DefaultMySql { get; set; }
    /// <summary>
    /// PostgreSql
    /// </summary>
    /// <value></value>
    public string DefaultPostgreSql { get; set; }
    /// <summary>
    /// Oracle
    /// </summary>
    /// <value></value>
    public string DefaultOracle { get; set; }
}

/// <summary>
/// 应用程序配置
/// </summary>
public class AppConfigurationOptions
{
    /// <summary>
    /// 程序标题
    /// </summary>
    /// <value></value>
    public string AppTitle { get; set; }
    public string JwtValidAudience { get; set; }
    public string JwtValidIssuer { get; set; }
    public string JwtIssuerSigningKey { get; set; }
    /// <summary>
    /// token 键名
    /// </summary>
    /// <value></value>
    public string AuthorizationKeyName { get; set; }
    /// <summary>
    /// 超级管理员角色id
    /// </summary>
    /// <value></value>
    public Guid AdminRoleId { get; set; }
    /// <summary>
    /// 系统菜单id
    /// </summary>
    /// <value></value>
    public int SysMenuId { get; set; }
    /// <summary>
    /// 命名空间
    /// </summary>
    public string Namespace { get; set; }
    /// <summary>
    /// Api 白名单
    /// </summary>
    public string ApiWhiteList { get; set; }
    /// <summary>
    /// 是否监控EFCore程序
    /// </summary>
    public bool IsMonitorEFCore { get; set; }
    /// <summary>
    /// 是否拦截编辑 添加、修改、删除
    /// </summary>
    public bool IsInterceptEdit { get; set; }
    /// <summary>
    /// 是否运行 Quartz Task
    /// </summary>
    public bool IsRunQuartzTask { get; set; }
    /// <summary>
    /// dbconte 信息配置
    /// </summary>
    public DbContextInfoNode DbContextInfo { get; set; }
    /// <summary>
    /// 代码生成自动导入配置
    /// </summary>
    /// <value></value>
    public AutoImprotNode AutoImprot { get; set; }
    /// <summary>
    /// 上传文件配置
    /// </summary>
    /// <value></value>
    public FileManagerNode FileManager { get; set; }
}

/// <summary>
/// dbconte 信息配置
/// </summary>
public class DbContextInfoNode
{
    /// <summary>
    /// 数据库实体程序集名称
    /// </summary>
    public string DbSetScanDllName { get; set; }
    /// <summary>
    /// 数据库实体命名空间
    /// </summary>
    public string DbSetScanNamespace { get; set; }
    /// <summary>
    /// 数据表命名规则配置
    /// </summary>
    public NameRuleType NameRuleType { get; set; }
}

public class AutoImprotNode
{
    /// <summary>
    /// 项目所在文件夹名
    /// </summary>
    /// <value></value>
    public string ProjectRootPath { get; set; }
    /// <summary>
    /// 实体保存路径
    /// </summary>
    /// <value></value>
    public string ModelPath { get; set; }
    /// <summary>
    /// 服务保存路径
    /// </summary>
    /// <value></value>
    public string ServicePath { get; set; }
    /// <summary>
    /// 控制器保存路径
    /// </summary>
    /// <value></value>
    public string ControllerPath { get; set; }
    /// <summary>
    /// 前端视图保存路径
    /// </summary>
    /// <value></value>
    public string ClientIndexPath { get; set; }
    /// <summary>
    /// 前端信息弹窗保存位置
    /// </summary>
    /// <value></value>
    public string ClientInfoPath { get; set; }
    /// <summary>
    /// 前端服务保存位置
    /// </summary>
    /// <value></value>
    public string ClientServicePath { get; set; }
    /// <summary>
    /// 是否覆盖生成  否的话生成代码重复会在后面加一个时间
    /// </summary>
    /// <value></value>
    public bool IsCover { get; set; }
}

public class FileManagerNode
{
    /// <summary>
    /// 上传文件大小限制
    /// </summary>
    /// <value></value>
    public string MaxRequestBodySize { get; set; }

    /// <summary>
    /// 服务器地址
    /// </summary>
    /// <value></value>
    public string ServerUrl { get; set; }

    /// <summary>
    /// 保存文件根路径
    /// </summary>
    /// <value></value>
    public string DirectoryUrl { get; set; }

    /// <summary>
    /// 上传文件大小
    /// </summary>
    /// <value></value>
    public string MaxFileSizeLimit { get; set; }

    /// <summary>
    /// 允许上传格式
    /// </summary>
    /// <value></value>
    public string AllowExtensions { get; set; }

    private long maxRequestBodySize = -1;

    private long maxFileSizeLimit = -1;

    /// <summary>
    /// 获取最大请求内容体长度
    /// </summary>
    /// <returns></returns>
    public long GetMaxRequestBodySize()
    {
        if (maxRequestBodySize == -1)
        {
            try
            {
                var value = MaxRequestBodySize.ToStorageByteLength();
                maxRequestBodySize = value;
            }
            catch (System.Exception)
            {
                throw new Exception("MaxRequestBodySize 格式错误");
            }
        }

        return maxRequestBodySize;
    }

    /// <summary>
    /// 获取最大文件长度
    /// </summary>
    /// <returns></returns>
    public long GetMaxFileSizeLimit()
    {
        if (maxFileSizeLimit == -1)
        {
            try
            {
                var value = MaxFileSizeLimit.ToStorageByteLength();
                maxFileSizeLimit = value;
            }
            catch (System.Exception)
            {
                throw new Exception("MaxFileSizeLimit 格式错误");
            }
        }

        return maxFileSizeLimit;
    }
}