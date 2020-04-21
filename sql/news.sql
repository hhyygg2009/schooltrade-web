/*
Navicat MySQL Data Transfer

Source Server         : 1115
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : news

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-12-06 16:17:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `flag` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('2', 'admin', 'admin', '1');
INSERT INTO `admin` VALUES ('3', 'wjh', 'wjh', '0');
INSERT INTO `admin` VALUES ('4', 'zs', 'zs', '0');

-- ----------------------------
-- Table structure for admin_copy
-- ----------------------------
DROP TABLE IF EXISTS `admin_copy`;
CREATE TABLE `admin_copy` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_copy
-- ----------------------------
INSERT INTO `admin_copy` VALUES ('2', 'admin', '21232f297a57a5a743894a0e4a801fc3');
INSERT INTO `admin_copy` VALUES ('3', 'wjh', '985bda1a6bf60cbb8960d0397c9b9d39');

-- ----------------------------
-- Table structure for news_cat
-- ----------------------------
DROP TABLE IF EXISTS `news_cat`;
CREATE TABLE `news_cat` (
  `catID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catTitle` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`catID`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_cat
-- ----------------------------
INSERT INTO `news_cat` VALUES ('9', '公路车000000');
INSERT INTO `news_cat` VALUES ('4', '公路车');
INSERT INTO `news_cat` VALUES ('3', '复古骑行');
INSERT INTO `news_cat` VALUES ('10', 'aaaa');
INSERT INTO `news_cat` VALUES ('11', 'a');
INSERT INTO `news_cat` VALUES ('12', 'a');

-- ----------------------------
-- Table structure for news_info
-- ----------------------------
DROP TABLE IF EXISTS `news_info`;
CREATE TABLE `news_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `summary` varchar(200) NOT NULL DEFAULT '',
  `postTime` date NOT NULL DEFAULT '0000-00-00',
  `author` varchar(30) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `updateTime` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_info
-- ----------------------------
INSERT INTO `news_info` VALUES ('1', '华软学院举行主题教育第一次集中学习研讨', '【不忘初心、牢记使命】华软学院举行主题教育第一次集中学习研讨（图文）', '2019-10-23', '张三', '                                                                                        本网讯  10月15日上午，华软学院在图书馆310党员教育中心举行“不忘初心、牢记使命”主题教育第一次集中学习研讨，重点学习《习近平新时代中国特色社会主义思想学习纲要》。学院党委书记刘友坤、党委委员、党总支书记、直属党支部书记出席。学习研讨活动由刘友坤书记主持，由党群工作部曾伟朝部长、学院办公室王婧主任和学院团委罗达书记领学。 \r\n\r\n根据广州大学党委和学院党委主题教育实施方案要求，华软学院制定了“不忘初心、牢记使命”主题教育集中学习研讨方案，围绕习近平新时代中国特色社会主义思想体系、习近平总书记关于初心使命的重要论述、关于教育工作的重要讲话和指示精神，通过个人自学、领导领学、集中学习研讨、交流会、知识竞赛、观看革命历史纪录片、参观红色教育基地、参观廉政文化教育展等多种形式，全面深入系统学，在学深悟透做实上下真功夫，确保学习教育取得了扎实成效。 \r\n                                                                        ', '2019-12-05');
INSERT INTO `news_info` VALUES ('2', '广州大学华软软件学院：推出“学习强国”平台激励机制', '【学习强国】广州大学华软软件学院：推出“学习强国”平台激励机制，助力主题教育（2019年10月14日）', '2019-10-22', 'zhangsan', '学习强国学习平台讯  最近，广州大学华软软件学院党委利用“学习强国”平台作为推进主题教育的重要载体加以推进，坚持第一时间启动、第一时间推动、第一时间落实，迅速推动全体党员下载、注册、登录“学习强国”APP，并且积极向全院师生推荐使用，让全体党员干部在“学习强国”平台上学有所获、学有所悟、学以致用。 \r\n呈现“比学赶超”的态势 \r\n\r\n近日，广州大学华软软件学院党委公布“学习强国”教工党员前50名和学生党员前30名排行榜，他们是学院“学习强国”学习标兵。“学习强国”学习平台推广以来，广州大学华软软件学院各基层党组织掀起了一股学习热潮。全院党员干部充分利用空闲时间阅读、浏览、学习、关注、转发，学习排名每天都有新变化，呈现出“比学赶超”的态势。 \r\n\r\n \r\n\r\n线上线下联动，让学习成为新风尚 \r\n\r\n今年上半年，华软学院举行第40、41期分党校开班，首次将“自学课程为注册‘学习强国’平台学满1000分”作为入党积极分子党校学习的安排之一，在学院青马工程培训班，同样将“学习强国”平台学习纳入考核范畴。 \r\n\r\n师生党员们表示，用好“学习强国”这个平台，可以开拓视野和胸襟，更好地了解社会变化，做到与时俱进。同时，还能储备专业技能、先进知识，理论联系实际，更好地创新工作，提高服务水平。大家一起边答题边讨论学习经验，营造了浓厚的“比、学、赶、帮、超”学习氛围。上“学习强国”，看时政、读文章、强理论、做任务、分享评论，“充充电”“加加油”已经成为各党支部党员之间的新风尚。 \r\n', null);
INSERT INTO `news_info` VALUES ('67', 'a55', 'aaaa', '0000-00-00', 'a', '                      a                  ', '2019-12-05');
INSERT INTO `news_info` VALUES ('72', 'a', '', '0000-00-00', 'a', 'a', null);
INSERT INTO `news_info` VALUES ('78', 'e', 'aaaa', '0000-00-00', 'e', 'e', '2019-12-06');
INSERT INTO `news_info` VALUES ('79', 'Forward Set x Bicycle Belts联合出0', 'aaaa', '0000-00-00', 'f', 'f', '2019-12-06');
INSERT INTO `news_info` VALUES ('80', '1', 'aaaa', '0000-00-00', '2', '3', '2019-12-06');
INSERT INTO `news_info` VALUES ('81', '4', 'aaaa', '0000-00-00', '4', '4', '2019-12-06');
INSERT INTO `news_info` VALUES ('82', '5', 'aaaa', '0000-00-00', '5', '5', '2019-12-06');
INSERT INTO `news_info` VALUES ('83', '6', 'aaaa', '0000-00-00', '6', '6', '2019-12-06');
INSERT INTO `news_info` VALUES ('84', '7', 'aaaa', '0000-00-00', '7', '7', '2019-12-06');
INSERT INTO `news_info` VALUES ('85', '8', 'aaaa', '0000-00-00', '8', '8', '2019-12-06');
INSERT INTO `news_info` VALUES ('86', '9', 'aaaa', '0000-00-00', '9', '9', '2019-12-06');
INSERT INTO `news_info` VALUES ('87', '1', 'aaaa', '2019-12-06', '21', '222', '2019-12-06');
INSERT INTO `news_info` VALUES ('73', 'a', 'aaaa', '0000-00-00', 'a', 'a', '2019-12-05');
INSERT INTO `news_info` VALUES ('74', 'aa', 'aaaa', '0000-00-00', 'aaa', 'aaa', '2019-12-05');
INSERT INTO `news_info` VALUES ('75', 'bb', 'aaaa', '0000-00-00', 'bb', 'bbbb', '2019-12-05');
INSERT INTO `news_info` VALUES ('76', 'a', 'aaaa', '0000-00-00', 'a', 'a', '2019-12-06');
INSERT INTO `news_info` VALUES ('77', 'd', 'aaaa', '0000-00-00', 'd', 'd', '2019-12-06');

-- ----------------------------
-- Table structure for pic_news
-- ----------------------------
DROP TABLE IF EXISTS `pic_news`;
CREATE TABLE `pic_news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `pic` varchar(50) NOT NULL,
  `cat` varchar(11) NOT NULL,
  `content` text NOT NULL,
  `postTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pic_news
-- ----------------------------
INSERT INTO `pic_news` VALUES ('8', '硅胶环保材质 Bone iPhone5 单车号角扬声器0', '复古骑行', './uploads/2019-11/22/5dd7899a006a4.jpg', '复古骑行', '<h2 class=\"xh_post_h_3_title ofh\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 20px; vertical-align: baseline; font-family: &quot;Microsoft Yahei&quot;, &quot;Trebuchet MS&quot;, Arial, Tahoma, Helvetica, sans-serif; line-height: 32px; overflow: hidden; color: rgb(51, 51, 51); white-space: normal;\"><a target=\"_blank\" href=\"http://localhost/gear/accessories/359.html\" title=\"硅胶环保材质 Bone iPhone5 单车号角扬声器\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(196, 0, 0); text-decoration-line: none; outline: none;\">硅胶环保材质 Bone iPhone5 单车号角扬声器</a></h2><p><span class=\"time\" style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-size: 15px; vertical-align: baseline; display: block; height: 30px; line-height: 30px; color: rgb(119, 119, 119); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Arial, Helvetica, sans-serif;\">2014年02月06日 17:25</span></p><p>这款Bone iPhone5 单车号角扬声器利用号角的原理，将音源集中后，引导音源传导方向，达到扩大音量的效果，使用后可提高13分贝，并且无需任何外接电源，响应环保，节能减碳。</p><p><span class=\"xh_love\" style=\"margin: 0px 0px 0px 15px; padding: 0px 0px 0px 20px; border: 0px; vertical-align: baseline; float: right; line-height: 20px; background-image: url(&quot;../images/ls2_post_info_eng.png&quot;); background-position: 0px -60px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial;\"></span></p><p><img src=\"/ueditor/php/upload/image/20191122/1574406552139440.jpg\" title=\"1574406552139440.jpg\" alt=\"1-1402061A315209.jpg\"/></p>', '2019-11-22 00:00:00');
INSERT INTO `pic_news` VALUES ('13', '硅胶环保材质 Bone iPhone5 单车号角扬声器', '公路车', './uploads/2019-11/25/5ddb87f522ab0.jpg', '公路车', '<h2 class=\"xh_post_h_3_title ofh\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 20px; vertical-align: baseline; font-family: &quot;Microsoft Yahei&quot;, &quot;Trebuchet MS&quot;, Arial, Tahoma, Helvetica, sans-serif; line-height: 32px; overflow: hidden; color: rgb(51, 51, 51);\"><a target=\"_blank\" href=\"http://localhost/gear/accessories/359.html\" title=\"硅胶环保材质 Bone iPhone5 单车号角扬声器\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(51, 51, 51); text-decoration-line: none; outline: none;\">硅胶环保材质 Bone iPhone5 单车号角扬声器</a></h2><p><span class=\"time\" style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; display: block; height: 30px; line-height: 30px; color: rgb(119, 119, 119);\">2014年02月06日 17:25</span></p><p>这款Bone iPhone5 单车号角扬声器利用号角的原理，将音源集中后，引导音源传导方向，达到扩大音量的效果，使用后可提高13分贝，并且无需任何外接电源，响应环保，节能减碳。</p><p><a target=\"_blank\" href=\"http://localhost/gear/accessories/359.html\" title=\"硅胶环保材质 Bone iPhone5 单车号角扬声器\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(119, 119, 119); text-decoration-line: none; outline: none;\"><img src=\"http://localhost/week13/images/319.jpg\" alt=\"硅胶环保材质 Bone iPhone5 单车号角扬声器\" height=\"240\" width=\"400\"/></a></p><h2 class=\"xh_post_h_3_title ofh\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 20px; vertical-align: baseline; font-family: &quot;Microsoft Yahei&quot;, &quot;Trebuchet MS&quot;, Arial, Tahoma, Helvetica, sans-serif; line-height: 32px; overflow: hidden; color: rgb(51, 51, 51);\"><a target=\"_blank\" href=\"http://localhost/gear/accessories/359.html\" title=\"硅胶环保材质 Bone iPhone5 单车号角扬声器\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(51, 51, 51); text-decoration-line: none; outline: none;\">硅胶环保材质 Bone iPhone5 单车号角扬声器</a></h2><p><span class=\"time\" style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; display: block; height: 30px; line-height: 30px; color: rgb(119, 119, 119);\">2014年02月06日 17:25</span></p><p>这款Bone iPhone5 单车号角扬声器利用号角的原理，将音源集中后，引导音源传导方向，达到扩大音量的效果，使用后可提高13分贝，并且无需任何外接电源，响应环保，节能减碳。</p><p><br/></p>', '2019-11-25 15:51:17');
INSERT INTO `pic_news` VALUES ('10', '骑看世界：探索地中海科西嘉岛', '复古骑行', './uploads/2019-11/25/5ddb4308578c9.jpg', '复古骑行', '<h2 class=\"xh_post_h_3_title ofh\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 20px; vertical-align: baseline; font-family: &quot;Microsoft Yahei&quot;, &quot;Trebuchet MS&quot;, Arial, Tahoma, Helvetica, sans-serif; line-height: 32px; overflow: hidden; color: rgb(51, 51, 51);\"><a target=\"_blank\" href=\"http://localhost/life/395.html\" title=\"骑看世界：探索地中海科西嘉岛\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(51, 51, 51); text-decoration-line: none; outline: none;\">骑看世界：探索地中海科西嘉岛</a></h2><p><span class=\"time\" style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; display: block; height: 30px; line-height: 30px; color: rgb(119, 119, 119);\">2014年02月06日 17:26</span></p><p>翻译：dracular&nbsp;来源：pinkbike从波兰出发，驱车1800公里，再经过几个小时的轮渡就可以到达我们的目的地科西嘉岛了.</p><p><img src=\"http://localhost/week13/images/355.jpg\" alt=\"骑看世界：探索地中海科西嘉岛\" height=\"240\" width=\"400\"/><br/></p>', '2019-11-25 00:00:00');
INSERT INTO `pic_news` VALUES ('14', '骑看世界：三个女孩的欧洲骑行之路', '骑看世界：三个女孩的欧洲骑行之路', './uploads/2019-11/29/5de0929bc38e8.jpg', '公路车000000', '<h2 class=\"xh_post_h_3_title ofh\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 20px; vertical-align: baseline; font-family: &quot;Microsoft Yahei&quot;, &quot;Trebuchet MS&quot;, Arial, Tahoma, Helvetica, sans-serif; line-height: 32px; overflow: hidden; color: rgb(51, 51, 51); white-space: normal;\"><a target=\"_blank\" href=\"http://localhost/life/392.html\" title=\"骑看世界：三个女孩的欧洲骑行之路\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(51, 51, 51); text-decoration-line: none; outline: none;\">骑看世界：三个女孩的欧洲骑行之路</a></h2><p><span class=\"time\" style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; display: block; height: 30px; line-height: 30px; color: rgb(119, 119, 119); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Arial, Helvetica, sans-serif;\">2014年02月06日 17:26</span></p><p>经历了欧洲漫长的冬季，卡佳，凯茜和米歇尔三个女孩决定开始他们本年度第一次roadtrip，于是他们脱离了自己正常的生活模式，开始进入自行车模式开始他们的骑行之旅。她们的第一站是列支敦士登的Ell...</p><p><span class=\"xh_love\" style=\"margin: 0px 0px 0px 15px; padding: 0px 0px 0px 20px; border: 0px; vertical-align: baseline; float: right; line-height: 20px; background: url(&quot;../images/ls2_post_info_eng.png&quot;) 0px -60px no-repeat;\"></span></p><p><img src=\"http://localhost/week13/images/352.jpg\" alt=\"骑看世界：三个女孩的欧洲骑行之路\" height=\"240\" width=\"400\"/><br/></p><p><img src=\"/ueditor/php/upload/image/20191129/1574998656.jpg\" title=\"1574998656.jpg\" alt=\"1-1402061T015922.jpg\" width=\"398\" height=\"275\"/></p>', '2019-11-29 11:38:03');
INSERT INTO `pic_news` VALUES ('11', 'Forward Set x Bicycle Belts联合出', '公路车000000', './uploads/2019-11/25/5ddb43a297069.jpg', '公路车000000', '<h2 class=\"xh_post_h_3_title ofh\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 20px; vertical-align: baseline; font-family: &quot;Microsoft Yahei&quot;, &quot;Trebuchet MS&quot;, Arial, Tahoma, Helvetica, sans-serif; line-height: 32px; overflow: hidden; color: rgb(51, 51, 51);\"><a target=\"_blank\" href=\"http://localhost/gear/rs/360.html\" title=\" Forward Set x Bicycle Belts联合出品U型锁腰带U-Lock Belt\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(196, 0, 0); text-decoration-line: none; outline: none;\">Forward Set x Bicycle Belts联合出品U型锁腰带U-Lock Belt</a></h2><p><span class=\"time\" style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; display: block; height: 30px; line-height: 30px; color: rgb(119, 119, 119);\">2014年02月06日 17:26</span></p><p>Forward Set和Bicycle Belts似乎提供了一种新的可能，它们联手打造了一款U型锁腰带。这款腰带对于通勤和信使来说可谓相当便捷，腰带本身是采用二手的自行车轮胎改制而成。</p><p><img src=\"http://localhost/week13/images/320.jpg\" alt=\" Forward Set x Bicycle Belts联合出品U型锁腰带U-Lock Belt\" height=\"240\" width=\"400\"/><br/></p>', '2019-11-25 00:00:00');
