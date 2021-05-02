# 校园闲置平台

设计一个校园闲置物品交易系统，为在校师生提供闲置物品发布、物品查询、物品交易等功能。
本项目有三个版本：
+ 纯HTML版本(html)
+ 使用PHP编写的(think)
+ 使用JAVA编写的(javaweb和ssm)


## Summary

  - [Getting Started](#getting-started)
  - [Runing the tests](#running-the-tests)
  - [Deployment](#deployment)
  - [Built With](#built-with)
  - [Contributing](#contributing)
  - [Versioning](#versioning)
  - [Authors](#authors)
  - [License](#license)
  - [Acknowledgments](#acknowledgments)

## Getting Started

+ IoC容器:spring

+ web框架:springmvc
(PHP版为ThinkPHP)

+ orm框架:mybatis

+ 安全框架:未有

+ 数据源:dbcp2

+ 日志: log4j

+ Json: Gson

+ 前端框架:LayUI

### Prerequisites

环境搭建说明：
>JAVA版
+ 开发环境为jdk1.8，基于maven构建；
+ 使用eclipase或Intellij Idea开发(推荐使用Intellij Idea)
+ 基于SpringBoot搭建，大大简化了配置操作。
+ 本项目使用了lombok,在查看本项目时如果您没有下载lombok 插件，请先安装,不然找不到get/set方法；

+ apache-tomcat-9.0.38
+ mysql-5.7.32-winx64

>PHP版
+ php-7.2.34-Win32-VC15-x64
+ mysql-5.7.32-winx64





### Installing
4)运行

1. 初始化项目

    1) 下载Mysql,创建一个数据库名字为schooltrade,导入sql即可
    
    2) 下载Tomcat(PHP版推荐使用PHPStudy)
    
    3) 使用IDE导入项目,之后配置项目启动方式,使用刚才下载好的Tomcat


## Deployment

1. 权限介绍：
1) 管理员，账户为admin,密码为admin

2. 功能介绍：

1)用户可以进行登录注册进入系统
![image](https://raw.githubusercontent.com/hhyygg2009/schooltrade/master/images/my.png)

2)进入系统之后可以通过搜索，个人中心功能来浏览别人的信息、还有发布自己的商品信息
![image](https://raw.githubusercontent.com/hhyygg2009/schooltrade/master/images/search.png)
![image](https://raw.githubusercontent.com/hhyygg2009/schooltrade/master/images/release.png)
