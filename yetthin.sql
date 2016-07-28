/*
Navicat MySQL Data Transfer

Source Server         : yetthindb
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : yetthin

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2016-07-28 19:33:22
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `ggroup`
-- ----------------------------
DROP TABLE IF EXISTS `ggroup`;
CREATE TABLE `ggroup` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) NOT NULL,
  `group_desc` varchar(255) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ggroup
-- ----------------------------
INSERT INTO `ggroup` VALUES ('1', 'tomT123123', 'www');
INSERT INTO `ggroup` VALUES ('3', 'yertT', 'eeee');
INSERT INTO `ggroup` VALUES ('4', 'wang', 'QWE');

-- ----------------------------
-- Table structure for `group_user`
-- ----------------------------
DROP TABLE IF EXISTS `group_user`;
CREATE TABLE `group_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_componet` (`user_id`,`group_id`),
  KEY `index_group_id` (`group_id`),
  KEY `index_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_user
-- ----------------------------
INSERT INTO `group_user` VALUES ('1', '1', '1');
INSERT INTO `group_user` VALUES ('3', '1', '3');
INSERT INTO `group_user` VALUES ('6', '3', '3');
INSERT INTO `group_user` VALUES ('8', '4', '3');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'wang1', 'wang@126.com', '111111');
INSERT INTO `user` VALUES ('2', 'zhang1', 'zhang@qq.com', '222222');
INSERT INTO `user` VALUES ('3', 'he1', 'he@125.com', '222233');
INSERT INTO `user` VALUES ('4', 'zhao1', 'zhao@aa.com', '444444');
INSERT INTO `user` VALUES ('5', 'li1', 'li1@126.com', '565555');
