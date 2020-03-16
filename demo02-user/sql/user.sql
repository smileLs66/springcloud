/*
Navicat MySQL Data Transfer

Source Server         : ls
Source Server Version : 50639
Source Host           : localhost:3306
Source Database       : test2

Target Server Type    : MYSQL
Target Server Version : 50639
File Encoding         : 65001

Date: 2019-03-10 13:04:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(40) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` char(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cc` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '张三', '15', '男');
INSERT INTO `user` VALUES ('2', '李四', '18', '男');
INSERT INTO `user` VALUES ('3', '王五', '80', '男');
INSERT INTO `user` VALUES ('4', '小红', '18', '女');
