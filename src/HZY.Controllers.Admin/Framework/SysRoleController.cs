﻿using HZY.Controllers.Admin.ControllersAdmin;
using HZY.EFCore.Models;
using HZY.Infrastructure;
using HZY.Infrastructure.Filters;
using HZY.Infrastructure.Permission.Attributes;
using HZY.Models.DTO;
using HZY.Models.Entities.Framework;
using HZY.Services.Admin.Framework;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HZY.Controllers.Admin.Framework;

/// <summary>
/// 角色控制器
/// </summary>
public class SysRoleController : AdminBaseController<SysRoleService>
{
    public SysRoleController(SysRoleService defaultService) : base("16", defaultService)
    {
        this.SetMenuName("角色");
    }

    /// <summary>
    /// 获取列表
    /// </summary>
    /// <param name="size"></param>
    /// <param name="page"></param>
    /// <param name="search"></param>
    /// <returns></returns>
    [ApiResourceCacheFilter(1)]
    [HttpPost("FindList/{size}/{page}")]
    public async Task<PagingViewModel> FindListAsync([FromRoute] int size, [FromRoute] int page, [FromBody] SysRole search)
    {
        return await this._defaultService.FindListAsync(page, size, search);
    }

    /// <summary>
    /// 根据id数组删除
    /// </summary>
    /// <param name="ids"></param>
    /// <returns></returns>
    [HttpPost("DeleteList")]
    public async Task<bool> DeleteListAsync([FromBody] List<Guid> ids)
    {
        await this._defaultService.DeleteListAsync(ids);
        return true;
    }

    /// <summary>
    /// 查询表单数据
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    [HttpGet("FindForm/{id?}")]
    public async Task<Dictionary<string, object>> FindFormAsync([FromRoute] Guid id)
    {
        return await this._defaultService.FindFormAsync(id);
    }

    /// <summary>
    /// 保存
    /// </summary>
    /// <param name="form"></param>
    /// <returns></returns>
    [HttpPost("SaveForm")]
    public async Task<SysRole> SaveFormAsync([FromBody] SysRole form)
    {
        return await this._defaultService.SaveFormAsync(form);
    }

    /// <summary>
    /// 导出Excel
    /// </summary>
    /// <param name="search"></param>
    /// <returns></returns>
    [ApiResourceCacheFilter(10)]
    [HttpPost("ExportExcel")]
    public async Task ExportExcelAsync([FromBody] SysRole search)
        => base.HttpContext.DownLoadFile(await this._defaultService.ExportExcelAsync(search), Tools.GetFileContentType[".xls"].ToStr(),
            $"{this.GetMenuName()}列表数据 {DateTime.Now.ToString("yyyy-MM-dd")}.xls");




}