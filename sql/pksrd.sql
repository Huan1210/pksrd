/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50015
Source Host           : localhost:3306
Source Database       : pksrd

Target Server Type    : MYSQL
Target Server Version : 50015
File Encoding         : 65001

Date: 2018-02-26 18:18:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `gangwei`
-- ----------------------------
DROP TABLE IF EXISTS `gangwei`;
CREATE TABLE `gangwei` (
  `id` int(11) NOT NULL auto_increment,
  `zid` int(11) default NULL,
  `name` varchar(255) default NULL,
  `sname` varchar(255) default NULL,
  `states` varchar(255) default NULL,
  `adate` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gangwei
-- ----------------------------
INSERT INTO `gangwei` VALUES ('3', '2', '网管', '张三', '申请通过', '2018-2-26 10:32:06');

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `adate` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', 'dasdadas', '2018-2-6 18:55:35');
INSERT INTO `message` VALUES ('2', '111122', '2018-2-26 10:17:29');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `info` varchar(255) default NULL,
  `adate` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('2', '11', '1113123123', '2018-02-22');

-- ----------------------------
-- Table structure for `pks`
-- ----------------------------
DROP TABLE IF EXISTS `pks`;
CREATE TABLE `pks` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `hao` varchar(255) default NULL,
  `sex` varchar(255) default NULL,
  `fujian` varchar(255) default NULL,
  `info` varchar(255) default NULL,
  `state` varchar(255) default NULL,
  `fen` varchar(255) default NULL,
  `grade` varchar(255) default NULL,
  `adate` varchar(255) default NULL,
  `userid` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pks
-- ----------------------------
INSERT INTO `pks` VALUES ('2', '张三', '78271231', '男', '/upload/1518008755678.txt', '家境贫寒', '通过', '85', '困难', '2018-2-7 21:06:08', '4');

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(200) default NULL,
  `password` varchar(200) default NULL,
  `phone` varchar(200) default NULL,
  `usertype` varchar(200) default NULL,
  `rname` varchar(200) default NULL,
  `sex` varchar(900) default NULL,
  `xueli` varchar(900) default NULL,
  `dept` varchar(900) default NULL,
  `zhiwu` varchar(900) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', 'admin', '1234', '18697548741', '管理员', '宋峰', '男', '本科', '院办', '主任');
INSERT INTO `userinfo` VALUES ('4', 'zs', '1234', '15789784568', '学生', '张三', '男', '本科', '电子信息工程学院', '学生');
INSERT INTO `userinfo` VALUES ('5', 'pyxz', '1234', '15784568741', '评议组', '刘飞', '女', '硕士', '后期保障部', '组长');
INSERT INTO `userinfo` VALUES ('6', 'fdy', '1234', '1874598742', '辅导员', '王城', '男', '本科', '计算机院', '辅导员');

-- ----------------------------
-- Table structure for `zhuxue`
-- ----------------------------
DROP TABLE IF EXISTS `zhuxue`;
CREATE TABLE `zhuxue` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `info` varchar(255) default NULL,
  `shu` varchar(255) default NULL,
  `jdate` varchar(255) default NULL,
  `adate` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zhuxue
-- ----------------------------
INSERT INTO `zhuxue` VALUES ('2', '网管', '机房维护', '10', '2018-02-28', '2018-2-26 10:20:25');
