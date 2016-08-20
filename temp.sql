/*
SQLyog Ultimate v8.32 
MySQL - 5.6.0-m4 : Database - weshop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `api_test` */

CREATE TABLE `api_test` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `txt` varchar(50) DEFAULT NULL COMMENT '测试文本',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `api_test` */

/*Table structure for table `cms_article` */

CREATE TABLE `cms_article` (
  `id` varchar(32) NOT NULL DEFAULT '' COMMENT 'ID',
  `shopid` varchar(32) DEFAULT NULL COMMENT '预留商城ID',
  `title` varchar(120) DEFAULT NULL COMMENT '文章标题',
  `info` varchar(500) DEFAULT NULL COMMENT '文章简介',
  `author` varchar(50) DEFAULT NULL COMMENT '文章作者',
  `picurl` varchar(255) DEFAULT NULL COMMENT '标题图',
  `content` text COMMENT '文章内容',
  `disabled` tinyint(1) DEFAULT NULL COMMENT '是否禁用',
  `publishAt` int(20) DEFAULT NULL COMMENT '发布时间',
  `location` int(32) DEFAULT NULL COMMENT '排序字段',
  `channelId` varchar(32) DEFAULT NULL,
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cms_article` */

insert  into `cms_article`(`id`,`shopid`,`title`,`info`,`author`,`picurl`,`content`,`disabled`,`publishAt`,`location`,`channelId`,`opBy`,`opAt`,`delFlag`) values ('28525c788a704d70a6c85c5dc97bfa88',NULL,'公司资质','公司资质','超级管理员','','<p style=\"text-align: center;\"><img src=\"/upload/image/20160820/p6lgcn13v2ipaqecu0s8j6s8bn.png\" style=\"\"/></p><p style=\"text-align: center;\"><img src=\"/upload/image/20160820/44gndvj0d2jjcr1na768p6cg2j.png\" style=\"\"/></p><p><br/></p>',0,1471663329,1,'f0ff12aad3914812aaecbe482a660009','ed822b0fc0fb491d84f088e53e80ec36',1471663557,0);
insert  into `cms_article`(`id`,`shopid`,`title`,`info`,`author`,`picurl`,`content`,`disabled`,`publishAt`,`location`,`channelId`,`opBy`,`opAt`,`delFlag`) values ('871710077c964736bc0ed9617e13502f',NULL,'产品1','产品1','超级管理员','/upload/image/20160820/qgjv93b5gsh9po2acldm3hhtil.png','<p>产品1</p>',0,1471681296,3,'c0aac647702445e5b5cbf46b6b6a44db','ed822b0fc0fb491d84f088e53e80ec36',1471681319,0);
insert  into `cms_article`(`id`,`shopid`,`title`,`info`,`author`,`picurl`,`content`,`disabled`,`publishAt`,`location`,`channelId`,`opBy`,`opAt`,`delFlag`) values ('96f6eaaa1c4b4064af4f2966e313a600',NULL,'联系我','联系我','超级管理员','/upload/image/20160820/vm9fmhs9nqg0hol2rhbd3v49cf.jpg','<p>联系我联系我</p><p>联系我联系我</p><p><br/></p><p>联系我联系我</p>',0,1471663563,2,'f0ff12aad3914812aaecbe482a660009','ed822b0fc0fb491d84f088e53e80ec36',1471663764,0);

/*Table structure for table `cms_channel` */

CREATE TABLE `cms_channel` (
  `id` varchar(32) NOT NULL DEFAULT '' COMMENT 'ID',
  `shopid` varchar(32) DEFAULT NULL COMMENT '预留商城ID',
  `parentId` varchar(32) DEFAULT NULL COMMENT '父级ID',
  `path` varchar(100) DEFAULT NULL COMMENT '树路径',
  `name` varchar(100) DEFAULT NULL COMMENT '栏目名称',
  `type` varchar(20) DEFAULT NULL COMMENT '栏目类型',
  `url` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `target` varchar(20) DEFAULT NULL COMMENT '打开方式',
  `isShow` tinyint(1) DEFAULT NULL COMMENT '是否显示',
  `disabled` tinyint(1) DEFAULT NULL COMMENT '是否禁用',
  `location` int(32) DEFAULT NULL COMMENT '排序字段',
  `hasChildren` tinyint(1) DEFAULT NULL COMMENT '有子节点',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cms_channel` */

insert  into `cms_channel`(`id`,`shopid`,`parentId`,`path`,`name`,`type`,`url`,`target`,`isShow`,`disabled`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('c0aac647702445e5b5cbf46b6b6a44db',NULL,'','0002','产品介绍','article','','_self',0,0,2,0,'ed822b0fc0fb491d84f088e53e80ec36',1471663316,0);
insert  into `cms_channel`(`id`,`shopid`,`parentId`,`path`,`name`,`type`,`url`,`target`,`isShow`,`disabled`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('f0ff12aad3914812aaecbe482a660009',NULL,'','0001','公司简介','article','','_self',0,0,1,0,'ed822b0fc0fb491d84f088e53e80ec36',1471663865,0);

/*Table structure for table `cms_channel_article` */

CREATE TABLE `cms_channel_article` (
  `channelId` varchar(32) DEFAULT NULL,
  `articleId` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cms_channel_article` */

/*Table structure for table `cms_class_link` */

CREATE TABLE `cms_class_link` (
  `classId` varchar(32) DEFAULT NULL,
  `linkId` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cms_class_link` */

/*Table structure for table `cms_link` */

CREATE TABLE `cms_link` (
  `id` varchar(32) NOT NULL DEFAULT '' COMMENT 'ID',
  `name` varchar(120) DEFAULT NULL COMMENT '链接名称',
  `type` varchar(20) DEFAULT NULL COMMENT '链接类型',
  `picurl` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `url` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `target` varchar(20) DEFAULT NULL COMMENT '打开方式',
  `classId` varchar(32) DEFAULT NULL,
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cms_link` */

/*Table structure for table `cms_link_class` */

CREATE TABLE `cms_link_class` (
  `id` varchar(32) NOT NULL DEFAULT '' COMMENT 'ID',
  `name` varchar(120) DEFAULT NULL COMMENT '分类名称',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cms_link_class` */

/*Table structure for table `cms_site` */

CREATE TABLE `cms_site` (
  `id` varchar(32) NOT NULL DEFAULT '' COMMENT 'ID',
  `shopid` varchar(32) DEFAULT NULL COMMENT '预留商城ID',
  `site_name` varchar(120) DEFAULT NULL COMMENT '名称',
  `site_domain` varchar(120) DEFAULT NULL COMMENT '域名',
  `site_icp` varchar(120) DEFAULT NULL COMMENT 'ICP',
  `site_logo` varchar(255) DEFAULT NULL COMMENT 'LOGO',
  `site_wap_logo` varchar(255) DEFAULT NULL COMMENT 'WAPLOGO',
  `site_qq` varchar(20) DEFAULT NULL COMMENT '客服QQ',
  `site_email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `site_tel` varchar(20) DEFAULT NULL COMMENT '电话',
  `weibo_name` varchar(50) DEFAULT NULL COMMENT '微博',
  `weibo_url` varchar(255) DEFAULT NULL COMMENT '微博地址',
  `weibo_qrcode` varchar(255) DEFAULT NULL COMMENT '微博二维码',
  `wechat_name` varchar(50) DEFAULT NULL COMMENT '微信名称',
  `wechat_id` varchar(50) DEFAULT NULL COMMENT '微信ID',
  `wechat_qrcode` varchar(255) DEFAULT NULL COMMENT '微信二维码',
  `seo_keywords` varchar(255) DEFAULT NULL COMMENT '关键词',
  `seo_description` varchar(255) DEFAULT NULL COMMENT '描述',
  `footer_content` text COMMENT '底部版权',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cms_site` */

insert  into `cms_site`(`id`,`shopid`,`site_name`,`site_domain`,`site_icp`,`site_logo`,`site_wap_logo`,`site_qq`,`site_email`,`site_tel`,`weibo_name`,`weibo_url`,`weibo_qrcode`,`wechat_name`,`wechat_id`,`wechat_qrcode`,`seo_keywords`,`seo_description`,`footer_content`,`opBy`,`opAt`,`delFlag`) values ('site',NULL,'微商城','','','/upload/image/20160820/1qdgcnb40kgqfqai4gt88fp9qg.jpg','','','','','','','','','','','','','','ed822b0fc0fb491d84f088e53e80ec36',1471663144,0);

/*Table structure for table `sys_api` */

CREATE TABLE `sys_api` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `appName` varchar(20) DEFAULT NULL COMMENT 'appName',
  `appId` varchar(255) DEFAULT NULL COMMENT 'appId',
  `appSecret` varchar(255) DEFAULT NULL COMMENT 'appSecret',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_api` */

/*Table structure for table `sys_config` */

CREATE TABLE `sys_config` (
  `configKey` varchar(100) NOT NULL DEFAULT '',
  `configValue` varchar(100) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`configKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_config` */

insert  into `sys_config`(`configKey`,`configValue`,`note`,`opBy`,`opAt`,`delFlag`) values ('AppDomain','127.0.0.1','系统域名','',1471658661,0);
insert  into `sys_config`(`configKey`,`configValue`,`note`,`opBy`,`opAt`,`delFlag`) values ('AppName','WeShop','系统名称','',1471658661,0);
insert  into `sys_config`(`configKey`,`configValue`,`note`,`opBy`,`opAt`,`delFlag`) values ('AppShrotName','WeShop','系统短名称','',1471658661,0);
insert  into `sys_config`(`configKey`,`configValue`,`note`,`opBy`,`opAt`,`delFlag`) values ('AppUploadPath','/upload','文件上传文件夹','',1471658661,0);

/*Table structure for table `sys_dict` */

CREATE TABLE `sys_dict` (
  `id` varchar(32) NOT NULL DEFAULT '' COMMENT 'ID',
  `parentId` varchar(32) DEFAULT NULL COMMENT '父级ID',
  `path` varchar(100) DEFAULT NULL COMMENT '树路径',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `code` varchar(20) DEFAULT NULL COMMENT '机构编码',
  `location` int(32) DEFAULT NULL COMMENT '排序字段',
  `hasChildren` tinyint(1) DEFAULT NULL COMMENT '有子节点',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`),
  UNIQUE KEY `INDEX_SYS_DICT_PATH` (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_dict` */

/*Table structure for table `sys_log` */

CREATE TABLE `sys_log` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(100) DEFAULT NULL COMMENT '创建昵称',
  `type` varchar(20) DEFAULT NULL COMMENT '日志类型',
  `tag` varchar(50) DEFAULT NULL COMMENT '日志标识',
  `src` varchar(255) DEFAULT NULL COMMENT '执行类',
  `ip` varchar(255) DEFAULT NULL COMMENT '来源IP',
  `msg` text COMMENT '日志内容',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

/*Data for the table `sys_log` */

insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (1,'超级管理员','info','用户登陆','cn.wizzer.modules.back.sys.controllers.LoginController#doLogin','127.0.0.1','成功登录系统！','ed822b0fc0fb491d84f088e53e80ec36',1471658678,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (2,'超级管理员','aop.after','禁用任务','cn.wizzer.modules.back.sys.controllers.TaskController#disable','127.0.0.1','任务名:测试任务','ed822b0fc0fb491d84f088e53e80ec36',1471658687,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (3,'超级管理员','aop.after','新建菜单','cn.wizzer.modules.back.sys.controllers.MenuController#addDo','127.0.0.1','菜单名称:商城','ed822b0fc0fb491d84f088e53e80ec36',1471658841,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (4,'超级管理员','aop.after','新建菜单','cn.wizzer.modules.back.sys.controllers.MenuController#addDo','127.0.0.1','菜单名称:订单管理','ed822b0fc0fb491d84f088e53e80ec36',1471659117,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (5,'超级管理员','aop.after','新建菜单','cn.wizzer.modules.back.sys.controllers.MenuController#addDo','127.0.0.1','菜单名称:订单列表','ed822b0fc0fb491d84f088e53e80ec36',1471659170,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (6,'超级管理员','aop.after','修改参数','cn.wizzer.modules.back.sys.controllers.ConfController#editDo','127.0.0.1','AppName:WeShop','ed822b0fc0fb491d84f088e53e80ec36',1471660092,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (7,'超级管理员','aop.after','修改参数','cn.wizzer.modules.back.sys.controllers.ConfController#editDo','127.0.0.1','AppShrotName:WeShop','ed822b0fc0fb491d84f088e53e80ec36',1471660096,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (8,'超级管理员','aop.after','编辑菜单','cn.wizzer.modules.back.sys.controllers.MenuController#editDo','127.0.0.1','菜单名称:订单','ed822b0fc0fb491d84f088e53e80ec36',1471660278,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (9,'超级管理员','aop.after','编辑菜单','cn.wizzer.modules.back.sys.controllers.MenuController#editDo','127.0.0.1','菜单名称:订单管理','ed822b0fc0fb491d84f088e53e80ec36',1471660295,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (10,'超级管理员','aop.after','新建菜单','cn.wizzer.modules.back.sys.controllers.MenuController#addDo','127.0.0.1','菜单名称:商品','ed822b0fc0fb491d84f088e53e80ec36',1471660380,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (11,'超级管理员','aop.after','删除菜单','cn.wizzer.modules.back.sys.controllers.MenuController#delete','127.0.0.1','菜单名称:商品','ed822b0fc0fb491d84f088e53e80ec36',1471660390,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (12,'超级管理员','aop.after','新建菜单','cn.wizzer.modules.back.sys.controllers.MenuController#addDo','127.0.0.1','菜单名称:商品','ed822b0fc0fb491d84f088e53e80ec36',1471660413,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (13,'超级管理员','aop.after','新建菜单','cn.wizzer.modules.back.sys.controllers.MenuController#addDo','127.0.0.1','菜单名称:商品管理','ed822b0fc0fb491d84f088e53e80ec36',1471660485,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (14,'超级管理员','aop.after','新建菜单','cn.wizzer.modules.back.sys.controllers.MenuController#addDo','127.0.0.1','菜单名称:商品分类','ed822b0fc0fb491d84f088e53e80ec36',1471660523,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (15,'超级管理员','aop.after','修改角色菜单','cn.wizzer.modules.back.sys.controllers.RoleController#editMenuDo','127.0.0.1','角色名称:系统管理员,菜单ID:b0edc6861a494b79b97990dc05f0a524,e4256d7b0ffc4a02906cf900322b6213,b19b23b0459a4754bf1fb8cb234450f2,4dc997fef71e4862b9db22de8e99a618,9f20a757a6bc40ddbb650c70debbf660,f426468abf714b1599729f8c36ebbb0d,1734e586e96941268a4c5248b593cef9,6bb17a41f6394ed0a8a6faf5ff781354,56d0658c5a8848818ac05e8ffa5c0570,ce709456e867425297955b3c40406d7e,3099f497480c4b1987bce3f3a26c3fb4,4cd8e4e9519e4cff95465194fdcc8d88,234f8ec3c2bc42bf9f6202aecae36fd6,c3a44b478d3241b899b9c3f4611bc2b6,fd63a8e389e04ff3a86c3cea53a3b9d5,7c040dfd8db347e5956a3bc1764653dc,17e1ee23ca1443f1bc886c2f5eb7c24b,2275cb125710414e91b617dd7c62f12c,0a972ce655cb4c84809d58668b655900,fc52d5284b8f4522802383c1ef732242,2cb327ad59b140828fd26eb2a46cb948,dd965b2c1dfd493fb5efc7e4bcac99d4,30a5e70a1456447ebf90b5546e9bc321,2a63040409094f1e9dc535dd78ce15b7,0706112ff5dc46e388064a99bcdb0561,e864c78aba63448892cbcb6a3a7f4da7,ff6cd243a77c4ae98dacf6149c816c75,733d3f35d49f45af99ca9220048583ba,bcf64d623fdd4519ae345b7a08c071a1,66cc21d7ce104dd6877cbce114c59fb3,309dc29ad3c34408a68df8f867a5c9ff,96554b09a2dd4f82bab7546fa59acd35,d568f4c2b687404e8aec7b9edcae5767,2fab774f8b6d40cb9d7e187babab2d91,45d958ca78304f25b51f6c71cf66f6d8,44da90bc76a5419a841f4924333f7a66,9a9557177d334c209cf73c3817fe3b63,0a43d291e0c94ad88c8b690009279e34,5244f5c38eb24b918e9ad64d456daa38,6afc5075913d4df4b44a6476080e35a0,1385ae887e5c4b8aa33fbf228be7f907,e6b6224617b04090a76e46a4b048fb96,3888f05aa4064f788ba7ec51c495ce7c,cabbe834a7474675b899e8442b5c2604,a11163584dfe456cbfd6fb2d4b74391b,c76a84f871d047db955dd1465c845ac1,134b5979dad94771a195e0e7b0d6c851,16b66be4c9e84bda9d62ff2df7567179,6476498b650a4b65a3d379835a9d5c1d,20c8806cdc514214a15c72057e72111a,933317a78b6e459c86e8b03d29439b31,26ec62ec925749dc8fe55e8d685451a5,1f1f85f35f4f4e00a3ee7d577921287b,5926c67acc1e449186ffa45e080305b4,e09245fc786a48cf9f28a23e324676d6,003666ab030f41c8a3b35271969798a6,b47a88f6a2834b50a1ef4dd2a372f2d6,84b41eaf93e642d68090587b56d4a82e,f1b57473a120460babfb34606baaa1f6,5a8c44b64afe488a8221edf0f7e8e5e5,ac929f03691246e6aa3f5969b2f46d8e,e2e7a45fde97405ab8adc3ec7d7cdf3d,08be9decbd7d449d8efeb1f231e914a4,f37c31a5040c4884b8a1010731f6a479,acb7ac63d9324612aa3d8c953c5d984e,89fba0fc3f9e4ad6b225f32584a72ffd,c1a47876dcea454dbfd271bf26e18317,d8a9de9b65ad47df9f8c118f665c1248,e1967df962174f859e76b18828573aaf,86b07961b0694f91be61d3463d3b3795,d5f3609357a5434fbf11a509cc072f22,5903dd4206614e25861da33c23612a0f,5b05260bdb2b45af995edfcbe9331f6c,0e96bb988b264601a14a065d268ee91b,7ab0d4a21d8c4eeabd45ef95000d21bf,fd81e5e3b8954ff49e5ebc8c61493ab6,81b21ca9ca654db896370c111b856ae0,cdeaa20fdbc342ab998df3cecb266720,ae17d0bebe9e422eb7ca7045d2544552,276163572a80405c83018fed10a64552,0925f125fa3e42fba3fd9f83f5420216,effafc203b78458d8113f32a8bec3945,f3db385ecb3e49b0bfbf23bc0e0c1024,d023bcd5f5534de4b0e7c8aa3851c7bf,cb506d56a4e941c69123377d5c96cdc1,1eebb4a306394c939df85bb37ede70cf,3527e3fa6ca7496388c667a38b3b9439,5dd9af9364964dd783ce59fc55932c89,a44aed22cc8744eb91e51d1eed639345,6d7c30c07ab14018875bb1517c4548af,d00dcadae798449e800d336592a2f782,c3cb484d3f2a400f87fd48e76c557006,abe10ff856504b8a9d9d3ed3bec8cd19,1b6a9b65915d4f3a9e6de74c44bd5c81,02e86a61e99746bea34236ea73dd52a5,d920314e925c451da6d881e7a29743b7,d1e991ad38a8424daf9f7eb000ee27f4,73a29d3f99224426b5a87c92da122275,6b6de8c720c645a1808e1c3e9ccbfc90,b2631bbdbf824cc4b74d819c87962c0d,4781372b00bb4d52b429b58e72b80c68,e461c62a1d5441619cd35612f3b40691,f6fba69c3b704d79834b8bd2cc753729,50ba60ee650e4c739e6abc3ab71e4960,6075fc0cf0ef441b9d93cc3cab3445bf,33aed9298643424783116e0cf0f7fcbe,ef9f436c61654ec09efbfa79a40061cf,17500ef3a9e44b4fabb240162a164fcb,3f330d729ca34dc9825c46122be1bfae,9822bafbe3454dfd8e8b974ebc304d03,7db6207d0dab4d6e95a7eee4f2efe875,31ed2243077c44448cce26abfd5ae574,7125a72beee34b21ab3df9bf01b7bce6,68cdbf694f71445c8587a20234d6fe31,077cb6be4c7c41cc8955ee045a4f0286,36e0faf5062b4f6b95d4167cbb1f8fea,3c24111091ad4a70ad2d9cc361311d2f','ed822b0fc0fb491d84f088e53e80ec36',1471660551,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (16,'超级管理员','info','用户登出','cn.wizzer.modules.back.sys.controllers.LoginController#logout','127.0.0.1','退出系统！','ed822b0fc0fb491d84f088e53e80ec36',1471660552,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (17,'超级管理员','info','用户登陆','cn.wizzer.modules.back.sys.controllers.LoginController#doLogin','127.0.0.1','成功登录系统！','ed822b0fc0fb491d84f088e53e80ec36',1471660553,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (18,'超级管理员','info','用户登陆','cn.wizzer.modules.back.sys.controllers.LoginController#doLogin','127.0.0.1','成功登录系统！','ed822b0fc0fb491d84f088e53e80ec36',1471660759,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (19,'超级管理员','info','用户登陆','cn.wizzer.modules.back.sys.controllers.LoginController#doLogin','127.0.0.1','成功登录系统！','ed822b0fc0fb491d84f088e53e80ec36',1471660822,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (20,'超级管理员','aop.after','新建商品分类','cn.wizzer.modules.back.we.controllers.WeGoodsClassController#addDo','127.0.0.1','分类名称:果干类','ed822b0fc0fb491d84f088e53e80ec36',1471660957,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (21,'超级管理员','aop.after','新建商品分类','cn.wizzer.modules.back.we.controllers.WeGoodsClassController#addDo','127.0.0.1','分类名称:草莓干','ed822b0fc0fb491d84f088e53e80ec36',1471660971,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (22,'超级管理员','aop.after','新建商品分类','cn.wizzer.modules.back.we.controllers.WeGoodsClassController#addDo','127.0.0.1','分类名称:肉类','ed822b0fc0fb491d84f088e53e80ec36',1471660982,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (23,'超级管理员','aop.after','删除商品分类','cn.wizzer.modules.back.we.controllers.WeGoodsClassController#delete','127.0.0.1','分类名称:草莓干','ed822b0fc0fb491d84f088e53e80ec36',1471660990,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (24,'超级管理员','aop.after','新建栏目','cn.wizzer.modules.back.cms.controllers.CmsChannelController#addDo','127.0.0.1','栏目名称:测试栏目1','ed822b0fc0fb491d84f088e53e80ec36',1471663029,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (25,'超级管理员','aop.after','新建栏目','cn.wizzer.modules.back.cms.controllers.CmsChannelController#addDo','127.0.0.1','栏目名称:测试栏目2','ed822b0fc0fb491d84f088e53e80ec36',1471663035,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (26,'超级管理员','aop.after','编辑栏目','cn.wizzer.modules.back.cms.controllers.CmsChannelController#editDo','127.0.0.1','栏目名称:公司信息','ed822b0fc0fb491d84f088e53e80ec36',1471663305,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (27,'超级管理员','aop.after','编辑栏目','cn.wizzer.modules.back.cms.controllers.CmsChannelController#editDo','127.0.0.1','栏目名称:产品介绍','ed822b0fc0fb491d84f088e53e80ec36',1471663316,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (28,'超级管理员','aop.after','编辑栏目','cn.wizzer.modules.back.cms.controllers.CmsChannelController#editDo','127.0.0.1','栏目名称:公司介绍','ed822b0fc0fb491d84f088e53e80ec36',1471663325,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (29,'超级管理员','aop.after','添加文章','cn.wizzer.modules.back.cms.controllers.CmsArticleController#addDo','127.0.0.1','文章标题:公司资质','ed822b0fc0fb491d84f088e53e80ec36',1471663557,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (30,'超级管理员','aop.after','添加文章','cn.wizzer.modules.back.cms.controllers.CmsArticleController#addDo','127.0.0.1','文章标题:联系我','ed822b0fc0fb491d84f088e53e80ec36',1471663764,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (31,'超级管理员','aop.after','编辑栏目','cn.wizzer.modules.back.cms.controllers.CmsChannelController#editDo','127.0.0.1','栏目名称:公司简介','ed822b0fc0fb491d84f088e53e80ec36',1471663865,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (32,'超级管理员','aop.after','修改站点','cn.wizzer.modules.back.cms.controllers.CmsSiteController#editDo','127.0.0.1','微商城','ed822b0fc0fb491d84f088e53e80ec36',1471664895,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (33,'超级管理员','info','用户登陆','cn.wizzer.modules.back.sys.controllers.LoginController#doLogin','127.0.0.1','成功登录系统！','ed822b0fc0fb491d84f088e53e80ec36',1471673920,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (34,'超级管理员','aop.after','添加文章','cn.wizzer.modules.back.cms.controllers.CmsArticleController#editDo','127.0.0.1','文章标题:联系我','ed822b0fc0fb491d84f088e53e80ec36',1471680945,NULL);
insert  into `sys_log`(`id`,`nickname`,`type`,`tag`,`src`,`ip`,`msg`,`opBy`,`opAt`,`delFlag`) values (35,'超级管理员','aop.after','添加文章','cn.wizzer.modules.back.cms.controllers.CmsArticleController#addDo','127.0.0.1','文章标题:产品1','ed822b0fc0fb491d84f088e53e80ec36',1471681319,NULL);

/*Table structure for table `sys_menu` */

CREATE TABLE `sys_menu` (
  `id` varchar(32) NOT NULL DEFAULT '' COMMENT 'ID',
  `parentId` varchar(32) DEFAULT NULL COMMENT '父级ID',
  `path` varchar(100) DEFAULT NULL COMMENT '树路径',
  `name` varchar(100) DEFAULT NULL COMMENT '菜单名称',
  `aliasName` varchar(100) DEFAULT NULL COMMENT '菜单别名',
  `type` varchar(10) DEFAULT NULL COMMENT '资源类型',
  `href` varchar(255) DEFAULT NULL COMMENT '菜单链接',
  `target` varchar(50) DEFAULT NULL COMMENT '打开方式',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `isShow` tinyint(1) DEFAULT NULL COMMENT '是否显示',
  `disabled` tinyint(1) DEFAULT NULL COMMENT '是否禁用',
  `permission` varchar(255) DEFAULT NULL COMMENT '权限标识',
  `note` varchar(255) DEFAULT NULL COMMENT '菜单介绍',
  `location` int(32) DEFAULT NULL COMMENT '排序字段',
  `hasChildren` tinyint(1) DEFAULT NULL COMMENT '有子节点',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`),
  UNIQUE KEY `INDEX_SYS_MENU_PATH` (`path`),
  UNIQUE KEY `INDEX_SYS_MENU_PREM` (`permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('003666ab030f41c8a3b35271969798a6','e09245fc786a48cf9f28a23e324676d6','0001000100010001','添加单位','Add','data',NULL,NULL,NULL,0,0,'sys.manager.unit.add',NULL,4,0,'',1471658661,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('02e86a61e99746bea34236ea73dd52a5','','0003','CMS','CMS','menu','','','',1,0,'cms',NULL,9,1,'1a19ef09b12344b4a797d6e6dfe7fb29',1468895671,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('0706112ff5dc46e388064a99bcdb0561','4cd8e4e9519e4cff95465194fdcc8d88','000200030004','关键词回复','Keyword','menu','/private/wx/reply/conf/keyword','data-pjax','',1,0,'wx.reply.keyword',NULL,10,0,'',1467472362,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('077cb6be4c7c41cc8955ee045a4f0286','68cdbf694f71445c8587a20234d6fe31','0003000300020001','添加链接','Add','data','','','',0,0,'cms.link.link.add',NULL,47,0,'1a19ef09b12344b4a797d6e6dfe7fb29',1468897043,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('08be9decbd7d449d8efeb1f231e914a4','5926c67acc1e449186ffa45e080305b4','000100010003','角色管理','Role','menu','/private/sys/role','data-pjax',NULL,1,0,'sys.manager.role',NULL,11,0,'',1471658661,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('0925f125fa3e42fba3fd9f83f5420216','ae17d0bebe9e422eb7ca7045d2544552','0001000100070002','修改任务','Edit','data',NULL,NULL,NULL,0,0,'sys.manager.task.edit',NULL,29,0,'',1471658662,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('0a43d291e0c94ad88c8b690009279e34','2fab774f8b6d40cb9d7e187babab2d91','0002000400020004','保存排序','Save','data','','','',0,0,'wx.conf.menu.sort',NULL,0,0,'',1467474314,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('0a972ce655cb4c84809d58668b655900','17e1ee23ca1443f1bc886c2f5eb7c24b','0002000300020002','修改图文','Edit','data','','','',0,0,'wx.reply.news.edit',NULL,0,0,'',1467473596,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('0e96bb988b264601a14a065d268ee91b','5b05260bdb2b45af995edfcbe9331f6c','0001000100050001','添加参数','Add','data',NULL,NULL,NULL,0,0,'sys.manager.conf.add',NULL,22,0,'',1471658661,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('134b5979dad94771a195e0e7b0d6c851','','0004','商城',NULL,'menu','','','',1,0,'we',NULL,57,1,'ed822b0fc0fb491d84f088e53e80ec36',1471658841,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('1385ae887e5c4b8aa33fbf228be7f907','6afc5075913d4df4b44a6476080e35a0','000200050001','模板编号','Id','menu','/private/wx/tpl/id','data-pjax','',1,0,'wx.tpl.id',NULL,51,0,'',1470406854,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('16b66be4c9e84bda9d62ff2df7567179','134b5979dad94771a195e0e7b0d6c851','00040001','订单',NULL,'menu','','','ti-shopping-cart',1,0,'we.order',NULL,58,1,'ed822b0fc0fb491d84f088e53e80ec36',1471660278,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('1734e586e96941268a4c5248b593cef9','f426468abf714b1599729f8c36ebbb0d','0002000200010001','回复消息','Reply','data','','','',0,0,'wx.msg.user.reply',NULL,0,0,'',1467473127,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('17500ef3a9e44b4fabb240162a164fcb','6075fc0cf0ef441b9d93cc3cab3445bf','0003000200020003','删除文章','Delete','data','','','',0,0,'cms.content.article.delete',NULL,40,0,'1a19ef09b12344b4a797d6e6dfe7fb29',1468896170,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('17e1ee23ca1443f1bc886c2f5eb7c24b','4cd8e4e9519e4cff95465194fdcc8d88','000200030002','图文内容','News','menu','/private/wx/reply/news','data-pjax','',1,0,'wx.reply.news',NULL,8,0,'',1467471926,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('1b6a9b65915d4f3a9e6de74c44bd5c81','d00dcadae798449e800d336592a2f782','0001000100100003','删除字典','Delete','data',NULL,NULL,NULL,0,0,'sys.manager.dict.delete',NULL,42,0,'',1471658662,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('1eebb4a306394c939df85bb37ede70cf','f3db385ecb3e49b0bfbf23bc0e0c1024','0001000100080003','删除路由','Delete','data',NULL,NULL,NULL,0,0,'sys.manager.route.delete',NULL,34,0,'',1471658662,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('1f1f85f35f4f4e00a3ee7d577921287b','','0001','系统','System','menu','','','',1,0,'sys','系统',10,1,'',1471658661,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('20c8806cdc514214a15c72057e72111a','134b5979dad94771a195e0e7b0d6c851','00040002','商品',NULL,'menu','','','ti-gift',1,0,'we.goods',NULL,60,1,'ed822b0fc0fb491d84f088e53e80ec36',1471660413,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('2275cb125710414e91b617dd7c62f12c','17e1ee23ca1443f1bc886c2f5eb7c24b','0002000300020001','添加图文','add','data','','','',0,0,'wx.reply.news.add',NULL,0,0,'',1467473585,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('234f8ec3c2bc42bf9f6202aecae36fd6','4cd8e4e9519e4cff95465194fdcc8d88','000200030001','文本内容','Txt','menu','/private/wx/reply/txt','data-pjax','',1,0,'wx.reply.txt',NULL,7,0,'',1467471884,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('26ec62ec925749dc8fe55e8d685451a5','20c8806cdc514214a15c72057e72111a','000400020002','商品分类',NULL,'menu','/private/we/goods/class','data-pjax','',1,0,'we.goods.class',NULL,62,0,'ed822b0fc0fb491d84f088e53e80ec36',1471660523,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('276163572a80405c83018fed10a64552','ae17d0bebe9e422eb7ca7045d2544552','0001000100070001','添加任务','Add','data',NULL,NULL,NULL,0,0,'sys.manager.task.add',NULL,28,0,'',1471658662,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('2a63040409094f1e9dc535dd78ce15b7','2cb327ad59b140828fd26eb2a46cb948','0002000300030003','删除绑定','Delete','data','','','',0,0,'wx.reply.follow.delete',NULL,0,0,'',1467474080,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('2cb327ad59b140828fd26eb2a46cb948','4cd8e4e9519e4cff95465194fdcc8d88','000200030003','关注自动回复','Follow','menu','/private/wx/reply/conf/follow','data-pjax','',1,0,'wx.reply.follow',NULL,9,0,'',1467472280,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('2fab774f8b6d40cb9d7e187babab2d91','bcf64d623fdd4519ae345b7a08c071a1','000200040002','菜单配置','Menu','menu','/private/wx/conf/menu','data-pjax','',1,0,'wx.conf.menu',NULL,13,0,'',1467472649,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('3099f497480c4b1987bce3f3a26c3fb4','6bb17a41f6394ed0a8a6faf5ff781354','0002000200020003','群发消息','Push','data','','','',0,0,'wx.msg.mass.pushNews',NULL,0,0,'',1467473400,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('309dc29ad3c34408a68df8f867a5c9ff','66cc21d7ce104dd6877cbce114c59fb3','0002000400010001','添加帐号','Add','data','','','',0,0,'wx.conf.account.add',NULL,0,0,'',1467474187,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('30a5e70a1456447ebf90b5546e9bc321','2cb327ad59b140828fd26eb2a46cb948','0002000300030002','修改绑定','Edit','data','','','',0,0,'wx.reply.follow.edit',NULL,0,0,'',1467474056,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('31ed2243077c44448cce26abfd5ae574','9822bafbe3454dfd8e8b974ebc304d03','0003000300010002','修改分类','Edit','data','','','',0,0,'cms.link.class.edit',NULL,44,0,'1a19ef09b12344b4a797d6e6dfe7fb29',1468896957,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('33aed9298643424783116e0cf0f7fcbe','6075fc0cf0ef441b9d93cc3cab3445bf','0003000200020001','添加文章','Add','data','','','',0,0,'cms.content.article.add',NULL,38,0,'1a19ef09b12344b4a797d6e6dfe7fb29',1468896151,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('3527e3fa6ca7496388c667a38b3b9439','5926c67acc1e449186ffa45e080305b4','000100010009','应用管理','App','menu','/private/sys/api','data-pjax',NULL,1,0,'sys.manager.api',NULL,35,0,'',1471658662,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('36e0faf5062b4f6b95d4167cbb1f8fea','68cdbf694f71445c8587a20234d6fe31','0003000300020002','修改链接','Edit','data','','','',0,0,'cms.link.link.edit',NULL,48,0,'1a19ef09b12344b4a797d6e6dfe7fb29',1468897051,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('3888f05aa4064f788ba7ec51c495ce7c','1385ae887e5c4b8aa33fbf228be7f907','0002000500010002','删除编号','Delete','data','','','',0,0,'wx.tpl.id.delete',NULL,55,0,'',1470407068,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('3c24111091ad4a70ad2d9cc361311d2f','68cdbf694f71445c8587a20234d6fe31','0003000300020003','删除链接','Delete','data','','','',0,0,'cms.link.link.delete',NULL,49,0,'1a19ef09b12344b4a797d6e6dfe7fb29',1468897060,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('3f330d729ca34dc9825c46122be1bfae','02e86a61e99746bea34236ea73dd52a5','00030003','广告链接','AD','menu','','','ti-link',1,0,'cms.link',NULL,41,1,'1a19ef09b12344b4a797d6e6dfe7fb29',1468896230,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('44da90bc76a5419a841f4924333f7a66','2fab774f8b6d40cb9d7e187babab2d91','0002000400020002','修改菜单','Edit','data','','','',0,0,'wx.conf.menu.edit',NULL,0,0,'',1467474294,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('45d958ca78304f25b51f6c71cf66f6d8','2fab774f8b6d40cb9d7e187babab2d91','0002000400020001','添加菜单','Add','data','','','',0,0,'wx.conf.menu.add',NULL,0,0,'',1467474283,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('4781372b00bb4d52b429b58e72b80c68','b2631bbdbf824cc4b74d819c87962c0d','0003000200010001','添加栏目','Add','data','','','',0,0,'cms.content.channel.add',NULL,33,0,'1a19ef09b12344b4a797d6e6dfe7fb29',1468896049,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('4cd8e4e9519e4cff95465194fdcc8d88','b0edc6861a494b79b97990dc05f0a524','00020003','自动回复','AutoReply','menu','','','ti-back-left',1,0,'wx.reply',NULL,6,1,'',1467471610,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('4dc997fef71e4862b9db22de8e99a618','b19b23b0459a4754bf1fb8cb234450f2','0002000100010001','同步会员信息','Sync','data','','','',0,0,'wx.user.list.sync',NULL,0,0,'',1467473044,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('50ba60ee650e4c739e6abc3ab71e4960','b2631bbdbf824cc4b74d819c87962c0d','0003000200010004','栏目排序','Sort','data','','','',0,0,'cms.content.channel.sort',NULL,36,0,'1a19ef09b12344b4a797d6e6dfe7fb29',1468896092,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('5244f5c38eb24b918e9ad64d456daa38','2fab774f8b6d40cb9d7e187babab2d91','0002000400020005','推送到微信','Push','data','','','',0,0,'wx.conf.menu.push',NULL,0,0,'',1467474330,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('56d0658c5a8848818ac05e8ffa5c0570','6bb17a41f6394ed0a8a6faf5ff781354','0002000200020001','添加图文','Add','data','','','',0,0,'wx.msg.mass.addNews',NULL,0,0,'',1467473338,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('5903dd4206614e25861da33c23612a0f','e1967df962174f859e76b18828573aaf','0001000100040003','删除菜单','Delete','data',NULL,NULL,NULL,0,0,'sys.manager.menu.delete',NULL,20,0,'',1471658661,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('5926c67acc1e449186ffa45e080305b4','1f1f85f35f4f4e00a3ee7d577921287b','00010001','系统管理','Manager','menu','','','ti-settings',1,0,'sys.manager','系统管理',2,1,'',1471658661,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('5a8c44b64afe488a8221edf0f7e8e5e5','f1b57473a120460babfb34606baaa1f6','0001000100020001','添加用户','Add','data',NULL,NULL,NULL,0,0,'sys.manager.user.add',NULL,8,0,'',1471658661,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('5b05260bdb2b45af995edfcbe9331f6c','5926c67acc1e449186ffa45e080305b4','000100010005','系统参数','Param','menu','/private/sys/conf','data-pjax',NULL,1,0,'sys.manager.conf',NULL,21,0,'',1471658661,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('5dd9af9364964dd783ce59fc55932c89','3527e3fa6ca7496388c667a38b3b9439','0001000100090001','添加应用','Add','data',NULL,NULL,NULL,0,0,'sys.manager.api.add',NULL,36,0,'',1471658662,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('6075fc0cf0ef441b9d93cc3cab3445bf','6b6de8c720c645a1808e1c3e9ccbfc90','000300020002','文章管理','Article','menu','/private/cms/article','data-pjax','',1,0,'cms.content.article',NULL,37,0,'1a19ef09b12344b4a797d6e6dfe7fb29',1468896141,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('6476498b650a4b65a3d379835a9d5c1d','16b66be4c9e84bda9d62ff2df7567179','000400010001','订单管理',NULL,'menu','/private/we/order/index','data-pjax','',1,0,'we.order.list',NULL,59,0,'ed822b0fc0fb491d84f088e53e80ec36',1471660295,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('66cc21d7ce104dd6877cbce114c59fb3','bcf64d623fdd4519ae345b7a08c071a1','000200040001','帐号配置','Account','menu','/private/wx/conf/account','data-pjax','',1,0,'wx.conf.account',NULL,12,0,'',1467472624,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('68cdbf694f71445c8587a20234d6fe31','3f330d729ca34dc9825c46122be1bfae','000300030002','链接管理','Link','menu','/private/cms/link/link','data-pjax','',1,0,'cms.link.link',NULL,46,0,'1a19ef09b12344b4a797d6e6dfe7fb29',1468897031,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('6afc5075913d4df4b44a6476080e35a0','b0edc6861a494b79b97990dc05f0a524','00020005','模板消息','Template','menu','','','ti-notepad',1,0,'wx.tpl',NULL,50,1,'',1470406797,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('6b6de8c720c645a1808e1c3e9ccbfc90','02e86a61e99746bea34236ea73dd52a5','00030002','内容管理','Content','menu','','','ti-pencil-alt',1,0,'cms.content',NULL,31,1,'1a19ef09b12344b4a797d6e6dfe7fb29',1468895990,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('6bb17a41f6394ed0a8a6faf5ff781354','9f20a757a6bc40ddbb650c70debbf660','000200020002','群发消息','Mass','menu','/private/wx/msg/mass','data-pjax','',1,0,'wx.msg.mass',NULL,5,0,'',1467471561,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('6d7c30c07ab14018875bb1517c4548af','3527e3fa6ca7496388c667a38b3b9439','0001000100090003','删除应用','Delete','data',NULL,NULL,NULL,0,0,'sys.manager.api.delete',NULL,38,0,'',1471658662,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('7125a72beee34b21ab3df9bf01b7bce6','9822bafbe3454dfd8e8b974ebc304d03','0003000300010003','删除分类','Delete','data','','','',0,0,'cms.link.class.delete',NULL,45,0,'1a19ef09b12344b4a797d6e6dfe7fb29',1468896968,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('733d3f35d49f45af99ca9220048583ba','0706112ff5dc46e388064a99bcdb0561','0002000300040003','删除绑定','Delete','data','','','',0,0,'wx.reply.keyword.delete',NULL,0,0,'',1467474136,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('73a29d3f99224426b5a87c92da122275','d1e991ad38a8424daf9f7eb000ee27f4','0003000100010001','保存配置','Save','data','','','',0,0,'cms.site.settings.save',NULL,30,0,'1a19ef09b12344b4a797d6e6dfe7fb29',1468895899,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('7ab0d4a21d8c4eeabd45ef95000d21bf','5b05260bdb2b45af995edfcbe9331f6c','0001000100050002','修改参数','Edit','data',NULL,NULL,NULL,0,0,'sys.manager.conf.edit',NULL,23,0,'',1471658661,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('7c040dfd8db347e5956a3bc1764653dc','234f8ec3c2bc42bf9f6202aecae36fd6','0002000300010003','删除文本','Delete','data','','','',0,0,'wx.reply.txt.delete',NULL,0,0,'',1467473540,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('7db6207d0dab4d6e95a7eee4f2efe875','9822bafbe3454dfd8e8b974ebc304d03','0003000300010001','添加分类','Add','data','','','',0,0,'cms.link.class.add',NULL,43,0,'1a19ef09b12344b4a797d6e6dfe7fb29',1468896947,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('81b21ca9ca654db896370c111b856ae0','5926c67acc1e449186ffa45e080305b4','000100010006','日志管理','Log','menu','/private/sys/log','data-pjax',NULL,1,0,'sys.manager.log',NULL,25,0,'',1471658661,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('84b41eaf93e642d68090587b56d4a82e','e09245fc786a48cf9f28a23e324676d6','0001000100010003','删除单位','Delete','data',NULL,NULL,NULL,0,0,'sys.manager.unit.delete',NULL,6,0,'',1471658661,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('86b07961b0694f91be61d3463d3b3795','e1967df962174f859e76b18828573aaf','0001000100040001','添加菜单','Add','data',NULL,NULL,NULL,0,0,'sys.manager.menu.add',NULL,18,0,'',1471658661,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('89fba0fc3f9e4ad6b225f32584a72ffd','08be9decbd7d449d8efeb1f231e914a4','0001000100030003','删除角色','Delete','data',NULL,NULL,NULL,0,0,'sys.manager.role.delete',NULL,14,0,'',1471658661,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('933317a78b6e459c86e8b03d29439b31','20c8806cdc514214a15c72057e72111a','000400020001','商品管理',NULL,'menu','/private/we/goods/index','data-pjax','',1,0,'we.goods.goods',NULL,61,0,'ed822b0fc0fb491d84f088e53e80ec36',1471660485,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('96554b09a2dd4f82bab7546fa59acd35','66cc21d7ce104dd6877cbce114c59fb3','0002000400010002','修改帐号','Edit','data','','','',0,0,'wx.conf.account.edit',NULL,0,0,'',1467474197,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('9822bafbe3454dfd8e8b974ebc304d03','3f330d729ca34dc9825c46122be1bfae','000300030001','链接分类','Class','menu','/private/cms/link/class','data-pjax','',1,0,'cms.link.class',NULL,42,0,'1a19ef09b12344b4a797d6e6dfe7fb29',1468896932,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('9a9557177d334c209cf73c3817fe3b63','2fab774f8b6d40cb9d7e187babab2d91','0002000400020003','删除菜单','Delete','data','','','',0,0,'wx.conf.menu.delete',NULL,0,0,'',1467474304,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('9f20a757a6bc40ddbb650c70debbf660','b0edc6861a494b79b97990dc05f0a524','00020002','消息管理','Message','menu','','','ti-pencil-alt',1,0,'wx.msg',NULL,3,1,'',1467471415,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('a11163584dfe456cbfd6fb2d4b74391b','cabbe834a7474675b899e8442b5c2604','0002000500020001','获取列表','Get','data','','','',0,0,'wx.tpl.list.get',NULL,56,0,'',1470407390,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('a44aed22cc8744eb91e51d1eed639345','3527e3fa6ca7496388c667a38b3b9439','0001000100090002','修改应用','Edit','data',NULL,NULL,NULL,0,0,'sys.manager.api.edit',NULL,37,0,'',1471658662,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('abe10ff856504b8a9d9d3ed3bec8cd19','d00dcadae798449e800d336592a2f782','0001000100100002','修改字典','Edit','data',NULL,NULL,NULL,0,0,'sys.manager.dict.edit',NULL,41,0,'',1471658662,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('ac929f03691246e6aa3f5969b2f46d8e','f1b57473a120460babfb34606baaa1f6','0001000100020002','修改用户','Edit','data',NULL,NULL,NULL,0,0,'sys.manager.user.edit',NULL,9,0,'',1471658661,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('acb7ac63d9324612aa3d8c953c5d984e','08be9decbd7d449d8efeb1f231e914a4','0001000100030002','修改角色','Edit','data',NULL,NULL,NULL,0,0,'sys.manager.role.edit',NULL,13,0,'',1471658661,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('ae17d0bebe9e422eb7ca7045d2544552','5926c67acc1e449186ffa45e080305b4','000100010007','定时任务','Task','menu','/private/sys/task','data-pjax',NULL,1,0,'sys.manager.task',NULL,27,0,'',1471658661,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('b0edc6861a494b79b97990dc05f0a524','','0002','微信','Wechat','menu','','','',1,0,'wx',NULL,8,1,'',1467471229,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('b19b23b0459a4754bf1fb8cb234450f2','e4256d7b0ffc4a02906cf900322b6213','000200010001','会员列表','List','menu','/private/wx/user/index','data-pjax','',1,0,'wx.user.list',NULL,2,0,'',1467471357,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('b2631bbdbf824cc4b74d819c87962c0d','6b6de8c720c645a1808e1c3e9ccbfc90','000300020001','栏目管理','Channel','menu','/private/cms/channel','data-pjax','',1,0,'cms.content.channel',NULL,32,0,'1a19ef09b12344b4a797d6e6dfe7fb29',1468896018,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('b47a88f6a2834b50a1ef4dd2a372f2d6','e09245fc786a48cf9f28a23e324676d6','0001000100010002','修改单位','Edit','data',NULL,NULL,NULL,0,0,'sys.manager.unit.edit',NULL,5,0,'',1471658661,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('bcf64d623fdd4519ae345b7a08c071a1','b0edc6861a494b79b97990dc05f0a524','00020004','微信配置','Config','menu','','','fa fa-weixin',1,0,'wx.conf',NULL,11,1,'',1467472498,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('c1a47876dcea454dbfd271bf26e18317','08be9decbd7d449d8efeb1f231e914a4','0001000100030004','分配菜单','SetMenu','data',NULL,NULL,NULL,0,0,'sys.manager.role.menu',NULL,15,0,'',1471658661,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('c3a44b478d3241b899b9c3f4611bc2b6','234f8ec3c2bc42bf9f6202aecae36fd6','0002000300010001','添加文本','Add','data','','','',0,0,'wx.reply.txt.add',NULL,0,0,'',1467473460,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('c3cb484d3f2a400f87fd48e76c557006','d00dcadae798449e800d336592a2f782','0001000100100001','添加字典','Add','data',NULL,NULL,NULL,0,0,'sys.manager.dict.add',NULL,40,0,'',1471658662,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('c76a84f871d047db955dd1465c845ac1','6afc5075913d4df4b44a6476080e35a0','000200050003','发送记录','Log','menu','/private/wx/tpl/log','data-pjax','',1,0,'wx.tpl.log',NULL,53,0,'',1470406926,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('cabbe834a7474675b899e8442b5c2604','6afc5075913d4df4b44a6476080e35a0','000200050002','模板列表','List','menu','/private/wx/tpl/list','data-pjax','',1,0,'wx.tpl.list',NULL,52,0,'',1470406883,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('cb506d56a4e941c69123377d5c96cdc1','f3db385ecb3e49b0bfbf23bc0e0c1024','0001000100080002','修改路由','Edit','data',NULL,NULL,NULL,0,0,'sys.manager.route.edit',NULL,33,0,'',1471658662,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('cdeaa20fdbc342ab998df3cecb266720','81b21ca9ca654db896370c111b856ae0','0001000100060001','清除日志','Delete','data',NULL,NULL,NULL,0,0,'sys.manager.log.delete',NULL,26,0,'',1471658661,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('ce709456e867425297955b3c40406d7e','6bb17a41f6394ed0a8a6faf5ff781354','0002000200020002','删除图文','Delete','data','','','',0,0,'wx.msg.mass.delNews',NULL,0,0,'',1467473363,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('d00dcadae798449e800d336592a2f782','5926c67acc1e449186ffa45e080305b4','000100010010','数据字典','Dict','menu','/private/sys/dict','data-pjax',NULL,1,0,'sys.manager.dict',NULL,39,0,'',1471658662,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('d023bcd5f5534de4b0e7c8aa3851c7bf','f3db385ecb3e49b0bfbf23bc0e0c1024','0001000100080001','添加路由','Add','data',NULL,NULL,NULL,0,0,'sys.manager.route.add',NULL,32,0,'',1471658662,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('d1e991ad38a8424daf9f7eb000ee27f4','d920314e925c451da6d881e7a29743b7','000300010001','网站配置','Settings','menu','/private/cms/site','data-pjax','',1,0,'cms.site.settings',NULL,29,0,'1a19ef09b12344b4a797d6e6dfe7fb29',1468895881,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('d568f4c2b687404e8aec7b9edcae5767','66cc21d7ce104dd6877cbce114c59fb3','0002000400010003','删除帐号','Delete','data','','','',0,0,'wx.conf.account.delete',NULL,0,0,'',1467474209,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('d5f3609357a5434fbf11a509cc072f22','e1967df962174f859e76b18828573aaf','0001000100040002','修改菜单','Edit','data',NULL,NULL,NULL,0,0,'sys.manager.menu.edit',NULL,19,0,'',1471658661,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('d8a9de9b65ad47df9f8c118f665c1248','08be9decbd7d449d8efeb1f231e914a4','0001000100030005','分配用户','SetUser','data',NULL,NULL,NULL,0,0,'sys.manager.role.user',NULL,16,0,'',1471658661,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('d920314e925c451da6d881e7a29743b7','02e86a61e99746bea34236ea73dd52a5','00030001','站点管理','Site','menu','','','ti-world',1,0,'cms.site',NULL,28,1,'1a19ef09b12344b4a797d6e6dfe7fb29',1468895821,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('dd965b2c1dfd493fb5efc7e4bcac99d4','2cb327ad59b140828fd26eb2a46cb948','0002000300030001','添加绑定','Add','data','','','',0,0,'wx.reply.follow.add',NULL,0,0,'',1467474026,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('e09245fc786a48cf9f28a23e324676d6','5926c67acc1e449186ffa45e080305b4','000100010001','单位管理','Unit','menu','/private/sys/unit','data-pjax',NULL,1,0,'sys.manager.unit',NULL,3,0,'',1471658661,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('e1967df962174f859e76b18828573aaf','5926c67acc1e449186ffa45e080305b4','000100010004','菜单管理','Menu','menu','/private/sys/menu','data-pjax',NULL,1,0,'sys.manager.menu',NULL,17,0,'',1471658661,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('e2e7a45fde97405ab8adc3ec7d7cdf3d','f1b57473a120460babfb34606baaa1f6','0001000100020003','删除用户','Delete','data',NULL,NULL,NULL,0,0,'sys.manager.user.delete',NULL,10,0,'',1471658661,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('e4256d7b0ffc4a02906cf900322b6213','b0edc6861a494b79b97990dc05f0a524','00020001','微信会员','Member','menu','','','fa fa-user',1,0,'wx.user',NULL,1,1,'',1467471292,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('e461c62a1d5441619cd35612f3b40691','b2631bbdbf824cc4b74d819c87962c0d','0003000200010002','修改栏目','Edit','data','','','',0,0,'cms.content.channel.edit',NULL,34,0,'1a19ef09b12344b4a797d6e6dfe7fb29',1468896060,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('e6b6224617b04090a76e46a4b048fb96','1385ae887e5c4b8aa33fbf228be7f907','0002000500010001','添加编号','Add','data','','','',0,0,'wx.tpl.id.add',NULL,54,0,'',1470407055,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('e864c78aba63448892cbcb6a3a7f4da7','0706112ff5dc46e388064a99bcdb0561','0002000300040001','添加绑定','Add','data','','','',0,0,'wx.reply.keyword.add',NULL,0,0,'',1467474113,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('ef9f436c61654ec09efbfa79a40061cf','6075fc0cf0ef441b9d93cc3cab3445bf','0003000200020002','修改文章','Edit','data','','','',0,0,'cms.content.article.edit',NULL,39,0,'1a19ef09b12344b4a797d6e6dfe7fb29',1468896159,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('effafc203b78458d8113f32a8bec3945','ae17d0bebe9e422eb7ca7045d2544552','0001000100070003','删除任务','Delete','data',NULL,NULL,NULL,0,0,'sys.manager.task.delete',NULL,30,0,'',1471658662,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('f1b57473a120460babfb34606baaa1f6','5926c67acc1e449186ffa45e080305b4','000100010002','用户管理','User','menu','/private/sys/user','data-pjax',NULL,1,0,'sys.manager.user',NULL,7,0,'',1471658661,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('f37c31a5040c4884b8a1010731f6a479','08be9decbd7d449d8efeb1f231e914a4','0001000100030001','添加角色','Add','data',NULL,NULL,NULL,0,0,'sys.manager.role.add',NULL,12,0,'',1471658661,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('f3db385ecb3e49b0bfbf23bc0e0c1024','5926c67acc1e449186ffa45e080305b4','000100010008','自定义路由','Route','menu','/private/sys/route','data-pjax',NULL,1,0,'sys.manager.route',NULL,31,0,'',1471658662,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('f426468abf714b1599729f8c36ebbb0d','9f20a757a6bc40ddbb650c70debbf660','000200020001','会员消息','Msg','menu','/private/wx/msg/user','data-pjax','',1,0,'wx.msg.user',NULL,4,1,'',1467471478,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('f6fba69c3b704d79834b8bd2cc753729','b2631bbdbf824cc4b74d819c87962c0d','0003000200010003','删除栏目','Delete','data','','','',0,0,'cms.content.channel.delete',NULL,35,0,'1a19ef09b12344b4a797d6e6dfe7fb29',1468896072,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('fc52d5284b8f4522802383c1ef732242','17e1ee23ca1443f1bc886c2f5eb7c24b','0002000300020003','删除图文','Delete','data','','','',0,0,'wx.reply.news.delete',NULL,0,0,'',1467473606,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('fd63a8e389e04ff3a86c3cea53a3b9d5','234f8ec3c2bc42bf9f6202aecae36fd6','0002000300010002','修改文本','Edit','data','','','',0,0,'wx.reply.txt.edit',NULL,0,0,'',1467473519,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('fd81e5e3b8954ff49e5ebc8c61493ab6','5b05260bdb2b45af995edfcbe9331f6c','0001000100050003','删除参数','Delete','data',NULL,NULL,NULL,0,0,'sys.manager.conf.delete',NULL,24,0,'',1471658661,0);
insert  into `sys_menu`(`id`,`parentId`,`path`,`name`,`aliasName`,`type`,`href`,`target`,`icon`,`isShow`,`disabled`,`permission`,`note`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('ff6cd243a77c4ae98dacf6149c816c75','0706112ff5dc46e388064a99bcdb0561','0002000300040002','修改绑定','Edit','data','','','',0,0,'wx.reply.keyword.edit',NULL,0,0,'',1467474125,0);

/*Table structure for table `sys_role` */

CREATE TABLE `sys_role` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(50) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `aliasName` varchar(50) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `unitid` varchar(32) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`),
  UNIQUE KEY `INDEX_SYS_ROLE_CODE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_role` */

insert  into `sys_role`(`id`,`name`,`code`,`aliasName`,`disabled`,`unitid`,`note`,`opBy`,`opAt`,`delFlag`) values ('2400467753574a64abac5d2bfead00d8','系统管理员','sysadmin','Sysadmin',0,'','System Admin','',1471658662,0);
insert  into `sys_role`(`id`,`name`,`code`,`aliasName`,`disabled`,`unitid`,`note`,`opBy`,`opAt`,`delFlag`) values ('f1fec147eec54acea23b2f6a01d59f8b','公共角色','public','Public',0,'','All user has role','',1471658662,0);

/*Table structure for table `sys_role_menu` */

CREATE TABLE `sys_role_menu` (
  `roleId` varchar(32) DEFAULT NULL,
  `menuId` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_role_menu` */

insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','b0edc6861a494b79b97990dc05f0a524');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','e4256d7b0ffc4a02906cf900322b6213');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','b19b23b0459a4754bf1fb8cb234450f2');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','4dc997fef71e4862b9db22de8e99a618');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','9f20a757a6bc40ddbb650c70debbf660');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','f426468abf714b1599729f8c36ebbb0d');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','1734e586e96941268a4c5248b593cef9');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','6bb17a41f6394ed0a8a6faf5ff781354');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','56d0658c5a8848818ac05e8ffa5c0570');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','ce709456e867425297955b3c40406d7e');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','3099f497480c4b1987bce3f3a26c3fb4');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','4cd8e4e9519e4cff95465194fdcc8d88');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','234f8ec3c2bc42bf9f6202aecae36fd6');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','c3a44b478d3241b899b9c3f4611bc2b6');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','fd63a8e389e04ff3a86c3cea53a3b9d5');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','7c040dfd8db347e5956a3bc1764653dc');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','17e1ee23ca1443f1bc886c2f5eb7c24b');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','2275cb125710414e91b617dd7c62f12c');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','0a972ce655cb4c84809d58668b655900');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','fc52d5284b8f4522802383c1ef732242');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','2cb327ad59b140828fd26eb2a46cb948');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','dd965b2c1dfd493fb5efc7e4bcac99d4');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','30a5e70a1456447ebf90b5546e9bc321');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','2a63040409094f1e9dc535dd78ce15b7');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','0706112ff5dc46e388064a99bcdb0561');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','e864c78aba63448892cbcb6a3a7f4da7');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','ff6cd243a77c4ae98dacf6149c816c75');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','733d3f35d49f45af99ca9220048583ba');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','bcf64d623fdd4519ae345b7a08c071a1');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','66cc21d7ce104dd6877cbce114c59fb3');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','309dc29ad3c34408a68df8f867a5c9ff');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','96554b09a2dd4f82bab7546fa59acd35');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','d568f4c2b687404e8aec7b9edcae5767');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','2fab774f8b6d40cb9d7e187babab2d91');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','45d958ca78304f25b51f6c71cf66f6d8');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','44da90bc76a5419a841f4924333f7a66');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','9a9557177d334c209cf73c3817fe3b63');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','0a43d291e0c94ad88c8b690009279e34');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','5244f5c38eb24b918e9ad64d456daa38');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','6afc5075913d4df4b44a6476080e35a0');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','1385ae887e5c4b8aa33fbf228be7f907');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','e6b6224617b04090a76e46a4b048fb96');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','3888f05aa4064f788ba7ec51c495ce7c');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','cabbe834a7474675b899e8442b5c2604');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','a11163584dfe456cbfd6fb2d4b74391b');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','c76a84f871d047db955dd1465c845ac1');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','134b5979dad94771a195e0e7b0d6c851');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','16b66be4c9e84bda9d62ff2df7567179');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','6476498b650a4b65a3d379835a9d5c1d');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','20c8806cdc514214a15c72057e72111a');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','933317a78b6e459c86e8b03d29439b31');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','26ec62ec925749dc8fe55e8d685451a5');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','1f1f85f35f4f4e00a3ee7d577921287b');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','5926c67acc1e449186ffa45e080305b4');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','e09245fc786a48cf9f28a23e324676d6');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','003666ab030f41c8a3b35271969798a6');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','b47a88f6a2834b50a1ef4dd2a372f2d6');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','84b41eaf93e642d68090587b56d4a82e');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','f1b57473a120460babfb34606baaa1f6');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','5a8c44b64afe488a8221edf0f7e8e5e5');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','ac929f03691246e6aa3f5969b2f46d8e');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','e2e7a45fde97405ab8adc3ec7d7cdf3d');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','08be9decbd7d449d8efeb1f231e914a4');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','f37c31a5040c4884b8a1010731f6a479');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','acb7ac63d9324612aa3d8c953c5d984e');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','89fba0fc3f9e4ad6b225f32584a72ffd');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','c1a47876dcea454dbfd271bf26e18317');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','d8a9de9b65ad47df9f8c118f665c1248');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','e1967df962174f859e76b18828573aaf');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','86b07961b0694f91be61d3463d3b3795');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','d5f3609357a5434fbf11a509cc072f22');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','5903dd4206614e25861da33c23612a0f');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','5b05260bdb2b45af995edfcbe9331f6c');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','0e96bb988b264601a14a065d268ee91b');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','7ab0d4a21d8c4eeabd45ef95000d21bf');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','fd81e5e3b8954ff49e5ebc8c61493ab6');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','81b21ca9ca654db896370c111b856ae0');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','cdeaa20fdbc342ab998df3cecb266720');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','ae17d0bebe9e422eb7ca7045d2544552');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','276163572a80405c83018fed10a64552');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','0925f125fa3e42fba3fd9f83f5420216');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','effafc203b78458d8113f32a8bec3945');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','f3db385ecb3e49b0bfbf23bc0e0c1024');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','d023bcd5f5534de4b0e7c8aa3851c7bf');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','cb506d56a4e941c69123377d5c96cdc1');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','1eebb4a306394c939df85bb37ede70cf');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','3527e3fa6ca7496388c667a38b3b9439');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','5dd9af9364964dd783ce59fc55932c89');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','a44aed22cc8744eb91e51d1eed639345');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','6d7c30c07ab14018875bb1517c4548af');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','d00dcadae798449e800d336592a2f782');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','c3cb484d3f2a400f87fd48e76c557006');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','abe10ff856504b8a9d9d3ed3bec8cd19');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','1b6a9b65915d4f3a9e6de74c44bd5c81');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','02e86a61e99746bea34236ea73dd52a5');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','d920314e925c451da6d881e7a29743b7');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','d1e991ad38a8424daf9f7eb000ee27f4');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','73a29d3f99224426b5a87c92da122275');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','6b6de8c720c645a1808e1c3e9ccbfc90');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','b2631bbdbf824cc4b74d819c87962c0d');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','4781372b00bb4d52b429b58e72b80c68');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','e461c62a1d5441619cd35612f3b40691');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','f6fba69c3b704d79834b8bd2cc753729');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','50ba60ee650e4c739e6abc3ab71e4960');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','6075fc0cf0ef441b9d93cc3cab3445bf');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','33aed9298643424783116e0cf0f7fcbe');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','ef9f436c61654ec09efbfa79a40061cf');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','17500ef3a9e44b4fabb240162a164fcb');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','3f330d729ca34dc9825c46122be1bfae');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','9822bafbe3454dfd8e8b974ebc304d03');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','7db6207d0dab4d6e95a7eee4f2efe875');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','31ed2243077c44448cce26abfd5ae574');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','7125a72beee34b21ab3df9bf01b7bce6');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','68cdbf694f71445c8587a20234d6fe31');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','077cb6be4c7c41cc8955ee045a4f0286');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','36e0faf5062b4f6b95d4167cbb1f8fea');
insert  into `sys_role_menu`(`roleId`,`menuId`) values ('2400467753574a64abac5d2bfead00d8','3c24111091ad4a70ad2d9cc361311d2f');

/*Table structure for table `sys_route` */

CREATE TABLE `sys_route` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `url` varchar(255) DEFAULT NULL COMMENT '原始路径',
  `toUrl` varchar(255) DEFAULT NULL COMMENT '跳转路径',
  `type` varchar(10) DEFAULT NULL COMMENT '转发类型',
  `disabled` tinyint(1) DEFAULT NULL COMMENT '是否禁用',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_route` */

insert  into `sys_route`(`id`,`url`,`toUrl`,`type`,`disabled`,`opBy`,`opAt`,`delFlag`) values ('eee91cfab5554a23a774a3db500d4730','/sysadmin','/private/login','hide',0,'',1471658662,0);

/*Table structure for table `sys_task` */

CREATE TABLE `sys_task` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(50) DEFAULT NULL COMMENT '任务名',
  `jobClass` varchar(255) DEFAULT NULL COMMENT '执行类',
  `note` varchar(255) DEFAULT NULL COMMENT '任务说明',
  `cron` varchar(50) DEFAULT NULL COMMENT '定时规则',
  `data` text COMMENT '执行参数',
  `exeAt` int(20) DEFAULT NULL COMMENT '执行时间',
  `exeResult` text COMMENT '执行结果',
  `disabled` tinyint(1) DEFAULT NULL COMMENT '是否禁用',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_task` */

insert  into `sys_task`(`id`,`name`,`jobClass`,`note`,`cron`,`data`,`exeAt`,`exeResult`,`disabled`,`opBy`,`opAt`,`delFlag`) values ('5ffd81c30fac443487454c38652af769','测试任务','cn.wizzer.common.quartz.job.TestJob','微信号：wizzer | 欢迎发送红包以示支持，多谢。。','*/5 * * * * ?','{\"hi\":\"Wechat:wizzer | send red packets of support,thank u\"}',1471658685,'执行成功',1,'',1471658662,0);

/*Table structure for table `sys_unit` */

CREATE TABLE `sys_unit` (
  `id` varchar(32) NOT NULL DEFAULT '' COMMENT 'ID',
  `parentId` varchar(32) DEFAULT NULL COMMENT '父级ID',
  `path` varchar(100) DEFAULT NULL COMMENT '树路径',
  `name` varchar(100) DEFAULT NULL COMMENT '单位名称',
  `aliasName` varchar(100) DEFAULT NULL COMMENT '单位别名',
  `unitcode` varchar(20) DEFAULT NULL COMMENT '机构编码',
  `note` varchar(255) DEFAULT NULL COMMENT '单位介绍',
  `address` varchar(100) DEFAULT NULL COMMENT '单位地址',
  `telephone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(100) DEFAULT NULL COMMENT '单位邮箱',
  `website` varchar(100) DEFAULT NULL COMMENT '单位网站',
  `location` int(32) DEFAULT NULL COMMENT '排序字段',
  `hasChildren` tinyint(1) DEFAULT NULL COMMENT '有子节点',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`),
  UNIQUE KEY `INDEX_SYS_UNIT_PATH` (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_unit` */

insert  into `sys_unit`(`id`,`parentId`,`path`,`name`,`aliasName`,`unitcode`,`note`,`address`,`telephone`,`email`,`website`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('54e9d1e51e344230bd9a77b299401286','','0001','系统管理','System',NULL,NULL,'银河-太阳系-地球','','wizzer@qq.com','http://www.wizzer.cn',1,0,'',1471658661,0);

/*Table structure for table `sys_user` */

CREATE TABLE `sys_user` (
  `id` varchar(32) NOT NULL DEFAULT '' COMMENT 'ID',
  `loginname` varchar(120) DEFAULT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `salt` varchar(50) DEFAULT NULL COMMENT '密码盐',
  `nickname` varchar(100) DEFAULT NULL COMMENT '昵称',
  `online` tinyint(1) DEFAULT NULL COMMENT '是否在线',
  `disabled` tinyint(1) DEFAULT NULL COMMENT '是否禁用',
  `email` varchar(255) DEFAULT NULL,
  `loginAt` int(20) DEFAULT NULL COMMENT '登陆时间',
  `loginIp` varchar(255) DEFAULT NULL COMMENT '登陆IP',
  `loginCount` int(20) DEFAULT NULL COMMENT '登陆次数',
  `customMenu` varchar(255) DEFAULT NULL COMMENT '常用菜单',
  `loginTheme` varchar(100) DEFAULT NULL COMMENT '皮肤样式',
  `loginSidebar` tinyint(1) DEFAULT NULL,
  `loginBoxed` tinyint(1) DEFAULT NULL,
  `loginScroll` tinyint(1) DEFAULT NULL,
  `unitid` varchar(32) DEFAULT NULL,
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`),
  UNIQUE KEY `INDEX_SYS_USER_LOGINNAMAE` (`loginname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user` */

insert  into `sys_user`(`id`,`loginname`,`password`,`salt`,`nickname`,`online`,`disabled`,`email`,`loginAt`,`loginIp`,`loginCount`,`customMenu`,`loginTheme`,`loginSidebar`,`loginBoxed`,`loginScroll`,`unitid`,`opBy`,`opAt`,`delFlag`) values ('ed822b0fc0fb491d84f088e53e80ec36','superadmin','pYdLm6x2wKDxXLKouxt5UNm5rkfSgIUNDWRoG/MuZok=','PAPUwwjc3l1AcIqAVKkq6A==','超级管理员',1,0,'wizzer@qq.com',1471673920,'127.0.0.1',5,NULL,'palette.css',0,0,1,'54e9d1e51e344230bd9a77b299401286','',1471658662,0);

/*Table structure for table `sys_user_role` */

CREATE TABLE `sys_user_role` (
  `userId` varchar(32) DEFAULT NULL,
  `roleId` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`userId`,`roleId`) values ('ed822b0fc0fb491d84f088e53e80ec36','2400467753574a64abac5d2bfead00d8');

/*Table structure for table `sys_user_unit` */

CREATE TABLE `sys_user_unit` (
  `userId` varchar(32) DEFAULT NULL,
  `unitId` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user_unit` */

insert  into `sys_user_unit`(`userId`,`unitId`) values ('ed822b0fc0fb491d84f088e53e80ec36','54e9d1e51e344230bd9a77b299401286');

/*Table structure for table `we_cart` */

CREATE TABLE `we_cart` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `openid` varchar(32) DEFAULT NULL COMMENT 'openid',
  `num` int(20) DEFAULT NULL COMMENT '购买量',
  `goodsId` varchar(32) DEFAULT NULL COMMENT '商品ID',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `we_cart` */

/*Table structure for table `we_goods` */

CREATE TABLE `we_goods` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `classId` varchar(32) DEFAULT NULL COMMENT '分类ID',
  `name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `title` varchar(255) DEFAULT NULL COMMENT '商品标题',
  `price` int(20) DEFAULT NULL COMMENT '销售价',
  `priceMarket` int(20) DEFAULT NULL COMMENT '市场价',
  `numSell` int(20) DEFAULT NULL COMMENT '销售量',
  `stock` int(20) DEFAULT NULL COMMENT '库存',
  `stockFreeze` int(20) DEFAULT NULL COMMENT '冻结库存',
  `buyMin` int(20) DEFAULT NULL COMMENT '起订量',
  `buyMax` int(20) DEFAULT NULL COMMENT '限购量',
  `picUrl` varchar(255) DEFAULT NULL COMMENT '商品主图',
  `disabled` tinyint(1) DEFAULT NULL COMMENT '是否下架',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `we_goods` */

/*Table structure for table `we_goods_class` */

CREATE TABLE `we_goods_class` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `parentId` varchar(32) DEFAULT NULL COMMENT '父级ID',
  `path` varchar(100) DEFAULT NULL COMMENT '树路径',
  `name` varchar(100) DEFAULT NULL COMMENT '分类名称',
  `location` int(32) DEFAULT NULL COMMENT '排序字段',
  `hasChildren` tinyint(1) DEFAULT NULL COMMENT '有子节点',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `we_goods_class` */

insert  into `we_goods_class`(`id`,`parentId`,`path`,`name`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('d59d28883d06467295a0f6bc243fbfa0','','0001','果干类',1,0,'ed822b0fc0fb491d84f088e53e80ec36',1471660957,0);
insert  into `we_goods_class`(`id`,`parentId`,`path`,`name`,`location`,`hasChildren`,`opBy`,`opAt`,`delFlag`) values ('fb657daefbd34884b5a7df33b9abd093','','0002','肉类',3,0,'ed822b0fc0fb491d84f088e53e80ec36',1471660982,0);

/*Table structure for table `we_goods_content` */

CREATE TABLE `we_goods_content` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `goodsId` varchar(32) DEFAULT NULL COMMENT '商品ID',
  `note` text COMMENT '详细介绍',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `we_goods_content` */

/*Table structure for table `we_goods_image` */

CREATE TABLE `we_goods_image` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `goodsId` varchar(32) DEFAULT NULL COMMENT '商品ID',
  `picUrl` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `we_goods_image` */

/*Table structure for table `we_order` */

CREATE TABLE `we_order` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `openid` varchar(32) DEFAULT NULL COMMENT 'openid',
  `nickname` varchar(255) DEFAULT NULL COMMENT '微信昵称',
  `status` varchar(2) DEFAULT NULL COMMENT '订单状态',
  `money` int(20) DEFAULT NULL COMMENT '总金额',
  `payStatus` varchar(2) DEFAULT NULL COMMENT '支付状态',
  `recName` varchar(20) DEFAULT NULL COMMENT '收货人姓名',
  `recMobile` varchar(20) DEFAULT NULL COMMENT '手机号码',
  `recProvince` varchar(20) DEFAULT NULL COMMENT '收货省',
  `recCity` varchar(20) DEFAULT NULL COMMENT '收货市',
  `recArea` varchar(20) DEFAULT NULL COMMENT '收货县区',
  `recAddr` varchar(255) DEFAULT NULL COMMENT '收货地址',
  `shipStatus` varchar(2) DEFAULT NULL COMMENT '发货状态',
  `shipAt` int(20) DEFAULT NULL COMMENT '发货时间',
  `shipType` varchar(2) DEFAULT NULL COMMENT '发货方式',
  `shipName` varchar(20) DEFAULT NULL COMMENT '物流公司',
  `shipNo` varchar(20) DEFAULT NULL COMMENT '物流单号',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `we_order` */

/*Table structure for table `we_order_goods` */

CREATE TABLE `we_order_goods` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `orderId` varchar(32) DEFAULT NULL COMMENT '订单ID',
  `openid` varchar(32) DEFAULT NULL COMMENT 'openid',
  `name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `price` int(20) DEFAULT NULL COMMENT '销售价',
  `num` int(20) DEFAULT NULL COMMENT '购买数量',
  `picUrl` varchar(255) DEFAULT NULL COMMENT '商品主图',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `we_order_goods` */

/*Table structure for table `we_order_payment` */

CREATE TABLE `we_order_payment` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `orderId` varchar(32) DEFAULT NULL COMMENT '订单ID',
  `openid` varchar(32) DEFAULT NULL COMMENT 'openid',
  `payType` varchar(2) DEFAULT NULL COMMENT '支付方式',
  `tradeNo` varchar(255) DEFAULT NULL COMMENT '交易单号',
  `money` int(20) DEFAULT NULL COMMENT '金额',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `we_order_payment` */

/*Table structure for table `wx_config` */

CREATE TABLE `wx_config` (
  `id` varchar(32) NOT NULL DEFAULT '' COMMENT 'ID',
  `appname` varchar(120) DEFAULT NULL COMMENT '公众号名称',
  `ghid` varchar(100) DEFAULT NULL COMMENT '原始ID',
  `appid` varchar(50) DEFAULT NULL COMMENT 'Appid',
  `appsecret` varchar(50) DEFAULT NULL COMMENT 'Appsecret',
  `encodingAESKey` varchar(100) DEFAULT NULL COMMENT 'EncodingAESKey',
  `token` varchar(100) DEFAULT NULL COMMENT 'Token',
  `payMchid` varchar(100) DEFAULT NULL COMMENT '商户ID',
  `payKey` varchar(100) DEFAULT NULL COMMENT '商户KEY',
  `payAppSecret` varchar(100) DEFAULT NULL COMMENT '商户密钥',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wx_config` */

/*Table structure for table `wx_mass` */

CREATE TABLE `wx_mass` (
  `id` varchar(32) NOT NULL DEFAULT '' COMMENT 'ID',
  `name` varchar(255) DEFAULT NULL COMMENT '群发名称',
  `type` varchar(20) DEFAULT NULL COMMENT '群发类型',
  `media_id` varchar(255) DEFAULT NULL COMMENT '媒体文件ID',
  `scope` varchar(20) DEFAULT NULL COMMENT 'Scope',
  `content` text COMMENT 'Content',
  `status` tinyint(4) DEFAULT NULL COMMENT '发送状态',
  `wxid` varchar(32) DEFAULT NULL COMMENT '微信ID',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wx_mass` */

/*Table structure for table `wx_mass_news` */

CREATE TABLE `wx_mass_news` (
  `id` varchar(32) NOT NULL DEFAULT '' COMMENT 'ID',
  `thumb_media_id` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `author` varchar(120) DEFAULT NULL COMMENT '作者',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content_source_url` varchar(255) DEFAULT NULL COMMENT '原地址',
  `content` text COMMENT '图文内容',
  `digest` text COMMENT '摘要',
  `show_cover_pic` tinyint(4) DEFAULT NULL COMMENT '显示封面',
  `location` int(32) DEFAULT NULL COMMENT '排序字段',
  `wxid` varchar(32) DEFAULT NULL COMMENT '微信ID',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wx_mass_news` */

/*Table structure for table `wx_mass_send` */

CREATE TABLE `wx_mass_send` (
  `id` varchar(32) NOT NULL DEFAULT '' COMMENT 'ID',
  `massId` varchar(32) DEFAULT NULL COMMENT '群发ID',
  `receivers` text COMMENT 'Openid列表',
  `status` tinyint(4) DEFAULT NULL COMMENT '发送状态',
  `msgId` varchar(32) DEFAULT NULL COMMENT 'msgId',
  `errCode` varchar(32) DEFAULT NULL COMMENT 'errCode',
  `errMsg` varchar(255) DEFAULT NULL COMMENT 'errMsg',
  `wxid` varchar(32) DEFAULT NULL COMMENT '微信ID',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wx_mass_send` */

/*Table structure for table `wx_menu` */

CREATE TABLE `wx_menu` (
  `id` varchar(32) NOT NULL DEFAULT '' COMMENT 'ID',
  `parentId` varchar(32) DEFAULT NULL COMMENT '父ID',
  `path` varchar(100) DEFAULT NULL COMMENT '树路径',
  `menuName` varchar(20) DEFAULT NULL COMMENT '菜单名称',
  `menuType` varchar(20) DEFAULT NULL COMMENT '菜单类型',
  `menuKey` varchar(20) DEFAULT NULL COMMENT '关键词',
  `url` varchar(255) DEFAULT NULL COMMENT '网址',
  `location` int(32) DEFAULT NULL COMMENT '排序字段',
  `hasChildren` tinyint(1) DEFAULT NULL COMMENT '有子节点',
  `wxid` varchar(32) DEFAULT NULL COMMENT '微信ID',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wx_menu` */

/*Table structure for table `wx_msg` */

CREATE TABLE `wx_msg` (
  `id` varchar(32) NOT NULL DEFAULT '' COMMENT 'ID',
  `openid` varchar(50) DEFAULT NULL COMMENT 'openid',
  `nickname` varchar(255) DEFAULT NULL COMMENT '微信昵称',
  `type` varchar(20) DEFAULT NULL COMMENT '信息类型',
  `content` text COMMENT '信息内容',
  `replyId` varchar(32) DEFAULT NULL COMMENT '回复ID',
  `wxid` varchar(32) DEFAULT NULL COMMENT '微信ID',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wx_msg` */

/*Table structure for table `wx_msg_reply` */

CREATE TABLE `wx_msg_reply` (
  `id` varchar(32) NOT NULL DEFAULT '' COMMENT 'ID',
  `msgid` varchar(32) DEFAULT NULL COMMENT 'msgid',
  `openid` varchar(50) DEFAULT NULL COMMENT 'openid',
  `type` varchar(20) DEFAULT NULL COMMENT '信息类型',
  `content` text COMMENT '信息内容',
  `wxid` varchar(32) DEFAULT NULL COMMENT '微信ID',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wx_msg_reply` */

/*Table structure for table `wx_reply` */

CREATE TABLE `wx_reply` (
  `id` varchar(32) NOT NULL DEFAULT '' COMMENT 'ID',
  `type` varchar(20) DEFAULT NULL COMMENT '回复类型',
  `msgType` varchar(20) DEFAULT NULL COMMENT '消息类型',
  `keyword` varchar(50) DEFAULT NULL COMMENT '关键词',
  `content` text COMMENT '回复内容',
  `wxid` varchar(32) DEFAULT NULL COMMENT '微信ID',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wx_reply` */

/*Table structure for table `wx_reply_news` */

CREATE TABLE `wx_reply_news` (
  `id` varchar(32) NOT NULL DEFAULT '' COMMENT 'ID',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `description` varchar(255) DEFAULT NULL COMMENT '摘要',
  `picUrl` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `url` varchar(255) DEFAULT NULL COMMENT '文章路径',
  `location` int(32) DEFAULT NULL COMMENT '排序字段',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wx_reply_news` */

/*Table structure for table `wx_reply_txt` */

CREATE TABLE `wx_reply_txt` (
  `id` varchar(32) NOT NULL DEFAULT '' COMMENT 'ID',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wx_reply_txt` */

/*Table structure for table `wx_tpl_id` */

CREATE TABLE `wx_tpl_id` (
  `id` varchar(32) NOT NULL DEFAULT '' COMMENT '模板编号',
  `template_id` varchar(255) DEFAULT NULL COMMENT '模板ID',
  `wxid` varchar(32) DEFAULT NULL COMMENT '微信ID',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wx_tpl_id` */

/*Table structure for table `wx_tpl_list` */

CREATE TABLE `wx_tpl_list` (
  `id` varchar(32) NOT NULL DEFAULT '' COMMENT 'ID',
  `template_id` varchar(100) DEFAULT NULL COMMENT '模板ID',
  `title` varchar(255) DEFAULT NULL COMMENT '模板标题',
  `primary_industry` varchar(100) DEFAULT NULL COMMENT '主营行业',
  `deputy_industry` varchar(100) DEFAULT NULL COMMENT '副营行业',
  `content` varchar(300) DEFAULT NULL COMMENT '模板内容',
  `example` varchar(300) DEFAULT NULL COMMENT '模板示例',
  `wxid` varchar(32) DEFAULT NULL COMMENT '微信ID',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`),
  UNIQUE KEY `INDEX_WX_TPL_LIST` (`template_id`,`wxid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wx_tpl_list` */

/*Table structure for table `wx_tpl_log` */

CREATE TABLE `wx_tpl_log` (
  `id` varchar(32) NOT NULL DEFAULT '' COMMENT 'ID',
  `openid` varchar(50) DEFAULT NULL COMMENT 'openid',
  `nickname` varchar(255) DEFAULT NULL COMMENT '微信昵称',
  `content` text COMMENT '发送内容',
  `status` tinyint(4) DEFAULT NULL COMMENT '发送状态',
  `result` text COMMENT '发送结果',
  `wxid` varchar(32) DEFAULT NULL COMMENT '微信ID',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wx_tpl_log` */

/*Table structure for table `wx_user` */

CREATE TABLE `wx_user` (
  `id` varchar(32) NOT NULL DEFAULT '' COMMENT 'ID',
  `openid` varchar(50) DEFAULT NULL COMMENT 'openid',
  `unionid` varchar(50) DEFAULT NULL COMMENT 'unionid',
  `nickname` varchar(255) DEFAULT NULL COMMENT '微信昵称',
  `subscribe` tinyint(1) DEFAULT NULL COMMENT '是否关注',
  `subscribeAt` bigint(44) DEFAULT NULL COMMENT '关注时间',
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别',
  `country` varchar(50) DEFAULT NULL COMMENT '国家',
  `province` varchar(50) DEFAULT NULL COMMENT '省份',
  `city` varchar(50) DEFAULT NULL COMMENT '城市',
  `headimgurl` varchar(255) DEFAULT NULL COMMENT '头像',
  `wxid` varchar(32) DEFAULT NULL COMMENT '微信ID',
  `opBy` varchar(32) DEFAULT NULL COMMENT '操作人',
  `opAt` int(20) DEFAULT NULL COMMENT '操作时间',
  `delFlag` tinyint(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`),
  UNIQUE KEY `INDEX_WX_USER_OPENID` (`openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wx_user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
