/*
 Navicat Premium Data Transfer

 Source Server         : 本地_SqlServer
 Source Server Type    : SQL Server
 Source Server Version : 14001000
 Source Host           : .:1433
 Source Catalog        : hzy_admin_sqlserver_20220526
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 14001000
 File Encoding         : 65001

 Date: 30/05/2022 22:37:51
*/


-- ----------------------------
-- Table structure for Flow
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Flow]') AND type IN ('U'))
	DROP TABLE [dbo].[Flow]
GO

CREATE TABLE [dbo].[Flow] (
  [Id] uniqueidentifier  NOT NULL,
  [LastModificationTime] datetime  NULL,
  [CreationTime] datetime  NULL,
  [Number] int  NULL,
  [Code] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Flow] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序号',
'SCHEMA', N'dbo',
'TABLE', N'Flow',
'COLUMN', N'Number'
GO

EXEC sp_addextendedproperty
'MS_Description', N'编码',
'SCHEMA', N'dbo',
'TABLE', N'Flow',
'COLUMN', N'Code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程名称',
'SCHEMA', N'dbo',
'TABLE', N'Flow',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'Flow',
'COLUMN', N'Remark'
GO


-- ----------------------------
-- Records of Flow
-- ----------------------------

-- ----------------------------
-- Table structure for FlowApproval
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[FlowApproval]') AND type IN ('U'))
	DROP TABLE [dbo].[FlowApproval]
GO

CREATE TABLE [dbo].[FlowApproval] (
  [Id] uniqueidentifier  NOT NULL,
  [LastModificationTime] datetime  NULL,
  [CreationTime] datetime  NULL,
  [UserId] uniqueidentifier  NULL,
  [UserName] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [LaunchTime] datetime  NULL,
  [FormId] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [FlowId] uniqueidentifier  NULL,
  [FlowCode] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [FlowName] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[FlowApproval] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'发起人Id',
'SCHEMA', N'dbo',
'TABLE', N'FlowApproval',
'COLUMN', N'UserId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发起人',
'SCHEMA', N'dbo',
'TABLE', N'FlowApproval',
'COLUMN', N'UserName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发起时间',
'SCHEMA', N'dbo',
'TABLE', N'FlowApproval',
'COLUMN', N'LaunchTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单Id',
'SCHEMA', N'dbo',
'TABLE', N'FlowApproval',
'COLUMN', N'FormId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程Id',
'SCHEMA', N'dbo',
'TABLE', N'FlowApproval',
'COLUMN', N'FlowId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程编码',
'SCHEMA', N'dbo',
'TABLE', N'FlowApproval',
'COLUMN', N'FlowCode'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程名称',
'SCHEMA', N'dbo',
'TABLE', N'FlowApproval',
'COLUMN', N'FlowName'
GO


-- ----------------------------
-- Records of FlowApproval
-- ----------------------------

-- ----------------------------
-- Table structure for FlowApprovalStep
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[FlowApprovalStep]') AND type IN ('U'))
	DROP TABLE [dbo].[FlowApprovalStep]
GO

CREATE TABLE [dbo].[FlowApprovalStep] (
  [Id] uniqueidentifier  NOT NULL,
  [LastModificationTime] datetime  NULL,
  [CreationTime] datetime  NULL,
  [Sort] int  NULL,
  [FlowNodeId] uniqueidentifier  NULL,
  [FlowNodeName] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SortMore] int  NULL,
  [State] int  NULL,
  [OpinIons] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [UserId] uniqueidentifier  NULL,
  [UserName] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ApprovalDate] datetime  NULL
)
GO

ALTER TABLE [dbo].[FlowApprovalStep] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'步骤顺序号',
'SCHEMA', N'dbo',
'TABLE', N'FlowApprovalStep',
'COLUMN', N'Sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'审批流节点Id',
'SCHEMA', N'dbo',
'TABLE', N'FlowApprovalStep',
'COLUMN', N'FlowNodeId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'审批流节点名称',
'SCHEMA', N'dbo',
'TABLE', N'FlowApprovalStep',
'COLUMN', N'FlowNodeName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'多次审批顺序号（可能是多次审批次数）',
'SCHEMA', N'dbo',
'TABLE', N'FlowApprovalStep',
'COLUMN', N'SortMore'
GO

EXEC sp_addextendedproperty
'MS_Description', N'步骤状态（待审批、同意、不同意、回退升级审批）',
'SCHEMA', N'dbo',
'TABLE', N'FlowApprovalStep',
'COLUMN', N'State'
GO

EXEC sp_addextendedproperty
'MS_Description', N'步骤审批意见',
'SCHEMA', N'dbo',
'TABLE', N'FlowApprovalStep',
'COLUMN', N'OpinIons'
GO

EXEC sp_addextendedproperty
'MS_Description', N'步骤审批人Id',
'SCHEMA', N'dbo',
'TABLE', N'FlowApprovalStep',
'COLUMN', N'UserId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'步骤审批人名称',
'SCHEMA', N'dbo',
'TABLE', N'FlowApprovalStep',
'COLUMN', N'UserName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'审批时间',
'SCHEMA', N'dbo',
'TABLE', N'FlowApprovalStep',
'COLUMN', N'ApprovalDate'
GO


-- ----------------------------
-- Records of FlowApprovalStep
-- ----------------------------

-- ----------------------------
-- Table structure for FlowApprovalStepUser
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[FlowApprovalStepUser]') AND type IN ('U'))
	DROP TABLE [dbo].[FlowApprovalStepUser]
GO

CREATE TABLE [dbo].[FlowApprovalStepUser] (
  [Id] uniqueidentifier  NOT NULL,
  [LastModificationTime] datetime  NULL,
  [CreationTime] datetime  NULL,
  [FlowApprovalStepId] uniqueidentifier  NULL,
  [FlowNodeId] uniqueidentifier  NULL,
  [FlowNodeName] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [UserId] uniqueidentifier  NULL,
  [UserName] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[FlowApprovalStepUser] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'步骤Id',
'SCHEMA', N'dbo',
'TABLE', N'FlowApprovalStepUser',
'COLUMN', N'FlowApprovalStepId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'审批节点Id',
'SCHEMA', N'dbo',
'TABLE', N'FlowApprovalStepUser',
'COLUMN', N'FlowNodeId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'审批节点名称',
'SCHEMA', N'dbo',
'TABLE', N'FlowApprovalStepUser',
'COLUMN', N'FlowNodeName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'审批人Id',
'SCHEMA', N'dbo',
'TABLE', N'FlowApprovalStepUser',
'COLUMN', N'UserId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'审批人名称',
'SCHEMA', N'dbo',
'TABLE', N'FlowApprovalStepUser',
'COLUMN', N'UserName'
GO


-- ----------------------------
-- Records of FlowApprovalStepUser
-- ----------------------------

-- ----------------------------
-- Table structure for FlowNode
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[FlowNode]') AND type IN ('U'))
	DROP TABLE [dbo].[FlowNode]
GO

CREATE TABLE [dbo].[FlowNode] (
  [Id] uniqueidentifier  NOT NULL,
  [LastModificationTime] datetime  NULL,
  [CreationTime] datetime  NULL,
  [FlowId] uniqueidentifier  NULL,
  [FlowCode] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Sort] int  NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [RoleId] uniqueidentifier  NULL,
  [Remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[FlowNode] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of FlowNode
-- ----------------------------

-- ----------------------------
-- Table structure for LowCodeList
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[LowCodeList]') AND type IN ('U'))
	DROP TABLE [dbo].[LowCodeList]
GO

CREATE TABLE [dbo].[LowCodeList] (
  [Id] uniqueidentifier  NOT NULL,
  [LastModificationTime] datetime  NULL,
  [CreationTime] datetime  NULL,
  [Low_Code_TableId] uniqueidentifier  NULL,
  [Low_Code_Table_InfoId] uniqueidentifier  NULL,
  [ForeignKeyTableId] uniqueidentifier  NULL,
  [ForeignKeyTableFieldName] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[LowCodeList] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of LowCodeList
-- ----------------------------

-- ----------------------------
-- Table structure for LowCodeSearch
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[LowCodeSearch]') AND type IN ('U'))
	DROP TABLE [dbo].[LowCodeSearch]
GO

CREATE TABLE [dbo].[LowCodeSearch] (
  [Id] uniqueidentifier  NOT NULL,
  [LastModificationTime] datetime  NULL,
  [CreationTime] datetime  NULL,
  [Low_Code_TableId] uniqueidentifier  NULL,
  [Low_Code_Table_InfoId] uniqueidentifier  NULL
)
GO

ALTER TABLE [dbo].[LowCodeSearch] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of LowCodeSearch
-- ----------------------------

-- ----------------------------
-- Table structure for LowCodeTable
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[LowCodeTable]') AND type IN ('U'))
	DROP TABLE [dbo].[LowCodeTable]
GO

CREATE TABLE [dbo].[LowCodeTable] (
  [Id] uniqueidentifier  NOT NULL,
  [LastModificationTime] datetime  NULL,
  [CreationTime] datetime  NULL,
  [TableName] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Schema] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Type] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [DisplayName] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [EntityName] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Remark] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[LowCodeTable] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of LowCodeTable
-- ----------------------------
INSERT INTO [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'69B24F04-0ED3-45FC-91D9-0DC929175A57', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'SysUserPost', N'dbo', N'TABLE', N'用户与岗位', N'SysUserPost', NULL)
GO

INSERT INTO [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'6BA9805C-916E-4D2C-99D0-216FCBC361CC', N'2022-05-24 21:57:34.433', N'2022-05-23 00:00:00.000', N'LowCodeTable', N'dbo', N'TABLE', N'低代码表', N'LowCodeTable', NULL)
GO

INSERT INTO [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'651BB982-1130-4E1C-9070-36B90DCF2324', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'FlowApprovalStep', N'dbo', N'TABLE', N'工作流审批步骤配置', N'FlowApprovalStep', NULL)
GO

INSERT INTO [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'524E71B4-CBF7-4248-8B29-3F99B43F2EB2', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'SysDataAuthorityCustom', N'dbo', N'TABLE', N'自定义数据权限', N'SysDataAuthorityCustom', NULL)
GO

INSERT INTO [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'7AD3B915-F0BD-443A-89CD-42D41DD6C554', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'FlowApprovalStepUser', N'dbo', N'TABLE', N'工作流用户审批步骤', N'FlowApprovalStepUser', NULL)
GO

INSERT INTO [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'C5883367-42AA-43B8-9577-4720A2253EFA', N'2022-05-24 21:57:34.433', N'2022-04-28 00:00:00.000', N'News', N'dbo', N'TABLE', N'资讯', N'News', NULL)
GO

INSERT INTO [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'1A8DF018-79F8-4E26-B4EB-4B735AAE7275', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'Flow', N'dbo', N'TABLE', N'审批流', N'Flow', NULL)
GO

INSERT INTO [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'60CCEBA1-28BF-4D1D-B603-4EDF95D512B8', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'SysOperationLog', N'dbo', N'TABLE', N'操作日志', N'SysOperationLog', NULL)
GO

INSERT INTO [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'2AE9E532-7D9A-474B-B629-50A39945C44D', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'SysMenuFunction', N'dbo', N'TABLE', N'菜单功能', N'SysMenuFunction', NULL)
GO

INSERT INTO [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'D8948C56-C5BD-4061-B272-5417375F38F0', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'FlowApproval', N'dbo', N'TABLE', N'审批流审批', N'FlowApproval', NULL)
GO

INSERT INTO [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'D26D07CB-158A-4CB2-8B20-5DFD5181AF54', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'SysOrganization', N'dbo', N'TABLE', N'组织', N'SysOrganization', NULL)
GO

INSERT INTO [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'6323638B-A45F-4A76-886E-69A9E9BE0901', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'SysUser', N'dbo', N'TABLE', N'用户', N'SysUser', NULL)
GO

INSERT INTO [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'79FBD4EC-9F4E-45DC-8065-70F2EB422CDF', N'2022-05-24 21:57:34.433', N'2022-05-23 00:00:00.000', N'LowCodeTableInfo', N'dbo', N'TABLE', N'低代码表信息', N'LowCodeTableInfo', NULL)
GO

INSERT INTO [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'AF37F705-7BA0-4883-B1BE-8A274EA4C026', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'SysDictionary', N'dbo', N'TABLE', N'数据字典', N'SysDictionary', NULL)
GO

INSERT INTO [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'73C97832-4E7F-4758-86D2-94327971B5FD', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'Member', N'dbo', N'TABLE', N'会员', N'Member', NULL)
GO

INSERT INTO [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'SysMenu', N'dbo', N'TABLE', N'菜单', N'SysMenu', NULL)
GO

INSERT INTO [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'F3D7BBB3-C1FB-4D61-92A4-9BC101811335', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'SysRole', N'dbo', N'TABLE', N'角色', N'SysRole', NULL)
GO

INSERT INTO [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'852F53FF-0D00-4C32-AA55-A9C11993751B', N'2022-05-24 21:57:34.433', N'2022-05-23 00:00:00.000', N'LowCodeList', N'dbo', N'TABLE', N'低代码列表', N'LowCodeList', NULL)
GO

INSERT INTO [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'AE6D94D8-6A15-4348-B600-AA17E4B61718', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'FlowNode', N'dbo', N'TABLE', N'工作流节点', N'FlowNode', NULL)
GO

INSERT INTO [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'69EDD8A8-1D24-478C-A909-B82039EDCEC0', N'2022-05-24 21:57:34.433', N'2022-05-23 00:00:00.000', N'LowCodeSearch', N'dbo', N'TABLE', N'低代码检索表', N'LowCodeSearch', NULL)
GO

INSERT INTO [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'6FABC67A-8B48-49A6-8BA1-C8A32C499D36', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'SysFunction', N'dbo', N'TABLE', N'功能', N'SysFunction', NULL)
GO

INSERT INTO [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'0A8BDB18-758A-4798-9FFC-E7031DCBF262', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'SysPost', N'dbo', N'TABLE', N'岗位', N'SysPost', NULL)
GO

INSERT INTO [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'8DA38D20-8A09-4E81-8DD8-ED6702AEE380', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'SysRoleMenuFunction', N'dbo', N'TABLE', N'角色菜单功能关联', N'SysRoleMenuFunction', NULL)
GO

INSERT INTO [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'E79DB53B-7162-4669-9B5E-F860501475AC', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'SysDataAuthority', N'dbo', N'TABLE', N'数据权限', N'SysDataAuthority', NULL)
GO

INSERT INTO [dbo].[LowCodeTable] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'3DA5D264-2E8D-460C-A10C-FF9A6BB57A60', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'SysUserRole', N'dbo', N'TABLE', N'用户与角色', N'SysUserRole', NULL)
GO


-- ----------------------------
-- Table structure for LowCodeTableInfo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[LowCodeTableInfo]') AND type IN ('U'))
	DROP TABLE [dbo].[LowCodeTableInfo]
GO

CREATE TABLE [dbo].[LowCodeTableInfo] (
  [Id] uniqueidentifier  NOT NULL,
  [LastModificationTime] datetime  NULL,
  [CreationTime] datetime  NULL,
  [Low_Code_TableId] uniqueidentifier  NULL,
  [IsPrimary] bit  NULL,
  [IsIdentity] bit  NULL,
  [IsNullable] bit  NULL,
  [Position] int  NULL,
  [ColumnName] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [Describe] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [DatabaseColumnType] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [CsType] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [CsField] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [MaxLength] int  NULL
)
GO

