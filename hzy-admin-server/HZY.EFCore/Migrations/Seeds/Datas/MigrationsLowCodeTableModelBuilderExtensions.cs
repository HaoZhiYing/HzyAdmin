
using HZY.Models.Entities;
using HZY.Models.Entities.LowCode;
using HZY.Models.Entities.AllPeopleGoGoGo;
using HZY.Models.Entities.ApprovalFlow;
using HZY.Models.Entities.Framework;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HZY.EFCore.Migrations.Seeds.Datas;

  public static class MigrationsLowCodeTableModelBuilderExtensions
    {
        public static void Seed(this ModelBuilder modelBuilder)
        {
// ===============================================表：low_code_table 种子数据=============================================
modelBuilder.Entity<LowCodeTable>().HasData(new LowCodeTable(){Id=Guid.Parse("69b24f04-0ed3-45fc-91d9-0dc929175a57"),CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="用户与岗位",EntityName="SysUserPost",LastModificationTime=DateTime.Parse("2022/5/24 21:57:34"),Remark=null,Schema="dbo",TableName="SysUserPost",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("6ba9805c-916e-4d2c-99d0-216fcbc361cc"),CreationTime=DateTime.Parse("2022/5/23 0:00:00"),DisplayName="低代码表",EntityName="LowCodeTable",LastModificationTime=DateTime.Parse("2022/5/24 21:57:34"),Remark=null,Schema="dbo",TableName="LowCodeTable",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("651bb982-1130-4e1c-9070-36b90dcf2324"),CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="工作流审批步骤配置",EntityName="FlowApprovalStep",LastModificationTime=DateTime.Parse("2022/5/24 21:57:34"),Remark=null,Schema="dbo",TableName="FlowApprovalStep",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("524e71b4-cbf7-4248-8b29-3f99b43f2eb2"),CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="自定义数据权限",EntityName="SysDataAuthorityCustom",LastModificationTime=DateTime.Parse("2022/5/24 21:57:34"),Remark=null,Schema="dbo",TableName="SysDataAuthorityCustom",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("7ad3b915-f0bd-443a-89cd-42d41dd6c554"),CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="工作流用户审批步骤",EntityName="FlowApprovalStepUser",LastModificationTime=DateTime.Parse("2022/5/24 21:57:34"),Remark=null,Schema="dbo",TableName="FlowApprovalStepUser",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("1a8df018-79f8-4e26-b4eb-4b735aae7275"),CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="审批流",EntityName="Flow",LastModificationTime=DateTime.Parse("2022/5/24 21:57:34"),Remark=null,Schema="dbo",TableName="Flow",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("60cceba1-28bf-4d1d-b603-4edf95d512b8"),CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="操作日志",EntityName="SysOperationLog",LastModificationTime=DateTime.Parse("2022/5/24 21:57:34"),Remark=null,Schema="dbo",TableName="SysOperationLog",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("2ae9e532-7d9a-474b-b629-50a39945c44d"),CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="菜单功能",EntityName="SysMenuFunction",LastModificationTime=DateTime.Parse("2022/5/24 21:57:34"),Remark=null,Schema="dbo",TableName="SysMenuFunction",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("d8948c56-c5bd-4061-b272-5417375f38f0"),CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="审批流审批",EntityName="FlowApproval",LastModificationTime=DateTime.Parse("2022/5/24 21:57:34"),Remark=null,Schema="dbo",TableName="FlowApproval",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("d26d07cb-158a-4cb2-8b20-5dfd5181af54"),CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="组织",EntityName="SysOrganization",LastModificationTime=DateTime.Parse("2022/5/24 21:57:34"),Remark=null,Schema="dbo",TableName="SysOrganization",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("6323638b-a45f-4a76-886e-69a9e9be0901"),CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="用户",EntityName="SysUser",LastModificationTime=DateTime.Parse("2022/5/24 21:57:34"),Remark=null,Schema="dbo",TableName="SysUser",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("79fbd4ec-9f4e-45dc-8065-70f2eb422cdf"),CreationTime=DateTime.Parse("2022/5/23 0:00:00"),DisplayName="低代码表信息",EntityName="LowCodeTableInfo",LastModificationTime=DateTime.Parse("2022/5/24 21:57:34"),Remark=null,Schema="dbo",TableName="LowCodeTableInfo",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("af37f705-7ba0-4883-b1be-8a274ea4c026"),CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="数据字典",EntityName="SysDictionary",LastModificationTime=DateTime.Parse("2022/5/24 21:57:34"),Remark=null,Schema="dbo",TableName="SysDictionary",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("73c97832-4e7f-4758-86d2-94327971b5fd"),CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="会员",EntityName="Member",LastModificationTime=DateTime.Parse("2022/5/24 21:57:34"),Remark=null,Schema="dbo",TableName="Member",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("d2600250-6f32-4d7d-8395-96cc9fa36db4"),CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="菜单",EntityName="SysMenu",LastModificationTime=DateTime.Parse("2022/5/24 21:57:34"),Remark=null,Schema="dbo",TableName="SysMenu",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("f3d7bbb3-c1fb-4d61-92a4-9bc101811335"),CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="角色",EntityName="SysRole",LastModificationTime=DateTime.Parse("2022/5/24 21:57:34"),Remark=null,Schema="dbo",TableName="SysRole",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("852f53ff-0d00-4c32-aa55-a9c11993751b"),CreationTime=DateTime.Parse("2022/5/23 0:00:00"),DisplayName="低代码列表",EntityName="LowCodeList",LastModificationTime=DateTime.Parse("2022/5/24 21:57:34"),Remark=null,Schema="dbo",TableName="LowCodeList",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("ae6d94d8-6a15-4348-b600-aa17e4b61718"),CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="工作流节点",EntityName="FlowNode",LastModificationTime=DateTime.Parse("2022/5/24 21:57:34"),Remark=null,Schema="dbo",TableName="FlowNode",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("69edd8a8-1d24-478c-a909-b82039edcec0"),CreationTime=DateTime.Parse("2022/5/23 0:00:00"),DisplayName="低代码检索表",EntityName="LowCodeSearch",LastModificationTime=DateTime.Parse("2022/5/24 21:57:34"),Remark=null,Schema="dbo",TableName="LowCodeSearch",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("6fabc67a-8b48-49a6-8ba1-c8a32c499d36"),CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="功能",EntityName="SysFunction",LastModificationTime=DateTime.Parse("2022/5/24 21:57:34"),Remark=null,Schema="dbo",TableName="SysFunction",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("0a8bdb18-758a-4798-9ffc-e7031dcbf262"),CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="岗位",EntityName="SysPost",LastModificationTime=DateTime.Parse("2022/5/24 21:57:34"),Remark=null,Schema="dbo",TableName="SysPost",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("8da38d20-8a09-4e81-8dd8-ed6702aee380"),CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="角色菜单功能关联",EntityName="SysRoleMenuFunction",LastModificationTime=DateTime.Parse("2022/5/24 21:57:34"),Remark=null,Schema="dbo",TableName="SysRoleMenuFunction",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("e79db53b-7162-4669-9b5e-f860501475ac"),CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="数据权限",EntityName="SysDataAuthority",LastModificationTime=DateTime.Parse("2022/5/24 21:57:34"),Remark=null,Schema="dbo",TableName="SysDataAuthority",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("3da5d264-2e8d-460c-a10c-ff9a6bb57a60"),CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="用户与角色",EntityName="SysUserRole",LastModificationTime=DateTime.Parse("2022/5/24 21:57:34"),Remark=null,Schema="dbo",TableName="SysUserRole",Type="TABLE"});

    }
}
