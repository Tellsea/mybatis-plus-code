/*
 Navicat Premium Data Transfer

 Source Server         : 阿里云
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 47.107.171.232:3306
 Source Schema         : skeleton

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 23/07/2019 00:01:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `parent_id` bigint(20) NOT NULL COMMENT '上级部门ID',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES (1, 0, '研发部', '2019-06-22 16:12:09');
INSERT INTO `dept` VALUES (2, 0, '运营部', '2019-06-22 16:12:32');
INSERT INTO `dept` VALUES (3, 0, '市场部', '2019-06-22 16:12:45');
INSERT INTO `dept` VALUES (4, 10, '项目部', '2019-06-22 16:13:25');
INSERT INTO `dept` VALUES (5, 0, '财务部', '2019-06-22 16:13:28');
INSERT INTO `dept` VALUES (6, 0, '人力行政部', '2019-06-22 16:13:31');
INSERT INTO `dept` VALUES (7, 1, '研发一部', '2019-06-22 16:13:49');
INSERT INTO `dept` VALUES (8, 1, '研发二部', '2019-06-22 16:14:02');
INSERT INTO `dept` VALUES (9, 0, '测试部', '2019-07-02 17:27:51');
INSERT INTO `dept` VALUES (10, 9, '测试一部', '2019-07-02 17:30:27');
INSERT INTO `dept` VALUES (11, 9, '测试二部', '2019-07-02 17:34:17');
INSERT INTO `dept` VALUES (12, 5, '仓管部', '2019-07-04 17:37:35');
INSERT INTO `dept` VALUES (13, 9, '测试三部', '2019-07-02 17:38:51');
INSERT INTO `dept` VALUES (14, 4, '项目一部', '2019-07-02 17:42:26');
INSERT INTO `dept` VALUES (15, 0, '划水部', '2019-07-04 18:50:32');

-- ----------------------------
-- Table structure for login_log
-- ----------------------------
DROP TABLE IF EXISTS `login_log`;
CREATE TABLE `login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录地点',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '登录时间',
  `device` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录设备',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 198 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of login_log
-- ----------------------------
INSERT INTO `login_log` VALUES (1, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-06-23 11:58:29', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (2, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-06-23 12:01:48', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (3, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-06-23 12:06:13', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (4, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-06-23 12:28:43', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (5, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-06-23 12:37:56', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (6, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-06-23 12:41:00', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (7, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-06-23 12:50:50', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (8, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-06-23 12:52:50', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (9, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-06-23 13:02:04', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (10, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-06-23 13:03:53', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (11, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-06-23 13:09:22', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (12, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-06-23 13:12:38', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (13, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-06-23 13:15:40', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (14, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-06-23 15:27:42', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (15, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-06-23 15:29:48', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (16, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-06-23 15:30:25', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (17, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-06-23 15:39:45', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (18, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-06-23 15:54:44', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (19, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-06-23 16:04:08', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (20, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-06-23 16:34:33', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (21, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-06-23 16:58:59', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (22, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-06-23 17:07:25', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (23, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-06-23 17:07:56', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (24, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-02 10:16:04', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (25, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-02 10:25:37', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (26, 'tellsea', '127.0.0.1', '0|0|0|??IP|??IP', '2019-07-02 10:38:55', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (27, 'tellsea', '127.0.0.1', '0|0|0|??IP|??IP', '2019-07-02 10:54:22', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (28, 'tellsea', '127.0.0.1', '0|0|0|??IP|??IP', '2019-07-02 11:02:06', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (29, 'tellsea', '127.0.0.1', '0|0|0|??IP|??IP', '2019-07-02 11:02:06', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (30, 'tellsea', '127.0.0.1', '0|0|0|??IP|??IP', '2019-07-02 11:07:39', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (31, 'tellsea', '127.0.0.1', '0|0|0|??IP|??IP', '2019-07-02 11:21:56', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (32, 'tellsea', '127.0.0.1', '0|0|0|??IP|??IP', '2019-07-02 11:21:56', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (33, 'tellsea', '127.0.0.1', '0|0|0|??IP|??IP', '2019-07-02 11:21:56', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (34, 'tellsea', '127.0.0.1', '0|0|0|??IP|??IP', '2019-07-02 11:24:36', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (35, 'tellsea', '127.0.0.1', '0|0|0|??IP|??IP', '2019-07-02 11:26:35', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (36, 'tellsea', '127.0.0.1', '0|0|0|??IP|??IP', '2019-07-02 11:27:19', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (37, 'tellsea', '127.0.0.1', '0|0|0|??IP|??IP', '2019-07-02 12:04:43', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (38, 'tellsea', '127.0.0.1', '0|0|0|??IP|??IP', '2019-07-02 13:15:55', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (39, 'tellsea', '127.0.0.1', '0|0|0|??IP|??IP', '2019-07-02 13:30:07', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (40, 'tellsea', '127.0.0.1', '0|0|0|??IP|??IP', '2019-07-02 13:58:50', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (41, 'tellsea', '127.0.0.1', '0|0|0|??IP|??IP', '2019-07-02 14:00:02', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (42, 'tellsea', '127.0.0.1', '0|0|0|??IP|??IP', '2019-07-02 14:46:10', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (43, 'tellsea', '127.0.0.1', '0|0|0|??IP|??IP', '2019-07-02 14:46:10', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (44, 'tellsea', '127.0.0.1', '0|0|0|??IP|??IP', '2019-07-02 14:46:10', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (45, 'tellsea', '127.0.0.1', '0|0|0|??IP|??IP', '2019-07-02 14:46:10', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (46, 'tellsea', '127.0.0.1', '0|0|0|??IP|??IP', '2019-07-02 14:46:10', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (47, 'tellsea', '127.0.0.1', '0|0|0|??IP|??IP', '2019-07-02 15:01:28', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (48, 'tellsea', '127.0.0.1', '0|0|0|??IP|??IP', '2019-07-02 16:32:02', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (49, 'tellsea', '127.0.0.1', '0|0|0|??IP|??IP', '2019-07-02 16:49:36', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (50, 'tellsea', '127.0.0.1', '0|0|0|??IP|??IP', '2019-07-02 17:25:01', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (51, 'tellsea', '127.0.0.1', '0|0|0|??IP|??IP', '2019-07-02 17:27:37', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (52, 'tellsea', '127.0.0.1', '0|0|0|??IP|??IP', '2019-07-02 17:30:06', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (53, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-02 17:42:10', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (54, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-02 17:42:58', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (55, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-02 17:44:50', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (56, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-02 17:48:25', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (57, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-02 17:49:36', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (58, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 08:46:03', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (59, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 09:16:09', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (60, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 09:44:21', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (61, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 10:03:39', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (62, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 10:08:16', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (63, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 10:25:58', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (64, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 10:26:17', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (65, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 10:54:06', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (66, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 10:54:32', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (67, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 11:30:17', 'Internet Explorer 11 -- Windows 10');
INSERT INTO `login_log` VALUES (68, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 11:31:40', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (69, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 11:31:51', 'Internet Explorer 11 -- Windows 10');
INSERT INTO `login_log` VALUES (70, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 11:36:30', 'Internet Explorer 11 -- Windows 10');
INSERT INTO `login_log` VALUES (71, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 11:37:52', 'Internet Explorer 11 -- Windows 10');
INSERT INTO `login_log` VALUES (72, 'tellsea', '192.168.0.102', '0|0|0|内网IP|内网IP', '2019-07-03 11:39:05', 'Apple WebKit -- Mac OS X (iPhone)');
INSERT INTO `login_log` VALUES (73, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 11:46:18', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (74, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 11:46:26', 'Internet Explorer 11 -- Windows 10');
INSERT INTO `login_log` VALUES (75, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 11:47:37', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (76, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 11:47:47', 'Internet Explorer 11 -- Windows 10');
INSERT INTO `login_log` VALUES (77, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 11:48:07', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (78, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 11:48:12', 'Internet Explorer 11 -- Windows 10');
INSERT INTO `login_log` VALUES (79, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 11:49:46', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (80, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 11:49:52', 'Internet Explorer 11 -- Windows 10');
INSERT INTO `login_log` VALUES (81, 'tellsea', '192.168.0.102', '0|0|0|内网IP|内网IP', '2019-07-03 11:50:19', 'Apple WebKit -- Mac OS X (iPhone)');
INSERT INTO `login_log` VALUES (82, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 11:50:47', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (83, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 11:51:41', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (84, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 11:51:51', 'Internet Explorer 11 -- Windows 10');
INSERT INTO `login_log` VALUES (85, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 11:53:16', 'Internet Explorer 11 -- Windows 10');
INSERT INTO `login_log` VALUES (86, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 11:53:27', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (87, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 12:04:44', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (88, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 12:05:33', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (89, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 12:06:51', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (90, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 12:07:02', 'Internet Explorer 11 -- Windows 10');
INSERT INTO `login_log` VALUES (91, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 12:07:27', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (92, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 12:08:20', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (93, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 12:08:26', 'Internet Explorer 11 -- Windows 10');
INSERT INTO `login_log` VALUES (94, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 12:11:01', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (95, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 12:12:18', 'Internet Explorer 11 -- Windows 10');
INSERT INTO `login_log` VALUES (96, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 12:43:20', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (97, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-03 12:43:21', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (98, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-04 00:59:46', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (99, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-04 12:25:18', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (100, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-04 12:27:01', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (101, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-04 18:49:53', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (102, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-05 09:11:40', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (103, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-05 10:05:35', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (104, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-05 11:36:04', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (105, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-05 14:12:07', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (106, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-06 13:48:21', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (107, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-09 12:21:34', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (108, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-09 13:17:37', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (109, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-13 18:48:53', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (110, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-13 18:50:59', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (111, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-13 18:52:17', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (112, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-13 19:16:17', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (113, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-13 19:17:58', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (114, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-13 20:14:17', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (115, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-13 20:16:18', 'Internet Explorer 11 -- Windows 10');
INSERT INTO `login_log` VALUES (116, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-13 20:16:50', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (117, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-13 20:16:52', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (118, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-13 20:16:52', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (119, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-13 23:09:49', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (120, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-14 00:02:52', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (121, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-14 00:03:02', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (122, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-14 19:24:43', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (123, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-14 19:29:38', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (124, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-14 19:33:12', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (125, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-14 19:35:44', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (126, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-14 19:37:29', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (127, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-14 19:42:23', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (128, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-14 19:45:13', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (129, 'admin', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-14 19:46:38', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (130, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-14 19:55:13', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (131, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-14 19:57:03', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (132, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-14 20:00:39', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (133, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-14 20:03:57', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (134, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-14 20:51:30', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (135, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-16 20:26:04', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (136, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-16 20:28:59', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (137, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-16 21:30:06', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (138, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-16 22:46:54', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (139, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-16 22:54:58', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (140, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-16 22:54:58', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (141, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-16 23:21:47', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (142, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-16 23:27:43', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (143, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-17 14:26:00', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (144, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-17 14:30:14', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (145, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-17 14:45:26', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (146, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-17 14:46:00', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (147, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-17 14:50:52', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (148, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-17 14:58:44', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (149, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-17 15:06:23', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (150, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-17 15:20:06', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (151, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-17 15:26:45', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (152, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-17 15:39:48', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (153, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-17 15:41:25', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (154, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-17 15:41:58', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (155, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-17 15:42:55', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (156, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-17 16:27:46', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (157, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-17 16:35:18', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (158, 'admin', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-17 16:45:10', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (159, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-17 17:11:13', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (160, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-17 17:17:28', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (161, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-17 17:17:28', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (162, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-17 17:17:28', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (163, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-17 17:17:28', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (164, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-17 17:17:29', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (165, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-17 17:17:29', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (166, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-17 17:21:56', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (167, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-17 17:27:04', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (168, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-17 17:51:27', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (169, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-17 20:54:59', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (170, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-17 23:10:50', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (171, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-18 09:40:25', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (172, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-18 12:54:51', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (173, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-18 15:37:42', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (174, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-18 15:41:35', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (175, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-18 16:03:51', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (176, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-18 16:03:51', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (177, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-18 16:06:52', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (178, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-18 16:20:57', 'Microsoft Edge (layout engine 16) -- Windows 10');
INSERT INTO `login_log` VALUES (179, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-18 16:23:19', 'Microsoft Edge (layout engine 16) -- Windows 10');
INSERT INTO `login_log` VALUES (180, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-18 16:27:11', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (181, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-18 16:27:33', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (182, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-18 16:28:18', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (183, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-18 16:29:09', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (184, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-18 16:30:06', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (185, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-18 16:31:38', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (186, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-18 16:47:49', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (187, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-19 10:10:17', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (188, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-19 13:35:11', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (189, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-19 14:18:48', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (190, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-19 14:22:26', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (191, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-19 15:08:56', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (192, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-19 15:23:14', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (193, 'admin', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-19 15:24:48', 'Microsoft Edge (layout engine 16) -- Windows 10');
INSERT INTO `login_log` VALUES (194, 'tellsea', '127.0.0.1', '0|0|0|内网IP|内网IP', '2019-07-19 15:33:01', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (195, 'admin', '192.168.0.100', '0|0|0|内网IP|内网IP', '2019-07-20 11:38:15', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (196, 'tellsea', '192.168.0.100', '0|0|0|内网IP|内网IP', '2019-07-20 11:40:03', 'Chrome -- Windows 10');
INSERT INTO `login_log` VALUES (197, 'tellsea', '192.168.0.100', '0|0|0|内网IP|内网IP', '2019-07-20 11:40:03', 'Chrome -- Windows 10');

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '资源编号',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '资源名称',
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父级ID',
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'URL',
  `perms` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '权限标识',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型：如button按钮 menu菜单',
  `icon` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `priority` bigint(20) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '状态 0锁定 1有效',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资源表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES (1, '用户新增', 4, '/user/insert', 'user:insert', '0', NULL, NULL, '2019-07-09 16:05:29', 0);
INSERT INTO `resource` VALUES (2, '角色更新', 4, '/user/update', 'user:update', '0', NULL, NULL, '2019-07-09 16:05:41', 0);
INSERT INTO `resource` VALUES (3, '用户删除', 4, '/user/delete', 'user:delete', '0', NULL, NULL, '2019-07-09 16:05:50', 0);
INSERT INTO `resource` VALUES (4, '用户管理', 0, '/user/**', 'user:manage', '0', NULL, NULL, '2019-07-16 21:31:25', 0);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '状态 0锁定 1有效',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'admin', '超级管理员', 1, '2019-07-02 10:29:05');
INSERT INTO `role` VALUES (2, 'scott', '系统管理员', 0, '2019-07-02 10:29:25');
INSERT INTO `role` VALUES (3, 'monitor', '系统监控员', 0, '2019-07-02 10:29:52');
INSERT INTO `role` VALUES (4, 'task', '任务调度员', 0, '2019-07-02 10:39:25');
INSERT INTO `role` VALUES (5, 'tourist', '预览系统', 0, '2019-07-02 10:41:49');

-- ----------------------------
-- Table structure for role_resource
-- ----------------------------
DROP TABLE IF EXISTS `role_resource`;
CREATE TABLE `role_resource`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `resource_id` bigint(20) NOT NULL COMMENT '菜单/按钮ID',
  PRIMARY KEY (`role_id`, `resource_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色资源关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role_resource
-- ----------------------------
INSERT INTO `role_resource` VALUES (1, 1);
INSERT INTO `role_resource` VALUES (1, 2);
INSERT INTO `role_resource` VALUES (1, 3);

-- ----------------------------
-- Table structure for system_log
-- ----------------------------
DROP TABLE IF EXISTS `system_log`;
CREATE TABLE `system_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作用户',
  `operation` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作描述',
  `time` bigint(20) NULL DEFAULT NULL COMMENT '耗时(毫秒)',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作方法',
  `params` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作参数',
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  `location` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作地点',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `salt` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '盐值',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `modify_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `sex` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别 1男 2女',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '状态 0 锁定 1有效',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'a994fef0ddad5f9eed20804e7b18f559', 'VKqvum8YW0xNaTDFbrcijhTG6wUP5xAZ', 7, '2019-06-21 16:16:30', '2019-06-21 16:16:50', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2562372298,495845374&fm=26&gp=0.jpg', '18386474459', '1', 'I am Iron Man', 1);
INSERT INTO `user` VALUES (2, 'tiger', '44eb196feb810ee770047cc34da66133', 'V1D9h266hLYqYfF5DnZCjlJKyG3Gx36c', 8, '2019-06-22 12:40:46', '2019-06-22 12:40:49', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3041599764,2432042915&fm=26&gp=0.jpg', '18384595550', '0', '我这么美，我不能死！', 1);
INSERT INTO `user` VALUES (3, 'scott', '221605ef8256bb0cfbbfa5fb7688eaf1', '2HI9EdHJjSYsfyqSdbWlXZRxJNXvFnrE', 3, '2019-06-22 12:45:14', '2019-06-22 12:45:16', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=584948523,1006436504&fm=26&gp=0.jpg', '13738449593', '0', '天生我才必有用', 1);
INSERT INTO `user` VALUES (4, 'tellsea', '71610aebc66d2d8643612dc334f8d69f', 'RccHBFBuC3zMywg97HVUXWd5UgKLFVqX', 4, '2019-06-22 12:48:28', '2019-06-22 12:48:30', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1211952391,3572964969&fm=26&gp=0.jpg', '15876776539', '1', '一只懒惰的小海绵', 1);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 1);
INSERT INTO `user_role` VALUES (1, 2);
INSERT INTO `user_role` VALUES (1, 3);
INSERT INTO `user_role` VALUES (1, 4);
INSERT INTO `user_role` VALUES (1, 5);

SET FOREIGN_KEY_CHECKS = 1;
