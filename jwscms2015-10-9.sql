/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50535
Source Host           : localhost:3306
Source Database       : jwscms

Target Server Type    : MYSQL
Target Server Version : 50535
File Encoding         : 65001

Date: 2015-10-09 23:13:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `access`
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
-- Records of access
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

-- ----------------------------
-- Table structure for `article`
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
  `listorder` int(10) unsigned NOT NULL DEFAULT '999',
  `status` tinyint(1) unsigned NOT NULL,
  `lang` varchar(20) NOT NULL DEFAULT 'zh_cn',
  PRIMARY KEY (`id`),
  KEY `category` (`category`) USING BTREE,
  KEY `lang` (`lang`) USING BTREE,
  KEY `recommend` (`recommends`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('21', '2', '5.28百度大面积K站原因分析', '1', '百度5.28大面积K站', '自端午节以来，百度经过一次次的K站，今天又达到一个K站高峰。本站也被百度拉进黑名单？啥原因？', '<p>\r\n 自端午节以来，百度经过一次次的K站，今天又达到一个K站高峰。本站也被百度拉进黑名单？啥原因？X6CMS\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n 本站最近一段时间操作：\r\n</p>\r\n<p>\r\n 1、文章不定期更新（不过时间比较长，因为比较忙，所以更新周期就被拉长了）\r\n</p>\r\n<p>\r\n 2、外链添加，主要在论坛\r\n</p>\r\n<p>\r\n 其他基本没什么操作了，而且文章也基本原创或伪原创，但是网站还是被K得找不到北了！\r\n</p>\r\n<p>\r\n 从这点看出来，百度这次K站的原因可能在于网站更新方面，没有新内容，百度可能认为这是一个死站，从而K掉！\r\n</p>', '小六', 'http://www.x6cms.com', '', '', '0', '31,5', '2', '74', '65', '1347356349', '1439976048', '1340185090', '', '999', '1', 'zh_cn');
INSERT INTO `article` VALUES ('20', '2', '网站SEO优化第一步-提交网站到搜索引擎', '1', '提交网站到搜索引擎', '做网站的目的，不管为了什么原因，都得吸引更多人浏览网站！网站SEO优化是必不可少的环节。而网站优化的第一步，就是提交网站地址到各大搜索引起，以吸引搜索引擎流量进入网站。', '做网站的目的，不管为了什么原因，都得吸引更多人浏览网站！网站SEO优化是必不可少的环节。而网站优化的第一步，就是提交网站地址到各大搜索引起，以吸引搜索引擎流量进入网站。\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n 以下列出最主要的几个搜索引擎登录地址：\r\n</p>\r\n<hr class=\"ke-pagebreak\" />\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n 百度登陆提交地址：<a href=\"http://www.baidu.com/search/url_submit.html\" target=\"_blank\">http://www.baidu.com/search/url_submit.html</a> \r\n</p>\r\n<p>\r\n google网站登陆提价地址：<a href=\"http://www.google.com/intl/zh-TW_tw/addurl.html\" target=\"_blank\">http://www.google.com/intl/zh-TW_tw/addurl.html</a> \r\n</p>\r\n<p>\r\n SOSO网站登录提交地址：<a href=\"http://www.soso.com/help/usb/urlsubmit.shtml\" target=\"_blank\">http://www.soso.com/help/usb/urlsubmit.shtml</a> \r\n</p>\r\n<p>\r\n 雅虎网站登录提交地址：<a href=\"http://search.help.cn.yahoo.com/h4_4.html\" target=\"_blank\">http://search.help.cn.yahoo.com/h4_4.html</a> \r\n</p>\r\n<p>\r\n bing网站登录提交地址：<a href=\"http://cn.bing.com/webmaster/SubmitSitePage.aspx?mkt=zh-CN\" target=\"_blank\">http://cn.bing.com/webmaster/SubmitSitePage.aspx?mkt=zh-CN</a> \r\n</p>\r\n<p>\r\n sogou网站登录提交地址：<a href=\"http://www.sogou.com/feedback/urlfeedback.php\" target=\"_blank\">http://www.sogou.com/feedback/urlfeedback.php</a> \r\n</p>\r\n<p>\r\n .....\r\n</p>\r\n<p>\r\n 网站提交之后，一般如果网站没有什么大的问题，比如域名被K过之类的问题，搜索引擎一般会在一周左右的时间就会收录你的网站。当然，各个搜索引擎的收录时间不一样，而且并不一定会保证收录。\r\n</p>\r\n<p>\r\n 尤其注意一点：可以通过其他操作方式加快网站被收录的时间。\r\n</p>\r\n<p>\r\n 下面列出最重要的两种加快收录的方法\r\n</p>\r\n<p>\r\n 1、在高权重网站加上您的网站锚文本链接。\r\n</p>\r\n<p>\r\n 2、网站正常更新，每天首页有新的原创内容展示。\r\n</p>\r\n<p>\r\n 网站收录结果查询地址：<a href=\"http://indexed.webmasterhome.cn/\" target=\"_blank\">http://indexed.webmasterhome.cn/</a> \r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n 扩展阅读：\r\n</p>\r\n<p>\r\n 1、什么是锚文本链接\r\n</p>\r\n<p>\r\n 2、什么是原创内容\r\n</p>', '小六', 'http://www.x6cms.com', '', '', '0', '31', '2', '73', '73', '1347356283', '1439976807', '1346319435', '', '999', '1', 'zh_cn');
INSERT INTO `article` VALUES ('23', '26', '应运而生：中国茶业商学院1', '6', '', '茶行业对于中国人来说，几乎贯穿了整个中国文明史。但中国茶从业人员多，企业规模小，市场化工业化速度慢，也是当下的现状。', '<p>\n &nbsp;\n</p>', '', 'http://www.p.com/', 'data/attachment/image/20130114/20130114063533_32175.jpg', '', '0', '0', '', '1', '1', '1440036214', '1443069970', '1440035545', '', '999', '1', 'zh_cn');
INSERT INTO `article` VALUES ('17', '2', '关于最近电脑时间自动倒退一年提示', '1', '电脑时间自动倒退一年', '最近国内大面积电脑时间倒退一年。具网络中流传，有可能是360相关软件引起的。以前一直以为电脑时间嘛，没什么大不了的，结果出现这个问题之后，才发现，问题很大，以下是几个今天碰到的问题。', '<p>\r\n 最近国内大面积电脑时间倒退一年。具网络中流传，有可能是360相关软件引起的。以前一直以为电脑时间嘛，没什么大不了的，结果出现这个问题之后，才发现，问题很大，以下是几个今天碰到的问题。\r\n</p>\r\n<p>\r\n &nbsp;\r\n</p>\r\n<p>\r\n 电脑时间出现问题，引起的问题：\r\n</p>\r\n<p>\r\n 1、很多需要在线支付的网站，支付不了。比如淘宝，这些网站都需要安装证书，如果电脑时间错误，会提示证书过期，引起没法进行下一步操作。\r\n</p>\r\n<p>\r\n 2、discuz论坛，用户登录有可能出现需要激活的情况。引起这种情况是因为，你的电脑时间比当时注册帐号的时间还早，系统出现错误。\r\n</p>\r\n<p>\r\n 3、有的网站发布各种文章使用的本机时间，发布后发现文章跑到很早以前的文章一起去了，不在最新文章里边，收录不了。\r\n</p>\r\n<p>\r\n ......\r\n</p>\r\n<p>\r\n &nbsp;\r\n</p>\r\n<p>\r\n 该事件后续：\r\n</p>\r\n<p>\r\n 360已经发布公告：《360杀毒关于系统时间Bug的解决公告》<br />\r\nhttp://bbs.360.cn/4077772/254084394.html\r\n</p>', '小六', 'http://www.x6cms.com', '', '', '0', '31', '2', '13', '13', '1347355854', '1439976778', '1338543007', '', '999', '1', 'zh_cn');
INSERT INTO `article` VALUES ('13', '12', '几种不适合做SEO的人', '1', '不适合做SEO的人', '一、对SEO没有兴趣，学习SEO只为了公司需要的人。二、认为SEO没有技术含量，只想混口饭吃的人。三、缺乏思考与创新，只按常理出牌的人。四、心理素质相对来说较差的人。', '<p>\r\n 一、对SEO没有兴趣，学习SEO只为了公司需要的人：没有兴趣怎么能将一门技术发挥到极点？各行各业都是这个理。\r\n</p>\r\n<p>\r\n &nbsp;\r\n</p>\r\n<p>\r\n <strong>二、认为SEO没有技术含量，只想混口饭吃的人</strong>：SEO技术是一门高深技术，如果你觉得SEO就是增加链接就可以了，在链接权重占的比重越来越低的今天，你已经跟不上时代了。\r\n</p>\r\n<p>\r\n &nbsp;\r\n</p>\r\n<p>\r\n <strong>三、缺乏思考与创新，只按常理出牌的人</strong>：SEO的一些偏门比正规手法更有用，当然不是叫你作弊。\r\n</p>\r\n<p>\r\n &nbsp;\r\n</p>\r\n<p>\r\n <strong>四、心理素质相对来说较差的人</strong>：SEO重点就是做网站关键字排名，可能今天你的排名在第一，明天就找不见了，没有好的心里素质，请勿乱入。\r\n</p>\r\n<p>\r\n &nbsp;\r\n</p>\r\n<p>\r\n <strong>五、</strong><strong>不会上网的人</strong>：什么年代了，还不会上网，跟不上时代了。在SEO一天一个变化的时代，不知道关注新东西，肯定会落后的，只会越做越烂！\r\n</p>', '小六', 'http://www.x6cms.com', '', '', '0', '0', '', '8', '8', '1347355567', '1439976797', '1341912323', '', '999', '1', 'zh_cn');
INSERT INTO `article` VALUES ('15', '2', '301重定向是什么，为什么要做301重定向', '1', '301重定向', '301重定向说白了就是通过各种的方法将各种网络请求重新定个方向转到其它位置。', '301重定向说白了就是通过各种的方法将各种网络请求重新定个方向转到其它位置。\r\n<p>\r\n &nbsp;\r\n</p>\r\n<p>\r\n iis和apache服务器的重定向规则有些许不同，不过大同小异的！本文不介绍具体规则，稍后会写其他文章介绍一下吧\r\n</p>\r\n<p>\r\n &nbsp;\r\n</p>\r\n<p>\r\n 不同域名之间的重定向和同域名不同页面的重定向，其实都一样，就是将一个网络地址转到另外一个网络地址上。\r\n</p>\r\n<p>\r\n &nbsp;\r\n</p>\r\n<p>\r\n 就比如本网站，如果你直接在浏览器中输入<a href=\"http://go1668.com/\">http://go1668.com</a>就会跳转到http:/www.go1668.com，这就是在不同域名上跳转了。\r\n</p>\r\n<p>\r\n &nbsp;\r\n</p>\r\n<p>\r\n 这样做的好处就是，不分散主页面的权重，对于搜索引擎来说，权重集中，排名相对来说，更靠前一些。\r\n</p>\r\n<p>\r\n &nbsp;\r\n</p>\r\n<p>\r\n 另外又比如访问本站的1.html的时候，直接跳转到2.html，这就是在同域名下不同页面的跳转了。\r\n</p>\r\n<p>\r\n 做这个可能有几个原因，在这列两个常见的原因：\r\n</p>\r\n<p>\r\n 1、路径分级太多，为了迎合搜索引擎，将路径分级减少。\r\n</p>\r\n<p>\r\n 2、路径变动了，需要将老地址转到新地址上。(为了将老页面的权重转移到新页面上来)\r\n</p>\r\n<p>\r\n ......\r\n</p>', '小六', 'http://www.x6cms.com', '', '', '0', '5', '', '23', '23', '1347355708', '1439976827', '1343726857', '', '999', '1', 'zh_cn');
INSERT INTO `article` VALUES ('16', '2', '.CN域名注册细则修订：个人首次获得申请资格', '1', '个人注册cn域名', '5月28日下午消息，中国互联网络信息中心（CNNIC）今日发布公告称，将从明日开始实施修订后的域名注册实施细则。新规执行后，自然人将首次获得.CN和.中国域名的申请资格。过去两年我国顶级域名注册量下降了近1000万。', '<p>\r\n 5月28日下午消息，中国互联网络信息中心（CNNIC）今日发布公告称，将从明日开始实施修订后的域名注册实施细则。新规执行后，自然人将首次获得.CN和.中国域名的申请资格。过去两年我国顶级域名注册量下降了近1000万。\r\n</p>\r\n<p>\r\n 据介绍此次修订，重点修改了原《实施细则》第十四条中关于域名注册主体的规定，并增加专门章节对域名注册信息的保护进行阐述，同时，针对域名注册、转移、续费等环节进行了修改完善。主要修改如下：\r\n</p>\r\n<p>\r\n 一、关于域名注册主体的增加。修订为“任何自然人或者能独立承担民事责任的组织均可在本细则规定的顶级域名下申请注册域名”，即域名注册的主体扩大至自然人。\r\n</p>\r\n<p>\r\n 二、关于域名注册信息的保护。为加强域名注册者信息的安全保护，修订后的《实施细则》通过对注册资料的传输、保存、销毁以及域名注册服务机构退出时域名注册信息、资料的处理等作出的详细规定，加强对用户信息的安全保护。\r\n</p>\r\n<p>\r\n 三、关于域名的续费确认期。《实施细则》规定“域名到期后自动进入30日的续费确认期，用户在此期限内确认是否续费，如书面表示不续费，域名注册服务机构有权注销该域名；如果用户在30日内未书面表示不续费，也未续费，域名注册服务机构有权30日后注销域名”。\r\n</p>\r\n<p>\r\n CNNIC表示，.CN和.中国域名向自然人开放后，并不会使恶意注册事件进一步扩大，同时指出相关争议已有相关的解决流程。而对于此前使用不实信息注册相关域名的个人用户，CNNIC表示正在进行相关核验，且向用户提供一次域名注册转移的机会。\r\n</p>\r\n<p>\r\n 由于实名制和定价回复等原因，.CN和.中国注册和持有情况持续低迷。官方披露的数据显示，过去两年中.CN和。中国域名数量下降了约1000万。\r\n</p>', '小六', 'http://www.x6cms.com', '', '', '0', '0', '', '9', '9', '1347355782', '1439976818', '1338283741', '', '999', '1', 'zh_cn');
INSERT INTO `article` VALUES ('8', '12', '小六网站内容管理系统（X6CMS） 1.0发布', '1', 'X6CMS 1.0', 'X6CMS,全称：小六网站管理系统。是一款完全开源免费的PHP+MYSQL系统。系统核心采用了Codeigister框架、jquery框架等众多开源软件。目的是为了简化网站开发周期，最终实现只要稍微懂点编程即可快速建设网站。', '<p>\r\n X6CMS,全称：小六网站管理系统。是一款完全开源免费的PHP+MYSQL系统。系统核心采用了Codeigister框架、jquery框架等众多开源软件。目的是为了简化网站开发周期，最终实现只要稍微懂点编程即可快速建设网站。\r\n</p>\r\n<p>\r\n &nbsp;\r\n</p>\r\n<p>\r\n 2012.6.10 版本1.0 功能包括：\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n 系统管理：权限管理、用户组、用户管理\r\n</p>\r\n<p>\r\n 内容管理：栏目管理、文章管理、单页面管理、图片管理\r\n</p>\r\n<p>\r\n 模块管理：友情链接、碎片管理、导航设置\r\n</p>\r\n<p>\r\n 站点配置：站点配置、伪静态配置\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n 下一步开发方向：\r\n</p>\r\n<p>\r\n 添加功能包括：留言管理、文章评论、产品管理、购物车。功能优化：前台除首页外实现模版选择，后台可编辑模版、css等文件，网站可实现不同语言后台切换，语言文件可编辑，logo等静态图片实现后台上传。\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <span >1.0版本因为是初始版本，还有许多不足之处，并不做为发布版本，后续功能完善之后再发布。</span> \r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n 有需要的朋友可以直接发邮件至<a href=\"mailto:admin@go1668.com\">admin@go1668.com</a>索要。\r\n</p>\r\n<p>\r\n &nbsp;\r\n</p>', '小六', 'http://www.x6cms.com', '', '', '0', '', '', '28', '28', '1347353721', '1358221819', '1339317831', '', '999', '1', 'zh_cn');
INSERT INTO `article` VALUES ('5', '12', '小六网络科技主机淘宝店开通', '1', '主机淘宝店', '小六网络科技淘宝店开通。淘宝店地址：http://xian6.taobao.com 。', '<p>\r\n 小六网络科技淘宝店开通\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n 淘宝店地址：<a href=\"http://xian6.taobao.com/\">http://xian6.taobao.com</a> \r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n 为了更加方便客户快速支付，在线支付，特开此淘宝店！\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n 淘宝店经营业务：主营各类型主机域名、及各种优惠网站套餐\r\n</p>', '小六', 'http://www.x6cms.com', '', '', '0', '', '', '13', '13', '1347351811', '1358221832', '1338452520', '', '999', '1', 'zh_cn');
INSERT INTO `article` VALUES ('6', '12', '做SEO的目的是什么', '1', '做SEO的目的是什么', 'SEO的最主要的目的就是吸引搜索引擎上的潜在客户光顾你的站点，了解并购买他们搜索的产品。', '<p>\r\n <strong>SEO的目的是什么</strong>？以下列了几条做SEO的目的：\r\n</p>\r\n<p>\r\n 1、吸引搜索引擎上的潜在客户光顾你的站点，了解并购买他们搜索的产品。网店、销售型企业网站等。\r\n</p>\r\n<p>\r\n 2、希望获得来自搜索引擎的大量流量，向浏览者推介某一产品，而不是当场购买。生产型品牌企业网站、交友网站、会员模式站点等。\r\n</p>\r\n<p>\r\n 3、力图从搜索引擎引来充足的访问量，来扩大品牌的知名度，而不是某个具体的产品。如中国移动、国美电器等。\r\n</p>\r\n<p>\r\n 4、依靠搜索引擎的流量，并将这个流量作为产品吸引广告商来网站放广告。谷歌广告、阿里妈妈、百度推广等。\r\n</p>\r\n<p>\r\n 5、力图让搜索引擎给网站带来大量流量，以使网站的业绩指标攀升，吸引投资者或者收购。\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n 确定自己的SEO目的是有必要的。特别是当自己要找一个专业的SEO顾问或SEO公司合作时，可以明确告诉他们你的需求，以让他们更好的实施SEO策划，同时你自己对SEO顾问或SEO公司也有一个考核标准。\r\n</p>', '小六', 'http://www.x6cms.com', '', '', '0', '0', '', '8', '8', '1347352131', '1439976788', '1338539076', '', '999', '1', 'zh_cn');
INSERT INTO `article` VALUES ('1', '12', '西安小六网络科技官方网站改版完成', '1', '西安小六网络科技官方网站', '2012.5.10 西安小六网络科技网站改版完成成功上线！\n改版后栏目：网站首页、新闻中心、产品服务、优惠套餐、经典案例、关于小六、联系我们', '<p>\n 2012.5.10 西安小六网络科技网站改版完成成功上线！\n</p>\n<p>\n &nbsp;\n</p>\n<p>\n 改版后栏目：\n</p>\n<p>\n 首页：网站首页\n</p>\n<p>\n 新闻中心：行业新闻、小六动态、及各种建站知识分享\n</p>\n<p>\n 产品服务：介绍小六的产品服务\n</p>\n<p>\n 优惠套餐：各种产品的优惠套餐介绍\n</p>\n<p>\n 经典案例：展示小六的一些客户经典案例\n</p>\n<p>\n 关于小六：西安小六网络科技简介\n</p>\n<p>\n 联系我们：西安小六网络科技联系方式\n</p>\n<p>\n &nbsp;\n</p>\n<p>\n 另外可通过顶部导航及底部导航查看一些常见问题解答\n</p>', '小六', 'http://www.x6cms.com', 'data/attachment/image/20130114/20130114063546_93581.jpg', '', '0', '0', '1', '412', '82', '1336631274', '1440053259', '1336656923', '', '999', '1', 'zh_cn');

-- ----------------------------
-- Table structure for `channel`
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
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  KEY `lang` (`lang`),
  KEY `dir` (`dir`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of channel
-- ----------------------------
INSERT INTO `channel` VALUES ('1', '0', '1', '6', '新闻资讯', '0', '', '_self', 'news', '', '', '0', 'article', '', '地地地 地', '', '', '', '5', '1', '0', '2', 'zh_cn');
INSERT INTO `channel` VALUES ('2', '1', '2', '3', '行业动态', '0', '', '_self', 'hangye', '', '', '', 'article', '', '', '', '', '', '5', '1', '0', '99', 'zh_cn');
INSERT INTO `channel` VALUES ('3', '0', '7', '12', '产品展示', '0', '', '0', 'product', '音乐抱枕', '', '0', 'product', '', '', '', '', '', '9', '1', '1', '3', 'zh_cn');
INSERT INTO `channel` VALUES ('27', '0', '31', '32', '茶道茶艺', '0', '', '_self', 'chadaochayi', '', '', '', 'article', '', '', '', 'article_news', '', '15', '1', '0', '5', 'zh_cn');
INSERT INTO `channel` VALUES ('5', '0', '13', '14', '招聘中心', '0', '', '_self', 'hr', '', '', '0', 'hr', '', '', '', '', '', '0', '1', '0', '10', 'zh_cn');
INSERT INTO `channel` VALUES ('7', '0', '15', '18', '走进绿洲', '0', '', '_self', 'about', 'X6CMS网站管理系统简介', 'X6CMS', 'X6CMS：全称小六网站内容管理系统。X6CMS是一个功能完善的营销型网站管理平台，采用PHP+MYSQL架构，全站内置SEO优化机制，界面简介，操作方便。', 'page', 'data/attachment/image/20150818/8fa4738496484841cf27b1739ccc4878.jpg', '<p align=\"left\">\n &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<span style=\"line-height:2.5;font-size:14px;\">绿洲茶业（福建福鼎绿洲茶业有限公司）始于清乾隆元年，世代住在白琳镇秀洋村的王家就以制茶、售茶为生，由于产地优越、技艺精湛，王家所制作的白茶，备受各地爱茶人士的喜爱，经过几代人的工艺积淀，业内影响力越来越大的王家被业内誉为\"茶王世家\"，销量也随之节节攀升。为了保质保量的供应白茶给需求增大的客户，在2005年创建了福建福鼎绿洲茶厂。 遵循祖训，保持白茶出产品质的绿洲茶厂，慢慢聚集了一批国家级制茶专家、评茶大师，是福鼎白茶茶叶原产地保护的授权使用者，现在福鼎白茶有10万多亩自有白茶基地、1000多亩生态茶园及8000多亩战略合作茶园。</span>\n</p>', '', '', '', '0', '1', '0', '1', 'zh_cn');
INSERT INTO `channel` VALUES ('8', '0', '19', '28', '在线留言', '0', '', '_self', 'guestbook', '', '', '', 'guestbook', '', '33333', '', '', '', '0', '1', '0', '10', 'zh_cn');
INSERT INTO `channel` VALUES ('29', '0', '33', '34', '联系我们', '0', '', '_self', 'contactUs', '', '', '', 'page', '', '<p>\n <sub><sup><span style=\"font-size:24px;\">&nbsp;&nbsp; 咨询电话:13105961888&nbsp;&nbsp;&nbsp;&nbsp; QQ:330426192&nbsp;&nbsp;&nbsp;</span></sup></sub>\n</p>\n<p>\n <sub><sup><span style=\"font-size:24px;\">&nbsp;&nbsp; 生产地址:福建省福鼎市沙垅村&nbsp;&nbsp;&nbsp;&nbsp; 公司地址:福鼎市铂金华城7栋1301</span></sup></sub>\n</p>', '', '', '', '0', '1', '0', '99', 'zh_cn');
INSERT INTO `channel` VALUES ('10', '3', '8', '9', '白茶', '0', '', '_self', 'youhui', '', '', '', 'product', '', '', '', '', '', '9', '1', '0', '99', 'zh_cn');
INSERT INTO `channel` VALUES ('11', '3', '10', '11', '龙井', '0', '', '_self', 'fuwu', '', '', '0', 'product', '', '', '', '', '', '9', '1', '0', '99', 'zh_cn');
INSERT INTO `channel` VALUES ('12', '1', '4', '5', '企业动态', '0', '', '_self', 'xiaoliu', '', '', '', 'article', '', '在城在城&nbsp;', '', '', '', '5', '1', '0', '99', 'zh_cn');
INSERT INTO `channel` VALUES ('28', '7', '16', '17', '企业文化', '0', '', '_self', 'qiyewenhua', '', '', '', 'page', '', '', '', '', '', '0', '1', '0', '99', 'zh_cn');
INSERT INTO `channel` VALUES ('26', '0', '29', '30', '制茶流程', '0', '', '_self', 'zhichaliuc', '', '', '', 'article', '', '', '', 'article_news', '', '15', '1', '0', '4', 'zh_cn');
INSERT INTO `channel` VALUES ('30', '8', '20', '21', '合作咨询', '0', '', '_self', 'hezuozixun', '', '', '', 'guestbook', '', '', '', '', '', '0', '1', '0', '99', 'zh_cn');
INSERT INTO `channel` VALUES ('31', '8', '22', '23', '意见建议', '0', '', '_self', 'yijianjianyi', '', '', '', 'guestbook', '', '', '', '', '', '0', '1', '0', '99', 'zh_cn');
INSERT INTO `channel` VALUES ('32', '8', '24', '25', '求职应聘', '0', '', '_self', 'qiuzhiyinpin', '', '', '', 'guestbook', '', '', '', '', '', '0', '1', '0', '99', 'zh_cn');
INSERT INTO `channel` VALUES ('33', '8', '26', '27', '投诉建议', '0', '', '_self', 'tousujianyi', '', '', '', 'guestbook', '', '', '', '', '', '0', '1', '0', '99', 'zh_cn');

-- ----------------------------
-- Table structure for `link`
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
-- Records of link
-- ----------------------------
INSERT INTO `link` VALUES ('2', '8', 'X6CMS 2.2 正式发布！', 'X6CMS 2.2 正式发布！', '2015-09-24/5603a37e69274.jpg', 'http://www.x6cms.com', '', '0', '1443079037', '2', '1', 'zh_cn');
INSERT INTO `link` VALUES ('3', '8', 'X6CMS 2.2 正式发布！', 'X6CMS 2.2 正式发布！', '2015-09-24/5603a2d71232d.jpg', 'http://www.x6cms.com', '', '0', '1443078870', '3', '1', 'zh_cn');

-- ----------------------------
-- Table structure for `log`
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
) ENGINE=MyISAM AUTO_INCREMENT=1856 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
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

-- ----------------------------
-- Table structure for `model`
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
-- Records of model
-- ----------------------------
INSERT INTO `model` VALUES ('27', '单页', 'page', '10', '0', '1');
INSERT INTO `model` VALUES ('29', '文章', 'article', '10', '1', '1');
INSERT INTO `model` VALUES ('30', '产品', 'product', '10', '1', '1');

-- ----------------------------
-- Table structure for `model_field`
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
-- Records of model_field
-- ----------------------------
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

-- ----------------------------
-- Table structure for `node`
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
) ENGINE=MyISAM AUTO_INCREMENT=269 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of node
-- ----------------------------
INSERT INTO `node` VALUES ('2', 'Menu', '', '系统管理', '1', null, '4', '1', '2');
INSERT INTO `node` VALUES ('3', 'Content', '', '内容管理', '1', null, '2', '1', '2');
INSERT INTO `node` VALUES ('4', 'Module', '', '模块管理', '1', null, '3', '1', '2');
INSERT INTO `node` VALUES ('5', 'UserInfo', '', '个人管理', '1', null, '1', '1', '2');
INSERT INTO `node` VALUES ('6', 'Menu', 'Index', '菜单设置', '1', null, '10', '2', '3');
INSERT INTO `node` VALUES ('7', 'User', 'Index', '用户管理', '1', null, '10', '2', '3');
INSERT INTO `node` VALUES ('8', 'UserInfo', 'PassWord', '修改密码', '1', null, '3', '5', '3');
INSERT INTO `node` VALUES ('9', 'UserInfo', 'UserData', '个人资料', '1', null, '2', '5', '3');
INSERT INTO `node` VALUES ('10', 'UserInfo', 'Index', '后台首页', '1', null, '1', '5', '3');
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
INSERT INTO `node` VALUES ('268', 'News', 'Index', '新闻管理', '1', null, '2', '3', '0');

