/*
 Navicat Premium Data Transfer

 Source Server         : newSlave
 Source Server Type    : MySQL
 Source Server Version : 100148 (10.1.48-MariaDB-1~bionic)
 Source Host           : 192.168.1.15:3306
 Source Schema         : lookup_db

 Target Server Type    : MySQL
 Target Server Version : 100148 (10.1.48-MariaDB-1~bionic)
 File Encoding         : 65001

 Date: 04/09/2024 19:19:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for data_imports
-- ----------------------------
DROP TABLE IF EXISTS `data_imports`;
CREATE TABLE `data_imports` (
  `rep` varchar(20) DEFAULT NULL,
  `rec` varchar(3) DEFAULT NULL,
  `tranid` varchar(20) NOT NULL,
  `hn` varchar(20) DEFAULT NULL,
  `an` varchar(20) DEFAULT NULL,
  `cid` varchar(13) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `type_op_ip` varchar(6) DEFAULT NULL,
  `vstdate` date DEFAULT NULL,
  `vsttime` time DEFAULT NULL,
  `dscdate` date DEFAULT NULL,
  `dsctime` time DEFAULT NULL,
  `refund` double DEFAULT NULL,
  `re_pp` double DEFAULT NULL,
  `error_code` varchar(100) DEFAULT NULL,
  `budgut` varchar(100) DEFAULT NULL,
  `pttype` varchar(100) DEFAULT NULL,
  `hoscode` varchar(5) DEFAULT NULL,
  `claim` double DEFAULT NULL,
  `claim_pp` double DEFAULT NULL,
  `withdraw` double DEFAULT NULL,
  `ipcs` double DEFAULT NULL,
  `ipcs_ors` double DEFAULT NULL,
  `opcs` double DEFAULT NULL,
  `pacs` double DEFAULT NULL,
  `instcs` double DEFAULT NULL,
  `otcs` double DEFAULT NULL,
  `pp` double DEFAULT NULL,
  `drug` double DEFAULT NULL,
  PRIMARY KEY (`tranid`)
) ENGINE=InnoDB DEFAULT CHARSET=tis620;



-- ----------------------------
-- Table structure for lab_history_nap_api
-- ----------------------------
DROP TABLE IF EXISTS `lab_history_nap_api`;
CREATE TABLE `lab_history_nap_api` (
  `vn` varchar(40) DEFAULT NULL,
  `nap_number` varchar(50) DEFAULT NULL,
  `lab_item_code` varchar(10) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `send_status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

-- ----------------------------
-- Table structure for lab_item_code
-- ----------------------------
DROP TABLE IF EXISTS `lab_item_code`;
CREATE TABLE `lab_item_code` (
  `lab_item_code` varchar(255) DEFAULT NULL,
  `nap_lab_item_code` varchar(255) DEFAULT NULL,
  `hcode_request` varchar(5) DEFAULT NULL,
  `hcode_lab` varchar(5) DEFAULT NULL,
  `key_name` text,
  `lab_type` varchar(255) DEFAULT NULL,
  `action` text,
  `date_params` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

INSERT INTO `lab_item_code` (`lab_item_code`, `nap_lab_item_code`, `hcode_request`, `hcode_lab`, `key_name`, `lab_type`, `action`, `date_params`) VALUES ('315', '101', '11138', '11138', 'result1', 'ANTIHIV', 'get_lab_request', 'REQUEST');
INSERT INTO `lab_item_code` (`lab_item_code`, `nap_lab_item_code`, `hcode_request`, `hcode_lab`, `key_name`, `lab_type`, `action`, `date_params`) VALUES (NULL, '102', '11138', '11138', 'result1', NULL, 'get_lab_request', 'REQUEST');
INSERT INTO `lab_item_code` (`lab_item_code`, `nap_lab_item_code`, `hcode_request`, `hcode_lab`, `key_name`, `lab_type`, `action`, `date_params`) VALUES (NULL, '201', '11138', '11128', NULL, NULL, 'get_lab_result', 'RESULT');
INSERT INTO `lab_item_code` (`lab_item_code`, `nap_lab_item_code`, `hcode_request`, `hcode_lab`, `key_name`, `lab_type`, `action`, `date_params`) VALUES (NULL, '202', '11138', '11128', NULL, NULL, 'get_lab_result', 'RESULT');
INSERT INTO `lab_item_code` (`lab_item_code`, `nap_lab_item_code`, `hcode_request`, `hcode_lab`, `key_name`, `lab_type`, `action`, `date_params`) VALUES (NULL, '203', '11138', '11138', NULL, NULL, 'get_lab_request', 'REQUEST');
INSERT INTO `lab_item_code` (`lab_item_code`, `nap_lab_item_code`, `hcode_request`, `hcode_lab`, `key_name`, `lab_type`, `action`, `date_params`) VALUES ('50', '204', '11138', '11138', 'WBC', 'Blood Chemistry', 'get_lab_request', 'REQUEST');
INSERT INTO `lab_item_code` (`lab_item_code`, `nap_lab_item_code`, `hcode_request`, `hcode_lab`, `key_name`, `lab_type`, `action`, `date_params`) VALUES ('52', '204', '11138', '11138', 'Hb', 'Blood Chemistry', 'get_lab_request', 'REQUEST');
INSERT INTO `lab_item_code` (`lab_item_code`, `nap_lab_item_code`, `hcode_request`, `hcode_lab`, `key_name`, `lab_type`, `action`, `date_params`) VALUES ('155', '204', '11138', '11138', 'Cr', 'Blood Chemistry', 'get_lab_request', 'REQUEST');
INSERT INTO `lab_item_code` (`lab_item_code`, `nap_lab_item_code`, `hcode_request`, `hcode_lab`, `key_name`, `lab_type`, `action`, `date_params`) VALUES ('157', '204', '11138', '11138', 'Chol', 'Blood Chemistry', 'get_lab_request', 'REQUEST');
INSERT INTO `lab_item_code` (`lab_item_code`, `nap_lab_item_code`, `hcode_request`, `hcode_lab`, `key_name`, `lab_type`, `action`, `date_params`) VALUES ('153', '204', '11138', '11138', 'FBS', 'Blood Chemistry', 'get_lab_request', 'REQUEST');
INSERT INTO `lab_item_code` (`lab_item_code`, `nap_lab_item_code`, `hcode_request`, `hcode_lab`, `key_name`, `lab_type`, `action`, `date_params`) VALUES ('158', '204', '11138', '11138', 'TG', 'Blood Chemistry', 'get_lab_request', 'REQUEST');
INSERT INTO `lab_item_code` (`lab_item_code`, `nap_lab_item_code`, `hcode_request`, `hcode_lab`, `key_name`, `lab_type`, `action`, `date_params`) VALUES ('165', '204', '11138', '11138', 'SGPT(ALT)', 'Blood Chemistry', 'get_lab_request', 'REQUEST');

-- ----------------------------
-- Table structure for lab_request
-- ----------------------------
DROP TABLE IF EXISTS `lab_request`;
CREATE TABLE `lab_request` (
  `lab_type` varchar(255) CHARACTER SET tis620 DEFAULT NULL,
  `date_form` varchar(20) CHARACTER SET tis620 DEFAULT NULL,
  `date_to` varchar(20) CHARACTER SET tis620 DEFAULT NULL,
  `hcode_request` varchar(5) CHARACTER SET tis620 DEFAULT NULL,
  `patient_id` varchar(60) CHARACTER SET tis620 DEFAULT NULL,
  `lab_request_id` varchar(100) CHARACTER SET tis620 DEFAULT NULL,
  `request_date` varchar(20) CHARACTER SET tis620 DEFAULT NULL,
  `hcode_lab` varchar(5) CHARACTER SET tis620 DEFAULT NULL,
  `request_approved_status` varchar(1) CHARACTER SET tis620 DEFAULT NULL,
  `bc_lab_item` text CHARACTER SET tis620,
  UNIQUE KEY `lab_type_request_id` (`lab_type`,`lab_request_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lab_token
-- ----------------------------
DROP TABLE IF EXISTS `lab_token`;
CREATE TABLE `lab_token` (
  `username` varchar(255) DEFAULT NULL,
  `token` text
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

-- ----------------------------
-- Table structure for lab_visit
-- ----------------------------
DROP TABLE IF EXISTS `lab_visit`;
CREATE TABLE `lab_visit` (
  `lab_visit_id` int(11) NOT NULL AUTO_INCREMENT,
  `vn` varchar(20) DEFAULT NULL,
  `hn` varchar(20) DEFAULT NULL,
  `nap_number` varchar(50) DEFAULT NULL,
  `hcode_lab` varchar(5) DEFAULT NULL,
  `hcode_request` varchar(5) DEFAULT NULL,
  `vstdate` date DEFAULT NULL,
  `vsttime` varchar(20) DEFAULT NULL,
  `lab_item_code` varchar(10) DEFAULT NULL,
  `lab_type` varchar(255) DEFAULT NULL,
  `nap_lab_item_code` varchar(5) DEFAULT NULL,
  `result` text,
  `key_name` varchar(20) DEFAULT NULL,
  `lab_request_id` varchar(60) DEFAULT NULL,
  `patient_id` varchar(30) DEFAULT NULL,
  `send_status` bit(1) DEFAULT b'0',
  `send_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `check` bit(1) DEFAULT b'0',
  PRIMARY KEY (`lab_visit_id`),
  UNIQUE KEY `lab_index` (`vn`,`hn`,`lab_item_code`)
) ENGINE=InnoDB AUTO_INCREMENT=29727 DEFAULT CHARSET=tis620;


-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `token` text,
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` char(13) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `active` bit(1) DEFAULT b'0',
  `project` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=tis620;

DROP TABLE IF EXISTS `moph_user`;
CREATE TABLE `moph_user` (
  `username` varchar(255) DEFAULT NULL,
  `password_hash` text,
  `hoscode` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

SET FOREIGN_KEY_CHECKS = 1;
