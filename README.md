# TP5
仅供 thinkphp 5.0 学习

################ 安装框架 ################
首先克隆下载应用项目仓库：
git clone https://github.com/top-think/think tp5

然后切换到tp5目录下面，再克隆核心框架仓库：
git clone https://github.com/top-think/framework thinkphp

两个仓库克隆完成后，就完成了ThinkPHP5.0的Git方式下载，
如果需要更新应用项目的时候，
git pull https://github.com/top-think/think

如果需要更新核心框架的时候，只需要切换到thinkphp核心目录下面，然后执行：
git pull https://github.com/top-think/framework


################## 目录结构 ################
目录结构：
├─think           应用目录
│  ├─thinkphp     新核心框架目录，如果需要更新的话切换到改目录，然后 git pull https://github.com/top-think/framework
├─html            前端代码


############# think目录结构 ################
think初始的目录结构如下：
WEB部署目录（或者子目录）
├─application           应用目录
│  ├─common             公共模块目录（可以更改）
│  ├─module_name        模块目录
│  │  ├─config.php      模块配置文件
│  │  ├─common.php      模块函数文件
│  │  ├─controller      控制器目录
│  │  ├─model           模型目录
│  │  ├─view            视图目录
│  │  └─ ...            更多类库目录
│  │
│  ├─command.php        命令行工具配置文件
│  ├─common.php         公共函数文件
│  ├─config.php         公共配置文件
│  ├─route.php          路由配置文件
│  ├─tags.php           应用行为扩展定义文件
│  └─database.php       数据库配置文件
│
├─public                WEB目录（对外访问目录）
│  ├─index.php          入口文件
│  ├─router.php         快速测试文件
│  └─.htaccess          用于apache的重写
│
├─thinkphp              框架系统目录
│  ├─lang               语言文件目录
│  ├─library            框架类库目录
│  │  ├─think           Think类库包目录
│  │  └─traits          系统Trait目录
│  │
│  ├─tpl                系统模板目录
│  ├─base.php           基础定义文件
│  ├─console.php        控制台入口文件
│  ├─convention.php     框架惯例配置文件
│  ├─helper.php         助手函数文件
│  ├─phpunit.xml        phpunit配置文件
│  └─start.php          框架入口文件
│
├─extend                扩展类库目录
├─runtime               应用的运行时目录（可写，可定制）
├─vendor                第三方类库目录（Composer依赖库）
├─build.php             自动生成定义文件（参考）
├─composer.json         composer 定义文件
├─LICENSE.txt           授权说明文件
├─README.md             README 文件
├─think                 命令行入口文件

router.php用于php自带webserver支持，可用于快速测试 切换到public目录后，启动命令：php -S localhost:8888 router.php 上面的目录结构和名称是可以改变的，这取决于你的入口文件和配置参数。
