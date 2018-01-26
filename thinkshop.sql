# Host: localhost  (Version: 5.5.53)
# Date: 2018-01-26 19:16:21
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "tp_area"
#

DROP TABLE IF EXISTS `tp_area`;
CREATE TABLE `tp_area` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `city_id` int(11) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `listorder` int(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `city_id` (`city_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "tp_area"
#


#
# Structure for table "tp_bis"
#

DROP TABLE IF EXISTS `tp_bis`;
CREATE TABLE `tp_bis` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `licence_logo` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `city_id` int(11) unsigned NOT NULL DEFAULT '0',
  `city_path` varchar(50) NOT NULL DEFAULT '',
  `bank_info` varchar(50) NOT NULL DEFAULT '',
  `money` decimal(20,2) NOT NULL DEFAULT '0.00',
  `bank_name` varchar(50) NOT NULL DEFAULT '',
  `bank_user` varchar(50) NOT NULL DEFAULT '',
  `faren` varchar(20) NOT NULL DEFAULT '',
  `faren_tel` varchar(20) NOT NULL DEFAULT '',
  `listorder` int(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "tp_bis"
#


#
# Structure for table "tp_bis_account"
#

DROP TABLE IF EXISTS `tp_bis_account`;
CREATE TABLE `tp_bis_account` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `code` varchar(10) NOT NULL DEFAULT '',
  `bis_id` int(11) NOT NULL DEFAULT '0',
  `last_login_ip` varchar(20) NOT NULL DEFAULT '',
  `last_login_time` int(10) NOT NULL DEFAULT '0',
  `is_main` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` int(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `bis_id` (`bis_id`),
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "tp_bis_account"
#


#
# Structure for table "tp_bis_location"
#

DROP TABLE IF EXISTS `tp_bis_location`;
CREATE TABLE `tp_bis_location` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `tel` varchar(30) NOT NULL DEFAULT '',
  `contact` varchar(20) NOT NULL DEFAULT '',
  `xpont` varchar(20) NOT NULL DEFAULT '',
  `ypont` varchar(20) NOT NULL DEFAULT '',
  `bis_id` int(11) unsigned NOT NULL DEFAULT '0',
  `open_time` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `is_main` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `api_address` varchar(255) NOT NULL DEFAULT '',
  `city_id` int(11) unsigned NOT NULL DEFAULT '0',
  `city_path` varchar(50) NOT NULL DEFAULT '',
  `category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `category_path` varchar(50) NOT NULL DEFAULT '',
  `listorder` int(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `bis_id` (`bis_id`),
  KEY `category_id` (`category_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "tp_bis_location"
#


#
# Structure for table "tp_category"
#

DROP TABLE IF EXISTS `tp_category`;
CREATE TABLE `tp_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `listorder` int(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "tp_category"
#

INSERT INTO `tp_category` VALUES (1,'美食',0,0,1,1516346141,1516851092),(2,'娱乐',0,0,1,1516346210,1516851092),(3,'网咖',2,0,1,1516346259,1516346259);

#
# Structure for table "tp_city"
#

DROP TABLE IF EXISTS `tp_city`;
CREATE TABLE `tp_city` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `uname` varchar(50) NOT NULL DEFAULT '',
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `listorder` int(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uname` (`uname`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "tp_city"
#


#
# Structure for table "tp_deal"
#

DROP TABLE IF EXISTS `tp_deal`;
CREATE TABLE `tp_deal` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `se_category_id` int(11) NOT NULL DEFAULT '0',
  `bis_id` int(11) NOT NULL DEFAULT '0',
  `location_ids` varchar(100) NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `start_time` int(10) NOT NULL DEFAULT '0',
  `end_time` int(10) NOT NULL DEFAULT '0',
  `origin_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `current_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `city_id` int(11) NOT NULL DEFAULT '0',
  `buy_count` int(11) NOT NULL DEFAULT '0',
  `total_count` int(11) NOT NULL DEFAULT '0',
  `coupons_begin_time` int(11) NOT NULL DEFAULT '0',
  `coupons_end_time` int(11) NOT NULL DEFAULT '0',
  `xpont` varchar(20) NOT NULL DEFAULT '',
  `ypont` varchar(20) NOT NULL DEFAULT '',
  `bis_account_id` int(11) NOT NULL DEFAULT '0',
  `balance_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `notes` text NOT NULL,
  `listorder` int(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `se_category_id` (`se_category_id`),
  KEY `city_id` (`city_id`),
  KEY `start_time` (`start_time`),
  KEY `end_time` (`end_time`),
  KEY `coupons_begin_time` (`coupons_begin_time`),
  KEY `coupons_end_time` (`coupons_end_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "tp_deal"
#


#
# Structure for table "tp_featured"
#

DROP TABLE IF EXISTS `tp_featured`;
CREATE TABLE `tp_featured` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `listorder` int(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "tp_featured"
#


#
# Structure for table "tp_user"
#

DROP TABLE IF EXISTS `tp_user`;
CREATE TABLE `tp_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `code` varchar(10) NOT NULL DEFAULT '',
  `last_login_ip` varchar(20) NOT NULL DEFAULT '',
  `last_login_time` int(10) NOT NULL DEFAULT '0',
  `email` varchar(30) NOT NULL DEFAULT '',
  `mobile` varchar(20) NOT NULL DEFAULT '',
  `listorder` int(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "tp_user"
#

