/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : submit_system

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 11/02/2020 17:35:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for administrator
-- ----------------------------
DROP TABLE IF EXISTS `administrator`;
CREATE TABLE `administrator`  (
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of administrator
-- ----------------------------
INSERT INTO `administrator` VALUES ('1610240036', '123456');
INSERT INTO `administrator` VALUES ('admin', '123456');
INSERT INTO `administrator` VALUES ('wxd', '123456');
INSERT INTO `administrator` VALUES ('zs', '123456');

-- ----------------------------
-- Table structure for newtemplate
-- ----------------------------
DROP TABLE IF EXISTS `newtemplate`;
CREATE TABLE `newtemplate`  (
  `templatename` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `templatefield` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`templatename`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of newtemplate
-- ----------------------------
INSERT INTO `newtemplate` VALUES ('新的模板', '姓名+年龄');
INSERT INTO `newtemplate` VALUES ('新的模板0', '态度+质量+服务+姓名+年龄+身高');
INSERT INTO `newtemplate` VALUES ('新的模板1', '姓名+年龄+身高+体重');
INSERT INTO `newtemplate` VALUES ('新的模板2', '姓名+年龄+身高');
INSERT INTO `newtemplate` VALUES ('新的模板3', '姓名+年龄');
INSERT INTO `newtemplate` VALUES ('新的模板5', '姓名+年龄+身高');
INSERT INTO `newtemplate` VALUES ('新的模板6', '姓名+年龄+身高+体重');

-- ----------------------------
-- Table structure for templatedata
-- ----------------------------
DROP TABLE IF EXISTS `templatedata`;
CREATE TABLE `templatedata`  (
  `dataid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `template` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `field_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`dataid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of templatedata
-- ----------------------------
INSERT INTO `templatedata` VALUES (15, '无限大250', '新的模板2', '3.5+4.5+3.5+新的模板2评论');
INSERT INTO `templatedata` VALUES (16, '伍达', '新的模板2', '3.5+4.5+3.5+好的');
INSERT INTO `templatedata` VALUES (17, '无限大250', '新的模板0', '3.5+5+4.5+4.5+4.5+4.5+新的模板0评价');
INSERT INTO `templatedata` VALUES (18, '王一', '新的模板2', '3.5+4.5+3.5+王一的评论');
INSERT INTO `templatedata` VALUES (19, '无限大250', '新的模板6', '3.5+4.5+4.5+3+新的模板6的评论');
INSERT INTO `templatedata` VALUES (20, '无限大250', '新的模板', '2.5+2.5+新的模板评价');
INSERT INTO `templatedata` VALUES (21, '测试名', '新的模板', '2.5+3.5+新的模板');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `department` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('a001', '王芳', '人力资源');
INSERT INTO `user` VALUES ('a002', '赵四', '市场');
INSERT INTO `user` VALUES ('a003', '赵二', '服务');
INSERT INTO `user` VALUES ('b001', '李一', '人力资源');
INSERT INTO `user` VALUES ('b002', '李二', '市场');
INSERT INTO `user` VALUES ('b003', '赵三', '服务');
INSERT INTO `user` VALUES ('c001', '王一', '人力资源');
INSERT INTO `user` VALUES ('c002', '王二', '市场');
INSERT INTO `user` VALUES ('c003', '王三', '服务');
INSERT INTO `user` VALUES ('s001', '张三', '人力资源');
INSERT INTO `user` VALUES ('s002', '李四', '人力资源');
INSERT INTO `user` VALUES ('s003', '王五', '市场');
INSERT INTO `user` VALUES ('s004', '员工1', '人力资源');
INSERT INTO `user` VALUES ('s005', '员工2', '人力资源');

SET FOREIGN_KEY_CHECKS = 1;