ALTER TABLE [dbo].[LowCodeTableInfo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of LowCodeTableInfo
-- ----------------------------
INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'60019CD9-49EB-489B-97B5-08DA39A2EF6C', N'2022-05-19 22:26:18.973', N'2022-05-19 00:00:00.000', N'3DA5D264-2E8D-460C-A10C-FF9A6BB57A60', N'1', N'0', N'0', N'170', N'Id', N'Id', N'uniqueidentifier', N'Guid', N'Id', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'825E69B9-CD33-4AB8-97B6-08DA39A2EF6C', N'2022-05-19 22:26:18.973', N'2022-05-19 00:00:00.000', N'3DA5D264-2E8D-460C-A10C-FF9A6BB57A60', N'0', N'0', N'1', N'174', N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'252AC7B2-0E62-48E1-97B7-08DA39A2EF6C', N'2022-05-19 22:26:18.973', N'2022-05-19 00:00:00.000', N'3DA5D264-2E8D-460C-A10C-FF9A6BB57A60', N'0', N'0', N'1', N'173', N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'2029BB6D-A0F2-41DE-97B8-08DA39A2EF6C', N'2022-05-19 22:26:18.973', N'2022-05-19 00:00:00.000', N'3DA5D264-2E8D-460C-A10C-FF9A6BB57A60', N'0', N'0', N'1', N'172', N'RoleId', N'', N'uniqueidentifier', N'Guid', N'RoleId', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'18B4430B-765D-4A71-97B9-08DA39A2EF6C', N'2022-05-19 22:26:18.973', N'2022-05-19 00:00:00.000', N'3DA5D264-2E8D-460C-A10C-FF9A6BB57A60', N'0', N'0', N'1', N'171', N'UserId', N'', N'uniqueidentifier', N'Guid', N'UserId', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'A72C0341-82E8-48AD-D481-08DA3D8D5A26', N'2022-05-24 21:57:33.877', N'2022-05-24 21:57:33.877', N'1A8DF018-79F8-4E26-B4EB-4B735AAE7275', N'1', N'0', N'0', N'24', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'70E30A70-99F9-44B3-D482-08DA3D8D5A26', N'2022-05-24 21:57:33.877', N'2022-05-24 21:57:33.877', N'1A8DF018-79F8-4E26-B4EB-4B735AAE7275', N'0', N'0', N'1', N'28', N'Code', N'编码', N'nvarchar(255)', N'String', N'Code', N'255')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'5FC01EB0-4833-4E93-D483-08DA3D8D5A26', N'2022-05-24 21:57:33.877', N'2022-05-24 21:57:33.877', N'1A8DF018-79F8-4E26-B4EB-4B735AAE7275', N'0', N'0', N'1', N'26', N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', N'8')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'FD9ABF54-3C88-44B0-D484-08DA3D8D5A26', N'2022-05-24 21:57:33.877', N'2022-05-24 21:57:33.877', N'1A8DF018-79F8-4E26-B4EB-4B735AAE7275', N'0', N'0', N'1', N'25', N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', N'8')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'06F4F5A9-F63F-4E47-D485-08DA3D8D5A26', N'2022-05-24 21:57:33.877', N'2022-05-24 21:57:33.877', N'1A8DF018-79F8-4E26-B4EB-4B735AAE7275', N'0', N'0', N'1', N'29', N'Name', N'流程名称', N'nvarchar(255)', N'String', N'Name', N'255')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'5CB41F1C-E68A-47F9-D486-08DA3D8D5A26', N'2022-05-24 21:57:33.877', N'2022-05-24 21:57:33.877', N'1A8DF018-79F8-4E26-B4EB-4B735AAE7275', N'0', N'0', N'1', N'27', N'Number', N'排序号', N'int', N'Int32', N'Number', N'4')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'F21D4C33-E65A-4DFE-D487-08DA3D8D5A26', N'2022-05-24 21:57:33.877', N'2022-05-24 21:57:33.877', N'1A8DF018-79F8-4E26-B4EB-4B735AAE7275', N'0', N'0', N'1', N'30', N'Remark', N'备注', N'nvarchar(255)', N'String', N'Remark', N'255')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'B9BBAB1D-0A03-4D07-D488-08DA3D8D5A26', N'2022-05-24 21:57:33.903', N'2022-05-24 21:57:33.903', N'D8948C56-C5BD-4061-B272-5417375F38F0', N'1', N'0', N'0', N'31', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'01CA178C-112A-4A49-D489-08DA3D8D5A26', N'2022-05-24 21:57:33.903', N'2022-05-24 21:57:33.903', N'D8948C56-C5BD-4061-B272-5417375F38F0', N'0', N'0', N'1', N'33', N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', N'8')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'A0FDEB45-C9FE-439B-D48A-08DA3D8D5A26', N'2022-05-24 21:57:33.903', N'2022-05-24 21:57:33.903', N'D8948C56-C5BD-4061-B272-5417375F38F0', N'0', N'0', N'1', N'39', N'FlowCode', N'流程编码', N'varchar(255)', N'String', N'FlowCode', N'255')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'2B4747ED-0409-4D14-D48B-08DA3D8D5A26', N'2022-05-24 21:57:33.903', N'2022-05-24 21:57:33.903', N'D8948C56-C5BD-4061-B272-5417375F38F0', N'0', N'0', N'1', N'38', N'FlowId', N'流程Id', N'uniqueidentifier', N'Guid', N'FlowId', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'F00CDE73-2294-40D6-D48C-08DA3D8D5A26', N'2022-05-24 21:57:33.903', N'2022-05-24 21:57:33.903', N'D8948C56-C5BD-4061-B272-5417375F38F0', N'0', N'0', N'1', N'40', N'FlowName', N'流程名称', N'varchar(255)', N'String', N'FlowName', N'255')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'CAAE5D6F-F9C7-4EDB-D48D-08DA3D8D5A26', N'2022-05-24 21:57:33.903', N'2022-05-24 21:57:33.903', N'D8948C56-C5BD-4061-B272-5417375F38F0', N'0', N'0', N'1', N'37', N'FormId', N'表单Id', N'varchar(50)', N'String', N'FormId', N'50')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'609A52AA-48B2-4E64-D48E-08DA3D8D5A26', N'2022-05-24 21:57:33.903', N'2022-05-24 21:57:33.903', N'D8948C56-C5BD-4061-B272-5417375F38F0', N'0', N'0', N'1', N'32', N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', N'8')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'3071360B-C1EF-4DFF-D48F-08DA3D8D5A26', N'2022-05-24 21:57:33.903', N'2022-05-24 21:57:33.903', N'D8948C56-C5BD-4061-B272-5417375F38F0', N'0', N'0', N'1', N'36', N'LaunchTime', N'发起时间', N'datetime', N'DateTime', N'LaunchTime', N'8')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'ACF079D0-3DB9-43F7-D490-08DA3D8D5A26', N'2022-05-24 21:57:33.903', N'2022-05-24 21:57:33.903', N'D8948C56-C5BD-4061-B272-5417375F38F0', N'0', N'0', N'1', N'34', N'UserId', N'发起人Id', N'uniqueidentifier', N'Guid', N'UserId', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'6284C929-4115-4C17-D491-08DA3D8D5A26', N'2022-05-24 21:57:33.903', N'2022-05-24 21:57:33.903', N'D8948C56-C5BD-4061-B272-5417375F38F0', N'0', N'0', N'1', N'35', N'UserName', N'发起人', N'varchar(255)', N'String', N'UserName', N'255')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'F5C93CC7-50A6-4E0E-D492-08DA3D8D5A26', N'2022-05-24 21:57:33.927', N'2022-05-24 21:57:33.927', N'651BB982-1130-4E1C-9070-36B90DCF2324', N'1', N'0', N'0', N'41', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'F6D23541-2FCA-40E6-D493-08DA3D8D5A26', N'2022-05-24 21:57:33.927', N'2022-05-24 21:57:33.927', N'651BB982-1130-4E1C-9070-36B90DCF2324', N'0', N'0', N'1', N'52', N'ApprovalDate', N'审批时间', N'datetime', N'DateTime', N'ApprovalDate', N'8')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'8AD408DB-B5AA-4CB7-D494-08DA3D8D5A26', N'2022-05-24 21:57:33.927', N'2022-05-24 21:57:33.927', N'651BB982-1130-4E1C-9070-36B90DCF2324', N'0', N'0', N'1', N'43', N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', N'8')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'2FFAA9EE-C286-4F90-D495-08DA3D8D5A26', N'2022-05-24 21:57:33.927', N'2022-05-24 21:57:33.927', N'651BB982-1130-4E1C-9070-36B90DCF2324', N'0', N'0', N'1', N'45', N'FlowNodeId', N'审批流节点Id', N'uniqueidentifier', N'Guid', N'FlowNodeId', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'AAA312A2-73FB-4C84-D496-08DA3D8D5A26', N'2022-05-24 21:57:33.927', N'2022-05-24 21:57:33.927', N'651BB982-1130-4E1C-9070-36B90DCF2324', N'0', N'0', N'1', N'46', N'FlowNodeName', N'审批流节点名称', N'varchar(255)', N'String', N'FlowNodeName', N'255')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'043612F1-E16A-4C44-D497-08DA3D8D5A26', N'2022-05-24 21:57:33.927', N'2022-05-24 21:57:33.927', N'651BB982-1130-4E1C-9070-36B90DCF2324', N'0', N'0', N'1', N'42', N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', N'8')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'A8BE7873-7CE4-4CB2-D498-08DA3D8D5A26', N'2022-05-24 21:57:33.927', N'2022-05-24 21:57:33.927', N'651BB982-1130-4E1C-9070-36B90DCF2324', N'0', N'0', N'1', N'49', N'OpinIons', N'步骤审批意见', N'varchar(255)', N'String', N'OpinIons', N'255')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'E8E60481-FB7F-4F1D-D499-08DA3D8D5A26', N'2022-05-24 21:57:33.927', N'2022-05-24 21:57:33.927', N'651BB982-1130-4E1C-9070-36B90DCF2324', N'0', N'0', N'1', N'44', N'Sort', N'步骤顺序号', N'int', N'Int32', N'Sort', N'4')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'2A1C3F3D-4EFC-472B-D49A-08DA3D8D5A26', N'2022-05-24 21:57:33.927', N'2022-05-24 21:57:33.927', N'651BB982-1130-4E1C-9070-36B90DCF2324', N'0', N'0', N'1', N'47', N'SortMore', N'多次审批顺序号（可能是多次审批次数）', N'int', N'Int32', N'SortMore', N'4')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'CBD75568-2ECE-4F90-D49B-08DA3D8D5A26', N'2022-05-24 21:57:33.927', N'2022-05-24 21:57:33.927', N'651BB982-1130-4E1C-9070-36B90DCF2324', N'0', N'0', N'1', N'48', N'State', N'步骤状态（待审批、同意、不同意、回退升级审批）', N'int', N'Int32', N'State', N'4')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'E67FD0C6-A997-4956-D49C-08DA3D8D5A26', N'2022-05-24 21:57:33.927', N'2022-05-24 21:57:33.927', N'651BB982-1130-4E1C-9070-36B90DCF2324', N'0', N'0', N'1', N'50', N'UserId', N'步骤审批人Id', N'uniqueidentifier', N'Guid', N'UserId', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'24DB7ED8-1A4F-4B25-D49D-08DA3D8D5A26', N'2022-05-24 21:57:33.927', N'2022-05-24 21:57:33.927', N'651BB982-1130-4E1C-9070-36B90DCF2324', N'0', N'0', N'1', N'51', N'UserName', N'步骤审批人名称', N'varchar(255)', N'String', N'UserName', N'255')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'E346CF76-EC76-4409-D49E-08DA3D8D5A26', N'2022-05-24 21:57:33.953', N'2022-05-24 21:57:33.953', N'7AD3B915-F0BD-443A-89CD-42D41DD6C554', N'1', N'0', N'0', N'53', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'AE55FABC-3944-4A36-D49F-08DA3D8D5A26', N'2022-05-24 21:57:33.953', N'2022-05-24 21:57:33.953', N'7AD3B915-F0BD-443A-89CD-42D41DD6C554', N'0', N'0', N'1', N'55', N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', N'8')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'B754AF63-F1DE-4000-D4A0-08DA3D8D5A26', N'2022-05-24 21:57:33.953', N'2022-05-24 21:57:33.953', N'7AD3B915-F0BD-443A-89CD-42D41DD6C554', N'0', N'0', N'1', N'56', N'FlowApprovalStepId', N'步骤Id', N'uniqueidentifier', N'Guid', N'FlowApprovalStepId', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'495FE86E-5BD6-44D4-D4A1-08DA3D8D5A26', N'2022-05-24 21:57:33.953', N'2022-05-24 21:57:33.953', N'7AD3B915-F0BD-443A-89CD-42D41DD6C554', N'0', N'0', N'1', N'57', N'FlowNodeId', N'审批节点Id', N'uniqueidentifier', N'Guid', N'FlowNodeId', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'D48C70E6-4549-41B6-D4A2-08DA3D8D5A26', N'2022-05-24 21:57:33.953', N'2022-05-24 21:57:33.953', N'7AD3B915-F0BD-443A-89CD-42D41DD6C554', N'0', N'0', N'1', N'58', N'FlowNodeName', N'审批节点名称', N'varchar(500)', N'String', N'FlowNodeName', N'500')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'0E864B91-B667-4F53-D4A3-08DA3D8D5A26', N'2022-05-24 21:57:33.953', N'2022-05-24 21:57:33.953', N'7AD3B915-F0BD-443A-89CD-42D41DD6C554', N'0', N'0', N'1', N'54', N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', N'8')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'92BC9094-160E-4338-D4A4-08DA3D8D5A26', N'2022-05-24 21:57:33.953', N'2022-05-24 21:57:33.953', N'7AD3B915-F0BD-443A-89CD-42D41DD6C554', N'0', N'0', N'1', N'59', N'UserId', N'审批人Id', N'uniqueidentifier', N'Guid', N'UserId', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'0CFC881C-98D4-4A2C-D4A5-08DA3D8D5A26', N'2022-05-24 21:57:33.953', N'2022-05-24 21:57:33.953', N'7AD3B915-F0BD-443A-89CD-42D41DD6C554', N'0', N'0', N'1', N'60', N'UserName', N'审批人名称', N'varchar(500)', N'String', N'UserName', N'500')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'2819DFE7-F12B-483C-D4A6-08DA3D8D5A26', N'2022-05-24 21:57:33.973', N'2022-05-24 21:57:33.973', N'AE6D94D8-6A15-4348-B600-AA17E4B61718', N'1', N'0', N'0', N'61', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'0E19400D-1876-4FE3-D4A7-08DA3D8D5A26', N'2022-05-24 21:57:33.973', N'2022-05-24 21:57:33.973', N'AE6D94D8-6A15-4348-B600-AA17E4B61718', N'0', N'0', N'1', N'63', N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', N'8')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'5CA84ECF-5971-45BC-D4A8-08DA3D8D5A26', N'2022-05-24 21:57:33.973', N'2022-05-24 21:57:33.973', N'AE6D94D8-6A15-4348-B600-AA17E4B61718', N'0', N'0', N'1', N'65', N'FlowCode', N'', N'nvarchar(255)', N'String', N'FlowCode', N'255')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'9BC385E0-10EE-4299-D4A9-08DA3D8D5A26', N'2022-05-24 21:57:33.973', N'2022-05-24 21:57:33.973', N'AE6D94D8-6A15-4348-B600-AA17E4B61718', N'0', N'0', N'1', N'64', N'FlowId', N'', N'uniqueidentifier', N'Guid', N'FlowId', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'D45AC420-E348-4D6B-D4AA-08DA3D8D5A26', N'2022-05-24 21:57:33.973', N'2022-05-24 21:57:33.973', N'AE6D94D8-6A15-4348-B600-AA17E4B61718', N'0', N'0', N'1', N'62', N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', N'8')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'0DF6B078-B248-4C83-D4AB-08DA3D8D5A26', N'2022-05-24 21:57:33.973', N'2022-05-24 21:57:33.973', N'AE6D94D8-6A15-4348-B600-AA17E4B61718', N'0', N'0', N'1', N'67', N'Name', N'', N'nvarchar(255)', N'String', N'Name', N'255')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'2321AAC8-0EED-4B87-D4AC-08DA3D8D5A26', N'2022-05-24 21:57:33.973', N'2022-05-24 21:57:33.973', N'AE6D94D8-6A15-4348-B600-AA17E4B61718', N'0', N'0', N'1', N'69', N'Remark', N'', N'nvarchar(255)', N'String', N'Remark', N'255')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'73D17476-E006-4530-D4AD-08DA3D8D5A26', N'2022-05-24 21:57:33.973', N'2022-05-24 21:57:33.973', N'AE6D94D8-6A15-4348-B600-AA17E4B61718', N'0', N'0', N'1', N'68', N'RoleId', N'', N'uniqueidentifier', N'Guid', N'RoleId', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'E571FD26-B1A8-4648-D4AE-08DA3D8D5A26', N'2022-05-24 21:57:33.973', N'2022-05-24 21:57:33.973', N'AE6D94D8-6A15-4348-B600-AA17E4B61718', N'0', N'0', N'1', N'66', N'Sort', N'', N'int', N'Int32', N'Sort', N'4')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'C2F1A286-2B35-41D6-D4AF-08DA3D8D5A26', N'2022-05-24 21:57:33.997', N'2022-05-24 21:57:33.997', N'852F53FF-0D00-4C32-AA55-A9C11993751B', N'1', N'0', N'0', N'189', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'92C1FFFC-5A00-468C-D4B0-08DA3D8D5A26', N'2022-05-24 21:57:33.997', N'2022-05-24 21:57:33.997', N'852F53FF-0D00-4C32-AA55-A9C11993751B', N'0', N'0', N'1', N'191', N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', N'8')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'7B900BAF-65DF-4910-D4B1-08DA3D8D5A26', N'2022-05-24 21:57:33.997', N'2022-05-24 21:57:33.997', N'852F53FF-0D00-4C32-AA55-A9C11993751B', N'0', N'0', N'1', N'195', N'ForeignKeyTableFieldName', N'', N'varchar(50)', N'String', N'ForeignKeyTableFieldName', N'50')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'E7FACEE2-5132-4003-D4B2-08DA3D8D5A26', N'2022-05-24 21:57:33.997', N'2022-05-24 21:57:33.997', N'852F53FF-0D00-4C32-AA55-A9C11993751B', N'0', N'0', N'1', N'194', N'ForeignKeyTableId', N'', N'uniqueidentifier', N'Guid', N'ForeignKeyTableId', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'2AE91C1D-D618-4267-D4B3-08DA3D8D5A26', N'2022-05-24 21:57:33.997', N'2022-05-24 21:57:33.997', N'852F53FF-0D00-4C32-AA55-A9C11993751B', N'0', N'0', N'1', N'190', N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', N'8')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'A2660342-556E-4AEF-D4B4-08DA3D8D5A26', N'2022-05-24 21:57:33.997', N'2022-05-24 21:57:33.997', N'852F53FF-0D00-4C32-AA55-A9C11993751B', N'0', N'0', N'1', N'193', N'Low_Code_Table_InfoId', N'', N'uniqueidentifier', N'Guid', N'Low_Code_Table_InfoId', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'585E18EA-AB50-4216-D4B5-08DA3D8D5A26', N'2022-05-24 21:57:33.997', N'2022-05-24 21:57:33.997', N'852F53FF-0D00-4C32-AA55-A9C11993751B', N'0', N'0', N'1', N'192', N'Low_Code_TableId', N'', N'uniqueidentifier', N'Guid', N'Low_Code_TableId', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'7C7400ED-EC08-4832-D4B6-08DA3D8D5A26', N'2022-05-24 21:57:34.027', N'2022-05-24 21:57:34.027', N'69EDD8A8-1D24-478C-A909-B82039EDCEC0', N'1', N'0', N'0', N'184', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'A29E0236-9C06-4A70-D4B7-08DA3D8D5A26', N'2022-05-24 21:57:34.027', N'2022-05-24 21:57:34.027', N'69EDD8A8-1D24-478C-A909-B82039EDCEC0', N'0', N'0', N'1', N'186', N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', N'8')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'8237D289-05CF-485B-D4B8-08DA3D8D5A26', N'2022-05-24 21:57:34.027', N'2022-05-24 21:57:34.027', N'69EDD8A8-1D24-478C-A909-B82039EDCEC0', N'0', N'0', N'1', N'185', N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', N'8')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'1A2A9E15-DC83-49E1-D4B9-08DA3D8D5A26', N'2022-05-24 21:57:34.027', N'2022-05-24 21:57:34.027', N'69EDD8A8-1D24-478C-A909-B82039EDCEC0', N'0', N'0', N'1', N'188', N'Low_Code_Table_InfoId', N'', N'uniqueidentifier', N'Guid', N'Low_Code_Table_InfoId', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'7B4DF31F-36A3-477C-D4BA-08DA3D8D5A26', N'2022-05-24 21:57:34.027', N'2022-05-24 21:57:34.027', N'69EDD8A8-1D24-478C-A909-B82039EDCEC0', N'0', N'0', N'1', N'187', N'Low_Code_TableId', N'', N'uniqueidentifier', N'Guid', N'Low_Code_TableId', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'B97D19D1-948A-489F-D4BB-08DA3D8D5A26', N'2022-05-24 21:57:34.047', N'2022-05-24 21:57:34.047', N'6BA9805C-916E-4D2C-99D0-216FCBC361CC', N'1', N'0', N'0', N'15', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'8430C5A1-6C73-4733-D4BC-08DA3D8D5A26', N'2022-05-24 21:57:34.047', N'2022-05-24 21:57:34.047', N'6BA9805C-916E-4D2C-99D0-216FCBC361CC', N'0', N'0', N'1', N'17', N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', N'8')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'D7EF7A4E-F4B9-4AC4-D4BD-08DA3D8D5A26', N'2022-05-24 21:57:34.047', N'2022-05-24 21:57:34.047', N'6BA9805C-916E-4D2C-99D0-216FCBC361CC', N'0', N'0', N'1', N'21', N'DisplayName', N'', N'varchar(200)', N'String', N'DisplayName', N'200')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'5E4C83FD-7071-4997-D4BE-08DA3D8D5A26', N'2022-05-24 21:57:34.047', N'2022-05-24 21:57:34.047', N'6BA9805C-916E-4D2C-99D0-216FCBC361CC', N'0', N'0', N'1', N'22', N'EntityName', N'', N'varchar(50)', N'String', N'EntityName', N'50')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'0F0C03E3-604F-489F-D4BF-08DA3D8D5A26', N'2022-05-24 21:57:34.047', N'2022-05-24 21:57:34.047', N'6BA9805C-916E-4D2C-99D0-216FCBC361CC', N'0', N'0', N'1', N'16', N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', N'8')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'FA8B1456-88F3-4D4E-D4C0-08DA3D8D5A26', N'2022-05-24 21:57:34.047', N'2022-05-24 21:57:34.047', N'6BA9805C-916E-4D2C-99D0-216FCBC361CC', N'0', N'0', N'1', N'23', N'Remark', N'', N'varchar(500)', N'String', N'Remark', N'500')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'441E03EC-ECB7-4172-D4C1-08DA3D8D5A26', N'2022-05-24 21:57:34.047', N'2022-05-24 21:57:34.047', N'6BA9805C-916E-4D2C-99D0-216FCBC361CC', N'0', N'0', N'1', N'19', N'Schema', N'', N'varchar(50)', N'String', N'Schema', N'50')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'02FFAFB8-CF9B-441C-D4C2-08DA3D8D5A26', N'2022-05-24 21:57:34.047', N'2022-05-24 21:57:34.047', N'6BA9805C-916E-4D2C-99D0-216FCBC361CC', N'0', N'0', N'1', N'18', N'TableName', N'', N'varchar(50)', N'String', N'TableName', N'50')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'3AB15F84-8722-4837-D4C3-08DA3D8D5A26', N'2022-05-24 21:57:34.047', N'2022-05-24 21:57:34.047', N'6BA9805C-916E-4D2C-99D0-216FCBC361CC', N'0', N'0', N'1', N'20', N'Type', N'', N'int', N'Int32', N'Type', N'4')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'9B1B319A-E9DC-406D-D4C4-08DA3D8D5A26', N'2022-05-24 21:57:34.070', N'2022-05-24 21:57:34.070', N'79FBD4EC-9F4E-45DC-8065-70F2EB422CDF', N'1', N'0', N'0', N'196', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'11AFCF11-9B42-47CE-D4C5-08DA3D8D5A26', N'2022-05-24 21:57:34.070', N'2022-05-24 21:57:34.070', N'79FBD4EC-9F4E-45DC-8065-70F2EB422CDF', N'0', N'0', N'1', N'204', N'ColumnName', N'', N'varchar(500)', N'String', N'ColumnName', N'500')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'1E40D97A-49EE-4727-D4C6-08DA3D8D5A26', N'2022-05-24 21:57:34.070', N'2022-05-24 21:57:34.070', N'79FBD4EC-9F4E-45DC-8065-70F2EB422CDF', N'0', N'0', N'1', N'198', N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', N'8')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'E0E9D3C3-B713-419C-D4C7-08DA3D8D5A26', N'2022-05-24 21:57:34.070', N'2022-05-24 21:57:34.070', N'79FBD4EC-9F4E-45DC-8065-70F2EB422CDF', N'0', N'0', N'1', N'208', N'CsField', N'', N'varchar(50)', N'String', N'CsField', N'50')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'EB846AC3-723E-4207-D4C8-08DA3D8D5A26', N'2022-05-24 21:57:34.070', N'2022-05-24 21:57:34.070', N'79FBD4EC-9F4E-45DC-8065-70F2EB422CDF', N'0', N'0', N'1', N'207', N'CsType', N'', N'varchar(50)', N'String', N'CsType', N'50')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'48B12860-84DE-4F7B-D4C9-08DA3D8D5A26', N'2022-05-24 21:57:34.070', N'2022-05-24 21:57:34.070', N'79FBD4EC-9F4E-45DC-8065-70F2EB422CDF', N'0', N'0', N'1', N'206', N'DatabaseColumnType', N'', N'varchar(50)', N'String', N'DatabaseColumnType', N'50')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'3B959124-21D2-45B9-D4CA-08DA3D8D5A26', N'2022-05-24 21:57:34.070', N'2022-05-24 21:57:34.070', N'79FBD4EC-9F4E-45DC-8065-70F2EB422CDF', N'0', N'0', N'1', N'205', N'Describe', N'', N'varchar(50)', N'String', N'Describe', N'50')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'86B95BF0-4418-46BA-D4CB-08DA3D8D5A26', N'2022-05-24 21:57:34.070', N'2022-05-24 21:57:34.070', N'79FBD4EC-9F4E-45DC-8065-70F2EB422CDF', N'0', N'0', N'1', N'201', N'IsIdentity', N'', N'bit', N'Boolean', N'IsIdentity', N'1')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'5FEA8348-AA6B-4577-D4CC-08DA3D8D5A26', N'2022-05-24 21:57:34.070', N'2022-05-24 21:57:34.070', N'79FBD4EC-9F4E-45DC-8065-70F2EB422CDF', N'0', N'0', N'1', N'202', N'IsNullable', N'', N'bit', N'Boolean', N'IsNullable', N'1')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'1D3C8224-A3A5-4B88-D4CD-08DA3D8D5A26', N'2022-05-24 21:57:34.070', N'2022-05-24 21:57:34.070', N'79FBD4EC-9F4E-45DC-8065-70F2EB422CDF', N'0', N'0', N'1', N'200', N'IsPrimary', N'', N'bit', N'Boolean', N'IsPrimary', N'1')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'CF99D60B-2392-493C-D4CE-08DA3D8D5A26', N'2022-05-24 21:57:34.070', N'2022-05-24 21:57:34.070', N'79FBD4EC-9F4E-45DC-8065-70F2EB422CDF', N'0', N'0', N'1', N'197', N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', N'8')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'F221DA94-0A1D-4CE7-D4CF-08DA3D8D5A26', N'2022-05-24 21:57:34.070', N'2022-05-24 21:57:34.070', N'79FBD4EC-9F4E-45DC-8065-70F2EB422CDF', N'0', N'0', N'1', N'199', N'Low_Code_TableId', N'', N'uniqueidentifier', N'Guid', N'Low_Code_TableId', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'DE43269D-D43B-4A77-D4D0-08DA3D8D5A26', N'2022-05-24 21:57:34.070', N'2022-05-24 21:57:34.070', N'79FBD4EC-9F4E-45DC-8065-70F2EB422CDF', N'0', N'0', N'1', N'209', N'MaxLength', N'', N'int', N'Int32', N'MaxLength', N'4')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'4AAA1E18-8C06-4806-D4D1-08DA3D8D5A26', N'2022-05-24 21:57:34.070', N'2022-05-24 21:57:34.070', N'79FBD4EC-9F4E-45DC-8065-70F2EB422CDF', N'0', N'0', N'1', N'203', N'Position', N'', N'int', N'Int32', N'Position', N'4')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'E75B8650-EE49-4F83-D4D2-08DA3D8D5A26', N'2022-05-30 17:04:36.513', N'2022-05-24 00:00:00.000', N'73C97832-4E7F-4758-86D2-94327971B5FD', N'1', N'0', N'0', N'70', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'B7FBB61F-94FC-4242-D4D3-08DA3D8D5A26', N'2022-05-30 17:04:36.513', N'2022-05-24 00:00:00.000', N'73C97832-4E7F-4758-86D2-94327971B5FD', N'0', N'0', N'1', N'75', N'Birthday', N'生日', N'datetime2', N'DateTime', N'Birthday', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'5541E535-7CBE-43D2-D4D4-08DA3D8D5A26', N'2022-05-30 17:04:36.513', N'2022-05-24 00:00:00.000', N'73C97832-4E7F-4758-86D2-94327971B5FD', N'0', N'0', N'1', N'80', N'CreationTime', N'创建时间', N'datetime2', N'DateTime', N'CreationTime', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'E4245F5F-BFFA-43F0-D4D5-08DA3D8D5A26', N'2022-05-30 17:04:36.513', N'2022-05-24 00:00:00.000', N'73C97832-4E7F-4758-86D2-94327971B5FD', N'0', N'0', N'1', N'78', N'FilePath', N'文件地址', N'nvarchar(255)', N'String', N'FilePath', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'8326CA11-09F1-4C38-D4D6-08DA3D8D5A26', N'2022-05-30 17:04:36.513', N'2022-05-24 00:00:00.000', N'73C97832-4E7F-4758-86D2-94327971B5FD', N'0', N'0', N'1', N'77', N'Introduce', N'简介', N'nvarchar(255)', N'String', N'Introduce', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'897A208C-2E13-46F1-D4D7-08DA3D8D5A26', N'2022-05-30 17:04:36.513', N'2022-05-24 00:00:00.000', N'73C97832-4E7F-4758-86D2-94327971B5FD', N'0', N'0', N'1', N'81', N'LastModificationTime', N'更新时间', N'datetime2', N'DateTime', N'LastModificationTime', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'D1EB49CF-C053-4226-D4D8-08DA3D8D5A26', N'2022-05-30 17:04:36.513', N'2022-05-24 00:00:00.000', N'73C97832-4E7F-4758-86D2-94327971B5FD', N'0', N'0', N'1', N'72', N'Name', N'会员名称', N'nvarchar(255)', N'String', N'Name', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'BF24A276-6ED0-49D4-D4D9-08DA3D8D5A26', N'2022-05-30 17:04:36.513', N'2022-05-24 00:00:00.000', N'73C97832-4E7F-4758-86D2-94327971B5FD', N'0', N'0', N'1', N'71', N'Number', N'编号', N'nvarchar(255)', N'String', N'Number', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'669B87CE-C694-4C8C-D4DA-08DA3D8D5A26', N'2022-05-30 17:04:36.513', N'2022-05-24 00:00:00.000', N'73C97832-4E7F-4758-86D2-94327971B5FD', N'0', N'0', N'1', N'73', N'Phone', N'联系电话', N'nvarchar(255)', N'String', N'Phone', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'F03AC01C-E0CF-4F13-D4DB-08DA3D8D5A26', N'2022-05-30 17:04:36.513', N'2022-05-24 00:00:00.000', N'73C97832-4E7F-4758-86D2-94327971B5FD', N'0', N'0', N'1', N'76', N'Photo', N'头像', N'nvarchar(255)', N'String', N'Photo', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'72AC247C-D792-4FEE-D4DC-08DA3D8D5A26', N'2022-05-30 17:04:36.513', N'2022-05-24 00:00:00.000', N'73C97832-4E7F-4758-86D2-94327971B5FD', N'0', N'0', N'1', N'74', N'Sex', N'性别', N'nvarchar(255)', N'String', N'Sex', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'837B058B-A88E-4107-D4DD-08DA3D8D5A26', N'2022-05-30 17:04:36.513', N'2022-05-24 00:00:00.000', N'73C97832-4E7F-4758-86D2-94327971B5FD', N'0', N'0', N'1', N'79', N'UserId', N'所属用户', N'uniqueidentifier', N'Guid', N'UserId', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'BFEC557A-1223-49EC-D4DE-08DA3D8D5A26', N'2022-05-24 21:57:34.120', N'2022-05-24 21:57:34.120', N'C5883367-42AA-43B8-9577-4720A2253EFA', N'1', N'0', N'0', N'210', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'31F56D34-2216-45B0-D4DF-08DA3D8D5A26', N'2022-05-24 21:57:34.120', N'2022-05-24 21:57:34.120', N'C5883367-42AA-43B8-9577-4720A2253EFA', N'0', N'0', N'1', N'214', N'Author', N'', N'varchar(50)', N'String', N'Author', N'50')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'6FE5687C-BFAF-4E2F-D4E0-08DA3D8D5A26', N'2022-05-24 21:57:34.120', N'2022-05-24 21:57:34.120', N'C5883367-42AA-43B8-9577-4720A2253EFA', N'0', N'0', N'1', N'216', N'Content', N'', N'varchar(MAX)', N'String', N'Content', N'-1')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'BE86A4EE-E843-4C2A-D4E1-08DA3D8D5A26', N'2022-05-24 21:57:34.120', N'2022-05-24 21:57:34.120', N'C5883367-42AA-43B8-9577-4720A2253EFA', N'0', N'0', N'1', N'212', N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', N'6')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'C03BA636-ABB2-43F7-D4E2-08DA3D8D5A26', N'2022-05-24 21:57:34.120', N'2022-05-24 21:57:34.120', N'C5883367-42AA-43B8-9577-4720A2253EFA', N'0', N'0', N'1', N'211', N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', N'6')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'5F28BE90-E415-46DD-D4E3-08DA3D8D5A26', N'2022-05-24 21:57:34.120', N'2022-05-24 21:57:34.120', N'C5883367-42AA-43B8-9577-4720A2253EFA', N'0', N'0', N'1', N'215', N'Time', N'', N'datetime', N'DateTime', N'Time', N'8')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'804E418F-3206-4090-D4E4-08DA3D8D5A26', N'2022-05-24 21:57:34.120', N'2022-05-24 21:57:34.120', N'C5883367-42AA-43B8-9577-4720A2253EFA', N'0', N'0', N'1', N'213', N'Title', N'', N'varchar(50)', N'String', N'Title', N'50')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'97284D66-88B9-478F-D4E5-08DA3D8D5A26', N'2022-05-24 21:57:34.137', N'2022-05-24 21:57:34.137', N'E79DB53B-7162-4669-9B5E-F860501475AC', N'1', N'0', N'0', N'82', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'B6422CB6-498E-4FF5-D4E6-08DA3D8D5A26', N'2022-05-24 21:57:34.137', N'2022-05-24 21:57:34.137', N'E79DB53B-7162-4669-9B5E-F860501475AC', N'0', N'0', N'1', N'84', N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', N'8')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'9DE60DD7-A403-442D-D4E7-08DA3D8D5A26', N'2022-05-24 21:57:34.137', N'2022-05-24 21:57:34.137', N'E79DB53B-7162-4669-9B5E-F860501475AC', N'0', N'0', N'1', N'83', N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', N'8')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'0F908E1D-4A82-42C1-D4E8-08DA3D8D5A26', N'2022-05-24 21:57:34.137', N'2022-05-24 21:57:34.137', N'E79DB53B-7162-4669-9B5E-F860501475AC', N'0', N'0', N'1', N'86', N'PermissionType', N'数据权限类型', N'int', N'Int32', N'PermissionType', N'4')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'9C9F9672-3FA0-4C65-D4E9-08DA3D8D5A26', N'2022-05-24 21:57:34.137', N'2022-05-24 21:57:34.137', N'E79DB53B-7162-4669-9B5E-F860501475AC', N'0', N'0', N'1', N'85', N'RoleId', N'', N'uniqueidentifier', N'Guid', N'RoleId', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'DF559C6B-6F60-467C-D4EA-08DA3D8D5A26', N'2022-05-24 21:57:34.153', N'2022-05-24 21:57:34.153', N'524E71B4-CBF7-4248-8B29-3F99B43F2EB2', N'1', N'0', N'0', N'87', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'2341DCB1-8056-4A7C-D4EB-08DA3D8D5A26', N'2022-05-24 21:57:34.153', N'2022-05-24 21:57:34.153', N'524E71B4-CBF7-4248-8B29-3F99B43F2EB2', N'0', N'0', N'1', N'89', N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', N'8')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'6304E602-84A1-4C57-D4EC-08DA3D8D5A26', N'2022-05-24 21:57:34.153', N'2022-05-24 21:57:34.153', N'524E71B4-CBF7-4248-8B29-3F99B43F2EB2', N'0', N'0', N'1', N'88', N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', N'8')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'DE898F57-ABE7-4D2C-D4ED-08DA3D8D5A26', N'2022-05-24 21:57:34.153', N'2022-05-24 21:57:34.153', N'524E71B4-CBF7-4248-8B29-3F99B43F2EB2', N'0', N'0', N'1', N'90', N'SysDataAuthorityId', N'', N'uniqueidentifier', N'Guid', N'SysDataAuthorityId', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'325AF03C-CBB7-4DE6-D4EE-08DA3D8D5A26', N'2022-05-24 21:57:34.153', N'2022-05-24 21:57:34.153', N'524E71B4-CBF7-4248-8B29-3F99B43F2EB2', N'0', N'0', N'0', N'91', N'SysOrganizationId', N'', N'int', N'Int32', N'SysOrganizationId', N'4')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'BBAC9A7C-6E62-4FE6-D4EF-08DA3D8D5A26', N'2022-05-24 21:57:34.173', N'2022-05-24 21:57:34.173', N'AF37F705-7BA0-4883-B1BE-8A274EA4C026', N'0', N'0', N'1', N'96', N'Code', N'编码', N'varchar(255)', N'String', N'Code', N'255')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'2CA9AA7E-321E-47F0-D4F0-08DA3D8D5A26', N'2022-05-24 21:57:34.173', N'2022-05-24 21:57:34.173', N'AF37F705-7BA0-4883-B1BE-8A274EA4C026', N'0', N'0', N'1', N'94', N'CreationTime', N'创建时间', N'datetime', N'DateTime', N'CreationTime', N'8')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'AB5C0B3D-8871-42FD-D4F1-08DA3D8D5A26', N'2022-05-24 21:57:34.173', N'2022-05-24 21:57:34.173', N'AF37F705-7BA0-4883-B1BE-8A274EA4C026', N'0', N'1', N'0', N'92', N'Id', N'id', N'int', N'Int32', N'Id', N'4')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'ABA55AD7-7153-4658-D4F2-08DA3D8D5A26', N'2022-05-24 21:57:34.173', N'2022-05-24 21:57:34.173', N'AF37F705-7BA0-4883-B1BE-8A274EA4C026', N'0', N'0', N'1', N'93', N'LastModificationTime', N'更新时间', N'datetime', N'DateTime', N'LastModificationTime', N'8')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'29B765BD-36F4-462F-D4F3-08DA3D8D5A26', N'2022-05-24 21:57:34.173', N'2022-05-24 21:57:34.173', N'AF37F705-7BA0-4883-B1BE-8A274EA4C026', N'0', N'0', N'1', N'98', N'Name', N'分组名/键', N'varchar(255)', N'String', N'Name', N'255')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'6E69CF9B-D9CD-4C31-D4F4-08DA3D8D5A26', N'2022-05-24 21:57:34.173', N'2022-05-24 21:57:34.173', N'AF37F705-7BA0-4883-B1BE-8A274EA4C026', N'0', N'0', N'1', N'99', N'ParentId', N'父级分组id', N'int', N'Int32', N'ParentId', N'4')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'84A87E33-8B66-4B9A-D4F5-08DA3D8D5A26', N'2022-05-24 21:57:34.173', N'2022-05-24 21:57:34.173', N'AF37F705-7BA0-4883-B1BE-8A274EA4C026', N'0', N'0', N'1', N'95', N'Sort', N'排序号', N'int', N'Int32', N'Sort', N'4')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'9A850F29-2DD2-4779-D4F6-08DA3D8D5A26', N'2022-05-24 21:57:34.173', N'2022-05-24 21:57:34.173', N'AF37F705-7BA0-4883-B1BE-8A274EA4C026', N'0', N'0', N'1', N'97', N'Value', N'值', N'varchar(255)', N'String', N'Value', N'255')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'E1316750-62A4-46AA-D4F7-08DA3D8D5A26', N'2022-05-24 21:57:34.193', N'2022-05-24 21:57:34.193', N'6FABC67A-8B48-49A6-8BA1-C8A32C499D36', N'1', N'0', N'0', N'100', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'743D6EAB-B4C8-4A15-D4F8-08DA3D8D5A26', N'2022-05-24 21:57:34.193', N'2022-05-24 21:57:34.193', N'6FABC67A-8B48-49A6-8BA1-C8A32C499D36', N'0', N'0', N'1', N'103', N'ByName', N'', N'nvarchar(255)', N'String', N'ByName', N'255')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'82EE25D2-4E01-4100-D4F9-08DA3D8D5A26', N'2022-05-24 21:57:34.193', N'2022-05-24 21:57:34.193', N'6FABC67A-8B48-49A6-8BA1-C8A32C499D36', N'0', N'0', N'1', N'106', N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', N'6')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'A61101B5-8E66-4456-D4FA-08DA3D8D5A26', N'2022-05-24 21:57:34.193', N'2022-05-24 21:57:34.193', N'6FABC67A-8B48-49A6-8BA1-C8A32C499D36', N'0', N'0', N'1', N'105', N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', N'6')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'AAA5FAE3-8C5B-4427-D4FB-08DA3D8D5A26', N'2022-05-24 21:57:34.193', N'2022-05-24 21:57:34.193', N'6FABC67A-8B48-49A6-8BA1-C8A32C499D36', N'0', N'0', N'1', N'102', N'Name', N'', N'nvarchar(255)', N'String', N'Name', N'255')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'F9FD0E13-4E5D-42B4-D4FC-08DA3D8D5A26', N'2022-05-24 21:57:34.193', N'2022-05-24 21:57:34.193', N'6FABC67A-8B48-49A6-8BA1-C8A32C499D36', N'0', N'0', N'1', N'101', N'Number', N'', N'int', N'Int32', N'Number', N'4')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'646614D9-D7F3-42C5-D4FD-08DA3D8D5A26', N'2022-05-24 21:57:34.193', N'2022-05-24 21:57:34.193', N'6FABC67A-8B48-49A6-8BA1-C8A32C499D36', N'0', N'0', N'1', N'104', N'Remark', N'', N'nvarchar(255)', N'String', N'Remark', N'255')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'498327EB-5676-4091-D4FE-08DA3D8D5A26', N'2022-05-24 21:58:07.503', N'2022-05-24 00:00:00.000', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'1', N'1', N'0', N'107', N'Id', N'', N'int', N'Int32', N'Id', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'3133985D-586C-4C4E-D4FF-08DA3D8D5A26', N'2022-05-24 21:57:34.220', N'2022-05-24 21:57:34.220', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'119', N'Close', N'', N'bit', N'Boolean', N'Close', N'1')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'78757B0D-D9EE-45EA-D500-08DA3D8D5A26', N'2022-05-24 21:58:07.503', N'2022-05-24 00:00:00.000', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'115', N'ComponentName', N'', N'nvarchar(255)', N'String', N'ComponentName', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'2006AC52-BB49-4E41-D501-08DA3D8D5A26', N'2022-05-24 21:58:07.503', N'2022-05-24 00:00:00.000', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'109', N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'F5193134-B39D-4CA0-D502-08DA3D8D5A26', N'2022-05-24 21:58:07.503', N'2022-05-24 00:00:00.000', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'116', N'Icon', N'', N'nvarchar(255)', N'String', N'Icon', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'12E9E9AD-5631-4DC8-D503-08DA3D8D5A26', N'2022-05-24 21:57:34.220', N'2022-05-24 21:57:34.220', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'122', N'JumpUrl', N'', N'varchar(255)', N'String', N'JumpUrl', N'255')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'B1F89F8D-8E22-4C4A-D504-08DA3D8D5A26', N'2022-05-24 21:57:34.220', N'2022-05-24 21:57:34.220', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'120', N'KeepAlive', N'', N'bit', N'Boolean', N'KeepAlive', N'1')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'7211AEA6-EB91-41E5-D505-08DA3D8D5A26', N'2022-05-24 21:58:07.503', N'2022-05-24 00:00:00.000', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'108', N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'B52A9E8C-DFFB-40B7-D506-08DA3D8D5A26', N'2022-05-24 21:58:07.503', N'2022-05-24 00:00:00.000', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'110', N'LevelCode', N'', N'varchar(50)', N'String', N'LevelCode', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'E74C1F4B-AF12-4EAA-D507-08DA3D8D5A26', N'2022-05-24 21:58:07.503', N'2022-05-24 00:00:00.000', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'112', N'Name', N'', N'nvarchar(255)', N'String', N'Name', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'235B67F8-62D2-480E-D508-08DA3D8D5A26', N'2022-05-24 21:58:07.503', N'2022-05-24 00:00:00.000', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'111', N'Number', N'编号', N'int', N'Int32', N'Number', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'F029B676-48AC-4BA3-D509-08DA3D8D5A26', N'2022-05-24 21:57:34.220', N'2022-05-24 21:57:34.220', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'117', N'ParentId', N'', N'int', N'Int32', N'ParentId', N'4')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'5AA598A9-6E52-4AE4-D50A-08DA3D8D5A26', N'2022-05-24 21:58:07.503', N'2022-05-24 00:00:00.000', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'114', N'Router', N'', N'nvarchar(255)', N'String', N'Router', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'1916E619-4818-4C63-D50B-08DA3D8D5A26', N'2022-05-24 21:57:34.220', N'2022-05-24 21:57:34.220', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'118', N'Show', N'', N'bit', N'Boolean', N'Show', N'1')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'D0FBF229-7204-4494-D50C-08DA3D8D5A26', N'2022-05-24 21:57:34.220', N'2022-05-24 21:57:34.220', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'121', N'State', N'', N'bit', N'Boolean', N'State', N'1')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'6C3BB548-AAFC-4F16-D50D-08DA3D8D5A26', N'2022-05-24 21:57:34.220', N'2022-05-24 21:57:34.220', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'123', N'Type', N'', N'int', N'Int32', N'Type', N'4')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'19FA02FE-FB8F-4631-D50E-08DA3D8D5A26', N'2022-05-24 21:58:07.503', N'2022-05-24 00:00:00.000', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'113', N'Url', N'', N'nvarchar(255)', N'String', N'Url', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'9C4158F4-B5B5-4928-D50F-08DA3D8D5A26', N'2022-05-24 21:57:34.250', N'2022-05-24 21:57:34.250', N'2AE9E532-7D9A-474B-B629-50A39945C44D', N'1', N'0', N'0', N'124', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'FBF2D2C1-454B-4898-D510-08DA3D8D5A26', N'2022-05-24 21:57:34.250', N'2022-05-24 21:57:34.250', N'2AE9E532-7D9A-474B-B629-50A39945C44D', N'0', N'0', N'1', N'126', N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', N'6')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'6CFE3B57-006F-436B-D511-08DA3D8D5A26', N'2022-05-24 21:57:34.250', N'2022-05-24 21:57:34.250', N'2AE9E532-7D9A-474B-B629-50A39945C44D', N'0', N'0', N'1', N'129', N'FunctionCode', N'', N'varchar(100)', N'String', N'FunctionCode', N'100')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'A908815C-C0E6-4565-D512-08DA3D8D5A26', N'2022-05-24 21:57:34.250', N'2022-05-24 21:57:34.250', N'2AE9E532-7D9A-474B-B629-50A39945C44D', N'0', N'0', N'1', N'130', N'FunctionName', N'', N'varchar(100)', N'String', N'FunctionName', N'100')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'E4DD55F0-9697-43AE-D513-08DA3D8D5A26', N'2022-05-24 21:57:34.250', N'2022-05-24 21:57:34.250', N'2AE9E532-7D9A-474B-B629-50A39945C44D', N'0', N'0', N'1', N'125', N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', N'6')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'29D08351-9091-4C91-D514-08DA3D8D5A26', N'2022-05-24 21:57:34.250', N'2022-05-24 21:57:34.250', N'2AE9E532-7D9A-474B-B629-50A39945C44D', N'0', N'0', N'1', N'128', N'MenuId', N'', N'int', N'Int32', N'MenuId', N'4')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'C7B2AD1D-ECB0-4497-D515-08DA3D8D5A26', N'2022-05-24 21:57:34.250', N'2022-05-24 21:57:34.250', N'2AE9E532-7D9A-474B-B629-50A39945C44D', N'0', N'0', N'1', N'127', N'Number', N'', N'int', N'Int32', N'Number', N'4')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'9A050102-6300-46EF-D516-08DA3D8D5A26', N'2022-05-24 21:57:34.250', N'2022-05-24 21:57:34.250', N'2AE9E532-7D9A-474B-B629-50A39945C44D', N'0', N'0', N'1', N'131', N'Remark', N'', N'varchar(100)', N'String', N'Remark', N'100')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'BA392537-C1C5-4ECC-D517-08DA3D8D5A26', N'2022-05-24 21:57:34.270', N'2022-05-24 21:57:34.270', N'60CCEBA1-28BF-4D1D-B603-4EDF95D512B8', N'1', N'0', N'0', N'1', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'EE8CA902-4E27-40C5-D518-08DA3D8D5A26', N'2022-05-24 21:57:34.270', N'2022-05-24 21:57:34.270', N'60CCEBA1-28BF-4D1D-B603-4EDF95D512B8', N'0', N'0', N'1', N'14', N'ActionDisplayName', N'', N'varchar(255)', N'String', N'ActionDisplayName', N'255')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'200FF922-513C-4B19-D519-08DA3D8D5A26', N'2022-05-24 21:57:34.270', N'2022-05-24 21:57:34.270', N'60CCEBA1-28BF-4D1D-B603-4EDF95D512B8', N'0', N'0', N'1', N'4', N'Api', N'接口地址', N'varchar(500)', N'String', N'Api', N'500')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'063D44B8-6CE2-47A6-D51A-08DA3D8D5A26', N'2022-05-24 21:57:34.270', N'2022-05-24 21:57:34.270', N'60CCEBA1-28BF-4D1D-B603-4EDF95D512B8', N'0', N'0', N'1', N'9', N'Browser', N'', N'varchar(255)', N'String', N'Browser', N'255')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'A62BB184-93B0-40E3-D51B-08DA3D8D5A26', N'2022-05-24 21:57:34.270', N'2022-05-24 21:57:34.270', N'60CCEBA1-28BF-4D1D-B603-4EDF95D512B8', N'0', N'0', N'1', N'13', N'ControllerDisplayName', N'', N'varchar(255)', N'String', N'ControllerDisplayName', N'255')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'0AA2DAAB-50DF-4397-D51C-08DA3D8D5A26', N'2022-05-24 21:57:34.270', N'2022-05-24 21:57:34.270', N'60CCEBA1-28BF-4D1D-B603-4EDF95D512B8', N'0', N'0', N'1', N'3', N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', N'6')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'5F5C2997-DAA8-491C-D51D-08DA3D8D5A26', N'2022-05-24 21:57:34.270', N'2022-05-24 21:57:34.270', N'60CCEBA1-28BF-4D1D-B603-4EDF95D512B8', N'0', N'0', N'1', N'6', N'Form', N'表单信息', N'varchar(MAX)', N'String', N'Form', N'-1')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'1D881E59-D88E-497F-D51E-08DA3D8D5A26', N'2022-05-24 21:57:34.270', N'2022-05-24 21:57:34.270', N'60CCEBA1-28BF-4D1D-B603-4EDF95D512B8', N'0', N'0', N'1', N'7', N'FormBody', N'json表单信息', N'varchar(MAX)', N'String', N'FormBody', N'-1')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'CA605278-6972-48B4-D51F-08DA3D8D5A26', N'2022-05-24 21:57:34.270', N'2022-05-24 21:57:34.270', N'60CCEBA1-28BF-4D1D-B603-4EDF95D512B8', N'0', N'0', N'1', N'5', N'Ip', N'ip地址', N'varchar(255)', N'String', N'Ip', N'255')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'A932F1CE-A55A-480B-D520-08DA3D8D5A26', N'2022-05-24 21:57:34.270', N'2022-05-24 21:57:34.270', N'60CCEBA1-28BF-4D1D-B603-4EDF95D512B8', N'0', N'0', N'1', N'2', N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', N'6')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'4736479F-6089-4141-D521-08DA3D8D5A26', N'2022-05-24 21:57:34.270', N'2022-05-24 21:57:34.270', N'60CCEBA1-28BF-4D1D-B603-4EDF95D512B8', N'0', N'0', N'1', N'10', N'OS', N'', N'varchar(255)', N'String', N'OS', N'255')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'4467BF43-6E95-4798-D522-08DA3D8D5A26', N'2022-05-24 21:57:34.270', N'2022-05-24 21:57:34.270', N'60CCEBA1-28BF-4D1D-B603-4EDF95D512B8', N'0', N'0', N'1', N'8', N'QueryString', N'地址栏信息', N'varchar(MAX)', N'String', N'QueryString', N'-1')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'0888B15F-3BD2-4881-D523-08DA3D8D5A26', N'2022-05-24 21:57:34.270', N'2022-05-24 21:57:34.270', N'60CCEBA1-28BF-4D1D-B603-4EDF95D512B8', N'0', N'0', N'0', N'12', N'TakeUpTime', N'接口耗时（毫秒）', N'bigint', N'Int64', N'TakeUpTime', N'8')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'66718DE6-5C1A-4229-D524-08DA3D8D5A26', N'2022-05-24 21:57:34.270', N'2022-05-24 21:57:34.270', N'60CCEBA1-28BF-4D1D-B603-4EDF95D512B8', N'0', N'0', N'1', N'11', N'UserId', N'当前操作人id', N'uniqueidentifier', N'Guid', N'UserId', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'D6008705-0D21-42AC-D525-08DA3D8D5A26', N'2022-05-30 11:38:59.667', N'2022-05-24 00:00:00.000', N'D26D07CB-158A-4CB2-8B20-5DFD5181AF54', N'1', N'1', N'0', N'132', N'Id', N'', N'int', N'Int32', N'Id', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'0B45E9BB-B9F1-4A2F-D526-08DA3D8D5A26', N'2022-05-24 21:57:34.297', N'2022-05-24 21:57:34.297', N'D26D07CB-158A-4CB2-8B20-5DFD5181AF54', N'0', N'0', N'1', N'142', N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', N'6')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'CE802713-74F5-4F30-D527-08DA3D8D5A26', N'2022-05-30 11:38:59.667', N'2022-05-24 00:00:00.000', N'D26D07CB-158A-4CB2-8B20-5DFD5181AF54', N'0', N'0', N'1', N'138', N'Email', N'', N'nvarchar(255)', N'String', N'Email', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'19A7504C-F740-4B49-D528-08DA3D8D5A26', N'2022-05-30 11:38:59.667', N'2022-05-24 00:00:00.000', N'D26D07CB-158A-4CB2-8B20-5DFD5181AF54', N'0', N'0', N'1', N'141', N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'CF2E3691-AB88-4420-D529-08DA3D8D5A26', N'2022-05-30 11:38:59.667', N'2022-05-24 00:00:00.000', N'D26D07CB-158A-4CB2-8B20-5DFD5181AF54', N'0', N'0', N'1', N'136', N'Leader', N'', N'nvarchar(255)', N'String', N'Leader', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'11F3D291-CF7A-4143-D52A-08DA3D8D5A26', N'2022-05-30 11:38:59.667', N'2022-05-24 00:00:00.000', N'D26D07CB-158A-4CB2-8B20-5DFD5181AF54', N'0', N'0', N'1', N'135', N'LevelCode', N'', N'varchar(50)', N'String', N'LevelCode', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'1121D642-49E8-4B25-D52B-08DA3D8D5A26', N'2022-05-30 11:38:59.667', N'2022-05-24 00:00:00.000', N'D26D07CB-158A-4CB2-8B20-5DFD5181AF54', N'0', N'0', N'1', N'133', N'Name', N'组织名称', N'nvarchar(255)', N'String', N'Name', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'5AED3FEB-3D77-4E1E-D52C-08DA3D8D5A26', N'2022-05-30 11:38:59.667', N'2022-05-24 00:00:00.000', N'D26D07CB-158A-4CB2-8B20-5DFD5181AF54', N'0', N'0', N'1', N'134', N'OrderNumber', N'', N'int', N'Int32', N'OrderNumber', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'042A59E2-72C1-4C38-D52D-08DA3D8D5A26', N'2022-05-30 11:38:59.667', N'2022-05-24 00:00:00.000', N'D26D07CB-158A-4CB2-8B20-5DFD5181AF54', N'0', N'0', N'1', N'140', N'ParentId', N'', N'int', N'Int32', N'ParentId', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'EA63351C-C203-4D40-D52E-08DA3D8D5A26', N'2022-05-30 11:38:59.667', N'2022-05-24 00:00:00.000', N'D26D07CB-158A-4CB2-8B20-5DFD5181AF54', N'0', N'0', N'1', N'137', N'Phone', N'', N'nvarchar(255)', N'String', N'Phone', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'B9BFCA2E-F72B-4A3F-D52F-08DA3D8D5A26', N'2022-05-30 11:38:59.667', N'2022-05-24 00:00:00.000', N'D26D07CB-158A-4CB2-8B20-5DFD5181AF54', N'0', N'0', N'1', N'139', N'State', N'', N'int', N'Int32', N'State', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'6AA13B8F-1E3C-4750-D530-08DA3D8D5A26', N'2022-05-24 21:57:34.320', N'2022-05-24 21:57:34.320', N'0A8BDB18-758A-4798-9FFC-E7031DCBF262', N'1', N'0', N'0', N'143', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'B76500C1-91F8-4E44-D531-08DA3D8D5A26', N'2022-05-24 21:57:34.320', N'2022-05-24 21:57:34.320', N'0A8BDB18-758A-4798-9FFC-E7031DCBF262', N'0', N'0', N'1', N'145', N'Code', N'', N'nvarchar(255)', N'String', N'Code', N'255')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'134C9F62-ABD2-476E-D532-08DA3D8D5A26', N'2022-05-24 21:57:34.320', N'2022-05-24 21:57:34.320', N'0A8BDB18-758A-4798-9FFC-E7031DCBF262', N'0', N'0', N'1', N'150', N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', N'6')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'5257AD4F-589D-40D0-D533-08DA3D8D5A26', N'2022-05-24 21:57:34.320', N'2022-05-24 21:57:34.320', N'0A8BDB18-758A-4798-9FFC-E7031DCBF262', N'0', N'0', N'1', N'149', N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', N'6')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'1790B4D5-51B2-4DC0-D534-08DA3D8D5A26', N'2022-05-24 21:57:34.320', N'2022-05-24 21:57:34.320', N'0A8BDB18-758A-4798-9FFC-E7031DCBF262', N'0', N'0', N'1', N'146', N'Name', N'', N'nvarchar(255)', N'String', N'Name', N'255')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'2286C948-4F0D-4B66-D535-08DA3D8D5A26', N'2022-05-24 21:57:34.320', N'2022-05-24 21:57:34.320', N'0A8BDB18-758A-4798-9FFC-E7031DCBF262', N'0', N'0', N'1', N'144', N'Number', N'', N'int', N'Int32', N'Number', N'4')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'5F9A4A78-1BB9-4592-D536-08DA3D8D5A26', N'2022-05-24 21:57:34.320', N'2022-05-24 21:57:34.320', N'0A8BDB18-758A-4798-9FFC-E7031DCBF262', N'0', N'0', N'1', N'148', N'Remarks', N'', N'nvarchar(255)', N'String', N'Remarks', N'255')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'564A907B-1F47-4849-D537-08DA3D8D5A26', N'2022-05-24 21:57:34.320', N'2022-05-24 21:57:34.320', N'0A8BDB18-758A-4798-9FFC-E7031DCBF262', N'0', N'0', N'1', N'147', N'State', N'', N'int', N'Int32', N'State', N'4')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'69875823-326C-4E13-D538-08DA3D8D5A26', N'2022-05-24 21:57:34.340', N'2022-05-24 21:57:34.340', N'F3D7BBB3-C1FB-4D61-92A4-9BC101811335', N'1', N'0', N'0', N'151', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'42430604-7090-442D-D539-08DA3D8D5A26', N'2022-05-24 21:57:34.340', N'2022-05-24 21:57:34.340', N'F3D7BBB3-C1FB-4D61-92A4-9BC101811335', N'0', N'0', N'1', N'153', N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', N'6')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'3F7E43C9-762F-48EA-D53A-08DA3D8D5A26', N'2022-05-24 21:57:34.340', N'2022-05-24 21:57:34.340', N'F3D7BBB3-C1FB-4D61-92A4-9BC101811335', N'0', N'0', N'1', N'157', N'DeleteLock', N'', N'bit', N'Boolean', N'DeleteLock', N'1')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'517CBFE0-275D-4F36-D53B-08DA3D8D5A26', N'2022-05-24 21:57:34.340', N'2022-05-24 21:57:34.340', N'F3D7BBB3-C1FB-4D61-92A4-9BC101811335', N'0', N'0', N'1', N'152', N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', N'6')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'BE481209-565B-4099-D53C-08DA3D8D5A26', N'2022-05-24 21:57:34.340', N'2022-05-24 21:57:34.340', N'F3D7BBB3-C1FB-4D61-92A4-9BC101811335', N'0', N'0', N'1', N'155', N'Name', N'', N'nvarchar(255)', N'String', N'Name', N'255')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'DD367FD5-2030-43B2-D53D-08DA3D8D5A26', N'2022-05-24 21:57:34.340', N'2022-05-24 21:57:34.340', N'F3D7BBB3-C1FB-4D61-92A4-9BC101811335', N'0', N'0', N'1', N'154', N'Number', N'', N'int', N'Int32', N'Number', N'4')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'DBE000FC-4895-42F2-D53E-08DA3D8D5A26', N'2022-05-24 21:57:34.340', N'2022-05-24 21:57:34.340', N'F3D7BBB3-C1FB-4D61-92A4-9BC101811335', N'0', N'0', N'1', N'156', N'Remark', N'', N'nvarchar(255)', N'String', N'Remark', N'255')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'7B6DF0CD-C31B-4508-D53F-08DA3D8D5A26', N'2022-05-24 21:57:34.357', N'2022-05-24 21:57:34.357', N'8DA38D20-8A09-4E81-8DD8-ED6702AEE380', N'1', N'0', N'0', N'158', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'1213C179-E366-4E3C-D540-08DA3D8D5A26', N'2022-05-24 21:57:34.357', N'2022-05-24 21:57:34.357', N'8DA38D20-8A09-4E81-8DD8-ED6702AEE380', N'0', N'0', N'1', N'163', N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', N'6')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'B24AC0E3-71AB-4D48-D541-08DA3D8D5A26', N'2022-05-24 21:57:34.357', N'2022-05-24 21:57:34.357', N'8DA38D20-8A09-4E81-8DD8-ED6702AEE380', N'0', N'0', N'1', N'162', N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', N'6')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'6C934348-BE20-4C9E-D542-08DA3D8D5A26', N'2022-05-24 21:57:34.357', N'2022-05-24 21:57:34.357', N'8DA38D20-8A09-4E81-8DD8-ED6702AEE380', N'0', N'0', N'1', N'161', N'MenuFunctionId', N'', N'uniqueidentifier', N'Guid', N'MenuFunctionId', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'D41BD8DB-1B3F-48FA-D543-08DA3D8D5A26', N'2022-05-24 21:57:34.357', N'2022-05-24 21:57:34.357', N'8DA38D20-8A09-4E81-8DD8-ED6702AEE380', N'0', N'0', N'1', N'160', N'MenuId', N'', N'int', N'Int32', N'MenuId', N'4')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'F24F0E45-209E-46B7-D544-08DA3D8D5A26', N'2022-05-24 21:57:34.357', N'2022-05-24 21:57:34.357', N'8DA38D20-8A09-4E81-8DD8-ED6702AEE380', N'0', N'0', N'1', N'159', N'RoleId', N'', N'uniqueidentifier', N'Guid', N'RoleId', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'5BCF7406-75CC-4171-D545-08DA3D8D5A26', N'2022-05-30 11:39:32.063', N'2022-05-24 00:00:00.000', N'6323638B-A45F-4A76-886E-69A9E9BE0901', N'1', N'0', N'0', N'164', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'46BAC66F-3CF0-46B3-D546-08DA3D8D5A26', N'2022-05-30 11:39:32.063', N'2022-05-24 00:00:00.000', N'6323638B-A45F-4A76-886E-69A9E9BE0901', N'0', N'0', N'1', N'166', N'CreationTime', N'创建时间', N'datetime2', N'DateTime', N'CreationTime', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'A6752BD9-F3D6-451F-D547-08DA3D8D5A26', N'2022-05-30 11:39:32.063', N'2022-05-24 00:00:00.000', N'6323638B-A45F-4A76-886E-69A9E9BE0901', N'0', N'0', N'1', N'172', N'DeleteLock', N'删除锁', N'bit', N'Boolean', N'DeleteLock', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'287314B2-3141-4957-D548-08DA3D8D5A26', N'2022-05-30 11:39:32.063', N'2022-05-24 00:00:00.000', N'6323638B-A45F-4A76-886E-69A9E9BE0901', N'0', N'0', N'0', N'171', N'Email', N'电子邮箱', N'nvarchar(255)', N'String', N'Email', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'E5418D61-916F-45FD-D549-08DA3D8D5A26', N'2022-05-30 11:39:32.063', N'2022-05-24 00:00:00.000', N'6323638B-A45F-4A76-886E-69A9E9BE0901', N'0', N'0', N'1', N'165', N'LastModificationTime', N'更新时间', N'datetime2', N'DateTime', N'LastModificationTime', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'7CBE8988-CBAC-4EA2-D54A-08DA3D8D5A26', N'2022-05-30 11:39:32.063', N'2022-05-24 00:00:00.000', N'6323638B-A45F-4A76-886E-69A9E9BE0901', N'0', N'0', N'1', N'168', N'LoginName', N'登录名称', N'nvarchar(255)', N'String', N'LoginName', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'4B5BC027-5663-463A-D54B-08DA3D8D5A26', N'2022-05-30 11:39:32.063', N'2022-05-24 00:00:00.000', N'6323638B-A45F-4A76-886E-69A9E9BE0901', N'0', N'0', N'1', N'167', N'Name', N'用户名称', N'nvarchar(255)', N'String', N'Name', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'5A9FA990-B6D6-445F-D54C-08DA3D8D5A26', N'2022-05-30 11:39:32.063', N'2022-05-24 00:00:00.000', N'6323638B-A45F-4A76-886E-69A9E9BE0901', N'0', N'0', N'1', N'173', N'OrganizationId', N'组织id', N'int', N'Int32', N'OrganizationId', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'E36410B5-CB7C-4FC3-D54D-08DA3D8D5A26', N'2022-05-30 11:39:32.063', N'2022-05-24 00:00:00.000', N'6323638B-A45F-4A76-886E-69A9E9BE0901', N'0', N'0', N'1', N'169', N'Password', N'密码', N'nvarchar(255)', N'String', N'Password', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'C82D5132-6CDA-463E-D54E-08DA3D8D5A26', N'2022-05-30 11:39:32.063', N'2022-05-24 00:00:00.000', N'6323638B-A45F-4A76-886E-69A9E9BE0901', N'0', N'0', N'1', N'170', N'Phone', N'联系电话', N'nvarchar(255)', N'String', N'Phone', NULL)
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'A9766BBB-21BF-46DA-D54F-08DA3D8D5A26', N'2022-05-24 21:57:34.407', N'2022-05-24 21:57:34.407', N'69B24F04-0ED3-45FC-91D9-0DC929175A57', N'1', N'0', N'0', N'174', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'F731CCD3-9A9C-4DDA-D550-08DA3D8D5A26', N'2022-05-24 21:57:34.407', N'2022-05-24 21:57:34.407', N'69B24F04-0ED3-45FC-91D9-0DC929175A57', N'0', N'0', N'1', N'178', N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', N'6')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'135E23DB-540B-4096-D551-08DA3D8D5A26', N'2022-05-24 21:57:34.407', N'2022-05-24 21:57:34.407', N'69B24F04-0ED3-45FC-91D9-0DC929175A57', N'0', N'0', N'1', N'177', N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', N'6')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'4C479D54-530F-4652-D552-08DA3D8D5A26', N'2022-05-24 21:57:34.407', N'2022-05-24 21:57:34.407', N'69B24F04-0ED3-45FC-91D9-0DC929175A57', N'0', N'0', N'1', N'176', N'PostId', N'', N'uniqueidentifier', N'Guid', N'PostId', N'16')
GO

