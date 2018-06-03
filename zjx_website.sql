/*
 Navicat MySQL Data Transfer

 Source Server         : VPS - Web Server
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : 54.36.152.180:3306
 Source Schema         : zjx_website

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 28/05/2018 22:42:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity_log
-- ----------------------------
DROP TABLE IF EXISTS `activity_log`;
CREATE TABLE `activity_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `note` text COLLATE utf8_unicode_ci,
  `user_id` int(11) NOT NULL,
  `log_state` int(11) NOT NULL,
  `log_type` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id_to_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3215 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for comms_atis
-- ----------------------------
DROP TABLE IF EXISTS `comms_atis`;
CREATE TABLE `comms_atis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facility` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `frequency` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for controller_log
-- ----------------------------
DROP TABLE IF EXISTS `controller_log`;
CREATE TABLE `controller_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `streamupdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3417 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- ----------------------------
-- Table structure for document
-- ----------------------------
DROP TABLE IF EXISTS `document`;
CREATE TABLE `document` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for event
-- ----------------------------
DROP TABLE IF EXISTS `event`;
CREATE TABLE `event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `event_start` datetime NOT NULL,
  `event_end` datetime NOT NULL,
  `banner_link` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for event_position_requests
-- ----------------------------
DROP TABLE IF EXISTS `event_position_requests`;
CREATE TABLE `event_position_requests` (
  `eventid` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `controller_id` int(11) NOT NULL,
  `done` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=265 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for event_positions
-- ----------------------------
DROP TABLE IF EXISTS `event_positions`;
CREATE TABLE `event_positions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_start` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `controller_id` int(11) DEFAULT NULL,
  `order_index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=357 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `controller_id` int(11) NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `staff_comments` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `pilot_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pilot_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pilot_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `flight_callsign` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24419 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES ('2016_04_17_225638_Roster', 1);
INSERT INTO `migrations` VALUES ('2016_04_17_225645_Feedback', 1);
INSERT INTO `migrations` VALUES ('2016_04_17_225654_Logs', 1);
INSERT INTO `migrations` VALUES ('2016_04_17_225700_Events', 1);
INSERT INTO `migrations` VALUES ('2016_04_17_225708_Documents', 1);
INSERT INTO `migrations` VALUES ('2016_04_17_225839_Training', 1);
INSERT INTO `migrations` VALUES ('2016_04_17_225845_Airports', 1);
INSERT INTO `migrations` VALUES ('2016_04_18_184118_EntrustSetupTables', 1);
INSERT INTO `migrations` VALUES ('2016_05_12_211934_Broadcast', 1);
INSERT INTO `migrations` VALUES ('2016_05_14_140522_LogsTable', 2);
COMMIT;

-- ----------------------------
-- Table structure for pilots_online
-- ----------------------------
DROP TABLE IF EXISTS `pilots_online`;
CREATE TABLE `pilots_online` (
  `callsign` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `real_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `real_alt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ground_speed` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `aircraft_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `planned_cruise` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dep_apt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `arr_apt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for roster
-- ----------------------------
DROP TABLE IF EXISTS `roster`;
CREATE TABLE `roster` (
  `id` int(10) unsigned NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rating_id` int(11) NOT NULL,
  `canTrain` int(11) NOT NULL DEFAULT '1',
  `visitor` int(11) NOT NULL,
  `visitor_from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loa` int(11) NOT NULL,
  `del` int(11) NOT NULL,
  `gnd` int(11) NOT NULL,
  `twr` int(11) NOT NULL,
  `app` int(11) NOT NULL,
  `ctr` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for scenery
-- ----------------------------
DROP TABLE IF EXISTS `scenery`;
CREATE TABLE `scenery` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of settings
-- ----------------------------
BEGIN;
INSERT INTO `settings` VALUES ('ATCUPDATE', '21:40Z');
INSERT INTO `settings` VALUES ('WXUPDATE', '21:40Z');
COMMIT;

-- ----------------------------
-- Table structure for training_assigned_exams
-- ----------------------------
DROP TABLE IF EXISTS `training_assigned_exams`;
CREATE TABLE `training_assigned_exams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `controller_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `complete` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for training_controller_requests
-- ----------------------------
DROP TABLE IF EXISTS `training_controller_requests`;
CREATE TABLE `training_controller_requests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `controller_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `request_begin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `request_end` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `accepted` int(11) NOT NULL,
  `mentor` int(11) NOT NULL,
  `session_begin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `session_end` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `complete` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for training_files
-- ----------------------------
DROP TABLE IF EXISTS `training_files`;
CREATE TABLE `training_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for training_mentor_availability
-- ----------------------------
DROP TABLE IF EXISTS `training_mentor_availability`;
CREATE TABLE `training_mentor_availability` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mentor_id` int(11) NOT NULL,
  `slot` datetime NOT NULL,
  `trainee_id` int(11) DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  `trainee_comments` text COLLATE utf8_unicode_ci NOT NULL,
  `cancel_message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1483 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



-- ----------------------------
-- Table structure for training_notes
-- ----------------------------
DROP TABLE IF EXISTS `training_notes`;
CREATE TABLE `training_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `controller_id` int(11) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `session_begin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `duration` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=284 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- ----------------------------
-- Table structure for training_ots_request
-- ----------------------------
DROP TABLE IF EXISTS `training_ots_request`;
CREATE TABLE `training_ots_request` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `controller_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `complete` int(11) NOT NULL,
  `requested_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- ----------------------------
-- Table structure for visit_requests
-- ----------------------------
DROP TABLE IF EXISTS `visit_requests`;
CREATE TABLE `visit_requests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rating_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `home` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reason` text COLLATE utf8_unicode_ci NOT NULL,
  `accepted` int(11) NOT NULL,
  `updated` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for weather
-- ----------------------------
DROP TABLE IF EXISTS `weather`;
CREATE TABLE `weather` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `wind` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `baro` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metar` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for x_assigned_roles
-- ----------------------------
DROP TABLE IF EXISTS `x_assigned_roles`;
CREATE TABLE `x_assigned_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roleid_torole` (`role_id`),
  KEY `userid_touser` (`user_id`),
  CONSTRAINT `roleid_torole` FOREIGN KEY (`role_id`) REFERENCES `x_roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `userid_touser` FOREIGN KEY (`user_id`) REFERENCES `roster` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- ----------------------------
-- Table structure for x_permission_role
-- ----------------------------
DROP TABLE IF EXISTS `x_permission_role`;
CREATE TABLE `x_permission_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `permissionid_toperm` (`permission_id`),
  CONSTRAINT `permissionid_toperm` FOREIGN KEY (`permission_id`) REFERENCES `x_permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of x_permission_role
-- ----------------------------
BEGIN;
INSERT INTO `x_permission_role` VALUES (1, 1, 1);
INSERT INTO `x_permission_role` VALUES (2, 2, 1);
INSERT INTO `x_permission_role` VALUES (3, 3, 1);
INSERT INTO `x_permission_role` VALUES (4, 4, 1);
INSERT INTO `x_permission_role` VALUES (5, 5, 1);
INSERT INTO `x_permission_role` VALUES (6, 6, 1);
INSERT INTO `x_permission_role` VALUES (7, 7, 1);
INSERT INTO `x_permission_role` VALUES (8, 8, 1);
INSERT INTO `x_permission_role` VALUES (9, 9, 1);
INSERT INTO `x_permission_role` VALUES (10, 10, 1);
INSERT INTO `x_permission_role` VALUES (11, 11, 1);
INSERT INTO `x_permission_role` VALUES (12, 12, 1);
INSERT INTO `x_permission_role` VALUES (13, 13, 1);
INSERT INTO `x_permission_role` VALUES (14, 1, 2);
INSERT INTO `x_permission_role` VALUES (15, 2, 2);
INSERT INTO `x_permission_role` VALUES (16, 3, 2);
INSERT INTO `x_permission_role` VALUES (17, 4, 2);
INSERT INTO `x_permission_role` VALUES (18, 5, 2);
INSERT INTO `x_permission_role` VALUES (19, 6, 2);
INSERT INTO `x_permission_role` VALUES (20, 7, 2);
INSERT INTO `x_permission_role` VALUES (21, 8, 2);
INSERT INTO `x_permission_role` VALUES (22, 9, 2);
INSERT INTO `x_permission_role` VALUES (23, 10, 2);
INSERT INTO `x_permission_role` VALUES (24, 11, 2);
INSERT INTO `x_permission_role` VALUES (25, 12, 2);
INSERT INTO `x_permission_role` VALUES (26, 13, 2);
INSERT INTO `x_permission_role` VALUES (27, 1, 3);
INSERT INTO `x_permission_role` VALUES (28, 2, 3);
INSERT INTO `x_permission_role` VALUES (29, 3, 3);
INSERT INTO `x_permission_role` VALUES (30, 4, 3);
INSERT INTO `x_permission_role` VALUES (31, 5, 3);
INSERT INTO `x_permission_role` VALUES (32, 6, 3);
INSERT INTO `x_permission_role` VALUES (33, 7, 3);
INSERT INTO `x_permission_role` VALUES (34, 8, 3);
INSERT INTO `x_permission_role` VALUES (35, 9, 3);
INSERT INTO `x_permission_role` VALUES (36, 10, 3);
INSERT INTO `x_permission_role` VALUES (37, 11, 3);
INSERT INTO `x_permission_role` VALUES (38, 12, 3);
INSERT INTO `x_permission_role` VALUES (39, 13, 3);
INSERT INTO `x_permission_role` VALUES (40, 1, 4);
INSERT INTO `x_permission_role` VALUES (41, 2, 4);
INSERT INTO `x_permission_role` VALUES (42, 3, 4);
INSERT INTO `x_permission_role` VALUES (43, 4, 4);
INSERT INTO `x_permission_role` VALUES (44, 5, 4);
INSERT INTO `x_permission_role` VALUES (45, 6, 4);
INSERT INTO `x_permission_role` VALUES (46, 7, 4);
INSERT INTO `x_permission_role` VALUES (47, 8, 4);
INSERT INTO `x_permission_role` VALUES (48, 9, 4);
INSERT INTO `x_permission_role` VALUES (49, 10, 4);
INSERT INTO `x_permission_role` VALUES (50, 11, 4);
INSERT INTO `x_permission_role` VALUES (51, 12, 4);
INSERT INTO `x_permission_role` VALUES (52, 13, 4);
INSERT INTO `x_permission_role` VALUES (53, 2, 5);
INSERT INTO `x_permission_role` VALUES (54, 3, 5);
INSERT INTO `x_permission_role` VALUES (55, 4, 5);
INSERT INTO `x_permission_role` VALUES (56, 5, 5);
INSERT INTO `x_permission_role` VALUES (57, 7, 5);
INSERT INTO `x_permission_role` VALUES (58, 11, 5);
INSERT INTO `x_permission_role` VALUES (59, 12, 5);
INSERT INTO `x_permission_role` VALUES (60, 2, 6);
INSERT INTO `x_permission_role` VALUES (61, 3, 6);
INSERT INTO `x_permission_role` VALUES (62, 5, 6);
INSERT INTO `x_permission_role` VALUES (63, 9, 6);
INSERT INTO `x_permission_role` VALUES (64, 11, 6);
INSERT INTO `x_permission_role` VALUES (65, 12, 6);
INSERT INTO `x_permission_role` VALUES (66, 13, 6);
INSERT INTO `x_permission_role` VALUES (67, 6, 7);
INSERT INTO `x_permission_role` VALUES (68, 5, 8);
INSERT INTO `x_permission_role` VALUES (69, 7, 8);
INSERT INTO `x_permission_role` VALUES (70, 6, 9);
INSERT INTO `x_permission_role` VALUES (71, 2, 10);
INSERT INTO `x_permission_role` VALUES (72, 9, 10);
INSERT INTO `x_permission_role` VALUES (73, 11, 10);
INSERT INTO `x_permission_role` VALUES (74, 12, 10);
INSERT INTO `x_permission_role` VALUES (75, 13, 10);
INSERT INTO `x_permission_role` VALUES (76, 2, 11);
INSERT INTO `x_permission_role` VALUES (77, 12, 11);
INSERT INTO `x_permission_role` VALUES (78, 14, 1);
INSERT INTO `x_permission_role` VALUES (79, 14, 2);
INSERT INTO `x_permission_role` VALUES (80, 14, 3);
INSERT INTO `x_permission_role` VALUES (81, 14, 4);
INSERT INTO `x_permission_role` VALUES (82, 14, 5);
INSERT INTO `x_permission_role` VALUES (84, 14, 6);
INSERT INTO `x_permission_role` VALUES (85, 14, 7);
INSERT INTO `x_permission_role` VALUES (86, 14, 8);
INSERT INTO `x_permission_role` VALUES (87, 14, 9);
INSERT INTO `x_permission_role` VALUES (88, 1, 12);
INSERT INTO `x_permission_role` VALUES (89, 2, 12);
INSERT INTO `x_permission_role` VALUES (90, 3, 12);
INSERT INTO `x_permission_role` VALUES (91, 4, 12);
INSERT INTO `x_permission_role` VALUES (92, 5, 12);
INSERT INTO `x_permission_role` VALUES (93, 6, 12);
INSERT INTO `x_permission_role` VALUES (94, 7, 12);
INSERT INTO `x_permission_role` VALUES (95, 8, 12);
INSERT INTO `x_permission_role` VALUES (96, 9, 12);
INSERT INTO `x_permission_role` VALUES (97, 10, 12);
INSERT INTO `x_permission_role` VALUES (98, 11, 12);
INSERT INTO `x_permission_role` VALUES (99, 12, 12);
INSERT INTO `x_permission_role` VALUES (100, 13, 12);
INSERT INTO `x_permission_role` VALUES (101, 14, 12);
COMMIT;

-- ----------------------------
-- Table structure for x_permissions
-- ----------------------------
DROP TABLE IF EXISTS `x_permissions`;
CREATE TABLE `x_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of x_permissions
-- ----------------------------
BEGIN;
INSERT INTO `x_permissions` VALUES (1, 'snrstaff', 'snrstaff', '1999-12-31 23:00:00', '1999-12-31 23:00:00');
INSERT INTO `x_permissions` VALUES (2, 'roster_edit', 'roster_edit', '1999-12-31 23:00:00', '1999-12-31 23:00:00');
INSERT INTO `x_permissions` VALUES (3, 'roster_add', 'roster_add', '1999-12-31 23:00:00', '1999-12-31 23:00:00');
INSERT INTO `x_permissions` VALUES (4, 'roster_del', 'roster_del', '1999-12-31 23:00:00', '1999-12-31 23:00:00');
INSERT INTO `x_permissions` VALUES (5, 'docs', 'docs', '1999-12-31 23:00:00', '1999-12-31 23:00:00');
INSERT INTO `x_permissions` VALUES (6, 'events', 'events', '1999-12-31 23:00:00', '1999-12-31 23:00:00');
INSERT INTO `x_permissions` VALUES (7, 'scenery', 'scenery', '1999-12-31 23:00:00', '1999-12-31 23:00:00');
INSERT INTO `x_permissions` VALUES (8, 'visit', 'visit', '1999-12-31 23:00:00', '1999-12-31 23:00:00');
INSERT INTO `x_permissions` VALUES (9, 'feedback', 'feedback', '1999-12-31 23:00:00', '1999-12-31 23:00:00');
INSERT INTO `x_permissions` VALUES (10, 'loa', 'loa', '1999-12-31 23:00:00', '1999-12-31 23:00:00');
INSERT INTO `x_permissions` VALUES (11, 'instruct', 'instruct', '1999-12-31 23:00:00', '1999-12-31 23:00:00');
INSERT INTO `x_permissions` VALUES (12, 'mentor', 'mentor', '1999-12-31 23:00:00', '1999-12-31 23:00:00');
INSERT INTO `x_permissions` VALUES (13, 'profile', 'profile', '1999-12-31 23:00:00', '1999-12-31 23:00:00');
INSERT INTO `x_permissions` VALUES (14, 'staff', 'staff', '1999-12-31 23:00:00', '1999-12-31 23:00:00');
COMMIT;

-- ----------------------------
-- Table structure for x_roles
-- ----------------------------
DROP TABLE IF EXISTS `x_roles`;
CREATE TABLE `x_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of x_roles
-- ----------------------------
BEGIN;
INSERT INTO `x_roles` VALUES (1, 'ATM', 1, '1999-12-31 23:00:00', '1999-12-31 23:00:00');
INSERT INTO `x_roles` VALUES (2, 'DATM', 1, '1999-12-31 23:00:00', '1999-12-31 23:00:00');
INSERT INTO `x_roles` VALUES (3, 'TA', 1, '1999-12-31 23:00:00', '1999-12-31 23:00:00');
INSERT INTO `x_roles` VALUES (4, 'WM', 1, '1999-12-31 23:00:00', '1999-12-31 23:00:00');
INSERT INTO `x_roles` VALUES (5, 'AWM', 1, '1999-12-31 23:00:00', '1999-12-31 23:00:00');
INSERT INTO `x_roles` VALUES (6, 'ATA', 1, '1999-12-31 23:00:00', '1999-12-31 23:00:00');
INSERT INTO `x_roles` VALUES (7, 'EC', 1, '1999-12-31 23:00:00', '1999-12-31 23:00:00');
INSERT INTO `x_roles` VALUES (8, 'FE', 1, '1999-12-31 23:00:00', '1999-12-31 23:00:00');
INSERT INTO `x_roles` VALUES (9, 'AEC', 1, '1999-12-31 23:00:00', '1999-12-31 23:00:00');
INSERT INTO `x_roles` VALUES (10, 'INS', 0, '1999-12-31 23:00:00', '1999-12-31 23:00:00');
INSERT INTO `x_roles` VALUES (11, 'MTR', 0, '1999-12-31 23:00:00', '1999-12-31 23:00:00');
INSERT INTO `x_roles` VALUES (12, 'US8', 1, '2018-03-19 23:34:47', '2018-03-19 23:34:47');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
