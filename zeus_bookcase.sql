/*
Navicat MySQL Data Transfer

Source Server         : zeus
Source Server Version : 50546
Source Host           : localhost:3306
Source Database       : zeus_bookcase

Target Server Type    : MYSQL
Target Server Version : 50546
File Encoding         : 65001

Date: 2016-11-19 17:20:27
*/


SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sign` varchar(255) DEFAULT NULL,
  `nickName` varchar(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `account`
-- ----------------------------
BEGIN;
INSERT INTO `account` VALUES ('1', 'zeus', '123456', null, null, null, null), ('4', 'coder', '123456', null, null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `authors` varchar(255) NOT NULL,
  `category` int(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `pages` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `price` varchar(20) NOT NULL,
  `pub_date` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `book`
-- ----------------------------
BEGIN;
INSERT INTO `book` VALUES ('1', 'JavaScript高级程序设计', 'Nicholas', '1', '1', '9787115275790', '365', '3', '65', '2017-01-26', 'Zeus出版社', '3', '123'), ('2', 'JavaScript权威指南', 'Zeus', '2', '2', '9787115275791', '362', '4', '45', '2017-01-26', 'Zeus出版社', '3', '456'), ('3', 'JavaScript忍者秘籍', 'lvzimou', '3', '3', '9787115275792', '392', '5', '56', '2017-01-26', 'Zeus出版社', '5', '789');
COMMIT;

-- ----------------------------
--  Table structure for `booklist`
-- ----------------------------
DROP TABLE IF EXISTS `booklist`;
CREATE TABLE `booklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `book_ids` varchar(255) DEFAULT NULL,
  `reader_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `category`
-- ----------------------------
BEGIN;
INSERT INTO `category` VALUES ('1', '技术'), ('2', '科学'), ('3', '心理');
COMMIT;

-- ----------------------------
--  Table structure for `geek`
-- ----------------------------
DROP TABLE IF EXISTS `geek`;
CREATE TABLE `geek` (
  `name` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `user_nickname` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `pay` varchar(255) DEFAULT '',
  `book_id` int(11) DEFAULT NULL,
  `book_count` varchar(255) DEFAULT NULL,
  `book_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `zone`
-- ----------------------------
DROP TABLE IF EXISTS `zone`;
CREATE TABLE `zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_code` varchar(11) NOT NULL,
  `zone_name` varchar(255) NOT NULL,
  `parent_code` varchar(11) NOT NULL DEFAULT '0',
  `parent_name` varchar(255) NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `zone`
-- ----------------------------
BEGIN;
INSERT INTO `zone` VALUES ('1', '440000', '广东省', '0', '0'), ('2', '450000', '广西壮族自治区', '0', '0'), ('3', '440100', '广州市', '440000', '广东省'), ('4', '440200', '深圳市', '440000', '广东省'), ('5', '440101', '天河区', '440100', '广州市'), ('6', '440102', '越秀区', '440100', '广州市'), ('7', '440103', '海珠区', '440100', '广州市'), ('8', '440201', '宝安区', '440200', '深圳市'), ('9', '440202', '罗湖区', '440200', '深圳市'), ('10', '450100', '桂林市', '450000', '广西壮族自治区'), ('11', '450101', '城区', '450100', '桂林市'), ('12', '460000', '湖南省', '0', '0'), ('13', '460100', '长沙市', '460000', '湖南省'), ('14', '460200', '常德市', '460000', '湖南省'), ('15', '460101', '马栏山', '460100', '长沙市'), ('16', '460201', '常德镇', '460200', '常德市');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