INSERT INTO [dbo].[LowCodeTableInfo] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength]) VALUES (N'CB5F9ECF-9317-4B11-D553-08DA3D8D5A26', N'2022-05-24 21:57:34.407', N'2022-05-24 21:57:34.407', N'69B24F04-0ED3-45FC-91D9-0DC929175A57', N'0', N'0', N'1', N'175', N'UserId', N'', N'uniqueidentifier', N'Guid', N'UserId', N'16')
GO


-- ----------------------------
-- Table structure for Member
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Member]') AND type IN ('U'))
	DROP TABLE [dbo].[Member]
GO

CREATE TABLE [dbo].[Member] (
  [Id] uniqueidentifier  NOT NULL,
  [Number] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Phone] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Sex] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Birthday] datetime2(0)  NULL,
  [Photo] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Introduce] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [FilePath] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [UserId] uniqueidentifier  NULL,
  [CreationTime] datetime2(0)  NULL,
  [LastModificationTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[Member] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Member
-- ----------------------------
INSERT INTO [dbo].[Member] ([Id], [Number], [Name], [Phone], [Sex], [Birthday], [Photo], [Introduce], [FilePath], [UserId], [CreationTime], [LastModificationTime]) VALUES (N'96A1AA3D-A61A-42D0-954A-C71753FB2065', N'123', N'123', N'123', N'女', N'2018-04-25 23:00:00', NULL, N'<p>123</p>', NULL, N'AC18F496-E93D-42F0-B59E-E321ACC85335', N'2020-10-24 00:07:42', N'2021-04-18 22:08:06')
GO

INSERT INTO [dbo].[Member] ([Id], [Number], [Name], [Phone], [Sex], [Birthday], [Photo], [Introduce], [FilePath], [UserId], [CreationTime], [LastModificationTime]) VALUES (N'9A604AA2-9AE6-4A2F-8DDB-D9E0289EAD9E', N'1', N'测试会员', N'18510912123', N'男', N'2019-07-08 11:47:24', N'http://localhost:5600http://localhost:5600http://localhost:5600/upload/files/20210118/time_232747_old_name_hzy.png', N'<p>999888</p>', N'/upload/files/20210118/time_233310_old_name_hzy.png', N'AC18F496-E93D-42F0-B59E-E321ACC85335', N'2018-04-25 23:00:00', N'2022-05-08 16:46:21')
GO


-- ----------------------------
-- Table structure for News
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[News]') AND type IN ('U'))
	DROP TABLE [dbo].[News]
GO

CREATE TABLE [dbo].[News] (
  [Id] uniqueidentifier  NOT NULL,
  [LastModificationTime] datetime2(0)  NULL,
  [CreationTime] datetime2(0)  NULL,
  [Title] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Author] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Time] datetime  NULL,
  [Content] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[News] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of News
