/*
MySQL Data Transfer
Source Host: localhost
Source Database: jwscms
Target Host: localhost
Target Database: jwscms
Date: 2015/10/20 18:12:37
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for access
-- ----------------------------
DROP TABLE IF EXISTS `access`;
CREATE TABLE `access` (
  `role_id` smallint(6) unsigned NOT NULL COMMENT '用户组的id',
  `node_id` smallint(6) unsigned NOT NULL COMMENT '节点的id',
  `level` tinyint(1) NOT NULL COMMENT '节点的等级',
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` varchar(120) NOT NULL,
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `copyfrom` varchar(100) NOT NULL,
  `fromlink` varchar(200) NOT NULL,
  `img` varchar(100) NOT NULL,
  `color` char(7) NOT NULL,
  `isbold` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tags` varchar(255) NOT NULL,
  `recommends` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `realhits` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `puttime` int(10) unsigned NOT NULL DEFAULT '0',
  `tpl` varchar(20) NOT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT '999',
  `status` tinyint(1) unsigned NOT NULL,
  `lang` varchar(20) NOT NULL DEFAULT 'zh_cn',
  PRIMARY KEY (`id`),
  KEY `category` (`category`) USING BTREE,
  KEY `lang` (`lang`) USING BTREE,
  KEY `recommend` (`recommends`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for channel
-- ----------------------------
DROP TABLE IF EXISTS `channel`;
CREATE TABLE `channel` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lft` mediumint(9) unsigned NOT NULL,
  `rht` mediumint(9) unsigned NOT NULL,
  `title` varchar(20) NOT NULL,
  `isexternal` tinyint(1) NOT NULL DEFAULT '0',
  `externalurl` varchar(255) NOT NULL,
  `target` varchar(10) NOT NULL DEFAULT '_self',
  `dir` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `keywords` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `model` varchar(20) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `color` char(7) NOT NULL,
  `tpllist` varchar(20) NOT NULL,
  `tpldetail` varchar(20) NOT NULL,
  `pagesize` tinyint(4) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `isdisabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort` tinyint(4) unsigned NOT NULL DEFAULT '99',
  `lang` varchar(20) NOT NULL DEFAULT 'zh_cn',
  `isnav` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  KEY `lang` (`lang`),
  KEY `dir` (`dir`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for link
-- ----------------------------
DROP TABLE IF EXISTS `link`;
CREATE TABLE `link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` mediumint(8) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` mediumtext NOT NULL,
  `img` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `remark` mediumtext NOT NULL,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(3) unsigned NOT NULL DEFAULT '999',
  `status` tinyint(1) unsigned NOT NULL,
  `lang` varchar(20) NOT NULL DEFAULT 'zh_cn',
  PRIMARY KEY (`id`),
  KEY `category` (`type`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户',
  `module` char(40) DEFAULT NULL COMMENT '模块',
  `action` varchar(20) DEFAULT NULL COMMENT '操作',
  `querystring` varchar(255) DEFAULT NULL COMMENT 'URL',
  `userid` smallint(5) DEFAULT NULL COMMENT '用户ID',
  `ip` varchar(50) DEFAULT NULL COMMENT 'IP',
  `date` datetime DEFAULT NULL COMMENT '时间',
  `status` tinyint(1) NOT NULL COMMENT '0：登陆失败; 1：操作成功；2：无权限',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2681 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for model
-- ----------------------------
DROP TABLE IF EXISTS `model`;
CREATE TABLE `model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '模型名称',
  `channel` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '栏目前缀',
  `sort` int(11) DEFAULT '10' COMMENT '排序',
  `has_content` tinyint(1) DEFAULT '1' COMMENT '是否显示内容',
  `status` tinyint(1) DEFAULT '1' COMMENT '是否开启',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for model_field
-- ----------------------------
DROP TABLE IF EXISTS `model_field`;
CREATE TABLE `model_field` (
  `field_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `model_id` int(11) NOT NULL,
  `field` varchar(50) NOT NULL COMMENT '字段',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` int(11) NOT NULL DEFAULT '10' COMMENT '排列顺序',
  `def_value` varchar(255) DEFAULT NULL COMMENT '默认值',
  `opt_value` varchar(255) DEFAULT NULL COMMENT '可选项',
  `text_size` varchar(20) DEFAULT NULL COMMENT '长度',
  `area_rows` varchar(3) DEFAULT NULL COMMENT '文本行数',
  `area_cols` varchar(3) DEFAULT NULL COMMENT '文本列数',
  `help` varchar(255) DEFAULT NULL COMMENT '帮助信息',
  `type` varchar(50) NOT NULL DEFAULT '1' COMMENT '数据类型',
  `is_custom` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否自定义',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `issystem` int(1) DEFAULT NULL COMMENT '主键',
  `extra` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=546 DEFAULT CHARSET=utf8 COMMENT='CMS模型项表';

-- ----------------------------
-- Table structure for node
-- ----------------------------
DROP TABLE IF EXISTS `node`;
CREATE TABLE `node` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `sort` smallint(6) unsigned DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=271 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` varchar(120) NOT NULL,
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `price` float(10,2) unsigned NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `color` char(7) NOT NULL,
  `isbold` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tags` varchar(255) NOT NULL,
  `recommends` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `realhits` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `puttime` int(10) unsigned NOT NULL DEFAULT '0',
  `tpl` varchar(20) NOT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT '999',
  `status` tinyint(1) unsigned NOT NULL,
  `lang` varchar(20) NOT NULL DEFAULT 'zh_cn',
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  KEY `lang` (`lang`),
  KEY `recommend` (`recommends`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recommend
-- ----------------------------
DROP TABLE IF EXISTS `recommend`;
CREATE TABLE `recommend` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `model` varchar(20) NOT NULL,
  `remark` mediumtext NOT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` tinyint(4) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `lang` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lang` (`lang`),
  KEY `model` (`model`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '组名称',
  `pid` smallint(6) DEFAULT NULL COMMENT '组父级id',
  `status` tinyint(1) unsigned DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for role_user
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL COMMENT '组id',
  `user_id` char(32) DEFAULT NULL COMMENT '用户id',
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for slide
-- ----------------------------
DROP TABLE IF EXISTS `slide`;
CREATE TABLE `slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` mediumint(8) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` mediumtext NOT NULL,
  `img` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `remark` mediumtext NOT NULL,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(3) unsigned NOT NULL DEFAULT '999',
  `status` tinyint(1) unsigned NOT NULL,
  `lang` varchar(20) NOT NULL DEFAULT 'zh_cn',
  PRIMARY KEY (`id`),
  KEY `category` (`type`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL COMMENT '名称',
  `sort` tinyint(4) unsigned DEFAULT '99',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `lang` varchar(20) DEFAULT 'zh_cn',
  `pid` tinyint(4) NOT NULL,
  `class` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `role` smallint(6) unsigned NOT NULL COMMENT '组ID',
  `status` int(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态 1:启用 0:禁止',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注说明',
  `last_login_time` int(11) unsigned NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(15) DEFAULT NULL COMMENT '最后登录IP',
  `last_location` varchar(100) DEFAULT NULL COMMENT '最后登录位置',
  `reg_time` int(11) DEFAULT NULL COMMENT '注册时间',
  `reg_ip` varchar(20) DEFAULT NULL COMMENT '注册ip',
  `realname` varchar(50) DEFAULT NULL COMMENT '名称',
  `mobile` varchar(50) DEFAULT NULL COMMENT '手机',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `sex` int(1) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `access` VALUES ('1', '8', '0', null);
INSERT INTO `access` VALUES ('1', '9', '0', null);
INSERT INTO `access` VALUES ('1', '10', '0', null);
INSERT INTO `access` VALUES ('1', '5', '0', null);
INSERT INTO `access` VALUES ('1', '3', '0', null);
INSERT INTO `access` VALUES ('1', '4', '0', null);
INSERT INTO `access` VALUES ('1', '12', '0', null);
INSERT INTO `access` VALUES ('1', '11', '0', null);
INSERT INTO `access` VALUES ('1', '6', '0', null);
INSERT INTO `access` VALUES ('2', '1', '1', null);
INSERT INTO `access` VALUES ('2', '8', '3', null);
INSERT INTO `access` VALUES ('2', '9', '3', null);
INSERT INTO `access` VALUES ('2', '10', '3', null);
INSERT INTO `access` VALUES ('2', '5', '2', null);
INSERT INTO `access` VALUES ('2', '3', '2', null);
INSERT INTO `access` VALUES ('2', '4', '2', null);
INSERT INTO `access` VALUES ('2', '7', '3', null);
INSERT INTO `access` VALUES ('2', '6', '3', null);
INSERT INTO `access` VALUES ('2', '2', '2', null);
INSERT INTO `access` VALUES ('1', '2', '0', null);
INSERT INTO `access` VALUES ('1', '7', '0', null);
INSERT INTO `article` VALUES ('26', '10', '金融保险行业、电话营销系统', '1', '', '胜杰保险客服系统、新契约回访系统、胜杰电话营销系统、数据中心系统、胜杰客户管理系统、胜杰呼叫中心语音平台系统', '&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: larger;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: x-small;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;保险行业呼叫中心解决方案&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: larger;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: x-small;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;如下图所示，胜杰软件提供的保险行业客户联络全业务平台通过多个独立的系统实现，包括：胜杰保险客服系统、新契约回访系统、胜杰电话营销系统、数据中心系统、胜杰客户管理系统、胜杰呼叫中心语音平台系统，通过各个系统实现从通过各个渠道开发客户，保单形成、通过新契约回访系统进行保单确认、客服系统提供售后服务贯穿整个保险公司与客户联络的全过程。&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: larger;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: x-small;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://www.sjcrm.com.cn/UserFiles/Image/1(4).jpg&quot; style=&quot;padding: 0px; margin: 0px; list-style-type: none; width: 584px; height: 407px;&quot;/&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: larger;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: x-small;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://www.sjcrm.com.cn/UserFiles/Image/2(3).jpg&quot; style=&quot;padding: 0px; margin: 0px; list-style-type: none; width: 570px; height: 429px;&quot;/&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: larger;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: x-small;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://www.sjcrm.com.cn/UserFiles/Image/3(2).jpg&quot; style=&quot;padding: 0px; margin: 0px; list-style-type: none; width: 573px; height: 295px;&quot;/&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: larger;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: x-small;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;【客服系统】&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;&amp;nbsp;客服系统通过与前端胜杰呼叫中心语音平台、后台业务系统的整合，实现针对保险行业客户的售前咨询、投诉、售后服务，通过现场管理系统、质检系统实现对客服系统坐席的管理。&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;【新契约回访系统】&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;&amp;nbsp;新契约回访系统通过与前端语音平台、后台核心业务系统的有效整合，通过胜杰软件自主研发的工作流引擎支撑的工单系统，实现针对保险行业客户的新保单在指定时间内的进行回访，通过分布在不同分公司的非语音坐席对问题单进行后续处理。&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;【电销系统】&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;&amp;nbsp;电销系统与呼叫中心语音平台整合，与后台核心系统线上、线下整合实现在线保单的提交，数据管理模块实现名单的管理，包括数据导入、筛选、分配、回收等管理，提供对数据拨打策略、电销人员获取名单数据的策略的管理，完成如下图所示的电销流程&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', '#cc0099', '0', '', '', '0', '0', '1445249500', '1445249517', '2015', '', '0', '1', 'zh_cn');
INSERT INTO `article` VALUES ('25', '1', '订餐、餐饮服务解决方案', '1', '', '', '&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;餐饮服务业智能解决方案&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;随着市场需求日益多元化、服务要求标准化，城市人口逐渐壮大，借助&amp;quot;互联网新媒体&amp;quot;的推动，订餐服务作为提升生活品质、提升消费效率的一种趋势逐渐畅销。与此同时，具备食、宿、娱、购等多重属性于一体的企业开始出现，并且受到消费者的青睐。在这种情况下，消费者在选择饭店进行餐饮消费时，除了理想的坐席、可口的饭菜，消费者十分注重的还有饭店的服务质量。因此，饭店生产和销售的不仅是实物产品，还有服务，消费者希望得到的是物质和精神的多重满足，这就给饭店管理提出了更高的质量要求。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;餐饮服务业面临的困惑&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;· 消费者希望通过更多的途径和方式来享受服务，这给我们内部的业务操作带来了困难。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;· 经常有客户抱怨服务响应慢&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;· 就餐高峰或节假日，订单突增难以应对&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;· 由于送餐不及时，导致很多客户转向别家订餐，外卖业务不时受到影响&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;· 餐饮业正向食、宿、娱、购多重业务转型，管理更加难以规范&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;胜杰呼叫中心订餐系统解决方案&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;餐饮服务热线&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;客户致电餐饮企业呼叫中心首先进入语音查询系统，在语音导航的指引下输入不同按键，选择自己想要的信息。在自助服务中，客户可以得到如下服务：1) 餐饮企业会员自助查询积分、活动等；2) 自助订单提交：对菜单信息进行统一编号，每一种都对应一个唯一的数字编号，会员用户在订餐时只需要输入会员编号以及菜单的数字编号以及份数即可，这样通过呼叫中心系统的自动订餐系统，可以节省坐席数量，而对于会员客户来讲，在高峰期订餐也可以避免电话占线、无法订餐的烦恼。即方便了客户，又避免的客户的无谓流失。3) 新品介绍与推荐；4) 菜谱、价格查询；5) 地理位置查询；6) 附近交通查询；7) 餐饮促销信息；8) 自助传真；9) 投诉、建议等语音留言，等等。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;客户咨询&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;餐饮企业客户咨询所涉及的范围包括：菜单价格咨询、服务时间咨询、地理位置咨询等等。系统对于老客户可建立一对一的亲情关系，将老客户的来话直接转接到以前曾与之通过话的客服人员处，有助于客户的维系和服务的延续性。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;业务受理&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;胜杰呼叫中心系统通过人工坐席、自助语音导航服务、电子邮件、传真、即时聊天工具等方式，受理客户所申办的各类业务，生成派单并转发给相应部门进行处理。待处理结果通过网络返回到企业呼叫中心后，客服人员以电话、传真、短信息、电子邮件等方式回复客户。客户也可随时通过本系统了解所申办业务现处于哪一环节及哪一部门所处理。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;系统的来电弹屏功能可以使客服人员第一时间获知来电者的身份背景资料，迅速了解其历史消费信息，及详细地址、口味爱好等等。&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;&amp;nbsp;其主要特点是集中受理、分店送餐，将电话订餐数据由各个分店分散掌控集中起来，使总部领导可以方便的及时准确的查看各个分店的订餐情况，及时根据实际经营状况调整经营策略。集中的订餐信息，总部人员根据订餐的区域及需送餐时间，定时分配给相关的分店。分店可以通过网络查看本店的订餐信息，进行相关的送餐准备。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;送餐反馈&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;各分店送餐员送餐完毕后，对送餐结果进行反馈录入。比如正常送到、晚到1小时、客户地址有误、客户太多未送等等，可以根据统计的送餐信息，来作为分店人手调配的一个依据，对于一个订餐业务比较多的区域，可以考虑增加无店面的配餐点，而对于恶意电话，则可以设置系统黑名单，对其以后的骚扰订餐电话不予理睬。&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;&amp;nbsp;这样，总部就会对电话订餐的实际配送及配送结果有了全面详细的了解，对于整合企业现有资源、提高服务质量、提高企业效率都有好处。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', '#cc0099', '0', '', '', '0', '0', '1444708828', '1444708828', '2015', '', '0', '1', 'zh_cn');
INSERT INTO `article` VALUES ('24', '1', '医院患者满意度回访系统', '1', '', '', '&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;针对医院的现状，以提高医生服务水平，树立患者对医院品牌的好评，做好患者满意度服务为主要宗旨的呼叫中心系统的引入显得尤为必要。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;医院患者回访呼叫中心系统功能：&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;1、统一号码，统一形象：&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;统一号码400号码，统一形象，让患者能记住号码，对自己的病情、医治情况和医生进行咨询互动。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;2、语音信箱：&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;在座席全忙或休息日、节假日时，也能收到客户的留言，全面了解到客户的需求、投诉和建议，不断完善服务质量，让客户满意。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;3、呼叫中心平台系统模块：&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;（CTI、ACD来电自动排队、IVR自助语音导航、录音系统、自动外呼系统、传真、邮件、短信、来电弹屏工单、三方会议、远程IP座席、监控、时实监听、强拆、强插、详细话务报表）&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;4、单发、群发短信、邮件：&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;对患者进行短信发送，提高医生对患者的关怀。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;5、健康咨询、投诉建议：&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;针对此模块，我们主要设计，患者针对自己的病情咨询，和对医院的服务投诉管理。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;6、知识库管理：&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;知识库管理模块主要分为：知识库包含（知识热点、知识检索、知识库目录管理、文章管理）&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;7、挂号系统完美对接、数据同步：&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;针对医院挂号平台，和医院患者满意度系统做无封对接，和数据对接。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;9、三级回访管理：&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;对于患者系统中设置为三级回访、一级分为三个模块（我的患者、需回访患者、已完成患者）二级分为：（二级回访列表、一级回访已完成、未进行一级回访、已完成二级回访）三级回访汇总表等。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;10、满意度调查管理：&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;满意度调查管理：满意度调查（住院部调查管理、住院部调查问卷、门诊部调查管理、门诊部调查问卷）&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', '#cc0099', '0', '', '', '0', '0', '0', '0', '2015', '', '0', '1', 'zh_cn');
INSERT INTO `article` VALUES ('27', '10', '学校实训平台系统', '1', '', '各个民办及公办大学，为什么建立招生呼叫中心系统招生呼叫中心系统是在传统的招生热线电话基础之上引入呼叫中心的先进技术和管理理念', '&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;行业概况分析&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;&amp;nbsp;各个民办及公办大学，为什么建立招生呼叫中心系统招生呼叫中心系统是在传统的招生热线电话基础之上引入呼叫中心的先进技术和管理理念,实现招生咨询、生源管理、考生回访、电话注册、实训平台、电子商务班课程模拟演练、各行业呼叫中心实际上线模拟操作、录取通知的整体解决方案。构建专业的招生呼叫中心系统,可以实现以下功能。&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;1、学校招生管理系统流程：&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://www.sjcrm.com.cn/UserFiles/Image/%E6%8B%9B%E7%94%9F.jpg&quot; style=&quot;padding: 0px; margin: 0px; list-style-type: none; width: 566px; height: 362px;&quot;/&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://www.sjcrm.com.cn/UserFiles/Image/06081752.png&quot; style=&quot;padding: 0px; margin: 0px; list-style-type: none; width: 581px; height: 353px;&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', '#cc0099', '0', '', '', '0', '0', '1445249552', '1445249552', '2015', '', '0', '1', 'zh_cn');
INSERT INTO `article` VALUES ('28', '10', '居家养老客服平台系统', '1', '', '在当今全国老年人高龄化情况下，我公司针对老年人生活服务打造一套合理合管理平台（居家养老系统平台）此系统模块全面、系统功能强大、稳定性强、要解决从服务到增值全面覆盖。', '&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;1、平台定义：&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;在当今全国老年人高龄化情况下，我公司针对老年人生活服务打造一套合理合管理平台（居家养老系统平台）此系统模块全面、系统功能强大、稳定性强、要解决从服务到增值全面覆盖。此系统充分运用高科技手段，整合社会各界的力量和服务网点资源，“以社区为依托，家庭为单位、企事业等服务机构为网点、网络中心为支撑，建立全方位的信息化的居家养老服务体系”，打造21世纪新型“虚拟敬老院”。真正做到“让老人生活的舒心、安心；让老人子女放心、省心”，从而推动家庭和谐、社区和谐、社会和谐！&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;2、系统模块内容：&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', '#cc0099', '0', '', '', '0', '0', '1445323612', '1445323625', '2015', '', '0', '1', 'zh_cn');
INSERT INTO `article` VALUES ('29', '10', '电子商务平台系统', '1', '', '电子商务系统应具有广告宣传、咨询洽谈、网上订购、网上支付、电子账户、服务传递、意见征询、业务管理等各项功能。', '&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;主要功能：&lt;/strong&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;企业通过实施电子商务实现企业经营目标，需要电子商务系统能提供网上交易和管理等全过程的服务。因此，电子商务系统应具有广告宣传、咨询洽谈、网上订购、网上支付、电子账户、服务传递、意见征询、业务管理等各项功能。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;网上订购：&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　 &amp;nbsp;电子商务可借助Web中的邮件或表单交互传送信息，实现网上的订购。网上订购通常都在产品介绍的页面上提供十分友好的订购提示信息和订购交互格式框。当客户填完订购单后，通常系统会回复确认信息来保证订购信息的收悉。订购信息也可采用加密的方式使客户和商家的商业信息不会泄漏。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;货物传递：&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　 &amp;nbsp; 对于已付了款的客户应将其订购的货物尽快地传递到他们的手中。若有些货物在本地，有些货物在异地，电子邮件将能在网络中进行物流的调配。而最适合在网上直接传递的货物是信息产品，如软件、电子读物、信息服务等。它能直接从电子仓库中将货物发到用户端。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;咨询洽谈：&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　 &amp;nbsp; &amp;nbsp;电子商务借助非实时的电子邮件、新闻组和实时的讨论组来了解市场和商品信息，洽谈交易事务，如有进一步的需求，还可用网上的白板会议来交流即时的图形信息。网上的咨询和洽谈能超越人们面对面洽谈的限制，提供多种方便的异地交谈形式。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;网上支付：&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　 &amp;nbsp; &amp;nbsp;电子商务要成为一个完整的过程，网上支付是重要的环节。客户和商家之间可采用多种支付方式，省去交易中很多人员的开销。网上支付需要更为可靠的信息传输安全性控制，以防止欺骗、窃听、冒用等非法行为。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', '#cc0099', '0', '', '', '0', '0', '1445323752', '1445323752', '2015', '', '0', '1', 'zh_cn');
INSERT INTO `article` VALUES ('30', '10', '家政服务网络中心系统', '1', '', '“家政服务网络中心“，通过电话、网络等信息手段，无偿为市民、企业提供供需对接服务，建立健全信息咨询、\r\n供需对接、人才调配、标准制订、资质认证、服务监督等功能，成为对接供需、规范服务、保障安全的重要载体。', '&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;1、项目定义：&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&amp;nbsp;&amp;nbsp;&lt;/strong&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&amp;nbsp;&lt;/strong&gt;&lt;span style=&quot;padding: 0px; margin: 0px; line-height: 19.5px; font-family: 宋体;&quot;&gt;“家政服务网络中心“，通过电话、网络等信息手段，无偿为市民、企业提供供需对接服务，建立健全信息咨询、&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; line-height: 19.5px; font-family: 宋体;&quot;&gt;供需对接、人才调配、标准制订、资质认证、服务监督等功能，成为对接供需、规范服务、保障安全的重要载体。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; line-height: 19.5px; font-family: 宋体;&quot;&gt;依托该中心，整合各类家政服务资源，形成便利的家政服务网络；对企业资质、服务质量进行监督评价，对服务标准&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; line-height: 19.5px; font-family: 宋体;&quot;&gt;进行统一规范，及时淘汰不能满足居民需求的企业，形成基于行业自律的市场准入和退出机制，提高家政服务业发展&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; line-height: 19.5px; font-family: 宋体;&quot;&gt;水平和服务质量，保障居民便利、安全消费。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', '#cc0099', '0', '', '', '0', '0', '1445324223', '1445324223', '2015', '', '0', '1', 'zh_cn');
INSERT INTO `article` VALUES ('31', '10', '短信、邮件、传真群发系统', '1', '', '短信收发功能具有如下特点：\r\n1、支持短信收发策略的制定；\r\n2、支持按发送策略进行客户群发；\r\n3、支持短信接收后，自动判断客户信息，自动通知相应座席；', '&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 30px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;短信功能说明（短信、彩信）&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 30px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;短信收发功能具有如下特点：&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;1、支持短信收发策略的制定；&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;2、支持按发送策略进行客户群发；&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;3、支持短信接收后，自动判断客户信息，自动通知相应座席；&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;4、支持接收短信自动查询，查询结果生成短信内容，自动回复；&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;5、可以支持大于100条短信/秒；&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;6、支持SMPP、CMPP、SGIP等多种短信协议；&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;7、支持收发单元自动负载均衡；&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;8、支持任务动态调配，自动任务排队；&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;9、可以在线在进行短信收发服务器的增加、减少；&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;10、系统参数可配置（连接进程、最大线程等）；&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;11、超过70字节的短信进行自动分拆；&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;12、座席使用界面简便；&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;13、支持对使用量的统计查询。&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;&amp;nbsp;&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;&amp;nbsp;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;传真功能说明：&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 30px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 30px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;传真收发功能具有如下特点：&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;1、支持传真收发策略的制定；&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;2、支持按发送策略进行客户群发；&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;3、支持传真接收后，自动判断客户信息，自动通知相应座席；&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;4、支持其他方式交互查询，查询结果生成传真内容，自动传真回复；&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;5、可以同时支持多路传真发送；&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;6、支持收发单元自动负载均衡；&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;7、支持任务动态调配，任务自动排队；&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;8、可以在线在进行传真收发服务器的增加、减少；&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;9、系统参数可配置（连接进程、最大线程等）；&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;10、座席使用界面简便；&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;11、支持对使用量的统计查询。&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 30px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&amp;nbsp;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;电子邮件功能描述：&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 30px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 30px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;电子邮件收发功能具有如下特点：&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;1、支持电子邮件收发策略的制定；&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;2、支持按发送策略进行客户群发；&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;3、支持电子邮件接收后，自动判断客户信息，自动通知相应座席；&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;4、支持其他方式交互查询，查询结果生成电子邮件内容，自动回复；&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;5、支持收发单元自动负载均衡；&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;6、支持任务动态调配，任务自动排队；&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;7、可于同益法务网集团公司邮件系统集成；&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;8、座席使用界面简便；&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;9、支持对使用量的统计查询。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', '#cc0099', '0', '', '', '0', '0', '1445324260', '1445324260', '2015', '', '0', '1', 'zh_cn');
INSERT INTO `article` VALUES ('32', '10', '12319数字化城市管理平台系统', '1', '', ' 数字化城市管理是基于移动通信网络、行业终端 ( 含数字城管终端应用软件 ) 和政府内部办公系统', '&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;数字化城市管理是基于移动通信网络、行业终端 ( 含数字城管终端应用软件 ) 和政府内部办公系统，通过地理空间框架数据、单元网格数据、管理部件数据、地理编码数据等多种数据资源的信息共享、协同工作，实现对城市市政工程设施、市政公用设施、市容环境与城市秩序的监督、管理和预警。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;建立三大机制：&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;1、第一时间发现问题机制。&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;2、第一时间处置问题机制。&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;3、第一时间解决问题机制 。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;实现五大转变：&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;1、被动管理向主动管理转变。&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;2、粗放管理向精细管理转变。&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;3、传统管理模式向信息化管理模式转变。&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;4、偏重管理向监管并重转变。&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;5、“小城管”向“大城管”转变。&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;取得三大成效：&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;1、平均提高案卷处理效率 6 倍以上。&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;2、优化监管和工作流程。&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;3、提升公众满意度。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', '#cc0099', '0', '', '', '0', '0', '1445324307', '1445324332', '2015', '', '0', '1', 'zh_cn');
INSERT INTO `article` VALUES ('33', '10', '电视购物呼叫中心平台系统', '1', '', '电视购物是通过电视发布商品信息，利用电话联系送货上门，以“无店铺销售”模式而著称，具有独特的营销风格。', '&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;1、电视购物是通过电视发布商品信息，利用电话联系送货上门，以“无店铺销售”模式而著称，具有独特的营销风格。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;2、电视购物迎合了现代人快节奏的生活方式。社会上有一类消费群体，他们不太愿意花费大量的时间和精力逛商场，因此“电视推介、电话订货、店员送货”这种运作模式得到了这类消费者的欢迎。消费者只要一个电话，就有人将你所订购的产品送货上门，大大提高了工作效率。由于电视购物缩短了生产和销售的中间环节，产品成本更低，利润空间更大，这种模式也很受商家的喜欢。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;3、随着电视购物规模的不断扩大、行业竞争的不断加剧、营销成本的不断攀升，开展电视购物的商家对提高电话销售的成交率尤为关注。当电视媒体广告播出以后，如何抓住那些用大笔的广告费吸引进来的消费者，就成为电视购物经营者关注的焦点。特别是呼叫业务大部分是波浪式呼叫，大量的业务和信息来不及处理，仅靠现有的设备和人员使用普通电话的模式，已经不能满足现代电视购物行业的需要。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;4、为电视购物企业量身定做的呼叫中心平台，是集电话营销、管理应用、客户管理管理于一体的软件。它将呼叫中心平台、电话销售、物流配送管理以及电话中心的运营管理有机结合起来，真正为电视购物企业解决最实际的问题.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;5、电视购物平台系统产品内容图示：&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', '#cc0099', '0', '', '', '0', '0', '1445324409', '1445324409', '2015', '', '0', '1', 'zh_cn');
INSERT INTO `article` VALUES ('34', '39', '电话营销系统软件', '1', '', '随着中国加入WTO 以后，各行业公司企业面临着越来越激烈的市场竞争，但是传统的营销手段已经越来越跟不上现代市场竞争的要求。', '&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;应用背景&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 随着中国加入WTO 以后，各行业公司企业面临着越来越激烈的市场竞争，但是传统的营销手段已经越来越跟不上现代市场竞争的要求。为了进一步提升服务营销效率和维护、开拓客户，各运营企业纷纷推出一项新服务举措——电话营销，&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;通过电话、传真等通信技术，来实现有计划、有组织、并且高效率地扩大顾客群、提高顾客满意度、维护顾客等市场行为的手法，为客户提供诸如新业务回访、主动营销、节日/生日问候、投诉满意度回访、欠费催缴和通知等各类服务。事实证明，电话营销中心主动外呼服务加强了企业与客户之间的沟通联系，增强了服务的针对性。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　但是，随着客户数量和营销代表的增多，从而引发如工作量大、拨号错误多、效率低下、管理水平跟不上以及由此导致的营销代表情绪受影响等问题，另外忘记在和客户通话过程中所了解的客户信息，这必将成为提高服务质量、工作效率的瓶颈；同时，随着企业电话营销中心作用的不断增加和规模的不断扩大，电话营销中心的营运成本也迅速增加。所以，如何提高电话营销中心的运营效率和降低运营成本也已成为摆在企业面前的另一个重要问题。若能合理的建立一个简单、高效的电话营销系统，充分发挥其自动业务功能，不仅仅能大幅度提高企业的工作效率、方便管理人员对营销代表进行管理，更能减少人工营销代表的成本，这也将是企业提高效率降低成本的有效方法。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　电话营销系统是讯呼技术根据市场客户的需求，综合了各行业不同企业厂商的不同需要而开发的营销系统（又称外呼营销系统、电话销售系统）。经过不同行业客户的应用证明：该电话营销系统能够有效的提高营销部门的工作效率、降低企业销售成本和方便管理人员对销售代表进行考核。目前已经成功的应用于电信、航空、保险、证券、知名企业等不同行业客户，广受好评。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;应用效果&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;1.提高销售效率，增加成交机率：系统通过预拨号功能，自动识别出空号、错号、忙音和关机等状况，将有效的电话号码转接至坐席人员。既节省了时间又提高了销售效率，增加成交机率，扩大市场份额。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　2.避免客户的流失，保障客源稳定：客户资料管理模块，具有客户个人信息录入登记、查询等功能，从而避免业务人员的流动带来的客户流失，起到积累客户资源的作用。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　3.减少开支，降低经营成本：通过IVR的使用，将大量的重复性和标准化得服务尽量采用自动语音进行处理，例如查询、咨询等工作，节省30%-80%的人力成本。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　4.提高服务质量，提升企业形象：通过电脑自动服务与人工服务的相结合的方式，为用户提供标准、统一、全面的服务，并可为所有客户自动建立完善档案，同时还具有自动提醒等功能，从而达到提升企业的客户服务质量，提升企业形象。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　5.提高资源利用率，节省办公成本：系统采用多种方式的策略加以资源优化，通过多个服务平台，更加高效合理的电话资源以及公司人员，快速、准确、高效地实现信息的保存、传递、基础和共享，这样不仅可以更好的服务客户，还可以实现人力调配的优化，解放更多的人力。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　6.提供决策依据，避免服务纠纷：通过系统提供的日/周/月/年等统计分析报表数据，为企业领导的产品、业务调整等决策提供强有力的依据。另外，系统的录音功能，将所有的服务通话都进行了录音。在与客户发生纠纷时，可提供有效有力的法律依据。同时也是公司考核员工服务态度的一个好帮手。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;主要功能：&lt;/strong&gt;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;1. 业务统计模板，提供各种业务报表，且可以根据自己的需求订制报表。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　例如电话日访问量的统计报表，准确把握每个销售代表当天的销售动态，对工作量的评估及电话销售效果的分析具有很大帮助。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 2. 快速拨号，实现高效专业的电话销售　&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　系统预拨号功能，支持大批量导入和拨打的功能，并且具有自动识别错号，忙音，空号等不良状况，将有效地通话转接至销售人员，从而省去大量人工拨号的时间，提高了销售人员的工作效率。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　3. 多方通话，保障连续、流畅的电话销售流程，　&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　销售人员可以随时加入支援人员，展开三方通话，即时与技术支援工程师、客服、上级主管等多方沟通、协调工作保障电话销售过程中通信的快速性、连续性。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　4. 短信功能&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　销售人员可以方便、快捷的发送客户所需的信息（如E-Mail、电话号码、地址、简介、网址、账号）到客户手机上，体现出一个专业销售服务过程。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　5. 无纸传真&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　自动收发传真模板支持传真资料签章、自动索取、群发、转发、回复等功能。因此，我们无需排队等待、无需东奔西跑，收发传真就像收发E-Mail一样简单。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　6. 录音功能&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　通话录音，确保重要内容不遗漏；新同事也可以根据录音内容来总结、提高自身销售水平。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　7．来电弹屏，新老客户留记录&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　系统根据来电号码，自动弹出对应的客户资料、历史记录和通话录音。让销售代表服务更周到，更贴心。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', '#cc0099', '0', '', '', '0', '0', '1445324569', '1445324569', '2015', '', '0', '1', 'zh_cn');
INSERT INTO `article` VALUES ('35', '38', '什么是CRM？', '1', '', '客户关系管理(CRM)首先是一种管理理念，起源于西方的市场营销理论，产生和发展在美国。', '&lt;h2 class=&quot;headline-1 first&quot; style=&quot;padding: 0px 0px 6px; margin: 0px 0px 10px; color: rgb(102, 102, 102); font-family: Simsun; white-space: normal; border-bottom-color: rgb(222, 223, 225); border-bottom-width: 1px; border-bottom-style: solid; line-height: 24px; clear: none; font-size: 18px; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&lt;span class=&quot;headline-content&quot; style=&quot;padding: 0px; margin: 0px;&quot;&gt;概念解读&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h2&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　客户关系管理(&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.1.200:8080/view/4799.htm&quot; style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;CRM&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;)首先是一种&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.1.200:8080/view/2860873.htm&quot; style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;管理理念&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;，起源于西方的&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.1.200:8080/view/9683.htm&quot; style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;市场营销&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;理论，产生和发展在&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.1.200:8080/view/2398.htm&quot; style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;美国&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;。其核心思想是将企业的&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.1.200:8080/view/88584.htm&quot; style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;客户&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;(包括最终客户、&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.1.200:8080/view/46506.htm&quot; style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;分销商&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;和合作伙伴)作为最重要的&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.1.200:8080/view/2062419.htm&quot; style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;企业资源&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;，通过完善的客户服务和深入的&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.1.200:8080/view/4295883.htm&quot; style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;客户分析&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;来满足客户的&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.1.200:8080/view/195818.htm&quot; style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;需求&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;，保证实现客户的终生价值。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　客户关系管理(CRM)又是一种旨在改善企业与客户之间关系的新型&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.1.200:8080/view/3583276.htm&quot; style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;管理机制&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;，它实施于企业的市场营销、销售、服务与&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.1.200:8080/view/620243.htm&quot; style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;技术支持&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;等与客户相关的领域，要求企业从“以产品为中心”的&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.1.200:8080/view/37878.htm&quot; style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;模式&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;向“以客户为中心”的模式转移，也就是说，企业关注的焦点应从内部运作转移到客户关系上来。　客户关系管理(CRM)也是一种管理软件和技术，它将最佳的商业实践与&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.1.200:8080/view/7893.htm&quot; style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;数据挖掘&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;、数据仓库、一对一营销、销售自动化，以及其他&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.1.200:8080/view/3226.htm&quot; style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;信息技术&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;紧密结合在一起，为企业的销售、客户服务和决策支持等领域提供了一个业务自动化的解决方案，使企业有了一个基于电子商务的面对客户的前沿，从而顺利实现由传统企业模式到以电子商务为基础的现代企业模式的转化。CRM的目标是一方面通过提供更快速和周到的优质服务吸引和保持更多的客户；另一方面通过对&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.1.200:8080/view/1368133.htm&quot; style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;业务流程&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;的全面管理减低企业的成本。设计完善的CRM解决方案可以帮助企业在拓展新收入来源的同时，改进与现有客户的交流方式。据国际CRM论坛统计，国际上成功的CRM实施，能给相应的企业每年带来6%的市场份额增长;提高9%～10%的基本服务收费；并超过服务水平低的企业2倍的发展速度。&lt;sup style=&quot;padding: 0px; margin: 0px 0px 0px 2px; color: rgb(51, 102, 204); cursor: pointer;&quot;&gt;[1]&lt;/sup&gt;&lt;a style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194); text-decoration: underline;&quot; name=&quot;ref_[1]&quot;&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;h2 class=&quot;headline-1&quot; style=&quot;padding: 0px 0px 6px; margin: 0px 0px 10px; color: rgb(102, 102, 102); font-family: Simsun; white-space: normal; border-bottom-color: rgb(222, 223, 225); border-bottom-width: 1px; border-bottom-style: solid; line-height: 24px; clear: both; font-size: 18px; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&lt;a style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194); text-decoration: underline;&quot; name=&quot;2&quot;&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; color: rgb(255, 0, 0);&quot;&gt;&lt;span class=&quot;headline-content&quot; style=&quot;padding: 0px; margin: 0px;&quot;&gt;包含方面&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h2&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　主要包含以下几个主要方面(简称7P)：&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　客户概况分析(Profiling)包括客户的层次、&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.1.200:8080/view/156901.htm&quot; style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;风险&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;、爱好、习惯等；&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　客户忠诚度分析(Persistency)指客户对某个产品或商业机构的忠实程度、持久性、变动情况等；&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　客户利润分析(Profitability)指不同客户所消费的产品的边缘利润、总利润额、净利润等；&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　客户性能分析(Performance)指不同客户所消费的产品按种类、渠道、销售地点等指标划分的销售额；&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　客户未来分析(Prospecting)包括客户数量、类别等情况的未来发展趋势、争取客户的手段等；&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　客户产品分析(Product)包括产品设计、关联性、&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.1.200:8080/view/3235.htm&quot; style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;供应链&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;等；&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　客户促销分析(Promotion)包括&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.1.200:8080/view/2324.htm&quot; style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;广告&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;、宣传等促销活动的管理。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;h2 class=&quot;headline-1&quot; style=&quot;padding: 0px 0px 6px; margin: 0px 0px 10px; color: rgb(102, 102, 102); font-family: Simsun; white-space: normal; border-bottom-color: rgb(222, 223, 225); border-bottom-width: 1px; border-bottom-style: solid; line-height: 24px; clear: both; font-size: 18px; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&lt;a style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194); text-decoration: underline;&quot; name=&quot;3&quot;&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; color: rgb(255, 0, 0);&quot;&gt;&lt;span class=&quot;headline-content&quot; style=&quot;padding: 0px; margin: 0px;&quot;&gt;CRM解说&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h2&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　通常我们所指的CRM，是指通过计算机实现上述流程自动化的&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.1.200:8080/view/8343.htm&quot; style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;软件系统&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;，使企业&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.1.200:8080/view/888929.htm&quot; style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;员工&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;全面了解客户关系，根据&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.1.200:8080/view/1221045.htm&quot; style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;客户需求&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;进行交易，记录获得的&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.1.200:8080/view/4289271.htm&quot; style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;客户信息&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;，在企业内部做到客户信息共享；对市场计划进行整体规划和评估；对各种销售活动进行跟踪；通过大量积累的动态&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.1.200:8080/view/18710.htm&quot; style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;资料&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;，对市场和销售进行全面分析。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　CRM注重的是与客户的交流，企业的经营是以客户为中心，而不是传统的以产品或以市场为中心。全球性产品过剩及产品同质化，使企业发展的主导因素从产品价值转向客户需求，客户成为企业的核心资源。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　客户关系管理并不是近几年的产物，以客户为中心的理念在国外兴起于20世纪50年代，当很多企业寄望与通过改进技术、压缩生产周期、应用内部&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.1.200:8080/view/388981.htm&quot; style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;资源管理&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;来提高增长率和利润率，但事实上提高不大。这样企业开始从强调降低经营成本的供应方发展策略转向了与客户联系更紧密，从客户关系方面挖掘新的&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.1.200:8080/view/21312.htm&quot; style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;能源&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;的需求方策略，CRM应运而生。所不同的是，我们现在可以运用计算机来帮助我们实现这看似并不复杂的而实际操作起来非常繁琐的工作。试想一下，当接到客户来电或联系客户时能方便快速地在电脑显示屏上显示出客户的详细资料包括客户基本信息、以往的联系拜访记录、历史订单记录及已购买产品清单，这样是否省时省力呢？&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.1.200:8080/view/734013.htm&quot; style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;个性化&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;服务是增强竞争力的有力武器，CRM就是以客户为中心并为客户提供最合适的服务。记住客户的名字及他们的偏好、交易特点，根据客户的不同而提供不同内容，客户再次购买的可能性会大大增加。CRM可以增加客户忠诚度，提高购买比率，使每个客户产生更多的购买需求，及更长时间的需求，并提高&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.1.200:8080/view/1884683.htm&quot; style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;客户满意度&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;　　没错，没有CRM&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.1.200:8080/view/45072.htm&quot; style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;客户关系管理系统&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;支撑的客户关系一样可以管理，但有CRM支撑的客户关系可以管理得更好！客户就是我们的资源，客户关系管理得好，客户自然就会变成我们的财富。如果您到现在还是停留在LGD(Lunch-午餐、Golf-高尔夫、Dinner-晚餐)的客户管理模式，而您的竞争对手却已经通过将传统的手段（如人际关系、情感投入等）与先进的&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://192.168.1.200:8080/view/1932308.htm&quot; style=&quot;padding: 0px; margin: 0px; color: rgb(19, 110, 194);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;客户管理系统&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;结合起来，悄悄地搬动着您的奶酪，对您来说应该是做出改进的时候了。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', '#cc0099', '0', '', '', '0', '0', '1445324604', '1445324604', '2015', '', '0', '1', 'zh_cn');
INSERT INTO `channel` VALUES ('1', '0', '1', '6', '解决方案', '0', '', '_self', 'news', '', '', '0', 'article', '', '', '', 'case', '', '5', '1', '1', '2', 'zh_cn', '1');
INSERT INTO `channel` VALUES ('38', '37', '0', '0', '行业新闻', '0', '', '_self', 'hynews', '', '', '', 'article', '', '', '', '', '', '0', '1', '1', '0', 'zh_cn', '1');
INSERT INTO `channel` VALUES ('3', '0', '7', '12', '产品中心', '0', '', '_self', 'product', '音乐抱枕', '', '0', 'article', '', '', '', 'pro', '', '9', '1', '1', '3', 'zh_cn', '1');
INSERT INTO `channel` VALUES ('27', '0', '31', '32', '技术服务', '0', '', '_self', 'chadaochayi', '', '', '', 'page', '', '', '', 'article_news', '', '15', '0', '1', '5', 'zh_cn', '1');
INSERT INTO `channel` VALUES ('7', '0', '15', '18', '公司简介', '0', '', '_self', 'about', 'X6CMS网站管理系统简介', 'X6CMS', 'X6CMS：全称小六网站内容管理系统。X6CMS是一个功能完善的营销型网站管理平台，采用PHP+MYSQL架构，全站内置SEO优化机制，界面简介，操作方便。', 'page', 'data/attachment/image/20150818/8fa4738496484841cf27b1739ccc4878.jpg', '&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;&lt;span style=&quot;padding: 0px; margin: 0px; line-height: 19.5px;&quot;&gt;北京胜杰通华软件技术有限公司(简称胜杰软件，&lt;/span&gt;&lt;span style=&quot;padding: 0px; margin: 0px; line-height: 19.5px;&quot;&gt;SjCrm),&lt;/span&gt;&lt;span style=&quot;padding: 0px; margin: 0px; line-height: 19.5px;&quot;&gt;它是以北京为中心，面向大中华地区专业的系统集成公司。公司遵从“以客户为中心，以市场为导向，以技术为后盾，以服务为保障”的发展宗旨。领导科技新潮流、创造管理新时代、的理念。&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;　&amp;nbsp; 公司成立以来一直从事电信、金融、保险、制造业、政府、数字城管、教育培训、餐饮、旅游、出版业、邮政、医疗、家政、零售、广告传媒、公共事业等领域的系统建设和集成，并在相关领域不断创新，自主研发最具核心竞争力的产品。&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;　&amp;nbsp;&amp;nbsp;&lt;span style=&quot;padding: 0px; margin: 0px; line-height: 19.5px;&quot;&gt;公司通过与国内领先的交换机厂商东进公司（Keygoe系例）、国际领先的交换机厂商（&lt;/span&gt;&lt;span style=&quot;padding: 0px; margin: 0px; line-height: 19.5px;&quot;&gt;Avaya&lt;/span&gt;&lt;span style=&quot;padding: 0px; margin: 0px; line-height: 19.5px;&quot;&gt;、Nortel）多层次，杭州三汇语音卡厂商多方位合作。将当今计算机与通信领域最先进的技术高效融合，为用户提供强有力的技术支持，以协助用户提高工作效率、提升管理水平。&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; line-height: 19.5px;&quot;&gt;&amp;nbsp;　&amp;nbsp; 公司专心致力于 CTI 、&lt;/span&gt;&lt;span style=&quot;padding: 0px; margin: 0px; line-height: 19.5px;&quot;&gt;IVR&lt;/span&gt;&lt;span style=&quot;padding: 0px; margin: 0px; line-height: 19.5px;&quot;&gt;语音导航、&lt;/span&gt;&lt;span style=&quot;padding: 0px; margin: 0px; line-height: 19.5px;&quot;&gt;CRM&lt;/span&gt;&lt;span style=&quot;padding: 0px; margin: 0px; line-height: 19.5px;&quot;&gt;、&lt;/span&gt;&lt;span style=&quot;padding: 0px; margin: 0px; line-height: 19.5px;&quot;&gt;ERP&lt;/span&gt;&lt;span style=&quot;padding: 0px; margin: 0px; line-height: 19.5px;&quot;&gt;、标准客服系统、BI商务智能、录音产品的研发、中小企业一体机、电子商务商城平台、呼叫中小系统集成、及外拨营销呼叫中心运营咨询，做为一家拥有自主知识产权的高技术企业，胜杰将不断发展自有核心技术，为客户提供高效、稳定的企业通讯解决方案为己任。&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; line-height: 19.5px;&quot;&gt;&amp;nbsp;　&amp;nbsp; 公司依托博大精深的企业文化底蕴，汇聚了一支专业管理团队及一大批资深的研发技术人员。高层管理团队均具有十年以上的IT&lt;/span&gt;&lt;span style=&quot;padding: 0px; margin: 0px; line-height: 19.5px;&quot;&gt;管理经验，并有着广泛而且丰富的外企以及国有大型企业的IT背景和资源。研发技术人员通过多年的通信软件和信息化软件的开发与实践，使公司在解决方案、软件开发、系统维护以及综合工程方面具备了相当雄厚的实力。已成功的为电力、金融、零售、政府、城管、教育以及大型国有和外资企业提供基于交换机的呼叫中心系统集成解决方案。&lt;br style=&quot;padding: 0px; margin: 0px;&quot;/&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; color: rgb(102, 102, 102); font-family: Simsun; font-size: 12px; line-height: 25px; white-space: normal; background-color: rgb(232, 232, 232);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: small;&quot;&gt;&amp;nbsp; 　&amp;nbsp;&amp;nbsp;&lt;span style=&quot;padding: 0px; margin: 0px; line-height: 19.5px;&quot;&gt;面向日新月异的IT发展，胜杰将怀以积极进取的心态，为客户创造价值；以专业的精神，为客户提供最适应时代发展的解决方案。以达成客户满意度最大化为己任，倾情付出，与客户共创美好之未来。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', 'about', '', '0', '1', '1', '1', 'zh_cn', '1');
INSERT INTO `channel` VALUES ('35', '7', '0', '0', '企业文化', '0', '', '_self', 'qywh', '', '', '', 'page', '', '', '', '', '', '0', '1', '1', '0', 'zh_cn', '1');
INSERT INTO `channel` VALUES ('36', '3', '0', '0', '呼叫中心语音平台系统', '0', '', '_self', 'hjyy', '', '', '', 'article', '', '', '', '', '', '0', '1', '1', '0', 'zh_cn', '1');
INSERT INTO `channel` VALUES ('29', '0', '33', '34', '联系我们', '0', '', '_self', 'contactUs', '', '', '', 'page', '', '<p>\n <sub><sup><span style=\"font-size:24px;\">&nbsp;&nbsp; 咨询电话:13105961888&nbsp;&nbsp;&nbsp;&nbsp; QQ:330426192&nbsp;&nbsp;&nbsp;</span></sup></sub>\n</p>\n<p>\n <sub><sup><span style=\"font-size:24px;\">&nbsp;&nbsp; 生产地址:福建省福鼎市沙垅村&nbsp;&nbsp;&nbsp;&nbsp; 公司地址:福鼎市铂金华城7栋1301</span></sup></sub>\n</p>', '', '', '', '0', '1', '1', '99', 'zh_cn', '1');
INSERT INTO `channel` VALUES ('10', '3', '8', '9', '呼叫中心客服平台系统', '0', '', '_self', 'hxzx', '', '', '', 'article', '', '', '', '', '', '9', '1', '1', '99', 'zh_cn', '1');
INSERT INTO `channel` VALUES ('11', '3', '10', '11', '中小企业呼叫中心一体机', '0', '', '_self', 'fuwu', '', '', '0', 'article', '', '', '', '', '', '9', '1', '1', '99', 'zh_cn', '1');
INSERT INTO `channel` VALUES ('39', '37', '0', '0', '企业新闻', '0', '', '_self', 'qynews', '', '', '', 'article', '', '', '', '', '', '0', '1', '1', '0', 'zh_cn', '1');
INSERT INTO `channel` VALUES ('28', '7', '16', '17', '企业文化', '0', '', '_self', 'qiyewenhua', '', '', '', 'page', '', '', '', '', '', '0', '1', '1', '99', 'zh_cn', '1');
INSERT INTO `channel` VALUES ('26', '0', '29', '30', '代理产品', '0', '', '_self', 'zhichaliuc', '', '', '', 'article', '', '', '', 'article_news', '', '15', '1', '1', '4', 'zh_cn', '1');
INSERT INTO `channel` VALUES ('37', '0', '0', '0', '新闻中心', '0', '', '_self', 'news', '', '', '', 'article', '', '', '', 'news', '', '0', '1', '1', '2', 'zh_cn', '1');
INSERT INTO `link` VALUES ('2', '8', 'X6CMS 2.2 正式发布！', 'X6CMS 2.2 正式发布！', '2015-09-24/5603a37e69274.jpg', 'http://www.x6cms.com', '', '0', '1443079037', '2', '1', 'zh_cn');
INSERT INTO `link` VALUES ('3', '8', 'X6CMS 2.2 正式发布！', 'X6CMS 2.2 正式发布！', '2015-09-24/5603a2d71232d.jpg', 'http://www.x6cms.com', '', '0', '1443078870', '3', '1', 'zh_cn');
INSERT INTO `log` VALUES ('280', null, 'UserInfo', 'PassWord', '/index.php/Admin/UserInfo/PassWord.html', '1', '127.0.0.1', '2015-09-21 13:12:19', '1');
INSERT INTO `log` VALUES ('281', null, 'UserInfo', 'UserData', '/index.php/Admin/UserInfo/UserData.html', '1', '127.0.0.1', '2015-09-21 13:12:20', '1');
INSERT INTO `log` VALUES ('282', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 13:13:42', '1');
INSERT INTO `log` VALUES ('283', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 13:14:24', '1');
INSERT INTO `log` VALUES ('284', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 13:14:29', '1');
INSERT INTO `log` VALUES ('285', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 13:15:13', '1');
INSERT INTO `log` VALUES ('286', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 13:15:32', '1');
INSERT INTO `log` VALUES ('287', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('288', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 13:17:39', '1');
INSERT INTO `log` VALUES ('289', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('290', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 13:28:22', '1');
INSERT INTO `log` VALUES ('291', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 13:28:26', '1');
INSERT INTO `log` VALUES ('292', null, 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-09-21 13:28:29', '1');
INSERT INTO `log` VALUES ('293', null, 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-09-21 13:28:52', '1');
INSERT INTO `log` VALUES ('294', null, 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-21 13:28:53', '1');
INSERT INTO `log` VALUES ('295', null, 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-21 13:28:56', '1');
INSERT INTO `log` VALUES ('296', null, 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-09-21 13:29:00', '1');
INSERT INTO `log` VALUES ('297', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 13:29:04', '1');
INSERT INTO `log` VALUES ('298', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('299', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('300', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('301', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('302', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', null, null, null, '0');
INSERT INTO `log` VALUES ('303', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', null, null, null, '0');
INSERT INTO `log` VALUES ('304', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', null, null, null, '0');
INSERT INTO `log` VALUES ('305', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('306', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('307', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('308', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('309', null, 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-09-21 14:10:34', '1');
INSERT INTO `log` VALUES ('310', null, 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-09-21 14:10:51', '1');
INSERT INTO `log` VALUES ('311', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('312', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('313', null, 'UserInfo', 'PassWord', '/index.php/Admin/UserInfo/PassWord.html', '1', '127.0.0.1', '2015-09-21 14:36:23', '1');
INSERT INTO `log` VALUES ('314', null, 'UserInfo', 'PassWord', '/index.php/Admin/UserInfo/PassWord.html', '1', '127.0.0.1', '2015-09-21 14:36:24', '1');
INSERT INTO `log` VALUES ('315', null, 'UserInfo', 'UserData', '/index.php/Admin/UserInfo/UserData.html', '1', '127.0.0.1', '2015-09-21 14:36:26', '1');
INSERT INTO `log` VALUES ('316', null, 'UserInfo', 'Index', '/index.php/Admin/UserInfo/Index.html', '1', '127.0.0.1', '2015-09-21 14:36:27', '1');
INSERT INTO `log` VALUES ('317', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 14:36:34', '1');
INSERT INTO `log` VALUES ('318', null, 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-09-21 14:36:37', '1');
INSERT INTO `log` VALUES ('319', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 14:37:42', '1');
INSERT INTO `log` VALUES ('320', null, 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-09-21 14:37:44', '1');
INSERT INTO `log` VALUES ('321', null, 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-21 14:37:46', '1');
INSERT INTO `log` VALUES ('322', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 14:38:31', '1');
INSERT INTO `log` VALUES ('323', null, 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-09-21 14:38:33', '1');
INSERT INTO `log` VALUES ('324', null, 'UserInfo', 'PassWord', '/index.php/Admin/UserInfo/PassWord.html', '1', '127.0.0.1', '2015-09-21 14:38:38', '1');
INSERT INTO `log` VALUES ('325', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 14:38:42', '1');
INSERT INTO `log` VALUES ('326', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('327', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('328', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 14:44:16', '1');
INSERT INTO `log` VALUES ('329', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 14:44:20', '1');
INSERT INTO `log` VALUES ('330', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 14:44:22', '1');
INSERT INTO `log` VALUES ('331', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 14:44:27', '1');
INSERT INTO `log` VALUES ('332', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 14:44:32', '1');
INSERT INTO `log` VALUES ('333', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 14:44:35', '1');
INSERT INTO `log` VALUES ('334', null, 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-21 14:44:45', '1');
INSERT INTO `log` VALUES ('335', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 14:44:48', '1');
INSERT INTO `log` VALUES ('336', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 14:51:00', '1');
INSERT INTO `log` VALUES ('337', null, 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-09-21 14:51:01', '1');
INSERT INTO `log` VALUES ('338', null, 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-21 14:51:02', '1');
INSERT INTO `log` VALUES ('339', null, 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-21 14:51:04', '1');
INSERT INTO `log` VALUES ('340', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 14:51:25', '1');
INSERT INTO `log` VALUES ('341', null, 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-09-21 14:51:28', '1');
INSERT INTO `log` VALUES ('342', null, 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-21 14:51:29', '1');
INSERT INTO `log` VALUES ('343', null, 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-21 14:51:32', '1');
INSERT INTO `log` VALUES ('344', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 14:51:42', '1');
INSERT INTO `log` VALUES ('345', null, 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-09-21 14:51:45', '1');
INSERT INTO `log` VALUES ('346', null, 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-21 14:51:49', '1');
INSERT INTO `log` VALUES ('347', null, 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-21 14:51:55', '1');
INSERT INTO `log` VALUES ('348', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 14:51:57', '1');
INSERT INTO `log` VALUES ('349', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 14:52:05', '1');
INSERT INTO `log` VALUES ('350', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 14:52:11', '1');
INSERT INTO `log` VALUES ('351', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 14:52:31', '1');
INSERT INTO `log` VALUES ('352', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 14:52:46', '1');
INSERT INTO `log` VALUES ('353', null, 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-21 14:52:48', '1');
INSERT INTO `log` VALUES ('354', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 14:52:56', '1');
INSERT INTO `log` VALUES ('355', null, 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-09-21 14:53:00', '1');
INSERT INTO `log` VALUES ('356', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 14:53:02', '1');
INSERT INTO `log` VALUES ('357', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 14:53:09', '1');
INSERT INTO `log` VALUES ('358', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 14:53:12', '1');
INSERT INTO `log` VALUES ('359', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 14:59:39', '1');
INSERT INTO `log` VALUES ('360', null, 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-21 14:59:54', '1');
INSERT INTO `log` VALUES ('361', null, 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-21 15:00:03', '1');
INSERT INTO `log` VALUES ('362', null, 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-21 15:00:04', '1');
INSERT INTO `log` VALUES ('363', null, 'Auth', 'edit', '/index.php/Admin/Auth/edit.html', '1', '127.0.0.1', '2015-09-21 15:00:07', '1');
INSERT INTO `log` VALUES ('364', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 15:00:10', '1');
INSERT INTO `log` VALUES ('365', null, 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-21 15:00:25', '1');
INSERT INTO `log` VALUES ('366', null, 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-09-21 15:00:26', '1');
INSERT INTO `log` VALUES ('367', null, 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-21 15:00:28', '1');
INSERT INTO `log` VALUES ('368', null, 'Auth', 'role', '/index.php/Admin/Auth/role.html', '1', '127.0.0.1', '2015-09-21 15:00:31', '1');
INSERT INTO `log` VALUES ('369', null, 'Auth', 'role', '/index.php/Admin/Auth/role.html', '1', '127.0.0.1', '2015-09-21 15:00:36', '1');
INSERT INTO `log` VALUES ('370', null, 'Auth', 'index', '/index.php/Admin/Auth/index.html', '1', '127.0.0.1', '2015-09-21 15:00:38', '1');
INSERT INTO `log` VALUES ('371', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 15:00:39', '1');
INSERT INTO `log` VALUES ('372', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('373', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('374', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 15:18:31', '1');
INSERT INTO `log` VALUES ('375', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 15:18:59', '1');
INSERT INTO `log` VALUES ('376', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 15:19:05', '1');
INSERT INTO `log` VALUES ('377', null, 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-21 15:19:07', '1');
INSERT INTO `log` VALUES ('378', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 15:19:10', '1');
INSERT INTO `log` VALUES ('379', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 15:19:18', '1');
INSERT INTO `log` VALUES ('380', null, 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-21 15:19:20', '1');
INSERT INTO `log` VALUES ('381', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 15:19:24', '1');
INSERT INTO `log` VALUES ('382', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 15:19:31', '1');
INSERT INTO `log` VALUES ('383', null, 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-21 15:19:33', '1');
INSERT INTO `log` VALUES ('384', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 15:19:42', '1');
INSERT INTO `log` VALUES ('385', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 15:19:52', '1');
INSERT INTO `log` VALUES ('386', null, 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-21 15:19:54', '1');
INSERT INTO `log` VALUES ('387', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 15:19:57', '1');
INSERT INTO `log` VALUES ('388', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 15:20:05', '1');
INSERT INTO `log` VALUES ('389', null, 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-21 15:20:07', '1');
INSERT INTO `log` VALUES ('390', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 15:20:10', '1');
INSERT INTO `log` VALUES ('391', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 15:20:20', '1');
INSERT INTO `log` VALUES ('392', null, 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-21 15:20:22', '1');
INSERT INTO `log` VALUES ('393', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 15:20:29', '1');
INSERT INTO `log` VALUES ('394', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 15:20:32', '1');
INSERT INTO `log` VALUES ('395', null, 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-21 15:20:34', '1');
INSERT INTO `log` VALUES ('396', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 15:20:37', '1');
INSERT INTO `log` VALUES ('397', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 15:20:40', '1');
INSERT INTO `log` VALUES ('398', null, 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-21 15:20:42', '1');
INSERT INTO `log` VALUES ('399', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 15:20:44', '1');
INSERT INTO `log` VALUES ('400', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 15:20:48', '1');
INSERT INTO `log` VALUES ('401', null, 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-21 15:20:50', '1');
INSERT INTO `log` VALUES ('402', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 15:20:53', '1');
INSERT INTO `log` VALUES ('403', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 15:20:55', '1');
INSERT INTO `log` VALUES ('404', null, 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-21 15:20:57', '1');
INSERT INTO `log` VALUES ('405', null, 'UserInfo', 'PassWord', '/index.php/Admin/UserInfo/PassWord.html', '1', '127.0.0.1', '2015-09-21 15:21:00', '1');
INSERT INTO `log` VALUES ('406', null, 'UserInfo', 'UserData', '/index.php/Admin/UserInfo/UserData.html', '1', '127.0.0.1', '2015-09-21 15:21:02', '1');
INSERT INTO `log` VALUES ('407', null, 'UserInfo', 'Index', '/index.php/Admin/UserInfo/Index.html', '1', '127.0.0.1', '2015-09-21 15:21:03', '1');
INSERT INTO `log` VALUES ('408', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 15:21:07', '1');
INSERT INTO `log` VALUES ('409', null, 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-09-21 15:21:09', '1');
INSERT INTO `log` VALUES ('410', null, 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-21 15:21:10', '1');
INSERT INTO `log` VALUES ('411', null, 'Auth', 'role', '/index.php/Admin/Auth/role.html', '1', '127.0.0.1', '2015-09-21 15:21:14', '1');
INSERT INTO `log` VALUES ('412', null, 'Auth', 'role', '/index.php/Admin/Auth/role.html', '1', '127.0.0.1', '2015-09-21 15:21:16', '1');
INSERT INTO `log` VALUES ('413', null, 'Auth', 'index', '/index.php/Admin/Auth/index.html', '1', '127.0.0.1', '2015-09-21 15:21:18', '1');
INSERT INTO `log` VALUES ('414', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', null, null, null, '0');
INSERT INTO `log` VALUES ('415', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('416', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', null, null, null, '0');
INSERT INTO `log` VALUES ('417', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('418', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('419', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 15:22:11', '1');
INSERT INTO `log` VALUES ('420', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 15:22:16', '1');
INSERT INTO `log` VALUES ('421', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 15:22:18', '1');
INSERT INTO `log` VALUES ('422', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 15:22:23', '1');
INSERT INTO `log` VALUES ('423', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 15:22:27', '1');
INSERT INTO `log` VALUES ('424', null, 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-21 15:22:29', '1');
INSERT INTO `log` VALUES ('425', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 15:22:30', '1');
INSERT INTO `log` VALUES ('426', null, 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-09-21 15:22:31', '1');
INSERT INTO `log` VALUES ('427', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 15:22:34', '1');
INSERT INTO `log` VALUES ('428', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 15:22:37', '1');
INSERT INTO `log` VALUES ('429', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 15:22:41', '1');
INSERT INTO `log` VALUES ('430', null, 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-21 15:22:43', '1');
INSERT INTO `log` VALUES ('431', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 15:22:44', '1');
INSERT INTO `log` VALUES ('432', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 15:22:47', '1');
INSERT INTO `log` VALUES ('433', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 15:22:50', '1');
INSERT INTO `log` VALUES ('434', null, 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-21 15:22:52', '1');
INSERT INTO `log` VALUES ('435', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('436', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('437', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('438', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('439', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('440', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('441', null, 'UserInfo', 'PassWord', '/index.php/Admin/UserInfo/PassWord.html', '1', '127.0.0.1', '2015-09-21 15:37:34', '1');
INSERT INTO `log` VALUES ('442', null, 'UserInfo', 'UserData', '/index.php/Admin/UserInfo/UserData.html', '1', '127.0.0.1', '2015-09-21 15:37:35', '1');
INSERT INTO `log` VALUES ('443', null, 'UserInfo', 'Index', '/index.php/Admin/UserInfo/Index.html', '1', '127.0.0.1', '2015-09-21 15:37:41', '1');
INSERT INTO `log` VALUES ('444', null, 'UserInfo', 'PassWord', '/index.php/Admin/UserInfo/PassWord.html', '1', '127.0.0.1', '2015-09-21 15:37:43', '1');
INSERT INTO `log` VALUES ('445', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 15:37:46', '1');
INSERT INTO `log` VALUES ('446', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 15:37:49', '1');
INSERT INTO `log` VALUES ('447', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 15:38:04', '1');
INSERT INTO `log` VALUES ('448', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 15:38:05', '1');
INSERT INTO `log` VALUES ('449', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 15:39:20', '1');
INSERT INTO `log` VALUES ('450', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 15:39:21', '1');
INSERT INTO `log` VALUES ('451', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 15:39:22', '1');
INSERT INTO `log` VALUES ('452', null, 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-21 15:39:23', '1');
INSERT INTO `log` VALUES ('453', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 15:39:26', '1');
INSERT INTO `log` VALUES ('454', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 15:39:29', '1');
INSERT INTO `log` VALUES ('455', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 15:40:18', '1');
INSERT INTO `log` VALUES ('456', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 15:40:22', '1');
INSERT INTO `log` VALUES ('457', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('458', null, 'UserInfo', 'PassWord', '/index.php/Admin/UserInfo/PassWord.html', '1', '127.0.0.1', '2015-09-21 15:44:09', '1');
INSERT INTO `log` VALUES ('459', null, 'UserInfo', 'PassWord', '/index.php/Admin/UserInfo/PassWord.html', '1', '127.0.0.1', '2015-09-21 15:54:22', '1');
INSERT INTO `log` VALUES ('460', null, 'UserInfo', 'UserData', '/index.php/Admin/UserInfo/UserData.html', '1', '127.0.0.1', '2015-09-21 15:54:24', '1');
INSERT INTO `log` VALUES ('461', null, 'UserInfo', 'Index', '/index.php/Admin/UserInfo/Index.html', '1', '127.0.0.1', '2015-09-21 15:54:26', '1');
INSERT INTO `log` VALUES ('462', null, 'UserInfo', 'Index', '/index.php/Admin/UserInfo/Index.html', '1', '127.0.0.1', '2015-09-21 15:54:27', '1');
INSERT INTO `log` VALUES ('463', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 15:54:30', '1');
INSERT INTO `log` VALUES ('464', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 15:54:32', '1');
INSERT INTO `log` VALUES ('465', null, 'UserInfo', 'PassWord', '/index.php/Admin/UserInfo/PassWord.html', '1', '127.0.0.1', '2015-09-21 15:54:40', '1');
INSERT INTO `log` VALUES ('466', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 15:54:52', '1');
INSERT INTO `log` VALUES ('467', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 15:54:58', '1');
INSERT INTO `log` VALUES ('468', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 15:55:08', '1');
INSERT INTO `log` VALUES ('469', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 15:55:09', '1');
INSERT INTO `log` VALUES ('470', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 16:01:56', '1');
INSERT INTO `log` VALUES ('471', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 16:11:03', '1');
INSERT INTO `log` VALUES ('472', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 16:11:05', '1');
INSERT INTO `log` VALUES ('473', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 16:11:07', '1');
INSERT INTO `log` VALUES ('474', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 16:12:11', '1');
INSERT INTO `log` VALUES ('475', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 16:12:13', '1');
INSERT INTO `log` VALUES ('476', null, 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-21 16:12:26', '1');
INSERT INTO `log` VALUES ('477', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 16:15:37', '1');
INSERT INTO `log` VALUES ('478', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 16:15:43', '1');
INSERT INTO `log` VALUES ('479', null, 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-21 16:16:29', '1');
INSERT INTO `log` VALUES ('480', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 16:16:35', '1');
INSERT INTO `log` VALUES ('481', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 16:18:20', '1');
INSERT INTO `log` VALUES ('482', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 16:18:21', '1');
INSERT INTO `log` VALUES ('483', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 16:18:23', '1');
INSERT INTO `log` VALUES ('484', null, 'UserInfo', 'PassWord', '/index.php/Admin/UserInfo/PassWord.html', '1', '127.0.0.1', '2015-09-21 16:23:25', '1');
INSERT INTO `log` VALUES ('485', null, 'UserInfo', 'UserData', '/index.php/Admin/UserInfo/UserData.html', '1', '127.0.0.1', '2015-09-21 16:23:27', '1');
INSERT INTO `log` VALUES ('486', null, 'UserInfo', 'Index', '/index.php/Admin/UserInfo/Index.html', '1', '127.0.0.1', '2015-09-21 16:23:28', '1');
INSERT INTO `log` VALUES ('487', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 16:23:32', '1');
INSERT INTO `log` VALUES ('488', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 16:29:59', '1');
INSERT INTO `log` VALUES ('489', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 16:30:00', '1');
INSERT INTO `log` VALUES ('490', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 16:30:03', '1');
INSERT INTO `log` VALUES ('491', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', null, null, null, '0');
INSERT INTO `log` VALUES ('492', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', null, null, null, '0');
INSERT INTO `log` VALUES ('493', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('494', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('495', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('496', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('497', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('498', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('499', '', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', null, null, null, '1');
INSERT INTO `log` VALUES ('500', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('501', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 18:06:46', '1');
INSERT INTO `log` VALUES ('502', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 18:06:59', '1');
INSERT INTO `log` VALUES ('503', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 18:07:05', '1');
INSERT INTO `log` VALUES ('504', null, 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-21 18:07:07', '1');
INSERT INTO `log` VALUES ('505', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 18:07:43', '1');
INSERT INTO `log` VALUES ('506', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 18:07:50', '1');
INSERT INTO `log` VALUES ('507', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 18:08:01', '1');
INSERT INTO `log` VALUES ('508', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 18:08:05', '1');
INSERT INTO `log` VALUES ('509', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 18:08:32', '1');
INSERT INTO `log` VALUES ('510', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 18:08:34', '1');
INSERT INTO `log` VALUES ('511', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 18:08:39', '1');
INSERT INTO `log` VALUES ('512', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 18:08:45', '1');
INSERT INTO `log` VALUES ('513', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 18:09:03', '1');
INSERT INTO `log` VALUES ('514', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 18:09:04', '1');
INSERT INTO `log` VALUES ('515', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 18:09:09', '1');
INSERT INTO `log` VALUES ('516', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 18:09:15', '1');
INSERT INTO `log` VALUES ('517', null, 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-21 18:09:17', '1');
INSERT INTO `log` VALUES ('518', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 18:09:20', '1');
INSERT INTO `log` VALUES ('519', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 18:09:24', '1');
INSERT INTO `log` VALUES ('520', null, 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-21 18:09:27', '1');
INSERT INTO `log` VALUES ('521', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 18:09:33', '1');
INSERT INTO `log` VALUES ('522', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 18:09:36', '1');
INSERT INTO `log` VALUES ('523', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 18:09:37', '1');
INSERT INTO `log` VALUES ('524', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('525', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('526', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('527', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('528', null, 'UserInfo', 'PassWord', '/index.php/Admin/UserInfo/PassWord.html', '1', '127.0.0.1', '2015-09-21 18:15:39', '1');
INSERT INTO `log` VALUES ('529', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 18:15:40', '1');
INSERT INTO `log` VALUES ('530', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 18:15:42', '1');
INSERT INTO `log` VALUES ('531', null, 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-21 18:15:43', '1');
INSERT INTO `log` VALUES ('532', null, 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-21 18:16:35', '1');
INSERT INTO `log` VALUES ('533', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 18:16:47', '1');
INSERT INTO `log` VALUES ('534', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 18:16:52', '1');
INSERT INTO `log` VALUES ('535', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 18:16:59', '1');
INSERT INTO `log` VALUES ('536', null, 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-21 18:17:01', '1');
INSERT INTO `log` VALUES ('537', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 18:17:06', '1');
INSERT INTO `log` VALUES ('538', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-21 18:17:10', '1');
INSERT INTO `log` VALUES ('539', null, 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-21 18:17:12', '1');
INSERT INTO `log` VALUES ('540', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 18:17:23', '1');
INSERT INTO `log` VALUES ('541', null, 'Index', 'Index', '/index.php/Admin/Index/Index.html', '1', '127.0.0.1', '2015-09-21 18:17:24', '1');
INSERT INTO `log` VALUES ('542', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-21 18:17:25', '1');
INSERT INTO `log` VALUES ('543', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('544', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('545', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('546', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('547', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('548', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('549', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('550', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('551', null, 'UserInfo', 'PassWord', '/index.php/Admin/UserInfo/PassWord.html', '13', '127.0.0.1', '2015-09-22 14:02:58', '1');
INSERT INTO `log` VALUES ('552', null, 'UserInfo', 'UserData', '/index.php/Admin/UserInfo/UserData.html', '13', '127.0.0.1', '2015-09-22 14:03:01', '1');
INSERT INTO `log` VALUES ('553', null, 'UserInfo', 'Index', '/index.php/Admin/UserInfo/Index.html', '13', '127.0.0.1', '2015-09-22 14:03:04', '1');
INSERT INTO `log` VALUES ('554', null, 'UserInfo', 'PassWord', '/index.php/Admin/UserInfo/PassWord.html', '13', '127.0.0.1', '2015-09-22 14:04:12', '1');
INSERT INTO `log` VALUES ('555', null, 'UserInfo', 'UserData', '/index.php/Admin/UserInfo/UserData.html', '13', '127.0.0.1', '2015-09-22 14:04:15', '1');
INSERT INTO `log` VALUES ('556', null, 'UserInfo', 'UserData', '/index.php/Admin/UserInfo/UserData.html', '13', '127.0.0.1', '2015-09-22 14:06:55', '1');
INSERT INTO `log` VALUES ('557', null, 'UserInfo', 'PassWord', '/index.php/Admin/UserInfo/PassWord.html', '13', '127.0.0.1', '2015-09-22 14:06:58', '1');
INSERT INTO `log` VALUES ('558', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('559', null, 'UserInfo', 'PassWord', '/index.php/Admin/UserInfo/PassWord.html', '13', '127.0.0.1', '2015-09-22 14:07:29', '1');
INSERT INTO `log` VALUES ('560', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '13', '127.0.0.1', '2015-09-22 14:07:35', '1');
INSERT INTO `log` VALUES ('561', null, 'UserInfo', 'PassWord', '/index.php/Admin/UserInfo/PassWord.html', '13', '127.0.0.1', '2015-09-22 14:07:44', '1');
INSERT INTO `log` VALUES ('562', null, 'UserInfo', 'PassWord', '/index.php/Admin/UserInfo/PassWord.html', '13', '127.0.0.1', '2015-09-22 14:07:50', '1');
INSERT INTO `log` VALUES ('563', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('564', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-22 14:08:23', '1');
INSERT INTO `log` VALUES ('565', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-22 14:08:35', '1');
INSERT INTO `log` VALUES ('566', null, 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-22 14:09:30', '1');
INSERT INTO `log` VALUES ('567', null, 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-22 14:09:32', '1');
INSERT INTO `log` VALUES ('568', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-22 14:14:16', '1');
INSERT INTO `log` VALUES ('569', null, 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-09-22 14:14:18', '1');
INSERT INTO `log` VALUES ('570', null, 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-22 14:14:20', '1');
INSERT INTO `log` VALUES ('571', null, 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-22 14:14:21', '1');
INSERT INTO `log` VALUES ('572', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-22 14:14:24', '1');
INSERT INTO `log` VALUES ('573', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-22 14:14:46', '1');
INSERT INTO `log` VALUES ('574', null, 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-09-22 14:14:47', '1');
INSERT INTO `log` VALUES ('575', null, 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-22 14:14:48', '1');
INSERT INTO `log` VALUES ('576', null, 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-22 14:14:50', '1');
INSERT INTO `log` VALUES ('577', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-22 14:15:37', '1');
INSERT INTO `log` VALUES ('578', null, 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:15:38', '1');
INSERT INTO `log` VALUES ('579', null, 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:17:24', '1');
INSERT INTO `log` VALUES ('580', null, 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-22 14:17:40', '1');
INSERT INTO `log` VALUES ('581', null, 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:17:42', '1');
INSERT INTO `log` VALUES ('582', null, 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:17:48', '1');
INSERT INTO `log` VALUES ('583', null, 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:17:49', '1');
INSERT INTO `log` VALUES ('584', null, 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:17:53', '1');
INSERT INTO `log` VALUES ('585', null, 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:18:08', '1');
INSERT INTO `log` VALUES ('586', null, 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:24:17', '1');
INSERT INTO `log` VALUES ('587', null, 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:25:10', '1');
INSERT INTO `log` VALUES ('588', null, 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-22 14:25:12', '1');
INSERT INTO `log` VALUES ('589', null, 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:25:15', '1');
INSERT INTO `log` VALUES ('590', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-22 14:26:02', '1');
INSERT INTO `log` VALUES ('591', 'admin', 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-09-22 14:26:04', '1');
INSERT INTO `log` VALUES ('592', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:26:05', '1');
INSERT INTO `log` VALUES ('593', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', null, null, null, '0');
INSERT INTO `log` VALUES ('594', 'user', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('595', 'user', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '13', '127.0.0.1', '2015-09-22 14:37:31', '1');
INSERT INTO `log` VALUES ('596', 'user', 'User', 'Index', '/index.php/Admin/User/Index.html', '13', '127.0.0.1', '2015-09-22 14:37:35', '1');
INSERT INTO `log` VALUES ('597', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('598', 'admin', 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-22 14:37:52', '1');
INSERT INTO `log` VALUES ('599', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-22 14:38:32', '1');
INSERT INTO `log` VALUES ('600', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:38:48', '1');
INSERT INTO `log` VALUES ('601', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:40:57', '1');
INSERT INTO `log` VALUES ('602', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:41:00', '1');
INSERT INTO `log` VALUES ('603', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:41:03', '1');
INSERT INTO `log` VALUES ('604', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:41:05', '1');
INSERT INTO `log` VALUES ('605', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:41:08', '1');
INSERT INTO `log` VALUES ('606', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:41:10', '1');
INSERT INTO `log` VALUES ('607', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:41:16', '1');
INSERT INTO `log` VALUES ('608', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:41:18', '1');
INSERT INTO `log` VALUES ('609', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:41:25', '1');
INSERT INTO `log` VALUES ('610', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:42:20', '1');
INSERT INTO `log` VALUES ('611', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:44:55', '1');
INSERT INTO `log` VALUES ('612', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:44:58', '1');
INSERT INTO `log` VALUES ('613', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:44:59', '1');
INSERT INTO `log` VALUES ('614', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:45:00', '1');
INSERT INTO `log` VALUES ('615', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:45:01', '1');
INSERT INTO `log` VALUES ('616', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', null, null, null, '0');
INSERT INTO `log` VALUES ('617', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('618', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:45:22', '1');
INSERT INTO `log` VALUES ('619', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-22 14:49:28', '1');
INSERT INTO `log` VALUES ('620', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:49:30', '1');
INSERT INTO `log` VALUES ('621', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:49:39', '1');
INSERT INTO `log` VALUES ('622', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:49:41', '1');
INSERT INTO `log` VALUES ('623', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:49:43', '1');
INSERT INTO `log` VALUES ('624', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:49:44', '1');
INSERT INTO `log` VALUES ('625', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:49:45', '1');
INSERT INTO `log` VALUES ('626', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:49:47', '1');
INSERT INTO `log` VALUES ('627', 'admin', 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-22 14:49:49', '1');
INSERT INTO `log` VALUES ('628', 'admin', 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-22 14:49:52', '1');
INSERT INTO `log` VALUES ('629', 'admin', 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-09-22 14:49:54', '1');
INSERT INTO `log` VALUES ('630', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-22 14:49:59', '1');
INSERT INTO `log` VALUES ('631', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-22 14:50:05', '1');
INSERT INTO `log` VALUES ('632', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:54:43', '1');
INSERT INTO `log` VALUES ('633', 'admin', 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-22 14:54:46', '1');
INSERT INTO `log` VALUES ('634', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-22 14:55:26', '1');
INSERT INTO `log` VALUES ('635', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-22 14:55:35', '1');
INSERT INTO `log` VALUES ('636', 'admin', 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-09-22 14:55:37', '1');
INSERT INTO `log` VALUES ('637', 'admin', 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-22 14:55:38', '1');
INSERT INTO `log` VALUES ('638', 'admin', 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-22 14:55:39', '1');
INSERT INTO `log` VALUES ('639', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-22 14:55:40', '1');
INSERT INTO `log` VALUES ('640', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-22 14:55:44', '1');
INSERT INTO `log` VALUES ('641', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-22 14:56:54', '1');
INSERT INTO `log` VALUES ('642', 'admin', 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-22 14:56:56', '1');
INSERT INTO `log` VALUES ('643', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:56:58', '1');
INSERT INTO `log` VALUES ('644', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:57:01', '1');
INSERT INTO `log` VALUES ('645', 'admin', 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-22 14:57:03', '1');
INSERT INTO `log` VALUES ('646', 'admin', 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-22 14:57:05', '1');
INSERT INTO `log` VALUES ('647', 'admin', 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-09-22 14:57:07', '1');
INSERT INTO `log` VALUES ('648', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-22 14:57:08', '1');
INSERT INTO `log` VALUES ('649', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 14:57:10', '1');
INSERT INTO `log` VALUES ('650', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-22 14:57:20', '1');
INSERT INTO `log` VALUES ('651', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-22 14:57:24', '1');
INSERT INTO `log` VALUES ('652', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-22 14:57:27', '1');
INSERT INTO `log` VALUES ('653', 'admin', 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-22 14:57:29', '1');
INSERT INTO `log` VALUES ('654', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-09-22 15:11:38', '1');
INSERT INTO `log` VALUES ('655', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-09-22 15:13:37', '1');
INSERT INTO `log` VALUES ('656', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-09-22 15:15:02', '1');
INSERT INTO `log` VALUES ('657', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-09-22 15:15:12', '1');
INSERT INTO `log` VALUES ('658', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-09-22 15:15:41', '1');
INSERT INTO `log` VALUES ('659', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-22 15:15:58', '1');
INSERT INTO `log` VALUES ('660', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-09-22 15:16:00', '1');
INSERT INTO `log` VALUES ('661', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-09-22 15:17:57', '1');
INSERT INTO `log` VALUES ('662', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-09-22 15:18:05', '1');
INSERT INTO `log` VALUES ('663', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-09-22 15:18:15', '1');
INSERT INTO `log` VALUES ('664', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-22 15:19:07', '1');
INSERT INTO `log` VALUES ('665', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 15:19:09', '1');
INSERT INTO `log` VALUES ('666', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-09-22 15:19:11', '1');
INSERT INTO `log` VALUES ('667', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-09-22 15:19:14', '1');
INSERT INTO `log` VALUES ('668', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-09-22 15:19:15', '1');
INSERT INTO `log` VALUES ('669', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-22 15:23:06', '1');
INSERT INTO `log` VALUES ('670', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-22 15:23:10', '1');
INSERT INTO `log` VALUES ('671', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-22 15:23:56', '1');
INSERT INTO `log` VALUES ('672', 'admin', 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-22 15:23:58', '1');
INSERT INTO `log` VALUES ('673', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-22 15:24:03', '1');
INSERT INTO `log` VALUES ('674', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-22 15:24:08', '1');
INSERT INTO `log` VALUES ('675', 'admin', 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-22 15:24:10', '1');
INSERT INTO `log` VALUES ('676', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-22 15:24:13', '1');
INSERT INTO `log` VALUES ('677', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-22 15:24:17', '1');
INSERT INTO `log` VALUES ('678', 'admin', 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-22 15:24:20', '1');
INSERT INTO `log` VALUES ('679', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-22 15:31:04', '1');
INSERT INTO `log` VALUES ('680', 'admin', 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-09-22 15:31:06', '1');
INSERT INTO `log` VALUES ('681', 'admin', 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-22 15:31:07', '1');
INSERT INTO `log` VALUES ('682', 'admin', 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-22 15:31:08', '1');
INSERT INTO `log` VALUES ('683', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-22 15:31:10', '1');
INSERT INTO `log` VALUES ('684', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-09-22 15:31:12', '1');
INSERT INTO `log` VALUES ('685', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-22 15:37:37', '1');
INSERT INTO `log` VALUES ('686', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-22 15:37:41', '1');
INSERT INTO `log` VALUES ('687', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-22 15:43:10', '1');
INSERT INTO `log` VALUES ('688', 'admin', 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-22 15:43:12', '1');
INSERT INTO `log` VALUES ('689', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-22 15:43:20', '1');
INSERT INTO `log` VALUES ('690', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-22 15:43:24', '1');
INSERT INTO `log` VALUES ('691', 'admin', 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-22 15:43:27', '1');
INSERT INTO `log` VALUES ('692', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-22 15:43:31', '1');
INSERT INTO `log` VALUES ('693', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-22 15:43:36', '1');
INSERT INTO `log` VALUES ('694', 'admin', 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-22 15:43:39', '1');
INSERT INTO `log` VALUES ('695', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 15:47:47', '1');
INSERT INTO `log` VALUES ('696', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 15:50:45', '1');
INSERT INTO `log` VALUES ('697', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 15:51:10', '1');
INSERT INTO `log` VALUES ('698', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 15:51:23', '1');
INSERT INTO `log` VALUES ('699', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 15:55:13', '1');
INSERT INTO `log` VALUES ('700', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 15:56:06', '1');
INSERT INTO `log` VALUES ('701', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 15:56:09', '1');
INSERT INTO `log` VALUES ('702', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 15:56:10', '1');
INSERT INTO `log` VALUES ('703', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 15:56:25', '1');
INSERT INTO `log` VALUES ('704', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 15:57:00', '1');
INSERT INTO `log` VALUES ('705', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 15:57:44', '1');
INSERT INTO `log` VALUES ('706', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 15:58:47', '1');
INSERT INTO `log` VALUES ('707', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 15:59:00', '1');
INSERT INTO `log` VALUES ('708', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 15:59:03', '1');
INSERT INTO `log` VALUES ('709', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 15:59:13', '1');
INSERT INTO `log` VALUES ('710', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:00:02', '1');
INSERT INTO `log` VALUES ('711', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:00:10', '1');
INSERT INTO `log` VALUES ('712', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:00:25', '1');
INSERT INTO `log` VALUES ('713', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:00:46', '1');
INSERT INTO `log` VALUES ('714', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:01:07', '1');
INSERT INTO `log` VALUES ('715', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:01:18', '1');
INSERT INTO `log` VALUES ('716', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:01:25', '1');
INSERT INTO `log` VALUES ('717', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:03:44', '1');
INSERT INTO `log` VALUES ('718', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:03:57', '1');
INSERT INTO `log` VALUES ('719', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:04:01', '1');
INSERT INTO `log` VALUES ('720', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:04:13', '1');
INSERT INTO `log` VALUES ('721', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:04:35', '1');
INSERT INTO `log` VALUES ('722', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:05:37', '1');
INSERT INTO `log` VALUES ('723', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:06:28', '1');
INSERT INTO `log` VALUES ('724', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:07:11', '1');
INSERT INTO `log` VALUES ('725', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:08:57', '1');
INSERT INTO `log` VALUES ('726', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:09:01', '1');
INSERT INTO `log` VALUES ('727', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:09:26', '1');
INSERT INTO `log` VALUES ('728', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:09:49', '1');
INSERT INTO `log` VALUES ('729', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:10:42', '1');
INSERT INTO `log` VALUES ('730', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:11:28', '1');
INSERT INTO `log` VALUES ('731', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:12:03', '1');
INSERT INTO `log` VALUES ('732', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:12:06', '1');
INSERT INTO `log` VALUES ('733', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:12:27', '1');
INSERT INTO `log` VALUES ('734', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:12:44', '1');
INSERT INTO `log` VALUES ('735', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-09-22 16:15:53', '1');
INSERT INTO `log` VALUES ('736', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:16:07', '1');
INSERT INTO `log` VALUES ('737', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:19:44', '1');
INSERT INTO `log` VALUES ('738', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:21:17', '1');
INSERT INTO `log` VALUES ('739', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:25:39', '1');
INSERT INTO `log` VALUES ('740', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:26:21', '1');
INSERT INTO `log` VALUES ('741', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:26:37', '1');
INSERT INTO `log` VALUES ('742', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:27:12', '1');
INSERT INTO `log` VALUES ('743', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:27:24', '1');
INSERT INTO `log` VALUES ('744', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:27:53', '1');
INSERT INTO `log` VALUES ('745', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:27:57', '1');
INSERT INTO `log` VALUES ('746', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:30:21', '1');
INSERT INTO `log` VALUES ('747', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:30:39', '1');
INSERT INTO `log` VALUES ('748', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:30:41', '1');
INSERT INTO `log` VALUES ('749', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:30:59', '1');
INSERT INTO `log` VALUES ('750', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:31:07', '1');
INSERT INTO `log` VALUES ('751', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:33:51', '1');
INSERT INTO `log` VALUES ('752', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:36:59', '1');
INSERT INTO `log` VALUES ('753', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:37:54', '1');
INSERT INTO `log` VALUES ('754', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:38:06', '1');
INSERT INTO `log` VALUES ('755', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:38:51', '1');
INSERT INTO `log` VALUES ('756', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:39:40', '1');
INSERT INTO `log` VALUES ('757', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:39:57', '1');
INSERT INTO `log` VALUES ('758', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:40:12', '1');
INSERT INTO `log` VALUES ('759', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:40:48', '1');
INSERT INTO `log` VALUES ('760', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:40:51', '1');
INSERT INTO `log` VALUES ('761', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:41:26', '1');
INSERT INTO `log` VALUES ('762', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-22 16:41:28', '1');
INSERT INTO `log` VALUES ('763', 'user', 'Admin', 'checkLogin', '/admin.php/Admin/checkLogin.html', '13', null, null, '1');
INSERT INTO `log` VALUES ('764', 'user', 'Menu', 'Index', '/admin.php/Menu/Index.html', '13', '127.0.0.1', '2015-09-23 16:28:27', '1');
INSERT INTO `log` VALUES ('765', 'user', 'User', 'Index', '/admin.php/User/Index.html', '13', '127.0.0.1', '2015-09-23 16:28:30', '1');
INSERT INTO `log` VALUES ('766', 'admin', 'Admin', 'checkLogin', '/admin.php/Admin/checkLogin.html', null, null, null, '0');
INSERT INTO `log` VALUES ('767', 'admin', 'Admin', 'checkLogin', '/admin.php/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('768', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 16:28:54', '1');
INSERT INTO `log` VALUES ('769', 'admin', 'Menu', 'edit', '/admin.php/Menu/edit.html', '1', '127.0.0.1', '2015-09-23 16:28:58', '1');
INSERT INTO `log` VALUES ('770', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 16:29:54', '1');
INSERT INTO `log` VALUES ('771', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 16:29:55', '1');
INSERT INTO `log` VALUES ('772', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 16:29:57', '1');
INSERT INTO `log` VALUES ('773', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 16:30:33', '1');
INSERT INTO `log` VALUES ('774', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 16:30:38', '1');
INSERT INTO `log` VALUES ('775', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 16:30:55', '1');
INSERT INTO `log` VALUES ('776', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 16:31:18', '1');
INSERT INTO `log` VALUES ('777', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 16:31:57', '1');
INSERT INTO `log` VALUES ('778', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 16:32:18', '1');
INSERT INTO `log` VALUES ('779', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 16:32:46', '1');
INSERT INTO `log` VALUES ('780', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 16:39:35', '1');
INSERT INTO `log` VALUES ('781', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 16:40:46', '1');
INSERT INTO `log` VALUES ('782', 'admin', 'Auth', 'Index', '/admin.php/Auth/Index.html', '1', '127.0.0.1', '2015-09-23 16:41:01', '1');
INSERT INTO `log` VALUES ('783', 'admin', 'Auth', 'Index', '/admin.php/Auth/Index.html', '1', '127.0.0.1', '2015-09-23 16:41:03', '1');
INSERT INTO `log` VALUES ('784', 'admin', 'User', 'Index', '/admin.php/User/Index.html', '1', '127.0.0.1', '2015-09-23 16:41:05', '1');
INSERT INTO `log` VALUES ('785', 'admin', 'Menu', 'Index', '/admin.php/Menu/Index.html', '1', '127.0.0.1', '2015-09-23 16:41:08', '1');
INSERT INTO `log` VALUES ('786', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 17:20:59', '1');
INSERT INTO `log` VALUES ('787', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 17:21:18', '1');
INSERT INTO `log` VALUES ('788', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 17:21:20', '1');
INSERT INTO `log` VALUES ('789', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 17:21:22', '1');
INSERT INTO `log` VALUES ('790', 'admin', 'Menu', 'Index', '/admin.php/Menu/Index.html', '1', '127.0.0.1', '2015-09-23 17:22:29', '1');
INSERT INTO `log` VALUES ('791', 'admin', 'Menu', 'edit', '/admin.php/Menu/edit.html', '1', '127.0.0.1', '2015-09-23 17:22:31', '1');
INSERT INTO `log` VALUES ('792', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 17:27:15', '1');
INSERT INTO `log` VALUES ('793', 'admin', 'Menu', 'edit', '/admin.php/Menu/edit.html', '1', '127.0.0.1', '2015-09-23 17:27:18', '1');
INSERT INTO `log` VALUES ('794', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 17:31:53', '1');
INSERT INTO `log` VALUES ('795', 'admin', 'Type', 'edit', '/admin.php/Type/edit.html', '1', '127.0.0.1', '2015-09-23 17:31:56', '1');
INSERT INTO `log` VALUES ('796', 'admin', 'Menu', 'Index', '/admin.php/Menu/Index.html', '1', '127.0.0.1', '2015-09-23 17:32:20', '1');
INSERT INTO `log` VALUES ('797', 'admin', 'Menu', 'edit', '/admin.php/Menu/edit.html', '1', '127.0.0.1', '2015-09-23 17:32:22', '1');
INSERT INTO `log` VALUES ('798', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 17:32:35', '1');
INSERT INTO `log` VALUES ('799', 'admin', 'Type', 'edit', '/admin.php/Type/edit.html', '1', '127.0.0.1', '2015-09-23 17:32:38', '1');
INSERT INTO `log` VALUES ('800', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 17:33:02', '1');
INSERT INTO `log` VALUES ('801', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 17:33:04', '1');
INSERT INTO `log` VALUES ('802', 'admin', 'Type', 'edit', '/admin.php/Type/edit.html', '1', '127.0.0.1', '2015-09-23 17:33:05', '1');
INSERT INTO `log` VALUES ('803', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 17:33:11', '1');
INSERT INTO `log` VALUES ('804', 'admin', 'User', 'Index', '/admin.php/User/Index.html', '1', '127.0.0.1', '2015-09-23 17:33:15', '1');
INSERT INTO `log` VALUES ('805', 'admin', 'Menu', 'Index', '/admin.php/Menu/Index.html', '1', '127.0.0.1', '2015-09-23 17:33:18', '1');
INSERT INTO `log` VALUES ('806', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 17:34:59', '1');
INSERT INTO `log` VALUES ('807', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 17:35:24', '1');
INSERT INTO `log` VALUES ('808', 'admin', 'Type', 'edit', '/admin.php/Type/edit.html', '1', '127.0.0.1', '2015-09-23 17:35:27', '1');
INSERT INTO `log` VALUES ('809', 'admin', 'Type', 'edit', '/admin.php/Type/edit.html', '1', '127.0.0.1', '2015-09-23 17:35:37', '1');
INSERT INTO `log` VALUES ('810', 'admin', 'Type', 'index', '/admin.php/Type/index.html', '1', '127.0.0.1', '2015-09-23 17:35:39', '1');
INSERT INTO `log` VALUES ('811', 'admin', 'Menu', 'Index', '/admin.php/Menu/Index.html', '1', '127.0.0.1', '2015-09-23 17:35:50', '1');
INSERT INTO `log` VALUES ('812', 'admin', 'Menu', 'edit', '/admin.php/Menu/edit.html', '1', '127.0.0.1', '2015-09-23 17:35:55', '1');
INSERT INTO `log` VALUES ('813', 'admin', 'Menu', 'edit', '/admin.php/Menu/edit.html', '1', '127.0.0.1', '2015-09-23 17:36:11', '1');
INSERT INTO `log` VALUES ('814', 'admin', 'Menu', 'index', '/admin.php/Menu/index.html', '1', '127.0.0.1', '2015-09-23 17:36:13', '1');
INSERT INTO `log` VALUES ('815', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 17:36:38', '1');
INSERT INTO `log` VALUES ('816', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 17:36:41', '1');
INSERT INTO `log` VALUES ('817', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 17:37:11', '1');
INSERT INTO `log` VALUES ('818', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 17:37:12', '1');
INSERT INTO `log` VALUES ('819', 'admin', 'Menu', 'Index', '/admin.php/Menu/Index.html', '1', '127.0.0.1', '2015-09-23 17:37:31', '1');
INSERT INTO `log` VALUES ('820', 'admin', 'Menu', 'edit', '/admin.php/Menu/edit.html', '1', '127.0.0.1', '2015-09-23 17:37:50', '1');
INSERT INTO `log` VALUES ('821', 'admin', 'Auth', 'Index', '/admin.php/Auth/Index.html', '1', '127.0.0.1', '2015-09-23 17:37:53', '1');
INSERT INTO `log` VALUES ('822', 'admin', 'Menu', 'Index', '/admin.php/Menu/Index.html', '1', '127.0.0.1', '2015-09-23 17:37:55', '1');
INSERT INTO `log` VALUES ('823', 'admin', 'Menu', 'edit', '/admin.php/Menu/edit.html', '1', '127.0.0.1', '2015-09-23 17:38:01', '1');
INSERT INTO `log` VALUES ('824', 'admin', 'Menu', 'Index', '/admin.php/Menu/Index.html', '1', '127.0.0.1', '2015-09-23 17:38:04', '1');
INSERT INTO `log` VALUES ('825', 'admin', 'Menu', 'edit', '/admin.php/Menu/edit.html', '1', '127.0.0.1', '2015-09-23 17:38:09', '1');
INSERT INTO `log` VALUES ('826', 'admin', 'Menu', 'edit', '/admin.php/Menu/edit.html', '1', '127.0.0.1', '2015-09-23 17:38:15', '1');
INSERT INTO `log` VALUES ('827', 'admin', 'Menu', 'index', '/admin.php/Menu/index.html', '1', '127.0.0.1', '2015-09-23 17:38:17', '1');
INSERT INTO `log` VALUES ('828', 'admin', 'Menu', 'Index', '/admin.php/Menu/Index.html', '1', '127.0.0.1', '2015-09-23 17:38:18', '1');
INSERT INTO `log` VALUES ('829', 'admin', 'Menu', 'Index', '/admin.php/Menu/Index.html', '1', '127.0.0.1', '2015-09-23 17:38:19', '1');
INSERT INTO `log` VALUES ('830', 'admin', 'Menu', 'edit', '/admin.php/Menu/edit.html', '1', '127.0.0.1', '2015-09-23 17:38:23', '1');
INSERT INTO `log` VALUES ('831', 'admin', 'Menu', 'edit', '/admin.php/Menu/edit.html', '1', '127.0.0.1', '2015-09-23 17:38:28', '1');
INSERT INTO `log` VALUES ('832', 'admin', 'Menu', 'Index', '/admin.php/Menu/Index.html', '1', '127.0.0.1', '2015-09-23 17:38:30', '1');
INSERT INTO `log` VALUES ('833', 'admin', 'Menu', 'index', '/admin.php/Menu/index.html', '1', '127.0.0.1', '2015-09-23 17:38:31', '1');
INSERT INTO `log` VALUES ('834', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 17:39:01', '1');
INSERT INTO `log` VALUES ('835', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 17:39:08', '1');
INSERT INTO `log` VALUES ('836', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 17:52:43', '1');
INSERT INTO `log` VALUES ('837', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 17:52:44', '1');
INSERT INTO `log` VALUES ('838', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 17:52:45', '1');
INSERT INTO `log` VALUES ('839', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 17:52:46', '1');
INSERT INTO `log` VALUES ('840', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 17:58:04', '1');
INSERT INTO `log` VALUES ('841', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 17:58:05', '1');
INSERT INTO `log` VALUES ('842', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 17:58:06', '1');
INSERT INTO `log` VALUES ('843', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 17:58:07', '1');
INSERT INTO `log` VALUES ('844', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 17:58:08', '1');
INSERT INTO `log` VALUES ('845', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 17:58:09', '1');
INSERT INTO `log` VALUES ('846', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 17:58:10', '1');
INSERT INTO `log` VALUES ('847', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 17:58:11', '1');
INSERT INTO `log` VALUES ('848', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 18:02:33', '1');
INSERT INTO `log` VALUES ('849', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 18:03:15', '1');
INSERT INTO `log` VALUES ('850', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 18:05:02', '1');
INSERT INTO `log` VALUES ('851', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 18:05:08', '1');
INSERT INTO `log` VALUES ('852', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 18:05:11', '1');
INSERT INTO `log` VALUES ('853', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 18:05:12', '1');
INSERT INTO `log` VALUES ('854', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 18:05:15', '1');
INSERT INTO `log` VALUES ('855', 'admin', 'Cache', 'Index', '/admin.php/Cache/Index.html', '1', '127.0.0.1', '2015-09-23 18:05:30', '1');
INSERT INTO `log` VALUES ('856', 'admin', 'Log', 'Index', '/admin.php/Log/Index.html', '1', '127.0.0.1', '2015-09-23 18:05:33', '1');
INSERT INTO `log` VALUES ('857', 'admin', 'Auth', 'Index', '/admin.php/Auth/Index.html', '1', '127.0.0.1', '2015-09-23 18:05:36', '1');
INSERT INTO `log` VALUES ('858', 'admin', 'Auth', 'Index', '/admin.php/Auth/Index.html', '1', '127.0.0.1', '2015-09-23 18:05:38', '1');
INSERT INTO `log` VALUES ('859', 'admin', 'User', 'Index', '/admin.php/User/Index.html', '1', '127.0.0.1', '2015-09-23 18:05:39', '1');
INSERT INTO `log` VALUES ('860', 'admin', 'Menu', 'Index', '/admin.php/Menu/Index.html', '1', '127.0.0.1', '2015-09-23 18:05:41', '1');
INSERT INTO `log` VALUES ('861', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 18:05:59', '1');
INSERT INTO `log` VALUES ('862', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 18:06:55', '1');
INSERT INTO `log` VALUES ('863', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 18:06:58', '1');
INSERT INTO `log` VALUES ('864', 'admin', 'Type', 'edit', '/admin.php/Type/edit.html', '1', '127.0.0.1', '2015-09-23 18:07:03', '1');
INSERT INTO `log` VALUES ('865', 'admin', 'Type', 'edit', '/admin.php/Type/edit.html', '1', '127.0.0.1', '2015-09-23 18:07:19', '1');
INSERT INTO `log` VALUES ('866', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 18:07:21', '1');
INSERT INTO `log` VALUES ('867', 'admin', 'Type', 'index', '/admin.php/Type/index.html', '1', '127.0.0.1', '2015-09-23 18:07:22', '1');
INSERT INTO `log` VALUES ('868', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 18:07:23', '1');
INSERT INTO `log` VALUES ('869', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 18:07:24', '1');
INSERT INTO `log` VALUES ('870', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 18:09:56', '1');
INSERT INTO `log` VALUES ('871', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 18:10:21', '1');
INSERT INTO `log` VALUES ('872', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 18:10:22', '1');
INSERT INTO `log` VALUES ('873', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 18:10:24', '1');
INSERT INTO `log` VALUES ('874', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 18:10:52', '1');
INSERT INTO `log` VALUES ('875', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 18:11:22', '1');
INSERT INTO `log` VALUES ('876', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 18:12:14', '1');
INSERT INTO `log` VALUES ('877', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 18:12:15', '1');
INSERT INTO `log` VALUES ('878', 'admin', 'Type', 'Index', '/admin.php/Type/Index.html', '1', '127.0.0.1', '2015-09-23 18:12:16', '1');
INSERT INTO `log` VALUES ('879', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 18:12:17', '1');
INSERT INTO `log` VALUES ('880', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 18:13:20', '1');
INSERT INTO `log` VALUES ('881', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 18:14:19', '1');
INSERT INTO `log` VALUES ('882', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 18:14:35', '1');
INSERT INTO `log` VALUES ('883', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 18:14:46', '1');
INSERT INTO `log` VALUES ('884', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 18:15:32', '1');
INSERT INTO `log` VALUES ('885', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 18:15:35', '1');
INSERT INTO `log` VALUES ('886', 'admin', 'Slide', 'edit', '/admin.php/Slide/edit.html', '1', '127.0.0.1', '2015-09-23 18:15:37', '1');
INSERT INTO `log` VALUES ('887', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 18:15:41', '1');
INSERT INTO `log` VALUES ('888', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 18:16:42', '1');
INSERT INTO `log` VALUES ('889', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 18:16:43', '1');
INSERT INTO `log` VALUES ('890', 'admin', 'Menu', 'Index', '/admin.php/Menu/Index.html', '1', '127.0.0.1', '2015-09-23 18:16:49', '1');
INSERT INTO `log` VALUES ('891', 'admin', 'User', 'Index', '/admin.php/User/Index.html', '1', '127.0.0.1', '2015-09-23 18:16:50', '1');
INSERT INTO `log` VALUES ('892', 'admin', 'Auth', 'Index', '/admin.php/Auth/Index.html', '1', '127.0.0.1', '2015-09-23 18:16:51', '1');
INSERT INTO `log` VALUES ('893', 'admin', 'Auth', 'Index', '/admin.php/Auth/Index.html', '1', '127.0.0.1', '2015-09-23 18:16:53', '1');
INSERT INTO `log` VALUES ('894', 'admin', 'UserInfo', 'PassWord', '/admin.php/UserInfo/PassWord.html', '1', '127.0.0.1', '2015-09-23 18:21:26', '1');
INSERT INTO `log` VALUES ('895', 'admin', 'UserInfo', 'UserData', '/admin.php/UserInfo/UserData.html', '1', '127.0.0.1', '2015-09-23 18:21:27', '1');
INSERT INTO `log` VALUES ('896', 'admin', 'UserInfo', 'Index', '/admin.php/UserInfo/Index.html', '1', '127.0.0.1', '2015-09-23 18:21:28', '1');
INSERT INTO `log` VALUES ('897', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 18:21:32', '1');
INSERT INTO `log` VALUES ('898', 'admin', 'Slide', 'Index', '/admin.php/Slide/Index.html', '1', '127.0.0.1', '2015-09-23 18:21:36', '1');
INSERT INTO `log` VALUES ('899', 'admin', 'Slide', 'edit', '/admin.php/Slide/edit.html', '1', '127.0.0.1', '2015-09-23 18:21:47', '1');
INSERT INTO `log` VALUES ('900', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('901', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 09:42:30', '1');
INSERT INTO `log` VALUES ('902', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 09:42:59', '1');
INSERT INTO `log` VALUES ('903', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 09:43:02', '1');
INSERT INTO `log` VALUES ('904', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 09:43:08', '1');
INSERT INTO `log` VALUES ('905', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 09:43:09', '1');
INSERT INTO `log` VALUES ('906', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 09:43:11', '1');
INSERT INTO `log` VALUES ('907', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 09:50:38', '1');
INSERT INTO `log` VALUES ('908', 'admin', 'Type', 'edit', '/index.php/Admin/Type/edit.html', '1', '127.0.0.1', '2015-09-24 09:50:39', '1');
INSERT INTO `log` VALUES ('909', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 09:51:48', '1');
INSERT INTO `log` VALUES ('910', 'admin', 'Type', 'edit', '/index.php/Admin/Type/edit.html', '1', '127.0.0.1', '2015-09-24 09:51:50', '1');
INSERT INTO `log` VALUES ('911', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 09:52:02', '1');
INSERT INTO `log` VALUES ('912', 'admin', 'Type', 'edit', '/index.php/Admin/Type/edit.html', '1', '127.0.0.1', '2015-09-24 09:52:05', '1');
INSERT INTO `log` VALUES ('913', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 09:54:03', '1');
INSERT INTO `log` VALUES ('914', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 09:54:04', '1');
INSERT INTO `log` VALUES ('915', 'admin', 'Type', 'edit', '/index.php/Admin/Type/edit.html', '1', '127.0.0.1', '2015-09-24 09:54:06', '1');
INSERT INTO `log` VALUES ('916', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 09:54:24', '1');
INSERT INTO `log` VALUES ('917', 'admin', 'Type', 'edit', '/index.php/Admin/Type/edit.html', '1', '127.0.0.1', '2015-09-24 09:54:27', '1');
INSERT INTO `log` VALUES ('918', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 09:54:49', '1');
INSERT INTO `log` VALUES ('919', 'admin', 'Type', 'edit', '/index.php/Admin/Type/edit.html', '1', '127.0.0.1', '2015-09-24 09:54:51', '1');
INSERT INTO `log` VALUES ('920', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 09:55:08', '1');
INSERT INTO `log` VALUES ('921', 'admin', 'Type', 'edit', '/index.php/Admin/Type/edit.html', '1', '127.0.0.1', '2015-09-24 09:55:10', '1');
INSERT INTO `log` VALUES ('922', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 09:57:40', '1');
INSERT INTO `log` VALUES ('923', 'admin', 'Type', 'edit', '/index.php/Admin/Type/edit.html', '1', '127.0.0.1', '2015-09-24 09:57:44', '1');
INSERT INTO `log` VALUES ('924', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 09:59:11', '1');
INSERT INTO `log` VALUES ('925', 'admin', 'Type', 'edit', '/index.php/Admin/Type/edit.html', '1', '127.0.0.1', '2015-09-24 09:59:13', '1');
INSERT INTO `log` VALUES ('926', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 09:59:16', '1');
INSERT INTO `log` VALUES ('927', 'admin', 'Type', 'edit', '/index.php/Admin/Type/edit.html', '1', '127.0.0.1', '2015-09-24 09:59:19', '1');
INSERT INTO `log` VALUES ('928', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 09:59:22', '1');
INSERT INTO `log` VALUES ('929', 'admin', 'Type', 'edit', '/index.php/Admin/Type/edit.html', '1', '127.0.0.1', '2015-09-24 09:59:25', '1');
INSERT INTO `log` VALUES ('930', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 10:06:35', '1');
INSERT INTO `log` VALUES ('931', 'admin', 'Type', 'edit', '/index.php/Admin/Type/edit.html', '1', '127.0.0.1', '2015-09-24 10:06:38', '1');
INSERT INTO `log` VALUES ('932', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 10:37:57', '1');
INSERT INTO `log` VALUES ('933', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 10:48:21', '1');
INSERT INTO `log` VALUES ('934', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 10:48:22', '1');
INSERT INTO `log` VALUES ('935', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 10:48:24', '1');
INSERT INTO `log` VALUES ('936', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 11:05:59', '1');
INSERT INTO `log` VALUES ('937', 'admin', 'Type', 'edit', '/index.php/Admin/Type/edit.html', '1', '127.0.0.1', '2015-09-24 11:06:11', '1');
INSERT INTO `log` VALUES ('938', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 11:07:01', '1');
INSERT INTO `log` VALUES ('939', 'admin', 'Type', 'edit', '/index.php/Admin/Type/edit.html', '1', '127.0.0.1', '2015-09-24 11:07:05', '1');
INSERT INTO `log` VALUES ('940', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 11:07:31', '1');
INSERT INTO `log` VALUES ('941', 'admin', 'Type', 'edit', '/index.php/Admin/Type/edit.html', '1', '127.0.0.1', '2015-09-24 11:07:36', '1');
INSERT INTO `log` VALUES ('942', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 11:08:12', '1');
INSERT INTO `log` VALUES ('943', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 11:08:14', '1');
INSERT INTO `log` VALUES ('944', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 11:08:17', '1');
INSERT INTO `log` VALUES ('945', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 11:12:20', '1');
INSERT INTO `log` VALUES ('946', 'admin', 'Type', 'edit', '/index.php/Admin/Type/edit.html', '1', '127.0.0.1', '2015-09-24 11:12:26', '1');
INSERT INTO `log` VALUES ('947', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 11:12:28', '1');
INSERT INTO `log` VALUES ('948', 'admin', 'Type', 'edit', '/index.php/Admin/Type/edit.html', '1', '127.0.0.1', '2015-09-24 11:12:31', '1');
INSERT INTO `log` VALUES ('949', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 11:12:34', '1');
INSERT INTO `log` VALUES ('950', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 11:18:17', '1');
INSERT INTO `log` VALUES ('951', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 11:18:19', '1');
INSERT INTO `log` VALUES ('952', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 11:21:16', '1');
INSERT INTO `log` VALUES ('953', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 11:21:20', '1');
INSERT INTO `log` VALUES ('954', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 11:25:01', '1');
INSERT INTO `log` VALUES ('955', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 11:25:02', '1');
INSERT INTO `log` VALUES ('956', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 11:25:54', '1');
INSERT INTO `log` VALUES ('957', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 11:25:56', '1');
INSERT INTO `log` VALUES ('958', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 11:26:03', '1');
INSERT INTO `log` VALUES ('959', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:26:07', '1');
INSERT INTO `log` VALUES ('960', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 11:27:00', '1');
INSERT INTO `log` VALUES ('961', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 11:29:11', '1');
INSERT INTO `log` VALUES ('962', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 11:29:12', '1');
INSERT INTO `log` VALUES ('963', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 11:32:05', '1');
INSERT INTO `log` VALUES ('964', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 11:32:31', '1');
INSERT INTO `log` VALUES ('965', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:32:34', '1');
INSERT INTO `log` VALUES ('966', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 11:38:02', '1');
INSERT INTO `log` VALUES ('967', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 11:38:05', '1');
INSERT INTO `log` VALUES ('968', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:38:07', '1');
INSERT INTO `log` VALUES ('969', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 11:38:50', '1');
INSERT INTO `log` VALUES ('970', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 11:38:55', '1');
INSERT INTO `log` VALUES ('971', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 11:39:50', '1');
INSERT INTO `log` VALUES ('972', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 11:39:52', '1');
INSERT INTO `log` VALUES ('973', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 11:39:53', '1');
INSERT INTO `log` VALUES ('974', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 11:39:54', '1');
INSERT INTO `log` VALUES ('975', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 11:39:55', '1');
INSERT INTO `log` VALUES ('976', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 11:39:56', '1');
INSERT INTO `log` VALUES ('977', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:39:58', '1');
INSERT INTO `log` VALUES ('978', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:39:59', '1');
INSERT INTO `log` VALUES ('979', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 11:40:44', '1');
INSERT INTO `log` VALUES ('980', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:40:47', '1');
INSERT INTO `log` VALUES ('981', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 11:41:51', '1');
INSERT INTO `log` VALUES ('982', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:41:54', '1');
INSERT INTO `log` VALUES ('983', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 11:42:13', '1');
INSERT INTO `log` VALUES ('984', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:42:17', '1');
INSERT INTO `log` VALUES ('985', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 11:43:25', '1');
INSERT INTO `log` VALUES ('986', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:43:28', '1');
INSERT INTO `log` VALUES ('987', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 11:44:26', '1');
INSERT INTO `log` VALUES ('988', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:44:29', '1');
INSERT INTO `log` VALUES ('989', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 11:44:38', '1');
INSERT INTO `log` VALUES ('990', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:44:40', '1');
INSERT INTO `log` VALUES ('991', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 11:45:04', '1');
INSERT INTO `log` VALUES ('992', 'admin', 'Type', 'edit', '/index.php/Admin/Type/edit.html', '1', '127.0.0.1', '2015-09-24 11:45:07', '1');
INSERT INTO `log` VALUES ('993', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 11:45:09', '1');
INSERT INTO `log` VALUES ('994', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:45:11', '1');
INSERT INTO `log` VALUES ('995', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-24 11:46:23', '1');
INSERT INTO `log` VALUES ('996', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 11:46:27', '1');
INSERT INTO `log` VALUES ('997', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:46:30', '1');
INSERT INTO `log` VALUES ('998', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 11:46:47', '1');
INSERT INTO `log` VALUES ('999', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:46:50', '1');
INSERT INTO `log` VALUES ('1000', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:46:53', '1');
INSERT INTO `log` VALUES ('1001', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:47:03', '1');
INSERT INTO `log` VALUES ('1002', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:47:05', '1');
INSERT INTO `log` VALUES ('1003', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:47:07', '1');
INSERT INTO `log` VALUES ('1004', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:47:18', '1');
INSERT INTO `log` VALUES ('1005', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:47:20', '1');
INSERT INTO `log` VALUES ('1006', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:49:27', '1');
INSERT INTO `log` VALUES ('1007', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:49:37', '1');
INSERT INTO `log` VALUES ('1008', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:49:39', '1');
INSERT INTO `log` VALUES ('1009', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:50:16', '1');
INSERT INTO `log` VALUES ('1010', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:50:25', '1');
INSERT INTO `log` VALUES ('1011', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:50:46', '1');
INSERT INTO `log` VALUES ('1012', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:50:49', '1');
INSERT INTO `log` VALUES ('1013', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:51:01', '1');
INSERT INTO `log` VALUES ('1014', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:51:03', '1');
INSERT INTO `log` VALUES ('1015', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:51:23', '1');
INSERT INTO `log` VALUES ('1016', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:52:06', '1');
INSERT INTO `log` VALUES ('1017', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:52:18', '1');
INSERT INTO `log` VALUES ('1018', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:53:39', '1');
INSERT INTO `log` VALUES ('1019', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:53:51', '1');
INSERT INTO `log` VALUES ('1020', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:54:07', '1');
INSERT INTO `log` VALUES ('1021', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:54:16', '1');
INSERT INTO `log` VALUES ('1022', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:54:19', '1');
INSERT INTO `log` VALUES ('1023', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:54:20', '1');
INSERT INTO `log` VALUES ('1024', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:54:21', '1');
INSERT INTO `log` VALUES ('1025', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:54:22', '1');
INSERT INTO `log` VALUES ('1026', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:54:46', '1');
INSERT INTO `log` VALUES ('1027', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:55:01', '1');
INSERT INTO `log` VALUES ('1028', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:55:11', '1');
INSERT INTO `log` VALUES ('1029', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:55:13', '1');
INSERT INTO `log` VALUES ('1030', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:55:14', '1');
INSERT INTO `log` VALUES ('1031', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:55:16', '1');
INSERT INTO `log` VALUES ('1032', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:55:58', '1');
INSERT INTO `log` VALUES ('1033', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:56:07', '1');
INSERT INTO `log` VALUES ('1034', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:56:54', '1');
INSERT INTO `log` VALUES ('1035', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:57:43', '1');
INSERT INTO `log` VALUES ('1036', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:57:45', '1');
INSERT INTO `log` VALUES ('1037', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:57:58', '1');
INSERT INTO `log` VALUES ('1038', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 11:58:26', '1');
INSERT INTO `log` VALUES ('1039', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 12:01:02', '1');
INSERT INTO `log` VALUES ('1040', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 12:02:06', '1');
INSERT INTO `log` VALUES ('1041', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 13:41:47', '1');
INSERT INTO `log` VALUES ('1042', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 13:46:30', '1');
INSERT INTO `log` VALUES ('1043', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 13:59:02', '1');
INSERT INTO `log` VALUES ('1044', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 13:59:24', '1');
INSERT INTO `log` VALUES ('1045', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 13:59:26', '1');
INSERT INTO `log` VALUES ('1046', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 14:28:06', '1');
INSERT INTO `log` VALUES ('1047', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 14:28:08', '1');
INSERT INTO `log` VALUES ('1048', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-24 14:28:22', '1');
INSERT INTO `log` VALUES ('1049', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-24 14:28:25', '1');
INSERT INTO `log` VALUES ('1050', 'admin', 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-09-24 14:28:27', '1');
INSERT INTO `log` VALUES ('1051', 'admin', 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-24 14:28:29', '1');
INSERT INTO `log` VALUES ('1052', 'admin', 'Auth', 'edit', '/index.php/Admin/Auth/edit.html', '1', '127.0.0.1', '2015-09-24 14:28:32', '1');
INSERT INTO `log` VALUES ('1053', 'admin', 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-24 14:28:35', '1');
INSERT INTO `log` VALUES ('1054', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-24 14:28:37', '1');
INSERT INTO `log` VALUES ('1055', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 14:28:41', '1');
INSERT INTO `log` VALUES ('1056', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 14:28:43', '1');
INSERT INTO `log` VALUES ('1057', 'admin', 'Type', 'edit', '/index.php/Admin/Type/edit.html', '1', '127.0.0.1', '2015-09-24 14:28:45', '1');
INSERT INTO `log` VALUES ('1058', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 14:32:33', '1');
INSERT INTO `log` VALUES ('1059', 'admin', 'Type', 'edit', '/index.php/Admin/Type/edit.html', '1', '127.0.0.1', '2015-09-24 14:32:36', '1');
INSERT INTO `log` VALUES ('1060', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 14:32:39', '1');
INSERT INTO `log` VALUES ('1061', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 14:32:45', '1');
INSERT INTO `log` VALUES ('1062', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 14:36:51', '1');
INSERT INTO `log` VALUES ('1063', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 14:37:35', '1');
INSERT INTO `log` VALUES ('1064', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 14:39:58', '1');
INSERT INTO `log` VALUES ('1065', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 14:40:01', '1');
INSERT INTO `log` VALUES ('1066', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 14:42:04', '1');
INSERT INTO `log` VALUES ('1067', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 14:42:06', '1');
INSERT INTO `log` VALUES ('1068', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 14:42:09', '1');
INSERT INTO `log` VALUES ('1069', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 14:42:11', '1');
INSERT INTO `log` VALUES ('1070', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 14:44:32', '1');
INSERT INTO `log` VALUES ('1071', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 14:44:35', '1');
INSERT INTO `log` VALUES ('1072', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 14:44:57', '1');
INSERT INTO `log` VALUES ('1073', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 14:45:50', '1');
INSERT INTO `log` VALUES ('1074', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 14:45:52', '1');
INSERT INTO `log` VALUES ('1075', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 14:45:58', '1');
INSERT INTO `log` VALUES ('1076', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 14:46:14', '1');
INSERT INTO `log` VALUES ('1077', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 14:46:17', '1');
INSERT INTO `log` VALUES ('1078', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 14:46:26', '1');
INSERT INTO `log` VALUES ('1079', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 14:54:41', '1');
INSERT INTO `log` VALUES ('1080', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 14:54:44', '1');
INSERT INTO `log` VALUES ('1081', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 14:54:50', '1');
INSERT INTO `log` VALUES ('1082', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 14:55:10', '1');
INSERT INTO `log` VALUES ('1083', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 14:55:13', '1');
INSERT INTO `log` VALUES ('1084', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 14:55:20', '1');
INSERT INTO `log` VALUES ('1085', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 14:58:31', '1');
INSERT INTO `log` VALUES ('1086', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 14:58:42', '1');
INSERT INTO `log` VALUES ('1087', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 14:58:51', '1');
INSERT INTO `log` VALUES ('1088', 'admin', 'Slide', 'index', '/index.php/Admin/Slide/index.html', '1', '127.0.0.1', '2015-09-24 14:58:53', '1');
INSERT INTO `log` VALUES ('1089', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 14:58:55', '1');
INSERT INTO `log` VALUES ('1090', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 14:59:22', '1');
INSERT INTO `log` VALUES ('1091', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 14:59:24', '1');
INSERT INTO `log` VALUES ('1092', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 14:59:30', '1');
INSERT INTO `log` VALUES ('1093', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 14:59:50', '1');
INSERT INTO `log` VALUES ('1094', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 14:59:53', '1');
INSERT INTO `log` VALUES ('1095', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 14:59:59', '1');
INSERT INTO `log` VALUES ('1096', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:00:23', '1');
INSERT INTO `log` VALUES ('1097', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:00:25', '1');
INSERT INTO `log` VALUES ('1098', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:00:31', '1');
INSERT INTO `log` VALUES ('1099', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:05:27', '1');
INSERT INTO `log` VALUES ('1100', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:05:30', '1');
INSERT INTO `log` VALUES ('1101', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:05:34', '1');
INSERT INTO `log` VALUES ('1102', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:05:45', '1');
INSERT INTO `log` VALUES ('1103', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:05:47', '1');
INSERT INTO `log` VALUES ('1104', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:05:52', '1');
INSERT INTO `log` VALUES ('1105', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:06:20', '1');
INSERT INTO `log` VALUES ('1106', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:06:23', '1');
INSERT INTO `log` VALUES ('1107', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:06:27', '1');
INSERT INTO `log` VALUES ('1108', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:06:45', '1');
INSERT INTO `log` VALUES ('1109', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:06:47', '1');
INSERT INTO `log` VALUES ('1110', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:06:50', '1');
INSERT INTO `log` VALUES ('1111', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:07:18', '1');
INSERT INTO `log` VALUES ('1112', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:07:21', '1');
INSERT INTO `log` VALUES ('1113', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:07:26', '1');
INSERT INTO `log` VALUES ('1114', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:08:43', '1');
INSERT INTO `log` VALUES ('1115', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:09:03', '1');
INSERT INTO `log` VALUES ('1116', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:09:27', '1');
INSERT INTO `log` VALUES ('1117', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:10:33', '1');
INSERT INTO `log` VALUES ('1118', 'admin', 'Slide', 'index', '/index.php/Admin/Slide/index.html', '1', '127.0.0.1', '2015-09-24 15:10:35', '1');
INSERT INTO `log` VALUES ('1119', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:10:38', '1');
INSERT INTO `log` VALUES ('1120', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:10:50', '1');
INSERT INTO `log` VALUES ('1121', 'admin', 'Slide', 'index', '/index.php/Admin/Slide/index.html', '1', '127.0.0.1', '2015-09-24 15:10:52', '1');
INSERT INTO `log` VALUES ('1122', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:10:55', '1');
INSERT INTO `log` VALUES ('1123', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:11:27', '1');
INSERT INTO `log` VALUES ('1124', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:11:30', '1');
INSERT INTO `log` VALUES ('1125', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:12:10', '1');
INSERT INTO `log` VALUES ('1126', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:12:19', '1');
INSERT INTO `log` VALUES ('1127', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:12:30', '1');
INSERT INTO `log` VALUES ('1128', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:13:24', '1');
INSERT INTO `log` VALUES ('1129', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:13:36', '1');
INSERT INTO `log` VALUES ('1130', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:14:18', '1');
INSERT INTO `log` VALUES ('1131', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:14:25', '1');
INSERT INTO `log` VALUES ('1132', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:14:31', '1');
INSERT INTO `log` VALUES ('1133', 'admin', 'Slide', 'index', '/index.php/Admin/Slide/index.html', '1', '127.0.0.1', '2015-09-24 15:14:33', '1');
INSERT INTO `log` VALUES ('1134', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 15:16:44', '1');
INSERT INTO `log` VALUES ('1135', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:16:46', '1');
INSERT INTO `log` VALUES ('1136', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:17:12', '1');
INSERT INTO `log` VALUES ('1137', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:17:18', '1');
INSERT INTO `log` VALUES ('1138', 'admin', 'Slide', 'index', '/index.php/Admin/Slide/index.html', '1', '127.0.0.1', '2015-09-24 15:17:20', '1');
INSERT INTO `log` VALUES ('1139', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:17:29', '1');
INSERT INTO `log` VALUES ('1140', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:23:05', '1');
INSERT INTO `log` VALUES ('1141', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:23:25', '1');
INSERT INTO `log` VALUES ('1142', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:23:45', '1');
INSERT INTO `log` VALUES ('1143', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:24:07', '1');
INSERT INTO `log` VALUES ('1144', 'admin', 'Type', 'del', '/index.php/Admin/Type/del.html', '1', '127.0.0.1', '2015-09-24 15:24:10', '1');
INSERT INTO `log` VALUES ('1145', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:25:57', '1');
INSERT INTO `log` VALUES ('1146', 'admin', 'Slide', 'del.html', '/index.php/Admin/Slide/del.html.html', '1', '127.0.0.1', '2015-09-24 15:26:01', '1');
INSERT INTO `log` VALUES ('1147', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:26:45', '1');
INSERT INTO `log` VALUES ('1148', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:27:29', '1');
INSERT INTO `log` VALUES ('1149', 'admin', 'Slide', 'del', '/index.php/Admin/Slide/del.html', '1', '127.0.0.1', '2015-09-24 15:27:33', '1');
INSERT INTO `log` VALUES ('1150', 'admin', 'Slide', 'del', '/index.php/Admin/Slide/del.html', '1', '127.0.0.1', '2015-09-24 15:27:35', '1');
INSERT INTO `log` VALUES ('1151', 'admin', 'Slide', 'del', '/index.php/Admin/Slide/del.html', '1', '127.0.0.1', '2015-09-24 15:27:40', '1');
INSERT INTO `log` VALUES ('1152', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:27:41', '1');
INSERT INTO `log` VALUES ('1153', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:27:43', '1');
INSERT INTO `log` VALUES ('1154', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:28:05', '1');
INSERT INTO `log` VALUES ('1155', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 15:28:07', '1');
INSERT INTO `log` VALUES ('1156', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:28:08', '1');
INSERT INTO `log` VALUES ('1157', 'admin', 'Slide', 'del', '/index.php/Admin/Slide/del.html', '1', '127.0.0.1', '2015-09-24 15:28:11', '1');
INSERT INTO `log` VALUES ('1158', 'admin', 'Slide', 'del', '/index.php/Admin/Slide/del.html', '1', '127.0.0.1', '2015-09-24 15:28:13', '1');
INSERT INTO `log` VALUES ('1159', 'admin', 'Slide', 'del', '/index.php/Admin/Slide/del.html', '1', '127.0.0.1', '2015-09-24 15:28:19', '1');
INSERT INTO `log` VALUES ('1160', 'admin', 'Slide', 'del', '/index.php/Admin/Slide/del.html', '1', '127.0.0.1', '2015-09-24 15:28:24', '1');
INSERT INTO `log` VALUES ('1161', 'admin', 'Slide', 'del', '/index.php/Admin/Slide/del.html', '1', '127.0.0.1', '2015-09-24 15:28:29', '1');
INSERT INTO `log` VALUES ('1162', 'admin', 'Slide', 'del', '/index.php/Admin/Slide/del.html', '1', '127.0.0.1', '2015-09-24 15:28:34', '1');
INSERT INTO `log` VALUES ('1163', 'admin', 'Slide', 'del', '/index.php/Admin/Slide/del.html', '1', '127.0.0.1', '2015-09-24 15:28:39', '1');
INSERT INTO `log` VALUES ('1164', 'admin', 'Slide', 'del', '/index.php/Admin/Slide/del.html', '1', '127.0.0.1', '2015-09-24 15:28:44', '1');
INSERT INTO `log` VALUES ('1165', 'admin', 'Slide', 'del', '/index.php/Admin/Slide/del.html', '1', '127.0.0.1', '2015-09-24 15:28:49', '1');
INSERT INTO `log` VALUES ('1166', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:28:50', '1');
INSERT INTO `log` VALUES ('1167', 'admin', 'Slide', 'del', '/index.php/Admin/Slide/del.html', '1', '127.0.0.1', '2015-09-24 15:28:53', '1');
INSERT INTO `log` VALUES ('1168', 'admin', 'Slide', 'del', '/index.php/Admin/Slide/del.html', '1', '127.0.0.1', '2015-09-24 15:28:56', '1');
INSERT INTO `log` VALUES ('1169', 'admin', 'Slide', 'del', '/index.php/Admin/Slide/del.html', '1', '127.0.0.1', '2015-09-24 15:29:01', '1');
INSERT INTO `log` VALUES ('1170', 'admin', 'Slide', 'del', '/index.php/Admin/Slide/del.html', '1', '127.0.0.1', '2015-09-24 15:29:06', '1');
INSERT INTO `log` VALUES ('1171', 'admin', 'Slide', 'del', '/index.php/Admin/Slide/del.html', '1', '127.0.0.1', '2015-09-24 15:29:11', '1');
INSERT INTO `log` VALUES ('1172', 'admin', 'Slide', 'del', '/index.php/Admin/Slide/del.html', '1', '127.0.0.1', '2015-09-24 15:29:16', '1');
INSERT INTO `log` VALUES ('1173', 'admin', 'Slide', 'del', '/index.php/Admin/Slide/del.html', '1', '127.0.0.1', '2015-09-24 15:29:21', '1');
INSERT INTO `log` VALUES ('1174', 'admin', 'Slide', 'del', '/index.php/Admin/Slide/del.html', '1', '127.0.0.1', '2015-09-24 15:29:26', '1');
INSERT INTO `log` VALUES ('1175', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 15:29:29', '1');
INSERT INTO `log` VALUES ('1176', 'admin', 'Slide', 'del', '/index.php/Admin/Slide/del.html', '1', '127.0.0.1', '2015-09-24 15:29:31', '1');
INSERT INTO `log` VALUES ('1177', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 15:29:33', '1');
INSERT INTO `log` VALUES ('1178', 'admin', 'Type', 'edit', '/index.php/Admin/Type/edit.html', '1', '127.0.0.1', '2015-09-24 15:29:35', '1');
INSERT INTO `log` VALUES ('1179', 'admin', 'Type', 'edit', '/index.php/Admin/Type/edit.html', '1', '127.0.0.1', '2015-09-24 15:29:38', '1');
INSERT INTO `log` VALUES ('1180', 'admin', 'Type', 'index', '/index.php/Admin/Type/index.html', '1', '127.0.0.1', '2015-09-24 15:29:40', '1');
INSERT INTO `log` VALUES ('1181', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 15:29:54', '1');
INSERT INTO `log` VALUES ('1182', 'admin', 'Type', 'del', '/index.php/Admin/Type/del.html', '1', '127.0.0.1', '2015-09-24 15:29:58', '1');
INSERT INTO `log` VALUES ('1183', 'admin', 'Type', 'del', '/index.php/Admin/Type/del.html', '1', '127.0.0.1', '2015-09-24 15:30:00', '1');
INSERT INTO `log` VALUES ('1184', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 15:30:03', '1');
INSERT INTO `log` VALUES ('1185', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:31:57', '1');
INSERT INTO `log` VALUES ('1186', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:32:00', '1');
INSERT INTO `log` VALUES ('1187', 'admin', 'Slide', 'edit', '/index.php/Admin/Slide/edit.html', '1', '127.0.0.1', '2015-09-24 15:32:03', '1');
INSERT INTO `log` VALUES ('1188', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:32:05', '1');
INSERT INTO `log` VALUES ('1189', 'admin', 'Slide', 'del', '/index.php/Admin/Slide/del.html', '1', '127.0.0.1', '2015-09-24 15:32:15', '1');
INSERT INTO `log` VALUES ('1190', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:32:17', '1');
INSERT INTO `log` VALUES ('1191', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:33:48', '1');
INSERT INTO `log` VALUES ('1192', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 15:33:50', '1');
INSERT INTO `log` VALUES ('1193', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:35:23', '1');
INSERT INTO `log` VALUES ('1194', 'admin', 'Link', 'Index', '/index.php/Admin/Link/Index.html', '1', '127.0.0.1', '2015-09-24 15:35:25', '1');
INSERT INTO `log` VALUES ('1195', 'admin', 'Link', 'Index', '/index.php/Admin/Link/Index.html', '1', '127.0.0.1', '2015-09-24 15:35:49', '1');
INSERT INTO `log` VALUES ('1196', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:35:51', '1');
INSERT INTO `log` VALUES ('1197', 'admin', 'Link', 'Index', '/index.php/Admin/Link/Index.html', '1', '127.0.0.1', '2015-09-24 15:35:53', '1');
INSERT INTO `log` VALUES ('1198', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:36:13', '1');
INSERT INTO `log` VALUES ('1199', 'admin', 'Link', 'Index', '/index.php/Admin/Link/Index.html', '1', '127.0.0.1', '2015-09-24 15:36:15', '1');
INSERT INTO `log` VALUES ('1200', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 15:36:16', '1');
INSERT INTO `log` VALUES ('1201', 'admin', 'Link', 'Index', '/index.php/Admin/Link/Index.html', '1', '127.0.0.1', '2015-09-24 15:37:00', '1');
INSERT INTO `log` VALUES ('1202', 'admin', 'Slide', 'del', '/index.php/Admin/Slide/del.html', '1', '127.0.0.1', '2015-09-24 15:37:09', '1');
INSERT INTO `log` VALUES ('1203', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:37:14', '1');
INSERT INTO `log` VALUES ('1204', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:40:12', '1');
INSERT INTO `log` VALUES ('1205', 'admin', 'Link', 'Index', '/index.php/Admin/Link/Index.html', '1', '127.0.0.1', '2015-09-24 15:40:14', '1');
INSERT INTO `log` VALUES ('1206', 'admin', 'Slide', 'del', '/index.php/Admin/Slide/del.html', '1', '127.0.0.1', '2015-09-24 15:40:25', '1');
INSERT INTO `log` VALUES ('1207', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:40:29', '1');
INSERT INTO `log` VALUES ('1208', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:41:40', '1');
INSERT INTO `log` VALUES ('1209', 'admin', 'Link', 'Index', '/index.php/Admin/Link/Index.html', '1', '127.0.0.1', '2015-09-24 15:41:42', '1');
INSERT INTO `log` VALUES ('1210', 'admin', 'Link', 'Index', '/index.php/Admin/Link/Index.html', '1', '127.0.0.1', '2015-09-24 15:41:43', '1');
INSERT INTO `log` VALUES ('1211', 'admin', 'Link', 'Index', '/index.php/Admin/Link/Index.html', '1', '127.0.0.1', '2015-09-24 15:41:44', '1');
INSERT INTO `log` VALUES ('1212', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-24 15:43:46', '1');
INSERT INTO `log` VALUES ('1213', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-24 15:43:50', '1');
INSERT INTO `log` VALUES ('1214', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-24 15:43:56', '1');
INSERT INTO `log` VALUES ('1215', 'admin', 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-24 15:43:59', '1');
INSERT INTO `log` VALUES ('1216', 'admin', 'Links', 'Index', '/index.php/Admin/Links/Index.html', '1', '127.0.0.1', '2015-09-24 15:44:01', '1');
INSERT INTO `log` VALUES ('1217', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:44:15', '1');
INSERT INTO `log` VALUES ('1218', 'admin', 'Links', 'Index', '/index.php/Admin/Links/Index.html', '1', '127.0.0.1', '2015-09-24 15:44:17', '1');
INSERT INTO `log` VALUES ('1219', 'admin', 'Links', 'Index', '/index.php/Admin/Links/Index.html', '1', '127.0.0.1', '2015-09-24 15:45:15', '1');
INSERT INTO `log` VALUES ('1220', 'admin', 'Links', 'Index', '/index.php/Admin/Links/Index.html', '1', '127.0.0.1', '2015-09-24 15:45:17', '1');
INSERT INTO `log` VALUES ('1221', 'admin', 'Links', 'del', '/index.php/Admin/Links/del.html', '1', '127.0.0.1', '2015-09-24 15:45:21', '1');
INSERT INTO `log` VALUES ('1222', 'admin', 'Links', 'Index', '/index.php/Admin/Links/Index.html', '1', '127.0.0.1', '2015-09-24 15:45:25', '1');
INSERT INTO `log` VALUES ('1223', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:46:50', '1');
INSERT INTO `log` VALUES ('1224', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-24 15:46:56', '1');
INSERT INTO `log` VALUES ('1225', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-24 15:47:01', '1');
INSERT INTO `log` VALUES ('1226', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-24 15:47:05', '1');
INSERT INTO `log` VALUES ('1227', 'admin', 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-24 15:47:07', '1');
INSERT INTO `log` VALUES ('1228', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:47:32', '1');
INSERT INTO `log` VALUES ('1229', 'admin', 'Link', 'Index', '/index.php/Admin/Link/Index.html', '1', '127.0.0.1', '2015-09-24 15:47:34', '1');
INSERT INTO `log` VALUES ('1230', 'admin', 'Link', 'Index', '/index.php/Admin/Link/Index.html', '1', '127.0.0.1', '2015-09-24 15:47:53', '1');
INSERT INTO `log` VALUES ('1231', 'admin', 'Link', 'del', '/index.php/Admin/Link/del.html', '1', '127.0.0.1', '2015-09-24 15:47:55', '1');
INSERT INTO `log` VALUES ('1232', 'admin', 'Link', 'Index', '/index.php/Admin/Link/Index.html', '1', '127.0.0.1', '2015-09-24 15:47:57', '1');
INSERT INTO `log` VALUES ('1233', 'admin', 'Link', 'del', '/index.php/Admin/Link/del.html', '1', '127.0.0.1', '2015-09-24 15:48:00', '1');
INSERT INTO `log` VALUES ('1234', 'admin', 'Link', 'Index', '/index.php/Admin/Link/Index.html', '1', '127.0.0.1', '2015-09-24 15:48:03', '1');
INSERT INTO `log` VALUES ('1235', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 15:52:05', '1');
INSERT INTO `log` VALUES ('1236', 'admin', 'Link', 'Index', '/index.php/Admin/Link/Index.html', '1', '127.0.0.1', '2015-09-24 15:58:29', '1');
INSERT INTO `log` VALUES ('1237', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-24 15:58:30', '1');
INSERT INTO `log` VALUES ('1238', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-24 15:58:31', '1');
INSERT INTO `log` VALUES ('1239', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-24 16:05:11', '1');
INSERT INTO `log` VALUES ('1240', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-24 16:05:16', '1');
INSERT INTO `log` VALUES ('1241', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-24 16:05:38', '1');
INSERT INTO `log` VALUES ('1242', 'admin', 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-24 16:05:40', '1');
INSERT INTO `log` VALUES ('1243', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-24 16:11:59', '1');
INSERT INTO `log` VALUES ('1244', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-24 16:12:21', '1');
INSERT INTO `log` VALUES ('1245', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-24 16:12:23', '1');
INSERT INTO `log` VALUES ('1246', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-24 16:13:04', '1');
INSERT INTO `log` VALUES ('1247', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-24 16:13:08', '1');
INSERT INTO `log` VALUES ('1248', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-24 16:13:10', '1');
INSERT INTO `log` VALUES ('1249', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-24 16:13:11', '1');
INSERT INTO `log` VALUES ('1250', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-24 16:13:12', '1');
INSERT INTO `log` VALUES ('1251', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-24 16:13:13', '1');
INSERT INTO `log` VALUES ('1252', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-24 16:13:15', '1');
INSERT INTO `log` VALUES ('1253', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-24 16:13:16', '1');
INSERT INTO `log` VALUES ('1254', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-24 16:13:17', '1');
INSERT INTO `log` VALUES ('1255', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-24 16:13:18', '1');
INSERT INTO `log` VALUES ('1256', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-24 16:13:19', '1');
INSERT INTO `log` VALUES ('1257', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-24 16:13:20', '1');
INSERT INTO `log` VALUES ('1258', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-24 16:13:21', '1');
INSERT INTO `log` VALUES ('1259', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-24 16:14:24', '1');
INSERT INTO `log` VALUES ('1260', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-24 16:15:47', '1');
INSERT INTO `log` VALUES ('1261', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-24 16:16:28', '1');
INSERT INTO `log` VALUES ('1262', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-24 16:17:29', '1');
INSERT INTO `log` VALUES ('1263', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-24 16:19:54', '1');
INSERT INTO `log` VALUES ('1264', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-24 16:20:31', '1');
INSERT INTO `log` VALUES ('1265', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-24 16:20:35', '1');
INSERT INTO `log` VALUES ('1266', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-24 16:22:14', '1');
INSERT INTO `log` VALUES ('1267', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-24 16:22:38', '1');
INSERT INTO `log` VALUES ('1268', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', null, null, null, '0');
INSERT INTO `log` VALUES ('1269', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('1270', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-25 09:58:23', '1');
INSERT INTO `log` VALUES ('1271', 'admin', 'Link', 'Index', '/index.php/Admin/Link/Index.html', '1', '127.0.0.1', '2015-09-25 09:58:25', '1');
INSERT INTO `log` VALUES ('1272', 'admin', 'Link', 'edit', '/index.php/Admin/Link/edit.html', '1', '127.0.0.1', '2015-09-25 09:58:29', '1');
INSERT INTO `log` VALUES ('1273', 'admin', 'Link', 'Index', '/index.php/Admin/Link/Index.html', '1', '127.0.0.1', '2015-09-25 09:58:39', '1');
INSERT INTO `log` VALUES ('1274', 'admin', 'Link', 'Index', '/index.php/Admin/Link/Index.html', '1', '127.0.0.1', '2015-09-25 10:02:46', '1');
INSERT INTO `log` VALUES ('1275', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-25 10:02:47', '1');
INSERT INTO `log` VALUES ('1276', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 10:02:51', '1');
INSERT INTO `log` VALUES ('1277', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 10:02:54', '1');
INSERT INTO `log` VALUES ('1278', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 10:08:38', '1');
INSERT INTO `log` VALUES ('1279', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 10:08:40', '1');
INSERT INTO `log` VALUES ('1280', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 10:08:43', '1');
INSERT INTO `log` VALUES ('1281', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 10:11:04', '1');
INSERT INTO `log` VALUES ('1282', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 10:12:23', '1');
INSERT INTO `log` VALUES ('1283', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 10:12:24', '1');
INSERT INTO `log` VALUES ('1284', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 10:12:25', '1');
INSERT INTO `log` VALUES ('1285', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 10:13:14', '1');
INSERT INTO `log` VALUES ('1286', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 10:13:15', '1');
INSERT INTO `log` VALUES ('1287', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 10:13:16', '1');
INSERT INTO `log` VALUES ('1288', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 10:13:17', '1');
INSERT INTO `log` VALUES ('1289', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 10:13:18', '1');
INSERT INTO `log` VALUES ('1290', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 10:22:24', '1');
INSERT INTO `log` VALUES ('1291', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 10:22:26', '1');
INSERT INTO `log` VALUES ('1292', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 10:22:59', '1');
INSERT INTO `log` VALUES ('1293', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 10:23:00', '1');
INSERT INTO `log` VALUES ('1294', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 10:24:09', '1');
INSERT INTO `log` VALUES ('1295', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 10:24:10', '1');
INSERT INTO `log` VALUES ('1296', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 10:24:12', '1');
INSERT INTO `log` VALUES ('1297', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 10:31:57', '1');
INSERT INTO `log` VALUES ('1298', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 10:31:58', '1');
INSERT INTO `log` VALUES ('1299', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 10:35:13', '1');
INSERT INTO `log` VALUES ('1300', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 10:35:16', '1');
INSERT INTO `log` VALUES ('1301', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 10:35:31', '1');
INSERT INTO `log` VALUES ('1302', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 10:35:33', '1');
INSERT INTO `log` VALUES ('1303', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 10:36:15', '1');
INSERT INTO `log` VALUES ('1304', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 10:36:17', '1');
INSERT INTO `log` VALUES ('1305', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 10:38:36', '1');
INSERT INTO `log` VALUES ('1306', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 10:38:38', '1');
INSERT INTO `log` VALUES ('1307', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 10:38:56', '1');
INSERT INTO `log` VALUES ('1308', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 10:38:59', '1');
INSERT INTO `log` VALUES ('1309', 'admin', 'Model', 'Status', '/index.php/Admin/Model/Status.html', '1', '127.0.0.1', '2015-09-25 10:39:22', '1');
INSERT INTO `log` VALUES ('1310', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 10:39:24', '1');
INSERT INTO `log` VALUES ('1311', 'admin', 'Model', 'Status', '/index.php/Admin/Model/Status.html', '1', '127.0.0.1', '2015-09-25 10:39:32', '1');
INSERT INTO `log` VALUES ('1312', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 10:39:34', '1');
INSERT INTO `log` VALUES ('1313', 'admin', 'Model', 'Status', '/index.php/Admin/Model/Status.html', '1', '127.0.0.1', '2015-09-25 10:39:36', '1');
INSERT INTO `log` VALUES ('1314', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 10:39:38', '1');
INSERT INTO `log` VALUES ('1315', 'admin', 'Model', 'Status', '/index.php/Admin/Model/Status.html', '1', '127.0.0.1', '2015-09-25 10:39:40', '1');
INSERT INTO `log` VALUES ('1316', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 10:39:43', '1');
INSERT INTO `log` VALUES ('1317', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 10:41:54', '1');
INSERT INTO `log` VALUES ('1318', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 10:41:56', '1');
INSERT INTO `log` VALUES ('1319', 'admin', 'Model', 'Status', '/index.php/Admin/Model/Status.html', '1', '127.0.0.1', '2015-09-25 10:46:08', '1');
INSERT INTO `log` VALUES ('1320', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 10:46:10', '1');
INSERT INTO `log` VALUES ('1321', 'admin', 'Model', 'Status', '/index.php/Admin/Model/Status.html', '1', '127.0.0.1', '2015-09-25 10:46:15', '1');
INSERT INTO `log` VALUES ('1322', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 10:46:18', '1');
INSERT INTO `log` VALUES ('1323', 'admin', 'Model', 'Status', '/index.php/Admin/Model/Status.html', '1', '127.0.0.1', '2015-09-25 10:46:20', '1');
INSERT INTO `log` VALUES ('1324', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 10:46:22', '1');
INSERT INTO `log` VALUES ('1325', 'admin', 'Model', 'Status', '/index.php/Admin/Model/Status.html', '1', '127.0.0.1', '2015-09-25 10:46:26', '1');
INSERT INTO `log` VALUES ('1326', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 10:46:29', '1');
INSERT INTO `log` VALUES ('1327', 'admin', 'Model', 'Status', '/index.php/Admin/Model/Status.html', '1', '127.0.0.1', '2015-09-25 10:47:15', '1');
INSERT INTO `log` VALUES ('1328', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 10:47:17', '1');
INSERT INTO `log` VALUES ('1329', 'admin', 'Model', 'editField', '/index.php/Admin/Model/editField.html', '1', '127.0.0.1', '2015-09-25 10:48:25', '1');
INSERT INTO `log` VALUES ('1330', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 10:48:27', '1');
INSERT INTO `log` VALUES ('1331', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 10:48:31', '1');
INSERT INTO `log` VALUES ('1332', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 10:48:52', '1');
INSERT INTO `log` VALUES ('1333', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 10:48:56', '1');
INSERT INTO `log` VALUES ('1334', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 10:48:58', '1');
INSERT INTO `log` VALUES ('1335', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 10:49:01', '1');
INSERT INTO `log` VALUES ('1336', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 10:50:28', '1');
INSERT INTO `log` VALUES ('1337', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 10:50:31', '1');
INSERT INTO `log` VALUES ('1338', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 10:53:01', '1');
INSERT INTO `log` VALUES ('1339', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 10:53:03', '1');
INSERT INTO `log` VALUES ('1340', 'admin', 'Model', 'editField', '/index.php/Admin/Model/editField.html', '1', '127.0.0.1', '2015-09-25 10:53:06', '1');
INSERT INTO `log` VALUES ('1341', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 10:55:32', '1');
INSERT INTO `log` VALUES ('1342', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 10:55:34', '1');
INSERT INTO `log` VALUES ('1343', 'admin', 'Model', 'editField', '/index.php/Admin/Model/editField.html', '1', '127.0.0.1', '2015-09-25 10:55:38', '1');
INSERT INTO `log` VALUES ('1344', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 10:55:48', '1');
INSERT INTO `log` VALUES ('1345', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 11:49:16', '1');
INSERT INTO `log` VALUES ('1346', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 11:54:09', '1');
INSERT INTO `log` VALUES ('1347', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 11:54:11', '1');
INSERT INTO `log` VALUES ('1348', 'admin', 'Model', 'Add', '/index.php/Admin/Model/Add.html', '1', '127.0.0.1', '2015-09-25 11:54:15', '1');
INSERT INTO `log` VALUES ('1349', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 11:54:17', '1');
INSERT INTO `log` VALUES ('1350', 'admin', 'Model', 'Add', '/index.php/Admin/Model/Add.html', '1', '127.0.0.1', '2015-09-25 11:54:20', '1');
INSERT INTO `log` VALUES ('1351', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 11:54:22', '1');
INSERT INTO `log` VALUES ('1352', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 11:54:24', '1');
INSERT INTO `log` VALUES ('1353', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 11:54:36', '1');
INSERT INTO `log` VALUES ('1354', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 11:54:40', '1');
INSERT INTO `log` VALUES ('1355', 'admin', 'Model', 'editField', '/index.php/Admin/Model/editField.html', '1', '127.0.0.1', '2015-09-25 11:54:46', '1');
INSERT INTO `log` VALUES ('1356', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 11:54:49', '1');
INSERT INTO `log` VALUES ('1357', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 11:54:52', '1');
INSERT INTO `log` VALUES ('1358', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 11:55:28', '1');
INSERT INTO `log` VALUES ('1359', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 11:55:33', '1');
INSERT INTO `log` VALUES ('1360', 'admin', 'Model', 'editField', '/index.php/Admin/Model/editField.html', '1', '127.0.0.1', '2015-09-25 11:55:51', '1');
INSERT INTO `log` VALUES ('1361', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 12:00:45', '1');
INSERT INTO `log` VALUES ('1362', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 12:00:47', '1');
INSERT INTO `log` VALUES ('1363', 'admin', 'Model', 'editField', '/index.php/Admin/Model/editField.html', '1', '127.0.0.1', '2015-09-25 12:00:50', '1');
INSERT INTO `log` VALUES ('1364', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 12:01:02', '1');
INSERT INTO `log` VALUES ('1365', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 12:01:04', '1');
INSERT INTO `log` VALUES ('1366', 'admin', 'Model', 'editField', '/index.php/Admin/Model/editField.html', '1', '127.0.0.1', '2015-09-25 12:01:07', '1');
INSERT INTO `log` VALUES ('1367', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 12:01:38', '1');
INSERT INTO `log` VALUES ('1368', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 12:01:41', '1');
INSERT INTO `log` VALUES ('1369', 'admin', 'Model', 'editField', '/index.php/Admin/Model/editField.html', '1', '127.0.0.1', '2015-09-25 12:01:44', '1');
INSERT INTO `log` VALUES ('1370', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 12:01:47', '1');
INSERT INTO `log` VALUES ('1371', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 12:01:49', '1');
INSERT INTO `log` VALUES ('1372', 'admin', 'Model', 'editField', '/index.php/Admin/Model/editField.html', '1', '127.0.0.1', '2015-09-25 12:01:51', '1');
INSERT INTO `log` VALUES ('1373', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-25 12:02:09', '1');
INSERT INTO `log` VALUES ('1374', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-25 12:02:11', '1');
INSERT INTO `log` VALUES ('1375', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 12:32:59', '1');
INSERT INTO `log` VALUES ('1376', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-25 12:33:06', '1');
INSERT INTO `log` VALUES ('1377', 'admin', 'Link', 'Index', '/index.php/Admin/Link/Index.html', '1', '127.0.0.1', '2015-09-25 12:33:08', '1');
INSERT INTO `log` VALUES ('1378', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-25 12:33:10', '1');
INSERT INTO `log` VALUES ('1379', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 12:33:15', '1');
INSERT INTO `log` VALUES ('1380', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 12:33:19', '1');
INSERT INTO `log` VALUES ('1381', 'admin', 'Model', 'editField', '/index.php/Admin/Model/editField.html', '1', '127.0.0.1', '2015-09-25 12:33:22', '1');
INSERT INTO `log` VALUES ('1382', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 12:33:24', '1');
INSERT INTO `log` VALUES ('1383', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 12:33:27', '1');
INSERT INTO `log` VALUES ('1384', 'admin', 'Model', 'editField', '/index.php/Admin/Model/editField.html', '1', '127.0.0.1', '2015-09-25 12:33:30', '1');
INSERT INTO `log` VALUES ('1385', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 12:33:49', '1');
INSERT INTO `log` VALUES ('1386', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 12:33:51', '1');
INSERT INTO `log` VALUES ('1387', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 12:34:11', '1');
INSERT INTO `log` VALUES ('1388', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 12:34:14', '1');
INSERT INTO `log` VALUES ('1389', 'admin', 'Model', 'editField', '/index.php/Admin/Model/editField.html', '1', '127.0.0.1', '2015-09-25 12:34:21', '1');
INSERT INTO `log` VALUES ('1390', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 12:34:25', '1');
INSERT INTO `log` VALUES ('1391', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 13:25:36', '1');
INSERT INTO `log` VALUES ('1392', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 13:25:38', '1');
INSERT INTO `log` VALUES ('1393', 'admin', 'Model', 'editField', '/index.php/Admin/Model/editField.html', '1', '127.0.0.1', '2015-09-25 13:25:44', '1');
INSERT INTO `log` VALUES ('1394', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 13:25:47', '1');
INSERT INTO `log` VALUES ('1395', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 13:25:50', '1');
INSERT INTO `log` VALUES ('1396', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 13:26:02', '1');
INSERT INTO `log` VALUES ('1397', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 13:26:10', '1');
INSERT INTO `log` VALUES ('1398', 'admin', 'Model', 'editField', '/index.php/Admin/Model/editField.html', '1', '127.0.0.1', '2015-09-25 13:26:15', '1');
INSERT INTO `log` VALUES ('1399', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 13:26:20', '1');
INSERT INTO `log` VALUES ('1400', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 13:26:21', '1');
INSERT INTO `log` VALUES ('1401', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 13:26:22', '1');
INSERT INTO `log` VALUES ('1402', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 13:26:25', '1');
INSERT INTO `log` VALUES ('1403', 'admin', 'Model', 'editField', '/index.php/Admin/Model/editField.html', '1', '127.0.0.1', '2015-09-25 13:26:31', '1');
INSERT INTO `log` VALUES ('1404', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-25 13:26:40', '1');
INSERT INTO `log` VALUES ('1405', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-25 13:26:43', '1');
INSERT INTO `log` VALUES ('1406', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 13:27:35', '1');
INSERT INTO `log` VALUES ('1407', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 13:27:37', '1');
INSERT INTO `log` VALUES ('1408', 'admin', 'Model', 'editField', '/index.php/Admin/Model/editField.html', '1', '127.0.0.1', '2015-09-25 13:27:40', '1');
INSERT INTO `log` VALUES ('1409', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 13:29:08', '1');
INSERT INTO `log` VALUES ('1410', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 13:29:10', '1');
INSERT INTO `log` VALUES ('1411', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 13:29:57', '1');
INSERT INTO `log` VALUES ('1412', 'admin', 'Model', 'Add', '/index.php/Admin/Model/Add.html', '1', '127.0.0.1', '2015-09-25 13:30:00', '1');
INSERT INTO `log` VALUES ('1413', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 13:30:04', '1');
INSERT INTO `log` VALUES ('1414', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 13:32:53', '1');
INSERT INTO `log` VALUES ('1415', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-09-25 13:44:16', '1');
INSERT INTO `log` VALUES ('1416', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 14:22:34', '1');
INSERT INTO `log` VALUES ('1417', 'admin', 'Model', 'Edit', '/index.php/Admin/Model/Edit.html', '1', '127.0.0.1', '2015-09-25 14:25:45', '1');
INSERT INTO `log` VALUES ('1418', 'admin', 'Model', 'Edit', '/index.php/Admin/Model/Edit.html', '1', '127.0.0.1', '2015-09-25 14:25:50', '1');
INSERT INTO `log` VALUES ('1419', 'admin', 'Model', 'Edit', '/index.php/Admin/Model/Edit.html', '1', '127.0.0.1', '2015-09-25 14:25:52', '1');
INSERT INTO `log` VALUES ('1420', 'admin', 'Model', 'Edit', '/index.php/Admin/Model/Edit.html', '1', '127.0.0.1', '2015-09-25 14:25:53', '1');
INSERT INTO `log` VALUES ('1421', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 14:25:55', '1');
INSERT INTO `log` VALUES ('1422', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-25 14:25:58', '1');
INSERT INTO `log` VALUES ('1423', 'admin', 'Link', 'Index', '/index.php/Admin/Link/Index.html', '1', '127.0.0.1', '2015-09-25 14:25:59', '1');
INSERT INTO `log` VALUES ('1424', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-25 14:26:01', '1');
INSERT INTO `log` VALUES ('1425', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-25 14:26:04', '1');
INSERT INTO `log` VALUES ('1426', 'admin', 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-09-25 14:26:05', '1');
INSERT INTO `log` VALUES ('1427', 'admin', 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-25 14:26:07', '1');
INSERT INTO `log` VALUES ('1428', 'admin', 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-25 14:26:08', '1');
INSERT INTO `log` VALUES ('1429', 'admin', 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-25 14:26:09', '1');
INSERT INTO `log` VALUES ('1430', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-25 14:26:11', '1');
INSERT INTO `log` VALUES ('1431', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 14:29:31', '1');
INSERT INTO `log` VALUES ('1432', 'admin', 'Model', 'Add', '/index.php/Admin/Model/Add.html', '1', '127.0.0.1', '2015-09-25 15:04:01', '1');
INSERT INTO `log` VALUES ('1433', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 15:04:03', '1');
INSERT INTO `log` VALUES ('1434', 'admin', 'Model', 'Add', '/index.php/Admin/Model/Add.html', '1', '127.0.0.1', '2015-09-25 15:04:05', '1');
INSERT INTO `log` VALUES ('1435', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 15:10:08', '1');
INSERT INTO `log` VALUES ('1436', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 15:10:09', '1');
INSERT INTO `log` VALUES ('1437', 'admin', 'Model', 'edit', '/index.php/Admin/Model/edit.html', '1', '127.0.0.1', '2015-09-25 15:10:13', '1');
INSERT INTO `log` VALUES ('1438', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 15:10:50', '1');
INSERT INTO `log` VALUES ('1439', 'admin', 'Model', 'edit', '/index.php/Admin/Model/edit.html', '1', '127.0.0.1', '2015-09-25 15:10:54', '1');
INSERT INTO `log` VALUES ('1440', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 15:13:03', '1');
INSERT INTO `log` VALUES ('1441', 'admin', 'Model', 'edit', '/index.php/Admin/Model/edit.html', '1', '127.0.0.1', '2015-09-25 15:13:05', '1');
INSERT INTO `log` VALUES ('1442', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 15:13:24', '1');
INSERT INTO `log` VALUES ('1443', 'admin', 'Model', 'edit', '/index.php/Admin/Model/edit.html', '1', '127.0.0.1', '2015-09-25 15:13:27', '1');
INSERT INTO `log` VALUES ('1444', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 15:14:11', '1');
INSERT INTO `log` VALUES ('1445', 'admin', 'Model', 'edit', '/index.php/Admin/Model/edit.html', '1', '127.0.0.1', '2015-09-25 15:14:13', '1');
INSERT INTO `log` VALUES ('1446', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 15:14:38', '1');
INSERT INTO `log` VALUES ('1447', 'admin', 'Model', 'edit', '/index.php/Admin/Model/edit.html', '1', '127.0.0.1', '2015-09-25 15:14:41', '1');
INSERT INTO `log` VALUES ('1448', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 15:15:10', '1');
INSERT INTO `log` VALUES ('1449', 'admin', 'Model', 'edit', '/index.php/Admin/Model/edit.html', '1', '127.0.0.1', '2015-09-25 15:15:13', '1');
INSERT INTO `log` VALUES ('1450', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-25 15:38:38', '1');
INSERT INTO `log` VALUES ('1451', 'admin', 'Link', 'Index', '/index.php/Admin/Link/Index.html', '1', '127.0.0.1', '2015-09-25 15:38:39', '1');
INSERT INTO `log` VALUES ('1452', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-25 15:38:41', '1');
INSERT INTO `log` VALUES ('1453', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 15:38:44', '1');
INSERT INTO `log` VALUES ('1454', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-25 15:52:47', '1');
INSERT INTO `log` VALUES ('1455', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-25 15:52:51', '1');
INSERT INTO `log` VALUES ('1456', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-25 15:53:56', '1');
INSERT INTO `log` VALUES ('1457', 'admin', 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-25 15:53:58', '1');
INSERT INTO `log` VALUES ('1458', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-25 15:54:14', '1');
INSERT INTO `log` VALUES ('1459', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-25 15:54:18', '1');
INSERT INTO `log` VALUES ('1460', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-25 15:54:22', '1');
INSERT INTO `log` VALUES ('1461', 'admin', 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-09-25 15:54:25', '1');
INSERT INTO `log` VALUES ('1462', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 15:54:27', '1');
INSERT INTO `log` VALUES ('1463', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 15:56:31', '1');
INSERT INTO `log` VALUES ('1464', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 15:56:33', '1');
INSERT INTO `log` VALUES ('1465', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 15:57:07', '1');
INSERT INTO `log` VALUES ('1466', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-25 15:57:10', '1');
INSERT INTO `log` VALUES ('1467', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 15:57:14', '1');
INSERT INTO `log` VALUES ('1468', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 15:57:33', '1');
INSERT INTO `log` VALUES ('1469', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-09-25 15:57:36', '1');
INSERT INTO `log` VALUES ('1470', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 16:02:25', '1');
INSERT INTO `log` VALUES ('1471', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 16:02:27', '1');
INSERT INTO `log` VALUES ('1472', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-09-25 16:02:34', '1');
INSERT INTO `log` VALUES ('1473', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 16:08:44', '1');
INSERT INTO `log` VALUES ('1474', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-09-25 16:08:47', '1');
INSERT INTO `log` VALUES ('1475', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 16:11:37', '1');
INSERT INTO `log` VALUES ('1476', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-09-25 16:11:40', '1');
INSERT INTO `log` VALUES ('1477', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 16:11:44', '1');
INSERT INTO `log` VALUES ('1478', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 16:22:39', '1');
INSERT INTO `log` VALUES ('1479', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 16:22:42', '1');
INSERT INTO `log` VALUES ('1480', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 16:22:44', '1');
INSERT INTO `log` VALUES ('1481', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 16:22:52', '1');
INSERT INTO `log` VALUES ('1482', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 16:24:06', '1');
INSERT INTO `log` VALUES ('1483', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 16:24:08', '1');
INSERT INTO `log` VALUES ('1484', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 16:25:32', '1');
INSERT INTO `log` VALUES ('1485', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-09-25 16:25:33', '1');
INSERT INTO `log` VALUES ('1486', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 16:25:47', '1');
INSERT INTO `log` VALUES ('1487', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-09-25 16:25:50', '1');
INSERT INTO `log` VALUES ('1488', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 16:25:53', '1');
INSERT INTO `log` VALUES ('1489', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 16:27:51', '1');
INSERT INTO `log` VALUES ('1490', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 16:27:53', '1');
INSERT INTO `log` VALUES ('1491', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 16:27:54', '1');
INSERT INTO `log` VALUES ('1492', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 16:27:55', '1');
INSERT INTO `log` VALUES ('1493', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 16:28:28', '1');
INSERT INTO `log` VALUES ('1494', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 16:28:31', '1');
INSERT INTO `log` VALUES ('1495', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 16:28:33', '1');
INSERT INTO `log` VALUES ('1496', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 16:29:05', '1');
INSERT INTO `log` VALUES ('1497', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 16:30:16', '1');
INSERT INTO `log` VALUES ('1498', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 16:30:17', '1');
INSERT INTO `log` VALUES ('1499', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 16:30:18', '1');
INSERT INTO `log` VALUES ('1500', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 16:31:11', '1');
INSERT INTO `log` VALUES ('1501', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 16:31:13', '1');
INSERT INTO `log` VALUES ('1502', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 16:32:02', '1');
INSERT INTO `log` VALUES ('1503', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 16:40:04', '1');
INSERT INTO `log` VALUES ('1504', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 16:40:06', '1');
INSERT INTO `log` VALUES ('1505', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-25 16:41:54', '1');
INSERT INTO `log` VALUES ('1506', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 16:43:38', '1');
INSERT INTO `log` VALUES ('1507', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 16:43:42', '1');
INSERT INTO `log` VALUES ('1508', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 16:50:13', '1');
INSERT INTO `log` VALUES ('1509', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 16:50:14', '1');
INSERT INTO `log` VALUES ('1510', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 16:50:44', '1');
INSERT INTO `log` VALUES ('1511', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 16:51:06', '1');
INSERT INTO `log` VALUES ('1512', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 16:52:15', '1');
INSERT INTO `log` VALUES ('1513', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 16:57:51', '1');
INSERT INTO `log` VALUES ('1514', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 16:57:53', '1');
INSERT INTO `log` VALUES ('1515', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 16:58:34', '1');
INSERT INTO `log` VALUES ('1516', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 17:04:58', '1');
INSERT INTO `log` VALUES ('1517', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 17:05:01', '1');
INSERT INTO `log` VALUES ('1518', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 17:09:25', '1');
INSERT INTO `log` VALUES ('1519', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 17:12:06', '1');
INSERT INTO `log` VALUES ('1520', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 17:12:08', '1');
INSERT INTO `log` VALUES ('1521', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 17:21:47', '1');
INSERT INTO `log` VALUES ('1522', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 17:21:59', '1');
INSERT INTO `log` VALUES ('1523', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 17:22:53', '1');
INSERT INTO `log` VALUES ('1524', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 17:24:45', '1');
INSERT INTO `log` VALUES ('1525', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 17:24:46', '1');
INSERT INTO `log` VALUES ('1526', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 17:24:54', '1');
INSERT INTO `log` VALUES ('1527', 'admin', 'Index', 'index', '/index.php/Admin/Index/index.html', '1', '127.0.0.1', '2015-09-25 17:33:57', '1');
INSERT INTO `log` VALUES ('1528', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', null, null, null, '0');
INSERT INTO `log` VALUES ('1529', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('1530', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-09-25 17:40:10', '1');
INSERT INTO `log` VALUES ('1531', 'admin', 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-09-25 17:40:12', '1');
INSERT INTO `log` VALUES ('1532', 'admin', 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-25 17:40:13', '1');
INSERT INTO `log` VALUES ('1533', 'admin', 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-09-25 17:40:15', '1');
INSERT INTO `log` VALUES ('1534', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-09-25 17:40:16', '1');
INSERT INTO `log` VALUES ('1535', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-09-25 17:40:17', '1');
INSERT INTO `log` VALUES ('1536', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-09-25 17:40:20', '1');
INSERT INTO `log` VALUES ('1537', 'admin', 'Link', 'Index', '/index.php/Admin/Link/Index.html', '1', '127.0.0.1', '2015-09-25 17:40:22', '1');
INSERT INTO `log` VALUES ('1538', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-09-25 17:40:23', '1');
INSERT INTO `log` VALUES ('1539', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 17:40:27', '1');
INSERT INTO `log` VALUES ('1540', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 17:40:29', '1');
INSERT INTO `log` VALUES ('1541', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('1542', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 17:53:19', '1');
INSERT INTO `log` VALUES ('1543', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 17:53:23', '1');
INSERT INTO `log` VALUES ('1544', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 17:53:40', '1');
INSERT INTO `log` VALUES ('1545', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 17:53:47', '1');
INSERT INTO `log` VALUES ('1546', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 17:59:12', '1');
INSERT INTO `log` VALUES ('1547', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 18:03:01', '1');
INSERT INTO `log` VALUES ('1548', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-09-25 18:03:06', '1');
INSERT INTO `log` VALUES ('1549', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 18:06:15', '1');
INSERT INTO `log` VALUES ('1550', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 18:06:44', '1');
INSERT INTO `log` VALUES ('1551', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 18:06:45', '1');
INSERT INTO `log` VALUES ('1552', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 18:07:13', '1');
INSERT INTO `log` VALUES ('1553', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 18:07:15', '1');
INSERT INTO `log` VALUES ('1554', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 18:07:16', '1');
INSERT INTO `log` VALUES ('1555', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 18:07:18', '1');
INSERT INTO `log` VALUES ('1556', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 18:07:19', '1');
INSERT INTO `log` VALUES ('1557', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 18:07:49', '1');
INSERT INTO `log` VALUES ('1558', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 18:07:50', '1');
INSERT INTO `log` VALUES ('1559', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 18:08:04', '1');
INSERT INTO `log` VALUES ('1560', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 18:08:14', '1');
INSERT INTO `log` VALUES ('1561', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 18:09:12', '1');
INSERT INTO `log` VALUES ('1562', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 18:09:15', '1');
INSERT INTO `log` VALUES ('1563', 'admin', 'Model', 'Edit', '/index.php/Admin/Model/Edit.html', '1', '127.0.0.1', '2015-09-25 18:09:32', '1');
INSERT INTO `log` VALUES ('1564', 'admin', 'Model', 'Edit', '/index.php/Admin/Model/Edit.html', '1', '127.0.0.1', '2015-09-25 18:09:36', '1');
INSERT INTO `log` VALUES ('1565', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 18:09:40', '1');
INSERT INTO `log` VALUES ('1566', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 18:09:55', '1');
INSERT INTO `log` VALUES ('1567', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-09-25 18:09:57', '1');
INSERT INTO `log` VALUES ('1568', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 18:09:59', '1');
INSERT INTO `log` VALUES ('1569', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 18:11:44', '1');
INSERT INTO `log` VALUES ('1570', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 18:11:58', '1');
INSERT INTO `log` VALUES ('1571', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-09-25 18:13:06', '1');
INSERT INTO `log` VALUES ('1572', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('1573', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-10-06 21:04:29', '1');
INSERT INTO `log` VALUES ('1574', 'admin', 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-10-06 21:04:32', '1');
INSERT INTO `log` VALUES ('1575', 'admin', 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-10-06 21:04:35', '1');
INSERT INTO `log` VALUES ('1576', 'admin', 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-10-06 21:04:38', '1');
INSERT INTO `log` VALUES ('1577', 'admin', 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-10-06 21:04:40', '1');
INSERT INTO `log` VALUES ('1578', 'admin', 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-10-06 21:04:42', '1');
INSERT INTO `log` VALUES ('1579', 'admin', 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-10-06 21:04:44', '1');
INSERT INTO `log` VALUES ('1580', 'admin', 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-10-06 21:04:47', '1');
INSERT INTO `log` VALUES ('1581', 'admin', 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-10-06 21:04:49', '1');
INSERT INTO `log` VALUES ('1582', 'admin', 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-10-06 21:04:51', '1');
INSERT INTO `log` VALUES ('1583', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-10-06 21:04:52', '1');
INSERT INTO `log` VALUES ('1584', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-10-06 21:04:59', '1');
INSERT INTO `log` VALUES ('1585', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-10-06 21:05:07', '1');
INSERT INTO `log` VALUES ('1586', 'admin', 'Link', 'Index', '/index.php/Admin/Link/Index.html', '1', '127.0.0.1', '2015-10-06 21:05:09', '1');
INSERT INTO `log` VALUES ('1587', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-10-06 21:05:13', '1');
INSERT INTO `log` VALUES ('1588', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-06 21:05:19', '1');
INSERT INTO `log` VALUES ('1589', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-10-06 21:05:23', '1');
INSERT INTO `log` VALUES ('1590', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-06 21:05:33', '1');
INSERT INTO `log` VALUES ('1591', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-06 21:05:36', '1');
INSERT INTO `log` VALUES ('1592', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-06 21:06:51', '1');
INSERT INTO `log` VALUES ('1593', 'admin', 'Channel', 'grid', '/index.php/Admin/Channel/grid.html', '1', '127.0.0.1', '2015-10-06 21:07:17', '1');
INSERT INTO `log` VALUES ('1594', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-06 21:07:22', '1');
INSERT INTO `log` VALUES ('1595', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-06 21:07:50', '1');
INSERT INTO `log` VALUES ('1596', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-06 21:10:52', '1');
INSERT INTO `log` VALUES ('1597', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-06 21:12:30', '1');
INSERT INTO `log` VALUES ('1598', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-06 21:13:26', '1');
INSERT INTO `log` VALUES ('1599', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-06 21:13:48', '1');
INSERT INTO `log` VALUES ('1600', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-06 21:14:49', '1');
INSERT INTO `log` VALUES ('1601', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-06 21:15:00', '1');
INSERT INTO `log` VALUES ('1602', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-10-06 21:15:49', '1');
INSERT INTO `log` VALUES ('1603', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-06 21:15:58', '1');
INSERT INTO `log` VALUES ('1604', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-06 21:18:53', '1');
INSERT INTO `log` VALUES ('1605', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-06 21:19:43', '1');
INSERT INTO `log` VALUES ('1606', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-06 21:20:13', '1');
INSERT INTO `log` VALUES ('1607', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-06 21:21:33', '1');
INSERT INTO `log` VALUES ('1608', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-06 21:21:46', '1');
INSERT INTO `log` VALUES ('1609', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-06 21:22:45', '1');
INSERT INTO `log` VALUES ('1610', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-06 21:25:32', '1');
INSERT INTO `log` VALUES ('1611', 'admin', 'Model', 'edit', '/index.php/Admin/Model/edit.html', '1', '127.0.0.1', '2015-10-06 21:25:35', '1');
INSERT INTO `log` VALUES ('1612', 'admin', 'Model', 'Edit', '/index.php/Admin/Model/Edit.html', '1', '127.0.0.1', '2015-10-06 21:25:58', '1');
INSERT INTO `log` VALUES ('1613', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-06 21:26:03', '1');
INSERT INTO `log` VALUES ('1614', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-06 21:26:42', '1');
INSERT INTO `log` VALUES ('1615', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-06 21:26:44', '1');
INSERT INTO `log` VALUES ('1616', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-06 21:26:46', '1');
INSERT INTO `log` VALUES ('1617', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-06 21:27:01', '1');
INSERT INTO `log` VALUES ('1618', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-06 21:27:02', '1');
INSERT INTO `log` VALUES ('1619', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-06 21:27:04', '1');
INSERT INTO `log` VALUES ('1620', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-06 21:27:05', '1');
INSERT INTO `log` VALUES ('1621', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-06 21:27:32', '1');
INSERT INTO `log` VALUES ('1622', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-06 21:27:34', '1');
INSERT INTO `log` VALUES ('1623', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-06 21:29:14', '1');
INSERT INTO `log` VALUES ('1624', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-06 21:29:16', '1');
INSERT INTO `log` VALUES ('1625', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-06 21:29:34', '1');
INSERT INTO `log` VALUES ('1626', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-10-06 21:29:42', '1');
INSERT INTO `log` VALUES ('1627', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-10-06 21:30:01', '1');
INSERT INTO `log` VALUES ('1628', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-10-06 21:30:26', '1');
INSERT INTO `log` VALUES ('1629', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-10-06 21:30:28', '1');
INSERT INTO `log` VALUES ('1630', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-10-06 21:31:00', '1');
INSERT INTO `log` VALUES ('1631', 'admin', 'UserInfo', 'PassWord', '/index.php/Admin/UserInfo/PassWord.html', '1', '127.0.0.1', '2015-10-06 21:32:40', '1');
INSERT INTO `log` VALUES ('1632', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-10-06 21:33:02', '1');
INSERT INTO `log` VALUES ('1633', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-06 21:33:12', '1');
INSERT INTO `log` VALUES ('1634', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-06 21:33:17', '1');
INSERT INTO `log` VALUES ('1635', 'admin', 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-10-06 21:33:19', '1');
INSERT INTO `log` VALUES ('1636', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-06 21:33:25', '1');
INSERT INTO `log` VALUES ('1637', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-06 21:33:29', '1');
INSERT INTO `log` VALUES ('1638', 'admin', 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-10-06 21:33:31', '1');
INSERT INTO `log` VALUES ('1639', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-06 21:33:37', '1');
INSERT INTO `log` VALUES ('1640', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-06 21:33:40', '1');
INSERT INTO `log` VALUES ('1641', 'admin', 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-10-06 21:33:42', '1');
INSERT INTO `log` VALUES ('1642', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-10-06 21:33:48', '1');
INSERT INTO `log` VALUES ('1643', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-10-06 21:35:10', '1');
INSERT INTO `log` VALUES ('1644', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-06 21:35:16', '1');
INSERT INTO `log` VALUES ('1645', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-06 21:35:19', '1');
INSERT INTO `log` VALUES ('1646', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-06 21:36:08', '1');
INSERT INTO `log` VALUES ('1647', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-06 21:36:44', '1');
INSERT INTO `log` VALUES ('1648', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-06 21:51:32', '1');
INSERT INTO `log` VALUES ('1649', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('1650', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 12:29:31', '1');
INSERT INTO `log` VALUES ('1651', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-07 12:29:34', '1');
INSERT INTO `log` VALUES ('1652', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-10-07 12:29:37', '1');
INSERT INTO `log` VALUES ('1653', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 12:29:46', '1');
INSERT INTO `log` VALUES ('1654', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 12:30:22', '1');
INSERT INTO `log` VALUES ('1655', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-07 12:30:24', '1');
INSERT INTO `log` VALUES ('1656', 'admin', 'Model', 'Edit', '/index.php/Admin/Model/Edit.html', '1', '127.0.0.1', '2015-10-07 12:30:27', '1');
INSERT INTO `log` VALUES ('1657', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-07 12:31:02', '1');
INSERT INTO `log` VALUES ('1658', 'admin', 'Model', 'edit', '/index.php/Admin/Model/edit.html', '1', '127.0.0.1', '2015-10-07 12:31:32', '1');
INSERT INTO `log` VALUES ('1659', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-07 12:31:55', '1');
INSERT INTO `log` VALUES ('1660', 'admin', 'Model', 'Edit', '/index.php/Admin/Model/Edit.html', '1', '127.0.0.1', '2015-10-07 12:31:58', '1');
INSERT INTO `log` VALUES ('1661', 'admin', 'Model', 'Edit', '/index.php/Admin/Model/Edit.html', '1', '127.0.0.1', '2015-10-07 12:36:02', '1');
INSERT INTO `log` VALUES ('1662', 'admin', 'Model', 'Edit', '/index.php/Admin/Model/Edit.html', '1', '127.0.0.1', '2015-10-07 12:36:32', '1');
INSERT INTO `log` VALUES ('1663', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-07 12:50:28', '1');
INSERT INTO `log` VALUES ('1664', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-10-07 12:50:30', '1');
INSERT INTO `log` VALUES ('1665', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-07 12:50:34', '1');
INSERT INTO `log` VALUES ('1666', 'admin', 'Model', 'edit', '/index.php/Admin/Model/edit.html', '1', '127.0.0.1', '2015-10-07 12:50:36', '1');
INSERT INTO `log` VALUES ('1667', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-07 12:50:40', '1');
INSERT INTO `log` VALUES ('1668', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 12:50:42', '1');
INSERT INTO `log` VALUES ('1669', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-07 12:51:10', '1');
INSERT INTO `log` VALUES ('1670', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 12:51:11', '1');
INSERT INTO `log` VALUES ('1671', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-07 12:51:21', '1');
INSERT INTO `log` VALUES ('1672', 'admin', 'Model', 'Edit', '/index.php/Admin/Model/Edit.html', '1', '127.0.0.1', '2015-10-07 12:51:24', '1');
INSERT INTO `log` VALUES ('1673', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-07 12:51:27', '1');
INSERT INTO `log` VALUES ('1674', 'admin', 'Model', 'Edit', '/index.php/Admin/Model/Edit.html', '1', '127.0.0.1', '2015-10-07 12:51:42', '1');
INSERT INTO `log` VALUES ('1675', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-07 12:52:15', '1');
INSERT INTO `log` VALUES ('1676', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 12:52:19', '1');
INSERT INTO `log` VALUES ('1677', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 12:52:24', '1');
INSERT INTO `log` VALUES ('1678', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-07 12:53:00', '1');
INSERT INTO `log` VALUES ('1679', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 12:53:02', '1');
INSERT INTO `log` VALUES ('1680', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-10-07 12:56:58', '1');
INSERT INTO `log` VALUES ('1681', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-07 12:57:08', '1');
INSERT INTO `log` VALUES ('1682', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-07 12:57:41', '1');
INSERT INTO `log` VALUES ('1683', 'admin', 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-10-07 12:57:43', '1');
INSERT INTO `log` VALUES ('1684', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-07 12:57:52', '1');
INSERT INTO `log` VALUES ('1685', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-10-07 12:58:00', '1');
INSERT INTO `log` VALUES ('1686', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-10-07 13:02:34', '1');
INSERT INTO `log` VALUES ('1687', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-07 13:02:57', '1');
INSERT INTO `log` VALUES ('1688', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-07 13:03:05', '1');
INSERT INTO `log` VALUES ('1689', 'admin', 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-10-07 13:03:07', '1');
INSERT INTO `log` VALUES ('1690', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-07 13:03:16', '1');
INSERT INTO `log` VALUES ('1691', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-07 13:03:25', '1');
INSERT INTO `log` VALUES ('1692', 'admin', 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-10-07 13:03:28', '1');
INSERT INTO `log` VALUES ('1693', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-07 13:03:34', '1');
INSERT INTO `log` VALUES ('1694', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-10-07 13:03:39', '1');
INSERT INTO `log` VALUES ('1695', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 13:03:44', '1');
INSERT INTO `log` VALUES ('1696', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 13:13:29', '1');
INSERT INTO `log` VALUES ('1697', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-07 13:16:06', '1');
INSERT INTO `log` VALUES ('1698', 'admin', 'Model', 'Edit', '/index.php/Admin/Model/Edit.html', '1', '127.0.0.1', '2015-10-07 13:16:14', '1');
INSERT INTO `log` VALUES ('1699', 'admin', 'Model', 'Edit', '/index.php/Admin/Model/Edit.html', '1', '127.0.0.1', '2015-10-07 13:16:25', '1');
INSERT INTO `log` VALUES ('1700', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-07 13:16:27', '1');
INSERT INTO `log` VALUES ('1701', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 13:16:29', '1');
INSERT INTO `log` VALUES ('1702', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-07 13:16:32', '1');
INSERT INTO `log` VALUES ('1703', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 13:18:38', '1');
INSERT INTO `log` VALUES ('1704', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-07 13:18:42', '1');
INSERT INTO `log` VALUES ('1705', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 13:18:49', '1');
INSERT INTO `log` VALUES ('1706', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 13:18:57', '1');
INSERT INTO `log` VALUES ('1707', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 13:19:18', '1');
INSERT INTO `log` VALUES ('1708', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 13:21:15', '1');
INSERT INTO `log` VALUES ('1709', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 13:23:05', '1');
INSERT INTO `log` VALUES ('1710', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 13:23:27', '1');
INSERT INTO `log` VALUES ('1711', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 13:24:23', '1');
INSERT INTO `log` VALUES ('1712', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 13:25:02', '1');
INSERT INTO `log` VALUES ('1713', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 13:25:05', '1');
INSERT INTO `log` VALUES ('1714', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 13:26:42', '1');
INSERT INTO `log` VALUES ('1715', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 13:26:45', '1');
INSERT INTO `log` VALUES ('1716', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 13:28:40', '1');
INSERT INTO `log` VALUES ('1717', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 13:28:42', '1');
INSERT INTO `log` VALUES ('1718', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 13:29:10', '1');
INSERT INTO `log` VALUES ('1719', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 13:29:13', '1');
INSERT INTO `log` VALUES ('1720', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 13:29:43', '1');
INSERT INTO `log` VALUES ('1721', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 13:29:46', '1');
INSERT INTO `log` VALUES ('1722', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 13:30:15', '1');
INSERT INTO `log` VALUES ('1723', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 13:30:50', '1');
INSERT INTO `log` VALUES ('1724', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 13:30:56', '1');
INSERT INTO `log` VALUES ('1725', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 13:35:02', '1');
INSERT INTO `log` VALUES ('1726', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 13:35:05', '1');
INSERT INTO `log` VALUES ('1727', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 13:40:10', '1');
INSERT INTO `log` VALUES ('1728', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 13:40:24', '1');
INSERT INTO `log` VALUES ('1729', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 13:40:44', '1');
INSERT INTO `log` VALUES ('1730', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 13:40:58', '1');
INSERT INTO `log` VALUES ('1731', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 13:41:16', '1');
INSERT INTO `log` VALUES ('1732', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 13:41:34', '1');
INSERT INTO `log` VALUES ('1733', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 13:52:44', '1');
INSERT INTO `log` VALUES ('1734', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 13:52:47', '1');
INSERT INTO `log` VALUES ('1735', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 13:53:16', '1');
INSERT INTO `log` VALUES ('1736', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 13:53:18', '1');
INSERT INTO `log` VALUES ('1737', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 13:53:50', '1');
INSERT INTO `log` VALUES ('1738', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 13:53:52', '1');
INSERT INTO `log` VALUES ('1739', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 13:55:12', '1');
INSERT INTO `log` VALUES ('1740', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 13:55:14', '1');
INSERT INTO `log` VALUES ('1741', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-07 13:55:22', '1');
INSERT INTO `log` VALUES ('1742', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-07 13:56:12', '1');
INSERT INTO `log` VALUES ('1743', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-07 13:56:13', '1');
INSERT INTO `log` VALUES ('1744', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-07 13:56:14', '1');
INSERT INTO `log` VALUES ('1745', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-07 13:56:15', '1');
INSERT INTO `log` VALUES ('1746', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 13:57:14', '1');
INSERT INTO `log` VALUES ('1747', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 13:57:18', '1');
INSERT INTO `log` VALUES ('1748', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 14:01:25', '1');
INSERT INTO `log` VALUES ('1749', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 14:01:32', '1');
INSERT INTO `log` VALUES ('1750', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-07 14:01:37', '1');
INSERT INTO `log` VALUES ('1751', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 14:05:00', '1');
INSERT INTO `log` VALUES ('1752', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 14:05:03', '1');
INSERT INTO `log` VALUES ('1753', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 14:12:46', '1');
INSERT INTO `log` VALUES ('1754', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 14:14:32', '1');
INSERT INTO `log` VALUES ('1755', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 14:16:01', '1');
INSERT INTO `log` VALUES ('1756', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 14:16:04', '1');
INSERT INTO `log` VALUES ('1757', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-07 14:16:08', '1');
INSERT INTO `log` VALUES ('1758', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 14:16:11', '1');
INSERT INTO `log` VALUES ('1759', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 14:16:13', '1');
INSERT INTO `log` VALUES ('1760', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 14:16:16', '1');
INSERT INTO `log` VALUES ('1761', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 14:17:36', '1');
INSERT INTO `log` VALUES ('1762', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 14:17:39', '1');
INSERT INTO `log` VALUES ('1763', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 14:18:00', '1');
INSERT INTO `log` VALUES ('1764', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 14:18:02', '1');
INSERT INTO `log` VALUES ('1765', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 14:18:54', '1');
INSERT INTO `log` VALUES ('1766', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 14:18:57', '1');
INSERT INTO `log` VALUES ('1767', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 14:21:16', '1');
INSERT INTO `log` VALUES ('1768', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 14:21:19', '1');
INSERT INTO `log` VALUES ('1769', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 14:22:04', '1');
INSERT INTO `log` VALUES ('1770', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 14:22:07', '1');
INSERT INTO `log` VALUES ('1771', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 14:23:02', '1');
INSERT INTO `log` VALUES ('1772', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 14:23:05', '1');
INSERT INTO `log` VALUES ('1773', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 14:24:24', '1');
INSERT INTO `log` VALUES ('1774', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 14:24:27', '1');
INSERT INTO `log` VALUES ('1775', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 14:25:47', '1');
INSERT INTO `log` VALUES ('1776', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 14:25:50', '1');
INSERT INTO `log` VALUES ('1777', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 14:26:21', '1');
INSERT INTO `log` VALUES ('1778', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 14:26:24', '1');
INSERT INTO `log` VALUES ('1779', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 14:26:45', '1');
INSERT INTO `log` VALUES ('1780', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 14:26:49', '1');
INSERT INTO `log` VALUES ('1781', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 14:27:12', '1');
INSERT INTO `log` VALUES ('1782', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 14:27:16', '1');
INSERT INTO `log` VALUES ('1783', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 14:49:32', '1');
INSERT INTO `log` VALUES ('1784', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-07 14:49:36', '1');
INSERT INTO `log` VALUES ('1785', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 14:49:39', '1');
INSERT INTO `log` VALUES ('1786', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 14:52:55', '1');
INSERT INTO `log` VALUES ('1787', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 14:52:58', '1');
INSERT INTO `log` VALUES ('1788', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 14:53:04', '1');
INSERT INTO `log` VALUES ('1789', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 14:53:07', '1');
INSERT INTO `log` VALUES ('1790', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 14:55:34', '1');
INSERT INTO `log` VALUES ('1791', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('1792', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 14:55:49', '1');
INSERT INTO `log` VALUES ('1793', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 14:55:52', '1');
INSERT INTO `log` VALUES ('1794', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 14:56:03', '1');
INSERT INTO `log` VALUES ('1795', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 14:56:06', '1');
INSERT INTO `log` VALUES ('1796', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 14:56:12', '1');
INSERT INTO `log` VALUES ('1797', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 14:58:09', '1');
INSERT INTO `log` VALUES ('1798', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 14:58:12', '1');
INSERT INTO `log` VALUES ('1799', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 15:09:52', '1');
INSERT INTO `log` VALUES ('1800', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 15:09:56', '1');
INSERT INTO `log` VALUES ('1801', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 15:10:39', '1');
INSERT INTO `log` VALUES ('1802', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 15:10:41', '1');
INSERT INTO `log` VALUES ('1803', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 15:11:17', '1');
INSERT INTO `log` VALUES ('1804', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 15:11:22', '1');
INSERT INTO `log` VALUES ('1805', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 15:11:28', '1');
INSERT INTO `log` VALUES ('1806', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 15:12:11', '1');
INSERT INTO `log` VALUES ('1807', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 15:12:17', '1');
INSERT INTO `log` VALUES ('1808', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 15:12:45', '1');
INSERT INTO `log` VALUES ('1809', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 15:12:48', '1');
INSERT INTO `log` VALUES ('1810', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 15:12:51', '1');
INSERT INTO `log` VALUES ('1811', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 15:12:54', '1');
INSERT INTO `log` VALUES ('1812', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 15:20:38', '1');
INSERT INTO `log` VALUES ('1813', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 15:20:41', '1');
INSERT INTO `log` VALUES ('1814', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 15:22:52', '1');
INSERT INTO `log` VALUES ('1815', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 15:22:55', '1');
INSERT INTO `log` VALUES ('1816', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 15:23:01', '1');
INSERT INTO `log` VALUES ('1817', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-07 15:23:38', '1');
INSERT INTO `log` VALUES ('1818', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-07 15:23:43', '1');
INSERT INTO `log` VALUES ('1819', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('1820', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('1821', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-09 10:20:10', '1');
INSERT INTO `log` VALUES ('1822', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-09 10:20:18', '1');
INSERT INTO `log` VALUES ('1823', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-09 10:20:31', '1');
INSERT INTO `log` VALUES ('1824', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-09 10:20:32', '1');
INSERT INTO `log` VALUES ('1825', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-09 10:20:33', '1');
INSERT INTO `log` VALUES ('1826', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-09 10:20:37', '1');
INSERT INTO `log` VALUES ('1827', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-09 10:21:48', '1');
INSERT INTO `log` VALUES ('1828', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-09 10:21:52', '1');
INSERT INTO `log` VALUES ('1829', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-09 10:22:16', '1');
INSERT INTO `log` VALUES ('1830', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-09 10:22:31', '1');
INSERT INTO `log` VALUES ('1831', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-09 10:22:52', '1');
INSERT INTO `log` VALUES ('1832', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-09 10:22:55', '1');
INSERT INTO `log` VALUES ('1833', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-09 10:23:46', '1');
INSERT INTO `log` VALUES ('1834', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-09 10:23:49', '1');
INSERT INTO `log` VALUES ('1835', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-09 10:24:59', '1');
INSERT INTO `log` VALUES ('1836', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-09 10:25:02', '1');
INSERT INTO `log` VALUES ('1837', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-09 10:25:35', '1');
INSERT INTO `log` VALUES ('1838', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-09 10:25:43', '1');
INSERT INTO `log` VALUES ('1839', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-09 10:25:47', '1');
INSERT INTO `log` VALUES ('1840', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-09 10:25:53', '1');
INSERT INTO `log` VALUES ('1841', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-09 10:25:56', '1');
INSERT INTO `log` VALUES ('1842', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-09 10:27:02', '1');
INSERT INTO `log` VALUES ('1843', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-09 10:27:05', '1');
INSERT INTO `log` VALUES ('1844', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-09 10:50:39', '1');
INSERT INTO `log` VALUES ('1845', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-09 10:52:27', '1');
INSERT INTO `log` VALUES ('1846', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-09 10:52:30', '1');
INSERT INTO `log` VALUES ('1847', 'admin', 'Channel', 'Add', '/index.php/Admin/Channel/Add.html', '1', '127.0.0.1', '2015-10-09 10:52:39', '1');
INSERT INTO `log` VALUES ('1848', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-09 10:54:19', '1');
INSERT INTO `log` VALUES ('1849', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-09 10:54:22', '1');
INSERT INTO `log` VALUES ('1850', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-09 10:56:14', '1');
INSERT INTO `log` VALUES ('1851', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-09 10:56:17', '1');
INSERT INTO `log` VALUES ('1852', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-09 10:56:38', '1');
INSERT INTO `log` VALUES ('1853', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-09 10:56:41', '1');
INSERT INTO `log` VALUES ('1854', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-09 10:57:08', '1');
INSERT INTO `log` VALUES ('1855', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-09 10:57:11', '1');
INSERT INTO `log` VALUES ('1856', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 09:59:45', '1');
INSERT INTO `log` VALUES ('1857', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 09:59:48', '1');
INSERT INTO `log` VALUES ('1858', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('1859', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 10:03:41', '1');
INSERT INTO `log` VALUES ('1860', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 10:06:19', '1');
INSERT INTO `log` VALUES ('1861', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 10:06:21', '1');
INSERT INTO `log` VALUES ('1862', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 10:06:57', '1');
INSERT INTO `log` VALUES ('1863', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 10:10:46', '1');
INSERT INTO `log` VALUES ('1864', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 10:11:47', '1');
INSERT INTO `log` VALUES ('1865', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 10:11:49', '1');
INSERT INTO `log` VALUES ('1866', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 10:12:31', '1');
INSERT INTO `log` VALUES ('1867', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 10:13:12', '1');
INSERT INTO `log` VALUES ('1868', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 10:13:15', '1');
INSERT INTO `log` VALUES ('1869', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 10:13:40', '1');
INSERT INTO `log` VALUES ('1870', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 10:14:04', '1');
INSERT INTO `log` VALUES ('1871', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 10:14:07', '1');
INSERT INTO `log` VALUES ('1872', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 10:16:44', '1');
INSERT INTO `log` VALUES ('1873', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 10:17:18', '1');
INSERT INTO `log` VALUES ('1874', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 10:18:30', '1');
INSERT INTO `log` VALUES ('1875', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 10:35:29', '1');
INSERT INTO `log` VALUES ('1876', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 10:35:56', '1');
INSERT INTO `log` VALUES ('1877', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 10:54:22', '1');
INSERT INTO `log` VALUES ('1878', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 10:54:26', '1');
INSERT INTO `log` VALUES ('1879', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('1880', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 10:54:51', '1');
INSERT INTO `log` VALUES ('1881', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 10:54:55', '1');
INSERT INTO `log` VALUES ('1882', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 10:55:35', '1');
INSERT INTO `log` VALUES ('1883', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 10:56:43', '1');
INSERT INTO `log` VALUES ('1884', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 10:58:03', '1');
INSERT INTO `log` VALUES ('1885', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 10:59:04', '1');
INSERT INTO `log` VALUES ('1886', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 10:59:31', '1');
INSERT INTO `log` VALUES ('1887', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 11:00:15', '1');
INSERT INTO `log` VALUES ('1888', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 11:00:46', '1');
INSERT INTO `log` VALUES ('1889', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 11:01:08', '1');
INSERT INTO `log` VALUES ('1890', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 11:01:40', '1');
INSERT INTO `log` VALUES ('1891', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 11:03:45', '1');
INSERT INTO `log` VALUES ('1892', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 11:03:48', '1');
INSERT INTO `log` VALUES ('1893', 'admin', 'Channel', 'Add', '/index.php/Admin/Channel/Add.html', '1', '127.0.0.1', '2015-10-12 11:04:41', '1');
INSERT INTO `log` VALUES ('1894', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 11:05:25', '1');
INSERT INTO `log` VALUES ('1895', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 11:05:28', '1');
INSERT INTO `log` VALUES ('1896', 'admin', 'Channel', 'Edit', '/index.php/Admin/Channel/Edit.html', '1', '127.0.0.1', '2015-10-12 11:05:31', '1');
INSERT INTO `log` VALUES ('1897', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 11:20:10', '1');
INSERT INTO `log` VALUES ('1898', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 11:20:12', '1');
INSERT INTO `log` VALUES ('1899', 'admin', 'Channel', 'Edit', '/index.php/Admin/Channel/Edit.html', '1', '127.0.0.1', '2015-10-12 11:20:15', '1');
INSERT INTO `log` VALUES ('1900', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 11:20:17', '1');
INSERT INTO `log` VALUES ('1901', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 11:20:20', '1');
INSERT INTO `log` VALUES ('1902', 'admin', 'Channel', 'Edit', '/index.php/Admin/Channel/Edit.html', '1', '127.0.0.1', '2015-10-12 11:20:24', '1');
INSERT INTO `log` VALUES ('1903', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 11:20:26', '1');
INSERT INTO `log` VALUES ('1904', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 11:20:29', '1');
INSERT INTO `log` VALUES ('1905', 'admin', 'Channel', 'Edit', '/index.php/Admin/Channel/Edit.html', '1', '127.0.0.1', '2015-10-12 11:20:33', '1');
INSERT INTO `log` VALUES ('1906', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 11:20:36', '1');
INSERT INTO `log` VALUES ('1907', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 11:35:33', '1');
INSERT INTO `log` VALUES ('1908', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 11:35:39', '1');
INSERT INTO `log` VALUES ('1909', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 11:35:45', '1');
INSERT INTO `log` VALUES ('1910', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 11:35:49', '1');
INSERT INTO `log` VALUES ('1911', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 11:37:46', '1');
INSERT INTO `log` VALUES ('1912', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 11:38:56', '1');
INSERT INTO `log` VALUES ('1913', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 11:40:06', '1');
INSERT INTO `log` VALUES ('1914', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 11:41:03', '1');
INSERT INTO `log` VALUES ('1915', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 11:41:30', '1');
INSERT INTO `log` VALUES ('1916', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 11:42:01', '1');
INSERT INTO `log` VALUES ('1917', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 11:43:02', '1');
INSERT INTO `log` VALUES ('1918', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 11:43:05', '1');
INSERT INTO `log` VALUES ('1919', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 11:51:10', '1');
INSERT INTO `log` VALUES ('1920', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 11:51:17', '1');
INSERT INTO `log` VALUES ('1921', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 11:51:22', '1');
INSERT INTO `log` VALUES ('1922', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 11:51:26', '1');
INSERT INTO `log` VALUES ('1923', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 11:51:29', '1');
INSERT INTO `log` VALUES ('1924', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 11:51:50', '1');
INSERT INTO `log` VALUES ('1925', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 11:51:53', '1');
INSERT INTO `log` VALUES ('1926', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 11:51:56', '1');
INSERT INTO `log` VALUES ('1927', 'admin', 'Channel', 'Edit', '/index.php/Admin/Channel/Edit.html', '1', '127.0.0.1', '2015-10-12 11:52:19', '1');
INSERT INTO `log` VALUES ('1928', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 11:52:21', '1');
INSERT INTO `log` VALUES ('1929', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 11:52:30', '1');
INSERT INTO `log` VALUES ('1930', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 11:52:33', '1');
INSERT INTO `log` VALUES ('1931', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 11:52:59', '1');
INSERT INTO `log` VALUES ('1932', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-12 11:54:43', '1');
INSERT INTO `log` VALUES ('1933', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-10-12 11:54:49', '1');
INSERT INTO `log` VALUES ('1934', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-12 11:54:56', '1');
INSERT INTO `log` VALUES ('1935', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-12 11:55:06', '1');
INSERT INTO `log` VALUES ('1936', 'admin', 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-10-12 11:55:08', '1');
INSERT INTO `log` VALUES ('1937', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 11:55:16', '1');
INSERT INTO `log` VALUES ('1938', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-10-12 11:57:26', '1');
INSERT INTO `log` VALUES ('1939', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 13:34:37', '1');
INSERT INTO `log` VALUES ('1940', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 13:34:38', '1');
INSERT INTO `log` VALUES ('1941', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 13:35:42', '1');
INSERT INTO `log` VALUES ('1942', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 13:35:43', '1');
INSERT INTO `log` VALUES ('1943', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 13:35:44', '1');
INSERT INTO `log` VALUES ('1944', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-12 13:35:46', '1');
INSERT INTO `log` VALUES ('1945', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 13:35:47', '1');
INSERT INTO `log` VALUES ('1946', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 13:35:48', '1');
INSERT INTO `log` VALUES ('1947', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 13:42:47', '1');
INSERT INTO `log` VALUES ('1948', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 13:44:32', '1');
INSERT INTO `log` VALUES ('1949', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 13:44:42', '1');
INSERT INTO `log` VALUES ('1950', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 13:48:43', '1');
INSERT INTO `log` VALUES ('1951', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 13:48:45', '1');
INSERT INTO `log` VALUES ('1952', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 13:48:47', '1');
INSERT INTO `log` VALUES ('1953', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 13:49:02', '1');
INSERT INTO `log` VALUES ('1954', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 13:49:17', '1');
INSERT INTO `log` VALUES ('1955', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 13:49:54', '1');
INSERT INTO `log` VALUES ('1956', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 13:50:06', '1');
INSERT INTO `log` VALUES ('1957', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 13:50:23', '1');
INSERT INTO `log` VALUES ('1958', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 13:50:37', '1');
INSERT INTO `log` VALUES ('1959', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 13:52:19', '1');
INSERT INTO `log` VALUES ('1960', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 13:52:39', '1');
INSERT INTO `log` VALUES ('1961', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 13:52:57', '1');
INSERT INTO `log` VALUES ('1962', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 13:53:51', '1');
INSERT INTO `log` VALUES ('1963', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 13:54:53', '1');
INSERT INTO `log` VALUES ('1964', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 13:55:58', '1');
INSERT INTO `log` VALUES ('1965', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 13:56:06', '1');
INSERT INTO `log` VALUES ('1966', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 13:57:18', '1');
INSERT INTO `log` VALUES ('1967', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 13:57:23', '1');
INSERT INTO `log` VALUES ('1968', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 13:57:26', '1');
INSERT INTO `log` VALUES ('1969', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 13:59:23', '1');
INSERT INTO `log` VALUES ('1970', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 13:59:28', '1');
INSERT INTO `log` VALUES ('1971', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 14:01:41', '1');
INSERT INTO `log` VALUES ('1972', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 14:04:42', '1');
INSERT INTO `log` VALUES ('1973', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 14:07:01', '1');
INSERT INTO `log` VALUES ('1974', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 14:07:52', '1');
INSERT INTO `log` VALUES ('1975', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 14:08:20', '1');
INSERT INTO `log` VALUES ('1976', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 14:08:31', '1');
INSERT INTO `log` VALUES ('1977', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 14:08:33', '1');
INSERT INTO `log` VALUES ('1978', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-12 14:08:35', '1');
INSERT INTO `log` VALUES ('1979', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 14:08:43', '1');
INSERT INTO `log` VALUES ('1980', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:08:52', '1');
INSERT INTO `log` VALUES ('1981', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:10:39', '1');
INSERT INTO `log` VALUES ('1982', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:11:30', '1');
INSERT INTO `log` VALUES ('1983', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:15:39', '1');
INSERT INTO `log` VALUES ('1984', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:16:04', '1');
INSERT INTO `log` VALUES ('1985', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:17:00', '1');
INSERT INTO `log` VALUES ('1986', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:17:12', '1');
INSERT INTO `log` VALUES ('1987', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:18:08', '1');
INSERT INTO `log` VALUES ('1988', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:18:41', '1');
INSERT INTO `log` VALUES ('1989', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 14:18:48', '1');
INSERT INTO `log` VALUES ('1990', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 14:18:50', '1');
INSERT INTO `log` VALUES ('1991', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 14:19:02', '1');
INSERT INTO `log` VALUES ('1992', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 14:19:04', '1');
INSERT INTO `log` VALUES ('1993', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 14:19:05', '1');
INSERT INTO `log` VALUES ('1994', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:19:10', '1');
INSERT INTO `log` VALUES ('1995', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:20:19', '1');
INSERT INTO `log` VALUES ('1996', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:20:42', '1');
INSERT INTO `log` VALUES ('1997', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:20:59', '1');
INSERT INTO `log` VALUES ('1998', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:21:27', '1');
INSERT INTO `log` VALUES ('1999', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:22:32', '1');
INSERT INTO `log` VALUES ('2000', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 14:22:39', '1');
INSERT INTO `log` VALUES ('2001', 'admin', 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-10-12 14:22:44', '1');
INSERT INTO `log` VALUES ('2002', 'admin', 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-10-12 14:22:45', '1');
INSERT INTO `log` VALUES ('2003', 'admin', 'Auth', 'edit', '/index.php/Admin/Auth/edit.html', '1', '127.0.0.1', '2015-10-12 14:22:48', '1');
INSERT INTO `log` VALUES ('2004', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-12 14:41:09', '1');
INSERT INTO `log` VALUES ('2005', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 14:41:23', '1');
INSERT INTO `log` VALUES ('2006', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 14:41:24', '1');
INSERT INTO `log` VALUES ('2007', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 14:41:26', '1');
INSERT INTO `log` VALUES ('2008', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:41:29', '1');
INSERT INTO `log` VALUES ('2009', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:42:20', '1');
INSERT INTO `log` VALUES ('2010', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:42:53', '1');
INSERT INTO `log` VALUES ('2011', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:43:20', '1');
INSERT INTO `log` VALUES ('2012', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:44:14', '1');
INSERT INTO `log` VALUES ('2013', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 14:46:14', '1');
INSERT INTO `log` VALUES ('2014', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 14:46:16', '1');
INSERT INTO `log` VALUES ('2015', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:46:19', '1');
INSERT INTO `log` VALUES ('2016', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:52:59', '1');
INSERT INTO `log` VALUES ('2017', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:53:19', '1');
INSERT INTO `log` VALUES ('2018', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:54:42', '1');
INSERT INTO `log` VALUES ('2019', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:55:43', '1');
INSERT INTO `log` VALUES ('2020', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:56:01', '1');
INSERT INTO `log` VALUES ('2021', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:57:03', '1');
INSERT INTO `log` VALUES ('2022', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:57:39', '1');
INSERT INTO `log` VALUES ('2023', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:58:39', '1');
INSERT INTO `log` VALUES ('2024', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:59:24', '1');
INSERT INTO `log` VALUES ('2025', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 14:59:53', '1');
INSERT INTO `log` VALUES ('2026', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 15:00:02', '1');
INSERT INTO `log` VALUES ('2027', 'admin', 'Article', 'Edit', '/index.php/Admin/Article/Edit.html', '1', '127.0.0.1', '2015-10-12 15:01:14', '1');
INSERT INTO `log` VALUES ('2028', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 15:01:16', '1');
INSERT INTO `log` VALUES ('2029', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 15:01:20', '1');
INSERT INTO `log` VALUES ('2030', 'admin', 'Article', 'Edit', '/index.php/Admin/Article/Edit.html', '1', '127.0.0.1', '2015-10-12 15:01:25', '1');
INSERT INTO `log` VALUES ('2031', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 15:01:27', '1');
INSERT INTO `log` VALUES ('2032', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 15:01:31', '1');
INSERT INTO `log` VALUES ('2033', 'admin', 'Article', 'Edit', '/index.php/Admin/Article/Edit.html', '1', '127.0.0.1', '2015-10-12 15:01:35', '1');
INSERT INTO `log` VALUES ('2034', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 15:01:38', '1');
INSERT INTO `log` VALUES ('2035', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 15:01:52', '1');
INSERT INTO `log` VALUES ('2036', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 15:04:35', '1');
INSERT INTO `log` VALUES ('2037', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 15:04:36', '1');
INSERT INTO `log` VALUES ('2038', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-12 15:04:42', '1');
INSERT INTO `log` VALUES ('2039', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 15:04:43', '1');
INSERT INTO `log` VALUES ('2040', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 15:04:47', '1');
INSERT INTO `log` VALUES ('2041', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 15:04:53', '1');
INSERT INTO `log` VALUES ('2042', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-10-12 15:08:18', '1');
INSERT INTO `log` VALUES ('2043', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-12 15:08:22', '1');
INSERT INTO `log` VALUES ('2044', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-12 15:08:42', '1');
INSERT INTO `log` VALUES ('2045', 'admin', 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-10-12 15:08:44', '1');
INSERT INTO `log` VALUES ('2046', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-12 15:08:49', '1');
INSERT INTO `log` VALUES ('2047', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-12 15:08:56', '1');
INSERT INTO `log` VALUES ('2048', 'admin', 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-10-12 15:08:59', '1');
INSERT INTO `log` VALUES ('2049', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 15:09:02', '1');
INSERT INTO `log` VALUES ('2050', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-10-12 15:09:06', '1');
INSERT INTO `log` VALUES ('2051', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-12 15:09:10', '1');
INSERT INTO `log` VALUES ('2052', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-12 15:09:18', '1');
INSERT INTO `log` VALUES ('2053', 'admin', 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-10-12 15:09:20', '1');
INSERT INTO `log` VALUES ('2054', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 15:09:24', '1');
INSERT INTO `log` VALUES ('2055', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 15:09:26', '1');
INSERT INTO `log` VALUES ('2056', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 15:12:25', '1');
INSERT INTO `log` VALUES ('2057', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 15:12:27', '1');
INSERT INTO `log` VALUES ('2058', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 15:14:53', '1');
INSERT INTO `log` VALUES ('2059', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 15:14:55', '1');
INSERT INTO `log` VALUES ('2060', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:14:57', '1');
INSERT INTO `log` VALUES ('2061', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:15:29', '1');
INSERT INTO `log` VALUES ('2062', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:15:32', '1');
INSERT INTO `log` VALUES ('2063', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:18:28', '1');
INSERT INTO `log` VALUES ('2064', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:20:02', '1');
INSERT INTO `log` VALUES ('2065', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:21:47', '1');
INSERT INTO `log` VALUES ('2066', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:21:48', '1');
INSERT INTO `log` VALUES ('2067', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:21:53', '1');
INSERT INTO `log` VALUES ('2068', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:21:56', '1');
INSERT INTO `log` VALUES ('2069', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:23:01', '1');
INSERT INTO `log` VALUES ('2070', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:24:12', '1');
INSERT INTO `log` VALUES ('2071', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:29:22', '1');
INSERT INTO `log` VALUES ('2072', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:31:39', '1');
INSERT INTO `log` VALUES ('2073', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:32:19', '1');
INSERT INTO `log` VALUES ('2074', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:32:57', '1');
INSERT INTO `log` VALUES ('2075', 'admin', 'Product', 'edit', '/index.php/Admin/Product/edit.html', '1', '127.0.0.1', '2015-10-12 15:32:58', '1');
INSERT INTO `log` VALUES ('2076', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 15:33:06', '1');
INSERT INTO `log` VALUES ('2077', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 15:33:13', '1');
INSERT INTO `log` VALUES ('2078', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 15:33:16', '1');
INSERT INTO `log` VALUES ('2079', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 15:34:16', '1');
INSERT INTO `log` VALUES ('2080', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:34:17', '1');
INSERT INTO `log` VALUES ('2081', 'admin', 'Product', 'edit', '/index.php/Admin/Product/edit.html', '1', '127.0.0.1', '2015-10-12 15:34:20', '1');
INSERT INTO `log` VALUES ('2082', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 15:34:43', '1');
INSERT INTO `log` VALUES ('2083', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 15:34:46', '1');
INSERT INTO `log` VALUES ('2084', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 15:34:53', '1');
INSERT INTO `log` VALUES ('2085', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 15:35:03', '1');
INSERT INTO `log` VALUES ('2086', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 15:35:06', '1');
INSERT INTO `log` VALUES ('2087', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 15:35:07', '1');
INSERT INTO `log` VALUES ('2088', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 15:39:47', '1');
INSERT INTO `log` VALUES ('2089', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:39:48', '1');
INSERT INTO `log` VALUES ('2090', 'admin', 'Product', 'edit', '/index.php/Admin/Product/edit.html', '1', '127.0.0.1', '2015-10-12 15:39:50', '1');
INSERT INTO `log` VALUES ('2091', 'admin', 'Product', 'edit', '/index.php/Admin/Product/edit.html', '1', '127.0.0.1', '2015-10-12 15:40:37', '1');
INSERT INTO `log` VALUES ('2092', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:41:03', '1');
INSERT INTO `log` VALUES ('2093', 'admin', 'Product', 'edit', '/index.php/Admin/Product/edit.html', '1', '127.0.0.1', '2015-10-12 15:41:06', '1');
INSERT INTO `log` VALUES ('2094', 'admin', 'Product', 'edit', '/index.php/Admin/Product/edit.html', '1', '127.0.0.1', '2015-10-12 15:42:06', '1');
INSERT INTO `log` VALUES ('2095', 'admin', 'Product', 'edit', '/index.php/Admin/Product/edit.html', '1', '127.0.0.1', '2015-10-12 15:42:15', '1');
INSERT INTO `log` VALUES ('2096', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 15:42:20', '1');
INSERT INTO `log` VALUES ('2097', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:42:22', '1');
INSERT INTO `log` VALUES ('2098', 'admin', 'Product', 'edit', '/index.php/Admin/Product/edit.html', '1', '127.0.0.1', '2015-10-12 15:42:25', '1');
INSERT INTO `log` VALUES ('2099', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 15:42:29', '1');
INSERT INTO `log` VALUES ('2100', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 15:42:32', '1');
INSERT INTO `log` VALUES ('2101', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 15:42:36', '1');
INSERT INTO `log` VALUES ('2102', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 15:42:38', '1');
INSERT INTO `log` VALUES ('2103', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 15:42:59', '1');
INSERT INTO `log` VALUES ('2104', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-12 15:43:06', '1');
INSERT INTO `log` VALUES ('2105', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:43:48', '1');
INSERT INTO `log` VALUES ('2106', 'admin', 'Product', 'edit', '/index.php/Admin/Product/edit.html', '1', '127.0.0.1', '2015-10-12 15:43:50', '1');
INSERT INTO `log` VALUES ('2107', 'admin', 'Product', 'edit', '/index.php/Admin/Product/edit.html', '1', '127.0.0.1', '2015-10-12 15:44:16', '1');
INSERT INTO `log` VALUES ('2108', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:44:23', '1');
INSERT INTO `log` VALUES ('2109', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 15:44:25', '1');
INSERT INTO `log` VALUES ('2110', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-12 15:44:26', '1');
INSERT INTO `log` VALUES ('2111', 'admin', 'Model', 'listField', '/index.php/Admin/Model/listField.html', '1', '127.0.0.1', '2015-10-12 15:44:31', '1');
INSERT INTO `log` VALUES ('2112', 'admin', 'Model', 'Edit', '/index.php/Admin/Model/Edit.html', '1', '127.0.0.1', '2015-10-12 15:44:35', '1');
INSERT INTO `log` VALUES ('2113', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-12 15:44:38', '1');
INSERT INTO `log` VALUES ('2114', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:44:40', '1');
INSERT INTO `log` VALUES ('2115', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 15:44:42', '1');
INSERT INTO `log` VALUES ('2116', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 15:44:44', '1');
INSERT INTO `log` VALUES ('2117', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 15:50:26', '1');
INSERT INTO `log` VALUES ('2118', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:50:28', '1');
INSERT INTO `log` VALUES ('2119', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:52:44', '1');
INSERT INTO `log` VALUES ('2120', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 15:52:46', '1');
INSERT INTO `log` VALUES ('2121', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 15:52:48', '1');
INSERT INTO `log` VALUES ('2122', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 15:52:50', '1');
INSERT INTO `log` VALUES ('2123', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:52:52', '1');
INSERT INTO `log` VALUES ('2124', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:53:10', '1');
INSERT INTO `log` VALUES ('2125', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-12 15:53:12', '1');
INSERT INTO `log` VALUES ('2126', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-12 15:53:18', '1');
INSERT INTO `log` VALUES ('2127', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:53:20', '1');
INSERT INTO `log` VALUES ('2128', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 15:53:22', '1');
INSERT INTO `log` VALUES ('2129', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 15:53:23', '1');
INSERT INTO `log` VALUES ('2130', 'admin', 'Type', 'Index', '/index.php/Admin/Type/Index.html', '1', '127.0.0.1', '2015-10-12 15:53:26', '1');
INSERT INTO `log` VALUES ('2131', 'admin', 'Link', 'Index', '/index.php/Admin/Link/Index.html', '1', '127.0.0.1', '2015-10-12 15:53:28', '1');
INSERT INTO `log` VALUES ('2132', 'admin', 'Slide', 'Index', '/index.php/Admin/Slide/Index.html', '1', '127.0.0.1', '2015-10-12 15:53:30', '1');
INSERT INTO `log` VALUES ('2133', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:53:35', '1');
INSERT INTO `log` VALUES ('2134', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-12 15:53:37', '1');
INSERT INTO `log` VALUES ('2135', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-12 15:54:02', '1');
INSERT INTO `log` VALUES ('2136', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:54:04', '1');
INSERT INTO `log` VALUES ('2137', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-12 15:54:07', '1');
INSERT INTO `log` VALUES ('2138', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 15:54:09', '1');
INSERT INTO `log` VALUES ('2139', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 15:54:11', '1');
INSERT INTO `log` VALUES ('2140', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:54:13', '1');
INSERT INTO `log` VALUES ('2141', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-12 15:54:43', '1');
INSERT INTO `log` VALUES ('2142', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-12 15:54:56', '1');
INSERT INTO `log` VALUES ('2143', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 15:56:28', '1');
INSERT INTO `log` VALUES ('2144', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 15:56:30', '1');
INSERT INTO `log` VALUES ('2145', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-10-12 15:56:36', '1');
INSERT INTO `log` VALUES ('2146', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 16:37:59', '1');
INSERT INTO `log` VALUES ('2147', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 16:38:01', '1');
INSERT INTO `log` VALUES ('2148', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 16:38:03', '1');
INSERT INTO `log` VALUES ('2149', 'admin', 'UserInfo', 'Index', '/index.php/Admin/UserInfo/Index.html', '1', '127.0.0.1', '2015-10-12 17:09:34', '1');
INSERT INTO `log` VALUES ('2150', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 17:09:38', '1');
INSERT INTO `log` VALUES ('2151', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-10-12 17:11:31', '1');
INSERT INTO `log` VALUES ('2152', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-12 17:11:36', '1');
INSERT INTO `log` VALUES ('2153', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-12 17:12:08', '1');
INSERT INTO `log` VALUES ('2154', 'admin', 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-10-12 17:12:10', '1');
INSERT INTO `log` VALUES ('2155', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 17:14:39', '1');
INSERT INTO `log` VALUES ('2156', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 17:18:43', '1');
INSERT INTO `log` VALUES ('2157', 'admin', 'Recommend', 'Index', '/index.php/Admin/Recommend/Index.html', '1', '127.0.0.1', '2015-10-12 17:19:54', '1');
INSERT INTO `log` VALUES ('2158', 'admin', 'Recommend', 'Index', '/index.php/Admin/Recommend/Index.html', '1', '127.0.0.1', '2015-10-12 17:20:20', '1');
INSERT INTO `log` VALUES ('2159', 'admin', 'Recommend', 'edit', '/index.php/Admin/Recommend/edit.html', '1', '127.0.0.1', '2015-10-12 17:20:28', '1');
INSERT INTO `log` VALUES ('2160', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-10-12 17:21:09', '1');
INSERT INTO `log` VALUES ('2161', 'admin', 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-10-12 17:21:11', '1');
INSERT INTO `log` VALUES ('2162', 'admin', 'User', 'Edit', '/index.php/Admin/User/Edit.html', '1', '127.0.0.1', '2015-10-12 17:21:13', '1');
INSERT INTO `log` VALUES ('2163', 'admin', 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-10-12 17:21:17', '1');
INSERT INTO `log` VALUES ('2164', 'admin', 'Auth', 'edit', '/index.php/Admin/Auth/edit.html', '1', '127.0.0.1', '2015-10-12 17:21:20', '1');
INSERT INTO `log` VALUES ('2165', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-10-12 17:21:23', '1');
INSERT INTO `log` VALUES ('2166', 'admin', 'Recommend', 'Index', '/index.php/Admin/Recommend/Index.html', '1', '127.0.0.1', '2015-10-12 17:23:15', '1');
INSERT INTO `log` VALUES ('2167', 'admin', 'Recommend', 'Index', '/index.php/Admin/Recommend/Index.html', '1', '127.0.0.1', '2015-10-12 17:23:43', '1');
INSERT INTO `log` VALUES ('2168', 'admin', 'Recommend', 'edit', '/index.php/Admin/Recommend/edit.html', '1', '127.0.0.1', '2015-10-12 17:23:45', '1');
INSERT INTO `log` VALUES ('2169', 'admin', 'Recommend', 'edit', '/index.php/Admin/Recommend/edit.html', '1', '127.0.0.1', '2015-10-12 17:24:25', '1');
INSERT INTO `log` VALUES ('2170', 'admin', 'Recommend', 'edit', '/index.php/Admin/Recommend/edit.html', '1', '127.0.0.1', '2015-10-12 17:24:51', '1');
INSERT INTO `log` VALUES ('2171', 'admin', 'Recommend', 'edit', '/index.php/Admin/Recommend/edit.html', '1', '127.0.0.1', '2015-10-12 17:25:42', '1');
INSERT INTO `log` VALUES ('2172', 'admin', 'Recommend', 'edit', '/index.php/Admin/Recommend/edit.html', '1', '127.0.0.1', '2015-10-12 17:25:57', '1');
INSERT INTO `log` VALUES ('2173', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 17:26:03', '1');
INSERT INTO `log` VALUES ('2174', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 17:26:05', '1');
INSERT INTO `log` VALUES ('2175', 'admin', 'Recommend', 'Index', '/index.php/Admin/Recommend/Index.html', '1', '127.0.0.1', '2015-10-12 17:26:44', '1');
INSERT INTO `log` VALUES ('2176', 'admin', 'Recommend', 'edit', '/index.php/Admin/Recommend/edit.html', '1', '127.0.0.1', '2015-10-12 17:26:47', '1');
INSERT INTO `log` VALUES ('2177', 'admin', 'Recommend', 'edit', '/index.php/Admin/Recommend/edit.html', '1', '127.0.0.1', '2015-10-12 17:28:33', '1');
INSERT INTO `log` VALUES ('2178', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-12 17:28:37', '1');
INSERT INTO `log` VALUES ('2179', 'admin', 'Model', 'Edit', '/index.php/Admin/Model/Edit.html', '1', '127.0.0.1', '2015-10-12 17:28:42', '1');
INSERT INTO `log` VALUES ('2180', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-12 17:28:48', '1');
INSERT INTO `log` VALUES ('2181', 'admin', 'Model', 'Edit', '/index.php/Admin/Model/Edit.html', '1', '127.0.0.1', '2015-10-12 17:28:50', '1');
INSERT INTO `log` VALUES ('2182', 'admin', 'Model', 'Edit', '/index.php/Admin/Model/Edit.html', '1', '127.0.0.1', '2015-10-12 17:28:53', '1');
INSERT INTO `log` VALUES ('2183', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-12 17:28:55', '1');
INSERT INTO `log` VALUES ('2184', 'admin', 'Model', 'Edit', '/index.php/Admin/Model/Edit.html', '1', '127.0.0.1', '2015-10-12 17:28:59', '1');
INSERT INTO `log` VALUES ('2185', 'admin', 'Model', 'Edit', '/index.php/Admin/Model/Edit.html', '1', '127.0.0.1', '2015-10-12 17:29:01', '1');
INSERT INTO `log` VALUES ('2186', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-12 17:29:03', '1');
INSERT INTO `log` VALUES ('2187', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 17:29:05', '1');
INSERT INTO `log` VALUES ('2188', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-12 17:29:09', '1');
INSERT INTO `log` VALUES ('2189', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 17:29:12', '1');
INSERT INTO `log` VALUES ('2190', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 17:29:14', '1');
INSERT INTO `log` VALUES ('2191', 'admin', 'Recommend', 'Index', '/index.php/Admin/Recommend/Index.html', '1', '127.0.0.1', '2015-10-12 17:29:15', '1');
INSERT INTO `log` VALUES ('2192', 'admin', 'Recommend', 'Edit', '/index.php/Admin/Recommend/Edit.html', '1', '127.0.0.1', '2015-10-12 17:29:17', '1');
INSERT INTO `log` VALUES ('2193', 'admin', 'Recommend', 'Index', '/index.php/Admin/Recommend/Index.html', '1', '127.0.0.1', '2015-10-12 17:29:23', '1');
INSERT INTO `log` VALUES ('2194', 'admin', 'Recommend', 'Index', '/index.php/Admin/Recommend/Index.html', '1', '127.0.0.1', '2015-10-12 17:31:37', '1');
INSERT INTO `log` VALUES ('2195', 'admin', 'Recommend', 'Index', '/index.php/Admin/Recommend/Index.html', '1', '127.0.0.1', '2015-10-12 17:33:38', '1');
INSERT INTO `log` VALUES ('2196', 'admin', 'Recommend', 'Index', '/index.php/Admin/Recommend/Index.html', '1', '127.0.0.1', '2015-10-12 17:34:36', '1');
INSERT INTO `log` VALUES ('2197', 'admin', 'Recommend', 'Index', '/index.php/Admin/Recommend/Index.html', '1', '127.0.0.1', '2015-10-12 17:36:00', '1');
INSERT INTO `log` VALUES ('2198', 'admin', 'Recommend', 'Edit', '/index.php/Admin/Recommend/Edit.html', '1', '127.0.0.1', '2015-10-12 17:36:03', '1');
INSERT INTO `log` VALUES ('2199', 'admin', 'Recommend', 'edit', '/index.php/Admin/Recommend/edit.html', '1', '127.0.0.1', '2015-10-12 17:36:06', '1');
INSERT INTO `log` VALUES ('2200', 'admin', 'Recommend', 'Index', '/index.php/Admin/Recommend/Index.html', '1', '127.0.0.1', '2015-10-12 17:36:08', '1');
INSERT INTO `log` VALUES ('2201', 'admin', 'Recommend', 'Edit', '/index.php/Admin/Recommend/Edit.html', '1', '127.0.0.1', '2015-10-12 17:36:13', '1');
INSERT INTO `log` VALUES ('2202', 'admin', 'Recommend', 'Index', '/index.php/Admin/Recommend/Index.html', '1', '127.0.0.1', '2015-10-12 17:36:17', '1');
INSERT INTO `log` VALUES ('2203', 'admin', 'Recommend', 'edit', '/index.php/Admin/Recommend/edit.html', '1', '127.0.0.1', '2015-10-12 17:36:19', '1');
INSERT INTO `log` VALUES ('2204', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-12 17:36:24', '1');
INSERT INTO `log` VALUES ('2205', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 17:36:27', '1');
INSERT INTO `log` VALUES ('2206', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 17:36:30', '1');
INSERT INTO `log` VALUES ('2207', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 17:36:32', '1');
INSERT INTO `log` VALUES ('2208', 'admin', 'Recommend', 'Index', '/index.php/Admin/Recommend/Index.html', '1', '127.0.0.1', '2015-10-12 17:39:07', '1');
INSERT INTO `log` VALUES ('2209', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 17:39:08', '1');
INSERT INTO `log` VALUES ('2210', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 17:39:10', '1');
INSERT INTO `log` VALUES ('2211', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 17:42:45', '1');
INSERT INTO `log` VALUES ('2212', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-12 17:45:49', '1');
INSERT INTO `log` VALUES ('2213', 'admin', 'Recommend', 'Index', '/index.php/Admin/Recommend/Index.html', '1', '127.0.0.1', '2015-10-12 17:46:04', '1');
INSERT INTO `log` VALUES ('2214', 'admin', 'Recommend', 'Index', '/index.php/Admin/Recommend/Index.html', '1', '127.0.0.1', '2015-10-12 17:46:05', '1');
INSERT INTO `log` VALUES ('2215', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 17:46:07', '1');
INSERT INTO `log` VALUES ('2216', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 17:46:32', '1');
INSERT INTO `log` VALUES ('2217', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 17:46:33', '1');
INSERT INTO `log` VALUES ('2218', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 17:46:36', '1');
INSERT INTO `log` VALUES ('2219', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 17:54:27', '1');
INSERT INTO `log` VALUES ('2220', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 17:54:29', '1');
INSERT INTO `log` VALUES ('2221', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-12 17:54:32', '1');
INSERT INTO `log` VALUES ('2222', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 17:54:34', '1');
INSERT INTO `log` VALUES ('2223', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 17:54:36', '1');
INSERT INTO `log` VALUES ('2224', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 17:54:58', '1');
INSERT INTO `log` VALUES ('2225', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 17:55:26', '1');
INSERT INTO `log` VALUES ('2226', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 18:05:31', '1');
INSERT INTO `log` VALUES ('2227', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 18:17:15', '1');
INSERT INTO `log` VALUES ('2228', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 18:19:11', '1');
INSERT INTO `log` VALUES ('2229', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-12 18:19:15', '1');
INSERT INTO `log` VALUES ('2230', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-12 18:19:19', '1');
INSERT INTO `log` VALUES ('2231', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 18:19:20', '1');
INSERT INTO `log` VALUES ('2232', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-12 18:19:53', '1');
INSERT INTO `log` VALUES ('2233', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-13 10:14:31', '1');
INSERT INTO `log` VALUES ('2234', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 10:14:34', '1');
INSERT INTO `log` VALUES ('2235', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-13 10:14:36', '1');
INSERT INTO `log` VALUES ('2236', 'admin', 'Recommend', 'Index', '/index.php/Admin/Recommend/Index.html', '1', '127.0.0.1', '2015-10-13 10:14:38', '1');
INSERT INTO `log` VALUES ('2237', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-13 10:14:40', '1');
INSERT INTO `log` VALUES ('2238', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-13 10:17:24', '1');
INSERT INTO `log` VALUES ('2239', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 10:17:26', '1');
INSERT INTO `log` VALUES ('2240', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-13 10:17:28', '1');
INSERT INTO `log` VALUES ('2241', 'admin', 'Recommend', 'Index', '/index.php/Admin/Recommend/Index.html', '1', '127.0.0.1', '2015-10-13 10:17:30', '1');
INSERT INTO `log` VALUES ('2242', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-13 10:17:32', '1');
INSERT INTO `log` VALUES ('2243', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-13 10:17:33', '1');
INSERT INTO `log` VALUES ('2244', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-13 10:17:43', '1');
INSERT INTO `log` VALUES ('2245', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-13 10:17:47', '1');
INSERT INTO `log` VALUES ('2246', 'admin', 'Channel', 'Edit', '/index.php/Admin/Channel/Edit.html', '1', '127.0.0.1', '2015-10-13 10:18:05', '1');
INSERT INTO `log` VALUES ('2247', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-13 10:18:07', '1');
INSERT INTO `log` VALUES ('2248', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-13 10:18:22', '1');
INSERT INTO `log` VALUES ('2249', 'admin', 'Channel', 'Edit', '/index.php/Admin/Channel/Edit.html', '1', '127.0.0.1', '2015-10-13 10:18:34', '1');
INSERT INTO `log` VALUES ('2250', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-13 10:18:36', '1');
INSERT INTO `log` VALUES ('2251', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-13 10:19:06', '1');
INSERT INTO `log` VALUES ('2252', 'admin', 'Channel', 'Edit', '/index.php/Admin/Channel/Edit.html', '1', '127.0.0.1', '2015-10-13 10:19:11', '1');
INSERT INTO `log` VALUES ('2253', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-13 10:19:13', '1');
INSERT INTO `log` VALUES ('2254', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-13 10:19:17', '1');
INSERT INTO `log` VALUES ('2255', 'admin', 'Channel', 'Edit', '/index.php/Admin/Channel/Edit.html', '1', '127.0.0.1', '2015-10-13 10:19:24', '1');
INSERT INTO `log` VALUES ('2256', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-13 10:19:26', '1');
INSERT INTO `log` VALUES ('2257', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-13 10:19:31', '1');
INSERT INTO `log` VALUES ('2258', 'admin', 'Channel', 'Edit', '/index.php/Admin/Channel/Edit.html', '1', '127.0.0.1', '2015-10-13 10:19:36', '1');
INSERT INTO `log` VALUES ('2259', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-13 10:19:38', '1');
INSERT INTO `log` VALUES ('2260', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 10:19:40', '1');
INSERT INTO `log` VALUES ('2261', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-13 10:19:45', '1');
INSERT INTO `log` VALUES ('2262', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-13 10:19:54', '1');
INSERT INTO `log` VALUES ('2263', 'admin', 'Channel', 'Edit', '/index.php/Admin/Channel/Edit.html', '1', '127.0.0.1', '2015-10-13 10:20:06', '1');
INSERT INTO `log` VALUES ('2264', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-13 10:20:08', '1');
INSERT INTO `log` VALUES ('2265', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-13 10:20:12', '1');
INSERT INTO `log` VALUES ('2266', 'admin', 'Channel', 'Edit', '/index.php/Admin/Channel/Edit.html', '1', '127.0.0.1', '2015-10-13 10:20:19', '1');
INSERT INTO `log` VALUES ('2267', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-13 10:20:22', '1');
INSERT INTO `log` VALUES ('2268', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-13 10:20:25', '1');
INSERT INTO `log` VALUES ('2269', 'admin', 'Channel', 'Edit', '/index.php/Admin/Channel/Edit.html', '1', '127.0.0.1', '2015-10-13 10:20:29', '1');
INSERT INTO `log` VALUES ('2270', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-13 10:20:31', '1');
INSERT INTO `log` VALUES ('2271', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-13 10:20:41', '1');
INSERT INTO `log` VALUES ('2272', 'admin', 'Channel', 'Edit', '/index.php/Admin/Channel/Edit.html', '1', '127.0.0.1', '2015-10-13 10:20:52', '1');
INSERT INTO `log` VALUES ('2273', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-13 10:20:54', '1');
INSERT INTO `log` VALUES ('2274', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-13 10:20:59', '1');
INSERT INTO `log` VALUES ('2275', 'admin', 'Channel', 'Edit', '/index.php/Admin/Channel/Edit.html', '1', '127.0.0.1', '2015-10-13 10:21:14', '1');
INSERT INTO `log` VALUES ('2276', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-13 10:21:16', '1');
INSERT INTO `log` VALUES ('2277', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-13 10:21:20', '1');
INSERT INTO `log` VALUES ('2278', 'admin', 'Channel', 'Edit', '/index.php/Admin/Channel/Edit.html', '1', '127.0.0.1', '2015-10-13 10:21:28', '1');
INSERT INTO `log` VALUES ('2279', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-13 10:21:30', '1');
INSERT INTO `log` VALUES ('2280', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 10:21:31', '1');
INSERT INTO `log` VALUES ('2281', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-13 10:21:34', '1');
INSERT INTO `log` VALUES ('2282', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 10:21:35', '1');
INSERT INTO `log` VALUES ('2283', 'admin', 'Product', 'Index', '/index.php/Admin/Product/Index.html', '1', '127.0.0.1', '2015-10-13 10:21:38', '1');
INSERT INTO `log` VALUES ('2284', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 10:21:40', '1');
INSERT INTO `log` VALUES ('2285', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-13 10:21:41', '1');
INSERT INTO `log` VALUES ('2286', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 10:21:44', '1');
INSERT INTO `log` VALUES ('2287', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-13 10:21:47', '1');
INSERT INTO `log` VALUES ('2288', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-13 10:22:30', '1');
INSERT INTO `log` VALUES ('2289', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 10:33:50', '1');
INSERT INTO `log` VALUES ('2290', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 10:34:22', '1');
INSERT INTO `log` VALUES ('2291', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-13 10:34:28', '1');
INSERT INTO `log` VALUES ('2292', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-10-13 10:54:12', '1');
INSERT INTO `log` VALUES ('2293', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-13 10:54:16', '1');
INSERT INTO `log` VALUES ('2294', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-13 10:54:19', '1');
INSERT INTO `log` VALUES ('2295', 'admin', 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-10-13 10:54:22', '1');
INSERT INTO `log` VALUES ('2296', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-13 10:54:31', '1');
INSERT INTO `log` VALUES ('2297', 'admin', 'Model', 'Edit', '/index.php/Admin/Model/Edit.html', '1', '127.0.0.1', '2015-10-13 10:54:35', '1');
INSERT INTO `log` VALUES ('2298', 'admin', 'Model', 'Edit', '/index.php/Admin/Model/Edit.html', '1', '127.0.0.1', '2015-10-13 10:54:39', '1');
INSERT INTO `log` VALUES ('2299', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-13 10:54:41', '1');
INSERT INTO `log` VALUES ('2300', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 11:37:40', '1');
INSERT INTO `log` VALUES ('2301', 'admin', 'UserInfo', 'UserData', '/index.php/Admin/UserInfo/UserData.html', '1', '127.0.0.1', '2015-10-13 11:37:50', '1');
INSERT INTO `log` VALUES ('2302', 'admin', 'UserInfo', 'PassWord', '/index.php/Admin/UserInfo/PassWord.html', '1', '127.0.0.1', '2015-10-13 11:37:53', '1');
INSERT INTO `log` VALUES ('2303', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-13 11:37:57', '1');
INSERT INTO `log` VALUES ('2304', 'admin', 'Recommend', 'Index', '/index.php/Admin/Recommend/Index.html', '1', '127.0.0.1', '2015-10-13 11:37:59', '1');
INSERT INTO `log` VALUES ('2305', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 11:41:24', '1');
INSERT INTO `log` VALUES ('2306', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-13 11:41:27', '1');
INSERT INTO `log` VALUES ('2307', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 11:41:35', '1');
INSERT INTO `log` VALUES ('2308', 'admin', 'Article', 'del', '/index.php/Admin/Article/del.html', '1', '127.0.0.1', '2015-10-13 11:41:38', '1');
INSERT INTO `log` VALUES ('2309', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 11:41:40', '1');
INSERT INTO `log` VALUES ('2310', 'admin', 'Article', 'del', '/index.php/Admin/Article/del.html', '1', '127.0.0.1', '2015-10-13 11:41:42', '1');
INSERT INTO `log` VALUES ('2311', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 11:41:44', '1');
INSERT INTO `log` VALUES ('2312', 'admin', 'Article', 'del', '/index.php/Admin/Article/del.html', '1', '127.0.0.1', '2015-10-13 11:41:46', '1');
INSERT INTO `log` VALUES ('2313', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 11:41:48', '1');
INSERT INTO `log` VALUES ('2314', 'admin', 'Article', 'del', '/index.php/Admin/Article/del.html', '1', '127.0.0.1', '2015-10-13 11:41:50', '1');
INSERT INTO `log` VALUES ('2315', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 11:41:52', '1');
INSERT INTO `log` VALUES ('2316', 'admin', 'Article', 'del', '/index.php/Admin/Article/del.html', '1', '127.0.0.1', '2015-10-13 11:41:53', '1');
INSERT INTO `log` VALUES ('2317', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 11:41:56', '1');
INSERT INTO `log` VALUES ('2318', 'admin', 'Article', 'del', '/index.php/Admin/Article/del.html', '1', '127.0.0.1', '2015-10-13 11:41:57', '1');
INSERT INTO `log` VALUES ('2319', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 11:41:59', '1');
INSERT INTO `log` VALUES ('2320', 'admin', 'Article', 'del', '/index.php/Admin/Article/del.html', '1', '127.0.0.1', '2015-10-13 11:42:01', '1');
INSERT INTO `log` VALUES ('2321', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 11:42:03', '1');
INSERT INTO `log` VALUES ('2322', 'admin', 'Article', 'del', '/index.php/Admin/Article/del.html', '1', '127.0.0.1', '2015-10-13 11:42:05', '1');
INSERT INTO `log` VALUES ('2323', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 11:42:07', '1');
INSERT INTO `log` VALUES ('2324', 'admin', 'Article', 'del', '/index.php/Admin/Article/del.html', '1', '127.0.0.1', '2015-10-13 11:53:19', '1');
INSERT INTO `log` VALUES ('2325', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 11:53:21', '1');
INSERT INTO `log` VALUES ('2326', 'admin', 'Article', 'del', '/index.php/Admin/Article/del.html', '1', '127.0.0.1', '2015-10-13 11:53:25', '1');
INSERT INTO `log` VALUES ('2327', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 11:53:27', '1');
INSERT INTO `log` VALUES ('2328', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 11:54:02', '1');
INSERT INTO `log` VALUES ('2329', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-13 11:54:04', '1');
INSERT INTO `log` VALUES ('2330', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 11:54:06', '1');
INSERT INTO `log` VALUES ('2331', 'admin', 'Recommend', 'Index', '/index.php/Admin/Recommend/Index.html', '1', '127.0.0.1', '2015-10-13 11:54:08', '1');
INSERT INTO `log` VALUES ('2332', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-13 11:54:10', '1');
INSERT INTO `log` VALUES ('2333', 'admin', 'Recommend', 'Index', '/index.php/Admin/Recommend/Index.html', '1', '127.0.0.1', '2015-10-13 11:54:13', '1');
INSERT INTO `log` VALUES ('2334', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-13 11:54:14', '1');
INSERT INTO `log` VALUES ('2335', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 11:54:16', '1');
INSERT INTO `log` VALUES ('2336', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-13 11:54:18', '1');
INSERT INTO `log` VALUES ('2337', 'admin', 'Article', 'Edit', '/index.php/Admin/Article/Edit.html', '1', '127.0.0.1', '2015-10-13 11:54:42', '1');
INSERT INTO `log` VALUES ('2338', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 11:54:44', '1');
INSERT INTO `log` VALUES ('2339', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 11:54:46', '1');
INSERT INTO `log` VALUES ('2340', 'admin', 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-10-13 11:57:54', '1');
INSERT INTO `log` VALUES ('2341', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 11:58:28', '1');
INSERT INTO `log` VALUES ('2342', 'admin', 'Article', 'del', '/index.php/Admin/Article/del.html', '1', '127.0.0.1', '2015-10-13 11:58:33', '1');
INSERT INTO `log` VALUES ('2343', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 11:58:36', '1');
INSERT INTO `log` VALUES ('2344', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-13 11:59:20', '1');
INSERT INTO `log` VALUES ('2345', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-13 11:59:30', '1');
INSERT INTO `log` VALUES ('2346', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 12:00:08', '1');
INSERT INTO `log` VALUES ('2347', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-13 12:00:11', '1');
INSERT INTO `log` VALUES ('2348', 'admin', 'Article', 'Edit', '/index.php/Admin/Article/Edit.html', '1', '127.0.0.1', '2015-10-13 12:00:29', '1');
INSERT INTO `log` VALUES ('2349', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 12:00:31', '1');
INSERT INTO `log` VALUES ('2350', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-13 15:12:26', '1');
INSERT INTO `log` VALUES ('2351', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 15:12:28', '1');
INSERT INTO `log` VALUES ('2352', 'admin', 'Recommend', 'Index', '/index.php/Admin/Recommend/Index.html', '1', '127.0.0.1', '2015-10-13 15:12:29', '1');
INSERT INTO `log` VALUES ('2353', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-13 15:12:31', '1');
INSERT INTO `log` VALUES ('2354', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-10-13 15:12:46', '1');
INSERT INTO `log` VALUES ('2355', 'admin', 'Log', 'Index', '/index.php/Admin/Log/Index.html', '1', '127.0.0.1', '2015-10-13 15:12:48', '1');
INSERT INTO `log` VALUES ('2356', 'admin', 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-10-13 15:12:49', '1');
INSERT INTO `log` VALUES ('2357', 'admin', 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-10-13 15:12:50', '1');
INSERT INTO `log` VALUES ('2358', 'admin', 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-10-13 15:12:51', '1');
INSERT INTO `log` VALUES ('2359', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-10-13 15:12:52', '1');
INSERT INTO `log` VALUES ('2360', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 15:32:14', '1');
INSERT INTO `log` VALUES ('2361', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-13 15:32:18', '1');
INSERT INTO `log` VALUES ('2362', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-13 15:38:53', '1');
INSERT INTO `log` VALUES ('2363', 'admin', 'UserInfo', 'Index', '/index.php/Admin/UserInfo/Index.html', '1', '127.0.0.1', '2015-10-13 15:43:20', '1');
INSERT INTO `log` VALUES ('2364', 'admin', 'UserInfo', 'UserData', '/index.php/Admin/UserInfo/UserData.html', '1', '127.0.0.1', '2015-10-13 15:43:22', '1');
INSERT INTO `log` VALUES ('2365', 'admin', 'UserInfo', 'UserData', '/index.php/Admin/UserInfo/UserData.html', '1', '127.0.0.1', '2015-10-13 15:43:29', '1');
INSERT INTO `log` VALUES ('2366', 'admin', 'UserInfo', 'PassWord', '/index.php/Admin/UserInfo/PassWord.html', '1', '127.0.0.1', '2015-10-13 15:43:31', '1');
INSERT INTO `log` VALUES ('2367', 'admin', 'UserInfo', 'Index', '/index.php/Admin/UserInfo/Index.html', '1', '127.0.0.1', '2015-10-13 15:48:38', '1');
INSERT INTO `log` VALUES ('2368', 'admin', 'UserInfo', 'UserData', '/index.php/Admin/UserInfo/UserData.html', '1', '127.0.0.1', '2015-10-13 15:48:39', '1');
INSERT INTO `log` VALUES ('2369', 'admin', 'UserInfo', 'PassWord', '/index.php/Admin/UserInfo/PassWord.html', '1', '127.0.0.1', '2015-10-13 15:48:40', '1');
INSERT INTO `log` VALUES ('2370', 'admin', 'UserInfo', 'UserData', '/index.php/Admin/UserInfo/UserData.html', '1', '127.0.0.1', '2015-10-13 15:58:38', '1');
INSERT INTO `log` VALUES ('2371', 'admin', 'UserInfo', 'UserData', '/index.php/Admin/UserInfo/UserData.html', '1', '127.0.0.1', '2015-10-13 16:10:56', '1');
INSERT INTO `log` VALUES ('2372', 'admin', 'UserInfo', 'PassWord', '/index.php/Admin/UserInfo/PassWord.html', '1', '127.0.0.1', '2015-10-13 16:10:59', '1');
INSERT INTO `log` VALUES ('2373', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-10-13 16:20:44', '1');
INSERT INTO `log` VALUES ('2374', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-13 16:21:06', '1');
INSERT INTO `log` VALUES ('2375', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-13 16:21:12', '1');
INSERT INTO `log` VALUES ('2376', 'admin', 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-10-13 16:21:14', '1');
INSERT INTO `log` VALUES ('2377', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-13 16:21:28', '1');
INSERT INTO `log` VALUES ('2378', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-13 16:21:33', '1');
INSERT INTO `log` VALUES ('2379', 'admin', 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-10-13 16:21:35', '1');
INSERT INTO `log` VALUES ('2380', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-13 16:21:40', '1');
INSERT INTO `log` VALUES ('2381', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-13 16:21:44', '1');
INSERT INTO `log` VALUES ('2382', 'admin', 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-10-13 16:21:46', '1');
INSERT INTO `log` VALUES ('2383', 'admin', 'User', 'UserData', '/index.php/Admin/User/UserData.html', '1', '127.0.0.1', '2015-10-13 16:22:17', '1');
INSERT INTO `log` VALUES ('2384', 'admin', 'User', 'UserData', '/index.php/Admin/User/UserData.html', '1', '127.0.0.1', '2015-10-13 16:24:27', '1');
INSERT INTO `log` VALUES ('2385', 'admin', 'User', 'PassWord', '/index.php/Admin/User/PassWord.html', '1', '127.0.0.1', '2015-10-13 16:24:30', '1');
INSERT INTO `log` VALUES ('2386', 'admin', 'User', 'UserData', '/index.php/Admin/User/UserData.html', '1', '127.0.0.1', '2015-10-13 16:30:55', '1');
INSERT INTO `log` VALUES ('2387', 'admin', 'User', 'UserData', '/index.php/Admin/User/UserData.html', '1', '127.0.0.1', '2015-10-13 16:31:44', '1');
INSERT INTO `log` VALUES ('2388', 'admin', 'User', 'UserData', '/index.php/Admin/User/UserData.html', '1', '127.0.0.1', '2015-10-13 16:32:09', '1');
INSERT INTO `log` VALUES ('2389', 'admin', 'User', 'UserData', '/index.php/Admin/User/UserData.html', '1', '127.0.0.1', '2015-10-13 16:32:28', '1');
INSERT INTO `log` VALUES ('2390', 'admin', 'User', 'UserData', '/index.php/Admin/User/UserData.html', '1', '127.0.0.1', '2015-10-13 16:33:27', '1');
INSERT INTO `log` VALUES ('2391', 'admin', 'User', 'UserData', '/index.php/Admin/User/UserData.html', '1', '127.0.0.1', '2015-10-13 16:38:35', '1');
INSERT INTO `log` VALUES ('2392', 'admin', 'User', 'edit', '/index.php/Admin/User/edit.html', '1', '127.0.0.1', '2015-10-13 16:38:57', '1');
INSERT INTO `log` VALUES ('2393', 'admin', 'User', 'index', '/index.php/Admin/User/index.html', '1', '127.0.0.1', '2015-10-13 16:38:59', '1');
INSERT INTO `log` VALUES ('2394', 'admin', 'User', 'UserData', '/index.php/Admin/User/UserData.html', '1', '127.0.0.1', '2015-10-13 16:39:02', '1');
INSERT INTO `log` VALUES ('2395', 'admin', 'User', 'UserData', '/index.php/Admin/User/UserData.html', '1', '127.0.0.1', '2015-10-13 16:41:46', '1');
INSERT INTO `log` VALUES ('2396', 'admin', 'User', 'UserData', '/index.php/Admin/User/UserData.html', '1', '127.0.0.1', '2015-10-13 16:42:12', '1');
INSERT INTO `log` VALUES ('2397', 'admin', 'User', 'UserData', '/index.php/Admin/User/UserData.html', '1', '127.0.0.1', '2015-10-13 16:45:09', '1');
INSERT INTO `log` VALUES ('2398', 'admin', 'User', 'edit', '/index.php/Admin/User/edit.html', '1', '127.0.0.1', '2015-10-13 16:45:33', '1');
INSERT INTO `log` VALUES ('2399', 'admin', 'User', 'index', '/index.php/Admin/User/index.html', '1', '127.0.0.1', '2015-10-13 16:45:35', '1');
INSERT INTO `log` VALUES ('2400', 'admin', 'User', 'Edit', '/index.php/Admin/User/Edit.html', '1', '127.0.0.1', '2015-10-13 16:45:38', '1');
INSERT INTO `log` VALUES ('2401', 'admin', 'User', 'PassWord', '/index.php/Admin/User/PassWord.html', '1', '127.0.0.1', '2015-10-13 16:54:10', '1');
INSERT INTO `log` VALUES ('2402', 'admin', 'User', 'UserData', '/index.php/Admin/User/UserData.html', '1', '127.0.0.1', '2015-10-13 16:54:11', '1');
INSERT INTO `log` VALUES ('2403', 'admin', 'User', 'UserData', '/index.php/Admin/User/UserData.html', '1', '127.0.0.1', '2015-10-13 16:54:27', '1');
INSERT INTO `log` VALUES ('2404', 'admin', 'User', 'UserData', '/index.php/Admin/User/UserData.html', '1', '127.0.0.1', '2015-10-13 16:54:46', '1');
INSERT INTO `log` VALUES ('2405', 'admin', 'User', 'userData', '/index.php/Admin/User/userData.html', '1', '127.0.0.1', '2015-10-13 16:54:51', '1');
INSERT INTO `log` VALUES ('2406', 'admin', 'User', 'UserData', '/index.php/Admin/User/UserData.html', '1', '127.0.0.1', '2015-10-13 16:54:58', '1');
INSERT INTO `log` VALUES ('2407', 'admin', 'User', 'userData', '/index.php/Admin/User/userData.html', '1', '127.0.0.1', '2015-10-13 16:56:21', '1');
INSERT INTO `log` VALUES ('2408', 'admin', 'User', 'UserData', '/index.php/Admin/User/UserData.html', '1', '127.0.0.1', '2015-10-13 16:58:08', '1');
INSERT INTO `log` VALUES ('2409', 'admin', 'User', 'userData', '/index.php/Admin/User/userData.html', '1', '127.0.0.1', '2015-10-13 16:58:12', '1');
INSERT INTO `log` VALUES ('2410', 'admin', 'User', 'UserData', '/index.php/Admin/User/UserData.html', '1', '127.0.0.1', '2015-10-13 16:58:30', '1');
INSERT INTO `log` VALUES ('2411', 'admin', 'User', 'userData', '/index.php/Admin/User/userData.html', '1', '127.0.0.1', '2015-10-13 16:58:34', '1');
INSERT INTO `log` VALUES ('2412', 'admin', 'User', 'userData', '/index.php/Admin/User/userData.html', '1', '127.0.0.1', '2015-10-13 17:06:08', '1');
INSERT INTO `log` VALUES ('2413', 'admin', 'User', 'UserData', '/index.php/Admin/User/UserData.html', '1', '127.0.0.1', '2015-10-13 17:08:11', '1');
INSERT INTO `log` VALUES ('2414', 'admin', 'User', 'userData', '/index.php/Admin/User/userData.html', '1', '127.0.0.1', '2015-10-13 17:08:13', '1');
INSERT INTO `log` VALUES ('2415', 'admin', 'User', 'UserData', '/index.php/Admin/User/UserData.html', '1', '127.0.0.1', '2015-10-13 17:08:35', '1');
INSERT INTO `log` VALUES ('2416', 'admin', 'User', 'userData', '/index.php/Admin/User/userData.html', '1', '127.0.0.1', '2015-10-13 17:09:12', '1');
INSERT INTO `log` VALUES ('2417', 'admin', 'User', 'userData', '/index.php/Admin/User/userData.html', '1', '127.0.0.1', '2015-10-13 17:09:14', '1');
INSERT INTO `log` VALUES ('2418', 'admin', 'User', 'PassWord', '/index.php/Admin/User/PassWord.html', '1', '127.0.0.1', '2015-10-13 17:09:23', '1');
INSERT INTO `log` VALUES ('2419', 'admin', 'User', 'PassWord', '/index.php/Admin/User/PassWord.html', '1', '127.0.0.1', '2015-10-13 17:14:22', '1');
INSERT INTO `log` VALUES ('2420', 'admin', 'User', 'PassWord', '/index.php/Admin/User/PassWord.html', '1', '127.0.0.1', '2015-10-13 17:14:24', '1');
INSERT INTO `log` VALUES ('2421', 'admin', 'User', 'PassWord', '/index.php/Admin/User/PassWord.html', '1', '127.0.0.1', '2015-10-13 17:16:25', '1');
INSERT INTO `log` VALUES ('2422', 'admin', 'User', 'PassWord', '/index.php/Admin/User/PassWord.html', '1', '127.0.0.1', '2015-10-13 17:17:23', '1');
INSERT INTO `log` VALUES ('2423', 'admin', 'User', 'PassWord', '/index.php/Admin/User/PassWord.html', '1', '127.0.0.1', '2015-10-13 17:20:36', '1');
INSERT INTO `log` VALUES ('2424', 'admin', 'User', 'passWord', '/index.php/Admin/User/passWord.html', '1', '127.0.0.1', '2015-10-13 17:20:39', '1');
INSERT INTO `log` VALUES ('2425', 'admin', 'User', 'UserData', '/index.php/Admin/User/UserData.html', '1', '127.0.0.1', '2015-10-13 17:24:28', '1');
INSERT INTO `log` VALUES ('2426', 'admin', 'User', 'UserData', '/index.php/Admin/User/UserData.html', '1', '127.0.0.1', '2015-10-13 17:24:31', '1');
INSERT INTO `log` VALUES ('2427', 'admin', 'User', 'PassWord', '/index.php/Admin/User/PassWord.html', '1', '127.0.0.1', '2015-10-13 17:24:33', '1');
INSERT INTO `log` VALUES ('2428', 'admin', 'User', 'passWord', '/index.php/Admin/User/passWord.html', '1', '127.0.0.1', '2015-10-13 17:24:37', '1');
INSERT INTO `log` VALUES ('2429', 'admin', 'User', 'PassWord', '/index.php/Admin/User/PassWord.html', '1', '127.0.0.1', '2015-10-13 17:35:12', '1');
INSERT INTO `log` VALUES ('2430', 'admin', 'User', 'passWord', '/index.php/Admin/User/passWord.html', '1', '127.0.0.1', '2015-10-13 17:35:22', '1');
INSERT INTO `log` VALUES ('2431', 'admin', 'User', 'passWord', '/index.php/Admin/User/passWord.html', '1', '127.0.0.1', '2015-10-13 17:35:31', '1');
INSERT INTO `log` VALUES ('2432', 'admin', 'User', 'PassWord', '/index.php/Admin/User/PassWord.html', '1', '127.0.0.1', '2015-10-13 17:35:45', '1');
INSERT INTO `log` VALUES ('2433', 'admin', 'User', 'PassWord', '/index.php/Admin/User/PassWord.html', '1', '127.0.0.1', '2015-10-13 17:49:51', '1');
INSERT INTO `log` VALUES ('2434', 'admin', 'User', 'passWord', '/index.php/Admin/User/passWord.html', '1', '127.0.0.1', '2015-10-13 17:49:57', '1');
INSERT INTO `log` VALUES ('2435', 'admin', 'User', 'passWord', '/index.php/Admin/User/passWord.html', '1', '127.0.0.1', '2015-10-13 17:51:04', '1');
INSERT INTO `log` VALUES ('2436', 'admin', 'User', 'passWord', '/index.php/Admin/User/passWord.html', '1', '127.0.0.1', '2015-10-13 17:51:21', '1');
INSERT INTO `log` VALUES ('2437', 'admin', 'User', 'passWord', '/index.php/Admin/User/passWord.html', '1', '127.0.0.1', '2015-10-13 17:51:29', '1');
INSERT INTO `log` VALUES ('2438', 'admin', 'User', 'PassWord', '/index.php/Admin/User/PassWord.html', '1', '127.0.0.1', '2015-10-13 17:52:39', '1');
INSERT INTO `log` VALUES ('2439', 'admin', 'User', 'passWord', '/index.php/Admin/User/passWord.html', '1', '127.0.0.1', '2015-10-13 17:52:41', '1');
INSERT INTO `log` VALUES ('2440', 'admin', 'User', 'passWord', '/index.php/Admin/User/passWord.html', '1', '127.0.0.1', '2015-10-13 17:52:47', '1');
INSERT INTO `log` VALUES ('2441', 'admin', 'User', 'passWord', '/index.php/Admin/User/passWord.html', '1', '127.0.0.1', '2015-10-13 17:52:55', '1');
INSERT INTO `log` VALUES ('2442', 'admin', 'User', 'PassWord', '/index.php/Admin/User/PassWord.html', '1', '127.0.0.1', '2015-10-13 17:53:46', '1');
INSERT INTO `log` VALUES ('2443', 'admin', 'User', 'passWord', '/index.php/Admin/User/passWord.html', '1', '127.0.0.1', '2015-10-13 17:53:51', '1');
INSERT INTO `log` VALUES ('2444', 'admin', 'User', 'passWord', '/index.php/Admin/User/passWord.html', '1', '127.0.0.1', '2015-10-13 17:54:38', '1');
INSERT INTO `log` VALUES ('2445', 'admin', 'User', 'PassWord', '/index.php/Admin/User/PassWord.html', '1', '127.0.0.1', '2015-10-13 17:55:43', '1');
INSERT INTO `log` VALUES ('2446', 'admin', 'User', 'passWord', '/index.php/Admin/User/passWord.html', '1', '127.0.0.1', '2015-10-13 17:55:45', '1');
INSERT INTO `log` VALUES ('2447', 'admin', 'User', 'PassWord', '/index.php/Admin/User/PassWord.html', '1', '127.0.0.1', '2015-10-13 17:59:25', '1');
INSERT INTO `log` VALUES ('2448', 'admin', 'User', 'passWord', '/index.php/Admin/User/passWord.html', '1', '127.0.0.1', '2015-10-13 17:59:30', '1');
INSERT INTO `log` VALUES ('2449', 'admin', 'User', 'PassWord', '/index.php/Admin/User/PassWord.html', '1', '127.0.0.1', '2015-10-13 17:59:46', '1');
INSERT INTO `log` VALUES ('2450', 'admin', 'User', 'UserData', '/index.php/Admin/User/UserData.html', '1', '127.0.0.1', '2015-10-13 17:59:48', '1');
INSERT INTO `log` VALUES ('2451', 'admin', 'User', 'UserData', '/index.php/Admin/User/UserData.html', '1', '127.0.0.1', '2015-10-13 17:59:56', '1');
INSERT INTO `log` VALUES ('2452', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-10-13 18:09:10', '1');
INSERT INTO `log` VALUES ('2453', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-13 18:09:17', '1');
INSERT INTO `log` VALUES ('2454', 'admin', 'Menu', 'edit', '/index.php/Admin/Menu/edit.html', '1', '127.0.0.1', '2015-10-13 18:09:26', '1');
INSERT INTO `log` VALUES ('2455', 'admin', 'Menu', 'index', '/index.php/Admin/Menu/index.html', '1', '127.0.0.1', '2015-10-13 18:09:28', '1');
INSERT INTO `log` VALUES ('2456', 'admin', 'User', 'Main', '/index.php/Admin/User/Main.html', '1', '127.0.0.1', '2015-10-13 18:09:32', '1');
INSERT INTO `log` VALUES ('2457', 'admin', 'User', 'Main', '/index.php/Admin/User/Main.html', '1', '127.0.0.1', '2015-10-13 18:18:16', '1');
INSERT INTO `log` VALUES ('2458', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('2459', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-10-14 12:46:43', '1');
INSERT INTO `log` VALUES ('2460', 'admin', 'User', 'Index', '/index.php/Admin/User/Index.html', '1', '127.0.0.1', '2015-10-14 12:55:22', '1');
INSERT INTO `log` VALUES ('2461', 'admin', 'Auth', 'Index', '/index.php/Admin/Auth/Index.html', '1', '127.0.0.1', '2015-10-14 12:55:24', '1');
INSERT INTO `log` VALUES ('2462', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('2463', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('2464', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 13:02:45', '1');
INSERT INTO `log` VALUES ('2465', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-19 13:02:48', '1');
INSERT INTO `log` VALUES ('2466', 'admin', 'Recommend', 'Index', '/index.php/Admin/Recommend/Index.html', '1', '127.0.0.1', '2015-10-19 13:02:50', '1');
INSERT INTO `log` VALUES ('2467', 'admin', 'Recommend', 'Index', '/index.php/Admin/Recommend/Index.html', '1', '127.0.0.1', '2015-10-19 13:02:51', '1');
INSERT INTO `log` VALUES ('2468', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-19 13:02:53', '1');
INSERT INTO `log` VALUES ('2469', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-19 13:02:56', '1');
INSERT INTO `log` VALUES ('2470', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 13:03:04', '1');
INSERT INTO `log` VALUES ('2471', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-19 13:03:07', '1');
INSERT INTO `log` VALUES ('2472', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 13:03:41', '1');
INSERT INTO `log` VALUES ('2473', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-19 13:03:42', '1');
INSERT INTO `log` VALUES ('2474', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-19 13:03:44', '1');
INSERT INTO `log` VALUES ('2475', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 13:03:45', '1');
INSERT INTO `log` VALUES ('2476', 'admin', 'Menu', 'Index', '/index.php/Admin/Menu/Index.html', '1', '127.0.0.1', '2015-10-19 13:33:10', '1');
INSERT INTO `log` VALUES ('2477', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-10-19 13:47:59', '1');
INSERT INTO `log` VALUES ('2478', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-10-19 13:48:00', '1');
INSERT INTO `log` VALUES ('2479', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-10-19 13:48:02', '1');
INSERT INTO `log` VALUES ('2480', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-10-19 13:48:03', '1');
INSERT INTO `log` VALUES ('2481', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-10-19 13:48:53', '1');
INSERT INTO `log` VALUES ('2482', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-10-19 13:48:54', '1');
INSERT INTO `log` VALUES ('2483', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-10-19 13:48:55', '1');
INSERT INTO `log` VALUES ('2484', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-10-19 13:48:56', '1');
INSERT INTO `log` VALUES ('2485', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-10-19 13:49:04', '1');
INSERT INTO `log` VALUES ('2486', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-10-19 13:49:05', '1');
INSERT INTO `log` VALUES ('2487', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-10-19 13:49:06', '1');
INSERT INTO `log` VALUES ('2488', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-10-19 13:49:07', '1');
INSERT INTO `log` VALUES ('2489', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-10-19 13:49:08', '1');
INSERT INTO `log` VALUES ('2490', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-10-19 13:49:09', '1');
INSERT INTO `log` VALUES ('2491', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-10-19 13:49:10', '1');
INSERT INTO `log` VALUES ('2492', 'admin', 'Cache', 'Index', '/index.php/Admin/Cache/Index.html', '1', '127.0.0.1', '2015-10-19 13:49:11', '1');
INSERT INTO `log` VALUES ('2493', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 13:54:03', '1');
INSERT INTO `log` VALUES ('2494', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('2495', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('2496', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 16:43:14', '1');
INSERT INTO `log` VALUES ('2497', 'admin', 'Model', 'Index', '/index.php/Admin/Model/Index.html', '1', '127.0.0.1', '2015-10-19 16:46:12', '1');
INSERT INTO `log` VALUES ('2498', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 16:46:17', '1');
INSERT INTO `log` VALUES ('2499', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-19 16:48:40', '1');
INSERT INTO `log` VALUES ('2500', 'admin', 'Channel', 'Edit', '/index.php/Admin/Channel/Edit.html', '1', '127.0.0.1', '2015-10-19 16:48:52', '1');
INSERT INTO `log` VALUES ('2501', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 16:48:54', '1');
INSERT INTO `log` VALUES ('2502', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-19 16:51:17', '1');
INSERT INTO `log` VALUES ('2503', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 17:27:59', '1');
INSERT INTO `log` VALUES ('2504', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-19 17:28:00', '1');
INSERT INTO `log` VALUES ('2505', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-19 17:28:03', '1');
INSERT INTO `log` VALUES ('2506', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-19 17:28:04', '1');
INSERT INTO `log` VALUES ('2507', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-19 17:28:05', '1');
INSERT INTO `log` VALUES ('2508', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-19 17:28:06', '1');
INSERT INTO `log` VALUES ('2509', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-19 17:28:07', '1');
INSERT INTO `log` VALUES ('2510', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-19 17:28:08', '1');
INSERT INTO `log` VALUES ('2511', 'admin', 'User', 'Main', '/index.php/Admin/User/Main.html', '1', '127.0.0.1', '2015-10-19 17:28:21', '1');
INSERT INTO `log` VALUES ('2512', 'admin', 'User', 'UserData', '/index.php/Admin/User/UserData.html', '1', '127.0.0.1', '2015-10-19 17:28:22', '1');
INSERT INTO `log` VALUES ('2513', 'admin', 'User', 'PassWord', '/index.php/Admin/User/PassWord.html', '1', '127.0.0.1', '2015-10-19 17:28:23', '1');
INSERT INTO `log` VALUES ('2514', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 17:34:01', '1');
INSERT INTO `log` VALUES ('2515', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-19 17:40:15', '1');
INSERT INTO `log` VALUES ('2516', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-19 17:40:17', '1');
INSERT INTO `log` VALUES ('2517', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 17:40:49', '1');
INSERT INTO `log` VALUES ('2518', 'admin', 'Channel', 'del', '/index.php/Admin/Channel/del.html', '1', '127.0.0.1', '2015-10-19 17:41:28', '1');
INSERT INTO `log` VALUES ('2519', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 17:41:31', '1');
INSERT INTO `log` VALUES ('2520', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 17:41:33', '1');
INSERT INTO `log` VALUES ('2521', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 17:41:37', '1');
INSERT INTO `log` VALUES ('2522', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-19 17:41:38', '1');
INSERT INTO `log` VALUES ('2523', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 17:41:40', '1');
INSERT INTO `log` VALUES ('2524', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 17:41:42', '1');
INSERT INTO `log` VALUES ('2525', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-19 17:42:12', '1');
INSERT INTO `log` VALUES ('2526', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 17:42:15', '1');
INSERT INTO `log` VALUES ('2527', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('2528', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 17:42:43', '1');
INSERT INTO `log` VALUES ('2529', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 17:43:26', '1');
INSERT INTO `log` VALUES ('2530', 'admin', 'User', 'Main', '/index.php/Admin/User/Main.html', '1', '127.0.0.1', '2015-10-19 17:46:19', '1');
INSERT INTO `log` VALUES ('2531', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('2532', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('2533', 'admin', 'Recommend', 'Index', '/index.php/Admin/Recommend/Index.html', '1', '127.0.0.1', '2015-10-19 17:51:43', '1');
INSERT INTO `log` VALUES ('2534', 'admin', 'Recommend', 'Index', '/index.php/Admin/Recommend/Index.html', '1', '127.0.0.1', '2015-10-19 17:51:44', '1');
INSERT INTO `log` VALUES ('2535', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('2536', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 17:56:57', '1');
INSERT INTO `log` VALUES ('2537', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 17:57:51', '1');
INSERT INTO `log` VALUES ('2538', 'admin', 'Channel', 'del', '/index.php/Admin/Channel/del.html', '1', '127.0.0.1', '2015-10-19 17:57:58', '1');
INSERT INTO `log` VALUES ('2539', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 17:58:01', '1');
INSERT INTO `log` VALUES ('2540', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 17:58:06', '1');
INSERT INTO `log` VALUES ('2541', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 18:03:21', '1');
INSERT INTO `log` VALUES ('2542', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 18:03:41', '1');
INSERT INTO `log` VALUES ('2543', 'admin', 'Channel', 'del', '/index.php/Admin/Channel/del.html', '1', '127.0.0.1', '2015-10-19 18:03:45', '1');
INSERT INTO `log` VALUES ('2544', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 18:03:48', '1');
INSERT INTO `log` VALUES ('2545', 'admin', 'Channel', 'del', '/index.php/Admin/Channel/del.html', '1', '127.0.0.1', '2015-10-19 18:03:51', '1');
INSERT INTO `log` VALUES ('2546', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 18:03:53', '1');
INSERT INTO `log` VALUES ('2547', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-19 18:03:56', '1');
INSERT INTO `log` VALUES ('2548', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-19 18:04:02', '1');
INSERT INTO `log` VALUES ('2549', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 18:04:05', '1');
INSERT INTO `log` VALUES ('2550', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-19 18:04:41', '1');
INSERT INTO `log` VALUES ('2551', 'admin', 'Channel', 'Edit', '/index.php/Admin/Channel/Edit.html', '1', '127.0.0.1', '2015-10-19 18:04:58', '1');
INSERT INTO `log` VALUES ('2552', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 18:05:00', '1');
INSERT INTO `log` VALUES ('2553', 'admin', 'Channel', 'edit', '/index.php/Admin/Channel/edit.html', '1', '127.0.0.1', '2015-10-19 18:05:10', '1');
INSERT INTO `log` VALUES ('2554', 'admin', 'Channel', 'Edit', '/index.php/Admin/Channel/Edit.html', '1', '127.0.0.1', '2015-10-19 18:05:23', '1');
INSERT INTO `log` VALUES ('2555', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 18:05:25', '1');
INSERT INTO `log` VALUES ('2556', 'admin', 'Admin', 'checkLogin', '/index.php/Admin/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('2557', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-19 18:09:10', '1');
INSERT INTO `log` VALUES ('2558', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-19 18:09:19', '1');
INSERT INTO `log` VALUES ('2559', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-19 18:10:54', '1');
INSERT INTO `log` VALUES ('2560', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-19 18:10:56', '1');
INSERT INTO `log` VALUES ('2561', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-19 18:10:59', '1');
INSERT INTO `log` VALUES ('2562', 'admin', 'Article', 'Edit', '/index.php/Admin/Article/Edit.html', '1', '127.0.0.1', '2015-10-19 18:11:41', '1');
INSERT INTO `log` VALUES ('2563', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-19 18:11:43', '1');
INSERT INTO `log` VALUES ('2564', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-19 18:11:46', '1');
INSERT INTO `log` VALUES ('2565', 'admin', 'Article', 'Edit', '/index.php/Admin/Article/Edit.html', '1', '127.0.0.1', '2015-10-19 18:11:58', '1');
INSERT INTO `log` VALUES ('2566', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-19 18:12:00', '1');
INSERT INTO `log` VALUES ('2567', 'admin', 'Article', 'edit', '/index.php/Admin/Article/edit.html', '1', '127.0.0.1', '2015-10-19 18:12:16', '1');
INSERT INTO `log` VALUES ('2568', 'admin', 'Article', 'Edit', '/index.php/Admin/Article/Edit.html', '1', '127.0.0.1', '2015-10-19 18:12:33', '1');
INSERT INTO `log` VALUES ('2569', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-19 18:12:35', '1');
INSERT INTO `log` VALUES ('2570', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-19 18:13:08', '1');
INSERT INTO `log` VALUES ('2571', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 18:13:13', '1');
INSERT INTO `log` VALUES ('2572', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-19 18:13:15', '1');
INSERT INTO `log` VALUES ('2573', 'admin', 'Channel', 'Index', '/index.php/Admin/Channel/Index.html', '1', '127.0.0.1', '2015-10-19 18:13:20', '1');
INSERT INTO `log` VALUES ('2574', 'admin', 'Article', 'Index', '/index.php/Admin/Article/Index.html', '1', '127.0.0.1', '2015-10-19 18:15:35', '1');
INSERT INTO `log` VALUES ('2575', 'admin', 'Admin', 'checkLogin', '/admin.php/Admin/checkLogin.html', '1', null, null, '1');
INSERT INTO `log` VALUES ('2576', 'admin', 'Article', 'Index', '/admin.php/Article/Index.html', '1', '127.0.0.1', '2015-10-20 13:21:11', '1');
INSERT INTO `log` VALUES ('2577', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 13:21:16', '1');
INSERT INTO `log` VALUES ('2578', 'admin', 'Channel', 'edit', '/admin.php/Channel/edit.html', '1', '127.0.0.1', '2015-10-20 13:34:27', '1');
INSERT INTO `log` VALUES ('2579', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 13:34:30', '1');
INSERT INTO `log` VALUES ('2580', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 13:35:56', '1');
INSERT INTO `log` VALUES ('2581', 'admin', 'Channel', 'edit', '/admin.php/Channel/edit.html', '1', '127.0.0.1', '2015-10-20 13:36:04', '1');
INSERT INTO `log` VALUES ('2582', 'admin', 'Channel', 'edit', '/admin.php/Channel/edit.html', '1', '127.0.0.1', '2015-10-20 13:36:39', '1');
INSERT INTO `log` VALUES ('2583', 'admin', 'Article', 'Index', '/admin.php/Article/Index.html', '1', '127.0.0.1', '2015-10-20 13:36:45', '1');
INSERT INTO `log` VALUES ('2584', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 13:36:48', '1');
INSERT INTO `log` VALUES ('2585', 'admin', 'Article', 'Index', '/admin.php/Article/Index.html', '1', '127.0.0.1', '2015-10-20 13:36:51', '1');
INSERT INTO `log` VALUES ('2586', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 13:52:59', '1');
INSERT INTO `log` VALUES ('2587', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 14:33:51', '1');
INSERT INTO `log` VALUES ('2588', 'admin', 'Channel', 'edit', '/admin.php/Channel/edit.html', '1', '127.0.0.1', '2015-10-20 14:34:36', '1');
INSERT INTO `log` VALUES ('2589', 'admin', 'Channel', 'Edit', '/admin.php/Channel/Edit.html', '1', '127.0.0.1', '2015-10-20 14:34:54', '1');
INSERT INTO `log` VALUES ('2590', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 14:34:56', '1');
INSERT INTO `log` VALUES ('2591', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 14:34:57', '1');
INSERT INTO `log` VALUES ('2592', 'admin', 'Channel', 'edit', '/admin.php/Channel/edit.html', '1', '127.0.0.1', '2015-10-20 14:35:01', '1');
INSERT INTO `log` VALUES ('2593', 'admin', 'Channel', 'Edit', '/admin.php/Channel/Edit.html', '1', '127.0.0.1', '2015-10-20 14:35:08', '1');
INSERT INTO `log` VALUES ('2594', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 14:35:10', '1');
INSERT INTO `log` VALUES ('2595', 'admin', 'Channel', 'edit', '/admin.php/Channel/edit.html', '1', '127.0.0.1', '2015-10-20 14:35:17', '1');
INSERT INTO `log` VALUES ('2596', 'admin', 'Channel', 'Edit', '/admin.php/Channel/Edit.html', '1', '127.0.0.1', '2015-10-20 14:35:24', '1');
INSERT INTO `log` VALUES ('2597', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 14:35:26', '1');
INSERT INTO `log` VALUES ('2598', 'admin', 'Channel', 'edit', '/admin.php/Channel/edit.html', '1', '127.0.0.1', '2015-10-20 14:35:31', '1');
INSERT INTO `log` VALUES ('2599', 'admin', 'Channel', 'Edit', '/admin.php/Channel/Edit.html', '1', '127.0.0.1', '2015-10-20 14:35:46', '1');
INSERT INTO `log` VALUES ('2600', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 14:35:48', '1');
INSERT INTO `log` VALUES ('2601', 'admin', 'Channel', 'edit', '/admin.php/Channel/edit.html', '1', '127.0.0.1', '2015-10-20 14:35:51', '1');
INSERT INTO `log` VALUES ('2602', 'admin', 'Channel', 'Edit', '/admin.php/Channel/Edit.html', '1', '127.0.0.1', '2015-10-20 14:36:05', '1');
INSERT INTO `log` VALUES ('2603', 'admin', 'Article', 'Index', '/admin.php/Article/Index.html', '1', '127.0.0.1', '2015-10-20 14:36:06', '1');
INSERT INTO `log` VALUES ('2604', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 14:36:08', '1');
INSERT INTO `log` VALUES ('2605', 'admin', 'Channel', 'edit', '/admin.php/Channel/edit.html', '1', '127.0.0.1', '2015-10-20 14:36:23', '1');
INSERT INTO `log` VALUES ('2606', 'admin', 'Channel', 'Edit', '/admin.php/Channel/Edit.html', '1', '127.0.0.1', '2015-10-20 14:36:37', '1');
INSERT INTO `log` VALUES ('2607', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 14:36:39', '1');
INSERT INTO `log` VALUES ('2608', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 14:36:40', '1');
INSERT INTO `log` VALUES ('2609', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 14:36:41', '1');
INSERT INTO `log` VALUES ('2610', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 14:36:42', '1');
INSERT INTO `log` VALUES ('2611', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 14:36:43', '1');
INSERT INTO `log` VALUES ('2612', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 14:36:44', '1');
INSERT INTO `log` VALUES ('2613', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 14:36:45', '1');
INSERT INTO `log` VALUES ('2614', 'admin', 'Article', 'Index', '/admin.php/Article/Index.html', '1', '127.0.0.1', '2015-10-20 14:36:46', '1');
INSERT INTO `log` VALUES ('2615', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 14:36:55', '1');
INSERT INTO `log` VALUES ('2616', 'admin', 'Channel', 'edit', '/admin.php/Channel/edit.html', '1', '127.0.0.1', '2015-10-20 14:38:32', '1');
INSERT INTO `log` VALUES ('2617', 'admin', 'Channel', 'Edit', '/admin.php/Channel/Edit.html', '1', '127.0.0.1', '2015-10-20 14:38:36', '1');
INSERT INTO `log` VALUES ('2618', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 14:38:38', '1');
INSERT INTO `log` VALUES ('2619', 'admin', 'Channel', 'edit', '/admin.php/Channel/edit.html', '1', '127.0.0.1', '2015-10-20 14:38:42', '1');
INSERT INTO `log` VALUES ('2620', 'admin', 'Article', 'Index', '/admin.php/Article/Index.html', '1', '127.0.0.1', '2015-10-20 14:40:16', '1');
INSERT INTO `log` VALUES ('2621', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 14:40:18', '1');
INSERT INTO `log` VALUES ('2622', 'admin', 'Article', 'Index', '/admin.php/Article/Index.html', '1', '127.0.0.1', '2015-10-20 14:40:25', '1');
INSERT INTO `log` VALUES ('2623', 'admin', 'Article', 'edit', '/admin.php/Article/edit.html', '1', '127.0.0.1', '2015-10-20 14:43:56', '1');
INSERT INTO `log` VALUES ('2624', 'admin', 'Article', 'Index', '/admin.php/Article/Index.html', '1', '127.0.0.1', '2015-10-20 14:44:41', '1');
INSERT INTO `log` VALUES ('2625', 'admin', 'Article', 'edit', '/admin.php/Article/edit.html', '1', '127.0.0.1', '2015-10-20 14:44:54', '1');
INSERT INTO `log` VALUES ('2626', 'admin', 'Article', 'Index', '/admin.php/Article/Index.html', '1', '127.0.0.1', '2015-10-20 14:46:22', '1');
INSERT INTO `log` VALUES ('2627', 'admin', 'Article', 'edit', '/admin.php/Article/edit.html', '1', '127.0.0.1', '2015-10-20 14:46:25', '1');
INSERT INTO `log` VALUES ('2628', 'admin', 'Article', 'Edit', '/admin.php/Article/Edit.html', '1', '127.0.0.1', '2015-10-20 14:46:53', '1');
INSERT INTO `log` VALUES ('2629', 'admin', 'Article', 'Index', '/admin.php/Article/Index.html', '1', '127.0.0.1', '2015-10-20 14:46:55', '1');
INSERT INTO `log` VALUES ('2630', 'admin', 'Article', 'edit', '/admin.php/Article/edit.html', '1', '127.0.0.1', '2015-10-20 14:47:00', '1');
INSERT INTO `log` VALUES ('2631', 'admin', 'Article', 'Edit', '/admin.php/Article/Edit.html', '1', '127.0.0.1', '2015-10-20 14:47:07', '1');
INSERT INTO `log` VALUES ('2632', 'admin', 'Article', 'Index', '/admin.php/Article/Index.html', '1', '127.0.0.1', '2015-10-20 14:47:09', '1');
INSERT INTO `log` VALUES ('2633', 'admin', 'Article', 'edit', '/admin.php/Article/edit.html', '1', '127.0.0.1', '2015-10-20 14:48:53', '1');
INSERT INTO `log` VALUES ('2634', 'admin', 'Article', 'Edit', '/admin.php/Article/Edit.html', '1', '127.0.0.1', '2015-10-20 14:49:13', '1');
INSERT INTO `log` VALUES ('2635', 'admin', 'Article', 'Index', '/admin.php/Article/Index.html', '1', '127.0.0.1', '2015-10-20 14:49:15', '1');
INSERT INTO `log` VALUES ('2636', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 14:55:22', '1');
INSERT INTO `log` VALUES ('2637', 'admin', 'Article', 'Index', '/admin.php/Article/Index.html', '1', '127.0.0.1', '2015-10-20 14:56:25', '1');
INSERT INTO `log` VALUES ('2638', 'admin', 'Article', 'edit', '/admin.php/Article/edit.html', '1', '127.0.0.1', '2015-10-20 14:56:28', '1');
INSERT INTO `log` VALUES ('2639', 'admin', 'Article', 'Edit', '/admin.php/Article/Edit.html', '1', '127.0.0.1', '2015-10-20 14:57:04', '1');
INSERT INTO `log` VALUES ('2640', 'admin', 'Article', 'Index', '/admin.php/Article/Index.html', '1', '127.0.0.1', '2015-10-20 14:57:06', '1');
INSERT INTO `log` VALUES ('2641', 'admin', 'Article', 'edit', '/admin.php/Article/edit.html', '1', '127.0.0.1', '2015-10-20 14:57:11', '1');
INSERT INTO `log` VALUES ('2642', 'admin', 'Article', 'Edit', '/admin.php/Article/Edit.html', '1', '127.0.0.1', '2015-10-20 14:57:41', '1');
INSERT INTO `log` VALUES ('2643', 'admin', 'Article', 'Index', '/admin.php/Article/Index.html', '1', '127.0.0.1', '2015-10-20 14:57:43', '1');
INSERT INTO `log` VALUES ('2644', 'admin', 'Article', 'edit', '/admin.php/Article/edit.html', '1', '127.0.0.1', '2015-10-20 14:57:51', '1');
INSERT INTO `log` VALUES ('2645', 'admin', 'Article', 'Edit', '/admin.php/Article/Edit.html', '1', '127.0.0.1', '2015-10-20 14:58:28', '1');
INSERT INTO `log` VALUES ('2646', 'admin', 'Article', 'Index', '/admin.php/Article/Index.html', '1', '127.0.0.1', '2015-10-20 14:58:32', '1');
INSERT INTO `log` VALUES ('2647', 'admin', 'Article', 'edit', '/admin.php/Article/edit.html', '1', '127.0.0.1', '2015-10-20 14:58:49', '1');
INSERT INTO `log` VALUES ('2648', 'admin', 'Article', 'Edit', '/admin.php/Article/Edit.html', '1', '127.0.0.1', '2015-10-20 14:58:53', '1');
INSERT INTO `log` VALUES ('2649', 'admin', 'Article', 'Index', '/admin.php/Article/Index.html', '1', '127.0.0.1', '2015-10-20 14:58:55', '1');
INSERT INTO `log` VALUES ('2650', 'admin', 'Article', 'edit', '/admin.php/Article/edit.html', '1', '127.0.0.1', '2015-10-20 14:59:50', '1');
INSERT INTO `log` VALUES ('2651', 'admin', 'Article', 'Edit', '/admin.php/Article/Edit.html', '1', '127.0.0.1', '2015-10-20 15:00:10', '1');
INSERT INTO `log` VALUES ('2652', 'admin', 'Article', 'Index', '/admin.php/Article/Index.html', '1', '127.0.0.1', '2015-10-20 15:00:12', '1');
INSERT INTO `log` VALUES ('2653', 'admin', 'Article', 'Index', '/admin.php/Article/Index.html', '1', '127.0.0.1', '2015-10-20 15:02:25', '1');
INSERT INTO `log` VALUES ('2654', 'admin', 'Article', 'edit', '/admin.php/Article/edit.html', '1', '127.0.0.1', '2015-10-20 15:02:28', '1');
INSERT INTO `log` VALUES ('2655', 'admin', 'Article', 'Edit', '/admin.php/Article/Edit.html', '1', '127.0.0.1', '2015-10-20 15:02:50', '1');
INSERT INTO `log` VALUES ('2656', 'admin', 'Article', 'Index', '/admin.php/Article/Index.html', '1', '127.0.0.1', '2015-10-20 15:02:52', '1');
INSERT INTO `log` VALUES ('2657', 'admin', 'Article', 'edit', '/admin.php/Article/edit.html', '1', '127.0.0.1', '2015-10-20 15:03:08', '1');
INSERT INTO `log` VALUES ('2658', 'admin', 'Article', 'Edit', '/admin.php/Article/Edit.html', '1', '127.0.0.1', '2015-10-20 15:03:25', '1');
INSERT INTO `log` VALUES ('2659', 'admin', 'Article', 'Index', '/admin.php/Article/Index.html', '1', '127.0.0.1', '2015-10-20 15:03:27', '1');
INSERT INTO `log` VALUES ('2660', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 15:03:51', '1');
INSERT INTO `log` VALUES ('2661', 'admin', 'Channel', 'edit', '/admin.php/Channel/edit.html', '1', '127.0.0.1', '2015-10-20 15:57:11', '1');
INSERT INTO `log` VALUES ('2662', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 15:57:14', '1');
INSERT INTO `log` VALUES ('2663', 'admin', 'Channel', 'edit', '/admin.php/Channel/edit.html', '1', '127.0.0.1', '2015-10-20 17:22:56', '1');
INSERT INTO `log` VALUES ('2664', 'admin', 'Channel', 'Edit', '/admin.php/Channel/Edit.html', '1', '127.0.0.1', '2015-10-20 17:23:15', '1');
INSERT INTO `log` VALUES ('2665', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 17:23:17', '1');
INSERT INTO `log` VALUES ('2666', 'admin', 'Channel', 'edit', '/admin.php/Channel/edit.html', '1', '127.0.0.1', '2015-10-20 17:38:09', '1');
INSERT INTO `log` VALUES ('2667', 'admin', 'Article', 'Index', '/admin.php/Article/Index.html', '1', '127.0.0.1', '2015-10-20 17:39:09', '1');
INSERT INTO `log` VALUES ('2668', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 17:39:11', '1');
INSERT INTO `log` VALUES ('2669', 'admin', 'Channel', 'edit', '/admin.php/Channel/edit.html', '1', '127.0.0.1', '2015-10-20 17:39:16', '1');
INSERT INTO `log` VALUES ('2670', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 17:46:44', '1');
INSERT INTO `log` VALUES ('2671', 'admin', 'Channel', 'edit', '/admin.php/Channel/edit.html', '1', '127.0.0.1', '2015-10-20 17:46:47', '1');
INSERT INTO `log` VALUES ('2672', 'admin', 'Channel', 'Edit', '/admin.php/Channel/Edit.html', '1', '127.0.0.1', '2015-10-20 17:46:54', '1');
INSERT INTO `log` VALUES ('2673', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 17:46:56', '1');
INSERT INTO `log` VALUES ('2674', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 18:08:06', '1');
INSERT INTO `log` VALUES ('2675', 'admin', 'Channel', 'edit', '/admin.php/Channel/edit.html', '1', '127.0.0.1', '2015-10-20 18:08:11', '1');
INSERT INTO `log` VALUES ('2676', 'admin', 'Channel', 'Edit', '/admin.php/Channel/Edit.html', '1', '127.0.0.1', '2015-10-20 18:08:18', '1');
INSERT INTO `log` VALUES ('2677', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 18:08:20', '1');
INSERT INTO `log` VALUES ('2678', 'admin', 'Channel', 'edit', '/admin.php/Channel/edit.html', '1', '127.0.0.1', '2015-10-20 18:08:41', '1');
INSERT INTO `log` VALUES ('2679', 'admin', 'Channel', 'Edit', '/admin.php/Channel/Edit.html', '1', '127.0.0.1', '2015-10-20 18:08:48', '1');
INSERT INTO `log` VALUES ('2680', 'admin', 'Channel', 'Index', '/admin.php/Channel/Index.html', '1', '127.0.0.1', '2015-10-20 18:08:51', '1');
INSERT INTO `model` VALUES ('27', '单页', 'page', '1', '0', '1');
INSERT INTO `model` VALUES ('29', '文章', 'article', '2', '1', '1');
INSERT INTO `model` VALUES ('30', '产品', 'product', '10', '1', '0');
INSERT INTO `model_field` VALUES ('480', '27', 'status', '状态', '8', null, null, null, null, null, '是否启用', 'radio', '1', '1', '1', '1:开启\r\n0:关闭');
INSERT INTO `model_field` VALUES ('481', '27', 'sort', '排序', '9', null, null, null, null, null, null, 'num', '1', '1', '1', null);
INSERT INTO `model_field` VALUES ('479', '27', 'txt', '内容', '7', null, null, '12', null, null, '', 'editor', '1', '1', '1', '');
INSERT INTO `model_field` VALUES ('478', '27', 'updatetime', '更新时间', '10', null, null, null, null, null, null, 'datetime', '1', '0', '0', null);
INSERT INTO `model_field` VALUES ('476', '27', 'posid', '推荐位', '6', null, null, null, null, null, '', 'checkbox', '1', '1', '1', '1:首页轮播\r\n2:今日头条');
INSERT INTO `model_field` VALUES ('477', '27', 'addtime', '发布时间', '5', null, null, null, null, null, null, 'datetime', '1', '1', '1', null);
INSERT INTO `model_field` VALUES ('473', '27', 'description', '摘要', '4', null, null, '5', null, null, '', 'textarea', '1', '1', '1', '');
INSERT INTO `model_field` VALUES ('474', '27', 'tags', 'TAGS', '5', null, null, null, null, null, '多关之间用空格或者“,”隔开', 'string', '1', '0', '0', null);
INSERT INTO `model_field` VALUES ('475', '27', 'pic_id', '标题图', '10', null, null, null, null, null, null, 'num', '1', '0', '0', null);
INSERT INTO `model_field` VALUES ('472', '27', 'keywords', '关键词', '3', null, null, '5', null, null, '多关键词之间用空格隔开', 'textarea', '1', '1', '1', '');
INSERT INTO `model_field` VALUES ('471', '27', 'islink', '转向链接', '10', null, null, null, null, null, null, 'string', '1', '0', '0', null);
INSERT INTO `model_field` VALUES ('470', '27', 'title', '标题', '2', null, null, '5', null, null, '', 'string', '1', '1', '1', '');
INSERT INTO `model_field` VALUES ('468', '27', 'channel_id', '栏目名称', '1', null, null, null, null, null, null, 'channel_id', '1', '1', '1', null);
INSERT INTO `model_field` VALUES ('510', '27', 'txt_1', '内容_1', '10', null, null, null, null, null, null, 'editor', '1', '0', '0', null);
INSERT INTO `model_field` VALUES ('511', '27', 'txt_2', '内容_2', '10', null, null, null, null, null, null, 'editor', '1', '0', '0', null);
INSERT INTO `model_field` VALUES ('513', '27', '12321', '3213', '12', null, null, null, null, null, '123', 'string', '1', '1', '2', null);
INSERT INTO `model_field` VALUES ('530', '29', 'channel_id', '栏目名称', '10', null, null, null, null, null, null, '1', '1', '1', '1', null);
INSERT INTO `model_field` VALUES ('531', '29', 'user_id', '用户ID', '10', null, null, null, null, null, null, '1', '1', '1', '1', null);
INSERT INTO `model_field` VALUES ('532', '29', 'title', '标题', '10', null, null, null, null, null, null, '2', '1', '1', '1', null);
INSERT INTO `model_field` VALUES ('533', '29', 'islink', '转向链接', '10', null, null, null, null, null, null, '2', '1', '0', null, null);
INSERT INTO `model_field` VALUES ('534', '29', 'keywords', '关键词', '10', null, null, null, null, null, '关键字中间用“,”隔开', '3', '1', '1', '1', null);
INSERT INTO `model_field` VALUES ('535', '29', 'description', '摘要', '10', null, null, null, null, null, '针对搜索引擎设置的网页描述', '3', '1', '1', '1', null);
INSERT INTO `model_field` VALUES ('536', '29', 'tags', 'TAGS', '10', null, null, null, null, null, '多关之间用“,”隔开', '2', '1', '0', null, null);
INSERT INTO `model_field` VALUES ('537', '29', 'pic_id', '标题图', '10', null, null, null, null, null, null, '1', '1', '0', null, null);
INSERT INTO `model_field` VALUES ('538', '29', 'posid', '推荐位', '10', null, null, null, null, null, null, '1', '1', '1', '1', null);
INSERT INTO `model_field` VALUES ('539', '29', 'addtime', '发布时间', '10', null, null, null, null, null, null, '4', '1', '1', '1', null);
INSERT INTO `model_field` VALUES ('540', '29', 'updatetime', '更新时间', '10', null, null, null, null, null, null, '4', '1', '0', null, null);
INSERT INTO `model_field` VALUES ('541', '29', 'content', '内容', '10', null, null, null, null, null, null, '9', '1', '1', '1', null);
INSERT INTO `model_field` VALUES ('542', '29', 'content_1', '内容_1', '10', null, null, null, null, null, null, '9', '1', '1', '1', null);
INSERT INTO `model_field` VALUES ('543', '29', 'content_2', '内容_2', '10', null, null, null, null, null, null, '9', '1', '1', '1', null);
INSERT INTO `model_field` VALUES ('544', '29', 'status', '状态', '10', null, null, null, null, null, '是否启用', '1', '1', '1', '1', null);
INSERT INTO `model_field` VALUES ('545', '29', 'sort', '排序', '10', null, null, null, null, null, null, '1', '1', '1', '1', null);
INSERT INTO `node` VALUES ('2', 'Menu', '', '系统管理', '1', null, '4', '1', '2');
INSERT INTO `node` VALUES ('3', 'Content', '', '内容管理', '1', null, '2', '1', '2');
INSERT INTO `node` VALUES ('4', 'Module', '', '模块管理', '1', null, '3', '1', '2');
INSERT INTO `node` VALUES ('5', 'User', '', '个人管理', '1', null, '1', '1', '2');
INSERT INTO `node` VALUES ('6', 'Menu', 'Index', '菜单设置', '1', null, '10', '2', '3');
INSERT INTO `node` VALUES ('7', 'User', 'Index', '用户管理', '1', null, '10', '2', '3');
INSERT INTO `node` VALUES ('8', 'User', 'PassWord', '修改密码', '1', null, '3', '5', '3');
INSERT INTO `node` VALUES ('9', 'User', 'UserData', '个人资料', '1', null, '2', '5', '3');
INSERT INTO `node` VALUES ('10', 'User', 'Main', '后台首页', '1', null, '1', '5', '3');
INSERT INTO `node` VALUES ('11', 'Auth', 'Index', '角色管理', '1', null, '10', '2', '3');
INSERT INTO `node` VALUES ('12', 'Auth', 'Index', '站点管理', '1', null, '10', '2', '3');
INSERT INTO `node` VALUES ('262', 'Cache', 'Index', '清除缓存', '1', null, '10', '2', '0');
INSERT INTO `node` VALUES ('265', 'Link', 'Index', '友情链接', '1', null, '10', '4', '0');
INSERT INTO `node` VALUES ('264', 'Type', 'Index', '模块分类', '1', null, '1', '4', '0');
INSERT INTO `node` VALUES ('263', 'Slide', 'Index', '幻灯管理', '1', null, '10', '4', '0');
INSERT INTO `node` VALUES ('261', 'Log', 'Index', '操作日志', '1', null, '10', '2', '0');
INSERT INTO `node` VALUES ('13', 'Add', '', '菜单删除', '1', null, '10', '6', '3');
INSERT INTO `node` VALUES ('266', 'Model', 'Index', '模型管理', '1', null, '10', '3', '0');
INSERT INTO `node` VALUES ('267', 'Channel', 'Index', '栏目管理', '1', null, '1', '3', '0');
INSERT INTO `node` VALUES ('268', 'Article', 'Index', '文章管理', '1', null, '2', '3', '0');
INSERT INTO `node` VALUES ('269', 'Product', 'Index', '产品管理', '0', null, '3', '3', '0');
INSERT INTO `node` VALUES ('270', 'Recommend', 'Index', '推荐位置', '1', null, '5', '3', '0');
INSERT INTO `product` VALUES ('1', '11', 'HELLO 猫', '6', '', '', '<p>\n &nbsp;\n</p>', '0.00', 'data/attachment/image/20150924/134faf8db9fb9e150f15b88c79b2d1ad.jpg', '', '0', '0', '', '32', '32', '1345188426', '1443069701', '1345188421', '', '1', '1', 'zh_cn');
INSERT INTO `product` VALUES ('7', '10', '三顺猪茶枕', '6', '', '', '<p>\n &nbsp;\n</p>', '0.00', 'data/attachment/image/20150924/35ac31e08993450418df65c3a9020378.jpg', '', '0', '29', '', '69', '69', '1347872719', '1443069595', '1347870328', '', '1', '1', 'zh_cn');
INSERT INTO `product` VALUES ('2', '11', '网络推广', '1', '网络推广', '我们专业的SEO优化技术让您网站在百度的搜索排名不断靠前！', '<p>\r\n <span style=\"line-height:1.5;\">&nbsp;</span><b>-- 在网络中做生意，你首先得推广，这是前提的前提，没有推广万事皆空。推广的方式有很多，相比之下，SEO优化，效果显著，成本又低廉，易于控制。</b>\r\n</p>\r\n<p>\r\n 当今网站、网店、论坛等越来越多，已经远远超过了牛毛的数量。所以，制作网站、博客、论坛等，越来越易;推广起来，越来越难;推广不好，流量可想而知就上不去了。俗话说的好“打江山容易守江山难”，而站长们现在面临的是“做网站容易推广网站难” ，当我们推广了一段时间以后，有时候发现根本就没有找到好的推广方法和思路，就像一个没头的苍蝇一样到处乱飞，一通努力下来，就没有带来几个有效的IP。那么我们怎么样才能以最好的方式推广一个网站呢?...........<br />\r\n<br />\r\n<strong><span>什么是SEO？</span></strong> \r\n</p>\r\n<p>\r\n SEO 是“Search Engine Optimization”（搜索引擎优化）的首字母缩略词。是一种搜索引擎排名技术。即在百度、谷歌、搜搜等搜索引擎中，当别人搜索指定内容（关键字）时，让你的网站结果出现在最前端。<br />\r\n在数百万的网络用户中，75%的用户用搜索引擎查询信息，而这些用户中80%都会成为您的目标客户，并且这一数值每年都在上涨。搜索引擎已然成为了现代的“黄页”，在中文领域中，百度成为了用户使用最多的搜索引擎。<b>如果您的网站在主要搜索引擎列表的前三页中没有取得排名，您很可能将销售额拱手想让给竞争对手。</b> \r\n</p>\r\n<p>\r\n <br />\r\n<strong><span>SEO的作用？</span></strong> \r\n</p>\r\n<p>\r\n 通过对网站的优化，提高相关产品服务关键字在搜索引擎中的自然排名，尽可能让有力信息占据搜索结果第一页，将企业口碑、品牌、正面报道的信息提前，将负面信息挤出第一页。\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<strong>SEO优化</strong>：通过对网站的优化，提高相关产品服务关键字在搜索引擎中的自然排名，尽可能让有力信息占据搜索结果第一页，将企业口碑、品牌、正面报道的信息提前，将负面信息挤出第一页。\r\n<p>\r\n <strong>竞价排名</strong>：通过付费，在指定关键字搜索结果页前端显示网站推广内容。\r\n</p>\r\n<p>\r\n <strong>SEO服务内容：</strong> \r\n</p>\r\n<br />\r\n<p>\r\n <strong>SEO服务流程</strong> \r\n</p>\r\n<br />\r\n<p>\r\n <br />\r\n</p>', '0.00', 'data/attachment/image/20121029/20121029084855_82721.jpg', '', '0', '0', '', '52', '52', '1345772402', '1358515867', '1345772397', '', '2', '1', 'zh_cn');
INSERT INTO `product` VALUES ('3', '11', '软件开发', '1', '软件开发', '我们超前的设计理念设计出的软件不断简化您们的工作流程！', '', '0.00', 'data/attachment/image/20121029/20121029084855_47680.jpg', '', '0', '', '', '13', '13', '1347449334', '1358152774', '1347449323', '', '3', '1', 'zh_cn');
INSERT INTO `product` VALUES ('4', '11', '主机域名', '1', '主机域名', '7*24小时快速、稳定、安全的虚拟主机服务，胜过同业国际级机房！', '', '0.00', 'data/attachment/image/20121029/20121029084857_80263.jpg', '', '0', '', '', '10', '10', '1347449353', '1358152789', '1347449337', '', '4', '1', 'zh_cn');
INSERT INTO `product` VALUES ('8', '10', '小新抱枕', '6', '', '', '<p>\n &nbsp;\n</p>', '0.00', 'data/attachment/image/20150924/e13226865fcfff2af2f6a0ae584f72d1.jpg', '', '0', '29', '', '27', '27', '1347886611', '1443069742', '1347885829', '', '2', '1', 'zh_cn');
INSERT INTO `product` VALUES ('9', '10', '营销型网站建设套餐', '1', '营销型网站建设套餐', '<b>营销型网站建设套餐</b>:适用于对版面要求高、设计和营销类的客户群，商务定制网站风格设计一套。', '<p>\r\n <strong>营销型网站建设套餐</strong> \r\n</p>\r\n<p>\r\n <strong></strong>&nbsp;\r\n</p>\r\n<p>\r\n 适 用 于：适用于对版面要求高、设计和营销类的客户群<br />\r\n网站设计：商务定制网站风格设计一套<br />\r\n网站功能：SEO标准开发，符合各大搜索引擎的抓取标准，动态生成静态<br />\r\n网站域名：国际顶级域名1个（.com/.net/.com.cn/.cn等）<br />\r\n网站主机： 经济型标准空间500M<br />\r\n企业邮局企业邮局：250M（建议直接用QQ企业邮箱，可将邮箱绑定到QQ邮箱，自动提醒）<br />\r\n制作周期：30个工作日<br />\r\n价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 格：<span><strong>5000-6500</strong></span>元<br />\r\n售&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 后：一年之内免费售后服务（培训、网站的安全、速度、稳定性）。\r\n</p>\r\n<p>\r\n <br />\r\n</p>', '0.00', 'data/attachment/image/20121029/20121029084856_19429.jpg', '', '0', '29', '', '15', '15', '1347887269', '1358239344', '1347887096', '', '3', '1', 'zh_cn');
INSERT INTO `product` VALUES ('10', '10', '商城型网站建设套餐', '1', '商城型网站建设套餐', '<b>商城型网站建设套餐</b>:适合开展网上营销、销售，商城B2C形式的客户群，自由定制设计网站风格。', '<p>\r\n <strong>商城型网站建设套餐</strong> \r\n</p>\r\n<p>\r\n 适 用 于：适合开展网上营销、销售，商城B2C形式的客户群<br />\r\n网站设计：自由定制设计网站风格<br />\r\n网站功能：信息发布系统、购物车电子商务、订单管理系统、产品发布系统、后台管理<br />\r\n网站域名：国际顶级域名1个（.com/.net/.com.cn/.cn等）<br />\r\n网站主机： 1-10G财富主机<br />\r\n企业邮局企业邮局：免费培训QQ企业邮箱<br />\r\n制作周期：30个工作日<br />\r\n价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 格：<span ><strong>6000-12000</strong></span>元<br />\r\n售&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 后：一年之内免费售后服务（培训、网站的安全、速度、稳定性）。\r\n</p>', '0.00', 'data/attachment/image/20121029/20121029084856_24202.jpg', '', '0', '', '', '28', '28', '1347887722', '1358152779', '1347887463', '', '4', '1', 'zh_cn');
INSERT INTO `product` VALUES ('11', '10', '门户型网站建设套餐', '1', '门户型网站建设套餐', '<b>门户型网站建设套餐</b>:地方、行业门户建设，自由定制设计网站风格。', '<p>\r\n <strong>门户型网站建设套餐</strong><strong></strong> \r\n</p>\r\n<p>\r\n 网站设计：自由定制设计网站风格<br />\r\n网站功能：整套电子商务购物网站系统，包含权限管理、商品管理、在线商品库管理、排行榜管理、商品推荐管理、商品导购管理、会员管理、订单管理、支付管理、配送管理、广告管理、留言管理、帐务管理、及时通信管理、数据统计分析以及其它相关的业务辅助系统个子系统进行全面介绍。<br />\r\n网站域名：国际顶级域名1个（.com/.net/.com.cn/.cn等）<br />\r\n网站主机： 10G财富主机<br />\r\n制作周期：50个工作日<br />\r\n价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 格：<strong><span>10000-50000</span></strong>元<br />\r\n售&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 后：一年之内免费售后服务（培训、网站的安全、速度、稳定性）。\r\n</p>', '0.00', 'data/attachment/image/20121029/20121029084856_69018.jpg', '', '0', '29', '', '323', '23', '1347887928', '1358239349', '1351095983', '', '5', '1', 'zh_cn');
INSERT INTO `recommend` VALUES ('1', '首页置顶', 'article', '首页置顶新闻', '1358838665', '1439953260', '99', '1', 'zh_cn');
INSERT INTO `recommend` VALUES ('2', '首页推荐1', 'article', '推荐首页的新闻', '1439952455', '1439953241', '99', '1', 'zh_cn');
INSERT INTO `role` VALUES ('1', 'Admin', null, '1', '超级管理员');
INSERT INTO `role` VALUES ('2', 'Web Editor', null, '1', '网站编辑');
INSERT INTO `role_user` VALUES ('2', '13');
INSERT INTO `role_user` VALUES ('1', '1');
INSERT INTO `slide` VALUES ('3', '8', 'X6CMS 2.2 正式发布！', 'X6CMS 2.2 正式发布！', '2015-09-24/5603a2d71232d.jpg', 'http://www.x6cms.com', '', '0', '1443078870', '3', '1', 'zh_cn');
INSERT INTO `type` VALUES ('7', '友情链接', '99', '1', 'zh_cn', '5', 'Link');
INSERT INTO `type` VALUES ('8', '首页幻灯', '10', '1', 'zh_cn', '6', 'Slide');
INSERT INTO `user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', '1', null, '1445318463', '127.0.0.1', null, '1442476414', '127.0.0.1', '', null, '', '1', '1232131asd ');
INSERT INTO `user` VALUES ('13', 'user', 'ee11cbb19052e40b07aac0ca060c23ee', '2', '1', null, '1442996900', null, null, '1442475084', '127.0.0.1', null, null, null, null, null);
