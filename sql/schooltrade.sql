-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-04-27 15:27:39
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `schooltrade`
--

-- --------------------------------------------------------

--
-- 表的结构 `goods`
--

CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `price` decimal(11,0) NOT NULL COMMENT '价格',
  `state` tinyint(1) NOT NULL COMMENT '是否上架',
  `info` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT '商品描述',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `category_id` int(11) NOT NULL COMMENT '商品分类',
  `conditions` int(11) NOT NULL COMMENT '新旧程度',
  `userid` int(11) NOT NULL COMMENT '用户'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `goods`
--

INSERT INTO `goods` (`id`, `name`, `price`, `state`, `info`, `create_time`, `category_id`, `conditions`, `userid`) VALUES
(1, '卡西欧 G-SHOCK电子表G5600A', '450', 0, '买了新表这个表在家吃灰中', '2020-04-27 00:06:32', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `goods_category`
--

CREATE TABLE `goods_category` (
  `Id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '分类名'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `goods_category`
--

INSERT INTO `goods_category` (`Id`, `name`) VALUES
(1, '图书'),
(2, '电脑'),
(3, '手机'),
(4, '电器'),
(5, '衣服'),
(6, '其他');

-- --------------------------------------------------------

--
-- 表的结构 `goods_conditions`
--

CREATE TABLE `goods_conditions` (
  `Id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '新旧程度'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `goods_conditions`
--

INSERT INTO `goods_conditions` (`Id`, `name`) VALUES
(5, '全新'),
(6, '二手');

-- --------------------------------------------------------

--
-- 表的结构 `goods_pic`
--

CREATE TABLE `goods_pic` (
  `Id` int(11) NOT NULL COMMENT '图片表',
  `goods_id` int(11) DEFAULT NULL,
  `pic1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count` int(11) DEFAULT '0' COMMENT '图片数量'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `goods_state`
--

CREATE TABLE `goods_state` (
  `Id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '是否上架'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `goods_state`
--

INSERT INTO `goods_state` (`Id`, `name`) VALUES
(1, '已上架'),
(2, '未上架');

-- --------------------------------------------------------

--
-- 表的结构 `goods_tag`
--

CREATE TABLE `goods_tag` (
  `Id` int(11) NOT NULL COMMENT '标签',
  `tag1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `flag` tinyint(4) DEFAULT NULL COMMENT '是否管理员',
  `phone` int(11) NOT NULL,
  `regtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '注册时间',
  `avatar` varchar(30) NOT NULL COMMENT '头像',
  `sex` int(11) NOT NULL COMMENT '性别'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `flag`, `phone`, `regtime`, `avatar`, `sex`) VALUES
(2, 'admin', 'admin', 1, 0, '2020-04-24 13:44:07', '', 0),
(3, 'wjh', 'wjh', 0, 0, '2020-04-24 13:44:07', '', 0),
(4, 'zs', 'zs', 0, 0, '2020-04-24 13:44:07', '', 0);

--
-- 转储表的索引
--

--
-- 表的索引 `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `goods_category`
--
ALTER TABLE `goods_category`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `goods_conditions`
--
ALTER TABLE `goods_conditions`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `goods_pic`
--
ALTER TABLE `goods_pic`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `goods_state`
--
ALTER TABLE `goods_state`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `goods_tag`
--
ALTER TABLE `goods_tag`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `goods_category`
--
ALTER TABLE `goods_category`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `goods_conditions`
--
ALTER TABLE `goods_conditions`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `goods_pic`
--
ALTER TABLE `goods_pic`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '图片表';

--
-- 使用表AUTO_INCREMENT `goods_state`
--
ALTER TABLE `goods_state`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `goods_tag`
--
ALTER TABLE `goods_tag`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标签';

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