-- ----------------------------

-- ----------------------------
-- Table structure for SysDataAuthority
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysDataAuthority]') AND type IN ('U'))
	DROP TABLE [dbo].[SysDataAuthority]
GO

CREATE TABLE [dbo].[SysDataAuthority] (
  [Id] uniqueidentifier  NOT NULL,
  [LastModificationTime] datetime  NULL,
  [CreationTime] datetime DEFAULT (getdate()) NULL,
  [RoleId] uniqueidentifier  NULL,
  [PermissionType] int  NULL
)
GO

ALTER TABLE [dbo].[SysDataAuthority] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据权限类型',
'SCHEMA', N'dbo',
'TABLE', N'SysDataAuthority',
'COLUMN', N'PermissionType'
GO


-- ----------------------------
-- Records of SysDataAuthority
-- ----------------------------
INSERT INTO [dbo].[SysDataAuthority] ([Id], [LastModificationTime], [CreationTime], [RoleId], [PermissionType]) VALUES (N'D09BF250-C5B0-41CB-237D-08DA00442990', N'2022-03-08 10:02:22.620', N'2022-03-07 22:09:58.000', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'5')
GO

INSERT INTO [dbo].[SysDataAuthority] ([Id], [LastModificationTime], [CreationTime], [RoleId], [PermissionType]) VALUES (N'0228A5B5-2202-4BA0-6E48-08DA205DA7B7', N'2022-04-17 18:33:04.440', N'2022-04-17 18:33:04.440', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'2')
GO


-- ----------------------------
-- Table structure for SysDataAuthorityCustom
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysDataAuthorityCustom]') AND type IN ('U'))
	DROP TABLE [dbo].[SysDataAuthorityCustom]
GO

CREATE TABLE [dbo].[SysDataAuthorityCustom] (
  [Id] uniqueidentifier  NOT NULL,
  [LastModificationTime] datetime  NULL,
  [CreationTime] datetime DEFAULT (getdate()) NULL,
  [SysDataAuthorityId] uniqueidentifier  NULL,
  [SysOrganizationId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[SysDataAuthorityCustom] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SysDataAuthorityCustom
-- ----------------------------

-- ----------------------------
-- Table structure for SysDictionary
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysDictionary]') AND type IN ('U'))
	DROP TABLE [dbo].[SysDictionary]
GO

CREATE TABLE [dbo].[SysDictionary] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [LastModificationTime] datetime  NULL,
  [CreationTime] datetime  NULL,
  [Sort] int  NULL,
  [Code] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Value] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Name] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ParentId] int  NULL
)
GO

ALTER TABLE [dbo].[SysDictionary] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'id',
'SCHEMA', N'dbo',
'TABLE', N'SysDictionary',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'SysDictionary',
'COLUMN', N'LastModificationTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'SysDictionary',
'COLUMN', N'CreationTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序号',
'SCHEMA', N'dbo',
'TABLE', N'SysDictionary',
'COLUMN', N'Sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'编码',
'SCHEMA', N'dbo',
'TABLE', N'SysDictionary',
'COLUMN', N'Code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'值',
'SCHEMA', N'dbo',
'TABLE', N'SysDictionary',
'COLUMN', N'Value'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分组名/键',
'SCHEMA', N'dbo',
'TABLE', N'SysDictionary',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父级分组id',
'SCHEMA', N'dbo',
'TABLE', N'SysDictionary',
'COLUMN', N'ParentId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据字典',
'SCHEMA', N'dbo',
'TABLE', N'SysDictionary'
GO


-- ----------------------------
-- Records of SysDictionary
-- ----------------------------
SET IDENTITY_INSERT [dbo].[SysDictionary] ON
GO

INSERT INTO [dbo].[SysDictionary] ([Id], [LastModificationTime], [CreationTime], [Sort], [Code], [Value], [Name], [ParentId]) VALUES (N'1', N'2021-07-25 22:39:34.870', N'2021-07-25 22:31:30.490', N'1', N'news_type', NULL, N'资讯类别', NULL)
GO

INSERT INTO [dbo].[SysDictionary] ([Id], [LastModificationTime], [CreationTime], [Sort], [Code], [Value], [Name], [ParentId]) VALUES (N'2', N'2021-07-25 22:40:30.037', N'2021-07-25 22:38:49.153', N'1', N'news_type_nan', N'1', N'男', N'1')
GO

INSERT INTO [dbo].[SysDictionary] ([Id], [LastModificationTime], [CreationTime], [Sort], [Code], [Value], [Name], [ParentId]) VALUES (N'3', N'2022-04-23 22:18:52.613', N'2021-07-25 22:40:47.000', N'2', N'news_type_nv', N'2', N'女', N'1')
GO

SET IDENTITY_INSERT [dbo].[SysDictionary] OFF
GO


-- ----------------------------
-- Table structure for SysFunction
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysFunction]') AND type IN ('U'))
	DROP TABLE [dbo].[SysFunction]
GO

CREATE TABLE [dbo].[SysFunction] (
  [Id] uniqueidentifier  NOT NULL,
  [Number] int  NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ByName] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [LastModificationTime] datetime2(0)  NULL,
  [CreationTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[SysFunction] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SysFunction
-- ----------------------------
INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'B6FD5425-504A-46A9-993B-2F8DC9158EB8', N'80', N'打印', N'Print', N'Print', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO

INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'C9518758-B2E1-4F51-B517-5282E273889C', N'10', N'显示', N'Display', N'Display', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO

INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'F27ECB0A-197D-47B1-B243-59A8C71302BF', N'60', N'检索', N'Search', N'Search', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO

INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'383E7EE2-7690-46AC-9230-65155C84AA30', N'50', N'保存', N'Save', N'Save', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO

INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'9C388461-2704-4C5E-A729-72C17E9018E1', N'40', N'删除', N'Delete', N'Delete', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO

INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'BFFEFB1C-8988-4DDF-B4AC-81C2B30E80CD', N'20', N'添加', N'Insert', N'Insert', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO

INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'2401F4D0-60B0-4E2E-903F-84C603373572', N'70', N'导出', N'Export', N'Export', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO

INSERT INTO [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'E7EF2A05-8317-41C3-B588-99519FE88BF9', N'30', N'修改', N'Update', N'Update', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO


-- ----------------------------
-- Table structure for SysMenu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysMenu]') AND type IN ('U'))
	DROP TABLE [dbo].[SysMenu]
GO

CREATE TABLE [dbo].[SysMenu] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [LastModificationTime] datetime2(0)  NULL,
  [CreationTime] datetime2(0)  NULL,
  [LevelCode] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Number] int  NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Url] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Router] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ComponentName] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Icon] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ParentId] int  NULL,
  [Show] bit  NULL,
  [Close] bit  NULL,
  [KeepAlive] bit  NULL,
  [State] bit  NULL,
  [JumpUrl] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Type] int  NULL
)
GO

ALTER TABLE [dbo].[SysMenu] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SysMenu
-- ----------------------------
SET IDENTITY_INSERT [dbo].[SysMenu] ON
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'1', N'2022-03-04 12:25:39', N'2021-05-28 11:49:02', N'1', N'10', N'更多示例', NULL, NULL, NULL, N'MoreOutlined', NULL, N'1', N'1', N'1', N'1', NULL, N'1')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'2', N'2022-03-18 12:06:20', N'2021-01-16 16:05:22', N'1.2', N'10', N'Antd Vue3.0组件', N'views/AppComponents.vue', N'/app/components', N'AppComponentsCom', N'LayoutOutlined', N'1', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'3', N'2022-03-04 12:26:14', N'2020-12-17 14:58:05', N'1.3', N'30', N'按钮', N'views/Button.vue', N'/button', N'ButtonCom', N'AppstoreOutlined', N'1', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'4', N'2022-03-04 12:26:21', N'2021-01-16 16:06:33', N'1.4', N'40', N'图表 AntV G2', NULL, NULL, NULL, N'PieChartOutlined', N'1', N'1', N'1', N'1', N'1', NULL, N'1')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'5', N'2022-03-04 12:26:25', N'2021-01-16 16:07:24', N'1.4.5', N'10', N'基础图表', N'views/chart/Base.vue', N'/chart/base', N'ChartBaseCom', NULL, N'4', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'6', N'2022-03-04 12:26:28', N'2021-01-16 16:10:06', N'1.4.6', N'20', N'更多图表', N'views/chart/More.vue', N'/chart/more', N'ChartMoreCom', NULL, N'4', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'7', N'2022-03-04 12:26:34', N'2018-03-10 12:16:38', N'1.7', N'50', N'表格管理', NULL, NULL, NULL, N'TableOutlined', N'1', N'1', N'1', N'1', N'1', NULL, N'1')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'8', N'2022-03-04 12:26:38', N'2020-12-17 14:49:12', N'1.7.8', N'100', N'基础列表', N'views/BaseList.vue', N'/base/list', N'BaseListCom', NULL, N'7', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'9', N'2022-03-04 12:26:41', N'2020-12-17 14:51:07', N'1.7.9', N'110', N'标准表格', N'views/list/Index.vue', N'/list', N'ListIndexCom', NULL, N'7', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'10', N'2022-03-04 12:26:46', N'2021-01-18 19:34:28', N'1.10', N'60', N'富文本编辑器', N'views/Editor.vue', N'/editor', N'EditorCom', N'PicRightOutlined', N'1', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'11', N'2022-03-04 12:26:49', N'2021-08-05 21:51:12', N'1.11', N'70', N'跳转外部地址', N'components/ExternalJump.vue', N'/external/jump/:path(.*)', N'ExternalJumpCom', N'RadarChartOutlined', N'1', N'1', N'1', N'1', N'1', N'https://antv.vision/zh', N'2')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'12', N'2022-03-04 12:25:43', N'2018-03-10 12:16:38', N'12', N'50', N'基础信息', NULL, NULL, NULL, N'GoldOutlined', NULL, N'1', N'1', N'1', N'1', NULL, N'1')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'13', N'2022-03-04 12:26:55', N'2018-03-10 12:16:38', N'12.13', N'10', N'会员管理', N'views/base/member/Index.vue', N'/base/member', N'base_member', N'UsergroupAddOutlined', N'12', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'14', N'2022-03-04 12:25:46', N'2018-03-10 12:16:38', N'14', N'100', N'系统管理', NULL, NULL, NULL, N'DesktopOutlined', NULL, N'1', N'1', N'1', N'1', NULL, N'1')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'15', N'2022-03-04 12:27:02', N'2018-03-10 12:16:38', N'14.15', N'100', N'账户管理', N'views/system/user/Index.vue', N'/system/user', N'system_user', N'UserOutlined', N'14', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'16', N'2022-04-22 22:24:03', N'2018-03-10 12:16:38', N'14.16', N'110', N'角色管理', N'views/system/role/Index.vue', N'/system/role', N'system_role', N'TeamOutlined', N'14', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'17', N'2022-03-04 12:27:11', N'2018-03-10 12:16:38', N'14.17', N'120', N'功能管理', N'views/system/function/Index.vue', N'/system/function', N'system_function', N'ControlOutlined', N'14', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'19', N'2022-03-04 12:27:19', N'2018-03-10 12:16:38', N'14.19', N'150', N'个人中心', N'views/system/personal_center/Index.vue', N'/system/personal/center', N'system_personal_center', N'FormOutlined', N'14', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'20', N'2022-03-04 12:27:23', N'2021-05-27 17:29:49', N'14.20', N'160', N'岗位管理', N'views/system/post/Index.vue', N'/system/post', N'system_post', N'IdcardOutlined', N'14', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'21', N'2022-03-04 12:27:27', N'2021-05-27 20:27:56', N'14.21', N'170', N'组织机构', N'views/system/organization/Index.vue', N'/system/organization', N'system_organization', N'ClusterOutlined', N'14', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'22', N'2022-03-04 12:27:41', N'2018-03-10 12:17:03', N'29.22', N'10', N'接口文档', N'views/development_tool/Swagger.vue', N'/development_tool/swagger', N'swagger', N'FileSearchOutlined', N'29', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'23', N'2022-03-04 12:27:31', N'2021-07-25 21:50:01', N'14.23', N'190', N'数据字典', N'views/system/dictionary/Index.vue', N'/system/dictionary', N'system_dictionary', N'FileDoneOutlined', N'14', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'24', N'2022-03-04 12:27:35', N'2021-08-05 21:24:54', N'14.24', N'200', N'操作日志', N'views/system/sys_operation_log/Index.vue', N'/system/sys_operation_log', N'sys_operation_log', N'ContainerOutlined', N'14', N'1', N'1', N'1', N'1', N'', N'2')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'25', N'2022-03-04 12:27:15', N'2018-03-10 12:16:38', N'14.25', N'130', N'菜单功能', N'views/system/menu/Index.vue', N'/system/menu', N'system_menu', N'MenuOutlined', N'14', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'28', N'2022-03-04 12:26:00', N'2021-12-29 17:13:26', N'1.28', N'1', N'Vxe-Table', N'views/VxeTable.vue', N'/vxe/table', N'VxeTableCom', N'BorderlessTableOutlined', N'1', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'29', N'2022-03-04 12:25:49', N'2022-01-12 14:17:21', N'29', N'200', N'开发工具', NULL, NULL, NULL, N'CodepenOutlined', NULL, N'1', N'1', N'1', N'1', NULL, N'1')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'30', N'2022-03-04 12:27:44', N'2022-01-12 14:22:04', N'29.30', N'20', N'定时任务', N'views/development_tool/timed_task/Index.vue', N'/development_tool/timed_task', N'TimedTaskCom', N'FieldTimeOutlined', N'29', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'31', N'2022-05-24 22:05:57', N'2022-01-12 15:39:46', N'29.31', N'30', N'代码生成', N'views/development_tool/low_code/Index.vue', N'/development-tool/low-code', N'LowCode', N'CodeTwoTone', N'29', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'32', N'2022-03-18 12:06:38', N'2022-02-24 10:51:38', N'1.32', N'20', N'图标展示', N'views/Icons.vue', N'/icons', N'IconsVue', N'TagsTwoTone', N'1', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'33', N'2022-04-10 10:56:17', N'2022-04-10 10:55:41', N'29.33', N'40', N'EFCore监控台', N'views/development_tool/monitor_ef_core/Index.vue', N'/development_tool/monitor/efcore', N'monitor_ef_core', N'DashboardFilled', N'29', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[SysMenu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'36', N'2022-04-17 17:49:13', N'2022-04-17 17:45:25', N'12.13.36', N'1', N'详情', N'views/base/member/components/Details.vue', N'/base/member/details/:id/:title', N'base_member_info_Details', NULL, N'13', N'0', N'1', N'1', N'1', NULL, N'2')
GO

SET IDENTITY_INSERT [dbo].[SysMenu] OFF
GO


-- ----------------------------
-- Table structure for SysMenuFunction
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysMenuFunction]') AND type IN ('U'))
	DROP TABLE [dbo].[SysMenuFunction]
GO

CREATE TABLE [dbo].[SysMenuFunction] (
  [Id] uniqueidentifier  NOT NULL,
  [LastModificationTime] datetime2(0)  NULL,
  [CreationTime] datetime2(0)  NULL,
  [Number] int  NULL,
  [MenuId] int  NULL,
  [FunctionCode] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [FunctionName] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [Remark] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[SysMenuFunction] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SysMenuFunction
-- ----------------------------
INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'33C80938-82C8-4299-0F12-08D9FDAD00AB', N'2022-03-04 15:17:09', N'2022-03-04 15:17:09', N'10', N'30', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'EF70B789-21EE-4850-0F1B-08D9FDAD00AB', N'2022-03-04 15:16:44', N'2022-03-04 15:16:44', N'10', N'22', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'A7CD04DB-BBE3-49B6-0F1E-08D9FDAD00AB', N'2022-03-18 12:06:20', N'2022-03-18 12:06:20', N'10', N'2', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'6C09C0C0-72FA-4842-0F1F-08D9FDAD00AB', N'2022-03-18 12:06:38', N'2022-03-18 12:06:38', N'10', N'32', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'F64CFE50-1EF1-457F-0F20-08D9FDAD00AB', N'2022-03-04 15:24:24', N'2022-03-04 15:24:24', N'10', N'3', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'A1DDD02F-8C21-4D79-0F21-08D9FDAD00AB', N'2022-03-04 15:24:30', N'2022-03-04 15:24:30', N'10', N'5', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'1CB6FBE1-4A6C-4AAD-0F22-08D9FDAD00AB', N'2022-03-04 15:24:34', N'2022-03-04 15:24:34', N'10', N'6', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'D2E6EA60-2CF6-478A-0F23-08D9FDAD00AB', N'2022-03-04 15:24:40', N'2022-03-04 15:24:40', N'10', N'8', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'B7533A90-DAE4-4263-0F24-08D9FDAD00AB', N'2022-03-04 15:24:43', N'2022-03-04 15:24:43', N'10', N'9', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'EC535908-8671-4928-0F25-08D9FDAD00AB', N'2022-03-04 15:24:47', N'2022-03-04 15:24:47', N'10', N'10', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'3BC0E68F-D03D-4E99-0F26-08D9FDAD00AB', N'2022-03-04 15:24:53', N'2022-03-04 15:24:53', N'10', N'11', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'EB958545-6449-40DB-0F27-08D9FDAD00AB', N'2022-03-04 15:25:07', N'2022-03-04 15:25:07', N'10', N'13', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'B5881044-AFB8-40B2-0F28-08D9FDAD00AB', N'2022-03-04 15:25:07', N'2022-03-04 15:25:07', N'20', N'13', N'Insert', N'添加', N'Insert')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'106FB69A-8BB5-4559-0F29-08D9FDAD00AB', N'2022-03-04 15:25:07', N'2022-03-04 15:25:07', N'30', N'13', N'Update', N'修改', N'Update')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'F4621FBE-6B40-4454-0F2A-08D9FDAD00AB', N'2022-03-04 15:25:07', N'2022-03-04 15:25:07', N'40', N'13', N'Delete', N'删除', N'Delete')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'523B53B5-8159-4A16-0F2B-08D9FDAD00AB', N'2022-03-04 15:25:07', N'2022-03-04 15:25:07', N'50', N'13', N'Save', N'保存', N'Save')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'A3754771-F6E9-4A23-0F2C-08D9FDAD00AB', N'2022-03-04 15:25:07', N'2022-03-04 15:25:07', N'60', N'13', N'Search', N'检索', N'Search')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'B96F977C-A36E-4E7F-0F2D-08D9FDAD00AB', N'2022-03-04 15:25:07', N'2022-03-04 15:25:07', N'70', N'13', N'Export', N'导出', N'Export')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'541D9045-47B2-4629-0F2E-08D9FDAD00AB', N'2022-03-04 15:25:07', N'2022-03-04 15:25:07', N'80', N'13', N'Print', N'打印', N'Print')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'13F3F74D-C6FC-4488-0F2F-08D9FDAD00AB', N'2022-03-04 15:25:14', N'2022-03-04 15:25:14', N'10', N'15', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'CCE82EB4-7FC5-4308-0F30-08D9FDAD00AB', N'2022-03-04 15:25:14', N'2022-03-04 15:25:14', N'20', N'15', N'Insert', N'添加', N'Insert')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'8564E4D8-D7F4-4F12-0F31-08D9FDAD00AB', N'2022-03-04 15:25:14', N'2022-03-04 15:25:14', N'30', N'15', N'Update', N'修改', N'Update')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'0AD6A459-1D9D-4512-0F32-08D9FDAD00AB', N'2022-03-04 15:25:14', N'2022-03-04 15:25:14', N'40', N'15', N'Delete', N'删除', N'Delete')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'37D3E492-62DA-47A4-0F33-08D9FDAD00AB', N'2022-03-04 15:25:14', N'2022-03-04 15:25:14', N'50', N'15', N'Save', N'保存', N'Save')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'BEB87004-5CFB-417A-0F34-08D9FDAD00AB', N'2022-03-04 15:25:14', N'2022-03-04 15:25:14', N'60', N'15', N'Search', N'检索', N'Search')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'A46E07D3-C722-4548-0F35-08D9FDAD00AB', N'2022-03-04 15:25:14', N'2022-03-04 15:25:14', N'70', N'15', N'Export', N'导出', N'Export')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'C8EDBB79-567E-461B-0F36-08D9FDAD00AB', N'2022-03-04 15:25:14', N'2022-03-04 15:25:14', N'80', N'15', N'Print', N'打印', N'Print')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'550F874B-E804-44A0-0F37-08D9FDAD00AB', N'2022-04-22 22:24:03', N'2022-04-22 22:24:03', N'10', N'16', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'C67A0ABE-DAEC-491B-0F38-08D9FDAD00AB', N'2022-04-22 22:24:03', N'2022-04-22 22:24:03', N'20', N'16', N'Insert', N'添加', N'Insert')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'823AC05D-65E4-4216-0F39-08D9FDAD00AB', N'2022-04-22 22:24:03', N'2022-04-22 22:24:03', N'30', N'16', N'Update', N'修改', N'Update')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'BD6AE6DA-1CA6-46C2-0F3A-08D9FDAD00AB', N'2022-04-22 22:24:03', N'2022-04-22 22:24:03', N'40', N'16', N'Delete', N'删除', N'Delete')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'14783A71-E265-4D6B-0F3B-08D9FDAD00AB', N'2022-04-22 22:24:03', N'2022-04-22 22:24:03', N'50', N'16', N'Save', N'保存', N'Save')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'2FEA8F87-2A13-4C95-0F3C-08D9FDAD00AB', N'2022-04-22 22:24:03', N'2022-04-22 22:24:03', N'60', N'16', N'Search', N'检索', N'Search')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'437FBF85-8704-4E87-0F3D-08D9FDAD00AB', N'2022-04-22 22:24:03', N'2022-04-22 22:24:03', N'70', N'16', N'Export', N'导出', N'Export')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'6B009415-EADF-4DAB-0F3E-08D9FDAD00AB', N'2022-04-22 22:24:03', N'2022-04-22 22:24:03', N'80', N'16', N'Print', N'打印', N'Print')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'53FDB4A0-CA6E-4568-0F3F-08D9FDAD00AB', N'2022-03-04 15:25:21', N'2022-03-04 15:25:21', N'10', N'17', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'86465238-C51C-45D5-0F40-08D9FDAD00AB', N'2022-03-04 15:25:21', N'2022-03-04 15:25:21', N'20', N'17', N'Insert', N'添加', N'Insert')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'86FF83FD-D34A-4290-0F41-08D9FDAD00AB', N'2022-03-04 15:25:21', N'2022-03-04 15:25:21', N'30', N'17', N'Update', N'修改', N'Update')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'7EA8F706-BFE5-42B2-0F42-08D9FDAD00AB', N'2022-03-04 15:25:21', N'2022-03-04 15:25:21', N'40', N'17', N'Delete', N'删除', N'Delete')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'DEE401B1-E20E-496E-0F43-08D9FDAD00AB', N'2022-03-04 15:25:21', N'2022-03-04 15:25:21', N'50', N'17', N'Save', N'保存', N'Save')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'0B27E69F-AF16-4481-0F44-08D9FDAD00AB', N'2022-03-04 15:25:21', N'2022-03-04 15:25:21', N'60', N'17', N'Search', N'检索', N'Search')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'A726455F-1C29-4BE0-0F45-08D9FDAD00AB', N'2022-03-04 15:25:21', N'2022-03-04 15:25:21', N'70', N'17', N'Export', N'导出', N'Export')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'0CAA6E7D-92B0-4814-0F46-08D9FDAD00AB', N'2022-03-04 15:25:21', N'2022-03-04 15:25:21', N'80', N'17', N'Print', N'打印', N'Print')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'DB3AB8BD-7709-41A2-0F47-08D9FDAD00AB', N'2022-03-04 15:25:28', N'2022-03-04 15:25:28', N'10', N'25', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'FE6465BF-E429-45BD-0F48-08D9FDAD00AB', N'2022-03-04 15:25:28', N'2022-03-04 15:25:28', N'20', N'25', N'Insert', N'添加', N'Insert')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'4A67FCDB-A7A9-4E3C-0F49-08D9FDAD00AB', N'2022-03-04 15:25:28', N'2022-03-04 15:25:28', N'30', N'25', N'Update', N'修改', N'Update')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'20AB5395-D57C-49DB-0F4A-08D9FDAD00AB', N'2022-03-04 15:25:28', N'2022-03-04 15:25:28', N'40', N'25', N'Delete', N'删除', N'Delete')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'41CB1942-573A-4D63-0F4B-08D9FDAD00AB', N'2022-03-04 15:25:28', N'2022-03-04 15:25:28', N'50', N'25', N'Save', N'保存', N'Save')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'7E0F6C84-D7F1-4243-0F4C-08D9FDAD00AB', N'2022-03-04 15:25:28', N'2022-03-04 15:25:28', N'60', N'25', N'Search', N'检索', N'Search')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'1E69DF5D-D1E9-4BC8-0F4D-08D9FDAD00AB', N'2022-03-04 15:25:28', N'2022-03-04 15:25:28', N'70', N'25', N'Export', N'导出', N'Export')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'4BBBE120-0CC6-4A08-0F4E-08D9FDAD00AB', N'2022-03-04 15:25:28', N'2022-03-04 15:25:28', N'80', N'25', N'Print', N'打印', N'Print')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'45E2CA86-4823-4FB9-0F57-08D9FDAD00AB', N'2022-03-04 15:25:36', N'2022-03-04 15:25:36', N'10', N'20', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'3E44C6F5-E090-40A1-0F58-08D9FDAD00AB', N'2022-03-04 15:25:36', N'2022-03-04 15:25:36', N'20', N'20', N'Insert', N'添加', N'Insert')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'22A675F6-EFDA-481D-0F59-08D9FDAD00AB', N'2022-03-04 15:25:36', N'2022-03-04 15:25:36', N'30', N'20', N'Update', N'修改', N'Update')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'69DA651E-787B-42E5-0F5A-08D9FDAD00AB', N'2022-03-04 15:25:36', N'2022-03-04 15:25:36', N'40', N'20', N'Delete', N'删除', N'Delete')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'616C4E4A-FB61-49CF-0F5B-08D9FDAD00AB', N'2022-03-04 15:25:36', N'2022-03-04 15:25:36', N'50', N'20', N'Save', N'保存', N'Save')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'5E4E87BD-C179-4B5B-0F5C-08D9FDAD00AB', N'2022-03-04 15:25:36', N'2022-03-04 15:25:36', N'60', N'20', N'Search', N'检索', N'Search')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'54743C86-AC73-4345-0F5D-08D9FDAD00AB', N'2022-03-04 15:25:36', N'2022-03-04 15:25:36', N'70', N'20', N'Export', N'导出', N'Export')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'2469188C-21DE-492A-0F5E-08D9FDAD00AB', N'2022-03-04 15:25:36', N'2022-03-04 15:25:36', N'80', N'20', N'Print', N'打印', N'Print')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'C6BA141B-99BA-4114-0F5F-08D9FDAD00AB', N'2022-03-04 15:25:40', N'2022-03-04 15:25:40', N'10', N'21', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'0A85E4FD-5A1C-47F6-0F60-08D9FDAD00AB', N'2022-03-04 15:25:40', N'2022-03-04 15:25:40', N'20', N'21', N'Insert', N'添加', N'Insert')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'F4C73AC0-C66D-4988-0F61-08D9FDAD00AB', N'2022-03-04 15:25:40', N'2022-03-04 15:25:40', N'30', N'21', N'Update', N'修改', N'Update')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'3CB3CBC7-9E45-4CC3-0F62-08D9FDAD00AB', N'2022-03-04 15:25:40', N'2022-03-04 15:25:40', N'40', N'21', N'Delete', N'删除', N'Delete')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'6B209D5A-B366-4A61-0F63-08D9FDAD00AB', N'2022-03-04 15:25:40', N'2022-03-04 15:25:40', N'50', N'21', N'Save', N'保存', N'Save')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'F36B9B06-2826-425F-0F64-08D9FDAD00AB', N'2022-03-04 15:25:40', N'2022-03-04 15:25:40', N'60', N'21', N'Search', N'检索', N'Search')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'A9503588-E6F7-420B-0F65-08D9FDAD00AB', N'2022-03-04 15:25:40', N'2022-03-04 15:25:40', N'70', N'21', N'Export', N'导出', N'Export')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'C9E5FFF0-6744-47D7-0F66-08D9FDAD00AB', N'2022-03-04 15:25:40', N'2022-03-04 15:25:40', N'80', N'21', N'Print', N'打印', N'Print')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'9426768E-B90D-41E1-0F67-08D9FDAD00AB', N'2022-03-04 15:25:50', N'2022-03-04 15:25:50', N'10', N'23', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'E991934A-0D30-416B-0F68-08D9FDAD00AB', N'2022-03-04 15:25:50', N'2022-03-04 15:25:50', N'20', N'23', N'Insert', N'添加', N'Insert')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'B98A365E-6FB4-4EFB-0F69-08D9FDAD00AB', N'2022-03-04 15:25:50', N'2022-03-04 15:25:50', N'30', N'23', N'Update', N'修改', N'Update')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'92B39A10-3927-4EE7-0F6A-08D9FDAD00AB', N'2022-03-04 15:25:50', N'2022-03-04 15:25:50', N'40', N'23', N'Delete', N'删除', N'Delete')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'A03D56D7-4B0D-47CC-0F6B-08D9FDAD00AB', N'2022-03-04 15:25:50', N'2022-03-04 15:25:50', N'50', N'23', N'Save', N'保存', N'Save')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'E2319118-42CC-41A2-0F6C-08D9FDAD00AB', N'2022-03-04 15:25:50', N'2022-03-04 15:25:50', N'60', N'23', N'Search', N'检索', N'Search')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'0984A2E1-3722-41D4-0F6D-08D9FDAD00AB', N'2022-03-04 15:25:50', N'2022-03-04 15:25:50', N'70', N'23', N'Export', N'导出', N'Export')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'1D831D57-6634-45D7-0F6E-08D9FDAD00AB', N'2022-03-04 15:25:50', N'2022-03-04 15:25:50', N'80', N'23', N'Print', N'打印', N'Print')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'C77C812A-1601-4311-0F70-08D9FDAD00AB', N'2022-03-04 15:26:00', N'2022-03-04 15:26:00', N'10', N'19', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'3F6D0AF7-5386-4D3A-0F71-08D9FDAD00AB', N'2022-03-04 15:40:52', N'2022-03-04 15:40:52', N'10', N'28', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'55750F56-EDC9-4771-E2D6-08D9FDEFA8F8', N'2022-03-04 23:00:02', N'2022-03-04 23:00:02', N'10', N'24', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'7694FBF5-E28D-424C-E2D7-08D9FDEFA8F8', N'2022-03-04 23:00:02', N'2022-03-04 23:00:02', N'40', N'24', N'Delete', N'删除', N'Delete')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'2186550D-246C-4552-E2D8-08D9FDEFA8F8', N'2022-03-04 23:00:02', N'2022-03-04 23:00:02', N'60', N'24', N'Search', N'检索', N'Search')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'687254AE-0D76-4788-A4E8-08DA1A9D9949', N'2022-04-10 10:56:17', N'2022-04-10 10:56:17', N'10', N'33', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'0073CCE2-FF42-496C-9FF6-08DA204FCECB', N'2022-04-17 20:40:12', N'2022-04-17 20:40:12', N'10', N'36', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'48F0A694-0539-4E69-A2E4-08DA3D8E6577', N'2022-05-24 22:05:57', N'2022-05-24 22:05:57', N'10', N'31', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'4DBF096D-D3D3-4565-A2E5-08DA3D8E6577', N'2022-05-24 22:05:57', N'2022-05-24 22:05:57', N'40', N'31', N'Delete', N'删除', N'Delete')
GO

