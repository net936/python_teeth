/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50744
 Source Host           : localhost:3306
 Source Schema         : python_teeth

 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 23/06/2024 20:20:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add user', 13, 'add_user');
INSERT INTO `auth_permission` VALUES (50, 'Can change user', 13, 'change_user');
INSERT INTO `auth_permission` VALUES (51, 'Can delete user', 13, 'delete_user');
INSERT INTO `auth_permission` VALUES (52, 'Can view user', 13, 'view_user');
INSERT INTO `auth_permission` VALUES (53, 'Can add thing', 14, 'add_thing');
INSERT INTO `auth_permission` VALUES (54, 'Can change thing', 14, 'change_thing');
INSERT INTO `auth_permission` VALUES (55, 'Can delete thing', 14, 'delete_thing');
INSERT INTO `auth_permission` VALUES (56, 'Can view thing', 14, 'view_thing');
INSERT INTO `auth_permission` VALUES (57, 'Can add record', 15, 'add_record');
INSERT INTO `auth_permission` VALUES (58, 'Can change record', 15, 'change_record');
INSERT INTO `auth_permission` VALUES (59, 'Can delete record', 15, 'delete_record');
INSERT INTO `auth_permission` VALUES (60, 'Can view record', 15, 'view_record');
INSERT INTO `auth_permission` VALUES (61, 'Can add order', 16, 'add_order');
INSERT INTO `auth_permission` VALUES (62, 'Can change order', 16, 'change_order');
INSERT INTO `auth_permission` VALUES (63, 'Can delete order', 16, 'delete_order');
INSERT INTO `auth_permission` VALUES (64, 'Can view order', 16, 'view_order');
INSERT INTO `auth_permission` VALUES (65, 'Can add comment', 17, 'add_comment');
INSERT INTO `auth_permission` VALUES (66, 'Can change comment', 17, 'change_comment');
INSERT INTO `auth_permission` VALUES (67, 'Can delete comment', 17, 'delete_comment');
INSERT INTO `auth_permission` VALUES (68, 'Can view comment', 17, 'view_comment');
INSERT INTO `auth_permission` VALUES (69, 'Can add doctor', 18, 'add_doctor');
INSERT INTO `auth_permission` VALUES (70, 'Can change doctor', 18, 'change_doctor');
INSERT INTO `auth_permission` VALUES (71, 'Can delete doctor', 18, 'delete_doctor');
INSERT INTO `auth_permission` VALUES (72, 'Can view doctor', 18, 'view_doctor');
INSERT INTO `auth_permission` VALUES (73, 'Can add feedback', 19, 'add_feedback');
INSERT INTO `auth_permission` VALUES (74, 'Can change feedback', 19, 'change_feedback');
INSERT INTO `auth_permission` VALUES (75, 'Can delete feedback', 19, 'delete_feedback');
INSERT INTO `auth_permission` VALUES (76, 'Can view feedback', 19, 'view_feedback');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------
INSERT INTO `b_ad` VALUES (1, 'ad/1719144680563.jpeg', 'http://www.baidu.com', '2024-06-23 20:11:23.173326');
INSERT INTO `b_ad` VALUES (2, 'ad/1719144687036.png', 'https://m3u8player.org', '2024-06-23 20:11:30.168375');

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '口腔检查', '2024-06-23 17:47:16.364675');
INSERT INTO `b_classification` VALUES (2, '牙齿矫正', '2024-06-23 17:47:23.978834');
INSERT INTO `b_classification` VALUES (3, '牙周治疗', '2024-06-23 17:47:37.260622');
INSERT INTO `b_classification` VALUES (4, '成人补牙', '2024-06-23 17:48:05.260968');
INSERT INTO `b_classification` VALUES (5, '烤瓷牙', '2024-06-23 17:48:15.922301');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (1, '1111', '2024-06-23 20:10:23.805510', 0, 8, 11);
INSERT INTO `b_comment` VALUES (3, 'kkkk', '2024-06-23 20:18:41.561127', 1, 10, 11);
INSERT INTO `b_comment` VALUES (4, '哈哈哈哈', '2024-06-23 20:18:44.805435', 1, 10, 11);

