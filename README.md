### 技术选型

#### 管理
* maven依赖和项目管理
* git版本控制

#### 后端
* IoC容器 spring
* web框架 springmvc
* orm框架 hibernate + spring data jpa
* 安全框架 shiro
* 验证框架 hibernate validator
* 任务调度框架 quartz
* 缓存 ehcache
* 数据源 druid
* 日志 slf4j+logback
* Json fastjson
* 日期美化 prettytime
* servlet 3.0(需要支持servlet3的servlet容器，如tomcat7)
* jcaptcha 验证码
* jsp 模板视图

#### 前端
* jquery js框架
* jquery-ui-bootstrap界面框架
* font-wesome 字体/图标框架
* jquery Validation Engine 验证框架（配合spring的验证框架，页面验证简化不少）
* kindeditor 编辑器
* nicescroll 漂亮的滚动条
* zTree 树框架
* jquery blockUI 弹出框/遮罩框架
* jquery-fileupload 文件上传
* bootstrap-datatimepicker 日历选择

#### 数据库
 * 目前只支持mysql，建议mysql5.5及以上


###支持的浏览器
 * chrome
 * firefox（目前使用firefox 19.0.2测试）
 * opera 12
 * ie7及以上（建议ie9以上，获取更好的体验）
 * 其他浏览器暂时未测试



##如何运行

####1、到assist/web/pom.xml修改数据库配置：
*  默认修改：profiles/profile/development下的
*  connection.admin.url
*  connection.username
*  connection.password

####2、到项目的根下(assist)
* cd bin
* install.bat 安装jar包到本地仓库（jdk6即可）
* create-db.bat 创建数据库（mysql需要5.5及以上 编码为utf-8）
* refresh-db.bat 创建schema和初始化data
* jetty.bat 启动web应用 默认端口9080 可以到assist/web/pom.xml下修改（servlet 2.5即可）
* 系统默认帐户是admin/123456