INSERT INTO [dbo].[SysMenuFunction] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'38B4704D-7C5D-4F89-A2E7-08DA3D8E6577', N'2022-05-24 22:05:57', N'2022-05-24 22:05:57', N'60', N'31', N'Search', N'检索', N'Search')
GO


-- ----------------------------
-- Table structure for SysOperationLog
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysOperationLog]') AND type IN ('U'))
	DROP TABLE [dbo].[SysOperationLog]
GO

CREATE TABLE [dbo].[SysOperationLog] (
  [Id] uniqueidentifier  NOT NULL ROWGUIDCOL,
  [LastModificationTime] datetime2(0)  NULL,
  [CreationTime] datetime2(0)  NULL,
  [Api] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [Ip] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Form] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [FormBody] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [QueryString] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [Browser] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [OS] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [UserId] uniqueidentifier  NULL,
  [TakeUpTime] bigint  NOT NULL,
  [ControllerDisplayName] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ActionDisplayName] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[SysOperationLog] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'接口地址',
'SCHEMA', N'dbo',
'TABLE', N'SysOperationLog',
'COLUMN', N'Api'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ip地址',
'SCHEMA', N'dbo',
'TABLE', N'SysOperationLog',
'COLUMN', N'Ip'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单信息',
'SCHEMA', N'dbo',
'TABLE', N'SysOperationLog',
'COLUMN', N'Form'
GO

EXEC sp_addextendedproperty
'MS_Description', N'json表单信息',
'SCHEMA', N'dbo',
'TABLE', N'SysOperationLog',
'COLUMN', N'FormBody'
GO

EXEC sp_addextendedproperty
'MS_Description', N'地址栏信息',
'SCHEMA', N'dbo',
'TABLE', N'SysOperationLog',
'COLUMN', N'QueryString'
GO

EXEC sp_addextendedproperty
'MS_Description', N'当前操作人id',
'SCHEMA', N'dbo',
'TABLE', N'SysOperationLog',
'COLUMN', N'UserId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'接口耗时（毫秒）',
'SCHEMA', N'dbo',
'TABLE', N'SysOperationLog',
'COLUMN', N'TakeUpTime'
GO


