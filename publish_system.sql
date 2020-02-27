/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : publish_system

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 24/02/2020 11:25:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for page
-- ----------------------------
DROP TABLE IF EXISTS `page`;
CREATE TABLE `page`  (
  `pageid` int(11) NOT NULL AUTO_INCREMENT,
  `pagename` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `top_hyperlink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `period_picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content_picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pageid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of page
-- ----------------------------
INSERT INTO `page` VALUES (1, '第十七期', 'www.baidu.com', 'banner.png', 'news01.png');
INSERT INTO `page` VALUES (2, '第十八期', 'www.baidu.com', 'banner.png', '');

-- ----------------------------
-- Table structure for pageblock
-- ----------------------------
DROP TABLE IF EXISTS `pageblock`;
CREATE TABLE `pageblock`  (
  `blockid` int(11) NOT NULL AUTO_INCREMENT,
  `pagename` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `subtitle` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `department` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `day` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `hyperlink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`blockid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pageblock
-- ----------------------------
INSERT INTO `pageblock` VALUES (1, '第十七期', '我的', '第一个标题', '人力资源', '2015-01-01', 'pic01.png', NULL, '1');
INSERT INTO `pageblock` VALUES (2, '第十七期', '我的', '第一个标题', '人力资源', '2015-01-01', 'pic02.png', NULL, '1');
INSERT INTO `pageblock` VALUES (4, '第十七期', '我的', '第一个标题', '人力资源', '2015-01-01', 'zx01.png', NULL, '2');
INSERT INTO `pageblock` VALUES (5, '第十七期', '我的', '第四个标题', '人力资源', '2015-01-01', 'zx02.png', NULL, '2');
INSERT INTO `pageblock` VALUES (7, '第十七期', '我的', '第三个标题', '人力资源', '2015-01-01', 'pic03.png', 'www.baidu.com', '1');
INSERT INTO `pageblock` VALUES (8, '第十八期', '我的', '第三个标题', '人力资源', '2015-01-01', 'pic03.png', 'www.baidu.com', '1');

SET FOREIGN_KEY_CHECKS = 1;