-- ----------------------------
-- Table structure for `role`
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
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'Admin', null, '1', '超级管理员');
INSERT INTO `role` VALUES ('2', 'Web Editor', null, '1', '网站编辑');

-- ----------------------------
-- Table structure for `role_user`
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL COMMENT '组id',
  `user_id` char(32) DEFAULT NULL COMMENT '用户id',
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_user
-- ----------------------------
INSERT INTO `role_user` VALUES ('2', '13');
INSERT INTO `role_user` VALUES ('1', '1');

-- ----------------------------
-- Table structure for `slide`
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
-- Records of slide
-- ----------------------------
INSERT INTO `slide` VALUES ('3', '8', 'X6CMS 2.2 正式发布！', 'X6CMS 2.2 正式发布！', '2015-09-24/5603a2d71232d.jpg', 'http://www.x6cms.com', '', '0', '1443078870', '3', '1', 'zh_cn');

-- ----------------------------
-- Table structure for `type`
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
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('7', '友情链接', '99', '1', 'zh_cn', '5', 'Link');
INSERT INTO `type` VALUES ('8', '首页幻灯', '10', '1', 'zh_cn', '6', 'Slide');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `role` smallint(6) unsigned NOT NULL COMMENT '组ID',
  `status` int(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态 1:启用 0:禁止',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `last_login_time` int(11) unsigned NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(15) DEFAULT NULL COMMENT '最后登录IP',
  `last_location` varchar(100) DEFAULT NULL COMMENT '最后登录位置',
  `reg_time` int(11) DEFAULT NULL COMMENT '注册时间',
  `reg_ip` varchar(20) DEFAULT NULL COMMENT '注册ip',
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', '1', null, '1444357187', null, null, '1442476414', '127.0.0.1');
INSERT INTO `user` VALUES ('13', 'user', 'ee11cbb19052e40b07aac0ca060c23ee', '2', '1', null, '1442996900', null, null, '1442475084', '127.0.0.1');
