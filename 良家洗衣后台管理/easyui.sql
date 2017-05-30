/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50612
Source Host           : localhost:3306
Source Database       : easyui

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2015-01-29 12:52:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for easyui_admin
-- ----------------------------
DROP TABLE IF EXISTS `easyui_admin`;
CREATE TABLE `easyui_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `manager` char(20) NOT NULL COMMENT '管理员帐号',
  `password` char(40) NOT NULL COMMENT '管理密码',
  `auth` char(50) NOT NULL DEFAULT '' COMMENT '权限',
  `date` int(10) unsigned NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of easyui_admin
-- ----------------------------
INSERT INTO `easyui_admin` VALUES ('1', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', '管理员管理,会员管理', '1406080825');
INSERT INTO `easyui_admin` VALUES ('2', 'ycku', '7c4a8d09ca3762af61e59520943dc26494f8941b', '管理员管理,会员管理', '1422506944');

-- ----------------------------
-- Table structure for easyui_nav
-- ----------------------------
DROP TABLE IF EXISTS `easyui_nav`;
CREATE TABLE `easyui_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `text` char(20) NOT NULL COMMENT '导航名称',
  `state` char(10) NOT NULL DEFAULT '' COMMENT '导航状态',
  `iconCls` char(20) NOT NULL DEFAULT '' COMMENT '导航图标',
  `url` char(50) NOT NULL DEFAULT '' COMMENT '导航链接',
  `nid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '节点',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of easyui_nav
-- ----------------------------
INSERT INTO `easyui_nav` VALUES ('1', '系统模块', 'closed', 'icon-system', '', '0');
INSERT INTO `easyui_nav` VALUES ('2', '管理员管理', 'open', 'icon-manager', 'manager', '1');
INSERT INTO `easyui_nav` VALUES ('3', '会员模块', 'closed', 'icon-user', '', '0');
INSERT INTO `easyui_nav` VALUES ('4', '会员管理', 'open', 'icon-group', 'user', '3');
