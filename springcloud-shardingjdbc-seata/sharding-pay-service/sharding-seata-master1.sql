/*
Navicat MySQL Data Transfer

Source Server         : c1
Source Server Version : 50728
Source Host           : 172.19.125.214:3306
Source Database       : sharding-seata-master1

Target Server Type    : MYSQL
Target Server Version : 50728
File Encoding         : 65001

Date: 2020-10-29 10:47:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_order0
-- ----------------------------
DROP TABLE IF EXISTS `t_order0`;
CREATE TABLE `t_order0` (
  `id` bigint(20) NOT NULL,
  `t_pay_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order0
-- ----------------------------
INSERT INTO `t_order0` VALUES ('527545186109104128', '527545184322326529', '1234');
INSERT INTO `t_order0` VALUES ('527545599411625984', '527545598967025665', '1234');
INSERT INTO `t_order0` VALUES ('527545604910358528', '527545604671279105', '1234');
INSERT INTO `t_order0` VALUES ('527545610346176512', '527545609956102145', '1234');
INSERT INTO `t_order0` VALUES ('527545615152848896', '527545614846660609', '1234');
INSERT INTO `t_order0` VALUES ('527545750767280128', '527545750326874113', '1234');
INSERT INTO `t_order0` VALUES ('527802607696093184', '527802607230521345', '1234');
INSERT INTO `t_order0` VALUES ('527804282343268352', '527804280724262912', '1234');
INSERT INTO `t_order0` VALUES ('527806227825041408', '527806226084401152', '1234');
INSERT INTO `t_order0` VALUES ('527807329291214848', '527807327202447360', '1234');
INSERT INTO `t_order0` VALUES ('527812453619212288', '527812451933097984', '1234');

-- ----------------------------
-- Table structure for t_order1
-- ----------------------------
DROP TABLE IF EXISTS `t_order1`;
CREATE TABLE `t_order1` (
  `id` bigint(20) NOT NULL,
  `t_pay_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order1
-- ----------------------------
INSERT INTO `t_order1` VALUES ('527545556856217601', '527545556529057792', '1234');
INSERT INTO `t_order1` VALUES ('527545602393776129', '527545602037256192', '1234');
INSERT INTO `t_order1` VALUES ('527545607737319425', '527545607435325440', '1234');
INSERT INTO `t_order1` VALUES ('527545612594323457', '527545612271357952', '1234');
INSERT INTO `t_order1` VALUES ('527545617828814849', '527545617581346816', '1234');
INSERT INTO `t_order1` VALUES ('527545753812344833', '527545753292247040', '1234');
INSERT INTO `t_order1` VALUES ('527801932304097281', '527801930605400064', '1234');
INSERT INTO `t_order1` VALUES ('527804617342328833', '527804615438110720', '1234');
INSERT INTO `t_order1` VALUES ('527812227613335553', '527812225830752256', '1234');

-- ----------------------------
-- Table structure for t_pay0
-- ----------------------------
DROP TABLE IF EXISTS `t_pay0`;
CREATE TABLE `t_pay0` (
  `id` bigint(20) NOT NULL,
  `money` int(10) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_pay0
-- ----------------------------
INSERT INTO `t_pay0` VALUES ('527545556529057792', '8888', '1234');
INSERT INTO `t_pay0` VALUES ('527545602037256192', '8888', '1234');
INSERT INTO `t_pay0` VALUES ('527545607435325440', '8888', '1234');
INSERT INTO `t_pay0` VALUES ('527545612271357952', '8888', '1234');
INSERT INTO `t_pay0` VALUES ('527545617581346816', '8888', '1234');
INSERT INTO `t_pay0` VALUES ('527545753292247040', '8888', '1234');
INSERT INTO `t_pay0` VALUES ('527801930605400064', '8888', '1234');
INSERT INTO `t_pay0` VALUES ('527804280724262912', '8888', '1234');
INSERT INTO `t_pay0` VALUES ('527806226084401152', '8888', '1234');
INSERT INTO `t_pay0` VALUES ('527807327202447360', '8888', '1234');
INSERT INTO `t_pay0` VALUES ('527812225830752256', '8888', '1234');
INSERT INTO `t_pay0` VALUES ('527812451933097984', '8888', '1234');

-- ----------------------------
-- Table structure for t_pay1
-- ----------------------------
DROP TABLE IF EXISTS `t_pay1`;
CREATE TABLE `t_pay1` (
  `id` bigint(20) NOT NULL,
  `money` int(10) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_pay1
-- ----------------------------
INSERT INTO `t_pay1` VALUES ('527545184322326529', '8888', '1234');
INSERT INTO `t_pay1` VALUES ('527545598967025665', '8888', '1234');
INSERT INTO `t_pay1` VALUES ('527545604671279105', '8888', '1234');
INSERT INTO `t_pay1` VALUES ('527545609956102145', '8888', '1234');
INSERT INTO `t_pay1` VALUES ('527545614846660609', '8888', '1234');
INSERT INTO `t_pay1` VALUES ('527545750326874113', '8888', '1234');
INSERT INTO `t_pay1` VALUES ('527802607230521345', '8888', '1234');

-- ----------------------------
-- Table structure for undo_log
-- ----------------------------
DROP TABLE IF EXISTS `undo_log`;
CREATE TABLE `undo_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `branch_id` bigint(20) NOT NULL,
  `xid` varchar(100) NOT NULL,
  `context` varchar(128) NOT NULL,
  `rollback_info` longblob NOT NULL,
  `log_status` int(11) NOT NULL,
  `log_created` datetime NOT NULL,
  `log_modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_undo_log` (`xid`,`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of undo_log
-- ----------------------------