-- ----------------------------
-- Table structure for b_doctor
-- ----------------------------
DROP TABLE IF EXISTS `b_doctor`;
CREATE TABLE `b_doctor`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zhicheng` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_doctor
-- ----------------------------
INSERT INTO `b_doctor` VALUES (1, '刘德华', '主任医师', '擅长检查服务。', 'cover/1719137557222.png', '2024-06-23 17:40:14.507354');
INSERT INTO `b_doctor` VALUES (4, '周杰伦', '医师', '擅长口腔检查、补牙', 'cover/1719137539159.png', '2024-06-23 17:45:45.492804');
INSERT INTO `b_doctor` VALUES (5, '王双双', '主任医师', '擅长拔牙', 'cover/1719137495836.png', '2024-06-23 18:11:51.198329');
INSERT INTO `b_doctor` VALUES (6, '王菲', '副主任医师', '擅长口腔检查', 'cover/1719137521406.png', '2024-06-23 18:12:12.778839');

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_feedback
-- ----------------------------
DROP TABLE IF EXISTS `b_feedback`;
CREATE TABLE `b_feedback`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_feedback
-- ----------------------------
INSERT INTO `b_feedback` VALUES (1, '测试反馈221111', '哈哈哈哈', '刘德华', '112222011@gmail.com', '111111651534', '2024-06-23 20:12:27.792842');
INSERT INTO `b_feedback` VALUES (2, '测试反馈99999', '哈哈哈哈666666', '李梅梅', '8776666@qq.com', NULL, '2024-06-23 20:13:13.380578');

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-23 17:28:32.801611');
INSERT INTO `b_login_log` VALUES (2, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-23 19:40:29.257586');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (1, '测试通知', '哈哈哈哈哈88888', '2024-06-23 20:11:44.273994');
INSERT INTO `b_notice` VALUES (2, '测试通知123', '哈哈哈55555', '2024-06-23 20:11:55.897998');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1245 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2024-06-23 17:26:31.642005', '/myapp/index/notice/list_api', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2024-06-23 17:26:31.671931', '/myapp/index/notice/list_api', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2024-06-23 17:26:31.674888', '/myapp/index/notice/list_api', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2024-06-23 17:26:35.398727', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2024-06-23 17:26:35.401619', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2024-06-23 17:26:35.940202', '/myapp/admin/classification/list', 'GET', NULL, '549');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2024-06-23 17:27:52.202157', '/myapp/admin/adminLogin', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2024-06-23 17:27:55.957715', '/myapp/admin/adminLogin', 'POST', NULL, '4');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2024-06-23 17:28:32.805636', '/myapp/admin/adminLogin', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2024-06-23 17:28:33.023796', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2024-06-23 17:28:33.026204', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2024-06-23 17:28:35.624354', '/myapp/admin/user/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2024-06-23 17:28:37.165401', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2024-06-23 17:32:15.893462', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2024-06-23 17:32:15.918784', '/myapp/admin/classification/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2024-06-23 17:32:16.381056', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2024-06-23 17:32:19.097199', '/myapp/admin/ad/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2024-06-23 17:35:09.156070', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2024-06-23 17:35:09.184226', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2024-06-23 17:35:09.190218', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2024-06-23 17:35:09.471983', '/myapp/index/thing/list', 'GET', NULL, '323');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2024-06-23 17:35:09.729068', '/myapp/admin/ad/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2024-06-23 17:35:11.114957', '/myapp/admin/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2024-06-23 17:35:11.983279', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2024-06-23 17:35:12.003100', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2024-06-23 17:39:49.408308', '/myapp/admin/doctor/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2024-06-23 17:39:49.952565', '/myapp/admin/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2024-06-23 17:39:50.509621', '/myapp/admin/doctor/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2024-06-23 17:40:14.512354', '/myapp/admin/doctor/create', 'POST', NULL, '406');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2024-06-23 17:40:14.544778', '/myapp/admin/doctor/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2024-06-23 17:40:17.423677', '/upload/cover/1719135599336.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2024-06-23 17:40:45.718119', '/myapp/admin/doctor/update', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2024-06-23 17:40:45.791059', '/myapp/admin/doctor/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2024-06-23 17:41:31.505974', '/myapp/admin/doctor/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2024-06-23 17:41:32.909297', '/upload/cover/1719135599336.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2024-06-23 17:41:38.549398', '/myapp/admin/doctor/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2024-06-23 17:41:38.598601', '/myapp/admin/doctor/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2024-06-23 17:42:32.990784', '/myapp/admin/doctor/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2024-06-23 17:42:35.420256', '/upload/cover/1719135599336.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2024-06-23 17:42:40.505699', '/myapp/admin/doctor/update', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2024-06-23 17:42:40.544176', '/myapp/admin/doctor/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2024-06-23 17:43:30.605022', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2024-06-23 17:43:31.840352', '/myapp/admin/doctor/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2024-06-23 17:44:00.639912', '/myapp/admin/doctor/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2024-06-23 17:44:00.666954', '/myapp/admin/doctor/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2024-06-23 17:44:22.042796', '/upload/cover/1719135822941.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2024-06-23 17:44:38.568291', '/myapp/admin/doctor/update', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2024-06-23 17:44:38.601817', '/myapp/admin/doctor/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2024-06-23 17:44:40.197982', '/myapp/admin/doctor/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2024-06-23 17:45:13.848041', '/myapp/admin/doctor/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2024-06-23 17:45:16.821041', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2024-06-23 17:45:17.375637', '/myapp/admin/doctor/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2024-06-23 17:45:20.136166', '/myapp/admin/doctor/delete', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2024-06-23 17:45:20.188177', '/myapp/admin/doctor/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2024-06-23 17:45:24.069004', '/myapp/admin/doctor/create', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2024-06-23 17:45:24.100599', '/myapp/admin/doctor/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2024-06-23 17:45:26.267826', '/myapp/admin/doctor/delete', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2024-06-23 17:45:26.297570', '/myapp/admin/doctor/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2024-06-23 17:45:45.500917', '/myapp/admin/doctor/create', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2024-06-23 17:45:45.569364', '/myapp/admin/doctor/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2024-06-23 17:45:57.138269', '/myapp/admin/doctor/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2024-06-23 17:46:58.512857', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2024-06-23 17:47:16.378441', '/myapp/admin/classification/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2024-06-23 17:47:16.403422', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2024-06-23 17:47:23.991345', '/myapp/admin/classification/create', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2024-06-23 17:47:24.015347', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2024-06-23 17:47:37.265615', '/myapp/admin/classification/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2024-06-23 17:47:37.318402', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2024-06-23 17:48:05.266987', '/myapp/admin/classification/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2024-06-23 17:48:05.300545', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2024-06-23 17:48:15.926335', '/myapp/admin/classification/create', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2024-06-23 17:48:15.956290', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2024-06-23 17:48:21.113634', '/myapp/admin/doctor/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2024-06-23 17:48:21.694973', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2024-06-23 17:48:22.958568', '/myapp/admin/classification/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2024-06-23 17:48:22.962718', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2024-06-23 17:55:48.018813', '/myapp/admin/doctor/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2024-06-23 17:55:48.022529', '/myapp/admin/doctor/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2024-06-23 17:55:48.027589', '/myapp/admin/doctor/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2024-06-23 17:55:48.505260', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2024-06-23 17:55:49.582615', '/myapp/admin/doctor/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2024-06-23 17:55:50.468853', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2024-06-23 17:55:50.472841', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2024-06-23 17:55:50.477180', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2024-06-23 17:56:36.222037', '/myapp/admin/thing/create', 'POST', NULL, '70');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2024-06-23 17:56:36.288888', '/myapp/admin/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2024-06-23 17:58:07.693060', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2024-06-23 17:58:08.192092', '/myapp/admin/doctor/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2024-06-23 17:58:08.202544', '/myapp/admin/doctor/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2024-06-23 17:58:08.220523', '/myapp/admin/doctor/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2024-06-23 17:58:13.225609', '/myapp/admin/thing/update', 'POST', NULL, '80');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2024-06-23 17:58:13.305128', '/myapp/admin/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2024-06-23 17:58:31.253097', '/myapp/admin/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2024-06-23 17:59:20.767872', '/myapp/admin/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2024-06-23 18:00:22.152894', '/myapp/admin/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2024-06-23 18:00:46.360075', '/myapp/admin/doctor/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2024-06-23 18:00:46.378932', '/myapp/admin/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2024-06-23 18:00:46.469587', '/myapp/admin/thing/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2024-06-23 18:01:23.807427', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2024-06-23 18:01:24.785257', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2024-06-23 18:01:24.793256', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2024-06-23 18:01:24.797820', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2024-06-23 18:01:26.211066', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2024-06-23 18:01:27.221500', '/myapp/admin/doctor/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2024-06-23 18:01:27.240770', '/myapp/admin/doctor/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2024-06-23 18:01:27.260717', '/myapp/admin/doctor/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2024-06-23 18:01:36.129115', '/myapp/admin/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2024-06-23 18:05:53.563408', '/myapp/admin/thing/update', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2024-06-23 18:05:53.647800', '/myapp/admin/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2024-06-23 18:06:13.898411', '/myapp/admin/thing/update', 'POST', NULL, '360');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2024-06-23 18:06:13.967416', '/myapp/admin/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2024-06-23 18:06:47.271381', '/myapp/admin/thing/list', 'GET', NULL, '179');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2024-06-23 18:06:54.874240', '/upload/cover/1719137171247.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2024-06-23 18:07:07.518662', '/myapp/admin/thing/update', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2024-06-23 18:07:07.759196', '/myapp/admin/thing/list', 'GET', NULL, '188');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2024-06-23 18:07:15.450548', '/myapp/admin/thing/update', 'POST', NULL, '69');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2024-06-23 18:07:15.713453', '/myapp/admin/thing/list', 'GET', NULL, '184');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2024-06-23 18:07:34.747510', '/myapp/admin/thing/update', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2024-06-23 18:07:34.922612', '/myapp/admin/thing/list', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2024-06-23 18:07:43.074552', '/myapp/admin/thing/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2024-06-23 18:07:43.282630', '/myapp/admin/thing/list', 'GET', NULL, '165');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2024-06-23 18:07:54.017518', '/myapp/admin/thing/update', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2024-06-23 18:07:54.236551', '/myapp/admin/thing/list', 'GET', NULL, '179');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2024-06-23 18:08:09.280858', '/myapp/admin/thing/update', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2024-06-23 18:08:09.502920', '/myapp/admin/thing/list', 'GET', NULL, '181');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2024-06-23 18:08:24.442958', '/myapp/admin/thing/update', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2024-06-23 18:08:24.658377', '/myapp/admin/thing/list', 'GET', NULL, '175');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2024-06-23 18:08:29.280699', '/myapp/admin/thing/update', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2024-06-23 18:08:29.511901', '/myapp/admin/thing/list', 'GET', NULL, '193');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2024-06-23 18:08:33.692856', '/myapp/admin/thing/update', 'POST', NULL, '60');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2024-06-23 18:08:33.899977', '/myapp/admin/thing/list', 'GET', NULL, '151');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2024-06-23 18:08:47.858973', '/myapp/admin/thing/update', 'POST', NULL, '70');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2024-06-23 18:08:48.029110', '/myapp/admin/thing/list', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2024-06-23 18:08:54.675033', '/myapp/admin/thing/update', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2024-06-23 18:08:54.894172', '/myapp/admin/thing/list', 'GET', NULL, '193');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2024-06-23 18:09:05.692830', '/myapp/admin/thing/update', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2024-06-23 18:09:05.894474', '/myapp/admin/thing/list', 'GET', NULL, '167');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2024-06-23 18:09:09.912793', '/myapp/admin/thing/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2024-06-23 18:09:10.091144', '/myapp/admin/thing/list', 'GET', NULL, '138');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2024-06-23 18:09:14.163075', '/myapp/admin/thing/update', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2024-06-23 18:09:14.327603', '/myapp/admin/thing/list', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2024-06-23 18:09:18.851964', '/myapp/admin/thing/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2024-06-23 18:09:19.096314', '/myapp/admin/thing/list', 'GET', NULL, '179');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2024-06-23 18:09:25.455710', '/myapp/admin/thing/update', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2024-06-23 18:09:25.673962', '/myapp/admin/thing/list', 'GET', NULL, '184');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2024-06-23 18:09:30.625097', '/myapp/admin/doctor/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2024-06-23 18:11:51.206326', '/myapp/admin/doctor/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2024-06-23 18:11:51.271309', '/myapp/admin/doctor/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2024-06-23 18:12:12.796194', '/myapp/admin/doctor/create', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2024-06-23 18:12:12.869328', '/myapp/admin/doctor/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2024-06-23 18:12:15.193102', '/upload/cover/1719135935663.jpeg', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2024-06-23 18:12:30.210374', '/myapp/admin/doctor/update', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2024-06-23 18:12:30.246026', '/myapp/admin/doctor/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2024-06-23 18:12:32.844460', '/upload/cover/1719135599336.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2024-06-23 18:12:46.609794', '/myapp/admin/doctor/update', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2024-06-23 18:12:46.648432', '/myapp/admin/doctor/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2024-06-23 18:12:51.643007', '/myapp/admin/doctor/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2024-06-23 18:12:51.657766', '/myapp/admin/doctor/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2024-06-23 18:12:51.802350', '/myapp/admin/doctor/list', 'GET', NULL, '170');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2024-06-23 18:12:54.096918', '/upload/cover/1719137171247.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2024-06-23 18:13:01.055577', '/myapp/admin/thing/update', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2024-06-23 18:13:01.270891', '/myapp/admin/thing/list', 'GET', NULL, '168');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2024-06-23 18:13:04.470520', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2024-06-23 18:13:04.654757', '/myapp/admin/thing/list', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2024-06-23 18:13:08.499571', '/myapp/admin/thing/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2024-06-23 18:13:08.735576', '/myapp/admin/thing/list', 'GET', NULL, '176');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2024-06-23 18:13:12.060337', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2024-06-23 18:13:12.265103', '/myapp/admin/thing/list', 'GET', NULL, '163');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2024-06-23 18:13:17.157426', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2024-06-23 18:13:17.353933', '/myapp/admin/thing/list', 'GET', NULL, '163');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2024-06-23 18:13:20.563878', '/myapp/admin/thing/update', 'POST', NULL, '60');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2024-06-23 18:13:20.797373', '/myapp/admin/thing/list', 'GET', NULL, '200');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2024-06-23 18:13:22.485960', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2024-06-23 18:13:22.834817', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2024-06-23 18:13:22.842098', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2024-06-23 18:13:22.988803', '/myapp/admin/classification/list', 'GET', NULL, '168');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2024-06-23 18:13:35.739117', '/myapp/admin/thing/update', 'POST', NULL, '60');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2024-06-23 18:13:35.926251', '/myapp/admin/thing/list', 'GET', NULL, '144');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2024-06-23 18:13:47.932857', '/myapp/admin/thing/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2024-06-23 18:13:48.227210', '/myapp/admin/thing/list', 'GET', NULL, '227');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2024-06-23 18:13:52.053486', '/myapp/admin/thing/update', 'POST', NULL, '60');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2024-06-23 18:13:52.239936', '/myapp/admin/thing/list', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2024-06-23 18:13:54.922756', '/myapp/admin/thing/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2024-06-23 18:13:55.171341', '/myapp/admin/thing/list', 'GET', NULL, '205');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2024-06-23 18:13:57.979345', '/myapp/admin/thing/update', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2024-06-23 18:13:58.153333', '/myapp/admin/thing/list', 'GET', NULL, '136');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2024-06-23 18:14:07.133610', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2024-06-23 18:14:07.994875', '/myapp/admin/doctor/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2024-06-23 19:34:49.460287', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2024-06-23 19:34:49.484429', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2024-06-23 19:34:49.530690', '/myapp/index/thing/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2024-06-23 19:34:49.829295', '/myapp/admin/doctor/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2024-06-23 19:34:49.871811', '/upload/cover/1719137171247.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2024-06-23 19:34:51.691519', '/upload/cover/1719137171247.jpeg', 'GET', NULL, '1825');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2024-06-23 19:35:16.354848', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2024-06-23 19:35:16.808472', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2024-06-23 19:35:16.815646', '/myapp/admin/classification/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2024-06-23 19:35:16.832285', '/myapp/admin/classification/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2024-06-23 19:35:21.939569', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2024-06-23 19:35:21.941569', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2024-06-23 19:35:21.973571', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2024-06-23 19:35:21.977569', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2024-06-23 19:35:30.520879', '/myapp/admin/thing/update', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2024-06-23 19:35:30.620720', '/myapp/admin/thing/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2024-06-23 19:35:35.921575', '/myapp/admin/thing/update', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2024-06-23 19:35:36.026504', '/myapp/admin/thing/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2024-06-23 19:35:40.778815', '/myapp/admin/thing/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2024-06-23 19:35:40.879886', '/myapp/admin/thing/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2024-06-23 19:35:47.579311', '/myapp/admin/thing/update', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2024-06-23 19:35:47.680970', '/myapp/admin/thing/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2024-06-23 19:35:54.174971', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2024-06-23 19:35:54.289222', '/myapp/admin/thing/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2024-06-23 19:35:59.397159', '/myapp/admin/thing/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2024-06-23 19:35:59.470792', '/myapp/admin/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2024-06-23 19:36:05.412476', '/myapp/admin/thing/update', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2024-06-23 19:36:05.490150', '/myapp/admin/thing/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2024-06-23 19:36:14.044981', '/myapp/admin/thing/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2024-06-23 19:36:14.143599', '/myapp/admin/thing/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2024-06-23 19:36:23.296277', '/myapp/admin/thing/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2024-06-23 19:36:23.525438', '/myapp/admin/thing/list', 'GET', NULL, '188');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2024-06-23 19:36:35.295074', '/myapp/admin/thing/update', 'POST', NULL, '64');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2024-06-23 19:36:35.541334', '/myapp/admin/thing/list', 'GET', NULL, '205');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2024-06-23 19:36:41.035790', '/myapp/admin/thing/update', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2024-06-23 19:36:41.217549', '/myapp/admin/thing/list', 'GET', NULL, '153');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2024-06-23 19:36:47.178062', '/myapp/index/thing/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2024-06-23 19:36:47.254767', '/upload/cover/1719142539630.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2024-06-23 19:36:47.256776', '/upload/cover/1719142539630.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2024-06-23 19:36:47.267792', '/upload/cover/1719142552524.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2024-06-23 19:36:47.274600', '/upload/cover/1719142552524.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2024-06-23 19:36:47.292389', '/upload/cover/1719142581316.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2024-06-23 19:36:47.295395', '/upload/cover/1719142581316.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2024-06-23 19:36:47.296388', '/upload/cover/1719142545741.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2024-06-23 19:36:47.311401', '/upload/cover/1719142593223.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2024-06-23 19:36:47.316905', '/upload/cover/1719142593223.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2024-06-23 19:36:47.321906', '/upload/cover/1719142552524.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2024-06-23 19:36:47.333808', '/upload/cover/1719142599114.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2024-06-23 19:37:10.077101', '/myapp/index/thing/list', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2024-06-23 19:37:10.456645', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2024-06-23 19:37:11.399119', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2024-06-23 19:37:13.448380', '/upload/cover/1719142528460.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2024-06-23 19:37:17.557018', '/myapp/admin/thing/update', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2024-06-23 19:37:17.730257', '/myapp/admin/thing/list', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2024-06-23 19:37:18.956181', '/upload/cover/1719142534210.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2024-06-23 19:37:25.614977', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2024-06-23 19:37:25.869448', '/myapp/admin/thing/list', 'GET', NULL, '184');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2024-06-23 19:37:26.709436', '/upload/cover/1719142539630.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2024-06-23 19:37:29.898356', '/myapp/admin/thing/update', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2024-06-23 19:37:30.066660', '/myapp/admin/thing/list', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2024-06-23 19:37:31.493453', '/upload/cover/1719142545741.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2024-06-23 19:37:34.382385', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2024-06-23 19:37:34.610045', '/myapp/admin/thing/list', 'GET', NULL, '191');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2024-06-23 19:37:35.904828', '/upload/cover/1719142552524.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2024-06-23 19:37:39.200760', '/myapp/admin/thing/update', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2024-06-23 19:37:39.413856', '/myapp/admin/thing/list', 'GET', NULL, '168');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2024-06-23 19:37:40.600659', '/upload/cover/1719142558006.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2024-06-23 19:37:43.351960', '/myapp/admin/thing/update', 'POST', NULL, '60');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2024-06-23 19:37:43.545590', '/myapp/admin/thing/list', 'GET', NULL, '153');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2024-06-23 19:37:44.608403', '/upload/cover/1719142563778.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2024-06-23 19:37:47.251839', '/myapp/admin/thing/update', 'POST', NULL, '64');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2024-06-23 19:37:47.446054', '/myapp/admin/thing/list', 'GET', NULL, '151');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2024-06-23 19:37:49.384560', '/upload/cover/1719142572395.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2024-06-23 19:37:52.591027', '/myapp/admin/thing/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2024-06-23 19:37:52.802372', '/myapp/admin/thing/list', 'GET', NULL, '159');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2024-06-23 19:37:55.731099', '/upload/cover/1719142593223.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2024-06-23 19:37:59.339582', '/myapp/admin/thing/update', 'POST', NULL, '62');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2024-06-23 19:37:59.521977', '/myapp/admin/thing/list', 'GET', NULL, '152');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2024-06-23 19:38:02.210315', '/myapp/index/thing/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2024-06-23 19:38:02.253966', '/upload/cover/1719142599114.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2024-06-23 19:38:02.254963', '/upload/cover/1719142599114.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2024-06-23 19:38:02.678735', '/myapp/index/thing/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2024-06-23 19:38:02.730390', '/upload/cover/1719142552524.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2024-06-23 19:38:02.732401', '/upload/cover/1719142539630.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2024-06-23 19:38:02.733405', '/upload/cover/1719142539630.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2024-06-23 19:38:02.732401', '/upload/cover/1719142539630.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2024-06-23 19:38:02.734850', '/upload/cover/1719142539630.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2024-06-23 19:38:02.739644', '/upload/cover/1719142552524.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2024-06-23 19:38:02.752566', '/upload/cover/1719142528460.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2024-06-23 19:38:02.754021', '/upload/cover/1719142534210.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2024-06-23 19:38:03.289343', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2024-06-23 19:38:04.011073', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2024-06-23 19:38:04.413985', '/myapp/index/thing/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2024-06-23 19:38:05.412785', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2024-06-23 19:38:05.960941', '/myapp/index/thing/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2024-06-23 19:38:06.462236', '/myapp/index/thing/list', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2024-06-23 19:38:24.066609', '/myapp/index/thing/list', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2024-06-23 19:38:24.552049', '/myapp/index/thing/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2024-06-23 19:38:54.926757', '/myapp/index/thing/detail', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2024-06-23 19:38:54.992825', '/myapp/index/thing/getRecommend', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2024-06-23 19:38:55.065510', '/myapp/index/comment/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2024-06-23 19:38:55.075045', '/myapp/index/comment/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2024-06-23 19:38:55.101408', '/myapp/index/comment/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2024-06-23 19:38:55.104366', '/myapp/index/comment/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2024-06-23 19:38:56.149467', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2024-06-23 19:38:56.153004', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2024-06-23 19:38:56.251880', '/myapp/index/user/info', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2024-06-23 19:38:56.303860', '/myapp/index/user/info', 'GET', NULL, '168');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2024-06-23 19:38:56.352748', '/upload/cover/1719142558006.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2024-06-23 19:38:56.354739', '/upload/cover/1719142558006.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2024-06-23 19:38:56.353746', '/upload/cover/1719142558006.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2024-06-23 19:38:56.355743', '/upload/cover/1719142558006.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2024-06-23 19:38:56.358749', '/upload/cover/1719142558006.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2024-06-23 19:38:56.364870', '/upload/cover/1719142558006.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2024-06-23 19:38:56.376912', '/upload/cover/1719142563778.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2024-06-23 19:38:56.389194', '/upload/cover/1719142599114.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2024-06-23 19:38:56.389194', '/upload/cover/1719142599114.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2024-06-23 19:38:56.412592', '/upload/cover/1719142599114.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2024-06-23 19:38:57.102555', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2024-06-23 19:38:57.108557', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2024-06-23 19:38:57.162190', '/myapp/index/comment/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2024-06-23 19:38:57.211974', '/myapp/index/comment/list', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2024-06-23 19:38:57.317142', '/myapp/index/comment/list', 'GET', NULL, '230');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2024-06-23 19:38:57.325298', '/myapp/index/comment/list', 'GET', NULL, '239');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2024-06-23 19:38:57.991621', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2024-06-23 19:38:57.995622', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2024-06-23 19:38:58.122375', '/myapp/index/thing/list', 'GET', NULL, '152');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2024-06-23 19:38:58.126972', '/myapp/index/thing/list', 'GET', NULL, '156');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2024-06-23 19:38:58.639845', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2024-06-23 19:38:58.655612', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2024-06-23 19:38:58.691654', '/myapp/index/comment/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2024-06-23 19:38:58.747487', '/myapp/index/comment/list', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2024-06-23 19:38:58.814641', '/myapp/index/comment/list', 'GET', NULL, '182');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2024-06-23 19:38:58.855317', '/myapp/index/comment/list', 'GET', NULL, '221');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2024-06-23 19:38:59.329380', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2024-06-23 19:38:59.332084', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2024-06-23 19:38:59.433018', '/myapp/index/user/info', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2024-06-23 19:38:59.506760', '/myapp/index/user/info', 'GET', NULL, '184');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2024-06-23 19:39:00.187198', '/myapp/index/thing/detail', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2024-06-23 19:39:00.192306', '/myapp/index/thing/detail', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2024-06-23 19:39:00.230421', '/myapp/index/thing/detail', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2024-06-23 19:39:00.294544', '/myapp/index/thing/detail', 'GET', NULL, '130');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2024-06-23 19:39:00.388738', '/myapp/index/thing/detail', 'GET', NULL, '225');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2024-06-23 19:39:00.393736', '/myapp/index/thing/detail', 'GET', NULL, '230');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2024-06-23 19:39:00.911727', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2024-06-23 19:39:00.916696', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2024-06-23 19:39:01.061278', '/myapp/index/thing/list', 'GET', NULL, '163');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2024-06-23 19:39:01.063635', '/myapp/index/thing/list', 'GET', NULL, '165');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2024-06-23 19:39:01.636728', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2024-06-23 19:39:01.645746', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2024-06-23 19:39:01.682425', '/myapp/index/comment/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2024-06-23 19:39:01.754218', '/myapp/index/comment/list', 'GET', NULL, '133');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2024-06-23 19:39:01.848587', '/myapp/index/comment/list', 'GET', NULL, '228');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2024-06-23 19:39:01.862936', '/myapp/index/comment/list', 'GET', NULL, '243');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2024-06-23 19:39:03.010760', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2024-06-23 19:39:03.015169', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2024-06-23 19:39:03.174358', '/myapp/index/thing/list', 'GET', NULL, '175');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2024-06-23 19:39:03.182332', '/myapp/index/thing/list', 'GET', NULL, '184');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2024-06-23 19:39:03.748141', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2024-06-23 19:39:03.772598', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2024-06-23 19:39:03.844647', '/myapp/index/comment/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2024-06-23 19:39:03.884903', '/myapp/index/comment/list', 'GET', NULL, '118');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2024-06-23 19:39:03.974264', '/myapp/index/comment/list', 'GET', NULL, '208');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2024-06-23 19:39:03.977266', '/myapp/index/comment/list', 'GET', NULL, '212');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2024-06-23 19:39:04.674940', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2024-06-23 19:39:04.679515', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2024-06-23 19:39:04.835316', '/myapp/index/thing/list', 'GET', NULL, '170');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2024-06-23 19:39:04.839348', '/myapp/index/thing/list', 'GET', NULL, '175');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2024-06-23 19:39:05.464294', '/myapp/index/thing/detail', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2024-06-23 19:39:05.472316', '/myapp/index/thing/detail', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2024-06-23 19:39:05.532971', '/myapp/index/thing/detail', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2024-06-23 19:39:05.643680', '/myapp/index/thing/detail', 'GET', NULL, '199');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2024-06-23 19:39:05.669975', '/myapp/index/thing/detail', 'GET', NULL, '224');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2024-06-23 19:39:05.748763', '/myapp/index/thing/detail', 'GET', NULL, '303');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2024-06-23 19:39:06.650464', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2024-06-23 19:39:06.656506', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2024-06-23 19:39:06.793291', '/myapp/index/user/info', 'GET', NULL, '162');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2024-06-23 19:39:06.798765', '/myapp/index/user/info', 'GET', NULL, '167');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2024-06-23 19:39:07.326613', '/myapp/index/thing/detail', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2024-06-23 19:39:07.333283', '/myapp/index/thing/detail', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2024-06-23 19:39:07.378816', '/myapp/index/thing/detail', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2024-06-23 19:39:07.433786', '/myapp/index/thing/detail', 'GET', NULL, '120');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2024-06-23 19:39:07.524288', '/myapp/index/thing/detail', 'GET', NULL, '209');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2024-06-23 19:39:07.533278', '/myapp/index/thing/detail', 'GET', NULL, '218');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2024-06-23 19:39:08.279547', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2024-06-23 19:39:08.286992', '/myapp/index/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2024-06-23 19:39:08.450985', '/myapp/index/classification/list', 'GET', NULL, '182');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2024-06-23 19:39:08.457554', '/myapp/index/classification/list', 'GET', NULL, '189');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2024-06-23 19:39:09.463374', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2024-06-23 19:39:09.467336', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2024-06-23 19:39:09.507101', '/myapp/index/comment/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2024-06-23 19:39:09.570323', '/myapp/index/comment/list', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2024-06-23 19:39:09.682571', '/myapp/index/comment/list', 'GET', NULL, '241');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2024-06-23 19:39:09.685335', '/myapp/index/comment/list', 'GET', NULL, '243');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2024-06-23 19:39:10.394011', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2024-06-23 19:39:10.398014', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2024-06-23 19:39:10.551749', '/myapp/index/thing/list', 'GET', NULL, '173');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2024-06-23 19:39:10.556287', '/myapp/index/thing/list', 'GET', NULL, '178');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2024-06-23 19:39:11.519420', '/myapp/admin/ad/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2024-06-23 19:39:11.535420', '/myapp/index/thing/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2024-06-23 19:39:11.584868', '/myapp/index/thing/detail', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2024-06-23 19:39:11.639410', '/myapp/index/thing/detail', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2024-06-23 19:39:11.729362', '/myapp/index/thing/detail', 'GET', NULL, '199');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2024-06-23 19:39:11.735399', '/myapp/index/thing/detail', 'GET', NULL, '204');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2024-06-23 19:39:12.490678', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2024-06-23 19:39:12.495667', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2024-06-23 19:39:12.600399', '/myapp/index/user/info', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2024-06-23 19:39:12.644423', '/myapp/index/user/info', 'GET', NULL, '167');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2024-06-23 19:39:13.591954', '/myapp/index/thing/detail', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2024-06-23 19:39:13.600942', '/myapp/index/thing/detail', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2024-06-23 19:39:13.677803', '/myapp/index/thing/detail', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2024-06-23 19:39:13.713084', '/myapp/index/thing/detail', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2024-06-23 19:39:13.804662', '/myapp/index/thing/detail', 'GET', NULL, '225');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2024-06-23 19:39:13.811131', '/myapp/index/thing/detail', 'GET', NULL, '230');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2024-06-23 19:39:14.429690', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2024-06-23 19:39:14.438679', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2024-06-23 19:39:14.639681', '/myapp/index/thing/list', 'GET', NULL, '226');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2024-06-23 19:39:14.646454', '/myapp/index/thing/list', 'GET', NULL, '231');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2024-06-23 19:39:14.677006', '/upload/cover/1719142599114.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2024-06-23 19:39:14.681150', '/upload/cover/1719142599114.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2024-06-23 19:39:14.679976', '/upload/cover/1719142599114.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2024-06-23 19:39:14.681150', '/upload/cover/1719142599114.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2024-06-23 19:39:14.685880', '/upload/cover/1719142599114.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2024-06-23 19:39:14.702931', '/upload/cover/1719142599114.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2024-06-23 19:39:15.576477', '/myapp/index/thing/detail', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2024-06-23 19:39:15.588494', '/myapp/index/thing/detail', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2024-06-23 19:39:15.618394', '/myapp/index/thing/detail', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2024-06-23 19:39:15.676304', '/myapp/index/thing/detail', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2024-06-23 19:39:15.766701', '/myapp/index/thing/detail', 'GET', NULL, '202');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2024-06-23 19:39:15.787097', '/myapp/index/thing/detail', 'GET', NULL, '223');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2024-06-23 19:39:16.740494', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2024-06-23 19:39:16.753505', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2024-06-23 19:39:16.904053', '/myapp/index/user/info', 'GET', NULL, '174');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2024-06-23 19:39:16.909025', '/myapp/index/user/info', 'GET', NULL, '179');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2024-06-23 19:39:19.196474', '/myapp/admin/ad/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2024-06-23 19:39:19.201592', '/myapp/admin/ad/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2024-06-23 19:39:19.205744', '/myapp/admin/ad/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2024-06-23 19:39:19.288840', '/myapp/admin/ad/list', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2024-06-23 19:39:19.399469', '/myapp/admin/ad/list', 'GET', NULL, '227');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2024-06-23 19:39:19.416784', '/myapp/admin/ad/list', 'GET', NULL, '244');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2024-06-23 19:39:20.245052', '/myapp/index/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2024-06-23 19:39:20.248970', '/myapp/index/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2024-06-23 19:39:20.393938', '/myapp/index/classification/list', 'GET', NULL, '163');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2024-06-23 19:39:20.402461', '/myapp/index/classification/list', 'GET', NULL, '173');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2024-06-23 19:39:21.459154', '/myapp/admin/ad/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2024-06-23 19:39:21.469301', '/myapp/admin/ad/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2024-06-23 19:39:21.477336', '/myapp/admin/ad/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2024-06-23 19:39:21.506450', '/myapp/admin/ad/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2024-06-23 19:39:21.606187', '/myapp/admin/ad/list', 'GET', NULL, '166');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2024-06-23 19:39:21.628180', '/myapp/admin/ad/list', 'GET', NULL, '188');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2024-06-23 19:39:21.664896', '/upload/cover/1719142539630.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2024-06-23 19:39:21.665926', '/upload/cover/1719142539630.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2024-06-23 19:39:21.678733', '/upload/cover/1719142539630.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2024-06-23 19:39:22.499202', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2024-06-23 19:39:22.540885', '/myapp/index/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2024-06-23 19:39:22.670111', '/myapp/index/thing/list', 'GET', NULL, '182');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2024-06-23 19:39:22.676275', '/myapp/index/thing/list', 'GET', NULL, '187');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2024-06-23 19:39:22.702708', '/upload/cover/1719142545741.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2024-06-23 19:39:26.179780', '/myapp/admin/ad/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2024-06-23 19:39:26.190036', '/myapp/admin/ad/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2024-06-23 19:39:26.199047', '/myapp/admin/ad/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2024-06-23 19:39:26.285242', '/myapp/admin/ad/list', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2024-06-23 19:39:26.391500', '/myapp/admin/ad/list', 'GET', NULL, '234');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2024-06-23 19:39:26.403338', '/myapp/admin/ad/list', 'GET', NULL, '246');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2024-06-23 19:40:19.964311', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2024-06-23 19:40:19.978241', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2024-06-23 19:40:20.039642', '/myapp/index/thing/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2024-06-23 19:40:26.711980', '/myapp/index/user/register', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2024-06-23 19:40:29.265555', '/myapp/index/user/login', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2024-06-23 19:40:29.320488', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2024-06-23 19:40:29.325493', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2024-06-23 19:40:29.352491', '/myapp/index/user/info', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2024-06-23 19:40:29.418934', '/myapp/index/user/info', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2024-06-23 19:40:30.322277', '/myapp/index/thing/getRecommend', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2024-06-23 19:40:30.330641', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2024-06-23 19:40:30.334640', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2024-06-23 19:40:30.341797', '/myapp/index/thing/getRecommend', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2024-06-23 19:40:30.360974', '/myapp/index/thing/getRecommend', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2024-06-23 19:40:30.404327', '/upload/cover/1719142534210.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2024-06-23 19:40:30.448703', '/upload/cover/1719142534210.jpeg', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2024-06-23 19:40:30.482559', '/upload/cover/1719142552524.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2024-06-23 19:40:30.484918', '/upload/cover/1719142552524.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2024-06-23 19:40:31.600927', '/myapp/index/thing/addCollectUser', 'POST', NULL, '64');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2024-06-23 19:40:31.648193', '/myapp/index/thing/detail', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2024-06-23 19:40:32.109296', '/myapp/index/thing/addWishUser', 'POST', NULL, '73');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2024-06-23 19:40:32.155508', '/myapp/index/thing/detail', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2024-06-23 19:40:35.008407', '/myapp/index/thing/rate', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2024-06-23 19:41:03.352720', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2024-06-23 19:41:03.355290', '/myapp/index/thing/getRecommend', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2024-06-23 19:41:03.413820', '/myapp/index/thing/getRecommend', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2024-06-23 19:41:03.443725', '/upload/cover/1719142581316.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2024-06-23 19:41:03.446204', '/upload/cover/1719142581316.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2024-06-23 19:41:03.447216', '/upload/cover/1719142581316.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2024-06-23 19:41:03.449563', '/upload/cover/1719142581316.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2024-06-23 19:41:03.450564', '/upload/cover/1719142581316.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2024-06-23 19:41:03.452859', '/upload/cover/1719142581316.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2024-06-23 19:41:03.462967', '/upload/cover/1719142599114.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2024-06-23 19:41:22.133242', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2024-06-23 19:41:22.154642', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2024-06-23 19:41:22.172473', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2024-06-23 19:41:22.223112', '/myapp/index/thing/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2024-06-23 19:42:04.800373', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2024-06-23 19:42:04.805908', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2024-06-23 19:42:04.818766', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2024-06-23 19:42:04.839135', '/upload/cover/1719142572395.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2024-06-23 19:42:04.840154', '/upload/cover/1719142572395.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2024-06-23 19:42:11.193204', '/myapp/index/thing/getRecommend', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2024-06-23 19:42:11.208413', '/myapp/index/thing/getRecommend', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (497, '127.0.0.1', '2024-06-23 19:42:11.291477', '/myapp/index/thing/getRecommend', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (498, '127.0.0.1', '2024-06-23 19:42:11.336316', '/upload/cover/1719142563778.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (499, '127.0.0.1', '2024-06-23 19:42:11.337674', '/upload/cover/1719142563778.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (500, '127.0.0.1', '2024-06-23 19:42:11.337674', '/upload/cover/1719142563778.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (501, '127.0.0.1', '2024-06-23 19:42:11.338972', '/upload/cover/1719142563778.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (502, '127.0.0.1', '2024-06-23 19:42:11.342819', '/upload/cover/1719142563778.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (503, '127.0.0.1', '2024-06-23 19:42:11.358756', '/upload/cover/1719142599114.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (504, '127.0.0.1', '2024-06-23 19:42:11.358756', '/upload/cover/1719142563778.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (505, '127.0.0.1', '2024-06-23 19:42:11.361020', '/upload/cover/1719142593223.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (506, '127.0.0.1', '2024-06-23 19:42:11.363195', '/upload/cover/1719142581316.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (507, '127.0.0.1', '2024-06-23 19:42:13.224736', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (508, '127.0.0.1', '2024-06-23 19:42:13.228246', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (509, '127.0.0.1', '2024-06-23 19:42:13.234840', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (510, '127.0.0.1', '2024-06-23 19:42:13.319670', '/myapp/index/thing/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (511, '127.0.0.1', '2024-06-23 19:42:14.338538', '/myapp/admin/ad/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (512, '127.0.0.1', '2024-06-23 19:42:14.352006', '/myapp/admin/ad/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (513, '127.0.0.1', '2024-06-23 19:42:14.369070', '/myapp/admin/ad/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (514, '127.0.0.1', '2024-06-23 19:42:14.384041', '/myapp/admin/ad/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (515, '127.0.0.1', '2024-06-23 19:42:14.404687', '/myapp/admin/ad/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (516, '127.0.0.1', '2024-06-23 19:42:14.478487', '/myapp/admin/ad/list', 'GET', NULL, '153');
INSERT INTO `b_op_log` VALUES (517, '127.0.0.1', '2024-06-23 19:42:45.920418', '/myapp/index/thing/addWishUser', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (518, '127.0.0.1', '2024-06-23 19:42:45.979617', '/myapp/index/thing/detail', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (519, '127.0.0.1', '2024-06-23 19:42:46.410542', '/myapp/index/thing/addCollectUser', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (520, '127.0.0.1', '2024-06-23 19:42:46.462352', '/myapp/index/thing/detail', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (521, '127.0.0.1', '2024-06-23 19:42:47.833806', '/myapp/index/thing/getWishThingList', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (522, '127.0.0.1', '2024-06-23 19:42:47.838772', '/myapp/index/thing/getWishThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (523, '127.0.0.1', '2024-06-23 19:42:47.875060', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (524, '127.0.0.1', '2024-06-23 19:42:47.880084', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (525, '127.0.0.1', '2024-06-23 19:42:47.884871', '/myapp/index/user/info', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (526, '127.0.0.1', '2024-06-23 19:42:47.898245', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (527, '127.0.0.1', '2024-06-23 19:42:49.063237', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (528, '127.0.0.1', '2024-06-23 19:43:34.963149', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (529, '127.0.0.1', '2024-06-23 19:43:36.445249', '/myapp/index/thing/listUserThing', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (530, '127.0.0.1', '2024-06-23 19:43:36.453189', '/myapp/index/thing/listUserThing', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (531, '127.0.0.1', '2024-06-23 19:43:36.736515', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (532, '127.0.0.1', '2024-06-23 19:43:37.358146', '/myapp/index/thing/getWishThingList', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (533, '127.0.0.1', '2024-06-23 19:43:38.286533', '/myapp/index/thing/removeWishUser', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (534, '127.0.0.1', '2024-06-23 19:43:38.351276', '/myapp/index/thing/getWishThingList', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (535, '127.0.0.1', '2024-06-23 19:43:39.947231', '/myapp/admin/ad/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (536, '127.0.0.1', '2024-06-23 19:43:39.952294', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (537, '127.0.0.1', '2024-06-23 19:43:39.969572', '/myapp/admin/ad/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (538, '127.0.0.1', '2024-06-23 19:43:39.981550', '/myapp/admin/ad/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (539, '127.0.0.1', '2024-06-23 19:43:40.018924', '/myapp/admin/ad/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (540, '127.0.0.1', '2024-06-23 19:43:40.051170', '/upload/cover/1719142534210.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (541, '127.0.0.1', '2024-06-23 19:43:40.075590', '/upload/cover/1719142534210.jpeg', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (542, '127.0.0.1', '2024-06-23 19:43:40.105188', '/upload/cover/1719142552524.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (543, '127.0.0.1', '2024-06-23 19:43:40.106195', '/upload/cover/1719142552524.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (544, '127.0.0.1', '2024-06-23 19:43:47.127196', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (545, '127.0.0.1', '2024-06-23 19:43:47.136632', '/myapp/index/user/info', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (546, '127.0.0.1', '2024-06-23 19:43:47.148615', '/myapp/index/user/info', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (547, '127.0.0.1', '2024-06-23 19:43:47.221659', '/myapp/index/user/info', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (548, '127.0.0.1', '2024-06-23 19:43:47.258868', '/upload/cover/1719142572395.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (549, '127.0.0.1', '2024-06-23 19:43:47.262389', '/upload/cover/1719142572395.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (550, '127.0.0.1', '2024-06-23 19:43:47.262389', '/upload/cover/1719142572395.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (551, '127.0.0.1', '2024-06-23 19:43:47.263388', '/upload/cover/1719142572395.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (552, '127.0.0.1', '2024-06-23 19:43:47.265395', '/upload/cover/1719142558006.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (553, '127.0.0.1', '2024-06-23 19:43:47.268628', '/upload/cover/1719142572395.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (554, '127.0.0.1', '2024-06-23 19:43:47.289311', '/upload/cover/1719142581316.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (555, '127.0.0.1', '2024-06-23 19:43:47.292086', '/upload/cover/1719142599114.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (556, '127.0.0.1', '2024-06-23 19:43:47.293104', '/upload/cover/1719142599114.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (557, '127.0.0.1', '2024-06-23 19:43:48.599540', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (558, '127.0.0.1', '2024-06-23 19:43:48.610965', '/myapp/admin/ad/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (559, '127.0.0.1', '2024-06-23 19:43:48.628967', '/myapp/admin/ad/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (560, '127.0.0.1', '2024-06-23 19:43:48.644143', '/myapp/admin/ad/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (561, '127.0.0.1', '2024-06-23 19:43:48.681076', '/myapp/admin/ad/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (562, '127.0.0.1', '2024-06-23 19:43:48.743617', '/myapp/admin/ad/list', 'GET', NULL, '160');
INSERT INTO `b_op_log` VALUES (563, '127.0.0.1', '2024-06-23 19:44:36.996642', '/myapp/admin/ad/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (564, '127.0.0.1', '2024-06-23 19:44:37.001813', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (565, '127.0.0.1', '2024-06-23 19:44:37.008190', '/myapp/admin/ad/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (566, '127.0.0.1', '2024-06-23 19:44:37.014709', '/myapp/admin/ad/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (567, '127.0.0.1', '2024-06-23 19:44:37.047973', '/myapp/admin/ad/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (568, '127.0.0.1', '2024-06-23 19:44:37.079997', '/upload/cover/1719142558006.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (569, '127.0.0.1', '2024-06-23 19:44:37.094466', '/upload/cover/1719142558006.jpeg', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (570, '127.0.0.1', '2024-06-23 19:44:37.174790', '/upload/cover/1719142534210.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (571, '127.0.0.1', '2024-06-23 19:44:37.175799', '/upload/cover/1719142534210.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (572, '127.0.0.1', '2024-06-23 19:44:37.920968', '/myapp/admin/ad/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (573, '127.0.0.1', '2024-06-23 19:44:37.915959', '/myapp/admin/ad/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (574, '127.0.0.1', '2024-06-23 19:44:37.928215', '/myapp/admin/ad/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (575, '127.0.0.1', '2024-06-23 19:44:37.938924', '/myapp/admin/ad/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (576, '127.0.0.1', '2024-06-23 19:44:37.979709', '/myapp/admin/ad/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (577, '127.0.0.1', '2024-06-23 19:44:38.020075', '/myapp/admin/ad/list', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (578, '127.0.0.1', '2024-06-23 19:45:53.057402', '/myapp/index/order/create', 'POST', NULL, '68');
INSERT INTO `b_op_log` VALUES (579, '127.0.0.1', '2024-06-23 19:45:53.252082', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (580, '127.0.0.1', '2024-06-23 19:45:53.261081', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (581, '127.0.0.1', '2024-06-23 19:46:21.928074', '/myapp/index/order/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (582, '127.0.0.1', '2024-06-23 19:46:21.932085', '/myapp/index/order/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (583, '127.0.0.1', '2024-06-23 19:46:21.964553', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (584, '127.0.0.1', '2024-06-23 19:46:21.983660', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (585, '127.0.0.1', '2024-06-23 19:46:21.995123', '/myapp/index/user/info', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (586, '127.0.0.1', '2024-06-23 19:46:21.999472', '/myapp/index/user/info', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (587, '127.0.0.1', '2024-06-23 19:46:54.634477', '/myapp/index/order/cancel_order', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (588, '127.0.0.1', '2024-06-23 19:46:54.683854', '/myapp/index/order/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (589, '127.0.0.1', '2024-06-23 19:47:07.319406', '/myapp/admin/ad/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (590, '127.0.0.1', '2024-06-23 19:47:07.326189', '/myapp/admin/ad/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (591, '127.0.0.1', '2024-06-23 19:47:07.336516', '/myapp/admin/ad/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (592, '127.0.0.1', '2024-06-23 19:47:07.348952', '/myapp/admin/ad/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (593, '127.0.0.1', '2024-06-23 19:47:07.398341', '/myapp/admin/ad/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (594, '127.0.0.1', '2024-06-23 19:47:07.431460', '/upload/cover/1719142558006.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (595, '127.0.0.1', '2024-06-23 19:47:07.453782', '/upload/cover/1719142558006.jpeg', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (596, '127.0.0.1', '2024-06-23 19:47:07.499423', '/upload/cover/1719142534210.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (597, '127.0.0.1', '2024-06-23 19:47:07.499423', '/upload/cover/1719142534210.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (598, '127.0.0.1', '2024-06-23 19:47:11.771640', '/myapp/admin/order/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (599, '127.0.0.1', '2024-06-23 19:47:46.231798', '/myapp/admin/order/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (600, '127.0.0.1', '2024-06-23 19:47:57.594250', '/myapp/admin/order/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (601, '127.0.0.1', '2024-06-23 19:48:18.051628', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (602, '127.0.0.1', '2024-06-23 19:48:18.083614', '/myapp/admin/ad/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (603, '127.0.0.1', '2024-06-23 19:48:18.089357', '/myapp/admin/ad/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (604, '127.0.0.1', '2024-06-23 19:48:18.112173', '/myapp/admin/ad/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (605, '127.0.0.1', '2024-06-23 19:48:18.137224', '/myapp/admin/ad/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (606, '127.0.0.1', '2024-06-23 19:48:18.164886', '/upload/cover/1719142558006.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (607, '127.0.0.1', '2024-06-23 19:48:18.211068', '/upload/cover/1719142558006.jpeg', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (608, '127.0.0.1', '2024-06-23 19:48:18.238700', '/upload/cover/1719142534210.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (609, '127.0.0.1', '2024-06-23 19:48:18.239700', '/upload/cover/1719142534210.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (610, '127.0.0.1', '2024-06-23 19:48:33.162473', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (611, '127.0.0.1', '2024-06-23 19:48:33.165657', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (612, '127.0.0.1', '2024-06-23 19:48:33.202223', '/myapp/index/comment/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (613, '127.0.0.1', '2024-06-23 19:48:33.208255', '/myapp/index/comment/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (614, '127.0.0.1', '2024-06-23 19:48:33.226516', '/myapp/index/comment/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (615, '127.0.0.1', '2024-06-23 19:48:33.260910', '/upload/cover/1719142558006.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (616, '127.0.0.1', '2024-06-23 19:48:33.271022', '/upload/cover/1719142558006.jpeg', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (617, '127.0.0.1', '2024-06-23 19:48:33.303375', '/upload/cover/1719137171247.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (618, '127.0.0.1', '2024-06-23 19:48:33.305375', '/upload/cover/1719137171247.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (619, '127.0.0.1', '2024-06-23 19:48:33.305375', '/upload/cover/1719137171247.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (620, '127.0.0.1', '2024-06-23 19:48:33.307391', '/upload/cover/1719137171247.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (621, '127.0.0.1', '2024-06-23 19:49:21.750864', '/myapp/index/thing/addCollectUser', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (622, '127.0.0.1', '2024-06-23 19:49:21.827018', '/myapp/index/thing/detail', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (623, '127.0.0.1', '2024-06-23 19:49:22.191617', '/myapp/index/thing/addWishUser', 'POST', NULL, '82');
INSERT INTO `b_op_log` VALUES (624, '127.0.0.1', '2024-06-23 19:49:22.269821', '/myapp/index/thing/detail', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (625, '127.0.0.1', '2024-06-23 19:49:23.580494', '/myapp/index/thing/getRecommend', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (626, '127.0.0.1', '2024-06-23 19:49:23.588497', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (627, '127.0.0.1', '2024-06-23 19:49:23.672562', '/myapp/index/thing/getRecommend', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (628, '127.0.0.1', '2024-06-23 19:49:23.719153', '/upload/cover/1719142563778.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (629, '127.0.0.1', '2024-06-23 19:49:23.721151', '/upload/cover/1719142572395.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (630, '127.0.0.1', '2024-06-23 19:49:23.724151', '/upload/cover/1719142572395.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (631, '127.0.0.1', '2024-06-23 19:49:23.725208', '/upload/cover/1719142572395.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (632, '127.0.0.1', '2024-06-23 19:49:23.733150', '/upload/cover/1719142572395.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (633, '127.0.0.1', '2024-06-23 19:49:23.742146', '/upload/cover/1719142593223.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (634, '127.0.0.1', '2024-06-23 19:49:23.742146', '/upload/cover/1719142593223.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (635, '127.0.0.1', '2024-06-23 19:49:23.746155', '/upload/cover/1719142581316.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (636, '127.0.0.1', '2024-06-23 19:49:26.686445', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (637, '127.0.0.1', '2024-06-23 19:49:26.701637', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (638, '127.0.0.1', '2024-06-23 19:49:26.714743', '/myapp/index/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (639, '127.0.0.1', '2024-06-23 19:49:26.795656', '/myapp/index/thing/list', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (640, '127.0.0.1', '2024-06-23 19:49:30.662568', '/myapp/index/thing/getRecommend', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (641, '127.0.0.1', '2024-06-23 19:49:30.684692', '/myapp/index/thing/getRecommend', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (642, '127.0.0.1', '2024-06-23 19:49:30.776133', '/myapp/index/thing/getRecommend', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (643, '127.0.0.1', '2024-06-23 19:50:24.254012', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (644, '127.0.0.1', '2024-06-23 19:50:24.267322', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (645, '127.0.0.1', '2024-06-23 19:50:24.278339', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (646, '127.0.0.1', '2024-06-23 19:50:24.353353', '/myapp/index/thing/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (647, '127.0.0.1', '2024-06-23 19:50:24.798464', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (648, '127.0.0.1', '2024-06-23 19:50:24.795465', '/myapp/index/thing/getRecommend', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (649, '127.0.0.1', '2024-06-23 19:50:24.857734', '/myapp/index/thing/getRecommend', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (650, '127.0.0.1', '2024-06-23 19:50:24.880601', '/upload/cover/1719142558006.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (651, '127.0.0.1', '2024-06-23 19:50:45.621501', '/myapp/index/notice/list_api', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (652, '127.0.0.1', '2024-06-23 19:50:45.638507', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (653, '127.0.0.1', '2024-06-23 19:50:45.641612', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (654, '127.0.0.1', '2024-06-23 19:50:45.653542', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (655, '127.0.0.1', '2024-06-23 19:50:47.029681', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (656, '127.0.0.1', '2024-06-23 19:50:47.041094', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (657, '127.0.0.1', '2024-06-23 19:50:47.058568', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (658, '127.0.0.1', '2024-06-23 19:50:47.117200', '/myapp/index/thing/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (659, '127.0.0.1', '2024-06-23 19:50:47.160290', '/upload/cover/1719142552524.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (660, '127.0.0.1', '2024-06-23 19:50:47.161302', '/upload/cover/1719142552524.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (661, '127.0.0.1', '2024-06-23 19:50:47.162300', '/upload/cover/1719142552524.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (662, '127.0.0.1', '2024-06-23 19:50:47.170301', '/upload/cover/1719142552524.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (663, '127.0.0.1', '2024-06-23 19:50:52.180911', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (664, '127.0.0.1', '2024-06-23 19:50:52.823871', '/myapp/index/thing/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (665, '127.0.0.1', '2024-06-23 19:50:53.577876', '/myapp/index/thing/getRecommend', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (666, '127.0.0.1', '2024-06-23 19:50:53.584247', '/myapp/index/thing/getRecommend', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (667, '127.0.0.1', '2024-06-23 19:50:53.635371', '/myapp/index/thing/getRecommend', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (668, '127.0.0.1', '2024-06-23 19:50:54.406924', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (669, '127.0.0.1', '2024-06-23 19:50:54.410106', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (670, '127.0.0.1', '2024-06-23 19:50:54.421121', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (671, '127.0.0.1', '2024-06-23 19:50:54.501841', '/myapp/index/user/info', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (672, '127.0.0.1', '2024-06-23 19:51:04.649680', '/myapp/index/thing/getRecommend', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (673, '127.0.0.1', '2024-06-23 19:51:04.664698', '/myapp/index/thing/getRecommend', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (674, '127.0.0.1', '2024-06-23 19:51:04.729021', '/myapp/index/thing/getRecommend', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (675, '127.0.0.1', '2024-06-23 19:51:05.701737', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (676, '127.0.0.1', '2024-06-23 19:51:05.713175', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (677, '127.0.0.1', '2024-06-23 19:51:05.718316', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (678, '127.0.0.1', '2024-06-23 19:51:05.810479', '/myapp/index/thing/list', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (679, '127.0.0.1', '2024-06-23 19:51:08.090010', '/myapp/index/thing/getRecommend', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (680, '127.0.0.1', '2024-06-23 19:51:08.099595', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (681, '127.0.0.1', '2024-06-23 19:51:08.104696', '/myapp/index/thing/getRecommend', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (682, '127.0.0.1', '2024-06-23 19:51:08.115178', '/myapp/index/thing/getRecommend', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (683, '127.0.0.1', '2024-06-23 19:51:08.142979', '/myapp/index/thing/getRecommend', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (684, '127.0.0.1', '2024-06-23 19:51:08.169978', '/myapp/index/thing/getRecommend', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (685, '127.0.0.1', '2024-06-23 19:51:08.207181', '/upload/cover/1719142572395.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (686, '127.0.0.1', '2024-06-23 19:51:08.208182', '/upload/cover/1719142572395.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (687, '127.0.0.1', '2024-06-23 19:51:08.210183', '/upload/cover/1719142572395.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (688, '127.0.0.1', '2024-06-23 19:51:09.727567', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (689, '127.0.0.1', '2024-06-23 19:51:09.740773', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (690, '127.0.0.1', '2024-06-23 19:51:09.752918', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (691, '127.0.0.1', '2024-06-23 19:51:09.830415', '/myapp/index/thing/list', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (692, '127.0.0.1', '2024-06-23 19:51:09.859839', '/upload/cover/1719142593223.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (693, '127.0.0.1', '2024-06-23 19:51:09.861887', '/upload/cover/1719142599114.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (694, '127.0.0.1', '2024-06-23 19:51:09.864862', '/upload/cover/1719142599114.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (695, '127.0.0.1', '2024-06-23 19:51:22.665243', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (696, '127.0.0.1', '2024-06-23 19:51:22.671278', '/myapp/admin/ad/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (697, '127.0.0.1', '2024-06-23 19:51:22.674268', '/myapp/admin/ad/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (698, '127.0.0.1', '2024-06-23 19:51:22.710376', '/myapp/admin/ad/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (699, '127.0.0.1', '2024-06-23 19:51:22.738970', '/myapp/admin/ad/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (700, '127.0.0.1', '2024-06-23 19:51:22.780472', '/myapp/admin/ad/list', 'GET', NULL, '131');
INSERT INTO `b_op_log` VALUES (701, '127.0.0.1', '2024-06-23 19:51:27.606601', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (702, '127.0.0.1', '2024-06-23 19:51:27.613722', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (703, '127.0.0.1', '2024-06-23 19:51:27.618732', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (704, '127.0.0.1', '2024-06-23 19:51:27.697220', '/myapp/index/user/info', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (705, '127.0.0.1', '2024-06-23 19:52:37.142900', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (706, '127.0.0.1', '2024-06-23 19:52:37.161687', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (707, '127.0.0.1', '2024-06-23 19:52:37.165814', '/myapp/index/notice/list_api', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (708, '127.0.0.1', '2024-06-23 19:52:37.186961', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (709, '127.0.0.1', '2024-06-23 19:53:33.005468', '/myapp/admin/order/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (710, '127.0.0.1', '2024-06-23 19:53:33.310520', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (711, '127.0.0.1', '2024-06-23 19:53:33.316407', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (712, '127.0.0.1', '2024-06-23 19:53:33.334102', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (713, '127.0.0.1', '2024-06-23 19:53:33.373746', '/myapp/index/user/info', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (714, '127.0.0.1', '2024-06-23 19:53:33.398954', '/myapp/index/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (715, '127.0.0.1', '2024-06-23 19:53:33.441590', '/upload/cover/1719142534210.jpeg', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (716, '127.0.0.1', '2024-06-23 19:53:33.454626', '/upload/cover/1719142545741.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (717, '127.0.0.1', '2024-06-23 19:53:33.470827', '/upload/cover/1719142534210.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (718, '127.0.0.1', '2024-06-23 19:53:33.470827', '/upload/cover/1719142528460.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (719, '127.0.0.1', '2024-06-23 19:53:33.474575', '/upload/cover/1719142534210.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (720, '127.0.0.1', '2024-06-23 19:53:33.485212', '/upload/cover/1719142534210.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (721, '127.0.0.1', '2024-06-23 19:53:33.484199', '/upload/cover/1719142534210.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (722, '127.0.0.1', '2024-06-23 19:53:33.489202', '/upload/cover/1719142563778.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (723, '127.0.0.1', '2024-06-23 19:53:33.512010', '/upload/cover/1719142563778.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (724, '127.0.0.1', '2024-06-23 19:53:33.525181', '/upload/cover/1719142581316.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (725, '127.0.0.1', '2024-06-23 19:53:33.532880', '/upload/cover/1719142581316.jpeg', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (726, '127.0.0.1', '2024-06-23 19:53:33.539619', '/upload/cover/1719142593223.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (727, '127.0.0.1', '2024-06-23 19:53:33.544087', '/upload/cover/1719142581316.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (728, '127.0.0.1', '2024-06-23 19:53:33.546268', '/upload/cover/1719142593223.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (729, '127.0.0.1', '2024-06-23 19:53:33.549286', '/upload/cover/1719142581316.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (730, '127.0.0.1', '2024-06-23 19:53:33.552296', '/upload/cover/1719142581316.jpeg', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (731, '127.0.0.1', '2024-06-23 19:53:33.973264', '/myapp/index/thing/getRecommend', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (732, '127.0.0.1', '2024-06-23 19:53:33.982747', '/myapp/index/thing/getRecommend', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (733, '127.0.0.1', '2024-06-23 19:53:34.023818', '/myapp/index/thing/getRecommend', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (734, '127.0.0.1', '2024-06-23 19:53:34.860953', '/myapp/admin/doctor/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (735, '127.0.0.1', '2024-06-23 19:53:36.481317', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (736, '127.0.0.1', '2024-06-23 19:53:36.492003', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (737, '127.0.0.1', '2024-06-23 19:53:36.555593', '/myapp/index/user/info', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (738, '127.0.0.1', '2024-06-23 19:55:26.806152', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (739, '127.0.0.1', '2024-06-23 19:55:26.812222', '/myapp/index/thing/getRecommend', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (740, '127.0.0.1', '2024-06-23 19:55:26.856570', '/myapp/index/thing/getRecommend', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (741, '127.0.0.1', '2024-06-23 19:55:26.890276', '/upload/cover/1719142593223.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (742, '127.0.0.1', '2024-06-23 19:55:26.891680', '/upload/cover/1719142593223.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (743, '127.0.0.1', '2024-06-23 19:55:26.892692', '/upload/cover/1719142593223.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (744, '127.0.0.1', '2024-06-23 19:55:26.894053', '/upload/cover/1719142593223.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (745, '127.0.0.1', '2024-06-23 19:55:26.902683', '/upload/cover/1719142593223.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (746, '127.0.0.1', '2024-06-23 19:55:26.904529', '/upload/cover/1719142599114.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (747, '127.0.0.1', '2024-06-23 19:55:26.908528', '/upload/cover/1719142593223.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (748, '127.0.0.1', '2024-06-23 19:55:28.365254', '/myapp/admin/doctor/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (749, '127.0.0.1', '2024-06-23 19:55:31.725219', '/myapp/index/thing/getRecommend', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (750, '127.0.0.1', '2024-06-23 19:55:31.737195', '/myapp/index/thing/getRecommend', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (751, '127.0.0.1', '2024-06-23 19:55:31.812471', '/myapp/index/thing/getRecommend', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (752, '127.0.0.1', '2024-06-23 19:55:57.935459', '/myapp/admin/order/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (753, '127.0.0.1', '2024-06-23 19:55:58.301115', '/myapp/index/thing/getRecommend', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (754, '127.0.0.1', '2024-06-23 19:55:58.312824', '/myapp/index/thing/getRecommend', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (755, '127.0.0.1', '2024-06-23 19:55:58.357043', '/myapp/index/thing/getRecommend', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (756, '127.0.0.1', '2024-06-23 19:55:58.394063', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (757, '127.0.0.1', '2024-06-23 19:55:58.399741', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (758, '127.0.0.1', '2024-06-23 19:55:58.439403', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (759, '127.0.0.1', '2024-06-23 19:55:58.448480', '/myapp/index/user/info', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (760, '127.0.0.1', '2024-06-23 19:55:58.461102', '/myapp/index/user/info', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (761, '127.0.0.1', '2024-06-23 19:55:58.474974', '/myapp/index/user/info', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (762, '127.0.0.1', '2024-06-23 19:55:59.235837', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (763, '127.0.0.1', '2024-06-23 19:55:59.237834', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (764, '127.0.0.1', '2024-06-23 19:55:59.244264', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (765, '127.0.0.1', '2024-06-23 19:55:59.315082', '/myapp/index/thing/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (766, '127.0.0.1', '2024-06-23 19:55:59.352830', '/upload/cover/1719142552524.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (767, '127.0.0.1', '2024-06-23 19:55:59.354000', '/upload/cover/1719142552524.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (768, '127.0.0.1', '2024-06-23 19:55:59.354000', '/upload/cover/1719142552524.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (769, '127.0.0.1', '2024-06-23 19:55:59.358011', '/upload/cover/1719142552524.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (770, '127.0.0.1', '2024-06-23 19:56:00.406319', '/myapp/admin/doctor/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (771, '127.0.0.1', '2024-06-23 19:56:02.209290', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (772, '127.0.0.1', '2024-06-23 19:56:02.213144', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (773, '127.0.0.1', '2024-06-23 19:56:02.222938', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (774, '127.0.0.1', '2024-06-23 19:56:02.299163', '/myapp/index/thing/list', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (775, '127.0.0.1', '2024-06-23 19:56:28.347575', '/myapp/admin/order/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (776, '127.0.0.1', '2024-06-23 19:56:28.660666', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (777, '127.0.0.1', '2024-06-23 19:56:28.672125', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (778, '127.0.0.1', '2024-06-23 19:56:28.691519', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (779, '127.0.0.1', '2024-06-23 19:56:28.746019', '/myapp/index/thing/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (780, '127.0.0.1', '2024-06-23 19:56:28.973181', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (781, '127.0.0.1', '2024-06-23 19:56:28.980620', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (782, '127.0.0.1', '2024-06-23 19:56:29.013301', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (783, '127.0.0.1', '2024-06-23 19:56:29.039784', '/myapp/index/user/info', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (784, '127.0.0.1', '2024-06-23 19:56:29.051793', '/myapp/index/user/info', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (785, '127.0.0.1', '2024-06-23 19:56:29.068973', '/myapp/index/user/info', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (786, '127.0.0.1', '2024-06-23 19:56:37.570504', '/myapp/index/thing/getRecommend', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (787, '127.0.0.1', '2024-06-23 19:56:37.580915', '/myapp/index/thing/getRecommend', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (788, '127.0.0.1', '2024-06-23 19:56:37.612636', '/myapp/index/thing/getRecommend', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (789, '127.0.0.1', '2024-06-23 19:56:39.098303', '/myapp/admin/doctor/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (790, '127.0.0.1', '2024-06-23 19:56:41.743684', '/myapp/admin/doctor/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (791, '127.0.0.1', '2024-06-23 19:56:42.542001', '/myapp/index/thing/getRecommend', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (792, '127.0.0.1', '2024-06-23 19:56:42.539018', '/myapp/index/thing/getRecommend', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (793, '127.0.0.1', '2024-06-23 19:56:42.596251', '/myapp/index/thing/getRecommend', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (794, '127.0.0.1', '2024-06-23 19:57:08.982482', '/myapp/admin/order/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (795, '127.0.0.1', '2024-06-23 19:57:09.108764', '/myapp/index/order/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (796, '127.0.0.1', '2024-06-23 19:57:09.115267', '/myapp/index/order/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (797, '127.0.0.1', '2024-06-23 19:57:09.166228', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (798, '127.0.0.1', '2024-06-23 19:57:09.175849', '/myapp/index/user/info', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (799, '127.0.0.1', '2024-06-23 19:57:09.179850', '/myapp/index/user/info', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (800, '127.0.0.1', '2024-06-23 19:57:09.182834', '/myapp/index/user/info', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (801, '127.0.0.1', '2024-06-23 19:57:10.763338', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (802, '127.0.0.1', '2024-06-23 19:57:10.762114', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (803, '127.0.0.1', '2024-06-23 19:57:10.769128', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (804, '127.0.0.1', '2024-06-23 19:57:10.844401', '/myapp/index/classification/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (805, '127.0.0.1', '2024-06-23 19:57:13.805214', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (806, '127.0.0.1', '2024-06-23 19:57:13.817277', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (807, '127.0.0.1', '2024-06-23 19:57:13.829069', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (808, '127.0.0.1', '2024-06-23 19:57:13.875001', '/myapp/index/thing/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (809, '127.0.0.1', '2024-06-23 19:57:14.737312', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (810, '127.0.0.1', '2024-06-23 19:57:14.752314', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (811, '127.0.0.1', '2024-06-23 19:57:14.799615', '/myapp/index/user/info', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (812, '127.0.0.1', '2024-06-23 19:57:15.643677', '/myapp/admin/doctor/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (813, '127.0.0.1', '2024-06-23 19:57:17.727606', '/myapp/index/thing/getRecommend', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (814, '127.0.0.1', '2024-06-23 19:57:17.732622', '/myapp/index/thing/getRecommend', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (815, '127.0.0.1', '2024-06-23 19:57:17.794835', '/myapp/index/thing/getRecommend', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (816, '127.0.0.1', '2024-06-23 19:59:31.448906', '/myapp/index/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (817, '127.0.0.1', '2024-06-23 19:59:31.452997', '/myapp/index/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (818, '127.0.0.1', '2024-06-23 19:59:31.460971', '/myapp/index/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (819, '127.0.0.1', '2024-06-23 19:59:31.557469', '/myapp/index/classification/list', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (820, '127.0.0.1', '2024-06-23 19:59:33.840660', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (821, '127.0.0.1', '2024-06-23 19:59:33.842822', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (822, '127.0.0.1', '2024-06-23 19:59:33.870286', '/myapp/index/user/info', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (823, '127.0.0.1', '2024-06-23 19:59:33.916124', '/myapp/index/user/info', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (824, '127.0.0.1', '2024-06-23 19:59:33.970278', '/upload/cover/1719142552524.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (825, '127.0.0.1', '2024-06-23 19:59:33.974766', '/upload/cover/1719142552524.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (826, '127.0.0.1', '2024-06-23 19:59:33.974766', '/upload/cover/1719142552524.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (827, '127.0.0.1', '2024-06-23 19:59:33.975757', '/upload/cover/1719142552524.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (828, '127.0.0.1', '2024-06-23 19:59:33.978895', '/upload/cover/1719142552524.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (829, '127.0.0.1', '2024-06-23 19:59:33.984296', '/upload/cover/1719142552524.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (830, '127.0.0.1', '2024-06-23 19:59:34.012034', '/upload/cover/1719142558006.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (831, '127.0.0.1', '2024-06-23 19:59:34.019037', '/upload/cover/1719142558006.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (832, '127.0.0.1', '2024-06-23 19:59:34.025265', '/upload/cover/1719142572395.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (833, '127.0.0.1', '2024-06-23 19:59:34.028286', '/upload/cover/1719142581316.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (834, '127.0.0.1', '2024-06-23 19:59:34.034266', '/upload/cover/1719142581316.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (835, '127.0.0.1', '2024-06-23 19:59:34.036527', '/upload/cover/1719142599114.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (836, '127.0.0.1', '2024-06-23 19:59:34.653913', '/myapp/admin/doctor/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (837, '127.0.0.1', '2024-06-23 19:59:36.283399', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (838, '127.0.0.1', '2024-06-23 19:59:36.287193', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (839, '127.0.0.1', '2024-06-23 19:59:36.291526', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (840, '127.0.0.1', '2024-06-23 19:59:36.363774', '/myapp/index/thing/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (841, '127.0.0.1', '2024-06-23 19:59:42.544298', '/myapp/admin/doctor/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (842, '127.0.0.1', '2024-06-23 20:00:45.718320', '/myapp/admin/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (843, '127.0.0.1', '2024-06-23 20:00:46.098219', '/myapp/admin/doctor/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (844, '127.0.0.1', '2024-06-23 20:00:52.773836', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (845, '127.0.0.1', '2024-06-23 20:00:52.775824', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (846, '127.0.0.1', '2024-06-23 20:00:52.788812', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (847, '127.0.0.1', '2024-06-23 20:00:52.825907', '/myapp/index/user/info', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (848, '127.0.0.1', '2024-06-23 20:00:54.206621', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (849, '127.0.0.1', '2024-06-23 20:00:54.215620', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (850, '127.0.0.1', '2024-06-23 20:00:54.251819', '/myapp/index/user/info', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (851, '127.0.0.1', '2024-06-23 20:00:54.981167', '/myapp/index/thing/getRecommend', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (852, '127.0.0.1', '2024-06-23 20:00:54.991857', '/myapp/index/thing/getRecommend', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (853, '127.0.0.1', '2024-06-23 20:00:55.042335', '/myapp/index/thing/getRecommend', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (854, '127.0.0.1', '2024-06-23 20:00:56.577568', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (855, '127.0.0.1', '2024-06-23 20:00:56.587065', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (856, '127.0.0.1', '2024-06-23 20:00:56.601791', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (857, '127.0.0.1', '2024-06-23 20:00:56.628941', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (858, '127.0.0.1', '2024-06-23 20:00:56.636384', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (859, '127.0.0.1', '2024-06-23 20:00:56.650866', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (860, '127.0.0.1', '2024-06-23 20:00:57.206053', '/myapp/index/thing/getRecommend', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (861, '127.0.0.1', '2024-06-23 20:00:57.214475', '/myapp/index/thing/getRecommend', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (862, '127.0.0.1', '2024-06-23 20:00:57.267345', '/myapp/index/thing/getRecommend', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (863, '127.0.0.1', '2024-06-23 20:00:58.643050', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (864, '127.0.0.1', '2024-06-23 20:00:58.651695', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (865, '127.0.0.1', '2024-06-23 20:00:58.664733', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (866, '127.0.0.1', '2024-06-23 20:00:58.733748', '/myapp/index/thing/list', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (867, '127.0.0.1', '2024-06-23 20:00:59.591276', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (868, '127.0.0.1', '2024-06-23 20:00:59.599754', '/myapp/index/thing/getRecommend', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (869, '127.0.0.1', '2024-06-23 20:00:59.654695', '/myapp/index/thing/getRecommend', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (870, '127.0.0.1', '2024-06-23 20:03:32.390256', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (871, '127.0.0.1', '2024-06-23 20:03:32.397273', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (872, '127.0.0.1', '2024-06-23 20:03:32.402708', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (873, '127.0.0.1', '2024-06-23 20:03:32.465246', '/upload/cover/1719137557222.png', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (874, '127.0.0.1', '2024-06-23 20:03:32.476361', '/upload/cover/1719137557222.png', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (875, '127.0.0.1', '2024-06-23 20:03:32.479361', '/upload/cover/1719137557222.png', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (876, '127.0.0.1', '2024-06-23 20:03:32.493989', '/upload/cover/1719137557222.png', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (877, '127.0.0.1', '2024-06-23 20:03:38.235630', '/myapp/admin/ad/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (878, '127.0.0.1', '2024-06-23 20:03:38.240059', '/myapp/admin/ad/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (879, '127.0.0.1', '2024-06-23 20:03:38.256644', '/myapp/admin/ad/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (880, '127.0.0.1', '2024-06-23 20:03:38.285718', '/upload/cover/1719142545741.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (881, '127.0.0.1', '2024-06-23 20:03:38.291204', '/upload/cover/1719142545741.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (882, '127.0.0.1', '2024-06-23 20:03:38.299893', '/upload/cover/1719142545741.jpeg', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (883, '127.0.0.1', '2024-06-23 20:03:38.308893', '/upload/cover/1719142545741.jpeg', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (884, '127.0.0.1', '2024-06-23 20:03:38.350446', '/upload/cover/1719142572395.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (885, '127.0.0.1', '2024-06-23 20:03:38.351765', '/upload/cover/1719142572395.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (886, '127.0.0.1', '2024-06-23 20:03:38.352853', '/upload/cover/1719142572395.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (887, '127.0.0.1', '2024-06-23 20:03:38.354334', '/upload/cover/1719142572395.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (888, '127.0.0.1', '2024-06-23 20:04:13.386545', '/myapp/index/doctor/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (889, '127.0.0.1', '2024-06-23 20:04:13.393987', '/myapp/index/doctor/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (890, '127.0.0.1', '2024-06-23 20:04:13.399337', '/myapp/index/doctor/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (891, '127.0.0.1', '2024-06-23 20:04:32.679090', '/myapp/index/doctor/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (892, '127.0.0.1', '2024-06-23 20:04:32.685433', '/myapp/index/doctor/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (893, '127.0.0.1', '2024-06-23 20:04:32.692418', '/myapp/index/doctor/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (894, '127.0.0.1', '2024-06-23 20:04:32.731143', '/upload/cover/1719137557222.png', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (895, '127.0.0.1', '2024-06-23 20:04:32.732326', '/upload/cover/1719137557222.png', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (896, '127.0.0.1', '2024-06-23 20:04:32.737090', '/upload/cover/1719137557222.png', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (897, '127.0.0.1', '2024-06-23 20:04:32.736037', '/upload/cover/1719137557222.png', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (898, '127.0.0.1', '2024-06-23 20:05:10.667195', '/myapp/index/doctor/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (899, '127.0.0.1', '2024-06-23 20:05:10.675672', '/myapp/index/doctor/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (900, '127.0.0.1', '2024-06-23 20:05:10.681105', '/myapp/index/doctor/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (901, '127.0.0.1', '2024-06-23 20:05:10.717599', '/upload/cover/1719137521406.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (902, '127.0.0.1', '2024-06-23 20:05:10.719933', '/upload/cover/1719137557222.png', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (903, '127.0.0.1', '2024-06-23 20:05:10.721932', '/upload/cover/1719137557222.png', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (904, '127.0.0.1', '2024-06-23 20:05:10.723933', '/upload/cover/1719137557222.png', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (905, '127.0.0.1', '2024-06-23 20:06:22.136818', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (906, '127.0.0.1', '2024-06-23 20:06:22.144280', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (907, '127.0.0.1', '2024-06-23 20:06:22.208261', '/myapp/index/user/info', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (908, '127.0.0.1', '2024-06-23 20:06:22.254157', '/upload/cover/1719142599114.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (909, '127.0.0.1', '2024-06-23 20:06:22.256150', '/upload/cover/1719142599114.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (910, '127.0.0.1', '2024-06-23 20:06:22.257155', '/upload/cover/1719142599114.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (911, '127.0.0.1', '2024-06-23 20:06:22.886853', '/myapp/index/doctor/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (912, '127.0.0.1', '2024-06-23 20:06:22.895533', '/myapp/index/doctor/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (913, '127.0.0.1', '2024-06-23 20:06:22.902565', '/myapp/index/doctor/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (914, '127.0.0.1', '2024-06-23 20:06:32.449113', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (915, '127.0.0.1', '2024-06-23 20:06:32.457472', '/myapp/index/thing/getRecommend', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (916, '127.0.0.1', '2024-06-23 20:06:32.527796', '/myapp/index/thing/getRecommend', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (917, '127.0.0.1', '2024-06-23 20:06:34.996628', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (918, '127.0.0.1', '2024-06-23 20:06:35.003726', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (919, '127.0.0.1', '2024-06-23 20:06:35.016252', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (920, '127.0.0.1', '2024-06-23 20:07:04.125066', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (921, '127.0.0.1', '2024-06-23 20:07:04.138181', '/myapp/index/thing/getRecommend', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (922, '127.0.0.1', '2024-06-23 20:07:04.194865', '/myapp/index/thing/getRecommend', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (923, '127.0.0.1', '2024-06-23 20:07:04.230377', '/upload/cover/1719142572395.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (924, '127.0.0.1', '2024-06-23 20:07:04.231708', '/upload/cover/1719142572395.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (925, '127.0.0.1', '2024-06-23 20:07:04.232716', '/upload/cover/1719142572395.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (926, '127.0.0.1', '2024-06-23 20:07:04.233717', '/upload/cover/1719142572395.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (927, '127.0.0.1', '2024-06-23 20:07:05.195919', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (928, '127.0.0.1', '2024-06-23 20:07:05.203981', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (929, '127.0.0.1', '2024-06-23 20:07:05.210733', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (930, '127.0.0.1', '2024-06-23 20:07:29.128023', '/myapp/index/thing/getRecommend', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (931, '127.0.0.1', '2024-06-23 20:07:29.140646', '/myapp/index/thing/getRecommend', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (932, '127.0.0.1', '2024-06-23 20:07:29.214379', '/myapp/index/thing/getRecommend', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (933, '127.0.0.1', '2024-06-23 20:07:30.343712', '/myapp/index/doctor/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (934, '127.0.0.1', '2024-06-23 20:07:30.347517', '/myapp/index/doctor/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (935, '127.0.0.1', '2024-06-23 20:07:30.353511', '/myapp/index/doctor/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (936, '127.0.0.1', '2024-06-23 20:09:15.384279', '/myapp/index/thing/getRecommend', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (937, '127.0.0.1', '2024-06-23 20:09:15.392337', '/myapp/index/thing/getRecommend', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (938, '127.0.0.1', '2024-06-23 20:09:15.450855', '/myapp/index/thing/getRecommend', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (939, '127.0.0.1', '2024-06-23 20:09:16.004414', '/myapp/index/doctor/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (940, '127.0.0.1', '2024-06-23 20:09:16.007353', '/myapp/index/doctor/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (941, '127.0.0.1', '2024-06-23 20:09:16.012429', '/myapp/index/doctor/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (942, '127.0.0.1', '2024-06-23 20:09:17.084327', '/myapp/index/thing/getRecommend', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (943, '127.0.0.1', '2024-06-23 20:09:17.100334', '/myapp/index/thing/getRecommend', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (944, '127.0.0.1', '2024-06-23 20:09:17.149617', '/myapp/index/thing/getRecommend', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (945, '127.0.0.1', '2024-06-23 20:09:18.096766', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (946, '127.0.0.1', '2024-06-23 20:09:18.101226', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (947, '127.0.0.1', '2024-06-23 20:09:18.106227', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (948, '127.0.0.1', '2024-06-23 20:09:18.179068', '/myapp/index/thing/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (949, '127.0.0.1', '2024-06-23 20:09:18.242391', '/upload/cover/1719142552524.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (950, '127.0.0.1', '2024-06-23 20:09:18.242391', '/upload/cover/1719142552524.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (951, '127.0.0.1', '2024-06-23 20:09:18.248800', '/upload/cover/1719142552524.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (952, '127.0.0.1', '2024-06-23 20:09:18.252381', '/upload/cover/1719142552524.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (953, '127.0.0.1', '2024-06-23 20:09:28.860020', '/myapp/admin/user/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (954, '127.0.0.1', '2024-06-23 20:09:29.128279', '/myapp/admin/order/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (955, '127.0.0.1', '2024-06-23 20:09:34.038793', '/myapp/admin/order/cancel_order', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (956, '127.0.0.1', '2024-06-23 20:09:34.096275', '/myapp/admin/order/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (957, '127.0.0.1', '2024-06-23 20:09:38.666880', '/myapp/admin/ad/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (958, '127.0.0.1', '2024-06-23 20:09:38.685696', '/myapp/admin/ad/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (959, '127.0.0.1', '2024-06-23 20:09:38.698045', '/myapp/admin/ad/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (960, '127.0.0.1', '2024-06-23 20:09:38.703602', '/myapp/admin/ad/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (961, '127.0.0.1', '2024-06-23 20:09:38.727974', '/myapp/admin/ad/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (962, '127.0.0.1', '2024-06-23 20:09:38.761489', '/myapp/admin/ad/list', 'GET', NULL, '120');
INSERT INTO `b_op_log` VALUES (963, '127.0.0.1', '2024-06-23 20:09:40.488100', '/myapp/index/thing/addWishUser', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (964, '127.0.0.1', '2024-06-23 20:09:40.576559', '/myapp/index/thing/detail', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (965, '127.0.0.1', '2024-06-23 20:09:40.935248', '/myapp/index/thing/addCollectUser', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (966, '127.0.0.1', '2024-06-23 20:09:41.011312', '/myapp/index/thing/detail', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (967, '127.0.0.1', '2024-06-23 20:09:41.970527', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (968, '127.0.0.1', '2024-06-23 20:09:41.982992', '/myapp/index/notice/list_api', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (969, '127.0.0.1', '2024-06-23 20:09:41.985950', '/myapp/index/notice/list_api', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (970, '127.0.0.1', '2024-06-23 20:09:41.992128', '/myapp/index/notice/list_api', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (971, '127.0.0.1', '2024-06-23 20:09:42.028227', '/myapp/index/notice/list_api', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (972, '127.0.0.1', '2024-06-23 20:09:42.046219', '/myapp/index/notice/list_api', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (973, '127.0.0.1', '2024-06-23 20:09:55.404958', '/myapp/index/order/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (974, '127.0.0.1', '2024-06-23 20:09:55.547731', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (975, '127.0.0.1', '2024-06-23 20:09:55.548771', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (976, '127.0.0.1', '2024-06-23 20:09:56.975688', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (977, '127.0.0.1', '2024-06-23 20:09:56.999168', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (978, '127.0.0.1', '2024-06-23 20:09:57.069191', '/myapp/index/user/info', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (979, '127.0.0.1', '2024-06-23 20:09:57.080627', '/myapp/index/user/info', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (980, '127.0.0.1', '2024-06-23 20:09:57.083628', '/myapp/index/user/info', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (981, '127.0.0.1', '2024-06-23 20:09:57.094675', '/myapp/index/user/info', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (982, '127.0.0.1', '2024-06-23 20:10:01.244879', '/myapp/admin/user/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (983, '127.0.0.1', '2024-06-23 20:10:01.745747', '/myapp/admin/order/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (984, '127.0.0.1', '2024-06-23 20:10:10.670379', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (985, '127.0.0.1', '2024-06-23 20:10:10.674585', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (986, '127.0.0.1', '2024-06-23 20:10:10.815343', '/myapp/admin/classification/list', 'GET', NULL, '151');
INSERT INTO `b_op_log` VALUES (987, '127.0.0.1', '2024-06-23 20:10:11.369631', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (988, '127.0.0.1', '2024-06-23 20:10:12.080308', '/myapp/admin/doctor/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (989, '127.0.0.1', '2024-06-23 20:10:12.961241', '/myapp/admin/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (990, '127.0.0.1', '2024-06-23 20:10:17.119715', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (991, '127.0.0.1', '2024-06-23 20:10:17.130243', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (992, '127.0.0.1', '2024-06-23 20:10:17.139228', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (993, '127.0.0.1', '2024-06-23 20:10:17.151496', '/myapp/index/comment/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (994, '127.0.0.1', '2024-06-23 20:10:17.202571', '/myapp/index/comment/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (995, '127.0.0.1', '2024-06-23 20:10:17.222448', '/myapp/index/comment/list', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (996, '127.0.0.1', '2024-06-23 20:10:17.232650', '/upload/cover/1719142563778.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (997, '127.0.0.1', '2024-06-23 20:10:17.262148', '/upload/cover/1719142581316.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (998, '127.0.0.1', '2024-06-23 20:10:17.262148', '/upload/cover/1719142581316.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (999, '127.0.0.1', '2024-06-23 20:10:17.264146', '/upload/cover/1719142581316.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1000, '127.0.0.1', '2024-06-23 20:10:17.264146', '/upload/cover/1719142581316.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1001, '127.0.0.1', '2024-06-23 20:10:23.827775', '/myapp/index/comment/create', 'POST', NULL, '67');
INSERT INTO `b_op_log` VALUES (1002, '127.0.0.1', '2024-06-23 20:10:23.872341', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1003, '127.0.0.1', '2024-06-23 20:10:25.120163', '/myapp/index/comment/create', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (1004, '127.0.0.1', '2024-06-23 20:10:25.203750', '/myapp/index/comment/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (1005, '127.0.0.1', '2024-06-23 20:10:26.380058', '/myapp/index/comment/create', 'POST', NULL, '3');
INSERT INTO `b_op_log` VALUES (1006, '127.0.0.1', '2024-06-23 20:10:27.958802', '/myapp/index/comment/create', 'POST', NULL, '3');
INSERT INTO `b_op_log` VALUES (1007, '127.0.0.1', '2024-06-23 20:10:30.367378', '/myapp/index/comment/create', 'POST', NULL, '2');
INSERT INTO `b_op_log` VALUES (1008, '127.0.0.1', '2024-06-23 20:10:31.822378', '/myapp/admin/ad/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1009, '127.0.0.1', '2024-06-23 20:10:31.855292', '/myapp/admin/ad/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1010, '127.0.0.1', '2024-06-23 20:10:31.889749', '/myapp/admin/ad/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1011, '127.0.0.1', '2024-06-23 20:10:31.901072', '/myapp/admin/ad/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (1012, '127.0.0.1', '2024-06-23 20:10:34.791657', '/myapp/index/comment/create', 'POST', NULL, '3');
INSERT INTO `b_op_log` VALUES (1013, '127.0.0.1', '2024-06-23 20:10:36.008261', '/myapp/index/comment/create', 'POST', NULL, '4');
INSERT INTO `b_op_log` VALUES (1014, '127.0.0.1', '2024-06-23 20:10:37.342092', '/myapp/index/comment/create', 'POST', NULL, '3');
INSERT INTO `b_op_log` VALUES (1015, '127.0.0.1', '2024-06-23 20:10:40.433911', '/myapp/admin/user/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1016, '127.0.0.1', '2024-06-23 20:10:41.377541', '/myapp/admin/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1017, '127.0.0.1', '2024-06-23 20:10:41.946076', '/myapp/admin/user/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1018, '127.0.0.1', '2024-06-23 20:10:42.723131', '/myapp/admin/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1019, '127.0.0.1', '2024-06-23 20:10:44.988990', '/myapp/admin/user/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1020, '127.0.0.1', '2024-06-23 20:10:51.946725', '/myapp/admin/user/create', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (1021, '127.0.0.1', '2024-06-23 20:10:52.005646', '/myapp/admin/user/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1022, '127.0.0.1', '2024-06-23 20:10:59.257497', '/myapp/admin/user/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (1023, '127.0.0.1', '2024-06-23 20:10:59.294895', '/myapp/admin/user/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1024, '127.0.0.1', '2024-06-23 20:11:09.406469', '/myapp/admin/user/create', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (1025, '127.0.0.1', '2024-06-23 20:11:09.452470', '/myapp/admin/user/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1026, '127.0.0.1', '2024-06-23 20:11:12.182558', '/myapp/admin/order/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1027, '127.0.0.1', '2024-06-23 20:11:14.429627', '/myapp/admin/ad/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1028, '127.0.0.1', '2024-06-23 20:11:23.179561', '/myapp/admin/ad/create', 'POST', NULL, '318');
INSERT INTO `b_op_log` VALUES (1029, '127.0.0.1', '2024-06-23 20:11:23.201550', '/myapp/admin/ad/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1030, '127.0.0.1', '2024-06-23 20:11:23.246882', '/upload/ad/1719144680563.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1031, '127.0.0.1', '2024-06-23 20:11:30.182022', '/myapp/admin/ad/create', 'POST', NULL, '71');
INSERT INTO `b_op_log` VALUES (1032, '127.0.0.1', '2024-06-23 20:11:30.222800', '/myapp/admin/ad/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1033, '127.0.0.1', '2024-06-23 20:11:30.273873', '/upload/ad/1719144687036.png', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1034, '127.0.0.1', '2024-06-23 20:11:35.348410', '/myapp/admin/notice/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1035, '127.0.0.1', '2024-06-23 20:11:44.279997', '/myapp/admin/notice/create', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (1036, '127.0.0.1', '2024-06-23 20:11:44.333000', '/myapp/admin/notice/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1037, '127.0.0.1', '2024-06-23 20:11:55.907005', '/myapp/admin/notice/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (1038, '127.0.0.1', '2024-06-23 20:11:55.947749', '/myapp/admin/notice/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1039, '127.0.0.1', '2024-06-23 20:11:59.335257', '/myapp/admin/loginLog/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1040, '127.0.0.1', '2024-06-23 20:11:59.833732', '/myapp/admin/opLog/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1041, '127.0.0.1', '2024-06-23 20:12:00.758974', '/myapp/admin/errorLog/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1042, '127.0.0.1', '2024-06-23 20:12:03.200140', '/myapp/admin/overview/count', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1043, '127.0.0.1', '2024-06-23 20:12:05.196927', '/myapp/admin/feedback/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1044, '127.0.0.1', '2024-06-23 20:12:10.778530', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1045, '127.0.0.1', '2024-06-23 20:12:10.780538', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1046, '127.0.0.1', '2024-06-23 20:12:27.799840', '/myapp/index/feedback/create', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (1047, '127.0.0.1', '2024-06-23 20:12:35.073756', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1048, '127.0.0.1', '2024-06-23 20:12:35.078859', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1049, '127.0.0.1', '2024-06-23 20:12:40.861865', '/myapp/admin/overview/count', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1050, '127.0.0.1', '2024-06-23 20:12:41.700290', '/myapp/admin/feedback/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1051, '127.0.0.1', '2024-06-23 20:12:44.222058', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1068');
INSERT INTO `b_op_log` VALUES (1052, '127.0.0.1', '2024-06-23 20:12:44.918922', '/myapp/admin/feedback/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1053, '127.0.0.1', '2024-06-23 20:12:45.894557', '/myapp/admin/overview/count', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1054, '127.0.0.1', '2024-06-23 20:12:46.658485', '/myapp/admin/feedback/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1055, '127.0.0.1', '2024-06-23 20:13:13.388596', '/myapp/index/feedback/create', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (1056, '127.0.0.1', '2024-06-23 20:13:15.032061', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1057, '127.0.0.1', '2024-06-23 20:13:15.041031', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1058, '127.0.0.1', '2024-06-23 20:13:16.322327', '/myapp/admin/overview/count', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1059, '127.0.0.1', '2024-06-23 20:13:16.783244', '/myapp/admin/feedback/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1060, '127.0.0.1', '2024-06-23 20:13:19.877451', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1035');
INSERT INTO `b_op_log` VALUES (1061, '127.0.0.1', '2024-06-23 20:13:22.838367', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1062, '127.0.0.1', '2024-06-23 20:13:22.840364', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1063, '127.0.0.1', '2024-06-23 20:13:22.945124', '/myapp/admin/classification/list', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (1064, '127.0.0.1', '2024-06-23 20:13:24.349620', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1065, '127.0.0.1', '2024-06-23 20:13:25.203189', '/myapp/admin/doctor/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1066, '127.0.0.1', '2024-06-23 20:13:26.635484', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1067, '127.0.0.1', '2024-06-23 20:13:27.615102', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1068, '127.0.0.1', '2024-06-23 20:13:27.629108', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1069, '127.0.0.1', '2024-06-23 20:13:27.778421', '/myapp/admin/classification/list', 'GET', NULL, '178');
INSERT INTO `b_op_log` VALUES (1070, '127.0.0.1', '2024-06-23 20:13:29.868106', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1071, '127.0.0.1', '2024-06-23 20:13:30.857144', '/myapp/admin/doctor/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1072, '127.0.0.1', '2024-06-23 20:13:31.519088', '/myapp/admin/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1073, '127.0.0.1', '2024-06-23 20:13:32.339276', '/myapp/admin/user/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1074, '127.0.0.1', '2024-06-23 20:13:33.177989', '/myapp/admin/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1075, '127.0.0.1', '2024-06-23 20:13:33.723819', '/myapp/admin/order/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1076, '127.0.0.1', '2024-06-23 20:13:34.655083', '/myapp/admin/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1077, '127.0.0.1', '2024-06-23 20:13:35.155637', '/myapp/admin/doctor/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1078, '127.0.0.1', '2024-06-23 20:13:35.850169', '/myapp/admin/user/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1079, '127.0.0.1', '2024-06-23 20:13:37.428840', '/myapp/admin/doctor/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1080, '127.0.0.1', '2024-06-23 20:13:38.427843', '/myapp/admin/doctor/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1081, '127.0.0.1', '2024-06-23 20:13:38.434418', '/myapp/admin/doctor/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1082, '127.0.0.1', '2024-06-23 20:13:38.588398', '/myapp/admin/doctor/list', 'GET', NULL, '175');
INSERT INTO `b_op_log` VALUES (1083, '127.0.0.1', '2024-06-23 20:14:10.117483', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1084, '127.0.0.1', '2024-06-23 20:14:10.119790', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1085, '127.0.0.1', '2024-06-23 20:14:10.415638', '/myapp/admin/doctor/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1086, '127.0.0.1', '2024-06-23 20:14:10.421954', '/myapp/admin/doctor/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1087, '127.0.0.1', '2024-06-23 20:14:10.504949', '/myapp/admin/doctor/list', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (1088, '127.0.0.1', '2024-06-23 20:14:11.397356', '/myapp/admin/doctor/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1089, '127.0.0.1', '2024-06-23 20:14:11.898287', '/myapp/index/order/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1090, '127.0.0.1', '2024-06-23 20:14:11.917649', '/myapp/index/order/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1091, '127.0.0.1', '2024-06-23 20:14:11.963454', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1092, '127.0.0.1', '2024-06-23 20:14:11.969409', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1093, '127.0.0.1', '2024-06-23 20:14:11.979729', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1094, '127.0.0.1', '2024-06-23 20:14:11.988319', '/myapp/index/user/info', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1095, '127.0.0.1', '2024-06-23 20:14:12.058321', '/upload/cover/1719142558006.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1096, '127.0.0.1', '2024-06-23 20:14:12.059405', '/upload/cover/1719142558006.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1097, '127.0.0.1', '2024-06-23 20:14:45.093172', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1098, '127.0.0.1', '2024-06-23 20:14:45.098526', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1099, '127.0.0.1', '2024-06-23 20:14:45.416151', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1100, '127.0.0.1', '2024-06-23 20:14:45.426671', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1101, '127.0.0.1', '2024-06-23 20:14:45.633242', '/myapp/admin/classification/list', 'GET', NULL, '229');
INSERT INTO `b_op_log` VALUES (1102, '127.0.0.1', '2024-06-23 20:14:46.679878', '/myapp/admin/doctor/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1103, '127.0.0.1', '2024-06-23 20:14:46.879855', '/myapp/index/order/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1104, '127.0.0.1', '2024-06-23 20:14:46.881896', '/myapp/index/order/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1105, '127.0.0.1', '2024-06-23 20:14:46.931862', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1106, '127.0.0.1', '2024-06-23 20:14:46.940186', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1107, '127.0.0.1', '2024-06-23 20:14:46.956174', '/myapp/index/user/info', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1108, '127.0.0.1', '2024-06-23 20:14:46.953174', '/myapp/index/user/info', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1109, '127.0.0.1', '2024-06-23 20:15:15.634101', '/myapp/admin/doctor/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1110, '127.0.0.1', '2024-06-23 20:15:15.640729', '/myapp/admin/doctor/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1111, '127.0.0.1', '2024-06-23 20:15:15.780640', '/myapp/admin/doctor/list', 'GET', NULL, '158');
INSERT INTO `b_op_log` VALUES (1112, '127.0.0.1', '2024-06-23 20:15:35.149448', '/myapp/admin/doctor/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1113, '127.0.0.1', '2024-06-23 20:15:35.230730', '/myapp/index/order/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1114, '127.0.0.1', '2024-06-23 20:15:35.236354', '/myapp/index/order/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1115, '127.0.0.1', '2024-06-23 20:15:35.270418', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1116, '127.0.0.1', '2024-06-23 20:15:35.284780', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1117, '127.0.0.1', '2024-06-23 20:15:35.292402', '/myapp/index/user/info', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1118, '127.0.0.1', '2024-06-23 20:15:35.295412', '/myapp/index/user/info', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1119, '127.0.0.1', '2024-06-23 20:16:01.480535', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1120, '127.0.0.1', '2024-06-23 20:16:01.487807', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1121, '127.0.0.1', '2024-06-23 20:16:01.511705', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1122, '127.0.0.1', '2024-06-23 20:16:01.515695', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1123, '127.0.0.1', '2024-06-23 20:16:05.732975', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1124, '127.0.0.1', '2024-06-23 20:16:05.738643', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1125, '127.0.0.1', '2024-06-23 20:16:05.746622', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1126, '127.0.0.1', '2024-06-23 20:16:05.804669', '/myapp/index/thing/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (1127, '127.0.0.1', '2024-06-23 20:16:05.846294', '/upload/cover/1719142539630.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1128, '127.0.0.1', '2024-06-23 20:16:05.852703', '/upload/cover/1719142539630.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1129, '127.0.0.1', '2024-06-23 20:16:05.858607', '/upload/cover/1719142545741.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1130, '127.0.0.1', '2024-06-23 20:16:05.868916', '/upload/cover/1719142539630.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1131, '127.0.0.1', '2024-06-23 20:16:05.878681', '/upload/cover/1719142545741.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1132, '127.0.0.1', '2024-06-23 20:16:05.880681', '/upload/cover/1719142581316.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1133, '127.0.0.1', '2024-06-23 20:16:05.885916', '/upload/cover/1719142581316.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1134, '127.0.0.1', '2024-06-23 20:16:05.891610', '/upload/cover/1719142552524.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1135, '127.0.0.1', '2024-06-23 20:16:05.892619', '/upload/cover/1719142593223.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1136, '127.0.0.1', '2024-06-23 20:16:05.895797', '/upload/cover/1719142599114.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1137, '127.0.0.1', '2024-06-23 20:16:11.590094', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1138, '127.0.0.1', '2024-06-23 20:16:11.594093', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1139, '127.0.0.1', '2024-06-23 20:16:11.618661', '/myapp/index/user/info', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1140, '127.0.0.1', '2024-06-23 20:16:11.665749', '/myapp/index/user/info', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (1141, '127.0.0.1', '2024-06-23 20:16:53.637638', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1142, '127.0.0.1', '2024-06-23 20:16:53.656363', '/myapp/index/notice/list_api', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1143, '127.0.0.1', '2024-06-23 20:16:53.662378', '/myapp/index/notice/list_api', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1144, '127.0.0.1', '2024-06-23 20:16:53.681272', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1145, '127.0.0.1', '2024-06-23 20:16:57.199345', '/myapp/index/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1146, '127.0.0.1', '2024-06-23 20:16:57.207087', '/myapp/index/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1147, '127.0.0.1', '2024-06-23 20:16:57.212094', '/myapp/index/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1148, '127.0.0.1', '2024-06-23 20:16:57.272132', '/myapp/index/classification/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (1149, '127.0.0.1', '2024-06-23 20:16:58.996518', '/myapp/index/thing/getRecommend', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1150, '127.0.0.1', '2024-06-23 20:16:59.003388', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1151, '127.0.0.1', '2024-06-23 20:16:59.022112', '/myapp/index/thing/getRecommend', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1152, '127.0.0.1', '2024-06-23 20:16:59.832318', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1153, '127.0.0.1', '2024-06-23 20:16:59.842425', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1154, '127.0.0.1', '2024-06-23 20:16:59.853542', '/myapp/index/user/info', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1155, '127.0.0.1', '2024-06-23 20:16:59.914710', '/myapp/index/user/info', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (1156, '127.0.0.1', '2024-06-23 20:17:06.837298', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1157, '127.0.0.1', '2024-06-23 20:17:07.746919', '/myapp/index/thing/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (1158, '127.0.0.1', '2024-06-23 20:17:41.042085', '/myapp/admin/doctor/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1159, '127.0.0.1', '2024-06-23 20:17:41.816964', '/myapp/admin/doctor/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1160, '127.0.0.1', '2024-06-23 20:17:41.818963', '/myapp/admin/doctor/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1161, '127.0.0.1', '2024-06-23 20:17:41.893038', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1162, '127.0.0.1', '2024-06-23 20:17:41.899090', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1163, '127.0.0.1', '2024-06-23 20:17:41.905035', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1164, '127.0.0.1', '2024-06-23 20:17:42.002313', '/myapp/index/thing/list', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (1165, '127.0.0.1', '2024-06-23 20:17:42.015552', '/myapp/index/thing/list', 'GET', NULL, '141');
INSERT INTO `b_op_log` VALUES (1166, '127.0.0.1', '2024-06-23 20:17:51.262967', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1167, '127.0.0.1', '2024-06-23 20:17:51.273413', '/myapp/index/thing/getRecommend', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1168, '127.0.0.1', '2024-06-23 20:17:51.308795', '/myapp/index/thing/getRecommend', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1169, '127.0.0.1', '2024-06-23 20:17:58.587373', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1170, '127.0.0.1', '2024-06-23 20:17:59.744908', '/myapp/admin/doctor/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1171, '127.0.0.1', '2024-06-23 20:18:01.402080', '/myapp/admin/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1172, '127.0.0.1', '2024-06-23 20:18:16.664265', '/myapp/admin/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1173, '127.0.0.1', '2024-06-23 20:18:21.049491', '/myapp/admin/user/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1174, '127.0.0.1', '2024-06-23 20:18:22.518643', '/myapp/admin/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1175, '127.0.0.1', '2024-06-23 20:18:23.555917', '/myapp/admin/order/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1176, '127.0.0.1', '2024-06-23 20:18:26.971278', '/myapp/admin/user/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1177, '127.0.0.1', '2024-06-23 20:18:27.727891', '/myapp/admin/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1178, '127.0.0.1', '2024-06-23 20:18:30.546137', '/myapp/admin/comment/delete', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (1179, '127.0.0.1', '2024-06-23 20:18:30.581554', '/myapp/admin/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1180, '127.0.0.1', '2024-06-23 20:18:33.163551', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1181, '127.0.0.1', '2024-06-23 20:18:33.167552', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1182, '127.0.0.1', '2024-06-23 20:18:33.286913', '/myapp/admin/classification/list', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (1183, '127.0.0.1', '2024-06-23 20:18:36.209259', '/myapp/admin/ad/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1184, '127.0.0.1', '2024-06-23 20:18:36.220259', '/myapp/admin/ad/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1185, '127.0.0.1', '2024-06-23 20:18:36.238148', '/myapp/admin/ad/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1186, '127.0.0.1', '2024-06-23 20:18:36.258997', '/myapp/admin/ad/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (1187, '127.0.0.1', '2024-06-23 20:18:36.265012', '/myapp/admin/ad/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (1188, '127.0.0.1', '2024-06-23 20:18:36.268002', '/myapp/admin/ad/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (1189, '127.0.0.1', '2024-06-23 20:18:36.303550', '/upload/ad/1719144680563.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1190, '127.0.0.1', '2024-06-23 20:18:36.303550', '/upload/ad/1719144680563.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1191, '127.0.0.1', '2024-06-23 20:18:36.304551', '/upload/cover/1719142558006.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1192, '127.0.0.1', '2024-06-23 20:18:41.574140', '/myapp/index/comment/create', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (1193, '127.0.0.1', '2024-06-23 20:18:41.631936', '/myapp/index/comment/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1194, '127.0.0.1', '2024-06-23 20:18:44.812988', '/myapp/index/comment/create', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (1195, '127.0.0.1', '2024-06-23 20:18:44.864048', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1196, '127.0.0.1', '2024-06-23 20:18:46.265665', '/myapp/index/comment/like', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (1197, '127.0.0.1', '2024-06-23 20:18:46.323417', '/myapp/index/comment/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1198, '127.0.0.1', '2024-06-23 20:18:47.146171', '/myapp/index/comment/like', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (1199, '127.0.0.1', '2024-06-23 20:18:47.208696', '/myapp/index/comment/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (1200, '127.0.0.1', '2024-06-23 20:18:48.238425', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1201, '127.0.0.1', '2024-06-23 20:18:50.510950', '/myapp/admin/user/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1202, '127.0.0.1', '2024-06-23 20:18:51.177183', '/myapp/admin/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1203, '127.0.0.1', '2024-06-23 20:18:52.507825', '/myapp/admin/order/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1204, '127.0.0.1', '2024-06-23 20:18:54.935710', '/myapp/admin/ad/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1205, '127.0.0.1', '2024-06-23 20:18:57.942212', '/myapp/admin/feedback/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1206, '127.0.0.1', '2024-06-23 20:19:03.599766', '/myapp/index/doctor/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1207, '127.0.0.1', '2024-06-23 20:19:03.602741', '/myapp/index/doctor/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1208, '127.0.0.1', '2024-06-23 20:19:03.606189', '/myapp/index/doctor/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1209, '127.0.0.1', '2024-06-23 20:19:03.631444', '/upload/cover/1719137557222.png', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1210, '127.0.0.1', '2024-06-23 20:19:03.631444', '/upload/cover/1719137557222.png', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1211, '127.0.0.1', '2024-06-23 20:19:03.630422', '/upload/cover/1719137557222.png', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1212, '127.0.0.1', '2024-06-23 20:19:03.645931', '/upload/cover/1719137557222.png', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1213, '127.0.0.1', '2024-06-23 20:19:07.263753', '/myapp/index/thing/getWishThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1214, '127.0.0.1', '2024-06-23 20:19:07.268398', '/myapp/index/thing/getWishThingList', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1215, '127.0.0.1', '2024-06-23 20:19:07.324573', '/myapp/index/user/info', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1216, '127.0.0.1', '2024-06-23 20:19:07.328585', '/myapp/index/user/info', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (1217, '127.0.0.1', '2024-06-23 20:19:07.348116', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1218, '127.0.0.1', '2024-06-23 20:19:07.357115', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1219, '127.0.0.1', '2024-06-23 20:19:15.738780', '/myapp/index/user/update', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (1220, '127.0.0.1', '2024-06-23 20:19:16.660296', '/myapp/index/thing/getWishThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1221, '127.0.0.1', '2024-06-23 20:19:16.673530', '/myapp/index/thing/getWishThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1222, '127.0.0.1', '2024-06-23 20:19:16.754226', '/upload/avatar/1719145151134.jpeg', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (1223, '127.0.0.1', '2024-06-23 20:19:16.760641', '/upload/avatar/1719145151134.jpeg', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (1224, '127.0.0.1', '2024-06-23 20:19:16.764292', '/upload/avatar/1719145151134.jpeg', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (1225, '127.0.0.1', '2024-06-23 20:19:16.774655', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1226, '127.0.0.1', '2024-06-23 20:19:16.778658', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1227, '127.0.0.1', '2024-06-23 20:19:17.758467', '/myapp/index/order/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1228, '127.0.0.1', '2024-06-23 20:19:17.828356', '/upload/cover/1719142563778.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1229, '127.0.0.1', '2024-06-23 20:19:22.664864', '/myapp/index/comment/listMyComments', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1230, '127.0.0.1', '2024-06-23 20:19:24.116949', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1231, '127.0.0.1', '2024-06-23 20:19:26.663575', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1232, '127.0.0.1', '2024-06-23 20:19:33.681356', '/myapp/index/order/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1233, '127.0.0.1', '2024-06-23 20:19:36.763086', '/myapp/admin/ad/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1234, '127.0.0.1', '2024-06-23 20:19:36.767596', '/myapp/admin/ad/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1235, '127.0.0.1', '2024-06-23 20:19:36.775475', '/myapp/admin/ad/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1236, '127.0.0.1', '2024-06-23 20:19:36.795812', '/upload/ad/1719144680563.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1237, '127.0.0.1', '2024-06-23 20:19:36.810510', '/upload/ad/1719144680563.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1238, '127.0.0.1', '2024-06-23 20:19:36.820734', '/upload/avatar/1719145151134.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1239, '127.0.0.1', '2024-06-23 20:19:36.826731', '/upload/ad/1719144680563.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1240, '127.0.0.1', '2024-06-23 20:19:36.845138', '/upload/avatar/1719145151134.jpeg', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1241, '127.0.0.1', '2024-06-23 20:19:36.851337', '/upload/avatar/1719145151134.jpeg', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1242, '127.0.0.1', '2024-06-23 20:19:40.585355', '/myapp/index/notice/list_api', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1243, '127.0.0.1', '2024-06-23 20:19:41.659468', '/myapp/index/order/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1244, '127.0.0.1', '2024-06-23 20:19:44.693067', '/myapp/index/user/info', 'GET', NULL, '8');

-- ----------------------------
-- Table structure for b_order
-- ----------------------------
DROP TABLE IF EXISTS `b_order`;
CREATE TABLE `b_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NOT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_time` datetime(6) NULL DEFAULT NULL,
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_thing_id_4e345e2c_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_user_id_64854046_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_thing_id_4e345e2c_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_user_id_64854046_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order
-- ----------------------------
INSERT INTO `b_order` VALUES (1, '1719143153028', 1, '2', '2024-06-23 19:45:53.039329', '刘德华', '', '13211111111', '', 7, 11);
INSERT INTO `b_order` VALUES (2, '1719144595380', 1, '1', '2024-06-23 20:09:55.390415', '王宝强', '', '12311112222', '', 8, 11);

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `score` int(11) NOT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------
INSERT INTO `b_record` VALUES (1, 1, 4, '127.0.0.1');
INSERT INTO `b_record` VALUES (2, 3, 5, '127.0.0.1');
INSERT INTO `b_record` VALUES (3, 2, 5, '127.0.0.1');
INSERT INTO `b_record` VALUES (4, 5, 2, '127.0.0.1');
INSERT INTO `b_record` VALUES (5, 6, 2, '127.0.0.1');
INSERT INTO `b_record` VALUES (6, 7, 9, '127.0.0.2');
INSERT INTO `b_record` VALUES (7, 8, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (8, 4, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (9, 9, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (10, 10, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (11, 11, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (12, 12, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (13, 8, 6, '127.0.0.1');
INSERT INTO `b_record` VALUES (14, 9, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (15, 10, 1, '127.0.0.1');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `youxiaoqi` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `shiyong` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tishi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `doctor_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_thing_user_id_9918a633_fk_b_user_id`(`user_id`) USING BTREE,
  INDEX `b_thing_doctor_id_2a5153a4_fk_b_doctor_id`(`doctor_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_doctor_id_2a5153a4_fk_b_doctor_id` FOREIGN KEY (`doctor_id`) REFERENCES `b_doctor` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_user_id_9918a633_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (1, '测试服务11', 'cover/1719137171247.jpeg', '口腔检查是一种常见的医疗检查，用于评估口腔健康和诊断口腔疾病。口腔检查通常由口腔医生、牙医或口腔卫生师进行。以下是口腔检查的一般步骤和内容：\r\n\r\n1. 病史询问：医务人员会询问您有关口腔健康、症状、疾病史和用药史等方面的信息，这有助于医生做出更准确的诊断。\r\n\r\n2. 外部检查：医生会检查您口腔外部的皮肤、唇、颈部和颌部等区域，观察是否有异常情况，如溃疡、肿块或炎症等。\r\n\r\n3. 内部检查：医生会使用口腔检查器具（口镜、探针等）仔细检查口腔内部的每个部位，包括牙齿、牙龈、舌头、颊部等，检查是否有龋齿、牙龈疾病、口腔溃疡、牙周炎等问题。\r\n\r\n4. X光检查：在需要进一步观察牙齿和口腔结构的情况下，医生可能会建议进行X光检查，以帮助诊断隐匿的问题。\r\n\r\n5. 诊断和治疗建议：根据口腔检查的结果，医生会给出诊断并制定相应的治疗方案。治疗可能包括口腔卫生教育、洁牙、补牙、拔牙、植牙等。\r\n\r\n口腔检查是预防口腔疾病和保持口腔健康的重要手段。定期进行口腔检查可以帮助早期发现并及时治疗口腔健康问题，维护口腔健康和整体健康。如果您有口腔不适或疑似口腔问题，建议及时到口腔医生进行检查。', '99', '三个月', '0', '2024-06-23 17:56:36.182904', 4, 0, 0, 0, 5, NULL, 3, '老年人', '提前刷牙，保持清洁', 4);
INSERT INTO `b_thing` VALUES (2, '精致烤瓷服务11', 'cover/1719142528460.jpeg', '口腔检查是一种常见的医疗检查，用于评估口腔健康和诊断口腔疾病。口腔检查通常由口腔医生、牙医或口腔卫生师进行。以下是口腔检查的一般步骤和内容：\r\n\r\n1. 病史询问：医务人员会询问您有关口腔健康、症状、疾病史和用药史等方面的信息，这有助于医生做出更准确的诊断。\r\n\r\n2. 外部检查：医生会检查您口腔外部的皮肤、唇、颈部和颌部等区域，观察是否有异常情况，如溃疡、肿块或炎症等。\r\n\r\n3. 内部检查：医生会使用口腔检查器具（口镜、探针等）仔细检查口腔内部的每个部位，包括牙齿、牙龈、舌头、颊部等，检查是否有龋齿、牙龈疾病、口腔溃疡、牙周炎等问题。\r\n\r\n4. X光检查：在需要进一步观察牙齿和口腔结构的情况下，医生可能会建议进行X光检查，以帮助诊断隐匿的问题。\r\n\r\n5. 诊断和治疗建议：根据口腔检查的结果，医生会给出诊断并制定相应的治疗方案。治疗可能包括口腔卫生教育、洁牙、补牙、拔牙、植牙等。\r\n\r\n口腔检查是预防口腔疾病和保持口腔健康的重要手段。定期进行口腔检查可以帮助早期发现并及时治疗口腔健康问题，维护口腔健康和整体健康。如果您有口腔不适或疑似口腔问题，建议及时到口腔医生进行检查。', '222', '两周', '0', '2024-06-23 17:56:36.182904', 5, 0, 0, 1, 4, NULL, 3, '中年人', '提前刷牙，保持清洁', 5);
INSERT INTO `b_thing` VALUES (3, '精致洗牙服务', 'cover/1719142534210.jpeg', '口腔检查是一种常见的医疗检查，用于评估口腔健康和诊断口腔疾病。口腔检查通常由口腔医生、牙医或口腔卫生师进行。以下是口腔检查的一般步骤和内容：\r\n\r\n1. 病史询问：医务人员会询问您有关口腔健康、症状、疾病史和用药史等方面的信息，这有助于医生做出更准确的诊断。\r\n\r\n2. 外部检查：医生会检查您口腔外部的皮肤、唇、颈部和颌部等区域，观察是否有异常情况，如溃疡、肿块或炎症等。\r\n\r\n3. 内部检查：医生会使用口腔检查器具（口镜、探针等）仔细检查口腔内部的每个部位，包括牙齿、牙龈、舌头、颊部等，检查是否有龋齿、牙龈疾病、口腔溃疡、牙周炎等问题。\r\n\r\n4. X光检查：在需要进一步观察牙齿和口腔结构的情况下，医生可能会建议进行X光检查，以帮助诊断隐匿的问题。\r\n\r\n5. 诊断和治疗建议：根据口腔检查的结果，医生会给出诊断并制定相应的治疗方案。治疗可能包括口腔卫生教育、洁牙、补牙、拔牙、植牙等。\r\n\r\n口腔检查是预防口腔疾病和保持口腔健康的重要手段。定期进行口腔检查可以帮助早期发现并及时治疗口腔健康问题，维护口腔健康和整体健康。如果您有口腔不适或疑似口腔问题，建议及时到口腔医生进行检查。', '99', '三个月', '0', '2024-06-23 17:56:36.182904', 5, 0, 1, 1, 3, NULL, 4, '老年人', '提前刷牙，保持清洁', 4);
INSERT INTO `b_thing` VALUES (4, '牙齿矫正服务', 'cover/1719142539630.jpeg', '口腔检查是一种常见的医疗检查，用于评估口腔健康和诊断口腔疾病。口腔检查通常由口腔医生、牙医或口腔卫生师进行。以下是口腔检查的一般步骤和内容：\r\n\r\n1. 病史询问：医务人员会询问您有关口腔健康、症状、疾病史和用药史等方面的信息，这有助于医生做出更准确的诊断。\r\n\r\n2. 外部检查：医生会检查您口腔外部的皮肤、唇、颈部和颌部等区域，观察是否有异常情况，如溃疡、肿块或炎症等。\r\n\r\n3. 内部检查：医生会使用口腔检查器具（口镜、探针等）仔细检查口腔内部的每个部位，包括牙齿、牙龈、舌头、颊部等，检查是否有龋齿、牙龈疾病、口腔溃疡、牙周炎等问题。\r\n\r\n4. X光检查：在需要进一步观察牙齿和口腔结构的情况下，医生可能会建议进行X光检查，以帮助诊断隐匿的问题。\r\n\r\n5. 诊断和治疗建议：根据口腔检查的结果，医生会给出诊断并制定相应的治疗方案。治疗可能包括口腔卫生教育、洁牙、补牙、拔牙、植牙等。\r\n\r\n口腔检查是预防口腔疾病和保持口腔健康的重要手段。定期进行口腔检查可以帮助早期发现并及时治疗口腔健康问题，维护口腔健康和整体健康。如果您有口腔不适或疑似口腔问题，建议及时到口腔医生进行检查。', '123', '三个月', '0', '2024-06-23 17:56:36.182904', 1, 0, 0, 0, 2, NULL, 3, '老年人', '提前刷牙，保持清洁', 4);
INSERT INTO `b_thing` VALUES (5, '牙齿复位服务', 'cover/1719142545741.jpeg', '口腔检查是一种常见的医疗检查，用于评估口腔健康和诊断口腔疾病。口腔检查通常由口腔医生、牙医或口腔卫生师进行。以下是口腔检查的一般步骤和内容：\r\n\r\n1. 病史询问：医务人员会询问您有关口腔健康、症状、疾病史和用药史等方面的信息，这有助于医生做出更准确的诊断。\r\n\r\n2. 外部检查：医生会检查您口腔外部的皮肤、唇、颈部和颌部等区域，观察是否有异常情况，如溃疡、肿块或炎症等。\r\n\r\n3. 内部检查：医生会使用口腔检查器具（口镜、探针等）仔细检查口腔内部的每个部位，包括牙齿、牙龈、舌头、颊部等，检查是否有龋齿、牙龈疾病、口腔溃疡、牙周炎等问题。\r\n\r\n4. X光检查：在需要进一步观察牙齿和口腔结构的情况下，医生可能会建议进行X光检查，以帮助诊断隐匿的问题。\r\n\r\n5. 诊断和治疗建议：根据口腔检查的结果，医生会给出诊断并制定相应的治疗方案。治疗可能包括口腔卫生教育、洁牙、补牙、拔牙、植牙等。\r\n\r\n口腔检查是预防口腔疾病和保持口腔健康的重要手段。定期进行口腔检查可以帮助早期发现并及时治疗口腔健康问题，维护口腔健康和整体健康。如果您有口腔不适或疑似口腔问题，建议及时到口腔医生进行检查。', '99', '两周', '0', '2024-06-23 17:56:36.182904', 2, 0, 0, 0, 2, NULL, 3, '老年人', '提前刷牙，保持清洁', 6);
INSERT INTO `b_thing` VALUES (6, '全面口腔检查服务', 'cover/1719142552524.jpeg', '口腔检查是一种常见的医疗检查，用于评估口腔健康和诊断口腔疾病。口腔检查通常由口腔医生、牙医或口腔卫生师进行。以下是口腔检查的一般步骤和内容：\r\n\r\n1. 病史询问：医务人员会询问您有关口腔健康、症状、疾病史和用药史等方面的信息，这有助于医生做出更准确的诊断。\r\n\r\n2. 外部检查：医生会检查您口腔外部的皮肤、唇、颈部和颌部等区域，观察是否有异常情况，如溃疡、肿块或炎症等。\r\n\r\n3. 内部检查：医生会使用口腔检查器具（口镜、探针等）仔细检查口腔内部的每个部位，包括牙齿、牙龈、舌头、颊部等，检查是否有龋齿、牙龈疾病、口腔溃疡、牙周炎等问题。\r\n\r\n4. X光检查：在需要进一步观察牙齿和口腔结构的情况下，医生可能会建议进行X光检查，以帮助诊断隐匿的问题。\r\n\r\n5. 诊断和治疗建议：根据口腔检查的结果，医生会给出诊断并制定相应的治疗方案。治疗可能包括口腔卫生教育、洁牙、补牙、拔牙、植牙等。\r\n\r\n口腔检查是预防口腔疾病和保持口腔健康的重要手段。定期进行口腔检查可以帮助早期发现并及时治疗口腔健康问题，维护口腔健康和整体健康。如果您有口腔不适或疑似口腔问题，建议及时到口腔医生进行检查。', '99', '两周', '0', '2024-06-23 17:56:36.182904', 2, 0, 0, 0, 1, NULL, 3, '老年人', '提前刷牙，保持清洁', 4);
INSERT INTO `b_thing` VALUES (7, '精致补牙22', 'cover/1719142558006.jpeg', '口腔检查是一种常见的医疗检查，用于评估口腔健康和诊断口腔疾病。口腔检查通常由口腔医生、牙医或口腔卫生师进行。以下是口腔检查的一般步骤和内容：\r\n\r\n1. 病史询问：医务人员会询问您有关口腔健康、症状、疾病史和用药史等方面的信息，这有助于医生做出更准确的诊断。\r\n\r\n2. 外部检查：医生会检查您口腔外部的皮肤、唇、颈部和颌部等区域，观察是否有异常情况，如溃疡、肿块或炎症等。\r\n\r\n3. 内部检查：医生会使用口腔检查器具（口镜、探针等）仔细检查口腔内部的每个部位，包括牙齿、牙龈、舌头、颊部等，检查是否有龋齿、牙龈疾病、口腔溃疡、牙周炎等问题。\r\n\r\n4. X光检查：在需要进一步观察牙齿和口腔结构的情况下，医生可能会建议进行X光检查，以帮助诊断隐匿的问题。\r\n\r\n5. 诊断和治疗建议：根据口腔检查的结果，医生会给出诊断并制定相应的治疗方案。治疗可能包括口腔卫生教育、洁牙、补牙、拔牙、植牙等。\r\n\r\n口腔检查是预防口腔疾病和保持口腔健康的重要手段。定期进行口腔检查可以帮助早期发现并及时治疗口腔健康问题，维护口腔健康和整体健康。如果您有口腔不适或疑似口腔问题，建议及时到口腔医生进行检查。', '55', '三个月', '0', '2024-06-23 17:56:36.182904', 9, 0, 1, 1, 3, NULL, 3, '老年人', '提前刷牙，保持清洁', 4);
INSERT INTO `b_thing` VALUES (8, '全面测试口腔服务', 'cover/1719142563778.jpeg', '口腔检查是一种常见的医疗检查，用于评估口腔健康和诊断口腔疾病。口腔检查通常由口腔医生、牙医或口腔卫生师进行。以下是口腔检查的一般步骤和内容：\r\n\r\n1. 病史询问：医务人员会询问您有关口腔健康、症状、疾病史和用药史等方面的信息，这有助于医生做出更准确的诊断。\r\n\r\n2. 外部检查：医生会检查您口腔外部的皮肤、唇、颈部和颌部等区域，观察是否有异常情况，如溃疡、肿块或炎症等。\r\n\r\n3. 内部检查：医生会使用口腔检查器具（口镜、探针等）仔细检查口腔内部的每个部位，包括牙齿、牙龈、舌头、颊部等，检查是否有龋齿、牙龈疾病、口腔溃疡、牙周炎等问题。\r\n\r\n4. X光检查：在需要进一步观察牙齿和口腔结构的情况下，医生可能会建议进行X光检查，以帮助诊断隐匿的问题。\r\n\r\n5. 诊断和治疗建议：根据口腔检查的结果，医生会给出诊断并制定相应的治疗方案。治疗可能包括口腔卫生教育、洁牙、补牙、拔牙、植牙等。\r\n\r\n口腔检查是预防口腔疾病和保持口腔健康的重要手段。定期进行口腔检查可以帮助早期发现并及时治疗口腔健康问题，维护口腔健康和整体健康。如果您有口腔不适或疑似口腔问题，建议及时到口腔医生进行检查。', '99', '三个月', '0', '2024-06-23 17:56:36.182904', 7, 0, 1, 1, 2, NULL, 3, '老年人', '提前刷牙，保持清洁', 4);
INSERT INTO `b_thing` VALUES (9, '测试服务222', 'cover/1719142572395.jpeg', '口腔检查是一种常见的医疗检查，用于评估口腔健康和诊断口腔疾病。口腔检查通常由口腔医生、牙医或口腔卫生师进行。以下是口腔检查的一般步骤和内容：\r\n\r\n1. 病史询问：医务人员会询问您有关口腔健康、症状、疾病史和用药史等方面的信息，这有助于医生做出更准确的诊断。\r\n\r\n2. 外部检查：医生会检查您口腔外部的皮肤、唇、颈部和颌部等区域，观察是否有异常情况，如溃疡、肿块或炎症等。\r\n\r\n3. 内部检查：医生会使用口腔检查器具（口镜、探针等）仔细检查口腔内部的每个部位，包括牙齿、牙龈、舌头、颊部等，检查是否有龋齿、牙龈疾病、口腔溃疡、牙周炎等问题。\r\n\r\n4. X光检查：在需要进一步观察牙齿和口腔结构的情况下，医生可能会建议进行X光检查，以帮助诊断隐匿的问题。\r\n\r\n5. 诊断和治疗建议：根据口腔检查的结果，医生会给出诊断并制定相应的治疗方案。治疗可能包括口腔卫生教育、洁牙、补牙、拔牙、植牙等。\r\n\r\n口腔检查是预防口腔疾病和保持口腔健康的重要手段。定期进行口腔检查可以帮助早期发现并及时治疗口腔健康问题，维护口腔健康和整体健康。如果您有口腔不适或疑似口腔问题，建议及时到口腔医生进行检查。', '256', '两周', '0', '2024-06-23 17:56:36.182904', 2, 0, 0, 0, 1, NULL, 3, '老年人', '提前刷牙，保持清洁', 6);
INSERT INTO `b_thing` VALUES (10, '测试服务333', 'cover/1719142581316.jpeg', '口腔检查是一种常见的医疗检查，用于评估口腔健康和诊断口腔疾病。口腔检查通常由口腔医生、牙医或口腔卫生师进行。以下是口腔检查的一般步骤和内容：\r\n\r\n1. 病史询问：医务人员会询问您有关口腔健康、症状、疾病史和用药史等方面的信息，这有助于医生做出更准确的诊断。\r\n\r\n2. 外部检查：医生会检查您口腔外部的皮肤、唇、颈部和颌部等区域，观察是否有异常情况，如溃疡、肿块或炎症等。\r\n\r\n3. 内部检查：医生会使用口腔检查器具（口镜、探针等）仔细检查口腔内部的每个部位，包括牙齿、牙龈、舌头、颊部等，检查是否有龋齿、牙龈疾病、口腔溃疡、牙周炎等问题。\r\n\r\n4. X光检查：在需要进一步观察牙齿和口腔结构的情况下，医生可能会建议进行X光检查，以帮助诊断隐匿的问题。\r\n\r\n5. 诊断和治疗建议：根据口腔检查的结果，医生会给出诊断并制定相应的治疗方案。治疗可能包括口腔卫生教育、洁牙、补牙、拔牙、植牙等。\r\n\r\n口腔检查是预防口腔疾病和保持口腔健康的重要手段。定期进行口腔检查可以帮助早期发现并及时治疗口腔健康问题，维护口腔健康和整体健康。如果您有口腔不适或疑似口腔问题，建议及时到口腔医生进行检查。', '99', '三个月', '0', '2024-06-23 17:56:36.182904', 2, 0, 0, 0, 5, NULL, 3, '老年人', '提前刷牙，保持清洁', 6);
INSERT INTO `b_thing` VALUES (11, '种牙服务', 'cover/1719142593223.jpeg', '口腔检查是一种常见的医疗检查，用于评估口腔健康和诊断口腔疾病。口腔检查通常由口腔医生、牙医或口腔卫生师进行。以下是口腔检查的一般步骤和内容：\r\n\r\n1. 病史询问：医务人员会询问您有关口腔健康、症状、疾病史和用药史等方面的信息，这有助于医生做出更准确的诊断。\r\n\r\n2. 外部检查：医生会检查您口腔外部的皮肤、唇、颈部和颌部等区域，观察是否有异常情况，如溃疡、肿块或炎症等。\r\n\r\n3. 内部检查：医生会使用口腔检查器具（口镜、探针等）仔细检查口腔内部的每个部位，包括牙齿、牙龈、舌头、颊部等，检查是否有龋齿、牙龈疾病、口腔溃疡、牙周炎等问题。\r\n\r\n4. X光检查：在需要进一步观察牙齿和口腔结构的情况下，医生可能会建议进行X光检查，以帮助诊断隐匿的问题。\r\n\r\n5. 诊断和治疗建议：根据口腔检查的结果，医生会给出诊断并制定相应的治疗方案。治疗可能包括口腔卫生教育、洁牙、补牙、拔牙、植牙等。\r\n\r\n口腔检查是预防口腔疾病和保持口腔健康的重要手段。定期进行口腔检查可以帮助早期发现并及时治疗口腔健康问题，维护口腔健康和整体健康。如果您有口腔不适或疑似口腔问题，建议及时到口腔医生进行检查。', '99', '三个月', '0', '2024-06-23 17:56:36.182904', 1, 0, 0, 0, 4, NULL, 3, '老年人', '提前刷牙，保持清洁', 1);
INSERT INTO `b_thing` VALUES (12, '牙齿保洁', 'cover/1719142599114.jpeg', '口腔检查是一种常见的医疗检查，用于评估口腔健康和诊断口腔疾病。口腔检查通常由口腔医生、牙医或口腔卫生师进行。以下是口腔检查的一般步骤和内容：\r\n\r\n1. 病史询问：医务人员会询问您有关口腔健康、症状、疾病史和用药史等方面的信息，这有助于医生做出更准确的诊断。\r\n\r\n2. 外部检查：医生会检查您口腔外部的皮肤、唇、颈部和颌部等区域，观察是否有异常情况，如溃疡、肿块或炎症等。\r\n\r\n3. 内部检查：医生会使用口腔检查器具（口镜、探针等）仔细检查口腔内部的每个部位，包括牙齿、牙龈、舌头、颊部等，检查是否有龋齿、牙龈疾病、口腔溃疡、牙周炎等问题。\r\n\r\n4. X光检查：在需要进一步观察牙齿和口腔结构的情况下，医生可能会建议进行X光检查，以帮助诊断隐匿的问题。\r\n\r\n5. 诊断和治疗建议：根据口腔检查的结果，医生会给出诊断并制定相应的治疗方案。治疗可能包括口腔卫生教育、洁牙、补牙、拔牙、植牙等。\r\n\r\n口腔检查是预防口腔疾病和保持口腔健康的重要手段。定期进行口腔检查可以帮助早期发现并及时治疗口腔健康问题，维护口腔健康和整体健康。如果您有口腔不适或疑似口腔问题，建议及时到口腔医生进行检查。', '89', '三个月', '0', '2024-06-23 17:56:36.182904', 1, 0, 0, 0, 5, NULL, 3, '老年人', '提前刷牙，保持清洁', 6);

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_collect_user_id_e5d69968_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (2, 2, 11);
INSERT INTO `b_thing_collect` VALUES (1, 3, 11);
INSERT INTO `b_thing_collect` VALUES (3, 7, 11);
INSERT INTO `b_thing_collect` VALUES (4, 8, 11);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (1, 3, 11);
INSERT INTO `b_thing_wish` VALUES (3, 7, 11);
INSERT INTO `b_thing_wish` VALUES (4, 8, 11);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-05-04 16:37:10.143202', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (11, 'ddd', '77963b7a931377ad4ab5ad6a9cd718aa', '2', '0', '哈哈哈9999', 'avatar/1719145151134.jpeg', NULL, NULL, NULL, NULL, '2024-06-23 19:40:26.704953', 0, NULL, 0, NULL, '77963b7a931377ad4ab5ad6a9cd718aa');
INSERT INTO `b_user` VALUES (12, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-06-23 20:10:51.940975', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (13, 'test003', 'db270e0074bad27c1177f31627818618', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-06-23 20:10:59.245529', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (14, 'test004', 'b990a1577e88882a43f26b232d85632b', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-06-23 20:11:09.403469', 0, NULL, 0, NULL, NULL);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'doctor');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (19, 'myapp', 'feedback');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'order');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-06-23 17:22:23.657659');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2024-06-23 17:22:23.982785');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2024-06-23 17:22:24.047739');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-06-23 17:22:24.055758');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-23 17:22:24.063280');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2024-06-23 17:22:24.166612');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2024-06-23 17:22:24.238281');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2024-06-23 17:22:24.325241');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2024-06-23 17:22:24.336240');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2024-06-23 17:22:24.396740');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2024-06-23 17:22:24.400762');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2024-06-23 17:22:24.411765');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2024-06-23 17:22:24.463873');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2024-06-23 17:22:24.512309');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2024-06-23 17:22:24.568358');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2024-06-23 17:22:24.580912');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2024-06-23 17:22:24.629152');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2024-06-23 17:22:25.699005');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_thing_user', '2024-06-23 17:22:25.751276');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_auto_20240504_1643', '2024-06-23 17:22:26.005808');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_auto_20240504_1700', '2024-06-23 17:22:26.147840');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0005_auto_20240623_1722', '2024-06-23 17:22:26.893233');
INSERT INTO `django_migrations` VALUES (23, 'sessions', '0001_initial', '2024-06-23 17:22:26.939857');
INSERT INTO `django_migrations` VALUES (24, 'myapp', '0006_thing_doctor', '2024-06-23 17:57:44.403935');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
