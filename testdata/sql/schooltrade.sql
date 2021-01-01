/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3306
 Source Schema         : schooltrade

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 01/01/2021 20:03:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '分类名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '图书');
INSERT INTO `category` VALUES (2, '电脑');
INSERT INTO `category` VALUES (3, '手机');
INSERT INTO `category` VALUES (4, '电器');
INSERT INTO `category` VALUES (5, '衣服');
INSERT INTO `category` VALUES (0, '其他');

-- ----------------------------
-- Table structure for conditions
-- ----------------------------
DROP TABLE IF EXISTS `conditions`;
CREATE TABLE `conditions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '新旧程度',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of conditions
-- ----------------------------
INSERT INTO `conditions` VALUES (0, '全新');
INSERT INTO `conditions` VALUES (1, '二手');
INSERT INTO `conditions` VALUES (2, '可借');

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `price` decimal(11, 0) NOT NULL COMMENT '价格',
  `info` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '商品描述',
  `createTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `state_id` int(11) NOT NULL DEFAULT 0 COMMENT '是否上架',
  `category_id` int(11) NOT NULL DEFAULT 0 COMMENT '商品分类',
  `conditions_id` int(11) NOT NULL DEFAULT 0 COMMENT '新旧程度',
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '所属用户',
  `pic1` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pic2` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pic3` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES (25, 'Redmi Note', 1299, 'Redmi Note8Pro 6400万全场景四摄 液冷游戏芯 4500mAh长续航 NFC 18W快充 红外遥控 6GB+128GB 冰翡翠 游戏智能手机 小米 红米', '2020-01-02 16:35:45', 0, 0, 0, 1, 'up/test/pic/f1b6954d52a2ff66.jpg', NULL, NULL);
