/*
SQLyog Job Agent v12.09 (64 bit) Copyright(c) Webyog Inc. All Rights Reserved.


MySQL - 5.5.53 : Database - tpshop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
USE `tpshop`;

/*Table structure for table `yx_area` */

DROP TABLE IF EXISTS `yx_area`;

CREATE TABLE `yx_area` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `city_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '城市id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父id 0代表顶级id',
  `listorder` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后修改时间',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `city_id` (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商圈表';

/*Data for the table `yx_area` */

/*Table structure for table `yx_bis` */

DROP TABLE IF EXISTS `yx_bis`;

CREATE TABLE `yx_bis` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `username` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `bis_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商户id',
  `logo` varchar(150) NOT NULL DEFAULT '' COMMENT 'logo图片',
  `licence_logo` varchar(150) NOT NULL DEFAULT '' COMMENT '营业执照',
  `description` text NOT NULL COMMENT '描述',
  `city_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '城市id',
  `city_path` varchar(50) NOT NULL DEFAULT '' COMMENT '所在地区',
  `bank_info` varchar(50) NOT NULL DEFAULT '' COMMENT '银行帐号',
  `money` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `bank_name` varchar(50) NOT NULL DEFAULT '' COMMENT '提现开户行名称',
  `bank_user` varchar(50) NOT NULL DEFAULT '' COMMENT '提现开户行姓名',
  `faren` varchar(20) NOT NULL DEFAULT '' COMMENT '法人',
  `faren_tel` varchar(20) NOT NULL DEFAULT '' COMMENT '法人联系方式',
  `listorder` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后修改时间',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `username` (`username`),
  KEY `bis_id` (`bis_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='商户表';

/*Data for the table `yx_bis` */

insert  into `yx_bis` values(18,'赵大人的第二个小店','yaxing','243356121@qq.com',0,'\\uploads\\bis\\20171219\\2d68e1b2b49a33ce3f44b6026fec2b7f.jpg','\\uploads\\bis\\20171219\\25e35eb1423b6a35047f26dcea81eb36.jpg','<p>赵大人的第二个小店</p>',9,'17','110119120','0.00','赵大人的第二个小店','赵大人','赵大人','18734177379',0,1,1513666003,1513909518);
insert  into `yx_bis` values(19,'123','3321','243356121@qq.com',0,'\\uploads\\bis\\20171222\\3bf77d65c420ad5aaa70bfdc02cfb28c.png','\\uploads\\bis\\20171222\\e81c80f7bc1510bca04a039f3d9407fb.jpg','<p>333</p>',10,'16','1512312356','0.00','王八蛋','王八蛋','王八蛋','18734177379',0,0,1513909929,1515207740);
insert  into `yx_bis` values(20,'123123123123','332145','243356121@qq.com',0,'\\uploads\\bis\\20171222\\d2dea9040c8b5cff0f22924f3250899d.png','\\uploads\\bis\\20171222\\a94558b9700310d4198923da2639baf3.png','<p>33333</p>',9,'17','1512312356','0.00','王八蛋','王八蛋','王八蛋','18734177379',0,1,1513910026,1515207738);
insert  into `yx_bis` values(21,'123123123123333','332145123123123','243356121@qq.com',0,'\\uploads\\bis\\20171222\\23a798c1f8341b23a331d8f1301a3029.png','\\uploads\\bis\\20171222\\bcd7471d32ff395f05f3ecee20b7e5e2.jpg','<p>33123</p>',9,'17','1512312356','0.00','王八蛋','王八蛋','王八蛋','18734177379',0,1,1513910128,1513913412);

/*Table structure for table `yx_bis_account` */

DROP TABLE IF EXISTS `yx_bis_account`;

CREATE TABLE `yx_bis_account` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '密码加密随机数',
  `last_login_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '商户最后登录ip',
  `last_login_time` int(10) NOT NULL DEFAULT '0' COMMENT '商户最后登录时间',
  `is_main` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是总管理员',
  `bis_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商户id',
  `listorder` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后修改时间',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `bis_id` (`bis_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='商户帐号表';

