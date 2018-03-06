/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50543
Source Host           : localhost:3306
Source Database       : recruitms

Target Server Type    : MYSQL
Target Server Version : 50543
File Encoding         : 65001

Date: 2018-03-06 17:21:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_rms_account
-- ----------------------------
DROP TABLE IF EXISTS `t_rms_account`;
CREATE TABLE `t_rms_account` (
  `N_ACN_NO` int(10) NOT NULL AUTO_INCREMENT,
  `S_USER_NO` varchar(20) NOT NULL COMMENT '账户ID',
  `S_USERNAME` varchar(50) NOT NULL COMMENT '账户名',
  `S_PASSWORD` varchar(255) NOT NULL COMMENT '密码',
  `S_USER_TYPE` varchar(2) DEFAULT '3' COMMENT '关联字典表：“USER_TYPE”',
  `D_RG_TIME` datetime DEFAULT NULL,
  `S_EXT_VALUE1` varchar(255) DEFAULT NULL COMMENT '扩展使用',
  PRIMARY KEY (`N_ACN_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='账户信息表';

-- ----------------------------
-- Records of t_rms_account
-- ----------------------------
INSERT INTO `t_rms_account` VALUES ('1', '1001', 'test', 'test', '3', null, null);
INSERT INTO `t_rms_account` VALUES ('2', '1002', 'admin', '111111', '3', '2018-03-02 18:17:13', null);

-- ----------------------------
-- Table structure for t_rms_attach
-- ----------------------------
DROP TABLE IF EXISTS `t_rms_attach`;
CREATE TABLE `t_rms_attach` (
  `N_ATTACH_ _NO` int(11) NOT NULL AUTO_INCREMENT COMMENT '附件ID',
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
  PRIMARY KEY (`N_ATTACH_ _NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文件表';

-- ----------------------------
-- Records of t_rms_attach
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='院系专业修改审核';

-- ----------------------------
-- Records of t_rms_auditinfo
-- ----------------------------
INSERT INTO `t_rms_auditinfo` VALUES ('1', '123', 'test1', 'test', 'test', 'sDeptCode', null, 'test1', '', '超级管理员', 'admin', '2018-03-04 13:52:34', null, '1', null, null);
INSERT INTO `t_rms_auditinfo` VALUES ('2', '123', 'test1', 'test', 'test', 'sFullName', null, 'test', '', '超级管理员', 'admin', '2018-03-04 13:52:34', null, '1', null, null);
INSERT INTO `t_rms_auditinfo` VALUES ('3', '123', 'test1', 'test', 'test', 'nDeptNo', null, '123', '', '超级管理员', 'admin', '2018-03-04 13:52:34', null, '1', null, null);
INSERT INTO `t_rms_auditinfo` VALUES ('4', '123', 'test1', 'test', 'test', 'sShortName', null, 'test', '', '超级管理员', 'admin', '2018-03-04 13:52:34', null, '1', null, null);
INSERT INTO `t_rms_auditinfo` VALUES ('5', '32', 'Test', 'Test', 'Test', 'cValidFlag', null, '2', '', 'admin', '1002', '2018-03-05 15:27:24', null, '1', null, null);
INSERT INTO `t_rms_auditinfo` VALUES ('6', '32', 'Test', 'Test', 'Test', 'sDeptCode', null, 'Test', 'Test2', 'admin', '1002', '2018-03-05 15:27:42', null, '1', null, null);
INSERT INTO `t_rms_auditinfo` VALUES ('7', '32', 'Test', 'Test', 'Test', 'cValidFlag', null, '2', '', 'admin', '1002', '2018-03-05 15:27:42', null, '1', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='院系专业表';

-- ----------------------------
-- Records of t_rms_department
-- ----------------------------
INSERT INTO `t_rms_department` VALUES ('1', '080706', '信工', '信息工程', 'rjgcx', '22000', '280', null, null, '大数据信息应用与开发方向，移动互联网与开发方向', '1');
INSERT INTO `t_rms_department` VALUES ('2', '080902', '软工', '软件工程', 'rjgcx', '22000', '360', null, null, '互联网金融应用于开发方向，软件测试技术方向、软件开发方向', '1');
INSERT INTO `t_rms_department` VALUES ('3', '080902-1', '软工（国际班）', '软件工程（国际班）', 'rjgcx', '29000', '30', null, null, '与英国哈德斯菲尔德大学、美国阿兰特国际大学合作开展学分户认项目，培养模式和学习费用见学院网站。', '1');
INSERT INTO `t_rms_department` VALUES ('4', '080903', '网工', '网络工程', 'wljsx', '22000', '278', null, null, '网络安全技术方向、网络传播与商务网站设计方向、网络多媒体方向、网络设计与管理方向', '1');
INSERT INTO `t_rms_department` VALUES ('5', '120102', '信息管理', '信息管理与信息系统', 'wljsx', '22000', '160', null, null, '信息系统开发方向、信息资源管理方向', '1');
INSERT INTO `t_rms_department` VALUES ('6', '080907', '智能科学与技术', '智能科学与技术', 'dzx', '22000', '95', null, null, null, '1');
INSERT INTO `t_rms_department` VALUES ('7', '080801', '自动化', '自动化', 'dzx', '22000', '110', null, null, '智能电子技术方向 限制色盲', '1');
INSERT INTO `t_rms_department` VALUES ('8', '080701', '电子信息工程', '电子信息工程', 'dzx', '22000', '176', null, null, null, '1');
INSERT INTO `t_rms_department` VALUES ('9', '080703', '通信工程', '通信工程', 'dzx', '22000', '100', null, null, null, '1');
INSERT INTO `t_rms_department` VALUES ('10', '080901', '计算机科学与技术', '计算机科学与技术', ' jsjx', '22000', '145', null, null, 'Web应用软件与开发', '1');
INSERT INTO `t_rms_department` VALUES ('11', '080905', '物联网工程', '物联网工程', 'jsjx', '22000', '155', null, null, null, '1');
INSERT INTO `t_rms_department` VALUES ('12', '080906', '数字媒体技术', '数字媒体技术', 'yxx', '22000', '148', null, null, '虚拟现实技术方向', '1');
INSERT INTO `t_rms_department` VALUES ('13', '130310', '动画', '动画', 'yxx', '25000', '146', null, null, '动漫设计与制作方向、虚拟现实艺术方向、游戏美术方向', '1');
INSERT INTO `t_rms_department` VALUES ('14', '050306', '网络与新媒体', '网络与新媒体', 'yxx', '22000', '90', null, null, '新媒体编辑与运营方向、新媒体设计与开发方向', '1');
INSERT INTO `t_rms_department` VALUES ('15', '130503', '环境设计', '环境设计', 'smmtx', '25000', '55', null, null, '室内设计方向', '1');
INSERT INTO `t_rms_department` VALUES ('16', '082803', '风景园林', '风景园林', 'smmtx', '25000', '90', null, null, '景观建筑数字设计方向', '1');
INSERT INTO `t_rms_department` VALUES ('17', '130502', '视觉传达设计', '视觉传达设计', 'smmtx', '25000', '60', null, null, '广告与平面设计', '1');
INSERT INTO `t_rms_department` VALUES ('18', '130504', '产品设计', '产品设计', 'smmtx', '25000', '60', null, null, '家居、家电与饰品设计与开发方向', '1');
INSERT INTO `t_rms_department` VALUES ('19', '130508', '数字媒体艺术', '数字媒体艺术', 'smmtx', '25000', '90', null, null, '多媒体设计与制作方向、数字影视制作方向', '1');
INSERT INTO `t_rms_department` VALUES ('20', '120402', '行政管理', '行政管理机', 'glx', '22000', '62', null, null, '企业行政管理方向', '1');
INSERT INTO `t_rms_department` VALUES ('21', '120601', '物流管理', '物流管理', 'glx', '22000', '59', null, null, '国际贸易与物流营运方向', '1');
INSERT INTO `t_rms_department` VALUES ('22', '120201', '工商管理', '工商管理', 'glx', '22000', '42', null, null, null, '1');
INSERT INTO `t_rms_department` VALUES ('23', '120202', '市场管理', '市场管理', 'glx', '22000', '60', null, null, null, '1');
INSERT INTO `t_rms_department` VALUES ('24', '120206', '人力资源管理', '人力资源管理', 'glx', '22000', '80', null, null, null, '1');
INSERT INTO `t_rms_department` VALUES ('25', '120801', '电子商务', '电子商务', 'gjjmx', '22000', '80', null, null, null, '1');
INSERT INTO `t_rms_department` VALUES ('26', '020401', '国际经济与贸易（国际班）', '国际经济与贸易（国际半班）', 'gjjmx', '29000', '30', null, null, '与英国哈德斯菲尔德大学、美国阿兰特国际大学合作开展学分户认项目，培养模式和学习费用见学院网站。', '1');
INSERT INTO `t_rms_department` VALUES ('27', '120204', '财务管理', '财务管理', 'ckx', '22000', '66', null, null, '投资与税收筹划方向', '1');
INSERT INTO `t_rms_department` VALUES ('28', '120203', '会计学', '会计学', 'ckx', '22000', '135', null, null, null, '1');
INSERT INTO `t_rms_department` VALUES ('29', '120203-1', '会计学（国际注册会计师）', '会计学（国际注册会计师）', 'ckx', '29000', '25', null, null, '引入ACCA国际注册会计师课程，将ACCA的F阶段课程嵌入培训方案，优秀学员可申请我院与英国北安普顿大学、BPP大学等合作院校的学分互认项目，培训模式和学习费用见网站', '1');
INSERT INTO `t_rms_department` VALUES ('30', '050201', '英语', '英语', 'wyx', '22000', '150', null, null, '翻译方向、商务英语方向', '2');
INSERT INTO `t_rms_department` VALUES ('31', '050207', '日语', '日语', 'wyx', '22000', '50', null, null, '商务日语方向', '1');
INSERT INTO `t_rms_department` VALUES ('32', 'Test', 'Test', 'Test', 'Test', '22000', '128', null, null, null, '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='字典表';

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

-- ----------------------------
-- Table structure for t_rms_qainfo
-- ----------------------------
DROP TABLE IF EXISTS `t_rms_qainfo`;
CREATE TABLE `t_rms_qainfo` (
  `N_QA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `S_SORT_NO` int(11) DEFAULT NULL COMMENT '排序',
  `S_QUESTION` varchar(255) DEFAULT NULL COMMENT '问题',
  `S_ANSWER` varchar(4000) DEFAULT NULL,
  `S_REMARK` varchar(255) DEFAULT NULL,
  `C_VALID_FLAG` char(2) DEFAULT '1' COMMENT ' 数据状态  1-有效、2-删除',
  `D_CREATE_TIME` datetime DEFAULT NULL,
  `S_CREATOR` varchar(255) DEFAULT NULL COMMENT '创建者',
  `S_CREATOR_NO` int(11) DEFAULT NULL,
  PRIMARY KEY (`N_QA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='答疑表';

-- ----------------------------
-- Records of t_rms_qainfo
-- ----------------------------
INSERT INTO `t_rms_qainfo` VALUES ('1', '1', 'Test2', 'Testas', 'Test', null, null, 'admin', null);

-- ----------------------------
-- Table structure for t_rms_recruitinfo
-- ----------------------------
DROP TABLE IF EXISTS `t_rms_recruitinfo`;
CREATE TABLE `t_rms_recruitinfo` (
  `N_STUDENT_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生ID',
  `S_CANDIDATE_NUM` varchar(50) NOT NULL COMMENT '准考证号',
  `S_STUDENT_NAME` varchar(255) NOT NULL COMMENT '学生姓名',
  `S_STUDENT_NO` varchar(255) DEFAULT NULL COMMENT '学生学号',
  `N_AGE` int(11) DEFAULT NULL COMMENT '年龄',
  `C_SEX` varchar(10) DEFAULT NULL COMMENT '性别',
  `S_ADDRESS` varchar(255) NOT NULL COMMENT '通讯地址',
  `S_CONTACT` varchar(20) NOT NULL COMMENT '联系方式',
  `S_EMAIL` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `S_OTHER_CTACT` varchar(20) DEFAULT NULL COMMENT '家属联系方式',
  `S_ENROL_MAJOR` varchar(20) DEFAULT NULL COMMENT '报考专业',
  `S_ADMITED_MAJOR` varchar(20) NOT NULL COMMENT '录取专业',
  `S_ADMITED_NO` int(11) DEFAULT NULL COMMENT '录取编号',
  `S_GRADE` varchar(20) NOT NULL COMMENT '所属年级',
  `S_POLITIIS` varchar(20) DEFAULT NULL COMMENT '政治面貌\r\n关联字典表：“POLITICAL_STATUS”\r\nzgdy-中共党员、zgybdy-中共预备党员、gqty-共青团员、qz-群众\r\n',
  `S_PAY_FLAG` char(1) DEFAULT NULL COMMENT '是否已缴费  0-未缴费，1-已缴费，2-已缴部分费用',
  `S_OPERATOR` varchar(50) DEFAULT NULL COMMENT '审核人',
  `S_OPERATOR_NO` varchar(50) DEFAULT NULL COMMENT '审核人NO',
  `D_OPERATE_TIME` datetime DEFAULT NULL COMMENT '审核时间',
  `S_STATUS` varchar(5) DEFAULT NULL COMMENT '审核状态 关联字典表“OPERATE_STATUS”\r\n1-待审核，2-审核通过，3-审核不通过',
  PRIMARY KEY (`N_STUDENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='新生信息表';

-- ----------------------------
-- Records of t_rms_recruitinfo
-- ----------------------------
INSERT INTO `t_rms_recruitinfo` VALUES ('1', 'Test1', 'Test2', 'Test', '23', null, 'Test', 'Test', 'Test', 'Test', 'Test', 'Test', null, 'Test', 'Test', '2', null, null, null, '2');
INSERT INTO `t_rms_recruitinfo` VALUES ('2', 'Test12', 'Test12', 'Test12', '23', null, 'Test12', 'Test', 'Test', 'Test', 'Test', 'Test', null, 'Test', 'Test', '2', null, null, null, '2');
INSERT INTO `t_rms_recruitinfo` VALUES ('3', 'Test123', 'Test12', 'Test12', '23', null, 'Test12', 'Test', 'Test', 'Test', 'Test', 'Test', null, 'Test', 'Test', '2', null, null, null, '2');
INSERT INTO `t_rms_recruitinfo` VALUES ('4', 'Test1234', 'Test12', 'Test12', '23', null, 'Test12', 'Test', 'Test', 'Test', 'Test', 'Test', null, 'Test', 'Test', '2', null, null, null, '2');

-- ----------------------------
-- Table structure for t_rms_score
-- ----------------------------
DROP TABLE IF EXISTS `t_rms_score`;
CREATE TABLE `t_rms_score` (
  `N_STUDENT_ID` int(11) NOT NULL COMMENT '学生ID 作为外键关联学生信息表',
  `S_STUDENT_NAME` varchar(50) DEFAULT NULL COMMENT '学生姓名',
  `S_STUDENT_NO` varchar(50) DEFAULT NULL COMMENT '学生学号',
  `S_SUBJECT_TYPE` varchar(50) DEFAULT NULL COMMENT '科目类型  关联字典表：“SUBJECT_TYPE”\r\nwk-文科类，lk-理科类，ms-美术类\r\n',
  `DB_SCORE` double(200,1) DEFAULT NULL COMMENT '综合科成绩',
  `DB_CHINSES` double(100,1) DEFAULT NULL COMMENT '语文',
  `DB_ENGLISH` double(100,1) DEFAULT NULL COMMENT '英语',
  `DB_MATH` double(100,1) DEFAULT NULL COMMENT '数学',
  `S_TOTAL_SCORE` varchar(800) DEFAULT NULL,
  PRIMARY KEY (`N_STUDENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生成绩表';

-- ----------------------------
-- Records of t_rms_score
-- ----------------------------
INSERT INTO `t_rms_score` VALUES ('1', 'Test', 'Test12', 'Test12', '80.0', '100.0', '100.0', '80.0', '360.0');

-- ----------------------------
-- Table structure for t_rms_studentinfo
-- ----------------------------
DROP TABLE IF EXISTS `t_rms_studentinfo`;
CREATE TABLE `t_rms_studentinfo` (
  `N_STUDENT_ID` int(10) NOT NULL AUTO_INCREMENT COMMENT '学生ID',
  `S_CANDIDATE_NUM` varchar(50) NOT NULL COMMENT '准考证号',
  `S_STUDENT_NAME` varchar(255) NOT NULL COMMENT '学生姓名',
  `N_AGE` int(10) DEFAULT NULL COMMENT '年龄',
  `C_SEX` char(6) DEFAULT NULL COMMENT '性别',
  `S_NATIVE_PLACE` varchar(50) DEFAULT NULL COMMENT '籍贯',
  `S_ADDRESS` varchar(4000) NOT NULL COMMENT '通讯地址',
  `S_CONTACT` varchar(20) NOT NULL COMMENT '联系方式',
  `S_EMAIL` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `S_OTHER_CTACT` varchar(255) DEFAULT NULL COMMENT '家属联系方式',
  `S_ENROL_MAJOR` varchar(20) DEFAULT NULL COMMENT '报考专业   关联院系专业表：T_RMS_DEPARTMENT',
  `S_POLITIIS` varchar(20) DEFAULT NULL COMMENT '关联字典表：“POLITICAL_STATUS”\r\nzgdy-中共党员、zgybdy-中共预备党员、gqty-共青团员、qz-群众\r\n',
  `S_DATA_FLAG` varchar(2) DEFAULT '1' COMMENT '数据状态 1-有效、2-删除',
  PRIMARY KEY (`N_STUDENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='考生信息表';

-- ----------------------------
-- Records of t_rms_studentinfo
-- ----------------------------
INSERT INTO `t_rms_studentinfo` VALUES ('1', 'Test12312', 'Test12', '23', null, null, 'Test12', 'Test', 'Test', 'Test', 'Test', 'Test', null);