INSERT INTO `item` VALUES (24, 'Redmi Note', 1599, 'Redmi Note 9 Pro 5G 一亿像素 骁龙750G 33W快充 120Hz刷新率 碧海星辰?6GB+128GB 游戏智能手机 小米 红米', '2020-01-02 16:35:45', 0, 0, 0, 1, 'up/test/pic/f8a1e0e877908389.jpg', NULL, NULL);
INSERT INTO `item` VALUES (23, 'vivo iQOO ', 1798, 'vivo iQOO Z1x 水漾白 6GB+128GB 骁龙765G 120Hz竞速屏 5000mAh超大电池 双模5G全网通手机 iqooz1x', '2020-01-02 16:35:45', 0, 0, 0, 1, 'up/test/pic/ac2e400e42e5db33.jpg', NULL, NULL);
INSERT INTO `item` VALUES (21, 'Apple iPho', 6799, 'Apple iPhone 12 (A2404) 128GB 白色 支持移动联通电信5G 双卡双待手机', '2020-01-02 16:35:45', 0, 0, 0, 1, 'up/test/pic/c5dc348d3f943324.jpg', NULL, NULL);
INSERT INTO `item` VALUES (22, 'Redmi 10X ', 1499, 'Redmi 10X 5G 天玑820 双5G待机 4800万流光相机 水滴全面屏 6GB+128GB 深海蓝 游戏智能手机 小米 红米【这就是街舞】', '2020-01-02 16:35:45', 0, 0, 0, 1, 'up/test/pic/8bc36e84ae221109.jpg', NULL, NULL);
INSERT INTO `item` VALUES (19, '华为mate40pr', 7899, '华为mate40pro  5G手机 亮黑色 8+256G全网通（碎屏险套餐）', '2020-01-02 16:35:45', 0, 0, 0, 1, 'up/test/pic/5a92e55a4db85053.jpg', NULL, NULL);
INSERT INTO `item` VALUES (20, 'Redmi K30 ', 1799, 'Redmi K30 5G双模 120Hz流速屏 骁龙765G 前置挖孔双摄 索尼6400万后置四摄 30W快充?8GB+128GB 深海微光 游戏智能手机 小米 红米', '2020-01-02 16:35:45', 0, 0, 0, 1, 'up/test/pic/0c930ccc45462cfd.jpg', NULL, NULL);
INSERT INTO `item` VALUES (18, 'Redmi 9 全场', 799, 'Redmi 9 全场景AI四摄 高性能游戏芯 4GB+64GB 碳素黑 游戏智能手机 小米 红米', '2020-01-02 16:35:45', 0, 0, 0, 1, 'up/test/pic/f26df22c9c524d65.jpg', NULL, NULL);
INSERT INTO `item` VALUES (17, '小米红米9A 智能老', 625, '小米红米9A 智能老人手机 晴空蓝 全网通4G+64G', '2020-01-02 16:35:45', 0, 0, 0, 1, 'up/test/pic/b3019dc8445ddffd.jpg', NULL, NULL);
INSERT INTO `item` VALUES (16, 'vivo iQOO ', 2998, 'vivo iQOO Neo3 5G 8GB+128GB 夜幕黑 高通骁龙865 144Hz竞速屏 立体双扬 44W闪充 双模5G全网通手机', '2020-01-02 16:35:45', 0, 0, 0, 1, 'up/test/pic/1c233f664015b793.jpg', NULL, NULL);
INSERT INTO `item` VALUES (15, 'vivo iQOO ', 999, 'vivo iQOO U1x 6GB+64GB 晨霜白 5000mAh大电池 骁龙662处理器 AI全场景三摄 全网通大屏拍照手机iqoou1x', '2020-01-02 16:35:44', 0, 0, 0, 1, 'up/test/pic/0e466d15f51bf6d9.jpg', NULL, NULL);
INSERT INTO `item` VALUES (14, 'OPPO A52 5', 1399, 'OPPO A52 5000mAh超大电池 长续航 18W疾速快充  星阵AI四摄 美颜拍照游戏智能手机 8GB+128GB 黑色', '2020-01-02 16:35:44', 0, 0, 0, 1, 'up/test/pic/63faf2ba58f13bbc.jpg', NULL, NULL);
INSERT INTO `item` VALUES (13, 'vivo iQOO ', 999, 'vivo iQOO U1x 6GB+64GB 曜光黑 5000mAh大电池 骁龙662处理器 AI全场景三摄 全网通大屏拍照手机iqoou1x', '2020-01-02 16:35:44', 0, 0, 0, 1, 'up/test/pic/1573ad521cba1ac6.jpg', NULL, NULL);
INSERT INTO `item` VALUES (12, 'Redmi Note', 1099, 'Redmi Note 9 4G 6000mAh大电池 骁龙662处理器  18W快充 羽墨黑 6GB+128GB 游戏智能手机 小米 红米', '2020-01-02 16:35:44', 0, 0, 0, 1, 'up/test/pic/67c387e1d0dc5c83.jpg', NULL, NULL);
INSERT INTO `item` VALUES (11, '京品手机	\n荣耀9X', 1399, '京品手机	\n荣耀9X PRO 麒麟810液冷散热 4000mAh超强续航 4800万三摄 6.59英寸全网通6GB+64GB 幻影紫HLK-AL10', '2020-01-02 16:35:44', 0, 0, 0, 1, 'up/test/pic/f014714d0c8c1382.jpg', NULL, NULL);
INSERT INTO `item` VALUES (9, 'Redmi 10X ', 999, 'Redmi 10X 4G Helio G85游戏芯 4800万超清四摄 5020mAh大电量 小孔全面屏 128GB大存储 4GB+128GB 天际蓝 游戏智能手机 小米 红米【这就是街舞】', '2020-01-02 16:35:44', 0, 0, 0, 1, 'up/test/pic/c00a373623f3eb2e.jpg', NULL, NULL);
INSERT INTO `item` VALUES (8, 'realme 真我V', 1399, 'realme 真我V5 4800万四摄 5000mAh长续航 双模5G 青出于蓝 6GB+128GB  30W闪充手机 OPPO提供售后支持', '2020-01-02 16:35:44', 0, 0, 0, 1, 'up/test/pic/ad4f65a710030c95.jpg', NULL, NULL);
INSERT INTO `item` VALUES (6, 'Redmi 9A 5', 799, 'Redmi 9A 5000mAh 1300万AI相机 八核处理器 人脸解锁 4GB+128GB 晴空蓝 游戏智能手机 小米 红米', '2020-01-02 16:35:44', 0, 0, 0, 1, 'up/test/pic/5b55cad02074e77f.jpg', NULL, NULL);
INSERT INTO `item` VALUES (7, '柔宇ROYOLE F', 11588, '柔宇ROYOLE FlexPai 2 新一代5G双模折叠屏手机 骁龙865旗舰四摄 类镜面平整度 柔派2 12GB+512GB 星空灰', '2020-01-02 16:35:44', 0, 0, 0, 1, 'up/test/pic/ec45a1e09aa623ee.jpg', NULL, NULL);
INSERT INTO `item` VALUES (5, '京品手机	\nreal', 1299, '京品手机	\nrealme 真我Q2 4800万像素 120Hz畅速屏 双5G天玑800U 冲浪蓝孩 6GB+128GB 30W闪充 手机 OPPO提供售后支持', '2020-01-02 16:35:44', 0, 0, 0, 1, 'up/test/pic/bb4d854e230a6b2c.jpg', NULL, NULL);
INSERT INTO `item` VALUES (3, 'OPPO K7x 双', 1499, 'OPPO K7x 双模5G 4800万四摄 5000mAh长续航 90Hz电竞屏  黑镜6GB+128GB 30W闪充全网通手机', '2020-01-02 16:35:44', 0, 0, 0, 1, 'up/test/pic/beb55f6d1d3221b5.jpg', NULL, NULL);
INSERT INTO `item` VALUES (4, 'Redmi K30 ', 1499, 'Redmi K30 王一博同款 120Hz流速屏 前置挖孔双摄 索尼6400万后置四摄 4500mAh超长续航 27W快充 8GB+128GB 紫玉幻境 游戏智能手机 小米 红米', '2020-01-02 16:35:44', 0, 0, 0, 1, 'up/test/pic/5a6dbbae3533292e.jpg', NULL, NULL);
INSERT INTO `item` VALUES (2, 'Redmi 8A 5', 699, 'Redmi 8A 5000mAh大电量 大字体大音量大内存 骁龙八核处理器 AI人脸解锁 莱茵护眼全面屏 4GB+64GB 耀夜黑 游戏智能老人手机 小米 红米', '2020-01-02 16:35:44', 0, 0, 0, 1, 'up/test/pic/68d0ac29ce4a326d.jpg', NULL, NULL);
INSERT INTO `item` VALUES (1, '柔宇ROYOLE F', 9988, '柔宇ROYOLE FlexPai 2 新一代5G双模折叠屏手机 骁龙865旗舰四摄 类镜面平整度 柔派2 星空灰8GB+256GB', '2020-01-02 16:35:44', 0, 0, 0, 1, 'up/test/pic/9961aa2e89b65edb.jpg', NULL, NULL);
INSERT INTO `item` VALUES (37, '联想笔记本', 3000, '联想笔记本，只用了半年。换新的笔记本了，所以出售', '2020-12-29 21:22:37', 0, 2, 0, 2, '20211229/4a8f23107b0045df9800fab1526ff05c.jpg', '20211229/4d421c547d7d4485a0b9991b82534381.jpg', NULL);

-- ----------------------------
-- Table structure for state
-- ----------------------------
DROP TABLE IF EXISTS `state`;
CREATE TABLE `state`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '是否上架',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of state
-- ----------------------------
INSERT INTO `state` VALUES (0, '已上架');
INSERT INTO `state` VALUES (1, '未上架');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `flag` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否管理员',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `regtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '注册时间',
  `avatar` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'up/touxiang_default.jpg' COMMENT '头像',
  `sex` int(11) NOT NULL COMMENT '性别',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 0, '18922222123', '2020-12-29 13:11:19', '20211229/9544f489b0b141dab35908d37d7d3afc.png', 1);
INSERT INTO `user` VALUES (2, 'hhyygg2009', '202cb962ac59075b964b07152d234b70', 0, '18988888222', '2020-12-29 21:21:11', '20211229/891c4b575cfa407ea318b95b94472b3a.png', 0);

SET FOREIGN_KEY_CHECKS = 1;