/*Data for the table `yx_bis_account` */

insert  into `yx_bis_account` values(11,'yaxing','758cc981779e2f0eb76485e72792454f','4239','127.0.0.1',1515131838,1,18,0,1,1513666003,1513752822);
insert  into `yx_bis_account` values(12,'admin','d0bf35219bdce9273fec1b3f641468c9','4715','',0,1,21,0,0,1513910129,1513910129);

/*Table structure for table `yx_bis_location` */

DROP TABLE IF EXISTS `yx_bis_location`;

CREATE TABLE `yx_bis_location` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `logo` varchar(150) NOT NULL DEFAULT '' COMMENT 'logo图片',
  `address` varchar(100) NOT NULL DEFAULT '' COMMENT '地址',
  `tel` varchar(20) NOT NULL DEFAULT '' COMMENT '电话号码',
  `contact` varchar(20) NOT NULL DEFAULT '' COMMENT '相关联系人',
  `xpoint` varchar(20) NOT NULL DEFAULT '' COMMENT '经度',
  `ypoint` varchar(20) NOT NULL DEFAULT '' COMMENT '纬度',
  `bis_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '属于哪个商户',
  `open_time` varchar(50) NOT NULL DEFAULT '' COMMENT '营业时间',
  `content` text NOT NULL COMMENT '门店简介',
  `is_main` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是总店',
  `api_address` varchar(100) NOT NULL DEFAULT '' COMMENT '相关地址',
  `city_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '城市id',
  `city_path` varchar(50) NOT NULL DEFAULT '' COMMENT '所在地区',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '栏目id',
  `category_path` varchar(50) NOT NULL DEFAULT '' COMMENT '栏目路径',
  `bank_info` varchar(50) NOT NULL DEFAULT '' COMMENT '银行帐号',
  `listorder` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后修改时间',
  `class_id` int(5) NOT NULL DEFAULT '0' COMMENT '所属分类',
  `class_children_id` varchar(30) NOT NULL DEFAULT '' COMMENT '所属子类',
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  KEY `category_id` (`category_id`),
  KEY `bis_id` (`bis_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='商户门店表';

/*Data for the table `yx_bis_location` */

insert  into `yx_bis_location` values(15,'赵大人的第二个小店','\\uploads\\bis\\20171219\\2d68e1b2b49a33ce3f44b6026fec2b7f.jpg','山西省太原市小店区许西村桃园小吃林','18734177379','赵大人','112.61442431111','37.784812628268',18,'9','<p>12332112321312312</p>',1,'山西省太原市小店区许西村桃园小吃林',9,'17',0,'','110119120',0,1,1513666003,1513752822,3,'7,6,5');
insert  into `yx_bis_location` values(16,'123123123123333','\\uploads\\bis\\20171222\\23a798c1f8341b23a331d8f1301a3029.png','123','123','13000000000','110.41555230199','21.204847013241',21,'123','<p>123</p>',0,'123',9,'17',0,'','1512312356',0,0,1513910128,1513910128,2,'11,9');
insert  into `yx_bis_location` values(17,'张小宝','\\uploads\\bis\\20171228\\04b92d1978a654c1ec4ccf99aa4ddaf6.jpg','山西省太原市小店区许西村桃园小吃林','18335130040','张大宝','112.61442431111','37.784812628268',18,'0','',0,'山西省太原市小店区许西村桃园小吃林',0,'',0,'','',0,1,1514430212,1514446378,3,'7,6');
insert  into `yx_bis_location` values(18,'张大宝','','山西省太原市小店区许西村桃园小吃林','18335130040','张大宝','112.61442431111','37.784812628268',18,'0','<p>123</p>',0,'山西省太原市小店区许西村桃园小吃林',0,'',0,'','',0,1,1514430290,1514444298,2,'9');

/*Table structure for table `yx_category` */

DROP TABLE IF EXISTS `yx_category`;

CREATE TABLE `yx_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '分类名称',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父id 0代表顶级id',
  `listorder` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后修改时间',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='生活服务分类表';

/*Data for the table `yx_category` */

insert  into `yx_category` values(1,'娱乐',0,2,1,1512231868,1512311098);
insert  into `yx_category` values(2,'休闲',0,4,1,1512231881,1515207672);
insert  into `yx_category` values(3,'酒店',0,3,1,1512231891,1512311055);
insert  into `yx_category` values(4,'KTV',1,0,1,1512231906,1512231906);
insert  into `yx_category` values(5,'橘子酒店',3,0,1,1512307853,1512307853);
insert  into `yx_category` values(6,'苹果酒店',3,0,1,0,0);
insert  into `yx_category` values(7,'香蕉酒店',3,0,1,1513316807,1513316807);
insert  into `yx_category` values(8,'葡萄酒店',0,0,1,1513316816,1513316828);
insert  into `yx_category` values(9,'台球厅',2,0,1,1513316844,1513316844);
insert  into `yx_category` values(10,'量贩式KTV',1,0,1,1513316854,1513316854);
insert  into `yx_category` values(11,'游泳馆',2,0,1,1513316866,1513316866);
insert  into `yx_category` values(13,'&lt;script&gt;alert(1)&lt;/script&gt;',0,0,1,1515057110,1515057110);
insert  into `yx_category` values(14,'我给你添加一个分类',13,0,1,1515392328,1515392328);
insert  into `yx_category` values(15,'我给你也添加一个分类,葡萄',8,0,1,1515392344,1515392344);

/*Table structure for table `yx_city` */

DROP TABLE IF EXISTS `yx_city`;

CREATE TABLE `yx_city` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '城市名称',
  `uname` varchar(100) NOT NULL DEFAULT '' COMMENT '城市英文名',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父id 0代表顶级id',
  `listorder` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uname` (`uname`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='城市表';

/*Data for the table `yx_city` */

insert  into `yx_city` values(1,'北京','beijing',0,0,1,0,0);
insert  into `yx_city` values(9,'太原','taiyuan',0,0,1,0,0);
insert  into `yx_city` values(10,'上海','shanghai',0,0,1,0,0);
insert  into `yx_city` values(11,'东城区','dongchengqu',1,0,1,0,0);
insert  into `yx_city` values(12,'西城区','xichengqu',1,0,1,0,0);
insert  into `yx_city` values(13,'南城区','nanchengqu',1,0,1,0,0);
insert  into `yx_city` values(14,'北城区','beichengqu',1,0,1,0,0);
insert  into `yx_city` values(15,'浦东','pudong',10,0,1,0,0);
insert  into `yx_city` values(16,'虹桥','hongqiao',10,0,1,0,0);
insert  into `yx_city` values(17,'小店','xiaodian',9,0,1,0,0);
insert  into `yx_city` values(18,'迎泽','yingze',9,0,1,0,0);
insert  into `yx_city` values(19,'尖草坪','jiancaopin',9,0,1,0,0);

/*Table structure for table `yx_deal` */

DROP TABLE IF EXISTS `yx_deal`;

CREATE TABLE `yx_deal` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '商品名称',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '栏目id',
  `se_category_id` varchar(50) NOT NULL DEFAULT '' COMMENT '二级栏目id',
  `bis_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商家id',
  `location_ids` varchar(100) NOT NULL DEFAULT '' COMMENT '所属店面',
  `image` varchar(200) NOT NULL DEFAULT '' COMMENT '商品图片',
  `description` text NOT NULL COMMENT '商品描述',
  `start_time` varchar(100) NOT NULL DEFAULT '' COMMENT '商品开始时间',
  `end_time` varchar(100) NOT NULL DEFAULT '' COMMENT '商品结束时间',
  `origin_price` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '商品原价',
  `current_price` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '商品折扣价',
  `city_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品属于哪个城市',
  `city_path` varchar(50) NOT NULL DEFAULT '' COMMENT '所属哪个地区',
  `buy_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '购买多少份',
  `total_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品多少份',
  `coupons_begin_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '折扣券开始时间',
  `coupons_end_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '折扣券结束时间',
  `xpoint` varchar(20) NOT NULL DEFAULT '' COMMENT '经度',
  `ypoint` varchar(20) NOT NULL DEFAULT '' COMMENT '纬度',
  `bis_account_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商家提交id',
  `balance_price` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '商品结算价',
  `notes` text NOT NULL COMMENT '商品提示',
  `listorder` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后修改时间',
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `se_category_id` (`se_category_id`),
  KEY `city_id` (`city_id`),
  KEY `start_time` (`start_time`),
  KEY `end_time` (`end_time`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='团购商品表';

/*Data for the table `yx_deal` */

insert  into `yx_deal` values(1,'测试',3,'7,6',18,'15,17','\\uploads\\bisLocation\\20180102\\3479c331bff81f9bcf1ea12bf4a97ef1.jpg','<p>这个是团购描述</p>','2018-01-02 15:56','2018-01-31 15:56','333.33','222.22',9,'17',0,300,2018,2018,'','',0,'0.00','<p>这个是团购须知</p>',0,1,1512231868,0);
insert  into `yx_deal` values(2,'北京小店',2,'11,9',18,'15,17','\\uploads\\bisLocation\\20180102\\440ef03cab9bcfd2a382d0dcca6523ba.jpg','<p>333</p>','2018-01-02 15:56','2018-01-31 15:56','333.33','222.22',1,'13',0,300,2018,2018,'','',0,'0.00','<p>444</p>',0,1,1512231868,0);
insert  into `yx_deal` values(3,'上海小店',3,'7,5',18,'18','\\uploads\\bisLocation\\20180102\\86c325c285ae06df014ca3643eb937ef.jpg','<p>321</p>','2018-01-02 15:56','2018-01-31 15:56','333.33','222.22',10,'16',0,300,2018,2018,'','',0,'0.00','<p>123</p>',0,1,1512231868,1514960875);

/*Table structure for table `yx_featured` */

DROP TABLE IF EXISTS `yx_featured`;

CREATE TABLE `yx_featured` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '分类',
  `title` varchar(30) NOT NULL DEFAULT '' COMMENT '标题',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '连接',
  `description` text NOT NULL COMMENT '简介',
  `listorder` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='推荐位表';

/*Data for the table `yx_featured` */

insert  into `yx_featured` values(1,0,'测试1','\\uploads\\featured\\20180105\\ea5ad04cd17d9a0aa57254e8adfc1148.jpg','http://www.baidu.com','这是一个简单的描述',0,1,1515139746,1515139746);
insert  into `yx_featured` values(2,1,'这是地下城推荐位','\\uploads\\featured\\20180106\\3163a7a58b77f085264d4997f7b90370.jpg','http://dnf.qq.com/','这个是地下城官网',0,1,1515202764,1515202764);
insert  into `yx_featured` values(3,0,'banner','\\uploads\\featured\\20180108\\bf5344f969c8089ccd9f02c1ab580bd2.jpg','https://www.baidu.com','潮流帮',0,1,1515399843,1515399843);
insert  into `yx_featured` values(4,0,'这是一个广告','\\uploads\\featured\\20180108\\f3b2c63d35cd934251d96ab8f8f2213e.jpg','http://dnf.qq.com/','这是一个广告',0,1,1515401291,1515401291);

/*Table structure for table `yx_user` */

DROP TABLE IF EXISTS `yx_user`;

CREATE TABLE `yx_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '密码加密随机数',
  `last_login_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `last_login_time` int(10) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `bis_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商户id',
  `listorder` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='前台会员表';

/*Data for the table `yx_user` */

insert  into `yx_user` values(1,'yaxing','d00ea7d54e600d26261dde8aeb6fbca8','yaxing@qq.com','18734177379','3794','127.0.0.1',1515391212,0,0,1,1515225147,1515225147);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