-- ----------------------------
-- Records of SysOperationLog
-- ----------------------------
INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'FFA6555D-54D6-41E3-2624-08DA3E58F37C', N'2022-05-25 22:14:59', N'2022-05-25 22:14:59', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome101', N'Windows10', NULL, N'18', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'E5ED90A4-FD46-4306-2625-08DA3E58F37C', N'2022-05-25 22:15:01', N'2022-05-25 22:15:01', N'/api/account/check', N'0.0.0.1', N'', N'{"userName":"admin","userPassword":"123456"}', N'', N'Chrome101', N'Windows10', NULL, N'385', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'75606396-BF5A-4206-2626-08DA3E58F37C', N'2022-05-25 22:15:01', N'2022-05-25 22:15:01', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'145', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'5A857C90-CB08-4D57-2627-08DA3E58F37C', N'2022-05-25 22:15:06', N'2022-05-25 22:15:06', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'56', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'56C5486C-4F3F-40FB-2628-08DA3E58F37C', N'2022-05-25 22:15:06', N'2022-05-25 22:15:06', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'288', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'3F45352D-F04C-4BAE-2629-08DA3E58F37C', N'2022-05-25 22:17:57', N'2022-05-25 22:17:57', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'22', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'52A6E04B-B868-470B-262A-08DA3E58F37C', N'2022-05-25 22:17:57', N'2022-05-25 22:17:57', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'28', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'2882EC77-8786-4C24-262B-08DA3E58F37C', N'2022-05-25 22:17:58', N'2022-05-25 22:17:58', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'101', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F468F61E-22B2-4579-262C-08DA3E58F37C', N'2022-05-25 22:18:05', N'2022-05-25 22:18:05', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'21', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A492BBC9-45B5-46AA-262D-08DA3E58F37C', N'2022-05-25 22:18:21', N'2022-05-25 22:18:21', N'/api/admin/LowCodeTable/findList/10/1', N'0.0.0.1', N'', N'{"tableName":null,"entityName":null,"displayName":null}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'19', N'LowCodeTableController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'929AD023-1A16-4227-262E-08DA3E58F37C', N'2022-05-25 22:18:23', N'2022-05-25 22:18:23', N'/api/admin/LowCodeTableInfo/findList/10/1', N'0.0.0.1', N'', N'{"columnName":null,"low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","describe":null}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'83', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'CBB86860-2BBE-4431-262F-08DA3E58F37C', N'2022-05-25 22:18:23', N'2022-05-25 22:18:23', N'/api/admin/CodeGeneration/getCode', N'0.0.0.1', N'', N'{"tableName":"SysUser","type":"HZY.Models","codeText":""}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'148', NULL, N'获取代码')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'EC8FCBDC-0FED-4177-2630-08DA3E58F37C', N'2022-05-25 22:19:10', N'2022-05-25 22:19:10', N'/api/admin/LowCodeTableInfo/change', N'0.0.0.1', N'', N'[{"id":"5bcf7406-75cc-4171-d545-08da3d8d5a26","isPrimary":true,"isIdentity":false,"isNullable":false,"position":164,"columnName":"Id","describe":"","databaseColumnType":"uniqueidentifier","csType":"Guid","csField":"Id","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_98"},{"id":"e5418d61-916f-45fd-d549-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":165,"columnName":"LastModificationTime","describe":"","databaseColumnType":"datetime2","csType":"DateTime","csField":"LastModificationTime","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_99"},{"id":"46bac66f-3cf0-46b3-d546-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":166,"columnName":"CreationTime","describe":"","databaseColumnType":"datetime2","csType":"DateTime","csField":"CreationTime","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_100"},{"id":"4b5bc027-5663-463a-d54b-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":167,"columnName":"Name","describe":"用户名称","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Name","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_101"},{"id":"7cbe8988-cbac-4ea2-d54a-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":168,"columnName":"LoginName","describe":"登录名称","databaseColumnType":"nvarchar(255)","csType":"String","csField":"LoginName","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_102"},{"id":"e36410b5-cb7c-4fc3-d54d-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":169,"columnName":"Password","describe":"密码","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Password","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_103"},{"id":"c82d5132-6cda-463e-d54e-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":170,"columnName":"Phone","describe":"联系电话","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Phone","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_104"},{"id":"287314b2-3141-4957-d548-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":false,"position":171,"columnName":"Email","describe":"电子邮箱","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Email","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_105"},{"id":"a6752bd9-f3d6-451f-d547-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":172,"columnName":"DeleteLock","describe":"删除锁","databaseColumnType":"bit","csType":"Boolean","csField":"DeleteLock","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_106"},{"id":"5a9fa990-b6d6-445f-d54c-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":173,"columnName":"OrganizationId","describe":"组织id","databaseColumnType":"int","csType":"Int32","csField":"OrganizationId","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_107"}]', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'51', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'7BE5D920-EAB1-4B51-2631-08DA3E58F37C', N'2022-05-25 22:19:10', N'2022-05-25 22:19:10', N'/api/admin/LowCodeTableInfo/findList/10/1', N'0.0.0.1', N'', N'{"columnName":null,"low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","describe":null}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'10', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'890E49B7-4EC6-4757-2632-08DA3E58F37C', N'2022-05-25 22:19:15', N'2022-05-25 22:19:15', N'/api/admin/LowCodeTable/findList/10/1', N'0.0.0.1', N'', N'{"tableName":null,"entityName":null,"displayName":null}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'8', N'LowCodeTableController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'C95458A3-6B0B-455C-2633-08DA3E58F37C', N'2022-05-25 22:19:22', N'2022-05-25 22:19:22', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'22', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'092EAC28-96FA-4C4E-2634-08DA3E58F37C', N'2022-05-25 22:19:52', N'2022-05-25 22:19:52', N'/api/admin/LowCodeTable/findList/10/1', N'0.0.0.1', N'', N'{"tableName":null,"entityName":null,"displayName":null}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'6', N'LowCodeTableController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'89FE605D-7F1F-4C2B-A5AB-08DA3E5A7D99', N'2022-05-25 22:26:00', N'2022-05-25 22:26:00', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome101', N'Windows10', NULL, N'19', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'443CCBC6-DA06-4009-A5AC-08DA3E5A7D99', N'2022-05-25 22:26:01', N'2022-05-25 22:26:01', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'159', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'42FE2EFD-1219-43FF-A5AD-08DA3E5A7D99', N'2022-05-25 22:26:12', N'2022-05-25 22:26:12', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'56', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'664E1537-9FAB-4AF8-A5AE-08DA3E5A7D99', N'2022-05-25 22:26:38', N'2022-05-25 22:26:38', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'25968', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'B008B5D8-8682-4D3B-A5AF-08DA3E5A7D99', N'2022-05-25 22:26:44', N'2022-05-25 22:26:44', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'13', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'E4064B90-BCA0-42B5-A5B0-08DA3E5A7D99', N'2022-05-25 22:26:51', N'2022-05-25 22:26:51', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'26', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F0E4D9DD-0CBA-4431-A5B1-08DA3E5A7D99', N'2022-05-25 22:27:01', N'2022-05-25 22:27:01', N'/api/admin/LowCodeTable/findList/10/1', N'0.0.0.1', N'', N'{"tableName":null,"entityName":null,"displayName":null}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'70', N'LowCodeTableController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'B0C890E1-7EEE-48A0-A5B2-08DA3E5A7D99', N'2022-05-25 22:27:09', N'2022-05-25 22:27:09', N'/api/admin/LowCodeTableInfo/findList/10/1', N'0.0.0.1', N'', N'{"columnName":null,"low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","describe":null}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'70', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'9B5EE27D-0030-4D41-A5B3-08DA3E5A7D99', N'2022-05-25 22:27:09', N'2022-05-25 22:27:09', N'/api/admin/CodeGeneration/getCode', N'0.0.0.1', N'', N'{"tableName":"SysUser","type":"HZY.Models","codeText":""}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'140', NULL, N'获取代码')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'068DEC3C-731E-4E67-A5B4-08DA3E5A7D99', N'2022-05-25 22:27:15', N'2022-05-25 22:27:15', N'/api/admin/LowCodeTableInfo/change', N'0.0.0.1', N'', N'[{"id":"5bcf7406-75cc-4171-d545-08da3d8d5a26","isPrimary":true,"isIdentity":false,"isNullable":false,"position":164,"columnName":"Id","describe":"","databaseColumnType":"uniqueidentifier","csType":"Guid","csField":"Id","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-25","creationTime":"2022-05-24","_X_ROW_KEY":"row_108"},{"id":"e5418d61-916f-45fd-d549-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":165,"columnName":"LastModificationTime","describe":"","databaseColumnType":"datetime2","csType":"DateTime","csField":"LastModificationTime","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-25","creationTime":"2022-05-24","_X_ROW_KEY":"row_109"},{"id":"46bac66f-3cf0-46b3-d546-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":166,"columnName":"CreationTime","describe":"","databaseColumnType":"datetime2","csType":"DateTime","csField":"CreationTime","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-25","creationTime":"2022-05-24","_X_ROW_KEY":"row_110"},{"id":"4b5bc027-5663-463a-d54b-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":167,"columnName":"Name","describe":"用户名称1","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Name","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-25","creationTime":"2022-05-24","_X_ROW_KEY":"row_111"},{"id":"7cbe8988-cbac-4ea2-d54a-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":168,"columnName":"LoginName","describe":"登录名称","databaseColumnType":"nvarchar(255)","csType":"String","csField":"LoginName","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-25","creationTime":"2022-05-24","_X_ROW_KEY":"row_112"},{"id":"e36410b5-cb7c-4fc3-d54d-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":169,"columnName":"Password","describe":"密码","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Password","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-25","creationTime":"2022-05-24","_X_ROW_KEY":"row_113"},{"id":"c82d5132-6cda-463e-d54e-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":170,"columnName":"Phone","describe":"联系电话","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Phone","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-25","creationTime":"2022-05-24","_X_ROW_KEY":"row_114"},{"id":"287314b2-3141-4957-d548-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":false,"position":171,"columnName":"Email","describe":"电子邮箱","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Email","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-25","creationTime":"2022-05-24","_X_ROW_KEY":"row_115"},{"id":"a6752bd9-f3d6-451f-d547-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":172,"columnName":"DeleteLock","describe":"删除锁","databaseColumnType":"bit","csType":"Boolean","csField":"DeleteLock","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-25","creationTime":"2022-05-24","_X_ROW_KEY":"row_116"},{"id":"5a9fa990-b6d6-445f-d54c-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":173,"columnName":"OrganizationId","describe":"组织id","databaseColumnType":"int","csType":"Int32","csField":"OrganizationId","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-25","creationTime":"2022-05-24","_X_ROW_KEY":"row_117"}]', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'44', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'E8AD985A-4C05-420D-A5B5-08DA3E5A7D99', N'2022-05-25 22:27:15', N'2022-05-25 22:27:15', N'/api/admin/LowCodeTableInfo/findList/10/1', N'0.0.0.1', N'', N'{"columnName":null,"low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","describe":null}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'6', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'C4EDF14E-42E3-4E04-A5B6-08DA3E5A7D99', N'2022-05-25 22:27:18', N'2022-05-25 22:27:18', N'/api/admin/LowCodeTable/findList/10/1', N'0.0.0.1', N'', N'{"tableName":null,"entityName":null,"displayName":null}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'55', N'LowCodeTableController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'343FFDE6-549C-4082-A5B7-08DA3E5A7D99', N'2022-05-25 22:27:23', N'2022-05-25 22:27:23', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'24', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F324A0CA-8674-4AAA-A5B8-08DA3E5A7D99', N'2022-05-25 22:27:23', N'2022-05-25 22:27:23', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'19', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'7B2DDE7D-F8D4-48E9-A5B9-08DA3E5A7D99', N'2022-05-25 22:27:32', N'2022-05-25 22:27:32', N'/api/admin/LowCodeTableInfo/findList/10/1', N'0.0.0.1', N'', N'{"columnName":null,"low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","describe":null}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'7', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'896A61E7-1581-4D25-A5BA-08DA3E5A7D99', N'2022-05-25 22:27:32', N'2022-05-25 22:27:32', N'/api/admin/CodeGeneration/getCode', N'0.0.0.1', N'', N'{"tableName":"SysUser","type":"HZY.Models","codeText":""}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'105', NULL, N'获取代码')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F634EA51-FD80-40D1-A5BB-08DA3E5A7D99', N'2022-05-25 22:27:38', N'2022-05-25 22:27:38', N'/api/admin/LowCodeTableInfo/change', N'0.0.0.1', N'', N'[{"id":"5bcf7406-75cc-4171-d545-08da3d8d5a26","isPrimary":true,"isIdentity":false,"isNullable":false,"position":164,"columnName":"Id","describe":"","databaseColumnType":"uniqueidentifier","csType":"Guid","csField":"Id","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-25","creationTime":"2022-05-24","_X_ROW_KEY":"row_170"},{"id":"e5418d61-916f-45fd-d549-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":165,"columnName":"LastModificationTime","describe":"","databaseColumnType":"datetime2","csType":"DateTime","csField":"LastModificationTime","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-25","creationTime":"2022-05-24","_X_ROW_KEY":"row_171"},{"id":"46bac66f-3cf0-46b3-d546-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":166,"columnName":"CreationTime","describe":"","databaseColumnType":"datetime2","csType":"DateTime","csField":"CreationTime","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-25","creationTime":"2022-05-24","_X_ROW_KEY":"row_172"},{"id":"4b5bc027-5663-463a-d54b-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":167,"columnName":"Name","describe":"用户名称","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Name","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-25","creationTime":"2022-05-24","_X_ROW_KEY":"row_173"},{"id":"7cbe8988-cbac-4ea2-d54a-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":168,"columnName":"LoginName","describe":"登录名称","databaseColumnType":"nvarchar(255)","csType":"String","csField":"LoginName","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-25","creationTime":"2022-05-24","_X_ROW_KEY":"row_174"},{"id":"e36410b5-cb7c-4fc3-d54d-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":169,"columnName":"Password","describe":"密码","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Password","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-25","creationTime":"2022-05-24","_X_ROW_KEY":"row_175"},{"id":"c82d5132-6cda-463e-d54e-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":170,"columnName":"Phone","describe":"联系电话","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Phone","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-25","creationTime":"2022-05-24","_X_ROW_KEY":"row_176"},{"id":"287314b2-3141-4957-d548-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":false,"position":171,"columnName":"Email","describe":"电子邮箱","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Email","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-25","creationTime":"2022-05-24","_X_ROW_KEY":"row_177"},{"id":"a6752bd9-f3d6-451f-d547-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":172,"columnName":"DeleteLock","describe":"删除锁","databaseColumnType":"bit","csType":"Boolean","csField":"DeleteLock","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-25","creationTime":"2022-05-24","_X_ROW_KEY":"row_178"},{"id":"5a9fa990-b6d6-445f-d54c-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":173,"columnName":"OrganizationId","describe":"组织id","databaseColumnType":"int","csType":"Int32","csField":"OrganizationId","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-25","creationTime":"2022-05-24","_X_ROW_KEY":"row_179"}]', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'7', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'D1540879-8956-49BB-A5BC-08DA3E5A7D99', N'2022-05-25 22:27:38', N'2022-05-25 22:27:38', N'/api/admin/LowCodeTableInfo/findList/10/1', N'0.0.0.1', N'', N'{"columnName":null,"low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","describe":null}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'5', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'1FE36A36-C381-44CB-A5BD-08DA3E5A7D99', N'2022-05-25 22:27:39', N'2022-05-25 22:27:39', N'/api/admin/LowCodeTable/findList/10/1', N'0.0.0.1', N'', N'{"tableName":null,"entityName":null,"displayName":null}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'53', N'LowCodeTableController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'867B9F30-1BF3-4884-A5BE-08DA3E5A7D99', N'2022-05-25 22:27:42', N'2022-05-25 22:27:42', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'11', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'CDA921B4-2772-44AF-A5BF-08DA3E5A7D99', N'2022-05-25 22:27:49', N'2022-05-25 22:27:49', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'8', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'FBA7EC90-6F27-490C-A5C0-08DA3E5A7D99', N'2022-05-25 22:27:49', N'2022-05-25 22:27:49', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'24', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'2837AB00-3939-415E-A5C1-08DA3E5A7D99', N'2022-05-25 22:27:49', N'2022-05-25 22:27:49', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'11', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'BA6268FC-DF71-40DB-3E92-08DA3EC3F18D', N'2022-05-26 11:00:52', N'2022-05-26 11:00:52', N'/api/account/check', N'0.0.0.1', N'', N'{"userName":"admin","userPassword":"123456"}', N'', N'Chrome101', N'Windows10', NULL, N'617', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'050569A1-B593-43C1-3E93-08DA3EC3F18D', N'2022-05-26 11:00:52', N'2022-05-26 11:00:52', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'168', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'DA7F12B7-98C3-4FCC-3E94-08DA3EC3F18D', N'2022-05-26 11:01:00', N'2022-05-26 11:01:00', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'102', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'9F8C8B6E-C637-4BFB-3E95-08DA3EC3F18D', N'2022-05-26 11:01:02', N'2022-05-26 11:01:02', N'/api/admin/Member/findForm/9a604aa2-9ae6-4a2f-8ddb-d9e0289ead9e', N'0.0.0.1', N'', N'', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'70', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'7FBCBB01-4216-4D19-3E96-08DA3EC3F18D', N'2022-05-26 11:01:09', N'2022-05-26 11:01:09', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'36', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'3F28D83D-7682-4B29-E87C-08DA3F0F291D', N'2022-05-26 19:59:17', N'2022-05-26 19:59:17', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'185', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'87977E4B-61F8-448C-E87D-08DA3F0F291D', N'2022-05-26 19:59:35', N'2022-05-26 19:59:35', N'/api/admin/SysRole/findList/10/1', N'0.0.0.1', N'', N'{"name":null}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'98', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'4EAC42EC-1F71-4FB2-E87E-08DA3F0F291D', N'2022-05-26 19:59:37', N'2022-05-26 19:59:37', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'35', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'7F0A04E3-99E9-4888-E87F-08DA3F0F291D', N'2022-05-26 19:59:39', N'2022-05-26 19:59:39', N'/api/admin/Member/findForm/9a604aa2-9ae6-4a2f-8ddb-d9e0289ead9e', N'0.0.0.1', N'', N'', N'', N'Chrome101', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'58', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'7B558E1E-9748-4EF8-288D-08DA41E61166', N'2022-05-30 10:42:42', N'2022-05-30 10:42:42', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'23', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'931A1BAD-738F-414D-288E-08DA41E61166', N'2022-05-30 10:54:17', N'2022-05-30 10:54:17', N'/api/account/check', N'0.0.0.1', N'', N'{"userName":"admin","userPassword":"123456"}', N'', N'Chrome102', N'Windows10', NULL, N'422', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F02BB2B2-7EEF-417F-288F-08DA41E61166', N'2022-05-30 10:54:17', N'2022-05-30 10:54:17', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'176', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'451BC92E-F416-4693-2890-08DA41E61166', N'2022-05-30 10:54:23', N'2022-05-30 10:54:23', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'57', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'4B3DA3A2-F8C2-4EAA-2891-08DA41E61166', N'2022-05-30 10:54:23', N'2022-05-30 10:54:23', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'240', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'11D9B1FF-2383-4C2A-2892-08DA41E61166', N'2022-05-30 10:54:30', N'2022-05-30 10:54:30', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'19', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'7482AA10-84DA-42EB-2893-08DA41E61166', N'2022-05-30 10:54:59', N'2022-05-30 10:54:59', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'50', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'32C2EF48-8836-4FB7-2894-08DA41E61166', N'2022-05-30 10:55:00', N'2022-05-30 10:55:00', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'12', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'676792BA-134E-430A-2895-08DA41E61166', N'2022-05-30 10:55:00', N'2022-05-30 10:55:00', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'29', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'600DFA1D-5B8B-4FD6-2896-08DA41E61166', N'2022-05-30 10:55:01', N'2022-05-30 10:55:01', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'11', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'86BEF1DA-D79F-43C0-3D95-08DA41E9EF8F', N'2022-05-30 11:10:23', N'2022-05-30 11:10:23', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'23', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'3033EE57-E846-462C-3D96-08DA41E9EF8F', N'2022-05-30 11:10:24', N'2022-05-30 11:10:24', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'167', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'7EB94115-FD7B-4FA5-06E4-08DA41EA14B3', N'2022-05-30 11:11:25', N'2022-05-30 11:11:25', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'20', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'B4C4B8E4-DC82-4871-06E5-08DA41EA14B3', N'2022-05-30 11:11:26', N'2022-05-30 11:11:26', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'181', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'0C2629E6-9036-4050-06E6-08DA41EA14B3', N'2022-05-30 11:11:31', N'2022-05-30 11:11:31', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'68', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'7E2AA47B-C64F-499D-06E7-08DA41EA14B3', N'2022-05-30 11:11:32', N'2022-05-30 11:11:32', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'472', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'D6C4C645-ED6F-4E89-06E8-08DA41EA14B3', N'2022-05-30 11:11:35', N'2022-05-30 11:11:35', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'27', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'D4DEC564-DCF5-4932-06E9-08DA41EA14B3', N'2022-05-30 11:11:35', N'2022-05-30 11:11:35', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'101', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'43FA9CB5-7DB0-4540-06EA-08DA41EA14B3', N'2022-05-30 11:12:05', N'2022-05-30 11:12:05', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'105', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F373C56E-1499-4934-087E-08DA41EB1AF8', N'2022-05-30 11:18:45', N'2022-05-30 11:18:45', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'19', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A04E2494-C768-4BCA-087F-08DA41EB1AF8', N'2022-05-30 11:18:46', N'2022-05-30 11:18:46', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'174', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'EBD35417-BA52-4B1C-0880-08DA41EB1AF8', N'2022-05-30 11:18:57', N'2022-05-30 11:18:57', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'16', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'6F482778-6CB9-457D-0881-08DA41EB1AF8', N'2022-05-30 11:18:58', N'2022-05-30 11:18:58', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'74', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'49152EB2-717D-48E5-0882-08DA41EB1AF8', N'2022-05-30 11:18:58', N'2022-05-30 11:18:58', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'379', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'1402F54D-ADFA-4D0E-A7A6-08DA41EBF527', N'2022-05-30 11:24:51', N'2022-05-30 11:24:51', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'27', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'5B8F0CF3-979D-4559-A7A7-08DA41EBF527', N'2022-05-30 11:24:52', N'2022-05-30 11:24:52', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'208', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'5B6030EB-BF18-416B-A7A8-08DA41EBF527', N'2022-05-30 11:24:55', N'2022-05-30 11:24:55', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'84', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'8BADD1C1-CE61-4F4C-A7A9-08DA41EBF527', N'2022-05-30 11:24:55', N'2022-05-30 11:24:55', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'377', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'C63793C7-0FEE-4DD7-A7AA-08DA41EBF527', N'2022-05-30 11:25:00', N'2022-05-30 11:25:00', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'97', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'C9A58BBD-E0C6-4658-E73F-08DA41EC7621', N'2022-05-30 11:28:28', N'2022-05-30 11:28:28', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'19', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F65D6498-444F-41DF-E740-08DA41EC7621', N'2022-05-30 11:28:29', N'2022-05-30 11:28:29', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'201', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'8CB70365-E678-467A-E741-08DA41EC7621', N'2022-05-30 11:28:53', N'2022-05-30 11:28:53', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'7859', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'BB91C2EA-AAB4-4E69-780E-08DA41ECAE9F', N'2022-05-30 11:30:02', N'2022-05-30 11:30:02', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'19', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A9AFD34E-187F-4F2B-780F-08DA41ECAE9F', N'2022-05-30 11:30:03', N'2022-05-30 11:30:03', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'164', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'8983A4B2-5451-4590-7810-08DA41ECAE9F', N'2022-05-30 11:30:09', N'2022-05-30 11:30:09', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'238', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'881B59F5-E2A1-4786-7811-08DA41ECAE9F', N'2022-05-30 11:30:12', N'2022-05-30 11:30:12', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'10', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'32CA3CFD-C1F3-4364-7812-08DA41ECAE9F', N'2022-05-30 11:30:12', N'2022-05-30 11:30:12', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'54', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'9DA574BA-71E2-4C8A-7813-08DA41ECAE9F', N'2022-05-30 11:30:13', N'2022-05-30 11:30:13', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'13', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'2BBC3938-0E07-4278-F23F-08DA41EDC8D8', N'2022-05-30 11:37:56', N'2022-05-30 11:37:56', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'19', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'44BB1109-E0F3-4B6C-F240-08DA41EDC8D8', N'2022-05-30 11:37:57', N'2022-05-30 11:37:57', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'177', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'D3763D54-A7DF-4AF9-F241-08DA41EDC8D8', N'2022-05-30 11:37:59', N'2022-05-30 11:37:59', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'238', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'3D2865C4-E671-4243-F242-08DA41EDC8D8', N'2022-05-30 11:38:01', N'2022-05-30 11:38:01', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'9', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'DB362BB0-D124-4D86-F243-08DA41EDC8D8', N'2022-05-30 11:38:02', N'2022-05-30 11:38:02', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'50', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'25A6AF03-1115-456E-F244-08DA41EDC8D8', N'2022-05-30 11:38:02', N'2022-05-30 11:38:02', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'12', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'05628E30-735B-48BA-F245-08DA41EDC8D8', N'2022-05-30 11:38:03', N'2022-05-30 11:38:03', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'16', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'ABD4D735-F4ED-4688-F246-08DA41EDC8D8', N'2022-05-30 11:38:41', N'2022-05-30 11:38:41', N'/api/admin/LowCodeTable/findList/10/1', N'0.0.0.1', N'', N'{"tableName":null,"entityName":null,"displayName":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'99', N'LowCodeTableController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'ED5E4EF0-DCF7-4FB7-F247-08DA41EDC8D8', N'2022-05-30 11:38:44', N'2022-05-30 11:38:44', N'/api/admin/LowCodeTableInfo/findList/10/1', N'0.0.0.1', N'', N'{"columnName":null,"low_Code_TableId":"d26d07cb-158a-4cb2-8b20-5dfd5181af54","describe":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'107', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'D61D53A7-A415-49A3-F248-08DA41EDC8D8', N'2022-05-30 11:38:44', N'2022-05-30 11:38:44', N'/api/admin/CodeGeneration/getCode', N'0.0.0.1', N'', N'{"tableName":"SysOrganization","type":"HZY.Models","codeText":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'192', NULL, N'获取代码')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'8AFB02B5-DAAF-4A57-F249-08DA41EDC8D8', N'2022-05-30 11:39:00', N'2022-05-30 11:39:00', N'/api/admin/LowCodeTableInfo/change', N'0.0.0.1', N'', N'[{"id":"d6008705-0d21-42ac-d525-08da3d8d5a26","isPrimary":true,"isIdentity":true,"isNullable":false,"position":132,"columnName":"Id","describe":"","databaseColumnType":"int","csType":"Int32","csField":"Id","low_Code_TableId":"d26d07cb-158a-4cb2-8b20-5dfd5181af54","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_99"},{"id":"1121d642-49e8-4b25-d52b-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":133,"columnName":"Name","describe":"组织名称","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Name","low_Code_TableId":"d26d07cb-158a-4cb2-8b20-5dfd5181af54","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_100"},{"id":"5aed3feb-3d77-4e1e-d52c-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":134,"columnName":"OrderNumber","describe":"","databaseColumnType":"int","csType":"Int32","csField":"OrderNumber","low_Code_TableId":"d26d07cb-158a-4cb2-8b20-5dfd5181af54","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_101"},{"id":"11f3d291-cf7a-4143-d52a-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":135,"columnName":"LevelCode","describe":"","databaseColumnType":"varchar(50)","csType":"String","csField":"LevelCode","low_Code_TableId":"d26d07cb-158a-4cb2-8b20-5dfd5181af54","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_102"},{"id":"cf2e3691-ab88-4420-d529-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":136,"columnName":"Leader","describe":"","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Leader","low_Code_TableId":"d26d07cb-158a-4cb2-8b20-5dfd5181af54","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_103"},{"id":"ea63351c-c203-4d40-d52e-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":137,"columnName":"Phone","describe":"","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Phone","low_Code_TableId":"d26d07cb-158a-4cb2-8b20-5dfd5181af54","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_104"},{"id":"ce802713-74f5-4f30-d527-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":138,"columnName":"Email","describe":"","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Email","low_Code_TableId":"d26d07cb-158a-4cb2-8b20-5dfd5181af54","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_105"},{"id":"b9bfca2e-f72b-4a3f-d52f-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":139,"columnName":"State","describe":"","databaseColumnType":"int","csType":"Int32","csField":"State","low_Code_TableId":"d26d07cb-158a-4cb2-8b20-5dfd5181af54","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_106"},{"id":"042a59e2-72c1-4c38-d52d-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":140,"columnName":"ParentId","describe":"","databaseColumnType":"int","csType":"Int32","csField":"ParentId","low_Code_TableId":"d26d07cb-158a-4cb2-8b20-5dfd5181af54","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_107"},{"id":"19a7504c-f740-4b49-d528-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":141,"columnName":"LastModificationTime","describe":"","databaseColumnType":"datetime2","csType":"DateTime","csField":"LastModificationTime","low_Code_TableId":"d26d07cb-158a-4cb2-8b20-5dfd5181af54","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_108"}]', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'45', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'0FFA5037-2CE8-4DEB-F24A-08DA41EDC8D8', N'2022-05-30 11:39:00', N'2022-05-30 11:39:00', N'/api/admin/LowCodeTableInfo/findList/10/1', N'0.0.0.1', N'', N'{"columnName":null,"low_Code_TableId":"d26d07cb-158a-4cb2-8b20-5dfd5181af54","describe":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'5', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'FF9FC758-880E-4301-F24B-08DA41EDC8D8', N'2022-05-30 11:39:04', N'2022-05-30 11:39:04', N'/api/admin/LowCodeTableInfo/findList/10/1', N'0.0.0.1', N'', N'{"columnName":null,"low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","describe":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'6', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'B6F7EF6A-DA86-4349-F24C-08DA41EDC8D8', N'2022-05-30 11:39:04', N'2022-05-30 11:39:04', N'/api/admin/CodeGeneration/getCode', N'0.0.0.1', N'', N'{"tableName":"SysUser","type":"HZY.Models","codeText":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'100', NULL, N'获取代码')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'95850FD7-9168-407A-F24D-08DA41EDC8D8', N'2022-05-30 11:39:32', N'2022-05-30 11:39:32', N'/api/admin/LowCodeTableInfo/change', N'0.0.0.1', N'', N'[{"id":"5bcf7406-75cc-4171-d545-08da3d8d5a26","isPrimary":true,"isIdentity":false,"isNullable":false,"position":164,"columnName":"Id","describe":"","databaseColumnType":"uniqueidentifier","csType":"Guid","csField":"Id","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-25","creationTime":"2022-05-24","_X_ROW_KEY":"row_119"},{"id":"e5418d61-916f-45fd-d549-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":165,"columnName":"LastModificationTime","describe":"更新时间","databaseColumnType":"datetime2","csType":"DateTime","csField":"LastModificationTime","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-25","creationTime":"2022-05-24","_X_ROW_KEY":"row_120"},{"id":"46bac66f-3cf0-46b3-d546-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":166,"columnName":"CreationTime","describe":"创建时间","databaseColumnType":"datetime2","csType":"DateTime","csField":"CreationTime","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-25","creationTime":"2022-05-24","_X_ROW_KEY":"row_121"},{"id":"4b5bc027-5663-463a-d54b-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":167,"columnName":"Name","describe":"用户名称","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Name","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-25","creationTime":"2022-05-24","_X_ROW_KEY":"row_122"},{"id":"7cbe8988-cbac-4ea2-d54a-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":168,"columnName":"LoginName","describe":"登录名称","databaseColumnType":"nvarchar(255)","csType":"String","csField":"LoginName","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-25","creationTime":"2022-05-24","_X_ROW_KEY":"row_123"},{"id":"e36410b5-cb7c-4fc3-d54d-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":169,"columnName":"Password","describe":"密码","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Password","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-25","creationTime":"2022-05-24","_X_ROW_KEY":"row_124"},{"id":"c82d5132-6cda-463e-d54e-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":170,"columnName":"Phone","describe":"联系电话","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Phone","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-25","creationTime":"2022-05-24","_X_ROW_KEY":"row_125"},{"id":"287314b2-3141-4957-d548-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":false,"position":171,"columnName":"Email","describe":"电子邮箱","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Email","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-25","creationTime":"2022-05-24","_X_ROW_KEY":"row_126"},{"id":"a6752bd9-f3d6-451f-d547-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":172,"columnName":"DeleteLock","describe":"删除锁","databaseColumnType":"bit","csType":"Boolean","csField":"DeleteLock","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-25","creationTime":"2022-05-24","_X_ROW_KEY":"row_127"},{"id":"5a9fa990-b6d6-445f-d54c-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":173,"columnName":"OrganizationId","describe":"组织id","databaseColumnType":"int","csType":"Int32","csField":"OrganizationId","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-25","creationTime":"2022-05-24","_X_ROW_KEY":"row_128"}]', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'13', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'3B46FA30-7217-445D-F24E-08DA41EDC8D8', N'2022-05-30 11:39:32', N'2022-05-30 11:39:32', N'/api/admin/LowCodeTableInfo/findList/10/1', N'0.0.0.1', N'', N'{"columnName":null,"low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","describe":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'9', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'DE5986C4-E323-46B6-F24F-08DA41EDC8D8', N'2022-05-30 11:39:36', N'2022-05-30 11:39:36', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'22', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'495DC20E-3F67-4092-F250-08DA41EDC8D8', N'2022-05-30 11:39:43', N'2022-05-30 11:39:43', N'/api/admin/LowCodeTable/findList/10/1', N'0.0.0.1', N'', N'{"tableName":null,"entityName":null,"displayName":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'69', N'LowCodeTableController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'9AB79E90-0BE9-48C0-F251-08DA41EDC8D8', N'2022-05-30 11:39:45', N'2022-05-30 11:39:45', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'22', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'4BAD17DA-BD49-4FF9-F252-08DA41EDC8D8', N'2022-05-30 11:39:46', N'2022-05-30 11:39:46', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'20', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'EC598F62-6E71-4B8D-42C1-08DA41EE92C6', N'2022-05-30 11:43:35', N'2022-05-30 11:43:35', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'21', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A998B75D-4B92-4915-42C2-08DA41EE92C6', N'2022-05-30 11:43:36', N'2022-05-30 11:43:36', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'171', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'4052878F-FFEC-4601-42C3-08DA41EE92C6', N'2022-05-30 11:43:39', N'2022-05-30 11:43:39', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'249', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'3BA616FC-83D2-44DE-42C4-08DA41EE92C6', N'2022-05-30 11:43:41', N'2022-05-30 11:43:41', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'8', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'8E99D88F-A90E-4731-42C5-08DA41EE92C6', N'2022-05-30 11:43:41', N'2022-05-30 11:43:41', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'55', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'BF847D01-9D84-4955-42C6-08DA41EE92C6', N'2022-05-30 11:43:41', N'2022-05-30 11:43:41', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'12', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'42CC32F9-BB3D-4500-1B91-08DA41F0D115', N'2022-05-30 11:59:38', N'2022-05-30 11:59:38', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'18', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'45E41243-6ECF-484F-1B92-08DA41F0D115', N'2022-05-30 11:59:39', N'2022-05-30 11:59:39', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'158', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A69492A4-4253-4BDA-1B93-08DA41F0D115', N'2022-05-30 11:59:41', N'2022-05-30 11:59:41', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'326', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'0DBF9C5F-5499-4F59-F74E-08DA41F152CE', N'2022-05-30 12:03:16', N'2022-05-30 12:03:16', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'24', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'6DFFB0F1-DFFE-4200-F74F-08DA41F152CE', N'2022-05-30 12:03:21', N'2022-05-30 12:03:21', N'/api/account/check', N'0.0.0.1', N'', N'{"userName":"admin","userPassword":"123456"}', N'', N'Chrome102', N'Windows10', NULL, N'423', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'330C366A-3E57-4969-F750-08DA41F152CE', N'2022-05-30 12:03:21', N'2022-05-30 12:03:21', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'140', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'521B98F5-43E4-48E1-F751-08DA41F152CE', N'2022-05-30 12:03:24', N'2022-05-30 12:03:24', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'56', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'3BF4C978-53E6-4986-F752-08DA41F152CE', N'2022-05-30 12:03:31', N'2022-05-30 12:03:31', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'6542', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F51D5983-E8DB-4F04-63A8-08DA41F19C7D', N'2022-05-30 12:05:20', N'2022-05-30 12:05:20', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'18', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'2830322B-5664-4192-63A9-08DA41F19C7D', N'2022-05-30 12:05:26', N'2022-05-30 12:05:26', N'/api/account/check', N'0.0.0.1', N'', N'{"userName":"admin","userPassword":"123456"}', N'', N'Chrome102', N'Windows10', NULL, N'388', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'62691990-DD0C-4AEB-63AA-08DA41F19C7D', N'2022-05-30 12:05:27', N'2022-05-30 12:05:27', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'144', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'568454E7-9530-441D-63AB-08DA41F19C7D', N'2022-05-30 12:05:29', N'2022-05-30 12:05:29', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'55', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'440F5E5D-7B89-4F01-63AC-08DA41F19C7D', N'2022-05-30 12:05:37', N'2022-05-30 12:05:37', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'7208', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'26B03306-40B7-4E51-563C-08DA41F1DE8D', N'2022-05-30 12:07:10', N'2022-05-30 12:07:10', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'24', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'6AA2C837-AA6E-4558-563D-08DA41F1DE8D', N'2022-05-30 12:07:11', N'2022-05-30 12:07:11', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'193', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'C497A774-10AA-4E6F-563E-08DA41F1DE8D', N'2022-05-30 12:07:13', N'2022-05-30 12:07:13', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'240', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'E6AAA9E7-D107-44E9-563F-08DA41F1DE8D', N'2022-05-30 12:07:16', N'2022-05-30 12:07:16', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'16', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A5476019-4F4E-41FB-A90B-08DA42075303', N'2022-05-30 14:40:45', N'2022-05-30 14:40:45', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'23', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'9E46007C-8706-4E38-A90C-08DA42075303', N'2022-05-30 14:40:55', N'2022-05-30 14:40:55', N'/api/account/check', N'0.0.0.1', N'', N'{"userName":"admin","userPassword":"123456"}', N'', N'Chrome102', N'Windows10', NULL, N'465', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'CED9D9F7-4F39-45C7-A90D-08DA42075303', N'2022-05-30 14:40:55', N'2022-05-30 14:40:55', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'141', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'D026B0C9-2E3C-4262-A90E-08DA42075303', N'2022-05-30 14:40:58', N'2022-05-30 14:40:58', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'54', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A60043E2-6889-437C-A90F-08DA42075303', N'2022-05-30 14:40:58', N'2022-05-30 14:40:58', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'198', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A5934C56-CEAB-4DD5-A910-08DA42075303', N'2022-05-30 14:42:53', N'2022-05-30 14:42:53', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'31460', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'2646FFAA-03B0-4EBC-A911-08DA42075303', N'2022-05-30 14:43:01', N'2022-05-30 14:43:01', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'20', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'5DAD3243-0CA1-47BF-A912-08DA42075303', N'2022-05-30 14:45:24', N'2022-05-30 14:45:24', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'12', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'987E4C62-E713-4AC8-A913-08DA42075303', N'2022-05-30 14:45:24', N'2022-05-30 14:45:24', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'50', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'60E63D52-36F4-412D-A914-08DA42075303', N'2022-05-30 14:45:25', N'2022-05-30 14:45:25', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'24', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'BEAB8C9C-322C-4394-CEBE-08DA420B534C', N'2022-05-30 15:09:24', N'2022-05-30 15:09:24', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'19', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F5F74056-69B9-4DC7-CEBF-08DA420B534C', N'2022-05-30 15:09:24', N'2022-05-30 15:09:24', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'184', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'E621C760-D26B-4412-CEC0-08DA420B534C', N'2022-05-30 15:09:34', N'2022-05-30 15:09:34', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'272', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'731E43CE-CCB2-4ED1-CEC1-08DA420B534C', N'2022-05-30 15:09:36', N'2022-05-30 15:09:36', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'19', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'D3E06DB6-2844-4FCE-CEC2-08DA420B534C', N'2022-05-30 15:09:47', N'2022-05-30 15:09:47', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'17', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'E573374C-BE87-4FB6-CEC3-08DA420B534C', N'2022-05-30 15:10:37', N'2022-05-30 15:10:37', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'14', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F10298F0-2DAA-4EC5-CEC4-08DA420B534C', N'2022-05-30 15:10:38', N'2022-05-30 15:10:38', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'51', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'45518309-5E5D-4773-CEC5-08DA420B534C', N'2022-05-30 15:10:38', N'2022-05-30 15:10:38', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'23', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'1B01C964-9BC9-4947-CEC6-08DA420B534C', N'2022-05-30 15:11:04', N'2022-05-30 15:11:04', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'7', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'5DF97DB9-B491-4CEF-CEC7-08DA420B534C', N'2022-05-30 15:11:05', N'2022-05-30 15:11:05', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'38', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'35C878C7-053A-4D3B-CEC8-08DA420B534C', N'2022-05-30 15:11:05', N'2022-05-30 15:11:05', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'14', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'12BB5BBE-DB57-461E-CEC9-08DA420B534C', N'2022-05-30 15:11:23', N'2022-05-30 15:11:23', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'18', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'BE70DC41-CC0C-4F27-CECA-08DA420B534C', N'2022-05-30 15:12:00', N'2022-05-30 15:12:00', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'20', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'EAEA78E4-3FE9-48D0-CECB-08DA420B534C', N'2022-05-30 15:12:00', N'2022-05-30 15:12:00', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'28', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'36D47421-7E93-4482-CECC-08DA420B534C', N'2022-05-30 15:12:00', N'2022-05-30 15:12:00', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'18', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A045A921-FEB7-47D8-CECD-08DA420B534C', N'2022-05-30 15:12:22', N'2022-05-30 15:12:22', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'12', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'53E98FB0-23B2-43D6-CECE-08DA420B534C', N'2022-05-30 15:12:23', N'2022-05-30 15:12:23', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'30', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'2282F7B2-3B41-4278-CECF-08DA420B534C', N'2022-05-30 15:12:23', N'2022-05-30 15:12:23', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'18', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'25E7272E-CC16-4577-CED0-08DA420B534C', N'2022-05-30 15:13:09', N'2022-05-30 15:13:09', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'31', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'1B6C8271-508C-4E2A-CED1-08DA420B534C', N'2022-05-30 15:13:09', N'2022-05-30 15:13:09', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'28', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'0C6F7EEF-95A6-47B1-CED2-08DA420B534C', N'2022-05-30 15:13:28', N'2022-05-30 15:13:28', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'24', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F91E73D9-79A7-44AC-CED3-08DA420B534C', N'2022-05-30 15:13:28', N'2022-05-30 15:13:28', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'8', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'5E6D83D2-8287-4961-CED4-08DA420B534C', N'2022-05-30 15:13:32', N'2022-05-30 15:13:32', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'16', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'984ED656-BFD5-43C7-CED5-08DA420B534C', N'2022-05-30 15:13:32', N'2022-05-30 15:13:32', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'32', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F6F3C1D3-4697-4F79-CED6-08DA420B534C', N'2022-05-30 15:13:32', N'2022-05-30 15:13:32', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'11', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'BD5C1D62-B1FC-4A5D-CED7-08DA420B534C', N'2022-05-30 15:13:47', N'2022-05-30 15:13:47', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'23', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'C9DCB4BD-2E38-4F20-CED8-08DA420B534C', N'2022-05-30 15:13:47', N'2022-05-30 15:13:47', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'15', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'76AE4400-5009-47F5-CED9-08DA420B534C', N'2022-05-30 15:13:48', N'2022-05-30 15:13:48', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'25', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'16046D16-49BB-4D4A-CEDA-08DA420B534C', N'2022-05-30 15:13:48', N'2022-05-30 15:13:48', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'7', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'DEF3E2E4-14C9-47F4-CEDB-08DA420B534C', N'2022-05-30 15:13:50', N'2022-05-30 15:13:50', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'12', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'948543F6-3E96-409B-CEDC-08DA420B534C', N'2022-05-30 15:13:51', N'2022-05-30 15:13:51', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'25', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'4C13A08C-035E-452B-CEDD-08DA420B534C', N'2022-05-30 15:13:51', N'2022-05-30 15:13:51', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'11', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'41CA5332-8CE6-42C5-CEDE-08DA420B534C', N'2022-05-30 15:14:15', N'2022-05-30 15:14:15', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'9', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'098DE18D-396A-4AC5-CEDF-08DA420B534C', N'2022-05-30 15:17:18', N'2022-05-30 15:17:18', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'11', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'05AF7853-081D-4CD6-CEE0-08DA420B534C', N'2022-05-30 15:17:18', N'2022-05-30 15:17:18', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'31', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'D3EAC58A-65DE-4466-CEE1-08DA420B534C', N'2022-05-30 15:17:18', N'2022-05-30 15:17:18', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'24', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'FF969F4B-3C02-459B-CEE2-08DA420B534C', N'2022-05-30 15:18:05', N'2022-05-30 15:18:05', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'16', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'53E2C137-906E-47F9-CEE3-08DA420B534C', N'2022-05-30 15:18:06', N'2022-05-30 15:18:06', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'38', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'5DBC17B1-C817-4BFE-CEE4-08DA420B534C', N'2022-05-30 15:18:06', N'2022-05-30 15:18:06', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'23', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'6CCE5996-1D65-4CF0-CEE5-08DA420B534C', N'2022-05-30 15:19:34', N'2022-05-30 15:19:34', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'48', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'584E3846-D29D-4968-CEE6-08DA420B534C', N'2022-05-30 15:19:34', N'2022-05-30 15:19:34', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'26', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'79E962A7-CA43-49E9-CEE7-08DA420B534C', N'2022-05-30 15:19:34', N'2022-05-30 15:19:34', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'19', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'389E0951-3DF2-4E9F-CEE8-08DA420B534C', N'2022-05-30 15:20:14', N'2022-05-30 15:20:14', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'12', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'CC4C958A-63ED-48E7-CEE9-08DA420B534C', N'2022-05-30 15:20:14', N'2022-05-30 15:20:14', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'28', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'EE62D765-BF1F-4C19-CEEA-08DA420B534C', N'2022-05-30 15:20:14', N'2022-05-30 15:20:14', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'21', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'332001D4-BA7F-42CC-CEEB-08DA420B534C', N'2022-05-30 15:20:16', N'2022-05-30 15:20:16', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'1', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'1691DF43-D00C-43FC-CEEC-08DA420B534C', N'2022-05-30 15:20:16', N'2022-05-30 15:20:16', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'25', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F6BC2938-0F17-49D4-CEED-08DA420B534C', N'2022-05-30 15:20:16', N'2022-05-30 15:20:16', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'8', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'3376437D-6579-4515-CEEE-08DA420B534C', N'2022-05-30 15:20:35', N'2022-05-30 15:20:35', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'11', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'4D978663-009D-4118-CEEF-08DA420B534C', N'2022-05-30 15:22:25', N'2022-05-30 15:22:25', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'21', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'4B45E28F-462D-431C-CEF0-08DA420B534C', N'2022-05-30 15:22:26', N'2022-05-30 15:22:26', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'41', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'B83A4E5D-7592-4C6C-CEF1-08DA420B534C', N'2022-05-30 15:22:26', N'2022-05-30 15:22:26', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'22', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'4CC2D87D-5860-4CDF-CEF2-08DA420B534C', N'2022-05-30 15:22:29', N'2022-05-30 15:22:29', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'1', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'0C765A01-9124-4A0F-CEF3-08DA420B534C', N'2022-05-30 15:22:29', N'2022-05-30 15:22:29', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'32', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'164FDE25-A8B1-426B-CEF4-08DA420B534C', N'2022-05-30 15:22:29', N'2022-05-30 15:22:29', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'14', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'12D8A2F1-5374-4FB9-CEF5-08DA420B534C', N'2022-05-30 15:22:49', N'2022-05-30 15:22:49', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'25', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'461C5510-0E97-4928-CEF6-08DA420B534C', N'2022-05-30 15:22:49', N'2022-05-30 15:22:49', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'13', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'AD1917DE-A251-4AFE-CEF7-08DA420B534C', N'2022-05-30 15:22:50', N'2022-05-30 15:22:50', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'21', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'7A126FA1-FEEF-46F1-CEF8-08DA420B534C', N'2022-05-30 15:22:50', N'2022-05-30 15:22:50', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'16', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'D7F6A582-DE3F-4AFE-CEF9-08DA420B534C', N'2022-05-30 15:27:52', N'2022-05-30 15:27:52', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'25', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'7873D470-8651-4F3E-CEFA-08DA420B534C', N'2022-05-30 15:27:53', N'2022-05-30 15:27:53', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'38', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'BA508735-4236-45E3-CEFB-08DA420B534C', N'2022-05-30 15:27:53', N'2022-05-30 15:27:53', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'32', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'AC0461C4-25B0-4F42-CEFC-08DA420B534C', N'2022-05-30 15:28:36', N'2022-05-30 15:28:36', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'13', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'3A84327A-0736-4DB0-CEFD-08DA420B534C', N'2022-05-30 15:28:36', N'2022-05-30 15:28:36', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'40', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'960192D8-C869-46B5-CEFE-08DA420B534C', N'2022-05-30 15:28:36', N'2022-05-30 15:28:36', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'21', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'DB1E22CF-F813-4FF8-CEFF-08DA420B534C', N'2022-05-30 15:29:04', N'2022-05-30 15:29:04', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'16', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'E7D668CA-B4F4-4A07-CF00-08DA420B534C', N'2022-05-30 15:29:33', N'2022-05-30 15:29:33', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'10', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A7C23B9F-C0FF-487E-CF01-08DA420B534C', N'2022-05-30 15:30:42', N'2022-05-30 15:30:42', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'27', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'6E9B2365-2DE2-4C3C-CF02-08DA420B534C', N'2022-05-30 15:31:21', N'2022-05-30 15:31:21', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'46', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'AAED3A30-C837-4DE2-CF03-08DA420B534C', N'2022-05-30 15:31:21', N'2022-05-30 15:31:21', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'48', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'DF37EE96-8920-4B70-CF04-08DA420B534C', N'2022-05-30 15:31:21', N'2022-05-30 15:31:21', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'29', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'FD8D9162-ACB6-434B-CF05-08DA420B534C', N'2022-05-30 15:31:21', N'2022-05-30 15:31:21', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'36', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'B07951FA-744A-4A52-CF06-08DA420B534C', N'2022-05-30 15:31:36', N'2022-05-30 15:31:36', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'15', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'47CDC66E-29AE-48C3-CF07-08DA420B534C', N'2022-05-30 15:31:37', N'2022-05-30 15:31:37', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'47', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'04960B58-A82B-480B-CF08-08DA420B534C', N'2022-05-30 15:31:37', N'2022-05-30 15:31:37', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'18', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'CCB72943-EE07-4669-CF09-08DA420B534C', N'2022-05-30 15:44:03', N'2022-05-30 15:44:03', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'23', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'2DD844BB-D410-4AF7-CF0A-08DA420B534C', N'2022-05-30 15:44:25', N'2022-05-30 15:44:25', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'34', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'6D25ABA4-80D4-45E1-CF0B-08DA420B534C', N'2022-05-30 15:44:25', N'2022-05-30 15:44:25', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'31', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'AD0FC04E-DBA3-430D-CF0C-08DA420B534C', N'2022-05-30 15:44:26', N'2022-05-30 15:44:26', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'26', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'7E8B3EC0-E76F-438E-CF0D-08DA420B534C', N'2022-05-30 15:44:26', N'2022-05-30 15:44:26', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'26', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'8E618881-6DD5-4A59-CF0E-08DA420B534C', N'2022-05-30 15:44:31', N'2022-05-30 15:44:31', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'12', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'54CF7697-CE67-4F11-CF0F-08DA420B534C', N'2022-05-30 15:44:32', N'2022-05-30 15:44:32', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'29', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'71D3D04B-6189-4E2E-CF10-08DA420B534C', N'2022-05-30 15:44:32', N'2022-05-30 15:44:32', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'10', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'4E5003FD-ECEF-4F57-CF11-08DA420B534C', N'2022-05-30 16:26:44', N'2022-05-30 16:26:44', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'12', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'3C602D11-8F84-48E2-CF12-08DA420B534C', N'2022-05-30 16:26:45', N'2022-05-30 16:26:45', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'47', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'5FD2A89E-B06B-46FB-CF13-08DA420B534C', N'2022-05-30 16:26:45', N'2022-05-30 16:26:45', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'46', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'991EF5C3-C9A3-41ED-EC81-08DA4216784E', N'2022-05-30 16:29:10', N'2022-05-30 16:29:10', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'38', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'058A85AB-3185-4993-EC82-08DA4216784E', N'2022-05-30 16:29:11', N'2022-05-30 16:29:11', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'202', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'1FA8E19A-E030-4DD4-EC83-08DA4216784E', N'2022-05-30 16:29:38', N'2022-05-30 16:29:38', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'241', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'D7973C5E-69B1-41B3-EC84-08DA4216784E', N'2022-05-30 16:29:39', N'2022-05-30 16:29:39', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'14', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'87476040-3643-42E2-EC85-08DA4216784E', N'2022-05-30 16:29:40', N'2022-05-30 16:29:40', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'57', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'9B3EB1EB-E527-47BF-EC86-08DA4216784E', N'2022-05-30 16:29:40', N'2022-05-30 16:29:40', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'26', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'7960D98A-3F8D-4B65-EC87-08DA4216784E', N'2022-05-30 16:30:17', N'2022-05-30 16:30:17', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'16', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'52A81EDC-5A7D-4974-87D7-08DA4216C9D8', N'2022-05-30 16:31:27', N'2022-05-30 16:31:27', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'23', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'EA125034-910E-4858-87D8-08DA4216C9D8', N'2022-05-30 16:31:28', N'2022-05-30 16:31:28', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'191', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'0988D9FB-485D-449D-87D9-08DA4216C9D8', N'2022-05-30 16:33:10', N'2022-05-30 16:33:10', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'21', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'E5F54B76-754F-4EE4-87DA-08DA4216C9D8', N'2022-05-30 16:33:11', N'2022-05-30 16:33:11', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'113', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'6C4630D9-CCD0-4316-87DB-08DA4216C9D8', N'2022-05-30 16:33:11', N'2022-05-30 16:33:11', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'282', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'26FFB0D9-05A1-46E7-87DC-08DA4216C9D8', N'2022-05-30 16:33:12', N'2022-05-30 16:33:12', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'1', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'31108B21-4725-4764-87DD-08DA4216C9D8', N'2022-05-30 16:33:13', N'2022-05-30 16:33:13', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'28', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'9F0CD882-4FBC-498D-87DE-08DA4216C9D8', N'2022-05-30 16:33:13', N'2022-05-30 16:33:13', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'24', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'D55C37DD-C18F-4077-46D5-08DA42186462', N'2022-05-30 16:42:56', N'2022-05-30 16:42:56', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'17', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'2EB65E7B-B116-4B83-46D6-08DA42186462', N'2022-05-30 16:42:57', N'2022-05-30 16:42:57', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'191', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'B329A0FB-4E55-49CB-46D7-08DA42186462', N'2022-05-30 16:56:34', N'2022-05-30 16:56:34', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'75', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'30233816-DD05-4898-46D8-08DA42186462', N'2022-05-30 16:56:35', N'2022-05-30 16:56:35', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'254', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'1F92EEA7-F2C4-40F6-46D9-08DA42186462', N'2022-05-30 16:56:38', N'2022-05-30 16:56:38', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'22', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'00543601-64FA-4671-46DA-08DA42186462', N'2022-05-30 16:56:41', N'2022-05-30 16:56:41', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'39', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'13B809FF-0D2B-4BF9-46DB-08DA42186462', N'2022-05-30 16:56:41', N'2022-05-30 16:56:41', N'/client/NaN', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'8328BA65-2FD3-49ED-46DC-08DA42186462', N'2022-05-30 17:00:56', N'2022-05-30 17:00:56', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'17', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A674416B-E69A-4A8D-46DD-08DA42186462', N'2022-05-30 17:01:02', N'2022-05-30 17:01:02', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'15', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'C65301B2-9C38-4062-46DE-08DA42186462', N'2022-05-30 17:01:11', N'2022-05-30 17:01:11', N'/api/admin/LowCodeTable/findList/10/1', N'0.0.0.1', N'', N'{"tableName":null,"entityName":null,"displayName":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'96', N'LowCodeTableController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'568CD842-424B-4C70-46DF-08DA42186462', N'2022-05-30 17:01:25', N'2022-05-30 17:01:25', N'/api/admin/LowCodeTable/findList/10/2', N'0.0.0.1', N'', N'{"tableName":null,"entityName":null,"displayName":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'60', N'LowCodeTableController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'8CBA3614-D104-4B97-46E0-08DA42186462', N'2022-05-30 17:01:29', N'2022-05-30 17:01:29', N'/api/admin/LowCodeTableInfo/findList/10/1', N'0.0.0.1', N'', N'{"columnName":null,"low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","describe":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'68', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'DFF6171E-9B0A-4707-46E1-08DA42186462', N'2022-05-30 17:01:29', N'2022-05-30 17:01:29', N'/api/admin/CodeGeneration/getCode', N'0.0.0.1', N'', N'{"tableName":"Member","type":"HZY.Models","codeText":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'138', NULL, N'获取代码')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'87488639-8653-4668-46E2-08DA42186462', N'2022-05-30 17:03:25', N'2022-05-30 17:03:25', N'/api/admin/LowCodeTableInfo/findList/10/2', N'0.0.0.1', N'', N'{"columnName":null,"low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","describe":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'19', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'48FA3AEA-5BE1-43BD-46E3-08DA42186462', N'2022-05-30 17:03:27', N'2022-05-30 17:03:27', N'/api/admin/LowCodeTableInfo/findList/10/1', N'0.0.0.1', N'', N'{"columnName":null,"low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","describe":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'11', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'8C8C6D60-F07A-47E4-46E4-08DA42186462', N'2022-05-30 17:04:15', N'2022-05-30 17:04:15', N'/api/admin/LowCodeTableInfo/change', N'0.0.0.1', N'', N'[{"id":"e75b8650-ee49-4f83-d4d2-08da3d8d5a26","isPrimary":true,"isIdentity":false,"isNullable":false,"position":70,"columnName":"Id","describe":"","databaseColumnType":"uniqueidentifier","csType":"Guid","csField":"Id","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_105"},{"id":"bf24a276-6ed0-49d4-d4d9-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":71,"columnName":"Number","describe":"编号","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Number","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_106"},{"id":"d1eb49cf-c053-4226-d4d8-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":72,"columnName":"Name","describe":"会员名称","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Name","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_107"},{"id":"669b87ce-c694-4c8c-d4da-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":73,"columnName":"Phone","describe":"联系电话","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Phone","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_108"},{"id":"72ac247c-d792-4fee-d4dc-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":74,"columnName":"Sex","describe":"性别","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Sex","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_109"},{"id":"b7fbb61f-94fc-4242-d4d3-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":75,"columnName":"Birthday","describe":"生日","databaseColumnType":"datetime2","csType":"DateTime","csField":"Birthday","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_110"},{"id":"f03ac01c-e0cf-4f13-d4db-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":76,"columnName":"Photo","describe":"头像","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Photo","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_111"},{"id":"8326ca11-09f1-4c38-d4d6-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":77,"columnName":"Introduce","describe":"简介","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Introduce","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_112"},{"id":"e4245f5f-bffa-43f0-d4d5-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":78,"columnName":"FilePath","describe":"文件地址","databaseColumnType":"nvarchar(255)","csType":"String","csField":"FilePath","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_113"},{"id":"837b058b-a88e-4107-d4dd-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":79,"columnName":"UserId","describe":"所属用户","databaseColumnType":"uniqueidentifier","csType":"Guid","csField":"UserId","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_114"}]', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'61', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'204916EC-D531-49F3-46E5-08DA42186462', N'2022-05-30 17:04:15', N'2022-05-30 17:04:15', N'/api/admin/LowCodeTableInfo/findList/10/1', N'0.0.0.1', N'', N'{"columnName":null,"low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","describe":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'64', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A656C852-7323-4106-46E6-08DA42186462', N'2022-05-30 17:04:22', N'2022-05-30 17:04:22', N'/api/admin/LowCodeTableInfo/findList/20/1', N'0.0.0.1', N'', N'{"columnName":null,"low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","describe":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'8', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'7094C63B-A682-44F8-46E7-08DA42186462', N'2022-05-30 17:04:37', N'2022-05-30 17:04:37', N'/api/admin/LowCodeTableInfo/change', N'0.0.0.1', N'', N'[{"id":"e75b8650-ee49-4f83-d4d2-08da3d8d5a26","isPrimary":true,"isIdentity":false,"isNullable":false,"position":70,"columnName":"Id","describe":"","databaseColumnType":"uniqueidentifier","csType":"Guid","csField":"Id","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_125"},{"id":"bf24a276-6ed0-49d4-d4d9-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":71,"columnName":"Number","describe":"编号","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Number","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_126"},{"id":"d1eb49cf-c053-4226-d4d8-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":72,"columnName":"Name","describe":"会员名称","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Name","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_127"},{"id":"669b87ce-c694-4c8c-d4da-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":73,"columnName":"Phone","describe":"联系电话","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Phone","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_128"},{"id":"72ac247c-d792-4fee-d4dc-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":74,"columnName":"Sex","describe":"性别","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Sex","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_129"},{"id":"b7fbb61f-94fc-4242-d4d3-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":75,"columnName":"Birthday","describe":"生日","databaseColumnType":"datetime2","csType":"DateTime","csField":"Birthday","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_130"},{"id":"f03ac01c-e0cf-4f13-d4db-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":76,"columnName":"Photo","describe":"头像","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Photo","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_131"},{"id":"8326ca11-09f1-4c38-d4d6-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":77,"columnName":"Introduce","describe":"简介","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Introduce","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_132"},{"id":"e4245f5f-bffa-43f0-d4d5-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":78,"columnName":"FilePath","describe":"文件地址","databaseColumnType":"nvarchar(255)","csType":"String","csField":"FilePath","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_133"},{"id":"837b058b-a88e-4107-d4dd-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":79,"columnName":"UserId","describe":"所属用户","databaseColumnType":"uniqueidentifier","csType":"Guid","csField":"UserId","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_134"},{"id":"5541e535-7cbe-43d2-d4d4-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":80,"columnName":"CreationTime","describe":"创建时间","databaseColumnType":"datetime2","csType":"DateTime","csField":"CreationTime","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_135"},{"id":"897a208c-2e13-46f1-d4d7-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":81,"columnName":"LastModificationTime","describe":"更新时间","databaseColumnType":"datetime2","csType":"DateTime","csField":"LastModificationTime","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_136"}]', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'34', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'0E631B11-65AB-4F4F-46E8-08DA42186462', N'2022-05-30 17:04:37', N'2022-05-30 17:04:37', N'/api/admin/LowCodeTableInfo/findList/20/1', N'0.0.0.1', N'', N'{"columnName":null,"low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","describe":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'54', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'0208F242-36C3-44FE-46E9-08DA42186462', N'2022-05-30 17:04:45', N'2022-05-30 17:04:45', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'17', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'04D5D579-455C-40DC-46EA-08DA42186462', N'2022-05-30 17:04:48', N'2022-05-30 17:04:48', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'9', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'7FC3983D-D0BA-4787-46EB-08DA42186462', N'2022-05-30 17:04:48', N'2022-05-30 17:04:48', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'8', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'6C72EC54-51ED-4580-9019-08DA4243A813', N'2022-05-30 21:52:38', N'2022-05-30 21:52:38', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'18', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'6E181DAE-0C8E-45F3-901A-08DA4243A813', N'2022-05-30 21:53:06', N'2022-05-30 21:53:06', N'/api/account/check', N'0.0.0.1', N'', N'{"userName":"admin","userPassword":"123456"}', N'', N'Chrome102', N'Windows10', NULL, N'374', NULL, NULL)
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'1C2DB7CC-923F-4154-901B-08DA4243A813', N'2022-05-30 21:53:06', N'2022-05-30 21:53:06', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'138', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'C8C9BDAF-BF93-4A18-901C-08DA4243A813', N'2022-05-30 21:53:09', N'2022-05-30 21:53:09', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'175', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F3DF8F74-F35E-4468-901D-08DA4243A813', N'2022-05-30 21:53:48', N'2022-05-30 21:53:48', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'9', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'58384678-7DEB-466C-901E-08DA4243A813', N'2022-05-30 21:53:49', N'2022-05-30 21:53:49', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'18', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'ADD772E1-91DA-44FB-901F-08DA4243A813', N'2022-05-30 21:55:08', N'2022-05-30 21:55:08', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'22', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'41306EDD-6786-4321-9020-08DA4243A813', N'2022-05-30 21:55:09', N'2022-05-30 21:55:09', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'15', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'9583158C-4AEA-44E5-9021-08DA4243A813', N'2022-05-30 21:56:23', N'2022-05-30 21:56:23', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'20', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'99FA70D1-72FA-4619-9022-08DA4243A813', N'2022-05-30 21:56:24', N'2022-05-30 21:56:24', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'19', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F3651D2B-E74F-44D5-9023-08DA4243A813', N'2022-05-30 21:56:45', N'2022-05-30 21:56:45', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'6', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'BB18EFB2-0E5B-49CF-9024-08DA4243A813', N'2022-05-30 21:56:45', N'2022-05-30 21:56:45', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'8', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'0E3770DA-B5FB-4304-9025-08DA4243A813', N'2022-05-30 21:57:37', N'2022-05-30 21:57:37', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'12', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'AEE8C31C-F93C-468B-9026-08DA4243A813', N'2022-05-30 21:57:37', N'2022-05-30 21:57:37', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'19', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'E92F293C-453D-453C-9027-08DA4243A813', N'2022-05-30 21:58:18', N'2022-05-30 21:58:18', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'17', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'026CC868-534B-49CE-9028-08DA4243A813', N'2022-05-30 21:58:18', N'2022-05-30 21:58:18', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'15', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'C944869A-2A9A-438D-9029-08DA4243A813', N'2022-05-30 21:58:34', N'2022-05-30 21:58:34', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'14', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'9E3C37CC-C91B-44CD-902A-08DA4243A813', N'2022-05-30 21:58:35', N'2022-05-30 21:58:35', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'11', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'5783BF55-010A-43D2-902B-08DA4243A813', N'2022-05-30 22:05:10', N'2022-05-30 22:05:10', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'27', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'BBCAF52A-4578-4234-902C-08DA4243A813', N'2022-05-30 22:05:11', N'2022-05-30 22:05:11', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'28', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'9E6B0C02-9DF3-4B10-902D-08DA4243A813', N'2022-05-30 22:06:00', N'2022-05-30 22:06:00', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'31', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'B8F096C9-8325-405F-902E-08DA4243A813', N'2022-05-30 22:07:06', N'2022-05-30 22:07:06', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'19', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'5B7FE43F-0479-4DB4-902F-08DA4243A813', N'2022-05-30 22:07:13', N'2022-05-30 22:07:13', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'12', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'5491AB14-40BC-4FAF-9030-08DA4243A813', N'2022-05-30 22:07:17', N'2022-05-30 22:07:17', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'10', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'3A71F9F2-4B2A-461B-9031-08DA4243A813', N'2022-05-30 22:07:26', N'2022-05-30 22:07:26', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'9', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'B6D25BCA-3500-4CDF-9032-08DA4243A813', N'2022-05-30 22:07:27', N'2022-05-30 22:07:27', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'11', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'AAF8CB30-4123-492F-9033-08DA4243A813', N'2022-05-30 22:07:49', N'2022-05-30 22:07:49', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'15', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F7E4027E-D3B1-47A7-9034-08DA4243A813', N'2022-05-30 22:07:52', N'2022-05-30 22:07:52', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'9', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'577A2C4D-1631-40DC-9035-08DA4243A813', N'2022-05-30 22:07:53', N'2022-05-30 22:07:53', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'12', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'ABDFE7BC-9673-4DEA-9036-08DA4243A813', N'2022-05-30 22:08:02', N'2022-05-30 22:08:02', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'9', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'1C58E970-7EDD-4BC7-9037-08DA4243A813', N'2022-05-30 22:08:03', N'2022-05-30 22:08:03', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'8', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'C82FC2AD-1BC4-49CB-9038-08DA4243A813', N'2022-05-30 22:08:45', N'2022-05-30 22:08:45', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'33', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'2D0E6353-4DAD-47F1-9039-08DA4243A813', N'2022-05-30 22:09:01', N'2022-05-30 22:09:01', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'15', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'85D238E6-3E97-4487-903A-08DA4243A813', N'2022-05-30 22:09:03', N'2022-05-30 22:09:03', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'9', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'8C8319A7-64D1-477F-903B-08DA4243A813', N'2022-05-30 22:09:03', N'2022-05-30 22:09:03', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'9', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'B6E12AAC-86F2-4048-903C-08DA4243A813', N'2022-05-30 22:09:42', N'2022-05-30 22:09:42', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'33', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'EE3FA9D3-4270-4869-903D-08DA4243A813', N'2022-05-30 22:09:48', N'2022-05-30 22:09:48', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'11', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'533DF3B7-62A3-40D8-903E-08DA4243A813', N'2022-05-30 22:09:51', N'2022-05-30 22:09:51', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'9', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'9EE723CD-EB7F-4106-903F-08DA4243A813', N'2022-05-30 22:09:51', N'2022-05-30 22:09:51', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'14', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'FF213158-C885-498A-9040-08DA4243A813', N'2022-05-30 22:12:21', N'2022-05-30 22:12:21', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'20', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'3A94F37B-8D3E-4110-9041-08DA4243A813', N'2022-05-30 22:12:22', N'2022-05-30 22:12:22', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'11', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'BA208CED-2F29-49D0-9042-08DA4243A813', N'2022-05-30 22:13:02', N'2022-05-30 22:13:02', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'19', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'0456781D-ABAD-4B3E-9043-08DA4243A813', N'2022-05-30 22:13:02', N'2022-05-30 22:13:02', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'23', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'6EAE3EF8-94ED-4548-9044-08DA4243A813', N'2022-05-30 22:14:19', N'2022-05-30 22:14:19', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'17', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'E883ACC6-280E-47FE-9045-08DA4243A813', N'2022-05-30 22:14:19', N'2022-05-30 22:14:19', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'19', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'2CD89FB8-075D-4654-9046-08DA4243A813', N'2022-05-30 22:15:24', N'2022-05-30 22:15:24', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'36', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F8A4175B-D158-4536-9047-08DA4243A813', N'2022-05-30 22:15:27', N'2022-05-30 22:15:27', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'9', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'E2E89F6C-93B8-49E5-9048-08DA4243A813', N'2022-05-30 22:15:28', N'2022-05-30 22:15:28', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'18', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'4A7C59AD-F7C7-40DB-9049-08DA4243A813', N'2022-05-30 22:16:03', N'2022-05-30 22:16:03', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'11', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'CAC4AB52-FC93-4EE2-904A-08DA4243A813', N'2022-05-30 22:16:03', N'2022-05-30 22:16:03', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'21', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'7F6E78E0-D6A3-4355-904B-08DA4243A813', N'2022-05-30 22:16:22', N'2022-05-30 22:16:22', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'15', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'33158965-D767-4877-904C-08DA4243A813', N'2022-05-30 22:16:25', N'2022-05-30 22:16:25', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'9', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'1CF9C133-BE3B-4610-904D-08DA4243A813', N'2022-05-30 22:16:26', N'2022-05-30 22:16:26', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'8', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'8FC265E7-06F5-49DC-904E-08DA4243A813', N'2022-05-30 22:16:50', N'2022-05-30 22:16:50', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'13', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'4A0ABF82-B805-4E90-904F-08DA4243A813', N'2022-05-30 22:16:51', N'2022-05-30 22:16:51', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'10', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'C738BFE1-FCF3-4BA9-9050-08DA4243A813', N'2022-05-30 22:23:52', N'2022-05-30 22:23:52', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'32', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'D9C732CA-9D80-4BB5-9051-08DA4243A813', N'2022-05-30 22:23:53', N'2022-05-30 22:23:53', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'13', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'C9B6C067-41C5-4CB7-9052-08DA4243A813', N'2022-05-30 22:25:10', N'2022-05-30 22:25:10', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'10', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'2CE3BED3-00AD-4C14-9053-08DA4243A813', N'2022-05-30 22:25:10', N'2022-05-30 22:25:10', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'10', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'D2068F1B-E324-4288-9054-08DA4243A813', N'2022-05-30 22:26:09', N'2022-05-30 22:26:09', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'14', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'26803DA0-FF13-4841-9055-08DA4243A813', N'2022-05-30 22:26:09', N'2022-05-30 22:26:09', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'15', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'27FD50A9-69FE-4796-9056-08DA4243A813', N'2022-05-30 22:27:08', N'2022-05-30 22:27:08', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'16', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'848E6C8F-914C-45A8-9057-08DA4243A813', N'2022-05-30 22:27:08', N'2022-05-30 22:27:08', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'13', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'3F5B7CF7-780E-4C7F-9058-08DA4243A813', N'2022-05-30 22:27:25', N'2022-05-30 22:27:25', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'12', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'0EA94571-204F-42B3-9059-08DA4243A813', N'2022-05-30 22:27:26', N'2022-05-30 22:27:26', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'11', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'DE914492-15F5-4931-905A-08DA4243A813', N'2022-05-30 22:28:06', N'2022-05-30 22:28:06', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'17', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A292CAF8-3CBE-49E5-905B-08DA4243A813', N'2022-05-30 22:28:07', N'2022-05-30 22:28:07', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'14', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A68587C1-F02E-45B3-905C-08DA4243A813', N'2022-05-30 22:28:26', N'2022-05-30 22:28:26', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'9', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'3A9ABCC6-C8C3-45D1-905D-08DA4243A813', N'2022-05-30 22:28:26', N'2022-05-30 22:28:26', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'7', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F13D5F63-9CD3-43FB-905E-08DA4243A813', N'2022-05-30 22:28:38', N'2022-05-30 22:28:38', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'6', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'15BA92C6-9BE6-418C-905F-08DA4243A813', N'2022-05-30 22:28:38', N'2022-05-30 22:28:38', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'8', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'4B3926C4-0C78-4E2F-9060-08DA4243A813', N'2022-05-30 22:28:44', N'2022-05-30 22:28:44', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'1', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'D7ADA0B5-A55E-4E41-9061-08DA4243A813', N'2022-05-30 22:28:44', N'2022-05-30 22:28:44', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'7', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'9417035E-F439-4505-9062-08DA4243A813', N'2022-05-30 22:28:57', N'2022-05-30 22:28:57', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'13', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'985F0104-CC87-460E-9063-08DA4243A813', N'2022-05-30 22:28:58', N'2022-05-30 22:28:58', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'14', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A944A286-AD04-4D6E-9064-08DA4243A813', N'2022-05-30 22:29:14', N'2022-05-30 22:29:14', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'13', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'E8F0A029-1E35-4F34-9065-08DA4243A813', N'2022-05-30 22:29:36', N'2022-05-30 22:29:36', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'9', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'4F400B67-252E-4BC0-9066-08DA4243A813', N'2022-05-30 22:29:37', N'2022-05-30 22:29:37', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'7', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'3AC83417-A7C0-4A8B-9067-08DA4243A813', N'2022-05-30 22:29:43', N'2022-05-30 22:29:43', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'65', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'4AF616AA-C95A-49CE-9068-08DA4243A813', N'2022-05-30 22:29:43', N'2022-05-30 22:29:43', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'76', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'62DC7561-7F52-4B2C-9069-08DA4243A813', N'2022-05-30 22:31:36', N'2022-05-30 22:31:36', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'15', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'49C6A35D-26F0-4C36-906A-08DA4243A813', N'2022-05-30 22:31:37', N'2022-05-30 22:31:37', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'37', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'CB36606B-06EE-48C8-906B-08DA4243A813', N'2022-05-30 22:31:37', N'2022-05-30 22:31:37', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'16', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'AD274ED2-F10D-4E13-906C-08DA4243A813', N'2022-05-30 22:31:47', N'2022-05-30 22:31:47', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'7', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'EAC15FF2-2F4B-4873-906D-08DA4243A813', N'2022-05-30 22:31:48', N'2022-05-30 22:31:48', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'25', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'96215078-666F-4B16-906E-08DA4243A813', N'2022-05-30 22:31:48', N'2022-05-30 22:31:48', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'13', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'4A5BCBB6-8C41-4B9C-906F-08DA4243A813', N'2022-05-30 22:32:03', N'2022-05-30 22:32:03', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'13', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'EC4F5BF8-80C7-4FC3-9070-08DA4243A813', N'2022-05-30 22:32:35', N'2022-05-30 22:32:35', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'12', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'4E2F4B0E-F581-41B5-9071-08DA4243A813', N'2022-05-30 22:32:35', N'2022-05-30 22:32:35', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'11', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'2BB019BF-000D-4948-9072-08DA4243A813', N'2022-05-30 22:33:04', N'2022-05-30 22:33:04', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'31', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[SysOperationLog] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'5E4D8D72-9A42-40C7-9073-08DA4243A813', N'2022-05-30 22:33:05', N'2022-05-30 22:33:05', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'31', N'系统账号', N'查看数据')
GO


-- ----------------------------
-- Table structure for SysOrganization
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysOrganization]') AND type IN ('U'))
	DROP TABLE [dbo].[SysOrganization]
GO

CREATE TABLE [dbo].[SysOrganization] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [OrderNumber] int  NULL,
  [LevelCode] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Leader] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Phone] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Email] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [State] int  NULL,
  [ParentId] int  NULL,
  [LastModificationTime] datetime2(0)  NULL,
  [CreationTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[SysOrganization] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SysOrganization
-- ----------------------------
SET IDENTITY_INSERT [dbo].[SysOrganization] ON
GO

INSERT INTO [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (N'1', N'阿里巴巴集团', N'1', N'1', N'hzy', N'18410912184', N'18410912184@qq.com', N'1', NULL, N'2021-05-27 20:50:31', N'2021-05-27 20:50:31')
GO

INSERT INTO [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (N'2', N'北京分部', N'3', N'1.2', N'北京分部', N'132123', N'13131', N'1', N'1', N'2021-12-28 16:13:34', N'2021-05-27 22:33:44')
GO

INSERT INTO [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (N'3', N'市场部门', N'1', N'1.2.3', N'市场部门', N'234124234', N'234234@qq.com', N'1', N'2', N'2021-05-27 22:33:57', N'2021-05-27 22:33:57')
GO

INSERT INTO [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (N'4', N'财务部门', N'2', N'1.2.4', N'财务部门', N'435543535', N'123@qq.com', N'1', N'2', N'2021-05-27 22:34:11', N'2021-05-27 22:34:11')
GO

INSERT INTO [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (N'5', N'成都分部', N'2', N'1.5', N'成都分部', N'123123123', N'123@qq.com', N'1', N'1', N'2021-05-27 22:31:45', N'2021-05-27 21:01:50')
GO

INSERT INTO [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (N'7', N'研发部门', N'1', N'1.5.7', N'研发部门', N'1234323423', N'12312@qq.com', N'1', N'5', N'2021-05-27 22:32:29', N'2021-05-27 22:32:08')
GO

INSERT INTO [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (N'9', N'运维部门', N'4', N'1.5.9', N'运维部门', N'1232133452', N'12341@qq.com', N'1', N'5', N'2022-03-08 17:07:47', N'2021-05-27 22:33:25')
GO

INSERT INTO [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (N'10', N'测试部门', N'3', N'1.5.10', N'测试部门', N'12313', N'123123@qq.com', N'1', N'5', N'2021-05-27 22:32:59', N'2021-05-27 22:32:59')
GO

INSERT INTO [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (N'11', N'技术部门', N'2', N'1.5.11', N'技术部门', N'12345678911', N'12345678901@qq.com', N'1', N'5', N'2022-03-08 17:07:37', N'2022-03-08 17:00:20')
GO

SET IDENTITY_INSERT [dbo].[SysOrganization] OFF
GO


-- ----------------------------
-- Table structure for SysPost
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysPost]') AND type IN ('U'))
	DROP TABLE [dbo].[SysPost]
GO

CREATE TABLE [dbo].[SysPost] (
  [Id] uniqueidentifier  NOT NULL,
  [Number] int  NULL,
  [Code] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [State] int  NULL,
  [Remarks] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [LastModificationTime] datetime2(0)  NULL,
  [CreationTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[SysPost] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SysPost
-- ----------------------------
INSERT INTO [dbo].[SysPost] ([Id], [Number], [Code], [Name], [State], [Remarks], [LastModificationTime], [CreationTime]) VALUES (N'F0BD38C2-F1DE-4BD9-E2DB-08DA00A93622', N'5', N'dotnet_engineer', N'DotNet软件工程师', N'1', NULL, N'2022-03-08 10:13:18', N'2022-03-08 10:13:18')
GO

INSERT INTO [dbo].[SysPost] ([Id], [Number], [Code], [Name], [State], [Remarks], [LastModificationTime], [CreationTime]) VALUES (N'0716B4B0-9A06-43E9-8AE8-82C74875F83E', N'2', N'se', N'项目经理', N'1', NULL, N'2021-05-27 20:26:35', N'2021-05-27 20:26:35')
GO

INSERT INTO [dbo].[SysPost] ([Id], [Number], [Code], [Name], [State], [Remarks], [LastModificationTime], [CreationTime]) VALUES (N'96927C30-41D0-4CED-8E29-CBED35C90FB0', N'1', N'ceo', N'董事长', N'1', NULL, N'2021-05-27 20:26:22', N'2021-05-27 20:26:22')
GO

INSERT INTO [dbo].[SysPost] ([Id], [Number], [Code], [Name], [State], [Remarks], [LastModificationTime], [CreationTime]) VALUES (N'E46AF329-6D08-442C-9837-F22CFF954411', N'4', N'user', N'普通员工', N'1', NULL, N'2022-04-23 21:50:55', N'2021-05-27 20:26:52')
GO

INSERT INTO [dbo].[SysPost] ([Id], [Number], [Code], [Name], [State], [Remarks], [LastModificationTime], [CreationTime]) VALUES (N'F0C67537-8094-429A-B474-F54AC518609E', N'3', N'hr', N'人力资源', N'1', NULL, N'2021-05-27 20:26:44', N'2021-05-27 20:26:44')
GO


-- ----------------------------
-- Table structure for SysRole
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysRole]') AND type IN ('U'))
	DROP TABLE [dbo].[SysRole]
GO

CREATE TABLE [dbo].[SysRole] (
  [Id] uniqueidentifier  NOT NULL,
  [LastModificationTime] datetime2(0)  NULL,
  [CreationTime] datetime2(0)  NULL,
  [Number] int  NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [DeleteLock] bit  NULL
)
GO

ALTER TABLE [dbo].[SysRole] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SysRole
-- ----------------------------
INSERT INTO [dbo].[SysRole] ([Id], [LastModificationTime], [CreationTime], [Number], [Name], [Remark], [DeleteLock]) VALUES (N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'2021-01-10 11:25:12', N'2016-07-06 17:59:20', N'1', N'超级管理员', N'拥有所有权限', N'1')
GO

INSERT INTO [dbo].[SysRole] ([Id], [LastModificationTime], [CreationTime], [Number], [Name], [Remark], [DeleteLock]) VALUES (N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'2021-01-30 00:51:17', N'2016-07-06 17:59:20', N'2', N'普通用户', N'普通用户', N'1')
GO


-- ----------------------------
-- Table structure for SysRoleMenuFunction
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysRoleMenuFunction]') AND type IN ('U'))
	DROP TABLE [dbo].[SysRoleMenuFunction]
GO

CREATE TABLE [dbo].[SysRoleMenuFunction] (
  [Id] uniqueidentifier  NOT NULL,
  [RoleId] uniqueidentifier  NULL,
  [MenuId] int  NULL,
  [MenuFunctionId] uniqueidentifier  NULL,
  [LastModificationTime] datetime2(0)  NULL,
  [CreationTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[SysRoleMenuFunction] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SysRoleMenuFunction
-- ----------------------------
INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'723496DE-EDF5-4ABB-8913-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'2', N'A7CD04DB-BBE3-49B6-0F1E-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'47CF05E0-72B6-486F-8914-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'3', N'F64CFE50-1EF1-457F-0F20-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'CB8AD405-AFFD-4AA9-8915-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'5', N'A1DDD02F-8C21-4D79-0F21-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'03E8FE58-17FE-4284-8916-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'6', N'1CB6FBE1-4A6C-4AAD-0F22-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'07E218FC-2298-4954-8917-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'8', N'D2E6EA60-2CF6-478A-0F23-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'D44F1F28-B588-4B68-8918-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'9', N'B7533A90-DAE4-4263-0F24-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'A9B2D796-7FB4-4D61-8919-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'10', N'EC535908-8671-4928-0F25-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'234FAC8D-C4EE-46E2-891A-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'11', N'3BC0E68F-D03D-4E99-0F26-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'3C0CBCA5-310F-41DB-891B-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'13', N'EB958545-6449-40DB-0F27-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'B03F0D20-4079-462A-891C-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'13', N'B5881044-AFB8-40B2-0F28-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'4854C7F2-E61B-4A3A-891D-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'13', N'106FB69A-8BB5-4559-0F29-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'DA031F6C-E0EC-4460-891E-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'13', N'F4621FBE-6B40-4454-0F2A-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'8284A625-2407-44CA-891F-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'13', N'523B53B5-8159-4A16-0F2B-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'3A82A6ED-573A-4CBA-8920-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'13', N'A3754771-F6E9-4A23-0F2C-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'F55A6AB8-E54F-4C31-8921-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'13', N'B96F977C-A36E-4E7F-0F2D-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'AACC3780-8729-43DF-8922-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'13', N'541D9045-47B2-4629-0F2E-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'47D72C2C-D4E1-4D3E-8923-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'15', N'13F3F74D-C6FC-4488-0F2F-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'D05AADEA-113C-4D48-8924-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'19', N'C77C812A-1601-4311-0F70-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'D461B335-CC62-4AF1-8925-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'28', N'3F6D0AF7-5386-4D3A-0F71-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'62941AC4-12B1-4427-8926-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'32', N'6C09C0C0-72FA-4842-0F1F-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO


-- ----------------------------
-- Table structure for SysUser
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysUser]') AND type IN ('U'))
	DROP TABLE [dbo].[SysUser]
GO

CREATE TABLE [dbo].[SysUser] (
  [Id] uniqueidentifier  NOT NULL,
  [LastModificationTime] datetime2(0)  NULL,
  [CreationTime] datetime2(0)  NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [LoginName] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Password] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Phone] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Email] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [DeleteLock] bit  NULL,
  [OrganizationId] int  NULL
)
GO

ALTER TABLE [dbo].[SysUser] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SysUser
-- ----------------------------
INSERT INTO [dbo].[SysUser] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'5722AF0F-2366-4FC9-62D5-08DA00E3D8A0', N'2022-03-08 17:13:02', N'2022-03-08 17:13:02', N'杜甫', N'杜甫', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', N'0', N'7')
GO

INSERT INTO [dbo].[SysUser] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'4FD6A740-0CF1-4975-62D6-08DA00E3D8A0', N'2022-03-08 17:14:13', N'2022-03-08 17:14:13', N'李商隐', N'李商隐', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', N'0', N'7')
GO

INSERT INTO [dbo].[SysUser] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'E225E163-31C9-4DA9-62D7-08DA00E3D8A0', N'2022-03-08 17:15:07', N'2022-03-08 17:15:07', N'苏轼', N'苏轼', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', N'0', N'7')
GO

INSERT INTO [dbo].[SysUser] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'3739F349-7995-4C63-62D8-08DA00E3D8A0', N'2022-03-08 17:17:58', N'2022-03-08 17:17:58', N'白居易', N'白居易', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', N'0', N'7')
GO

INSERT INTO [dbo].[SysUser] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'A3F9784C-5F00-4EC9-62D9-08DA00E3D8A0', N'2022-03-08 17:19:22', N'2022-03-08 17:19:22', N'陶渊明 ', N'陶渊明 ', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', N'0', N'7')
GO

INSERT INTO [dbo].[SysUser] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'A1B6DAFB-2B6A-4FF9-62DA-08DA00E3D8A0', N'2022-03-08 17:19:55', N'2022-03-08 17:19:55', N'屈原', N'屈原', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', N'0', N'7')
GO

INSERT INTO [dbo].[SysUser] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'CC186FE2-EE27-4292-62DB-08DA00E3D8A0', N'2022-03-08 17:20:20', N'2022-03-08 17:20:20', N'孟浩然', N'孟浩然', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', N'0', N'7')
GO

INSERT INTO [dbo].[SysUser] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'1550D6D4-0529-4FDD-62DC-08DA00E3D8A0', N'2022-03-08 17:30:56', N'2022-03-08 17:21:56', N'鲁迅', N'鲁迅', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', N'0', N'7')
GO

INSERT INTO [dbo].[SysUser] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'0198459E-2034-4533-B843-5D227AD20740', N'2022-03-08 17:27:36', N'2017-04-06 19:55:53', N'超级管理员', N'admin', N'E10ADC3949BA59ABBE56E057F20F883E', N'10000000000', N'1396510655@qq.com', N'1', N'7')
GO

INSERT INTO [dbo].[SysUser] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'AC18F496-E93D-42F0-B59E-E321ACC85335', N'2022-03-08 10:12:14', N'2017-04-06 19:55:53', N'李白', N'libai', N'E10ADC3949BA59ABBE56E057F20F883E', N'12345678900', N'12345678900@live.com', N'1', N'7')
GO


-- ----------------------------
-- Table structure for SysUserPost
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysUserPost]') AND type IN ('U'))
	DROP TABLE [dbo].[SysUserPost]
GO

CREATE TABLE [dbo].[SysUserPost] (
  [Id] uniqueidentifier  NOT NULL,
  [UserId] uniqueidentifier  NULL,
  [PostId] uniqueidentifier  NULL,
  [LastModificationTime] datetime2(0)  NULL,
  [CreationTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[SysUserPost] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SysUserPost
-- ----------------------------
INSERT INTO [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'978FC672-D829-4DAD-ABC7-071810C5AD18', N'E225E163-31C9-4DA9-62D7-08DA00E3D8A0', N'E46AF329-6D08-442C-9837-F22CFF954411', N'2022-03-08 17:15:08', N'2022-03-08 17:15:08')
GO

INSERT INTO [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'8100145C-9CD0-49BF-9A62-25C9E508BC1C', N'A1B6DAFB-2B6A-4FF9-62DA-08DA00E3D8A0', N'F0BD38C2-F1DE-4BD9-E2DB-08DA00A93622', N'2022-03-08 17:19:55', N'2022-03-08 17:19:55')
GO

INSERT INTO [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'6133B794-EFC7-4EBC-B7CF-2CF72FA768F8', N'1550D6D4-0529-4FDD-62DC-08DA00E3D8A0', N'F0BD38C2-F1DE-4BD9-E2DB-08DA00A93622', N'2022-04-23 17:55:33', N'2022-04-23 17:55:33')
GO

INSERT INTO [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'575BF085-47BB-42F2-8B68-620CF460B164', N'0198459E-2034-4533-B843-5D227AD20740', N'96927C30-41D0-4CED-8E29-CBED35C90FB0', N'2022-03-08 17:29:22', N'2022-03-08 17:29:22')
GO

INSERT INTO [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'AF1BEC7E-3309-4629-9606-72EEFA1826B3', N'CC186FE2-EE27-4292-62DB-08DA00E3D8A0', N'F0BD38C2-F1DE-4BD9-E2DB-08DA00A93622', N'2022-03-08 17:20:20', N'2022-03-08 17:20:20')
GO

INSERT INTO [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'D4E0AE0B-3573-4901-8FD7-9BB2C88EBE94', N'3739F349-7995-4C63-62D8-08DA00E3D8A0', N'F0BD38C2-F1DE-4BD9-E2DB-08DA00A93622', N'2022-03-08 17:17:58', N'2022-03-08 17:17:58')
GO

INSERT INTO [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'B97331A7-E281-4027-AADE-9F068558826A', N'5722AF0F-2366-4FC9-62D5-08DA00E3D8A0', N'F0BD38C2-F1DE-4BD9-E2DB-08DA00A93622', N'2022-03-08 17:13:02', N'2022-03-08 17:13:02')
GO

INSERT INTO [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'0C1A55BA-6BD3-4810-A494-A6B9B7374D4D', N'AC18F496-E93D-42F0-B59E-E321ACC85335', N'F0BD38C2-F1DE-4BD9-E2DB-08DA00A93622', N'2022-03-08 10:13:35', N'2022-03-08 10:13:35')
GO

INSERT INTO [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'E64EF93C-2CE5-4B1D-A5D0-A9DE937C5A3F', N'E225E163-31C9-4DA9-62D7-08DA00E3D8A0', N'F0BD38C2-F1DE-4BD9-E2DB-08DA00A93622', N'2022-03-08 17:15:07', N'2022-03-08 17:15:07')
GO

INSERT INTO [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'6F671077-C98D-4106-9736-BF2EDB6DB58D', N'4FD6A740-0CF1-4975-62D6-08DA00E3D8A0', N'E46AF329-6D08-442C-9837-F22CFF954411', N'2022-03-08 17:14:13', N'2022-03-08 17:14:13')
GO

INSERT INTO [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'6C34F115-28DD-441A-81D5-F6598C97D44A', N'A3F9784C-5F00-4EC9-62D9-08DA00E3D8A0', N'F0BD38C2-F1DE-4BD9-E2DB-08DA00A93622', N'2022-03-08 17:19:22', N'2022-03-08 17:19:22')
GO

INSERT INTO [dbo].[SysUserPost] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'B797FF16-D6F7-45DB-83EC-F910B2612926', N'4FD6A740-0CF1-4975-62D6-08DA00E3D8A0', N'F0BD38C2-F1DE-4BD9-E2DB-08DA00A93622', N'2022-03-08 17:14:13', N'2022-03-08 17:14:13')
GO


-- ----------------------------
-- Table structure for SysUserRole
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SysUserRole]') AND type IN ('U'))
	DROP TABLE [dbo].[SysUserRole]
GO

CREATE TABLE [dbo].[SysUserRole] (
  [Id] uniqueidentifier  NOT NULL,
  [UserId] uniqueidentifier  NULL,
  [RoleId] uniqueidentifier  NULL,
  [LastModificationTime] datetime2(0)  NULL,
  [CreationTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[SysUserRole] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SysUserRole
-- ----------------------------
INSERT INTO [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'AD5014F2-92E8-4109-9CA4-013A92390F8B', N'CC186FE2-EE27-4292-62DB-08DA00E3D8A0', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'2022-03-08 17:20:20', N'2022-03-08 17:20:20')
GO

INSERT INTO [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'CE9F61AC-79D8-426F-9066-36962C017BF6', N'5722AF0F-2366-4FC9-62D5-08DA00E3D8A0', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'2022-03-08 17:13:02', N'2022-03-08 17:13:02')
GO

INSERT INTO [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'A646DEF7-0581-4CE9-947E-400360C339F9', N'A1B6DAFB-2B6A-4FF9-62DA-08DA00E3D8A0', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'2022-03-08 17:19:55', N'2022-03-08 17:19:55')
GO

INSERT INTO [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'DBC656A6-4264-417D-97D8-577E1218FECA', N'A3F9784C-5F00-4EC9-62D9-08DA00E3D8A0', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'2022-03-08 17:19:22', N'2022-03-08 17:19:22')
GO

INSERT INTO [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'1FE23F57-97C5-4670-9064-88D7D972CD28', N'E225E163-31C9-4DA9-62D7-08DA00E3D8A0', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'2022-03-08 17:15:07', N'2022-03-08 17:15:07')
GO

INSERT INTO [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'A9F8A23B-8C2F-43CC-97AF-8ED6F4C4D097', N'4FD6A740-0CF1-4975-62D6-08DA00E3D8A0', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'2022-03-08 17:14:13', N'2022-03-08 17:14:13')
GO

INSERT INTO [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'66472DEB-3A40-4E48-B3E7-931E166F9D56', N'1550D6D4-0529-4FDD-62DC-08DA00E3D8A0', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'2022-04-23 17:55:33', N'2022-04-23 17:55:33')
GO

INSERT INTO [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'45B7D5AF-4D2C-465E-A4B6-99E52AF9AEE5', N'3739F349-7995-4C63-62D8-08DA00E3D8A0', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'2022-03-08 17:17:58', N'2022-03-08 17:17:58')
GO

INSERT INTO [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'1C9F81DF-C8A0-45BB-A272-C84BD3AF0C19', N'0198459E-2034-4533-B843-5D227AD20740', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'2022-03-08 17:29:22', N'2022-03-08 17:29:22')
GO

INSERT INTO [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'FA1FDF14-3847-4194-894C-CD935A3DD9E6', N'AC18F496-E93D-42F0-B59E-E321ACC85335', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'2022-03-08 10:13:35', N'2022-03-08 10:13:35')
GO


-- ----------------------------
-- Primary Key structure for table Flow
-- ----------------------------
ALTER TABLE [dbo].[Flow] ADD CONSTRAINT [PK__flow__3214EC07BC64B717] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table FlowApproval
-- ----------------------------
ALTER TABLE [dbo].[FlowApproval] ADD CONSTRAINT [PK__FlowAppr__3214EC07D0DB8D96] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table FlowApprovalStep
-- ----------------------------
ALTER TABLE [dbo].[FlowApprovalStep] ADD CONSTRAINT [PK__FlowAppr__3214EC0754EDFF34] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table FlowApprovalStepUser
-- ----------------------------
ALTER TABLE [dbo].[FlowApprovalStepUser] ADD CONSTRAINT [PK_FlowApprovalStepUser] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table FlowNode
-- ----------------------------
ALTER TABLE [dbo].[FlowNode] ADD CONSTRAINT [PK__flownode__3214EC07319731E2] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table LowCodeList
-- ----------------------------
ALTER TABLE [dbo].[LowCodeList] ADD CONSTRAINT [PK_Low_Code_List] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table LowCodeSearch
-- ----------------------------
ALTER TABLE [dbo].[LowCodeSearch] ADD CONSTRAINT [PK_Low_Code_Search] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table LowCodeTable
-- ----------------------------
ALTER TABLE [dbo].[LowCodeTable] ADD CONSTRAINT [PK_Low_Code_Table] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table LowCodeTableInfo
-- ----------------------------
ALTER TABLE [dbo].[LowCodeTableInfo] ADD CONSTRAINT [PK_Low_Code_Table_Info] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Member
-- ----------------------------
ALTER TABLE [dbo].[Member] ADD CONSTRAINT [Member_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table News
-- ----------------------------
ALTER TABLE [dbo].[News] ADD CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SysDataAuthority
-- ----------------------------
ALTER TABLE [dbo].[SysDataAuthority] ADD CONSTRAINT [PK_DataAuthority] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SysDataAuthorityCustom
-- ----------------------------
ALTER TABLE [dbo].[SysDataAuthorityCustom] ADD CONSTRAINT [PK_SysDataAuthorityCustom] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for SysDictionary
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[SysDictionary]', RESEED, 3)
GO


-- ----------------------------
-- Primary Key structure for table SysFunction
-- ----------------------------
ALTER TABLE [dbo].[SysFunction] ADD CONSTRAINT [SysFunction_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for SysMenu
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[SysMenu]', RESEED, 36)
GO


-- ----------------------------
-- Primary Key structure for table SysMenu
-- ----------------------------
ALTER TABLE [dbo].[SysMenu] ADD CONSTRAINT [SysMenu_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SysMenuFunction
-- ----------------------------
ALTER TABLE [dbo].[SysMenuFunction] ADD CONSTRAINT [SysMenuFunction_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SysOperationLog
-- ----------------------------
ALTER TABLE [dbo].[SysOperationLog] ADD CONSTRAINT [PK__SysOpera__3214EC0743ACCFCD] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for SysOrganization
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[SysOrganization]', RESEED, 11)
GO


-- ----------------------------
-- Primary Key structure for table SysOrganization
-- ----------------------------
ALTER TABLE [dbo].[SysOrganization] ADD CONSTRAINT [SysOrganization_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SysPost
-- ----------------------------
ALTER TABLE [dbo].[SysPost] ADD CONSTRAINT [SysPost_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SysRole
-- ----------------------------
ALTER TABLE [dbo].[SysRole] ADD CONSTRAINT [SysRole_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SysRoleMenuFunction
-- ----------------------------
ALTER TABLE [dbo].[SysRoleMenuFunction] ADD CONSTRAINT [SysRoleMenuFunction_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SysUser
-- ----------------------------
ALTER TABLE [dbo].[SysUser] ADD CONSTRAINT [SysUser_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SysUserPost
-- ----------------------------
ALTER TABLE [dbo].[SysUserPost] ADD CONSTRAINT [SysUserPost_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SysUserRole
-- ----------------------------
ALTER TABLE [dbo].[SysUserRole] ADD CONSTRAINT [SysUserRole_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO
