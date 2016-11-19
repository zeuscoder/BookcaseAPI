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

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
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
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', 'zeus', '123456', null, null, null, null);
INSERT INTO `account` VALUES ('4', 'coder', '123456', null, null, null, null);

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `authors` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', 'JavaScript高级程序设计', 'Nicholas', '1', '1', '9787115275790', '365', '3', '12', '2017-01-26', 'Zeus出版社', '3', '123');

-- ----------------------------
-- Table structure for booklist
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
-- Records of booklist
-- ----------------------------

-- ----------------------------
-- Table structure for geek
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
-- Records of geek
-- ----------------------------

-- ----------------------------
-- Table structure for order
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
-- Records of order
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
