/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : hx_dms

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-12-05 20:29:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tp_file`
-- ----------------------------
DROP TABLE IF EXISTS `tp_file`;
CREATE TABLE `tp_file` (
  `id` mediumint(8) NOT NULL,
  `name` varchar(128) NOT NULL,
  `path` varchar(255) NOT NULL DEFAULT '',
  `type` char(20) NOT NULL DEFAULT '',
  `folderid` smallint(5) NOT NULL,
  `inputtime` int(10) NOT NULL DEFAULT '0',
  `updatetime` int(10) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `userid` smallint(5) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of tp_file
-- ----------------------------
INSERT INTO `tp_file` VALUES ('1', '文件1', '/user/d/foler/test', 'doc', '1', '0', '0', '文件简介', '1');

-- ----------------------------
-- Table structure for `tp_folder`
-- ----------------------------
DROP TABLE IF EXISTS `tp_folder`;
CREATE TABLE `tp_folder` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `userid` smallint(5) NOT NULL DEFAULT '1',
  `name` varchar(30) NOT NULL,
  `parentid` smallint(5) NOT NULL DEFAULT '0',
  `arrparentid` varchar(255) NOT NULL DEFAULT '',
  `child` tinyint(5) NOT NULL DEFAULT '0',
  `arrchildid` varchar(255) NOT NULL DEFAULT '',
  `createtime` int(10) NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of tp_folder
-- ----------------------------
INSERT INTO `tp_folder` VALUES ('1', '1', '文件分类1', '1', '', '0', '', '0', '简介');
INSERT INTO `tp_folder` VALUES ('2', '1', '文件分类2', '0', '', '0', '', '0', '');
INSERT INTO `tp_folder` VALUES ('3', '1', '文件夹3', '0', '', '0', '', '0', '');

-- ----------------------------
-- Table structure for `tp_user`
-- ----------------------------
DROP TABLE IF EXISTS `tp_user`;
CREATE TABLE `tp_user` (
  `id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of tp_user
-- ----------------------------
INSERT INTO `tp_user` VALUES ('1', 'admin', '123456', 'guangdac@qq.com');
