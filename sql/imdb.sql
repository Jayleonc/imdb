/*
 Navicat Premium Data Transfer

 Source Server         : 47.113.84.150
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : 47.113.84.150:3306
 Source Schema         : imdb

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 27/07/2020 19:46:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for genre
-- ----------------------------
DROP TABLE IF EXISTS `genre`;
CREATE TABLE `genre` (
  `id` tinyint unsigned NOT NULL,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='类型表';

-- ----------------------------
-- Records of genre
-- ----------------------------
BEGIN;
INSERT INTO `genre` VALUES (1, 'Action');
INSERT INTO `genre` VALUES (2, 'Adventure');
INSERT INTO `genre` VALUES (3, 'Animation');
INSERT INTO `genre` VALUES (4, 'Biography');
INSERT INTO `genre` VALUES (5, 'Comedy');
INSERT INTO `genre` VALUES (6, 'Drama');
INSERT INTO `genre` VALUES (7, 'Family');
INSERT INTO `genre` VALUES (8, 'Fantasy');
INSERT INTO `genre` VALUES (9, 'Film-Nior');
INSERT INTO `genre` VALUES (10, 'History');
INSERT INTO `genre` VALUES (11, 'Horror');
INSERT INTO `genre` VALUES (12, 'Musical');
INSERT INTO `genre` VALUES (13, 'Mystery');
INSERT INTO `genre` VALUES (14, 'Romance');
INSERT INTO `genre` VALUES (15, 'Sci-Fi');
INSERT INTO `genre` VALUES (16, 'Sport');
INSERT INTO `genre` VALUES (17, 'Thriller');
INSERT INTO `genre` VALUES (18, 'War');
INSERT INTO `genre` VALUES (19, 'Western');
INSERT INTO `genre` VALUES (20, 'Crime');
COMMIT;

-- ----------------------------
-- Table structure for mg
-- ----------------------------
DROP TABLE IF EXISTS `mg`;
CREATE TABLE `mg` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `mid` smallint NOT NULL DEFAULT '0',
  `gid` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='电影和电影类型关系表';

-- ----------------------------
-- Records of mg
-- ----------------------------
BEGIN;
INSERT INTO `mg` VALUES (2, 2, 6);
INSERT INTO `mg` VALUES (3, 2, 20);
INSERT INTO `mg` VALUES (4, 3, 6);
INSERT INTO `mg` VALUES (5, 3, 20);
INSERT INTO `mg` VALUES (6, 4, 6);
INSERT INTO `mg` VALUES (7, 4, 20);
INSERT INTO `mg` VALUES (8, 4, 1);
INSERT INTO `mg` VALUES (9, 5, 6);
INSERT INTO `mg` VALUES (13, 7, 2);
INSERT INTO `mg` VALUES (14, 7, 6);
INSERT INTO `mg` VALUES (15, 7, 8);
COMMIT;

-- ----------------------------
-- Table structure for movies
-- ----------------------------
DROP TABLE IF EXISTS `movies`;
CREATE TABLE `movies` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'movie_name',
  `date` bigint NOT NULL DEFAULT '1900',
  `rating` decimal(2,1) NOT NULL DEFAULT '0.0',
  `country` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'china',
  `motto` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='电影表';

-- ----------------------------
-- Records of movies
-- ----------------------------
BEGIN;
INSERT INTO `movies` VALUES (1, 'The Godfather', 70214400, 9.1, 'USA', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.');
INSERT INTO `movies` VALUES (2, 'The Godfather  Part II', 154108800, 9.0, 'USA', 'The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.');
INSERT INTO `movies` VALUES (3, 'The Dark Knight', 1216310400, 9.0, 'USA', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.');
INSERT INTO `movies` VALUES (4, 'Angry Men', 0, 8.9, 'USA', 'A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.');
INSERT INTO `movies` VALUES (5, 'The Lord of the Rings-The Return of the King', 1079020800, 8.9, 'China', 'Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.');
COMMIT;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `pimage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
BEGIN;
INSERT INTO `product` VALUES (8, '247af4ff-19bc-4d25-a262-bcd6673e35e3logo.png');
INSERT INTO `product` VALUES (9, 'c5033442-69f3-4bee-ab07-374885779511截屏2020-07-17 19.03.22.png');
INSERT INTO `product` VALUES (10, '041b9944-bffe-477f-8630-bf82281a9924D4AEB96F-6E7F-4154-B881-C1E2CA09BC8E.png');
INSERT INTO `product` VALUES (11, '08ef5989-362c-4d7f-a233-af3603c80ef0238801C985897167E3DDA0DCCD3FDBED.jpg');
INSERT INTO `product` VALUES (12, '86ba0e21-b89b-436c-99a8-d326d0c3041e截屏2020-03-30 22.56.48.png');
INSERT INTO `product` VALUES (13, 'b3bedf6d-09dd-4591-a6a7-b02cfc6b4e8alogo.png');
INSERT INTO `product` VALUES (14, '934fecdd-206a-4ca3-85de-0be8c11aeb41Jayleonc.jpg');
INSERT INTO `product` VALUES (15, '6d7b3870-c57b-4f9d-824c-60e7af4bd810CC61D629-6121-4AD5-9C9E-50AC7DF19F66.png');
INSERT INTO `product` VALUES (16, 'd3b68274-befe-4885-88fd-7e2c405e0da4CC61D629-6121-4AD5-9C9E-50AC7DF19F66.png');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
