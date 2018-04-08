/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : crm

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2018-03-07 21:31:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `age`
-- ----------------------------
DROP TABLE IF EXISTS `age`;
CREATE TABLE `age` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of age
-- ----------------------------
INSERT INTO `age` VALUES ('1', '20以下');
INSERT INTO `age` VALUES ('2', '21-25');
INSERT INTO `age` VALUES ('3', '26-30');
INSERT INTO `age` VALUES ('4', '31-40');
INSERT INTO `age` VALUES ('5', '41-50');
INSERT INTO `age` VALUES ('6', '50以上');

-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `age_id` int(11) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `budget` int(11) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  `intention` varchar(50) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', '小明', '男', '1', '1301222222', '20', '程序员', '帕萨特', '很有钱');
INSERT INTO `customer` VALUES ('2', '小红', '女', '1', '1301222223', '10', '美工', 'polo', '喜欢亮颜色');
INSERT INTO `customer` VALUES ('3', '小强', '男', '2', '1301222224', '12', '策划', '朗逸', '没钱');
INSERT INTO `customer` VALUES ('4', '小刚', '男', '3', '1301222225', '9', '保安', '桑塔纳', '看重性价比');
INSERT INTO `customer` VALUES ('5', '小华', '女', '2', '1301222226', '30', '会计', '甲壳虫', '有钱');
INSERT INTO `customer` VALUES ('6', '小辰', '男', '4', '1301222227', '50', '实施', '辉腾', '想想');
INSERT INTO `customer` VALUES ('7', '小玉', '女', '5', '1301222228', '100', '富二代', '辉腾', '真的');
