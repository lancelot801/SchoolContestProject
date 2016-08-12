/*
Navicat MySQL Data Transfer

Source Server         : connections
Source Server Version : 50548
Source Host           : localhost:3306
Source Database       : contest

Target Server Type    : MYSQL
Target Server Version : 50548
File Encoding         : 65001

Date: 2016-08-12 21:46:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminId` char(11) NOT NULL,
  `password` text,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('Admin', '8079E2F93A5798E1C47000F69D99DA05');
INSERT INTO `admin` VALUES ('lancelot', '8079E2F93A5798E1C47000F69D99DA05');

-- ----------------------------
-- Table structure for contestmessage
-- ----------------------------
DROP TABLE IF EXISTS `contestmessage`;
CREATE TABLE `contestmessage` (
  `fewNum` varchar(20) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `conId` int(20) NOT NULL AUTO_INCREMENT,
  `conName` varchar(50) NOT NULL,
  `project` char(20) NOT NULL,
  `enrollStart` varchar(20) NOT NULL,
  `enrollEnd` varchar(20) NOT NULL,
  `submitStart` varchar(20) NOT NULL,
  `submitEnd` varchar(20) NOT NULL,
  `jurorLeader` char(10) NOT NULL,
  `grade` varchar(50) DEFAULT NULL,
  `POrT` int(11) DEFAULT NULL,
  `groupNum` int(11) DEFAULT NULL,
  `explains` text,
  `publishTime` varchar(20) DEFAULT NULL,
  `coOrganizer` varchar(50) DEFAULT NULL,
  `supportAgency` varchar(50) DEFAULT NULL,
  `extrasfile` text,
  PRIMARY KEY (`conId`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contestmessage
-- ----------------------------
INSERT INTO `contestmessage` VALUES (null, null, '6', 'C#程序设计', '0', '2016-03-03', '2016-03-03', '2016-03-03', '2016-03-03', '孔磊', '3', '0', '2', 'ASP.NET程序设计', null, 'sss', 'xxx', 'D:\\SoftWare\\Tomcat7.0\\webapps\\fzd_contest\\upload\\contestfiles\\6\\2df693529822720e24c63d897ccb0a46f21fabbe.jpg');
INSERT INTO `contestmessage` VALUES (null, null, '7', 'JavaWeb程序设计', '0', '2016-03-27', '2016-03-27', '2016-01-27', '2016-01-22', '胡局新', '2', '1', '1', 'JavaWeb企业级开发f', '2016-03-03', '徐州工程学院', '信电工程学院', 'D:\\SoftWare\\Tomcat7.0\\webapps\\contestfzd\\upload\\contestfiles\\7\\p5.jpg');
INSERT INTO `contestmessage` VALUES (null, null, '8', '摄影大赛', '5', '2016-03-05', '2016-03-05', '2016-03-05', '2016-03-05', '肖洋', '3', '1', '1', '摄影比赛', '2016-03-05', '信电学院', '摄影部', 'D:\\SoftWare\\Tomcat7.0\\webapps\\contestfzd\\upload\\contestfiles\\contest整合后.zip');
INSERT INTO `contestmessage` VALUES (null, null, '11', '英雄联盟SoLo', '0', '2016-04-03 ', '2016-04-04 ', '2016-04-04 ', '2016-04-07 ', '胡局新', '1', '0', '1', '英雄联盟', '2016-04-01 ', 'sss', 'gggg', 'D:\\SoftWare\\Tomcat7.0\\webapps\\contestfzd\\upload\\contestfiles\\11\\10d5822397dda1440ab7c9a5b5b7d0a20cf48669.jpg');
INSERT INTO `contestmessage` VALUES (null, null, '13', '中国象棋大师赛', '1', '2016-04-24 ', '2016-05-05 ', '2016-05-07 ', '2016-05-17 ', '胡局新', '1', '0', '1', '中国象棋大师赛', '2016-04-23 ', '徐州象棋协会', '徐州工程学院', 'D:\\SoftWare\\Tomcat7.0\\webapps\\contestfzd\\upload\\contestfiles\\Algorithms.pdf');
INSERT INTO `contestmessage` VALUES (null, null, '15', '三国杀', '4', '2016-04-24 ', '2016-04-27 ', '2016-04-25 ', '2016-04-29 ', '阿斯顿，你kl', '0', '0', '0', '活动空间很多客户', '2016-04-23 ', '5', 'FGDF H ', 'D:\\SoftWare\\Tomcat7.0\\webapps\\contestfzd\\upload\\contestfiles\\Algorithms.pdf');
INSERT INTO `contestmessage` VALUES (null, null, '20', 'ACM程序设计大赛', '1', '2016-04-26 ', '2016-04-30 ', '2016-05-03 ', '2016-05-08 ', '程红林', '1', '0', '3', '徐州市ACM程序设计大赛', '2016-04-25 ', '徐州市计算机协会', '徐州工程学院', null);
INSERT INTO `contestmessage` VALUES (null, null, '21', '程序设计大赛', '1', '2016-05-01', '2016-05-14', '2016-06-01', '2016-06-14', '孔磊', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-04-25', '徐州工程学院', null, null);
INSERT INTO `contestmessage` VALUES (null, null, '22', 'C程序设计大赛', '1', '2016-05-01', '2016-05-14', '2016-06-01', '2016-06-14', '孔磊', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-04-25', '徐州工程学院', null, 'D:\\SoftWare\\Tomcat7.0\\webapps\\fzd_contest\\upload\\contestfiles\\22\\hosts.txt');
INSERT INTO `contestmessage` VALUES (null, null, '23', 'C++程序设计大赛', '1', '2016-05-01', '2016-05-14', '2016-06-01', '2016-06-14', '孔磊', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-04-25', '徐州工程学院', null, null);
INSERT INTO `contestmessage` VALUES (null, null, '24', 'JSP程序设计大赛', '1', '2016-05-01', '2016-05-14', '2016-06-01', '2016-06-14', '肖洋', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-04-25', '徐州工程学院', null, null);
INSERT INTO `contestmessage` VALUES (null, null, '25', 'ASP.NET程序设计大赛', '1', '2016-05-01', '2016-05-14', '2016-06-01', '2016-06-14', '胡局新', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-04-25', '徐州工程学院', null, null);
INSERT INTO `contestmessage` VALUES (null, null, '26', 'C#程序设计大赛', '1', '2016-05-01', '2016-05-14', '2016-06-01', '2016-06-14', '程红林', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-04-25', '徐州工程学院', null, null);
INSERT INTO `contestmessage` VALUES (null, null, '27', 'Java程序设计大赛', '1', '2016-05-01', '2016-05-14', '2016-06-01', '2016-06-14', '王逢洲', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-04-25', '徐州工程学院', null, null);
INSERT INTO `contestmessage` VALUES (null, null, '28', 'VB程序设计大赛', '1', '2016-05-01', '2016-05-14', '2016-06-01', '2016-06-14', '孔磊', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-04-25', '徐州工程学院', null, null);
INSERT INTO `contestmessage` VALUES (null, null, '29', '数据库设计大赛', '1', '2016-05-01', '2016-05-14', '2016-06-01', '2016-06-14', '孔磊', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-04-25', '徐州工程学院', null, null);
INSERT INTO `contestmessage` VALUES (null, null, '30', 'C程序设计大赛', '1', '2016-05-01', '2016-05-14', '2016-06-01', '2016-06-14', '孔磊', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-04-25', '徐州工程学院', null, null);
INSERT INTO `contestmessage` VALUES (null, null, '31', 'C++程序设计大赛', '1', '2016-05-01', '2016-05-14', '2016-06-01', '2016-06-14', '孔磊', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-04-25', '徐州工程学院', null, null);
INSERT INTO `contestmessage` VALUES (null, null, '32', 'JSP程序设计大赛', '1', '2016-05-01', '2016-05-14', '2016-06-01', '2016-06-14', '肖洋', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-04-25', '徐州工程学院', null, null);
INSERT INTO `contestmessage` VALUES (null, null, '33', 'ASP.NET程序设计大赛', '1', '2016-05-01', '2016-05-14', '2016-06-01', '2016-06-14', '胡局新', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-04-25', '徐州工程学院', null, null);
INSERT INTO `contestmessage` VALUES (null, null, '34', 'C#程序设计大赛', '1', '2016-05-01', '2016-05-14', '2016-06-01', '2016-06-14', '程红林', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-04-25', '徐州工程学院', null, null);
INSERT INTO `contestmessage` VALUES (null, null, '35', 'Java程序设计大赛', '1', '2016-05-01', '2016-05-14', '2016-06-01', '2016-06-14', '王逢洲', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-04-25', '徐州工程学院', null, null);
INSERT INTO `contestmessage` VALUES (null, null, '36', 'VB程序设计大赛', '1', '2016-05-01', '2016-05-14', '2016-06-01', '2016-06-14', '孔磊', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-04-25', '徐州工程学院', null, null);
INSERT INTO `contestmessage` VALUES (null, null, '37', '数据库设计大赛', '1', '2016-05-01', '2016-05-14', '2016-06-01', '2016-06-14', '孔磊', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-04-25', '徐州工程学院', null, null);
INSERT INTO `contestmessage` VALUES (null, null, '38', 'C程序设计大赛', '1', '2016-04-01', '2016-04-14', '2016-05-01', '2016-05-14', '孔磊', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-03-25', '徐州工程学院', null, null);
INSERT INTO `contestmessage` VALUES (null, null, '39', 'C++程序设计大赛', '1', '2016-04-01', '2016-04-14', '2016-05-01', '2016-05-14', '孔磊', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-03-25', '徐州工程学院', null, null);
INSERT INTO `contestmessage` VALUES (null, null, '40', 'JSP程序设计大赛', '1', '2016-04-01', '2016-04-14', '2016-05-01', '2016-05-14', '肖洋', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-03-25', '徐州工程学院', null, null);
INSERT INTO `contestmessage` VALUES (null, null, '41', 'ASP.NET程序设计大赛', '1', '2016-04-01', '2016-04-14', '2016-05-01', '2016-05-14', '胡局新', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-03-25', '徐州工程学院', null, null);
INSERT INTO `contestmessage` VALUES (null, null, '42', 'C#程序设计大赛', '1', '2016-04-01', '2016-04-14', '2016-05-01', '2016-05-14', '程红林', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-03-25', '徐州工程学院', null, null);
INSERT INTO `contestmessage` VALUES (null, null, '43', 'Java程序设计大赛', '1', '2016-04-01', '2016-04-14', '2016-05-01', '2016-05-14', '王逢洲', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-03-25', '徐州工程学院', null, null);
INSERT INTO `contestmessage` VALUES (null, null, '44', 'VB程序设计大赛', '1', '2016-04-01', '2016-04-14', '2016-05-01', '2016-05-14', '孔磊', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-03-25', '徐州工程学院', null, null);
INSERT INTO `contestmessage` VALUES (null, null, '45', '数据库设计大赛', '1', '2016-04-01', '2016-04-14', '2016-05-01', '2016-05-14', '孔磊', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-03-25', '徐州工程学院', null, null);
INSERT INTO `contestmessage` VALUES (null, null, '50', 'C语言', '1', '2016-05-13 ', '2016-05-20 ', '2016-06-01 ', '2016-06-30 ', 'ddd', '3', '1', '4', 'dddd', '2016-05-11 ', '', '', null);
INSERT INTO `contestmessage` VALUES (null, null, '51', 'dd', '2', '2016-04-12 ', '2016-04-14 ', '2016-04-12 ', '2016-04-07 ', 'c', '3', '0', '3', 'ddcc', '2016-05-13', 'ccc', 'vvv', null);
INSERT INTO `contestmessage` VALUES (null, null, '52', 'AAA', '1', '2016-05-10 ', '2016-05-21 ', '2016-06-01 ', '2016-04-07 ', 'cc', '2', '0', '3', 'ss', '2016-05-14', 'ccc', 'ccc', null);
INSERT INTO `contestmessage` VALUES (null, null, '54', 'C程序设计大赛', '1', '2016-05-01', '2016-05-14', '2016-05-10', '2016-05-20', '孔磊', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-04-25', '徐州工程学院', null, null);
INSERT INTO `contestmessage` VALUES (null, null, '55', 'C++程序设计大赛', '1', '2016-05-01', '2016-05-14', '2016-05-10', '2016-05-20', '孔磊', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-04-25', '徐州工程学院', null, null);
INSERT INTO `contestmessage` VALUES (null, null, '56', 'C程序设计大赛', '1', '2016-05-01', '2016-05-14', '2016-05-10', '2016-05-20', '孔磊', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-04-25', '徐州工程学院', null, null);
INSERT INTO `contestmessage` VALUES (null, null, '57', 'C++程序设计大赛', '1', '2016-05-01', '2016-05-14', '2016-05-10', '2016-05-20', '孔磊', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-04-25', '徐州工程学院', null, null);
INSERT INTO `contestmessage` VALUES (null, null, '58', 'C程序设计大赛', '1', '2016-05-01', '2016-05-14', '2016-05-10', '2016-05-20', '孔磊', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-04-25', '徐州工程学院', null, null);
INSERT INTO `contestmessage` VALUES (null, null, '59', 'C++程序设计大赛', '1', '2016-05-01', '2016-05-14', '2016-05-10', '2016-05-20', '孔磊', '3', '1', '0', '徐州工程学院计算机程序设计大赛', '2016-04-25', '徐州工程学院', null, null);
INSERT INTO `contestmessage` VALUES (null, null, '61', '摄影大赛', '3', '2016-04-25 ', '2016-05-02 ', '2016-05-10 ', '2016-05-20 ', 'dd', '3', '1', '2', 'dd', '2016-05-14', 'ddddd', 'ddd', null);
INSERT INTO `contestmessage` VALUES (null, null, '62', '12345', '3', '2016-05-07 ', '2016-05-19 ', '2016-06-01 ', '2016-06-21 ', 'a', '3', '1', '3', 'c', '2016-05-14', 'w', 't', 'D:\\SoftWare\\Tomcat7.0\\webapps\\fzd_contest\\upload\\contestfiles\\62\\BluetoothChat.apk');
INSERT INTO `contestmessage` VALUES (null, null, '63', 'ccc', '1', '2016-04-05 ', '2016-04-14 ', '2016-05-10 ', '2016-05-20 ', 'c', '5', '1', '3', 'cc', '2016-05-14', 'W', 'R', null);
INSERT INTO `contestmessage` VALUES (null, null, '64', 'ABCDE', '0', '2016-05-10 ', '2016-06-05 ', '2016-05-20 ', '2016-06-10 ', 'dd', '2', '0', '1', 'ddd', '2016-05-23', 'ddddd', 'ccc', 'upload/contestfiles/64/p7.jpg');

-- ----------------------------
-- Table structure for detailsscore
-- ----------------------------
DROP TABLE IF EXISTS `detailsscore`;
CREATE TABLE `detailsscore` (
  `stuIdOrteamId` char(11) NOT NULL,
  `conId` char(20) NOT NULL,
  `teadId` char(11) NOT NULL,
  `aspectId` int(11) NOT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`stuIdOrteamId`,`conId`,`teadId`,`aspectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detailsscore
-- ----------------------------

-- ----------------------------
-- Table structure for groupenroll
-- ----------------------------
DROP TABLE IF EXISTS `groupenroll`;
CREATE TABLE `groupenroll` (
  `audit` int(11) NOT NULL,
  `teamId` char(10) NOT NULL,
  `conId` char(20) NOT NULL,
  `enrollTime` date DEFAULT NULL,
  PRIMARY KEY (`teamId`,`conId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of groupenroll
-- ----------------------------

-- ----------------------------
-- Table structure for mark
-- ----------------------------
DROP TABLE IF EXISTS `mark`;
CREATE TABLE `mark` (
  `stuIdOrteamId` char(11) NOT NULL,
  `conId` char(20) NOT NULL,
  `teadId` char(11) NOT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`stuIdOrteamId`,`conId`,`teadId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mark
-- ----------------------------

-- ----------------------------
-- Table structure for markdetails
-- ----------------------------
DROP TABLE IF EXISTS `markdetails`;
CREATE TABLE `markdetails` (
  `conId` char(20) NOT NULL,
  `aspectId` int(11) NOT NULL,
  `aspect` char(10) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`conId`,`aspectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of markdetails
-- ----------------------------
INSERT INTO `markdetails` VALUES ('21', '1', '创新', '50');
INSERT INTO `markdetails` VALUES ('21', '2', '实用', '50');
INSERT INTO `markdetails` VALUES ('23', '1', '2', '5');
INSERT INTO `markdetails` VALUES ('23', '3', '4', '5');
INSERT INTO `markdetails` VALUES ('62', '1', '创新', '25');
INSERT INTO `markdetails` VALUES ('62', '2', '实用', '75');
INSERT INTO `markdetails` VALUES ('64', '1', '创新性', '50');
INSERT INTO `markdetails` VALUES ('64', '2', '实用性', '50');

-- ----------------------------
-- Table structure for personenroll
-- ----------------------------
DROP TABLE IF EXISTS `personenroll`;
CREATE TABLE `personenroll` (
  `audit` int(11) NOT NULL,
  `stuId` char(11) NOT NULL,
  `conId` char(20) NOT NULL,
  `enrollTime` date DEFAULT NULL,
  PRIMARY KEY (`stuId`,`conId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of personenroll
-- ----------------------------

-- ----------------------------
-- Table structure for rater
-- ----------------------------
DROP TABLE IF EXISTS `rater`;
CREATE TABLE `rater` (
  `conId` char(20) NOT NULL,
  `teaId` char(11) NOT NULL,
  `headman` int(11) DEFAULT NULL,
  PRIMARY KEY (`conId`,`teaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rater
-- ----------------------------
INSERT INTO `rater` VALUES ('13', '001', '1');
INSERT INTO `rater` VALUES ('13', '002', '0');
INSERT INTO `rater` VALUES ('13', '003', '0');
INSERT INTO `rater` VALUES ('13', '004', '0');
INSERT INTO `rater` VALUES ('54', '001', '1');
INSERT INTO `rater` VALUES ('54', '002', '0');
INSERT INTO `rater` VALUES ('54', '003', '0');
INSERT INTO `rater` VALUES ('61', '001', '1');
INSERT INTO `rater` VALUES ('61', '002', '0');
INSERT INTO `rater` VALUES ('61', '003', '0');
INSERT INTO `rater` VALUES ('63', 'è¡å±æ°', '1');
INSERT INTO `rater` VALUES ('63', '肖洋', '0');
INSERT INTO `rater` VALUES ('64', '001', '1');
INSERT INTO `rater` VALUES ('64', '002', '0');
INSERT INTO `rater` VALUES ('64', '003', '0');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `stuId` char(11) NOT NULL,
  `name` char(10) DEFAULT NULL,
  `class` char(10) DEFAULT NULL,
  `institute` char(20) DEFAULT NULL,
  `password` char(20) DEFAULT NULL,
  PRIMARY KEY (`stuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', 'lancelot', null, null, 'xzit1001');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `teaId` char(11) NOT NULL,
  `name` char(10) DEFAULT NULL,
  `institute` char(20) DEFAULT NULL,
  `password` char(20) DEFAULT NULL,
  PRIMARY KEY (`teaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1001', 'd', 'f', '1001');
INSERT INTO `teacher` VALUES ('2', 'b', null, '1001');

-- ----------------------------
-- Table structure for team
-- ----------------------------
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
  `teamId` char(10) NOT NULL,
  `stuId` char(11) NOT NULL,
  `teamName` char(20) DEFAULT NULL,
  `teacher` char(11) DEFAULT NULL,
  PRIMARY KEY (`teamId`,`stuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of team
-- ----------------------------

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('0');
INSERT INTO `type` VALUES ('1');
INSERT INTO `type` VALUES ('2');

-- ----------------------------
-- Table structure for worksmessage
-- ----------------------------
DROP TABLE IF EXISTS `worksmessage`;
CREATE TABLE `worksmessage` (
  `stuIdOrteamId` char(11) NOT NULL,
  `conId` char(20) NOT NULL,
  `works` text,
  `uploadTime` date DEFAULT NULL,
  `teaId` char(11) DEFAULT NULL,
  `rank` char(10) DEFAULT NULL,
  PRIMARY KEY (`stuIdOrteamId`,`conId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of worksmessage
-- ----------------------------
INSERT INTO `worksmessage` VALUES ('', '', 'upload/&/p7.jpg', '2016-04-05', null, null);
