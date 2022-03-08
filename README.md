# HzyAdmin

### MVC版本
    https://gitee.com/hzy6/HzyAdmin/tree/MVC/

###   文档
    https://gitee.com/hzy6/HzyAdmin/wikis/pages

#### WebApi 任务调度平台
    https://gitee.com/hzy6/hzy-quartz

#### 📝  介绍 
前后分离,后台通配权限管理系统！

    数据库脚本位置根目录 doc 文件夹

    后端技术：.Net6、EFCore6、Swagger 、Redis
    
    前端：Vue3.x 、Antd Of Vue 3.0 、Vite
    
    #### 软件架构
    开发需要环境：vs2022 、 .Net6.0 、VsCode 、Redis
    
    交流群: 534584927

### 功能列表

    系统管理            开发工具
        账户管理            接口文档
        角色管理            定时任务
        功能管理            代码生成
        菜单管理
        个人中心
        岗位管理
        组织机构
        数据字典
        操作日志
        数据权限

### 目录结构
![输入图片说明](https://images.gitee.com/uploads/images/2021/1111/110155_2e2c13f4_1242080.png "屏幕截图.png")

#### ✨  特技 
| ![输入图片说明](gitee/images/DataAuthority.png) | ![输入图片说明](gitee/images/function.png) |
|-------------------------------------------|---|

| ![输入图片说明](gitee/images/MenuInfo.png) | ![输入图片说明](gitee/images/menu_function.png)  |
|--------------------------------------|---|

| ![输入图片说明](gitee/images/image.png) | ![输入图片说明](gitee/images/icons.png)  |
|-----------------------------------|---|

| ![输入图片说明](gitee/images/chart.png) | ![输入图片说明](gitee/images/%E6%9B%B4%E5%A4%9A%E5%9B%BE%E8%A1%A8.png)  |
|-----------------------------------|---|

| ![输入图片说明](gitee/images/user_list.png) | ![输入图片说明](gitee/images/wangeditor.png)   |
|---------------------------------------|---|

| ![输入图片说明](gitee/images/code_gen.png) | ![输入图片说明](gitee/images/user_center.png)  |
|--------------------------------------|---|

![输入图片说明](gitee/images/login.png)


#### 安装前提

前端 ui 参考地址：https://gitee.com/hzy6/hzy-admin-spa-ui

1、安装 nodejs

2、安装 Vite

#### 安装教程

1. 前端 UI 在项目跟目录下 hzy-admin-clientapp 使用 VS Code 打开
2. VS Code 打开终端执行CMD命令>> cnpm install 拉包 （node 环境 这些不懂得自行百度查询资料！）
3. 然后使用 Vs 2019 打开服务端代码 f5 调试模式 运行即可
注意：![输入图片说明](https://images.gitee.com/uploads/images/2019/1224/131124_8c2c3463_1242080.png "屏幕截图.png")

请使用这种独立模式启动，不要使用 iis 模式


4、命令 npm run build 打包后使用 iis 或者 nginx 部署前端 ui