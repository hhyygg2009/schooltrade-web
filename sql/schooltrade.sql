/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : schooltrade

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2020-04-29 21:03:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `pic_id` int(11) NOT NULL,
  `price` decimal(11,0) NOT NULL COMMENT '价格',
  `state` tinyint(1) NOT NULL COMMENT '是否上架',
  `info` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT '商品描述',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `category_id` int(11) NOT NULL COMMENT '商品分类',
  `conditions` int(11) NOT NULL COMMENT '新旧程度',
  `userid` int(11) NOT NULL COMMENT '用户',
  `wechat` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('20', '标题', '0', '250', '0', '<p>富文本编辑器</p>', '2020-04-29 21:01:43', '6', '5', '0', '微信');

-- ----------------------------
-- Table structure for goods_category
-- ----------------------------
DROP TABLE IF EXISTS `goods_category`;
CREATE TABLE `goods_category` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '分类名',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of goods_category
-- ----------------------------
INSERT INTO `goods_category` VALUES ('1', '图书');
INSERT INTO `goods_category` VALUES ('2', '电脑');
INSERT INTO `goods_category` VALUES ('3', '手机');
INSERT INTO `goods_category` VALUES ('4', '电器');
INSERT INTO `goods_category` VALUES ('5', '衣服');
INSERT INTO `goods_category` VALUES ('6', '其他');

-- ----------------------------
-- Table structure for goods_conditions
-- ----------------------------
DROP TABLE IF EXISTS `goods_conditions`;
CREATE TABLE `goods_conditions` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '新旧程度',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of goods_conditions
-- ----------------------------
INSERT INTO `goods_conditions` VALUES ('5', '全新');
INSERT INTO `goods_conditions` VALUES ('6', '二手');

-- ----------------------------
-- Table structure for goods_pic
-- ----------------------------
DROP TABLE IF EXISTS `goods_pic`;
CREATE TABLE `goods_pic` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `pic1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count` int(11) DEFAULT '0' COMMENT '图片数量',
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of goods_pic
-- ----------------------------
INSERT INTO `goods_pic` VALUES ('9', 'uploads/2020/04/29/5ea97aa687efe.jpg', null, null, '1');

-- ----------------------------
-- Table structure for goods_state
-- ----------------------------
DROP TABLE IF EXISTS `goods_state`;
CREATE TABLE `goods_state` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '是否上架',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of goods_state
-- ----------------------------
INSERT INTO `goods_state` VALUES ('1', '已上架');
INSERT INTO `goods_state` VALUES ('2', '未上架');

-- ----------------------------
-- Table structure for goods_tag
-- ----------------------------
DROP TABLE IF EXISTS `goods_tag`;
CREATE TABLE `goods_tag` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标签',
  `tag1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of goods_tag
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `flag` tinyint(4) DEFAULT NULL COMMENT '是否管理员',
  `phone` int(11) NOT NULL,
  `regtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '注册时间',
  `avatar` varchar(30) NOT NULL COMMENT '头像',
  `sex` int(11) NOT NULL COMMENT '性别',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', 'admin', 'admin', '1', '0', '2020-04-24 21:44:07', '', '0');
INSERT INTO `user` VALUES ('3', 'wjh', 'wjh', '0', '0', '2020-04-24 21:44:07', '', '0');
INSERT INTO `user` VALUES ('4', 'zs', 'zs', '0', '0', '2020-04-24 21:44:07', '', '0');
