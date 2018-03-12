/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50543
Source Host           : localhost:3306
Source Database       : recruitms

Target Server Type    : MYSQL
Target Server Version : 50543
File Encoding         : 65001

Date: 2018-03-10 10:38:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_rms_account
-- ----------------------------
DROP TABLE IF EXISTS `t_rms_account`;
CREATE TABLE `t_rms_account` (
  `N_ACN_NO` int(11) NOT NULL AUTO_INCREMENT,
  `S_USER_NO` varchar(255) DEFAULT NULL,
  `S_USERNAME` varchar(255) DEFAULT NULL,
  `S_PASSWORD` varchar(255) DEFAULT NULL,
  `S_USER_TYPE` varchar(255) DEFAULT '1',
  `D_RG_TIME` datetime DEFAULT NULL,
  `S_EXT_VALUE1` varchar(255) DEFAULT '1',
  PRIMARY KEY (`N_ACN_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_rms_account
-- ----------------------------
INSERT INTO `t_rms_account` VALUES ('1', '1004', '范贺伟', '111111', '1', '2018-03-10 00:00:00', '1');
INSERT INTO `t_rms_account` VALUES ('2', '1005', '李杰波', '111111', '2', '2018-03-10 00:00:00', '1');
INSERT INTO `t_rms_account` VALUES ('3', '1006', '唐轶俊', '111111', '1', '2018-03-13 03:29:40', '1');
INSERT INTO `t_rms_account` VALUES ('4', '1007', '邓基金', '111111', '2', '2018-03-10 00:00:00', '1');
INSERT INTO `t_rms_account` VALUES ('5', '1008', '吴锐锋', '111111', '2', '2018-03-10 00:00:00', '1');
INSERT INTO `t_rms_account` VALUES ('6', '1009', '林启瑶', '111111', '2', '2018-03-10 00:00:00', '1');
INSERT INTO `t_rms_account` VALUES ('7', '1010', '薛皓仁', '111111', '2', '2018-03-10 00:00:00', '1');
INSERT INTO `t_rms_account` VALUES ('8', '1011', '张伟宁', '111111', '2', '2018-03-10 00:00:00', '1');
INSERT INTO `t_rms_account` VALUES ('9', '1012', '禤劲坤', '111111', '2', '2018-03-10 00:00:00', '1');
INSERT INTO `t_rms_account` VALUES ('10', '1013', '陈志伟', '111111', '2', '2018-03-10 00:00:00', '1');
INSERT INTO `t_rms_account` VALUES ('11', '1014', '陈馥珊', '111111', '2', '2018-03-10 00:00:00', '1');
INSERT INTO `t_rms_account` VALUES ('12', '1015', '黎家荣', '111111', '3', '2018-03-10 00:00:00', '1');
INSERT INTO `t_rms_account` VALUES ('13', '1016', '王宇瀚', '111111', '3', '2018-03-10 00:00:00', '1');
INSERT INTO `t_rms_account` VALUES ('14', '1017', '陈剑滨', '111111', '1', '2018-03-10 00:00:00', '1');
INSERT INTO `t_rms_account` VALUES ('15', '1018', '关建成', '111111', '1', '2018-03-10 00:00:00', '1');
INSERT INTO `t_rms_account` VALUES ('16', '1019', '方钦涛', '111111', '1', '2018-03-10 00:00:00', '1');
INSERT INTO `t_rms_account` VALUES ('17', '1020', '梁锦柏', '111111', '1', '2018-03-10 00:00:00', '1');
INSERT INTO `t_rms_account` VALUES ('18', '1021', '王健', '111111', '1', '2018-03-11 00:00:00', '1');
INSERT INTO `t_rms_account` VALUES ('19', '1002', 'admin', '111111', '3', '2018-03-10 03:30:12', '1');
INSERT INTO `t_rms_account` VALUES ('20', 'huanggl', 'huanggl', null, '1', null, '1');
INSERT INTO `t_rms_account` VALUES ('21', '1022', '黄光亮', '111111', '1', null, '1');

-- ----------------------------
-- Table structure for t_rms_attach
-- ----------------------------
DROP TABLE IF EXISTS `t_rms_attach`;
CREATE TABLE `t_rms_attach` (
  `N_ATTACH_NO` int(11) NOT NULL AUTO_INCREMENT COMMENT '附件ID',
  `S_ATTACH_NAME` varchar(255) NOT NULL COMMENT '附件名称',
  `S_ATTACH_TYPE` varchar(50) DEFAULT NULL,
  `S_PATH` varchar(4000) DEFAULT NULL COMMENT '文件存储绝对路径',
  `N_VERSION` int(255) DEFAULT '1' COMMENT '版本',
  `S_STATUS` char(1) DEFAULT '1' COMMENT '文件状态 1-正常，2-删除；默认1',
  `D_CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `S_CREATOR` varchar(50) DEFAULT NULL COMMENT '创建者',
  `S_CREATOR_NO` varchar(50) DEFAULT NULL COMMENT '创建者ID',
  `N_LAST_ATTACH_NO` int(11) DEFAULT NULL COMMENT '相同版本的最新附件ID',
  `S_FILE_TYPE` varchar(255) DEFAULT NULL COMMENT '文件类型(备用字段；文件允许上传的类型，如：doc/txt….)',
  `S_SAVE_PATH` varchar(400) DEFAULT NULL COMMENT '文件存储的路径',
  `S_SUB_PATH` varchar(255) DEFAULT NULL COMMENT '二级路径编码：支持日期格式YYYY、YYYY/MM、YYYY/MM/DD',
  PRIMARY KEY (`N_ATTACH_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=11026 DEFAULT CHARSET=utf8 COMMENT='文件表';

-- ----------------------------
-- Records of t_rms_attach
-- ----------------------------
INSERT INTO `t_rms_attach` VALUES ('1', '通知书', '录取通知书', 'F:\\GraduationTest\\attach\\录取通知书_通知书', '1', '1', '2018-03-09 14:07:59', 'admin', '院招生办', '1', null, null, null);
INSERT INTO `t_rms_attach` VALUES ('2', '录取通知书', '通知书', 'F:\\GraduationTest\\attach\\2_录取通知书', '1', '1', null, 'admin', '院招生办', '1', null, null, null);
INSERT INTO `t_rms_attach` VALUES ('3', '录取通知书', '通知书', 'F:\\GraduationTest\\attach\\3_录取通知书', '1', '1', null, 'admin', '院招生办', '1', null, null, null);
INSERT INTO `t_rms_attach` VALUES ('4', '录取通知书', '通知书', 'F:\\GraduationTest\\attach\\4_录取通知书', '1', '1', null, 'admin', '院招生办', '1', null, null, null);
INSERT INTO `t_rms_attach` VALUES ('6', '通知书', '录取通知书', 'F:\\GraduationTest\\attach\\录取通知书_通知书', '1', '1', '2018-03-09 14:07:45', 'admin', '院招生办', '1', null, null, null);
INSERT INTO `t_rms_attach` VALUES ('7', '1录取通知书', '通知书', 'F:\\GraduationTest\\attach\\2018\\3\\null_1录取通知书', '1', '1', null, 'admin', '院招生办', '1', null, null, null);
INSERT INTO `t_rms_attach` VALUES ('8', '3录取通知书', '通知书', 'F:\\GraduationTest\\attach\\2018\\3\\null_3录取通知书', '1', '1', null, 'admin', '院招生办', '1', null, null, null);
INSERT INTO `t_rms_attach` VALUES ('9', '1录取通知书', '通知书', 'F:\\GraduationTest\\attach\\null_1录取通知书', '1', '1', null, 'admin', '院招生办', '1', null, null, null);
INSERT INTO `t_rms_attach` VALUES ('10', '4录取通知书', '通知书', 'F:\\GraduationTest\\attach\\null_4录取通知书', '1', '1', null, 'admin', '院招生办', '1', null, null, null);
INSERT INTO `t_rms_attach` VALUES ('11', '4录取通知书', '通知书', 'F:\\GraduationTest\\attach\\null_4录取通知书', '1', '1', null, 'admin', '院招生办', '1', null, null, null);
INSERT INTO `t_rms_attach` VALUES ('12', '录取通知书', '通知书', 'F:\\GraduationTest\\attach\\null_录取通知书', '1', '1', null, 'admin', '院招生办', '1', null, null, null);
INSERT INTO `t_rms_attach` VALUES ('13', '学院相册', '学院宣传', 'F:\\GraduationTest\\attach\\null_学院相册', '1', '1', '2018-03-28 08:18:35', 'admin', '院招生办', '1', null, null, null);
INSERT INTO `t_rms_attach` VALUES ('14', 'Test Doc.docx', '学院宣传', 'F:\\GraduationTest\\attach\\null_Test Doc.docx', '1', '1', null, '1002', 'admin', '1', null, null, null);
INSERT INTO `t_rms_attach` VALUES ('15', 'Test Doc.docx', '学院宣传', 'F:\\GraduationTest\\attach\\null_Test Doc.docx', '1', '1', null, '1002', 'admin', '1', null, null, null);
INSERT INTO `t_rms_attach` VALUES ('16', 'Test Doc.docx', '学院宣传', 'F:\\GraduationTest\\attach\\null_Test Doc.docx', '1', '1', null, '1002', 'admin', '1', null, null, null);
INSERT INTO `t_rms_attach` VALUES ('17', 'Test Doc.docx', '学院宣传', 'F:\\GraduationTest\\attach\\null_Test Doc.docx', '1', '1', null, '1002', 'admin', '1', null, null, null);
INSERT INTO `t_rms_attach` VALUES ('18', 'Test Doc.docx', '学院宣传', 'F:\\GraduationTest\\attach\\null_Test Doc.docx', '1', '1', null, '1002', 'admin', '1', null, null, null);
INSERT INTO `t_rms_attach` VALUES ('19', '2.jpg', '学院宣传', 'F:\\GraduationTest\\attach\\null_2.jpg', '1', '1', null, '1002', 'admin', '1', null, null, null);
INSERT INTO `t_rms_attach` VALUES ('20', '2.jpg', '学院宣传', 'F:\\GraduationTest\\attach\\null_2.jpg', '1', '1', null, '1002', 'admin', '1', null, null, null);
INSERT INTO `t_rms_attach` VALUES ('21', 'Test Doc.docx', '', 'F:\\GraduationTest\\attach\\_Test Doc.docx', '1', '1', '2018-03-09 15:03:55', '1002', 'admin', '1', null, null, null);
INSERT INTO `t_rms_attach` VALUES ('22', 'logo-v2.png', '', 'F:\\GraduationTest\\attach\\_logo-v2.png', '1', '1', '2018-03-09 23:50:40', '1002', 'admin', '1', null, null, null);
INSERT INTO `t_rms_attach` VALUES ('11017', '通知书', '录取通知书', 'F:\\GraduationTest\\attach\\录取通知书_通知书', '1', '1', '2018-03-10 08:59:25', 'admin', '院招生办', '1', null, null, null);
INSERT INTO `t_rms_attach` VALUES ('11020', '通知书', '录取通知书', 'F:\\GraduationTest\\attach\\录取通知书_通知书', '1', '1', '2018-03-10 02:56:27', 'admin', '院招生办', '1', null, null, null);
INSERT INTO `t_rms_attach` VALUES ('11021', 'Test Doc.docx', '', 'F:\\GraduationTest\\attach\\_Test Doc.docx', '1', '1', '2018-03-10 03:31:32', '1002', 'admin', '1', null, null, null);
INSERT INTO `t_rms_attach` VALUES ('11022', 'Test Doc.docx', '', 'F:\\GraduationTest\\attach\\_Test Doc.docx', '1', '1', '2018-03-10 03:31:35', '1002', 'admin', '1', null, null, null);
INSERT INTO `t_rms_attach` VALUES ('11023', '2.jpg', '', 'F:\\GraduationTest\\attach\\_2.jpg', '1', '1', '2018-03-10 03:33:05', '1002', 'admin', '1', null, null, null);
INSERT INTO `t_rms_attach` VALUES ('11024', '2.jpg', '', 'F:\\GraduationTest\\attach\\_2.jpg', '1', '1', '2018-03-10 03:33:33', '1002', 'admin', '1', null, null, null);
INSERT INTO `t_rms_attach` VALUES ('11025', '1.jpg', '', 'F:\\GraduationTest\\attach\\_1.jpg', '1', '1', '2018-03-10 08:56:05', '1002', 'admin', '1', null, null, null);

-- ----------------------------
-- Table structure for t_rms_auditinfo
-- ----------------------------
DROP TABLE IF EXISTS `t_rms_auditinfo`;
CREATE TABLE `t_rms_auditinfo` (
  `N_AUDIT_NO` int(11) NOT NULL AUTO_INCREMENT COMMENT '修改项ID',
  `N_DEPT_NO` int(11) DEFAULT NULL,
  `S_DEPT_CODE` varchar(20) DEFAULT NULL COMMENT '专业代码',
  `S_SHORT_NAME` varchar(255) DEFAULT NULL COMMENT '专业简称',
  `S_FULL_NAME` varchar(255) DEFAULT NULL COMMENT '专业全称',
  `S_MODIFY_ITEMID` varchar(50) DEFAULT NULL COMMENT '修改项ID',
  `S_MODIFY_ITEM` varchar(255) DEFAULT NULL COMMENT '修改项',
  `S_BEFORE_MODIFY` varchar(255) DEFAULT NULL COMMENT '修改前',
  `S_AFTER_MODIFY` varchar(255) DEFAULT NULL COMMENT '修改后',
  `S_CREATOR` varchar(50) DEFAULT NULL,
  `S_CREATOR_NO` varchar(20) DEFAULT NULL COMMENT '创建人NO',
  `D_CREATE_TIME` datetime DEFAULT NULL,
  `S_OPERATOR` varchar(50) DEFAULT NULL COMMENT '审核人',
  `S_STATUS` varchar(5) DEFAULT NULL COMMENT '审核状态',
  `S_OPERATOR_NO` varchar(50) DEFAULT NULL COMMENT '审核人NO',
  `D_OPERATE_TIME` datetime DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`N_AUDIT_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='院系专业修改审核';

-- ----------------------------
-- Records of t_rms_auditinfo
-- ----------------------------
INSERT INTO `t_rms_auditinfo` VALUES ('1', '123', 'test1', 'test', 'test', 'sDeptCode', null, 'test1', '', '超级管理员', 'admin', '2018-03-04 13:52:34', 'admin', '3', '1002', '2018-03-09 23:45:11');
INSERT INTO `t_rms_auditinfo` VALUES ('2', '123', 'test1', 'test', 'test', 'sFullName', null, 'test', '', '超级管理员', 'admin', '2018-03-04 13:52:34', 'admin', '3', '1002', '2018-03-09 23:45:11');
INSERT INTO `t_rms_auditinfo` VALUES ('3', '123', 'test1', 'test', 'test', 'nDeptNo', null, '123', '', '超级管理员', 'admin', '2018-03-04 13:52:34', 'admin', '3', '1002', '2018-03-09 23:45:11');
INSERT INTO `t_rms_auditinfo` VALUES ('4', '123', 'test1', 'test', 'test', 'sShortName', null, 'test', '', '超级管理员', 'admin', '2018-03-04 13:52:34', 'admin', '3', '1002', '2018-03-09 23:45:11');
INSERT INTO `t_rms_auditinfo` VALUES ('5', '32', 'Test', 'Test', 'Test', 'cValidFlag', null, '2', '', 'admin', '1002', '2018-03-05 15:27:24', 'admin', '3', '1002', '2018-03-09 23:45:11');
INSERT INTO `t_rms_auditinfo` VALUES ('6', '32', 'Test', 'Test', 'Test', 'sDeptCode', null, 'Test', 'Test2', 'admin', '1002', '2018-03-05 15:27:42', 'admin', '3', '1002', '2018-03-09 23:45:11');
INSERT INTO `t_rms_auditinfo` VALUES ('7', '32', 'Test', 'Test', 'Test', 'cValidFlag', null, '2', '', 'admin', '1002', '2018-03-05 15:27:42', 'admin', '3', '1002', '2018-03-09 23:45:11');
INSERT INTO `t_rms_auditinfo` VALUES ('8', '29', '120203-1', '会计学（国际注册会计师）', '会计学（国际注册会计师）', 'cValidFlag', null, '1', '', 'admin', '1002', '2018-03-08 19:39:56', 'admin', '3', '1002', '2018-03-09 23:45:11');
INSERT INTO `t_rms_auditinfo` VALUES ('9', '29', '120203-1', '会计学（国际注册会计师）', '会计学（国际注册会计师）', 'nCountExtRnrol', null, '', '2', 'admin', '1002', '2018-03-08 19:39:57', 'admin', '3', '1002', '2018-03-09 23:45:11');
INSERT INTO `t_rms_auditinfo` VALUES ('10', '29', '120203-1', '会计学（国际注册会计师）', '会计学（国际注册会计师）', 'cValidFlag', null, '1', '', 'admin', '1002', '2018-03-08 20:02:32', 'admin', '3', '1002', '2018-03-09 23:45:11');
INSERT INTO `t_rms_auditinfo` VALUES ('11', '29', '120203-1', '会计学（国际注册会计师）', '会计学（国际注册会计师）', 'nCountExtRnrol', null, '', '12', 'admin', '1002', '2018-03-08 20:02:32', 'admin', '3', '1002', '2018-03-09 23:45:11');
INSERT INTO `t_rms_auditinfo` VALUES ('12', '29', '120203-1', '会计学（国际注册会计师）', '会计学（国际注册会计师）', 'cValidFlag', null, '1', '', 'admin', '1002', '2018-03-09 00:58:01', 'admin', '3', '1002', '2018-03-09 23:45:11');
INSERT INTO `t_rms_auditinfo` VALUES ('13', '29', '120203-1', '会计学（国际注册会计师）', '会计学（国际注册会计师）', 'nCountExtRnrol', null, '', '1', 'admin', '1002', '2018-03-09 00:58:01', 'admin', '3', '1002', '2018-03-09 23:45:11');
INSERT INTO `t_rms_auditinfo` VALUES ('14', '32', '测试', '测试', '测试', 'sDeptCode', null, '测试', '测试修改', 'admin', '1002', '2018-03-09 07:51:52', 'admin', '3', '1002', '2018-03-09 23:45:11');
INSERT INTO `t_rms_auditinfo` VALUES ('15', '32', '测试', '测试', '测试', 'cValidFlag', null, '1', '', 'admin', '1002', '2018-03-09 07:51:52', 'admin', '3', '1002', '2018-03-09 23:45:11');
INSERT INTO `t_rms_auditinfo` VALUES ('16', '32', '测试修改', '测试', '测试', 'cValidFlag', null, '', '', 'admin', '1002', '2018-03-09 08:16:01', 'admin', '3', '1002', '2018-03-09 23:45:11');
INSERT INTO `t_rms_auditinfo` VALUES ('17', '32', '测试修改', '测试', '测试', 'sShortName', null, '测试', '测试修改', 'admin', '1002', '2018-03-09 08:16:01', 'admin', '3', '1002', '2018-03-09 23:45:11');
INSERT INTO `t_rms_auditinfo` VALUES ('18', '32', '测试修改', '测试修改', '测试', 'cValidFlag', null, '', '', 'admin', '1002', '2018-03-09 14:48:58', 'admin', '3', '1002', '2018-03-09 23:45:11');
INSERT INTO `t_rms_auditinfo` VALUES ('19', '32', '测试修改', '测试修改', '测试', 'nCountEnrol', null, '12', '5778', 'admin', '1002', '2018-03-09 14:48:58', 'admin', '3', '1002', '2018-03-09 23:45:11');
INSERT INTO `t_rms_auditinfo` VALUES ('20', '32', '测试修改', '测试修改', '测试', 'cValidFlag', null, '', '', 'admin', '1002', '2018-03-09 14:49:54', 'admin', '3', '1002', '2018-03-09 23:45:11');
INSERT INTO `t_rms_auditinfo` VALUES ('21', '32', '测试修改', '测试修改', '测试', 'sTuition', null, '', '22000', 'admin', '1002', '2018-03-09 14:49:54', 'admin', '3', '1002', '2018-03-09 23:45:11');
INSERT INTO `t_rms_auditinfo` VALUES ('22', '26', '020401', '国际经济与贸易（国际班）', '国际经济与贸易（国际半班）', 'cValidFlag', null, '1', '', 'admin', '1002', '2018-03-10 03:45:28', 'admin', '2', '1002', '2018-03-10 03:45:53');
INSERT INTO `t_rms_auditinfo` VALUES ('23', '26', '020401', '国际经济与贸易（国际班）', '国际经济与贸易（国际半班）', 'nCountExtRnrol', null, '', '2', 'admin', '1002', '2018-03-10 03:45:28', 'admin', '2', '1002', '2018-03-10 03:45:53');

-- ----------------------------
-- Table structure for t_rms_department
-- ----------------------------
DROP TABLE IF EXISTS `t_rms_department`;
CREATE TABLE `t_rms_department` (
  `N_DEPT_NO` int(11) NOT NULL AUTO_INCREMENT COMMENT '院系专业内部编码',
  `S_DEPT_CODE` varchar(100) DEFAULT NULL COMMENT '专业代码',
  `S_SHORT_NAME` varchar(255) DEFAULT NULL,
  `S_FULL_NAME` varchar(512) DEFAULT NULL COMMENT '专业全称',
  `S_REGION` varchar(30) DEFAULT NULL COMMENT '所属院系  \r\n关联字典表：“College”\r\nRjgcx-软件工程系、wljsx-网络技术系、\r\nDzx-电子系、\r\nJsjx-计算机系、\r\nYxx-游戏系、\r\nSmmtx-数码媒体系、\r\nGlx-管理系、\r\nGjjmx-国际经贸系、\r\nCkx-财会系、\r\nWyx-外语系\r\n',
  `S_TUITION` varchar(255) DEFAULT NULL COMMENT '学费',
  `N_COUNT_ENROL` int(11) DEFAULT NULL COMMENT '计划内招生人数',
  `N_COUNT_EXT_RNROL` int(11) DEFAULT NULL COMMENT '补录人数',
  `DB_ENROL_SCORE` double DEFAULT NULL COMMENT '录取分数线',
  `S_REMARK` varchar(255) DEFAULT NULL,
  `C_VALID_FLAG` char(2) DEFAULT '1' COMMENT '数据状态  1-有效、2-删除',
  PRIMARY KEY (`N_DEPT_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='院系专业表';

-- ----------------------------
-- Records of t_rms_department
-- ----------------------------
INSERT INTO `t_rms_department` VALUES ('1', '080706', '信工', '信息工程', 'rjgcx', '22000', '280', '280', null, '大数据信息应用与开发方向，移动互联网与开发方向', '1');
INSERT INTO `t_rms_department` VALUES ('2', '080902', '软工', '软件工程', 'rjgcx', '22000', '360', '360', null, '互联网金融应用于开发方向，软件测试技术方向、软件开发方向', '1');
INSERT INTO `t_rms_department` VALUES ('3', '080902-1', '软工（国际班）', '软件工程（国际班）', 'rjgcx', '29000', '30', '30', null, '与英国哈德斯菲尔德大学、美国阿兰特国际大学合作开展学分户认项目，培养模式和学习费用见学院网站。', '1');
INSERT INTO `t_rms_department` VALUES ('4', '080903', '网工', '网络工程', 'wljsx', '22000', '278', '278', null, '网络安全技术方向、网络传播与商务网站设计方向、网络多媒体方向、网络设计与管理方向', '1');
INSERT INTO `t_rms_department` VALUES ('5', '120102', '信息管理', '信息管理与信息系统', 'wljsx', '22000', '160', null, null, '信息系统开发方向、信息资源管理方向', '1');
INSERT INTO `t_rms_department` VALUES ('6', '080907', '智能科学与技术', '智能科学与技术', 'dzx', '22000', '95', '95', null, null, '1');
INSERT INTO `t_rms_department` VALUES ('7', '080801', '自动化', '自动化', 'dzx', '22000', '110', null, null, '智能电子技术方向 限制色盲', '1');
INSERT INTO `t_rms_department` VALUES ('8', '080701', '电子信息工程', '电子信息工程', 'dzx', '22000', '176', null, null, null, '1');
INSERT INTO `t_rms_department` VALUES ('9', '080703', '通信工程', '通信工程', 'dzx', '22000', '100', null, null, null, '1');
INSERT INTO `t_rms_department` VALUES ('10', '080901', '计算机科学与技术', '计算机科学与技术', 'jsjx', '22000', '145', null, null, 'Web应用软件与开发', '1');
INSERT INTO `t_rms_department` VALUES ('11', '080905', '物联网工程', '物联网工程', 'jsjx', '22000', '155', null, null, null, '1');
INSERT INTO `t_rms_department` VALUES ('12', '080906', '数字媒体技术', '数字媒体技术', 'yxx', '22000', '148', null, null, '虚拟现实技术方向', '1');
INSERT INTO `t_rms_department` VALUES ('13', '130310', '动画', '动画', 'yxx', '25000', '146', null, null, '动漫设计与制作方向、虚拟现实艺术方向、游戏美术方向', '1');
INSERT INTO `t_rms_department` VALUES ('14', '050306', '网络与新媒体', '网络与新媒体', 'yxx', '22000', '90', null, null, '新媒体编辑与运营方向、新媒体设计与开发方向', '1');
INSERT INTO `t_rms_department` VALUES ('15', '130503', '环境设计', '环境设计', 'smmtx', '25000', '55', '55', null, '室内设计方向', '1');
INSERT INTO `t_rms_department` VALUES ('16', '082803', '风景园林', '风景园林', 'smmtx', '25000', '90', '90', null, '景观建筑数字设计方向', '1');
INSERT INTO `t_rms_department` VALUES ('17', '130502', '视觉传达设计', '视觉传达设计', 'smmtx', '25000', '60', '60', null, '广告与平面设计', '1');
INSERT INTO `t_rms_department` VALUES ('18', '130504', '产品设计', '产品设计', 'smmtx', '25000', '60', '60', null, '家居、家电与饰品设计与开发方向', '1');
INSERT INTO `t_rms_department` VALUES ('19', '130508', '数字媒体艺术', '数字媒体艺术', 'smmtx', '25000', '90', '90', null, '多媒体设计与制作方向、数字影视制作方向', '1');
INSERT INTO `t_rms_department` VALUES ('20', '120402', '行政管理', '行政管理', 'glx', '22000', '62', null, null, '企业行政管理方向', '1');
INSERT INTO `t_rms_department` VALUES ('21', '120601', '物流管理', '物流管理', 'glx', '22000', '59', null, null, '国际贸易与物流营运方向', '1');
INSERT INTO `t_rms_department` VALUES ('22', '120201', '工商管理', '工商管理', 'glx', '22000', '42', null, null, null, '1');
INSERT INTO `t_rms_department` VALUES ('23', '120202', '市场管理', '市场管理', 'glx', '22000', '60', null, null, null, '1');
INSERT INTO `t_rms_department` VALUES ('24', '120206', '人力资源管理', '人力资源管理', 'glx', '22000', '80', null, null, null, '1');
INSERT INTO `t_rms_department` VALUES ('25', '120801', '电子商务', '电子商务', 'gjjmx', '22000', '80', null, null, null, '1');
INSERT INTO `t_rms_department` VALUES ('26', '020401', '国际经济与贸易（国际班）', '国际经济与贸易（国际半班）', 'gjjmx', '29000', '30', '2', null, '与英国哈德斯菲尔德大学、美国阿兰特国际大学合作开展学分户认项目，培养模式和学习费用见学院网站。', '');
INSERT INTO `t_rms_department` VALUES ('27', '120204', '财务管理', '财务管理', 'ckx', '22000', '66', null, null, '投资与税收筹划方向', '1');
INSERT INTO `t_rms_department` VALUES ('28', '120203', '会计学', '会计学', 'ckx', '22000', '135', null, null, null, '1');
INSERT INTO `t_rms_department` VALUES ('29', '120203-1', '会计学（国际注册会计师）', '会计学（国际注册会计师）', 'ckx', '29000', '25', '1', null, '引入ACCA国际注册会计师课程，将ACCA的F阶段课程嵌入培训方案，优秀学员可申请我院与英国北安普顿大学、BPP大学等合作院校的学分互认项目，培训模式和学习费用见网站', '');
INSERT INTO `t_rms_department` VALUES ('30', '050201', '英语', '英语', 'wyx', '22000', '150', '150', null, '翻译方向、商务英语方向', '1');
INSERT INTO `t_rms_department` VALUES ('31', '050207', '日语', '日语', 'wyx', '22000', '50', null, null, '商务日语方向', '1');
INSERT INTO `t_rms_department` VALUES ('32', '测试修改', '测试修改', '测试', '测试', '22000', '5778', '12', null, null, '');
INSERT INTO `t_rms_department` VALUES ('33', '这是招生计划这是招生计划', '软件工程测试', '软测', '软件系', '20000', '3707', '100', null, null, '1');
INSERT INTO `t_rms_department` VALUES ('34', '11010002', '软件工程测试1', '软测', '软件工程', '2224', '2552', '100', '480', '软件工程软件工程软件工程软件工程软件工程', '1');
INSERT INTO `t_rms_department` VALUES ('35', 't1', '', '', '', '', null, null, null, '', '2');

-- ----------------------------
-- Table structure for t_rms_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `t_rms_dictionary`;
CREATE TABLE `t_rms_dictionary` (
  `N_DICT_NO` int(10) NOT NULL AUTO_INCREMENT,
  `S_ITEM_CODE` varchar(128) NOT NULL COMMENT '字典编码',
  `S_SORT_NO` varchar(128) DEFAULT NULL COMMENT '排序',
  `S_ITEM_KEY` varchar(128) NOT NULL COMMENT '字典键',
  `S_ITEM_VALUE` varchar(128) NOT NULL COMMENT '字典值',
  `S_REMARK` varchar(255) DEFAULT NULL COMMENT '描述',
  `C_VALID_FLAG` char(2) DEFAULT '1' COMMENT '数据状态',
  PRIMARY KEY (`N_DICT_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of t_rms_dictionary
-- ----------------------------
INSERT INTO `t_rms_dictionary` VALUES ('1', 'USER_TYPE', '1', 'student', '学生', '', '1');
INSERT INTO `t_rms_dictionary` VALUES ('2', 'USER_TYPE', '2', 'd_admin', '系招生办', null, '1');
INSERT INTO `t_rms_dictionary` VALUES ('3', 'USER_TYPE', '3', 'f_admin', '院招生办', null, '1');
INSERT INTO `t_rms_dictionary` VALUES ('4', 'COLLEGE', '1', 'rjgcx', '软件工程系', null, '1');
INSERT INTO `t_rms_dictionary` VALUES ('5', 'COLLEGE', '2', 'wljsx', '网络技术系', null, '1');
INSERT INTO `t_rms_dictionary` VALUES ('6', 'COLLEGE', '3', 'dzx', '电子系', null, '1');
INSERT INTO `t_rms_dictionary` VALUES ('7', 'COLLEGE', '4', 'Jsjx', '计算机系', null, '1');
INSERT INTO `t_rms_dictionary` VALUES ('8', 'COLLEGE', '5', 'yxx', '游戏系', null, '1');
INSERT INTO `t_rms_dictionary` VALUES ('9', 'COLLEGE', '6', 'smmtx', '数码媒体系', null, '1');
INSERT INTO `t_rms_dictionary` VALUES ('10', 'COLLEGE', '7', 'glx', '管理系', null, '1');
INSERT INTO `t_rms_dictionary` VALUES ('11', 'COLLEGE', '8', 'gjjmx', '国际经贸系', null, '1');
INSERT INTO `t_rms_dictionary` VALUES ('12', 'COLLEGE', '9', 'ckx', '财会系', null, '1');
INSERT INTO `t_rms_dictionary` VALUES ('13', 'COLLEGE', '10', 'wyx', '外语系', null, '1');
INSERT INTO `t_rms_dictionary` VALUES ('14', 'OPERATE_STATUS', '1', '1', '待审核', null, '1');
INSERT INTO `t_rms_dictionary` VALUES ('15', 'OPERATE_STATUS', '2', '2', '审核通过', null, '1');
INSERT INTO `t_rms_dictionary` VALUES ('16', 'OPERATE_STATUS', '3', '3', '审核不通过', null, '1');
INSERT INTO `t_rms_dictionary` VALUES ('17', 'SUBJECT_TYPE', '1', 'wk', '文科类', null, '1');
INSERT INTO `t_rms_dictionary` VALUES ('18', 'SUBJECT_TYPE', '2', 'lk', '理科类', null, '1');
INSERT INTO `t_rms_dictionary` VALUES ('19', 'SUBJECT_TYPE', '3', 'ms', '美术类', null, '1');
INSERT INTO `t_rms_dictionary` VALUES ('20', 'POLITICAL_STATUS', '1', 'zgdy', '中共党员', null, '1');
INSERT INTO `t_rms_dictionary` VALUES ('21', 'POLITICAL_STATUS', '2', 'zgybdy', '中共预备党员', null, '1');
INSERT INTO `t_rms_dictionary` VALUES ('22', 'POLITICAL_STATUS', '3', 'gqty', '共青团员', null, '1');
INSERT INTO `t_rms_dictionary` VALUES ('23', 'POLITICAL_STATUS', '4', 'qz', '群众', null, '1');
INSERT INTO `t_rms_dictionary` VALUES ('24', 'PAY_FLAG', '1', '1', '未缴费', null, '1');
INSERT INTO `t_rms_dictionary` VALUES ('25', 'PAY_FLAG', '2', '2', '已缴费', null, '1');
INSERT INTO `t_rms_dictionary` VALUES ('26', 'PAY_FLAG', '3', '3', '已缴部分费用', null, '1');
INSERT INTO `t_rms_dictionary` VALUES ('27', 'Test2', 'Test', 'Test', 'Test', null, '2');
INSERT INTO `t_rms_dictionary` VALUES ('28', 'FILE_TYPE_WHITE_LIST', '1', 'fileTypeWhileList', 'doc,docx,pdf,txt,jpg,png', null, '1');
INSERT INTO `t_rms_dictionary` VALUES ('30', 'dE', null, 'yxzy', '院系专业', '描述', '1');
INSERT INTO `t_rms_dictionary` VALUES ('31', 'test', null, 'test1', '测试', '', '2');
INSERT INTO `t_rms_dictionary` VALUES ('32', 'test', null, '2', '', '', '2');

-- ----------------------------
-- Table structure for t_rms_qainfo
-- ----------------------------
DROP TABLE IF EXISTS `t_rms_qainfo`;
CREATE TABLE `t_rms_qainfo` (
  `N_QA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `S_SORT_NO` varchar(255) DEFAULT NULL,
  `S_QUESTION` varchar(255) DEFAULT NULL,
  `S_ANSWER` varchar(4000) DEFAULT NULL,
  `S_REMARK` varchar(255) DEFAULT NULL,
  `C_VALID_FLAG` varchar(255) DEFAULT NULL,
  `D_CREATE_TIME` datetime DEFAULT NULL,
  `S_CREATOR` varchar(255) DEFAULT NULL,
  `S_CREATOR_NO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`N_QA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_rms_qainfo
-- ----------------------------
INSERT INTO `t_rms_qainfo` VALUES ('1', '1', '华软学院属于什么性质的学校？', '答：广州大学华软软件学院是经教育部批准的本科层次独立学院，主管单位是广东省教育厅。', '', '1', '2018-03-09 00:00:00', 'admin', '1002');
INSERT INTO `t_rms_qainfo` VALUES ('2', '2', '华软学院师资队伍组成有什么特色？\r\n华软学院师资队伍组成有什么特色？\r\n华软学院师资队伍组成有什么特色？', '答：华软学院实施“人才强校”战略，面向海内外吸纳优秀人才，拥有一支数量充足、结构合理、专业素质精良的师资队伍。既有来自公办高校的专家教授，也有来自海外的留学归国人员，还有来自企业实践经验丰富的“双师型”教师。为培养一批具有国际思维和全球视野的高端技术人才，华软学院携手国外大学联盟，与美国、澳大利亚等国的近百所知名大学联合举办“本硕连读”留学计划和交流计划。华软学院与国内国际顶尖IT企业合作及课程嵌入，与微软合作校园IT计划，与IBM合作课程嵌入，与软件测试巨头Parasoft合建软测实验室，与苹果公司共建iOS开发实训基地，使学院的教学紧贴技术发展与应用的前沿。', '', '1', '2018-03-09 00:00:00', 'admin', '1002');
INSERT INTO `t_rms_qainfo` VALUES ('3', '3', '学生住宿条件怎么样？', '答：学生住宿条件为空调四人间，四人间住宿费标准为1800元/生/学年；套间包括休息间、卫生间、阳台组成，宿舍内还配备了电热水器、电风扇等设备。', null, '1', '2018-03-06 03:27:16', 'admin', '1002');

-- ----------------------------
-- Table structure for t_rms_recruitinfo
-- ----------------------------
DROP TABLE IF EXISTS `t_rms_recruitinfo`;
CREATE TABLE `t_rms_recruitinfo` (
  `N_STUDENT_ID` int(255) NOT NULL AUTO_INCREMENT,
  `S_CANDIDATE_NUM` varchar(255) DEFAULT NULL,
  `S_STUDENT_NAME` varchar(255) DEFAULT NULL,
  `S_STUDENT_NO` varchar(255) DEFAULT NULL,
  `N_AGE` int(11) DEFAULT NULL,
  `C_SEX` varchar(255) DEFAULT NULL,
  `S_ADDRESS` varchar(255) DEFAULT NULL,
  `S_CONTACT` varchar(255) DEFAULT NULL,
  `S_EMAIL` varchar(255) DEFAULT NULL,
  `S_OTHER_CTACT` varchar(255) DEFAULT NULL,
  `S_ENROL_MAJOR` varchar(255) DEFAULT NULL,
  `S_ADMITED_MAJOR` varchar(255) DEFAULT NULL,
  `S_ADMITED_NO` int(11) DEFAULT NULL,
  `S_REGISTER_FLAG` varchar(2) DEFAULT '1',
  `S_GRADE` varchar(255) DEFAULT NULL,
  `S_POLITIIS` varchar(255) DEFAULT NULL,
  `S_PAY_FLAG` varchar(10) DEFAULT '1',
  `S_OPERATOR` varchar(255) DEFAULT NULL,
  `S_OPERATOR_NO` varchar(255) DEFAULT NULL,
  `D_OPERATE_TIME` datetime DEFAULT NULL,
  `S_STATUS` varchar(255) DEFAULT '1',
  PRIMARY KEY (`N_STUDENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11020 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_rms_recruitinfo
-- ----------------------------
INSERT INTO `t_rms_recruitinfo` VALUES ('11001', '1440112301', '范贺伟', '1440112301', '23', '男', '广东省广州市从化区', '13956795677', '13447@qq.com', '13956795677', '080902-1', '080902-1', '111001', '1', '2014', 'zgybdy', '0', '', '', null, '1');
INSERT INTO `t_rms_recruitinfo` VALUES ('11002', '6602552', '李杰波', '1440112328', '23', '男', '广东省广州市从化区', '18955830996', '13448@qq.com', '18955830996', '080903', '080903', '111002', '1', '2014', 'zgybdy', '0', '', '', null, '1');
INSERT INTO `t_rms_recruitinfo` VALUES ('11003', '6602553', '唐轶俊', '1440112316', '23', '男', '广东省广州市从化区', '18133178185', '13449@qq.com', '18133178185', '080701', '080701', '111003', '1', '2014', 'zgybdy', '0', '', '', null, '1');
INSERT INTO `t_rms_recruitinfo` VALUES ('11004', '6602554', '邓基金', '1440112302', '23', '男', '广东省广州市从化区', '13955874677', '13450@qq.com', '13955874677', '130504', '130504', '111004', '1', '2014', 'zgybdy', '0', '', '', null, '1');
INSERT INTO `t_rms_recruitinfo` VALUES ('11005', '6602555', '吴锐锋', '1440112314', '23', '男', '广东省广州市从化区', '18905585575', '13451@qq.com', '18905585575', '130504', '130504', '111005', '1', '2014', 'zgybdy', '0', '', '', null, '1');
INSERT INTO `t_rms_recruitinfo` VALUES ('11006', '6602556', '林启瑶', '1440112347', '23', '女', '广东省广州市从化区', '13705584907', '13452@qq.com', '13705584907', '130504', '130504', '111006', '1', '2014', 'zgybdy', '0', '', '', null, '2');
INSERT INTO `t_rms_recruitinfo` VALUES ('11007', '6602557', '薛皓仁', '1440112338', '23', '男', '广东省广州市从化区', '15905588919', '13453@qq.com', '15905588919', '130508', '130508', '111007', '1', '2014', 'zgybdy', '1', 'admin', '1002', '2018-03-09 00:00:00', '2');
INSERT INTO `t_rms_recruitinfo` VALUES ('11008', '6602558', '张伟宁', '1440112267', '23', '男', '广东省广州市从化区', '15155801153', '13454@qq.com', '15155801153', '130508', '130508', '111008', '1', '2016', 'zgdy', '1', 'admin', '1002', '2018-03-09 00:00:00', '2');
INSERT INTO `t_rms_recruitinfo` VALUES ('11009', '6602559', '禤劲坤', '1440112169', '23', '男', '广东省广州市从化区', '15576873918', '13455@qq.com', '15576873918', '130508', '130508', '111009', '1', '2016', 'zgdy', '1', 'admin', '1002', '2018-03-09 00:00:00', '2');
INSERT INTO `t_rms_recruitinfo` VALUES ('11010', '6602560', '陈志伟', '1440112348', '23', '男', '广东省广州市从化区', '15555851987', '13456@qq.com', '15555851987', '130508', '130508', '111010', '1', '2016', 'zgdy', '1', 'admin', '1002', '2018-03-09 00:00:00', '2');
INSERT INTO `t_rms_recruitinfo` VALUES ('11011', '6602561', '陈馥珊', '1440112173', '23', '女', '广东省广州市从化区', '15955161770', '13457@qq.com', '15955161770', '120201', '120201', '111011', '1', '2016', 'gqty', '1', 'admin', '1002', '2018-03-09 00:00:00', '2');
INSERT INTO `t_rms_recruitinfo` VALUES ('11012', '6602562', '黎家荣', '1440112341', '23', '男', '广东省广州市从化区', '13965581599', '13458@qq.com', '13965581599', '120201', '120201', '111012', '1', '2016', 'gqty', '1', 'admin', '1002', '2018-03-09 00:00:00', '2');
INSERT INTO `t_rms_recruitinfo` VALUES ('11013', '6602563', '王宇瀚', '1440112330', '23', '男', '广东省广州市从化区', '17094966825', '13459@qq.com', '17094966825', '120201', '120201', '111013', '1', '2016', 'gqty', '1', 'admin', '1002', '2018-03-09 00:00:00', '2');
INSERT INTO `t_rms_recruitinfo` VALUES ('11014', '6602564', '陈剑滨', '1440112272', '23', '男', '广东省广州市从化区', '15956858198', '13460@qq.com', '15956858198', '120201', '120201', '111014', '1', '2016', 'gqty', '2', 'admin', '1002', '2018-03-09 00:00:00', '3');
INSERT INTO `t_rms_recruitinfo` VALUES ('11015', '6602565', '关建成', '1440112268', '23', '男', '广东省广州市从化区', '15889211253', '13461@qq.com', '15889211253', '120201', '120201', '111015', '1', '2016', 'qz', '2', 'admin', '1002', '2018-03-09 00:00:00', '3');
INSERT INTO `t_rms_recruitinfo` VALUES ('11016', '6602566', '方钦涛', '1440112179', '23', '男', '广东省广州市从化区', '13856760993', '13462@qq.com', '13856760993', '120801', '120801', '111016', '1', '2015', 'qz', '2', 'admin', '1002', '2018-03-09 00:00:00', '3');
INSERT INTO `t_rms_recruitinfo` VALUES ('11017', '6602567', '梁锦柏', '1440112317', '23', '男', '广东省广州市从化区', '18096775755', '13463@qq.com', '18096775755', '120801', '120801', '111017', '1', '2015', 'qz', '2', 'admin', '1002', '2018-03-09 00:00:00', '3');
INSERT INTO `t_rms_recruitinfo` VALUES ('11018', '6602568', '王健', '1440112455', '23', '男', '广东省广州市从化区', '13913865213', '13464@qq.com', '13913865213', '120801', '120801', '111018', '1', '2015', 'qz', '2', 'admin', '1002', '2018-03-09 00:00:00', '3');
INSERT INTO `t_rms_recruitinfo` VALUES ('11019', null, '黄光亮', '1440112321', '23', '男', '广东省广州市从化区', '15920842687', null, null, null, '120801', null, null, '2016', 'zgybdy', '0', null, null, '2018-03-10 08:56:31', '1');

-- ----------------------------
-- Table structure for t_rms_score
-- ----------------------------
DROP TABLE IF EXISTS `t_rms_score`;
CREATE TABLE `t_rms_score` (
  `N_STUDENT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `S_STUDENT_NAME` varchar(255) DEFAULT NULL,
  `S_STUDENT_NO` varchar(255) DEFAULT NULL,
  `S_SUBJECT_TYPE` varchar(255) DEFAULT NULL,
  `DB_SCORE` varchar(255) DEFAULT NULL,
  `DB_CHINSES` varchar(255) DEFAULT NULL,
  `DB_ENGLISH` varchar(255) DEFAULT NULL,
  `DB_MATH` varchar(255) DEFAULT NULL,
  `S_TOTAL_SCORE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`N_STUDENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11021 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_rms_score
-- ----------------------------
INSERT INTO `t_rms_score` VALUES ('11001', '范贺伟', '1440112301', 'wk', '523.0', '110.0', '110.0', '110.0', '853.0');
INSERT INTO `t_rms_score` VALUES ('11002', '李杰波', '1440112328', 'wk', '523.0', '111.0', '111.0', '111.0', '856.0');
INSERT INTO `t_rms_score` VALUES ('11003', '唐轶俊', '1440112316', 'wk', '525', '112', '112', '112', '336');
INSERT INTO `t_rms_score` VALUES ('11004', '邓基金', '1440112302', 'wk', '526', '113', '113', '113', '339');
INSERT INTO `t_rms_score` VALUES ('11005', '吴锐锋', '1440112314', 'wk', '527', '114', '114', '114', '342');
INSERT INTO `t_rms_score` VALUES ('11006', '林启瑶', '1440112347', 'wk', '528', '115', '115', '115', '345');
INSERT INTO `t_rms_score` VALUES ('11007', '薛皓仁', '1440112338', 'lk', '560', '116', '116', '116', '348');
INSERT INTO `t_rms_score` VALUES ('11008', '张伟宁', '1440112267', 'lk', '530', '117', '117', '117', '348');
INSERT INTO `t_rms_score` VALUES ('11009', '禤劲坤', '1440112169', 'lk', '531', '92', '92', '92', '348');
INSERT INTO `t_rms_score` VALUES ('11010', '陈志伟', '1440112348', 'lk', '532', '93', '93', '93', '348');
INSERT INTO `t_rms_score` VALUES ('11011', '陈馥珊', '1440112173', 'lk', '533', '94', '94', '94', '348');
INSERT INTO `t_rms_score` VALUES ('11012', '黎家荣', '1440112341', 'lk', '580', '95', '95', '95', '348');
INSERT INTO `t_rms_score` VALUES ('11013', '王宇瀚', '1440112330', 'lk', '535', '96', '96', '96', '348');
INSERT INTO `t_rms_score` VALUES ('11014', '陈剑滨', '1440112272', 'ms', '536', '97', '97', '97', '348');
INSERT INTO `t_rms_score` VALUES ('11015', '关建成', '1440112268', 'ms', '600', '130', '130', '130', '342');
INSERT INTO `t_rms_score` VALUES ('11016', '方钦涛', '1440112179', 'ms', '538', '131', '131', '131', '342');
INSERT INTO `t_rms_score` VALUES ('11017', '梁锦柏', '1440112317', 'ms', '539', '132', '132', '132', '342');
INSERT INTO `t_rms_score` VALUES ('11018', '王健', '1440112455', 'ms', '540', '133', '133', '133', '342');
INSERT INTO `t_rms_score` VALUES ('11019', 'huanggl', '312', 'lk', '100.0', '90.0', '90.0', '90.0', '370.0');
INSERT INTO `t_rms_score` VALUES ('11020', '黄光亮', '1440112321', 'lk', '192', '98', '92', '108', '490');

-- ----------------------------
-- Table structure for t_rms_studentinfo
-- ----------------------------
DROP TABLE IF EXISTS `t_rms_studentinfo`;
CREATE TABLE `t_rms_studentinfo` (
  `N_STUDENT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `S_CANDIDATE_NUM` varchar(255) DEFAULT NULL,
  `S_STUDENT_NAME` varchar(255) DEFAULT NULL,
  `N_AGE` int(11) DEFAULT NULL,
  `C_SEX` varchar(255) DEFAULT NULL,
  `S_NATIVE_PLACE` varchar(255) DEFAULT NULL,
  `S_ADDRESS` varchar(255) DEFAULT NULL,
  `S_CONTACT` varchar(20) DEFAULT NULL,
  `S_NOTICE_FLAG` varchar(2) DEFAULT '1',
  `S_EMAIL` varchar(50) DEFAULT NULL,
  `S_OTHER_CTACT` varchar(255) DEFAULT NULL,
  `S_ENROL_MAJOR` varchar(20) DEFAULT NULL,
  `S_POLITIIS` varchar(20) DEFAULT NULL,
  `S_DATA_FLAG` varchar(2) CHARACTER SET utf8mb4 DEFAULT '2',
  PRIMARY KEY (`N_STUDENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11021 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_rms_studentinfo
-- ----------------------------
INSERT INTO `t_rms_studentinfo` VALUES ('11001', '1440112301', '范贺伟', '23', '男', '广东', '广东省广州市从化区', '13956795677', null, '13447@qq.com', '13956795677', '080703', 'gqty', '1');
INSERT INTO `t_rms_studentinfo` VALUES ('11002', '6602552', '李杰波', '23', '男', '广东', '广东省广州市从化区', '18955830996', null, '13448@qq.com', '18955830996', '080901', 'zgybdy', '1');
INSERT INTO `t_rms_studentinfo` VALUES ('11003', '6602553', '唐轶俊', '23', '男', '广东', '广东省广州市从化区', '18133178185', null, '13449@qq.com', '18133178185', '130310', 'zgybdy', '1');
INSERT INTO `t_rms_studentinfo` VALUES ('11004', '6602554', '邓基金', '23', '男', '广东', '广东省广州市从化区', '13955874677', null, '13450@qq.com', '13955874677', '130504', 'zgybdy', '1');
INSERT INTO `t_rms_studentinfo` VALUES ('11005', '6602555', '吴锐锋', '23', '男', '广东', '广东省广州市从化区', '18905585575', null, '13451@qq.com', '18905585575', '130504', 'zgybdy', '1');
INSERT INTO `t_rms_studentinfo` VALUES ('11006', '6602556', '林启瑶', '23', '女', '广东', '广东省广州市从化区', '13705584907', null, '13452@qq.com', '13705584907', '130504', 'zgybdy', '1');
INSERT INTO `t_rms_studentinfo` VALUES ('11007', '6602557', '薛皓仁', '23', '男', '广东', '广东省广州市从化区', '15905588919', null, '13453@qq.com', '15905588919', '130508', 'zgybdy', '1');
INSERT INTO `t_rms_studentinfo` VALUES ('11008', '6602558', '张伟宁', '23', '男', '广东', '广东省广州市从化区', '15155801153', null, '13454@qq.com', '15155801153', '130508', 'zgdy', '1');
INSERT INTO `t_rms_studentinfo` VALUES ('11009', '6602559', '禤劲坤', '23', '男', '广东', '广东省广州市从化区', '15576873918', null, '13455@qq.com', '15576873918', '130508', 'zgdy', '1');
INSERT INTO `t_rms_studentinfo` VALUES ('11010', '6602560', '陈志伟', '23', '男', '广东', '广东省广州市从化区', '15555851987', null, '13456@qq.com', '15555851987', '130508', 'zgdy', '1');
INSERT INTO `t_rms_studentinfo` VALUES ('11011', '6602561', '陈馥珊', '23', '女', '广东', '广东省广州市从化区', '15955161770', null, '13457@qq.com', '15955161770', '120201', 'gqty', '1');
INSERT INTO `t_rms_studentinfo` VALUES ('11012', '6602562', '黎家荣', '23', '男', '广东', '广东省广州市从化区', '13965581599', null, '13458@qq.com', '13965581599', '120201', 'gqty', '1');
INSERT INTO `t_rms_studentinfo` VALUES ('11013', '6602563', '王宇瀚', '23', '男', '广东', '广东省广州市从化区', '17094966825', null, '13459@qq.com', '17094966825', '120201', 'gqty', '1');
INSERT INTO `t_rms_studentinfo` VALUES ('11014', '6602564', '陈剑滨', '23', '男', '广东', '广东省广州市从化区', '15956858198', null, '13460@qq.com', '15956858198', '120201', 'gqty', '2');
INSERT INTO `t_rms_studentinfo` VALUES ('11015', '6602565', '关建成', '23', '男', '广东', '广东省广州市从化区', '15889211253', null, '13461@qq.com', '15889211253', '120201', 'qz', '2');
INSERT INTO `t_rms_studentinfo` VALUES ('11016', '6602566', '方钦涛', '23', '男', '广东', '广东省广州市从化区', '13856760993', null, '13462@qq.com', '13856760993', '120801', 'qz', '2');
INSERT INTO `t_rms_studentinfo` VALUES ('11017', '6602567', '梁锦柏', '23', '男', '广东', '广东省广州市从化区', '18096775755', null, '13463@qq.com', '18096775755', '120801', 'qz', '2');
INSERT INTO `t_rms_studentinfo` VALUES ('11018', '6602568', '王健', '23', '男', '广东', '广东省广州市从化区', '13913865213', null, '13464@qq.com', '13913865213', '120801', 'qz', '1');
INSERT INTO `t_rms_studentinfo` VALUES ('11019', '6602569', '黄光亮', '23', '男', '广东', '广东省广州市从化区', '15920842687', null, '13465@qq.com', '13822640837', '120801', 'zgybdy', '1');
INSERT INTO `t_rms_studentinfo` VALUES ('11020', '测试', '144011232180', '35', '男', '广东肇庆', '测试', '测试', null, '测试', '测试', '080907', 'zgybdy', '1');

-- ----------------------------
-- Function structure for fristPinyin
-- ----------------------------
DROP FUNCTION IF EXISTS `fristPinyin`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fristPinyin`(P_NAME VARCHAR(255)) RETURNS varchar(255) CHARSET utf8
BEGIN
    DECLARE V_RETURN VARCHAR(255);
    SET V_RETURN = ELT(INTERVAL(CONV(HEX(left(CONVERT(P_NAME USING gbk),1)),16,10), 
        0xB0A1,0xB0C5,0xB2C1,0xB4EE,0xB6EA,0xB7A2,0xB8C1,0xB9FE,0xBBF7, 
        0xBFA6,0xC0AC,0xC2E8,0xC4C3,0xC5B6,0xC5BE,0xC6DA,0xC8BB,
        0xC8F6,0xCBFA,0xCDDA,0xCEF4,0xD1B9,0xD4D1),    
    'A','B','C','D','E','F','G','H','J','K','L','M','N','O','P','Q','R','S','T','W','X','Y','Z');
    RETURN V_RETURN;
END
;;
DELIMITER ;
