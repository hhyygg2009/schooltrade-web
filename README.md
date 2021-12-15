# 校园闲置平台

<p>
  <a href="https://github.com/hhyygg2009"><img src="https://img.shields.io/badge/%E5%85%AC%E4%BC%97%E5%8F%B7-hhyygg2009-blue" alt="作者GITHUB"></a>
  <a href="https://gitee.com/hhyygg"><img src="https://img.shields.io/badge/%E7%A0%81%E4%BA%91-%E9%A1%B9%E7%9B%AE%E5%9C%B0%E5%9D%80-orange" alt="码云"></a>
</p>

## 项目介绍

校园闲置物品交易系统，为在校师生提供闲置物品发布、物品查询、物品交易等功能。 本项目有两个版本：

+ [PHP版](https://gitee.com/hhyygg/schooltrade-java)
+ [JAVA版](https://gitee.com/hhyygg/schooltrade-php)

## 目录

- [项目的技术栈](#项目的技术栈)
- [项目功能介绍](#项目功能介绍)
- [项目运行环境](#项目运行环境)
- [部署项目](#部署项目)

## 项目的技术栈

+ IOC容器: Spring

+ Web框架: SpringMVC

+ ORM框架: Mybatis

+ 安全框架: SpringSecurity

+ 数据源: Druid

+ 日志: SLF4J

+ Json: FastJson

+ 前端框架:LayUI

## 项目功能介绍

1) 首页
   进入系统之后可以通过搜索，个人中心功能来浏览别人的信息、还有发布自己的商品信息
   查看其它用户发布的物品信息。
   ![image](https://raw.githubusercontent.com/hhyygg2009/schooltrade-java/master/images/search.png)
2) 发布物品界面，发布自己的物品信息
 ![image](https://raw.githubusercontent.com/hhyygg2009/schooltrade-java/master/images/release.png)
3) 用户个人页面
   管理用户发布的闲置物品
   ![image](https://raw.githubusercontent.com/hhyygg2009/schooltrade-java/master/images/my.png)

## 项目运行环境

> 开发环境说明

+ 开发环境为JDK11，基于maven构建；
+ IDE使用IntelliJ IDEA开发
+ 基于SpringBoot搭建，大大简化了配置操作。
+ 本项目使用了lombok,在查看本项目时如果您没有下载lombok 插件，请先安装,不然找不到get/set方法；

> 运行环境说明

+ JRE11
+ MySQL-5.7

## 部署项目

- 配置环境、初始化项目

    1) 配置好MySQL,创建一个数据库名字为schooltrade,导入db\schooltrade-base.sql

    2) 以Jar方式部署项目


- 权限介绍&内置账户：

1) 管理员用户，默认账户为admin,密码为admin

