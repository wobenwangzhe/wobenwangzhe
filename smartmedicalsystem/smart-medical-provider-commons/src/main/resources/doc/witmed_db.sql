/*
 Navicat Premium Data Transfer

 Source Server         : MySQL_local
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : witmed_db

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 12/01/2022 20:47:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for emr_clinic
-- ----------------------------
DROP TABLE IF EXISTS `emr_clinic`;
CREATE TABLE `emr_clinic`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '病历号',
  `clinicNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '门诊号',
  `docName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '门（急）诊病历' COMMENT '文档标识-名称',
  `docCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '02' COMMENT '文档标识-类别代码',
  `docAdminOrgName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文档标识-管理机构名称',
  `docAdminOrgCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文档标识-管理机构组织机构代码（法人代码）',
  `docNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文档标识-号码',
  `docEffDate` datetime NULL DEFAULT NULL COMMENT '文档标识-生效日期',
  `docExpDate` datetime NULL DEFAULT NULL COMMENT '文档标识-失效日期',
  `markCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标识号-类别代码',
  `markNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标识号-号码',
  `markEffDate` datetime NULL DEFAULT NULL COMMENT '标识号-生效日期',
  `markExpDate` datetime NULL DEFAULT NULL COMMENT '标识号-失效日期',
  `markOrgName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标识号-提供标识的机构名称',
  `markObj` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名-标识对象',
  `markObjCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名-标识对象代码',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `patientCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '病人类型代码',
  `gender` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别代码',
  `age` int NULL DEFAULT NULL COMMENT '年龄（岁）',
  `nationality` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '国籍代码',
  `ethnic` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '民族代码',
  `marital` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '婚姻状况类别代码',
  `occupation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职业编码系统名称',
  `occCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职业代码',
  `education` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文化程度代码',
  `birthday` date NULL DEFAULT NULL COMMENT '出生日期',
  `birthplace` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '出生地',
  `workplace` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工作单位名称',
  `addrCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标识地址类别的代码',
  `province` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-省（自治区、直辖市）',
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-市（地区）',
  `county` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-县（区）',
  `countryside` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-乡（镇、街道办事处）',
  `village` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-村（街、路、弄等）',
  `doorNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-门牌号码',
  `zipcode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮政编码',
  `divisionCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '行政区划代码',
  `orgName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机构名称',
  `orgCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机构组织机构代码',
  `orgLeader` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机构负责人（法人）',
  `orgAddress` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机构地址',
  `deptName` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '科室名称',
  `orgRole` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机构角色',
  `orgRoleCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机构角色代码',
  `servName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者姓名',
  `servRole` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者职责（角色）',
  `servRoleCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者职责（角色）代码',
  `servtechTitle` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者专业技术职务',
  `servEdu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者学历',
  `servMajor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者所学专业',
  `servTechRank` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者专业技术职务等级',
  `servPost` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者职务',
  `mainSuit` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主诉',
  `symptom` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '症状代码编码体系名称',
  `sxCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '症状代码',
  `sxBeginTime` datetime NULL DEFAULT NULL COMMENT '症状开始日期时间',
  `sxEndTime` datetime NULL DEFAULT NULL COMMENT '症状停止日期时间',
  `sxDesc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '症状描述',
  `sxAcuteLevel` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '症状急性程度代码',
  `firstVisit` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '初诊标志',
  `physCheckCat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '观察-类别',
  `physCheckCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '观察-类别代码',
  `physCheckItem` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '观察项目名称',
  `physCheckItemCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '观察-项目代码',
  `physCheckResultDesc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '观察-结果描述',
  `physCheckResult` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '观察-结果(数值)',
  `physCheckUnit` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '观察-计量单位',
  `physCheckResultCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '观察-结果代码',
  `dxOrgName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊断机构名称',
  `dxDate` datetime NULL DEFAULT NULL COMMENT '诊断日期',
  `dxCat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊断类别',
  `dxCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊断类别代码',
  `dxCisCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊断顺位（从属关系）代码',
  `disease` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '疾病名称',
  `diseaseCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '疾病代码',
  `dxAccording` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊断依据',
  `dxAccordingCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊断依据代码',
  `planCheck` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '拟做的检查',
  `trtSchPlan` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '今后治疗方案',
  `followMark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '随访标志',
  `followInr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '随访间隔（随诊期限）',
  `docAdvice` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '医嘱',
  `spRemark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '特别注意事项',
  `trtProcName` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊疗过程名称',
  `trtProcDesc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊疗过程描述',
  `mrStatus` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '病历状态：0-待接诊，1-诊疗完毕，2-未接诊，3-接诊后转诊/院，4-挂号错误',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '门（急）诊病历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_clinic
-- ----------------------------

-- ----------------------------
-- Table structure for emr_clinic_advice
-- ----------------------------
DROP TABLE IF EXISTS `emr_clinic_advice`;
CREATE TABLE `emr_clinic_advice`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrClinic` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属门（急）诊病历',
  `startDate` datetime NULL DEFAULT NULL COMMENT '医嘱开嘱日期时间',
  `stopDate` datetime NULL DEFAULT NULL COMMENT '长期医嘱停嘱日期时间',
  `execDate` datetime NULL DEFAULT NULL COMMENT '医嘱执行日期时间',
  `execDateCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '医嘱执行时间类别代码',
  `execCnlDate` datetime NULL DEFAULT NULL COMMENT '医嘱取消日期时间',
  `adviceCat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '医嘱类别',
  `adviceDetail` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '医嘱内容',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '门（急）诊病历医嘱详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_clinic_advice
-- ----------------------------

-- ----------------------------
-- Table structure for emr_clinic_allergy
-- ----------------------------
DROP TABLE IF EXISTS `emr_clinic_allergy`;
CREATE TABLE `emr_clinic_allergy`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrClinic` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属门（急）诊病历',
  `history` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '过敏史',
  `allergen` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '过敏原',
  `allSx` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '过敏症状',
  `allSxCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '过敏症状代码',
  `allergenCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '过敏原代码',
  `medicant` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '过敏药物名称',
  `statusCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '过敏病情状态代码',
  `markCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '过敏史标识代码',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '门（急）诊病历过敏史详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_clinic_allergy
-- ----------------------------

-- ----------------------------
-- Table structure for emr_clinic_check_apply
-- ----------------------------
DROP TABLE IF EXISTS `emr_clinic_check_apply`;
CREATE TABLE `emr_clinic_check_apply`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrClinic` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属门（急）诊病历',
  `checkOrg` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检查申请单—机构（科室）',
  `checkNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检查申请单—编号',
  `checkReason` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检查申请检查原因',
  `applyDate` datetime NULL DEFAULT NULL COMMENT '检查申请日期',
  `attention` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检查申请注意事项',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '门（急）诊病历检查申请详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_clinic_check_apply
-- ----------------------------

-- ----------------------------
-- Table structure for emr_clinic_check_report
-- ----------------------------
DROP TABLE IF EXISTS `emr_clinic_check_report`;
CREATE TABLE `emr_clinic_check_report`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrClinic` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属门（急）诊病历',
  `checkOrg` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检查申请单—机构（科室）',
  `checkNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检查申请单—编号',
  `objResult` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检查报告结果-客观所见',
  `subResult` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检查报告结果-主观提示',
  `checkDate` datetime NULL DEFAULT NULL COMMENT '检查日期',
  `reportDate` datetime NULL DEFAULT NULL COMMENT '检查报告日期',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检查报告备注',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '门（急）诊病历检查报告详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_clinic_check_report
-- ----------------------------

-- ----------------------------
-- Table structure for emr_clinic_comm
-- ----------------------------
DROP TABLE IF EXISTS `emr_clinic_comm`;
CREATE TABLE `emr_clinic_comm`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrClinic` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属门（急）诊病历',
  `phoneCat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话-类别',
  `phoneCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话-类别代码',
  `phoneNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话-号码',
  `email` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电子邮件地址',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '门（急）诊病历通信详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_clinic_comm
-- ----------------------------

-- ----------------------------
-- Table structure for emr_clinic_obs
-- ----------------------------
DROP TABLE IF EXISTS `emr_clinic_obs`;
CREATE TABLE `emr_clinic_obs`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '病历号',
  `clinicNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '门诊号',
  `docName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '急诊留观病历' COMMENT '文档标识-名称',
  `docCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '99' COMMENT '文档标识-类别代码',
  `docAdminOrgName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文档标识-管理机构名称',
  `docAdminOrgCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文档标识-管理机构组织机构代码（法人代码）',
  `docNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文档标识-号码',
  `docEffDate` datetime NULL DEFAULT NULL COMMENT '文档标识-生效日期',
  `docExpDate` datetime NULL DEFAULT NULL COMMENT '文档标识-失效日期',
  `markCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标识号-类别代码',
  `markNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标识号-号码',
  `markEffDate` datetime NULL DEFAULT NULL COMMENT '标识号-生效日期',
  `markExpDate` datetime NULL DEFAULT NULL COMMENT '标识号-失效日期',
  `markOrgName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标识号-提供标识的机构名称',
  `markObj` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名-标识对象',
  `markObjCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名-标识对象代码',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `patientCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '病人类型代码',
  `gender` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别代码',
  `age` int NULL DEFAULT NULL COMMENT '年龄（岁）',
  `nationality` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '国籍代码',
  `ethnic` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '民族代码',
  `marital` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '婚姻状况类别代码',
  `occupation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职业编码系统名称',
  `occCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职业代码',
  `education` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文化程度代码',
  `birthday` date NULL DEFAULT NULL COMMENT '出生日期',
  `birthplace` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '出生地',
  `workplace` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工作单位名称',
  `addrCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标识地址类别的代码',
  `province` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-省（自治区、直辖市）',
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-市（地区）',
  `county` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-县（区）',
  `countryside` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-乡（镇、街道办事处）',
  `village` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-村（街、路、弄等）',
  `doorNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-门牌号码',
  `zipcode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮政编码',
  `divisionCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '行政区划代码',
  `orgName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机构名称',
  `orgCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机构组织机构代码',
  `orgLeader` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机构负责人（法人）',
  `orgAddress` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机构地址',
  `deptName` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '科室名称',
  `orgRole` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机构角色',
  `orgRoleCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机构角色代码',
  `servName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者姓名',
  `servRole` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者职责（角色）',
  `servRoleCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者职责（角色）代码',
  `servtechTitle` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者专业技术职务',
  `servEdu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者学历',
  `servMajor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者所学专业',
  `servTechRank` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者专业技术职务等级',
  `servPost` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者职务',
  `mainSuit` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主诉',
  `symptom` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '症状代码编码体系名称',
  `sxCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '症状代码',
  `sxBeginTime` datetime NULL DEFAULT NULL COMMENT '症状开始日期时间',
  `sxEndTime` datetime NULL DEFAULT NULL COMMENT '症状停止日期时间',
  `sxDesc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '症状描述',
  `physCheckCat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '观察-类别',
  `physCheckCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '观察-类别代码',
  `physCheckItem` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '观察项目名称',
  `physCheckItemCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '观察-项目代码',
  `physCheckResultDesc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '观察-结果描述',
  `physCheckResult` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '观察-结果(数值)',
  `physCheckUnit` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '观察-计量单位',
  `physCheckResultCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '观察-结果代码',
  `personRisk` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '个人史危险因素代码',
  `personCheckCatName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '个人史观察项目类目名称',
  `personCheckResult` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '个人史观察结果',
  `dxOrgName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊断机构名称',
  `dxDate` datetime NULL DEFAULT NULL COMMENT '诊断日期',
  `dxCat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊断类别',
  `dxCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊断类别代码',
  `dxCisCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊断顺位（从属关系）代码',
  `disease` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '疾病名称',
  `diseaseCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '疾病代码',
  `dxAccording` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊断依据',
  `dxAccordingCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊断依据代码',
  `proRecordCat` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '病程记录类别',
  `proRecordDetail` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '病程记录内容',
  `trtCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '治疗类别代码',
  `mrStatus` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '病历状态：0-待接诊，1-诊疗完毕，2-未接诊，3-接诊后转诊/院，4-挂号错误',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '急诊留观病历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_clinic_obs
-- ----------------------------

-- ----------------------------
-- Table structure for emr_clinic_obs_advice
-- ----------------------------
DROP TABLE IF EXISTS `emr_clinic_obs_advice`;
CREATE TABLE `emr_clinic_obs_advice`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrClinicObs` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属急诊留观病历',
  `startDate` datetime NULL DEFAULT NULL COMMENT '医嘱开嘱日期时间',
  `stopDate` datetime NULL DEFAULT NULL COMMENT '长期医嘱停嘱日期时间',
  `execDate` datetime NULL DEFAULT NULL COMMENT '医嘱执行日期时间',
  `execDateCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '医嘱执行时间类别代码',
  `execCnlDate` datetime NULL DEFAULT NULL COMMENT '医嘱取消日期时间',
  `adviceCat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '医嘱类别',
  `adviceDetail` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '医嘱内容',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '急诊留观病历医嘱详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_clinic_obs_advice
-- ----------------------------

-- ----------------------------
-- Table structure for emr_clinic_obs_allergy
-- ----------------------------
DROP TABLE IF EXISTS `emr_clinic_obs_allergy`;
CREATE TABLE `emr_clinic_obs_allergy`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrClinicObs` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属急诊留观病历',
  `history` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '过敏史',
  `allergen` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '过敏原',
  `allSx` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '过敏症状',
  `allSxCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '过敏症状代码',
  `allergenCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '过敏原代码',
  `medicant` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '过敏药物名称',
  `statusCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '过敏病情状态代码',
  `markCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '过敏史标识代码',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '急诊留观病历过敏史详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_clinic_obs_allergy
-- ----------------------------

-- ----------------------------
-- Table structure for emr_clinic_obs_comm
-- ----------------------------
DROP TABLE IF EXISTS `emr_clinic_obs_comm`;
CREATE TABLE `emr_clinic_obs_comm`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrClinicObs` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属急诊留观病历',
  `phoneCat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话-类别',
  `phoneCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话-类别代码',
  `phoneNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话-号码',
  `email` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电子邮件地址',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '急诊留观病历通信详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_clinic_obs_comm
-- ----------------------------

-- ----------------------------
-- Table structure for emr_clinic_obs_dxtrt
-- ----------------------------
DROP TABLE IF EXISTS `emr_clinic_obs_dxtrt`;
CREATE TABLE `emr_clinic_obs_dxtrt`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrClinicObs` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属急诊留观病历',
  `dxtrtName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊疗过程名称',
  `dxtrtDesc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊疗过程描述',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '急诊留观病历诊疗详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_clinic_obs_dxtrt
-- ----------------------------

-- ----------------------------
-- Table structure for emr_clinic_obs_family
-- ----------------------------
DROP TABLE IF EXISTS `emr_clinic_obs_family`;
CREATE TABLE `emr_clinic_obs_family`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrClinicObs` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属急诊留观病历',
  `typeName` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '家族史观察项目类目名称',
  `result` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '家族史观察结果',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '急诊留观病历家族史详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_clinic_obs_family
-- ----------------------------

-- ----------------------------
-- Table structure for emr_clinic_obs_past
-- ----------------------------
DROP TABLE IF EXISTS `emr_clinic_obs_past`;
CREATE TABLE `emr_clinic_obs_past`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrClinicObs` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属急诊留观病历',
  `itemName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '既往观察-项目名称',
  `itemCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '既往观察-项目分类代码',
  `itemCodeName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '既往观察-项目代码名称',
  `itemCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '既往观察-项目代码',
  `methodCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '既往观察-方法代码',
  `result` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '既往观察-结果',
  `pastTypeName` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '既往史观察项目类目名称',
  `pastResult` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '既往史观察结果',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '急诊留观病历既往史详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_clinic_obs_past
-- ----------------------------

-- ----------------------------
-- Table structure for emr_clinic_obs_present
-- ----------------------------
DROP TABLE IF EXISTS `emr_clinic_obs_present`;
CREATE TABLE `emr_clinic_obs_present`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrClinicObs` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属急诊留观病历',
  `onsetDate` datetime NULL DEFAULT NULL COMMENT '起病时间',
  `onsetDesc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '起病情况描述',
  `sxOnsetReason` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '症状开始原因/诱因',
  `sxCh` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '症状特点',
  `sxAcc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '伴随症状',
  `pastTrt` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '本疾病既往诊疗经过',
  `baseTrt` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '基础疾病诊疗情况',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '急诊留观病历现病史详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_clinic_obs_present
-- ----------------------------

-- ----------------------------
-- Table structure for emr_clinic_obs_treatment
-- ----------------------------
DROP TABLE IF EXISTS `emr_clinic_obs_treatment`;
CREATE TABLE `emr_clinic_obs_treatment`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrClinicObs` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属急诊留观病历',
  `planCheck` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '拟做的检查',
  `trtSchPlan` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '今后治疗方案',
  `followMark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '随访标志',
  `followInr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '随访间隔（随诊期限）',
  `docAdvice` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '医嘱',
  `spRemark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '特别注意事项',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '急诊留观病历治疗详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_clinic_obs_treatment
-- ----------------------------

-- ----------------------------
-- Table structure for emr_clinic_past
-- ----------------------------
DROP TABLE IF EXISTS `emr_clinic_past`;
CREATE TABLE `emr_clinic_past`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrClinic` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属门（急）诊病历',
  `itemName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '既往观察-项目名称',
  `itemCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '既往观察-项目分类代码',
  `itemCodeName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '既往观察-项目代码名称',
  `itemCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '既往观察-项目代码',
  `methodCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '既往观察-方法代码',
  `result` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '既往观察-结果',
  `pastTypeName` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '既往史观察项目类目名称',
  `pastResult` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '既往史观察结果',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '门（急）诊病历既往史详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_clinic_past
-- ----------------------------

-- ----------------------------
-- Table structure for emr_clinic_present
-- ----------------------------
DROP TABLE IF EXISTS `emr_clinic_present`;
CREATE TABLE `emr_clinic_present`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrClinic` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属门（急）诊病历',
  `onsetDate` datetime NULL DEFAULT NULL COMMENT '起病时间',
  `onsetDesc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '起病情况描述',
  `sxOnsetReason` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '症状开始原因/诱因',
  `sxCh` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '症状特点',
  `sxAcc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '伴随症状',
  `pastTrt` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '本疾病既往诊疗经过',
  `baseTrt` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '基础疾病诊疗情况',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '门（急）诊病历现病史详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_clinic_present
-- ----------------------------

-- ----------------------------
-- Table structure for emr_clinic_wm_rx
-- ----------------------------
DROP TABLE IF EXISTS `emr_clinic_wm_rx`;
CREATE TABLE `emr_clinic_wm_rx`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '病历号',
  `clinicNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '门诊号',
  `docName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '西医处方' COMMENT '文档标识-名称',
  `docCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '03' COMMENT '文档标识-类别代码',
  `docAdminOrgName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文档标识-管理机构名称',
  `docAdminOrgCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文档标识-管理机构组织机构代码（法人代码）',
  `docNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文档标识-号码',
  `docEffDate` datetime NULL DEFAULT NULL COMMENT '文档标识-生效日期',
  `docExpDate` datetime NULL DEFAULT NULL COMMENT '文档标识-失效日期',
  `markCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标识号-类别代码',
  `markNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标识号-号码',
  `markEffDate` datetime NULL DEFAULT NULL COMMENT '标识号-生效日期',
  `markExpDate` datetime NULL DEFAULT NULL COMMENT '标识号-失效日期',
  `markOrgName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标识号-提供标识的机构名称',
  `markObj` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名-标识对象',
  `markObjCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名-标识对象代码',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `patientCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '病人类型代码',
  `gender` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别代码',
  `age` int NULL DEFAULT NULL COMMENT '年龄（岁）',
  `nationality` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '国籍代码',
  `ethnic` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '民族代码',
  `marital` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '婚姻状况类别代码',
  `occupation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职业编码系统名称',
  `occCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职业代码',
  `education` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文化程度代码',
  `birthday` date NULL DEFAULT NULL COMMENT '出生日期',
  `birthplace` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '出生地',
  `workplace` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工作单位名称',
  `addrCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标识地址类别的代码',
  `province` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-省（自治区、直辖市）',
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-市（地区）',
  `county` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-县（区）',
  `countryside` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-乡（镇、街道办事处）',
  `village` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-村（街、路、弄等）',
  `doorNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-门牌号码',
  `zipcode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮政编码',
  `divisionCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '行政区划代码',
  `treatment` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '医疗待遇名称',
  `treatmentCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '医疗待遇代码',
  `orgName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机构名称',
  `orgCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机构组织机构代码',
  `orgLeader` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机构负责人（法人）',
  `orgAddress` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机构地址',
  `deptName` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '科室名称',
  `orgRole` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机构角色',
  `orgRoleCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机构角色代码',
  `servName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者姓名',
  `servRole` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者职责（角色）',
  `servRoleCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者职责（角色）代码',
  `servtechTitle` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者专业技术职务',
  `servEdu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者学历',
  `servMajor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者所学专业',
  `servTechRank` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者专业技术职务等级',
  `servPost` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者职务',
  `eventName` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '卫生事件(动作)名称',
  `eventCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '事件分类代码',
  `eventStartDate` datetime NULL DEFAULT NULL COMMENT '事件开始时间',
  `eventAddr` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '事件发生地点',
  `eventPart` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '事件参与方',
  `eventReason` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '事件发生原因',
  `eventResult` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '事件结局',
  `observeCat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '观察-类别',
  `observeCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '观察-类别代码',
  `observeItem` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '观察项目名称',
  `observeItemCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '观察-项目代码',
  `observeResultDesc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '观察-结果描述',
  `dxOrgName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊断机构名称',
  `dxDate` datetime NULL DEFAULT NULL COMMENT '诊断日期',
  `dxCat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊断类别',
  `dxCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊断类别代码',
  `dxCisCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊断顺位（从属关系）代码',
  `disease` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '疾病名称',
  `diseaseCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '疾病代码',
  `dxAccording` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊断依据',
  `dxAccordingCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊断依据代码',
  `trtProcName` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊疗过程名称',
  `trtProcDesc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊疗过程描述',
  `mrStatus` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '病历状态：0-待接诊，1-诊疗完毕，2-未接诊，3-接诊后转诊/院，4-挂号错误',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '门（急）诊西医处方信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_clinic_wm_rx
-- ----------------------------

-- ----------------------------
-- Table structure for emr_clinic_wm_rx_comm
-- ----------------------------
DROP TABLE IF EXISTS `emr_clinic_wm_rx_comm`;
CREATE TABLE `emr_clinic_wm_rx_comm`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrClinicRx` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '门（急）诊西医处方',
  `phoneCat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话-类别',
  `phoneCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话-类别代码',
  `phoneNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话-号码',
  `email` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电子邮件地址',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '门（急）诊西医处方通信详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_clinic_wm_rx_comm
-- ----------------------------

-- ----------------------------
-- Table structure for emr_clinic_wm_rx_contact
-- ----------------------------
DROP TABLE IF EXISTS `emr_clinic_wm_rx_contact`;
CREATE TABLE `emr_clinic_wm_rx_contact`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrClinicRx` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '门（急）诊西医处方',
  `markCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标识号-类别代码',
  `markNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标识号-号码',
  `markEffDate` datetime NULL DEFAULT NULL COMMENT '标识号-生效日期',
  `markOrgName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标识号-提供标识的机构名称',
  `markObj` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名-标识对象',
  `markObjCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名-标识对象代码',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '门（急）诊西医处方联系人详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_clinic_wm_rx_contact
-- ----------------------------

-- ----------------------------
-- Table structure for emr_clinic_wm_rx_ins
-- ----------------------------
DROP TABLE IF EXISTS `emr_clinic_wm_rx_ins`;
CREATE TABLE `emr_clinic_wm_rx_ins`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrClinicRx` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '门（急）诊西医处方',
  `insCat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '医疗保险-类别',
  `insCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '医疗保险-类别代码',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '门（急）诊西医处方医保详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_clinic_wm_rx_ins
-- ----------------------------

-- ----------------------------
-- Table structure for emr_clinic_wm_rx_med
-- ----------------------------
DROP TABLE IF EXISTS `emr_clinic_wm_rx_med`;
CREATE TABLE `emr_clinic_wm_rx_med`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrClinicRx` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '门（急）诊西医处方',
  `medUsage` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药物用法',
  `usageRate` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药物使用-频率',
  `medUnit` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药物使用-剂量单位',
  `perDosage` decimal(10, 2) NULL DEFAULT NULL COMMENT '药物使用-次剂量',
  `totalDosage` decimal(10, 2) NULL DEFAULT NULL COMMENT '药物使用-总剂量',
  `wayCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药物使用-途径代码',
  `medName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药物名称',
  `dosageForm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药物剂型代码',
  `medCat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药物类型',
  `medNameCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药物名称代码',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '门（急）诊西医处方用药详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_clinic_wm_rx_med
-- ----------------------------

-- ----------------------------
-- Table structure for emr_referral_comm
-- ----------------------------
DROP TABLE IF EXISTS `emr_referral_comm`;
CREATE TABLE `emr_referral_comm`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrReferral` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属转诊（院）记录',
  `phoneCat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话-类别',
  `phoneCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话-类别代码',
  `phoneNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话-号码',
  `email` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电子邮件地址',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '转诊（院）记录通信详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_referral_comm
-- ----------------------------

-- ----------------------------
-- Table structure for emr_referral_hospital
-- ----------------------------
DROP TABLE IF EXISTS `emr_referral_hospital`;
CREATE TABLE `emr_referral_hospital`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrReferral` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属转诊（院）记录',
  `orgName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机构名称',
  `orgCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机构组织机构代码',
  `orgLeader` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机构负责人（法人）',
  `orgAddress` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机构地址',
  `deptName` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '科室名称',
  `orgRole` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机构角色',
  `orgRoleCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机构角色代码',
  `servName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者姓名',
  `servRole` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者职责（角色）',
  `servRoleCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者职责（角色）代码',
  `servtechTitle` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者专业技术职务',
  `servEdu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者学历',
  `servMajor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者所学专业',
  `servTechRank` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者专业技术职务等级',
  `servPost` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者职务',
  `referralMark` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '转入转出标记：0-转出，1-转入',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '转诊（院）记录转入转出医院科室情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_referral_hospital
-- ----------------------------

-- ----------------------------
-- Table structure for emr_referral_record
-- ----------------------------
DROP TABLE IF EXISTS `emr_referral_record`;
CREATE TABLE `emr_referral_record`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '病历号',
  `clinicNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '门诊号',
  `docName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文档标识-名称',
  `docCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文档标识-类别代码',
  `docAdminOrgName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文档标识-管理机构名称',
  `docAdminOrgCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文档标识-管理机构组织机构代码（法人代码）',
  `docNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文档标识-号码',
  `docEffDate` datetime NULL DEFAULT NULL COMMENT '文档标识-生效日期',
  `docExpDate` datetime NULL DEFAULT NULL COMMENT '文档标识-失效日期',
  `markCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标识号-类别代码',
  `markNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标识号-号码',
  `markEffDate` datetime NULL DEFAULT NULL COMMENT '标识号-生效日期',
  `markExpDate` datetime NULL DEFAULT NULL COMMENT '标识号-失效日期',
  `markOrgName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标识号-提供标识的机构名称',
  `markObj` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名-标识对象',
  `markObjCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名-标识对象代码',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `patientCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '病人类型代码',
  `gender` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别代码',
  `age` int NULL DEFAULT NULL COMMENT '年龄（岁）',
  `nationality` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '国籍代码',
  `ethnic` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '民族代码',
  `marital` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '婚姻状况类别代码',
  `occupation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职业编码系统名称',
  `occCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职业代码',
  `education` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文化程度代码',
  `birthday` date NULL DEFAULT NULL COMMENT '出生日期',
  `birthplace` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '出生地',
  `workplace` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工作单位名称',
  `addrCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标识地址类别的代码',
  `province` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-省（自治区、直辖市）',
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-市（地区）',
  `county` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-县（区）',
  `countryside` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-乡（镇、街道办事处）',
  `village` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-村（街、路、弄等）',
  `doorNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-门牌号码',
  `zipcode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮政编码',
  `divisionCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '行政区划代码',
  `eventName` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '卫生事件(动作)名称',
  `eventStartDate` datetime NULL DEFAULT NULL COMMENT '事件开始时间',
  `eventEndDate` datetime NULL DEFAULT NULL COMMENT '事件结束时间',
  `eventAddr` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '事件发生地点',
  `eventReason` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '事件发生原因',
  `observeCat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '观察-类别',
  `observeCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '观察-类别代码',
  `observeItem` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '观察项目名称',
  `observeItemCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '观察-项目代码',
  `observeResultDesc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '观察-结果描述',
  `dxOrgName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊断机构名称',
  `dxDate` datetime NULL DEFAULT NULL COMMENT '诊断日期',
  `dxCat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊断类别',
  `dxCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊断类别代码',
  `dxCisCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊断顺位（从属关系）代码',
  `disease` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '疾病名称',
  `diseaseCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '疾病代码',
  `dxAccording` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊断依据',
  `dxAccordingCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊断依据代码',
  `trtProcName` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊疗过程名称',
  `trtProcDesc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊疗过程描述',
  `mrStatus` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '病历状态：0-待接诊，1-诊疗完毕，2-未接诊，3-接诊后转诊/院，4-挂号错误',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '转诊（院）记录信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_referral_record
-- ----------------------------

-- ----------------------------
-- Table structure for emr_resume
-- ----------------------------
DROP TABLE IF EXISTS `emr_resume`;
CREATE TABLE `emr_resume`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '病历号',
  `clinicNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '门诊号',
  `docName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '病历概要' COMMENT '文档标识-名称',
  `docCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '01' COMMENT '文档标识-类别代码',
  `docAdminOrgName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文档标识-管理机构名称',
  `docAdminOrgCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文档标识-管理机构组织机构代码（法人代码）',
  `docNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文档标识-号码',
  `docEffDate` datetime NULL DEFAULT NULL COMMENT '文档标识-生效日期',
  `docExpDate` datetime NULL DEFAULT NULL COMMENT '文档标识-失效日期',
  `markCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标识号-类别代码',
  `markNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标识号-号码',
  `markEffDate` datetime NULL DEFAULT NULL COMMENT '标识号-生效日期',
  `markExpDate` datetime NULL DEFAULT NULL COMMENT '标识号-失效日期',
  `markOrgName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标识号-提供标识的机构名称',
  `markObj` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名-标识对象',
  `markObjCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名-标识对象代码',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `patientCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '病人类型代码',
  `aboBlood` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'ABO血型',
  `rhBlood` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'RH血型',
  `gender` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别代码',
  `age` int NULL DEFAULT NULL COMMENT '年龄（岁）',
  `nationality` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '国籍代码',
  `ethnic` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '民族代码',
  `marital` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '婚姻状况类别代码',
  `occupation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职业编码系统名称',
  `occCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职业代码',
  `education` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文化程度代码',
  `birthday` date NULL DEFAULT NULL COMMENT '出生日期',
  `birthplace` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '出生地',
  `workplace` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工作单位名称',
  `addrCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标识地址类别的代码',
  `province` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-省（自治区、直辖市）',
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-市（地区）',
  `county` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-县（区）',
  `countryside` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-乡（镇、街道办事处）',
  `village` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-村（街、路、弄等）',
  `doorNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-门牌号码',
  `zipcode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮政编码',
  `divisionCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '行政区划代码',
  `treatment` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '医疗待遇名称',
  `treatmentCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '医疗待遇代码',
  `eventName` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '卫生事件(动作)名称',
  `eventCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '事件分类代码',
  `eventStartDate` datetime NULL DEFAULT NULL COMMENT '事件开始时间',
  `eventAddr` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '事件发生地点',
  `eventPart` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '事件参与方',
  `eventReason` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '事件发生原因',
  `eventResult` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '事件结局',
  `mrStatus` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '病历状态：0-待接诊，1-诊疗完毕，2-未接诊，3-接诊后转诊/院，4-挂号错误',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '病历概要数据信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_resume
-- ----------------------------

-- ----------------------------
-- Table structure for emr_resume_comm
-- ----------------------------
DROP TABLE IF EXISTS `emr_resume_comm`;
CREATE TABLE `emr_resume_comm`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrResume` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属病历概要数据',
  `phoneCat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话-类别',
  `phoneCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话-类别代码',
  `phoneNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话-号码',
  `email` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电子邮件地址',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '病历概要数据通信详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_resume_comm
-- ----------------------------

-- ----------------------------
-- Table structure for emr_resume_contact
-- ----------------------------
DROP TABLE IF EXISTS `emr_resume_contact`;
CREATE TABLE `emr_resume_contact`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrResume` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属病历概要数据',
  `markCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标识号-类别代码',
  `markNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标识号-号码',
  `markEffDate` datetime NULL DEFAULT NULL COMMENT '标识号-生效日期',
  `markOrgName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标识号-提供标识的机构名称',
  `markObj` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名-标识对象',
  `markObjCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名-标识对象代码',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '病历概要数据联系人详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_resume_contact
-- ----------------------------

-- ----------------------------
-- Table structure for emr_resume_disease
-- ----------------------------
DROP TABLE IF EXISTS `emr_resume_disease`;
CREATE TABLE `emr_resume_disease`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrResume` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属病历概要数据',
  `history` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '既往疾病史',
  `mentalDxName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '既往精神类疾病诊断名称',
  `diseaseName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '既往疾病名称',
  `diseaseCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '既往疾病代码',
  `diseaseDxOrg` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '既往疾病诊断机构',
  `dxOrgLevelCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '既往疾病诊断机构级别代码',
  `diseaseDxTime` datetime NULL DEFAULT NULL COMMENT '既往疾病诊断时间',
  `diseaseStatus` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '疾病当前状态代码',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '病历概要数据疾病（外伤）史详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_resume_disease
-- ----------------------------

-- ----------------------------
-- Table structure for emr_resume_expense
-- ----------------------------
DROP TABLE IF EXISTS `emr_resume_expense`;
CREATE TABLE `emr_resume_expense`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrResume` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属病历概要数据',
  `expClinicCat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '门诊费用-分类',
  `expClinicCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '门诊费用-分类代码',
  `clinicAmount` decimal(10, 2) NULL DEFAULT NULL COMMENT '门诊费用-金额（元/人民币）',
  `clinicPayTypeCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '门诊费用-支付方式代码',
  `hospExpCat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '住院费用-分类',
  `hospExpCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '住院费用-分类代码',
  `hospAmount` decimal(10, 2) NULL DEFAULT NULL COMMENT '住院费用-金额（元/人民币）',
  `personAmount` decimal(10, 2) NULL DEFAULT NULL COMMENT '个人承担费用（元）',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '病历概要数据医疗费用详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_resume_expense
-- ----------------------------

-- ----------------------------
-- Table structure for emr_resume_ins
-- ----------------------------
DROP TABLE IF EXISTS `emr_resume_ins`;
CREATE TABLE `emr_resume_ins`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrResume` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属病历概要数据',
  `insCat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '医疗保险-类别',
  `insCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '医疗保险-类别代码',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '病历概要数据医保详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_resume_ins
-- ----------------------------

-- ----------------------------
-- Table structure for emr_resume_med
-- ----------------------------
DROP TABLE IF EXISTS `emr_resume_med`;
CREATE TABLE `emr_resume_med`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrResume` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属病历概要数据',
  `medUsage` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药物用法',
  `usageRate` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药物使用-频率',
  `medUnit` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药物使用-剂量单位',
  `perDosage` decimal(10, 2) NULL DEFAULT NULL COMMENT '药物使用-次剂量',
  `totalDosage` decimal(10, 2) NULL DEFAULT NULL COMMENT '药物使用-总剂量',
  `wayCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药物使用-途径代码',
  `medName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药物名称',
  `dosageForm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药物剂型代码',
  `medCat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药物类型',
  `medNameCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药物名称代码',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '病历概要数据用药详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_resume_med
-- ----------------------------

-- ----------------------------
-- Table structure for opc_register_record
-- ----------------------------
DROP TABLE IF EXISTS `opc_register_record`;
CREATE TABLE `opc_register_record`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `patient` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '病人信息',
  `emrNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '病历号',
  `clinicNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '门诊号',
  `department` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '科室信息',
  `doctor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '医生信息',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '病人就诊信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of opc_register_record
-- ----------------------------

-- ----------------------------
-- Table structure for pa_patient
-- ----------------------------
DROP TABLE IF EXISTS `pa_patient`;
CREATE TABLE `pa_patient`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `emrNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '病历号',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `idType` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '证件类型',
  `idNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '证件号码',
  `idEffDate` date NULL DEFAULT NULL COMMENT '证件生效日期',
  `idExpDate` date NULL DEFAULT NULL COMMENT '证件失效日期',
  `idOrg` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '证件提供机构',
  `aboBlood` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'ABO血型',
  `rhBlood` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'RH血型',
  `gender` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  `nationality` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '国籍',
  `ethnic` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '民族',
  `marital` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '婚姻状况',
  `education` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文化程度',
  `birthday` date NULL DEFAULT NULL COMMENT '出生日期',
  `birthplace` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '出生地',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '病人信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pa_patient
-- ----------------------------

-- ----------------------------
-- Table structure for pa_patient_addr
-- ----------------------------
DROP TABLE IF EXISTS `pa_patient_addr`;
CREATE TABLE `pa_patient_addr`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `patient` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '病人信息',
  `addrCat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址类别',
  `province` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-省（自治区、直辖市）',
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-市（地区）',
  `county` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-县（区）',
  `countryside` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-乡（镇、街道办事处）',
  `village` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-村（街、路、弄等）',
  `doorNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-门牌号码',
  `zipcode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮政编码',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '病人联系地址信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pa_patient_addr
-- ----------------------------

-- ----------------------------
-- Table structure for pa_patient_comm
-- ----------------------------
DROP TABLE IF EXISTS `pa_patient_comm`;
CREATE TABLE `pa_patient_comm`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `patient` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属病历概要数据',
  `phoneCat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话-类别',
  `phoneNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话-号码',
  `email` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电子邮件地址',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '病人通信信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pa_patient_comm
-- ----------------------------

-- ----------------------------
-- Table structure for pa_patient_contact
-- ----------------------------
DROP TABLE IF EXISTS `pa_patient_contact`;
CREATE TABLE `pa_patient_contact`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `patient` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '病人信息',
  `idType` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '证件类别',
  `idNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '证件',
  `idEffDate` date NULL DEFAULT NULL COMMENT '证件生效日期',
  `idExpDate` date NULL DEFAULT NULL COMMENT '证件失效日期',
  `idOrg` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '证件提供机构',
  `contactType` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系人类型',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '病人联系人信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pa_patient_contact
-- ----------------------------

-- ----------------------------
-- Table structure for pa_patient_ins
-- ----------------------------
DROP TABLE IF EXISTS `pa_patient_ins`;
CREATE TABLE `pa_patient_ins`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `patient` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '病人信息',
  `insCat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '医疗保险-类别',
  `treatment` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '医疗待遇',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '病人医保信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pa_patient_ins
-- ----------------------------

-- ----------------------------
-- Table structure for pa_patient_occ
-- ----------------------------
DROP TABLE IF EXISTS `pa_patient_occ`;
CREATE TABLE `pa_patient_occ`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `patient` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '病人信息',
  `occupation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职业信息',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '病人职业信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pa_patient_occ
-- ----------------------------

-- ----------------------------
-- Table structure for sys_admin
-- ----------------------------
DROP TABLE IF EXISTS `sys_admin`;
CREATE TABLE `sys_admin`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工号',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `cellphone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号码',
  `password` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '登录密码',
  `role` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色',
  `identity` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '身份',
  `department` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所在部门',
  `techPostTitle` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者专业技术职务',
  `education` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学历',
  `techPostRank` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务者专业技术职务等级',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_admin
-- ----------------------------

-- ----------------------------
-- Table structure for sys_admin_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_admin_post`;
CREATE TABLE `sys_admin_post`  (
  `admin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '人员信息',
  `position` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职务信息'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '人员职务信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_admin_post
-- ----------------------------

-- ----------------------------
-- Table structure for sys_data_code
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_code`;
CREATE TABLE `sys_data_code`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parent` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '上级数据元',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '数据元值域',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '数据元说明',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '数据元值域信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_data_code
-- ----------------------------

-- ----------------------------
-- Table structure for sys_department
-- ----------------------------
DROP TABLE IF EXISTS `sys_department`;
CREATE TABLE `sys_department`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `hospital` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所在医院',
  `parent` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '上级部门',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '部门编码',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '部门名称',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '医院部门信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_department
-- ----------------------------

-- ----------------------------
-- Table structure for sys_division
-- ----------------------------
DROP TABLE IF EXISTS `sys_division`;
CREATE TABLE `sys_division`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parent` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '上级行政区划',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '行政区划编码',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '行政区划名称',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '行政区划信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_division
-- ----------------------------
INSERT INTO `sys_division` VALUES (1, NULL, '110000', '北京市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (2, '110000', '110101', '东城区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (3, '110000', '110102', '西城区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (4, '110000', '110105', '朝阳区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (5, '110000', '110106', '丰台区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (6, '110000', '110107', '石景山区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (7, '110000', '110108', '海淀区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (8, '110000', '110109', '门头沟区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (9, '110000', '110111', '房山区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (10, '110000', '110112', '通州区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (11, '110000', '110113', '顺义区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (12, '110000', '110114', '昌平区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (13, '110000', '110115', '大兴区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (14, '110000', '110116', '怀柔区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (15, '110000', '110117', '平谷区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (16, '110000', '110118', '密云区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (17, '110000', '110119', '延庆区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (18, NULL, '120000', '天津市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (19, '120000', '120101', '和平区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (20, '120000', '120102', '河东区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (21, '120000', '120103', '河西区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (22, '120000', '120104', '南开区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (23, '120000', '120105', '河北区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (24, '120000', '120106', '红桥区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (25, '120000', '120110', '东丽区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (26, '120000', '120111', '西青区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (27, '120000', '120112', '津南区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (28, '120000', '120113', '北辰区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (29, '120000', '120114', '武清区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (30, '120000', '120115', '宝坻区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (31, '120000', '120116', '滨海新区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (32, '120000', '120117', '宁河区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (33, '120000', '120118', '静海区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (34, '120000', '120119', '蓟州区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (35, NULL, '130000', '河北省', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (36, '130000', '130100', '石家庄市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (37, '130100', '130102', '长安区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (38, '130100', '130104', '桥西区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (39, '130100', '130105', '新华区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (40, '130100', '130107', '井陉矿区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (41, '130100', '130108', '裕华区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (42, '130100', '130109', '藁城区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (43, '130100', '130110', '鹿泉区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (44, '130100', '130111', '栾城区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (45, '130100', '130121', '井陉县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (46, '130100', '130123', '正定县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (47, '130100', '130125', '行唐县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (48, '130100', '130126', '灵寿县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (49, '130100', '130127', '高邑县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (50, '130100', '130128', '深泽县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (51, '130100', '130129', '赞皇县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (52, '130100', '130130', '无极县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (53, '130100', '130131', '平山县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (54, '130100', '130132', '元氏县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (55, '130100', '130133', '赵县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (56, '130100', '130181', '辛集市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (57, '130100', '130183', '晋州市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (58, '130100', '130184', '新乐市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (59, '130000', '130200', '唐山市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (60, '130200', '130202', '路南区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (61, '130200', '130203', '路北区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (62, '130200', '130204', '古冶区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (63, '130200', '130205', '开平区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (64, '130200', '130207', '丰南区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (65, '130200', '130208', '丰润区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (66, '130200', '130209', '曹妃甸区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (67, '130200', '130224', '滦南县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (68, '130200', '130225', '乐亭县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (69, '130200', '130227', '迁西县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (70, '130200', '130229', '玉田县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (71, '130200', '130281', '遵化市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (72, '130200', '130283', '迁安市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (73, '130200', '130284', '滦州市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (74, '130000', '130300', '秦皇岛市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (75, '130300', '130302', '海港区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (76, '130300', '130303', '山海关区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (77, '130300', '130304', '北戴河区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (78, '130300', '130306', '抚宁区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (79, '130300', '130321', '青龙满族自治县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (80, '130300', '130322', '昌黎县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (81, '130300', '130324', '卢龙县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (82, '130000', '130400', '邯郸市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (83, '130400', '130402', '邯山区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (84, '130400', '130403', '丛台区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (85, '130400', '130404', '复兴区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (86, '130400', '130406', '峰峰矿区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (87, '130400', '130407', '肥乡区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (88, '130400', '130408', '永年区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (89, '130400', '130423', '临漳县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (90, '130400', '130424', '成安县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (91, '130400', '130425', '大名县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (92, '130400', '130426', '涉县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (93, '130400', '130427', '磁县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (94, '130400', '130430', '邱县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (95, '130400', '130431', '鸡泽县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (96, '130400', '130432', '广平县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (97, '130400', '130433', '馆陶县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (98, '130400', '130434', '魏县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (99, '130400', '130435', '曲周县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (100, '130400', '130481', '武安市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (101, '130000', '130500', '邢台市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (102, '130500', '130502', '襄都区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (103, '130500', '130503', '信都区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (104, '130500', '130505', '任泽区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (105, '130500', '130506', '南和区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (106, '130500', '130522', '临城县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (107, '130500', '130523', '内丘县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (108, '130500', '130524', '柏乡县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (109, '130500', '130525', '隆尧县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (110, '130500', '130528', '宁晋县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (111, '130500', '130529', '巨鹿县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (112, '130500', '130530', '新河县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (113, '130500', '130531', '广宗县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (114, '130500', '130532', '平乡县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (115, '130500', '130533', '威县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (116, '130500', '130534', '清河县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (117, '130500', '130535', '临西县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (118, '130500', '130581', '南宫市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (119, '130500', '130582', '沙河市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (120, '130000', '130600', '保定市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (121, '130600', '130602', '竞秀区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (122, '130600', '130606', '莲池区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (123, '130600', '130607', '满城区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (124, '130600', '130608', '清苑区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (125, '130600', '130609', '徐水区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (126, '130600', '130623', '涞水县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (127, '130600', '130624', '阜平县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (128, '130600', '130626', '定兴县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (129, '130600', '130627', '唐县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (130, '130600', '130628', '高阳县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (131, '130600', '130629', '容城县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (132, '130600', '130630', '涞源县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (133, '130600', '130631', '望都县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (134, '130600', '130632', '安新县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (135, '130600', '130633', '易县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (136, '130600', '130634', '曲阳县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (137, '130600', '130635', '蠡县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (138, '130600', '130636', '顺平县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (139, '130600', '130637', '博野县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (140, '130600', '130638', '雄县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (141, '130600', '130681', '涿州市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (142, '130600', '130682', '定州市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (143, '130600', '130683', '安国市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (144, '130600', '130684', '高碑店市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (145, '130000', '130700', '张家口市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (146, '130700', '130702', '桥东区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (147, '130700', '130703', '桥西区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (148, '130700', '130705', '宣化区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (149, '130700', '130706', '下花园区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (150, '130700', '130708', '万全区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (151, '130700', '130709', '崇礼区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (152, '130700', '130722', '张北县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (153, '130700', '130723', '康保县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (154, '130700', '130724', '沽源县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (155, '130700', '130725', '尚义县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (156, '130700', '130726', '蔚县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (157, '130700', '130727', '阳原县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (158, '130700', '130728', '怀安县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (159, '130700', '130730', '怀来县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (160, '130700', '130731', '涿鹿县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (161, '130700', '130732', '赤城县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (162, '130000', '130800', '承德市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (163, '130800', '130802', '双桥区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (164, '130800', '130803', '双滦区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (165, '130800', '130804', '鹰手营子矿区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (166, '130800', '130821', '承德县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (167, '130800', '130822', '兴隆县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (168, '130800', '130824', '滦平县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (169, '130800', '130825', '隆化县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (170, '130800', '130826', '丰宁满族自治县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (171, '130800', '130827', '宽城满族自治县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (172, '130800', '130828', '围场满族蒙古族自治县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (173, '130800', '130881', '平泉市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (174, '130000', '130900', '沧州市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (175, '130900', '130902', '新华区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (176, '130900', '130903', '运河区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (177, '130900', '130921', '沧县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (178, '130900', '130922', '青县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (179, '130900', '130923', '东光县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (180, '130900', '130924', '海兴县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (181, '130900', '130925', '盐山县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (182, '130900', '130926', '肃宁县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (183, '130900', '130927', '南皮县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (184, '130900', '130928', '吴桥县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (185, '130900', '130929', '献县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (186, '130900', '130930', '孟村回族自治县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (187, '130900', '130981', '泊头市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (188, '130900', '130982', '任丘市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (189, '130900', '130983', '黄骅市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (190, '130900', '130984', '河间市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (191, '130000', '131000', '廊坊市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (192, '131000', '131002', '安次区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (193, '131000', '131003', '广阳区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (194, '131000', '131022', '固安县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (195, '131000', '131023', '永清县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (196, '131000', '131024', '香河县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (197, '131000', '131025', '大城县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (198, '131000', '131026', '文安县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (199, '131000', '131028', '大厂回族自治县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (200, '131000', '131081', '霸州市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (201, '131000', '131082', '三河市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (202, '130000', '131100', '衡水市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (203, '131100', '131102', '桃城区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (204, '131100', '131103', '冀州区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (205, '131100', '131121', '枣强县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (206, '131100', '131122', '武邑县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (207, '131100', '131123', '武强县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (208, '131100', '131124', '饶阳县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (209, '131100', '131125', '安平县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (210, '131100', '131126', '故城县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (211, '131100', '131127', '景县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (212, '131100', '131128', '阜城县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (213, '131100', '131182', '深州市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (214, NULL, '140000', '山西省', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (215, '140000', '140100', '太原市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (216, '140100', '140105', '小店区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (217, '140100', '140106', '迎泽区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (218, '140100', '140107', '杏花岭区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (219, '140100', '140108', '尖草坪区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (220, '140100', '140109', '万柏林区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (221, '140100', '140110', '晋源区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (222, '140100', '140121', '清徐县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (223, '140100', '140122', '阳曲县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (224, '140100', '140123', '娄烦县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (225, '140100', '140181', '古交市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (226, '140000', '140200', '大同市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (227, '140200', '140212', '新荣区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (228, '140200', '140213', '平城区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (229, '140200', '140214', '云冈区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (230, '140200', '140215', '云州区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (231, '140200', '140221', '阳高县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (232, '140200', '140222', '天镇县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (233, '140200', '140223', '广灵县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (234, '140200', '140224', '灵丘县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (235, '140200', '140225', '浑源县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (236, '140200', '140226', '左云县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (237, '140000', '140300', '阳泉市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (238, '140300', '140302', '城区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (239, '140300', '140303', '矿区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (240, '140300', '140311', '郊区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (241, '140300', '140321', '平定县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (242, '140300', '140322', '盂县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (243, '140000', '140400', '长治市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (244, '140400', '140403', '潞州区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (245, '140400', '140404', '上党区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (246, '140400', '140405', '屯留区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (247, '140400', '140406', '潞城区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (248, '140400', '140423', '襄垣县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (249, '140400', '140425', '平顺县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (250, '140400', '140426', '黎城县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (251, '140400', '140427', '壶关县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (252, '140400', '140428', '长子县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (253, '140400', '140429', '武乡县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (254, '140400', '140430', '沁县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (255, '140400', '140431', '沁源县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (256, '140000', '140500', '晋城市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (257, '140500', '140502', '城区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (258, '140500', '140521', '沁水县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (259, '140500', '140522', '阳城县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (260, '140500', '140524', '陵川县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (261, '140500', '140525', '泽州县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (262, '140500', '140581', '高平市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (263, '140000', '140600', '朔州市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (264, '140600', '140602', '朔城区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (265, '140600', '140603', '平鲁区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (266, '140600', '140621', '山阴县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (267, '140600', '140622', '应县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (268, '140600', '140623', '右玉县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (269, '140600', '140681', '怀仁市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (270, '140000', '140700', '晋中市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (271, '140700', '140702', '榆次区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (272, '140700', '140703', '太谷区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (273, '140700', '140721', '榆社县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (274, '140700', '140722', '左权县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (275, '140700', '140723', '和顺县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (276, '140700', '140724', '昔阳县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (277, '140700', '140725', '寿阳县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (278, '140700', '140727', '祁县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (279, '140700', '140728', '平遥县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (280, '140700', '140729', '灵石县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (281, '140700', '140781', '介休市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (282, '140000', '140800', '运城市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (283, '140800', '140802', '盐湖区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (284, '140800', '140821', '临猗县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (285, '140800', '140822', '万荣县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (286, '140800', '140823', '闻喜县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (287, '140800', '140824', '稷山县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (288, '140800', '140825', '新绛县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (289, '140800', '140826', '绛县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (290, '140800', '140827', '垣曲县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (291, '140800', '140828', '夏县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (292, '140800', '140829', '平陆县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (293, '140800', '140830', '芮城县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (294, '140800', '140881', '永济市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (295, '140800', '140882', '河津市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (296, '140000', '140900', '忻州市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (297, '140900', '140902', '忻府区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (298, '140900', '140921', '定襄县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (299, '140900', '140922', '五台县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (300, '140900', '140923', '代县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (301, '140900', '140924', '繁峙县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (302, '140900', '140925', '宁武县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (303, '140900', '140926', '静乐县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (304, '140900', '140927', '神池县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (305, '140900', '140928', '五寨县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (306, '140900', '140929', '岢岚县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (307, '140900', '140930', '河曲县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (308, '140900', '140931', '保德县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (309, '140900', '140932', '偏关县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (310, '140900', '140981', '原平市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (311, '140000', '141000', '临汾市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (312, '141000', '141002', '尧都区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (313, '141000', '141021', '曲沃县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (314, '141000', '141022', '翼城县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (315, '141000', '141023', '襄汾县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (316, '141000', '141024', '洪洞县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (317, '141000', '141025', '古县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (318, '141000', '141026', '安泽县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (319, '141000', '141027', '浮山县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (320, '141000', '141028', '吉县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (321, '141000', '141029', '乡宁县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (322, '141000', '141030', '大宁县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (323, '141000', '141031', '隰县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (324, '141000', '141032', '永和县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (325, '141000', '141033', '蒲县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (326, '141000', '141034', '汾西县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (327, '141000', '141081', '侯马市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (328, '141000', '141082', '霍州市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (329, '140000', '141100', '吕梁市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (330, '141100', '141102', '离石区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (331, '141100', '141121', '文水县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (332, '141100', '141122', '交城县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (333, '141100', '141123', '兴县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (334, '141100', '141124', '临县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (335, '141100', '141125', '柳林县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (336, '141100', '141126', '石楼县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (337, '141100', '141127', '岚县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (338, '141100', '141128', '方山县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (339, '141100', '141129', '中阳县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (340, '141100', '141130', '交口县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (341, '141100', '141181', '孝义市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (342, '141100', '141182', '汾阳市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (343, NULL, '150000', '内蒙古自治区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (344, '150000', '150100', '呼和浩特市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (345, '150100', '150102', '新城区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (346, '150100', '150103', '回民区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (347, '150100', '150104', '玉泉区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (348, '150100', '150105', '赛罕区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (349, '150100', '150121', '土默特左旗', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (350, '150100', '150122', '托克托县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (351, '150100', '150123', '和林格尔县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (352, '150100', '150124', '清水河县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (353, '150100', '150125', '武川县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (354, '150000', '150200', '包头市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (355, '150200', '150202', '东河区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (356, '150200', '150203', '昆都仑区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (357, '150200', '150204', '青山区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (358, '150200', '150205', '石拐区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (359, '150200', '150206', '白云鄂博矿区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (360, '150200', '150207', '九原区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (361, '150200', '150221', '土默特右旗', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (362, '150200', '150222', '固阳县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (363, '150200', '150223', '达尔罕茂明安联合旗', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (364, '150000', '150300', '乌海市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (365, '150300', '150302', '海勃湾区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (366, '150300', '150303', '海南区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (367, '150300', '150304', '乌达区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (368, '150000', '150400', '赤峰市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (369, '150400', '150402', '红山区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (370, '150400', '150403', '元宝山区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (371, '150400', '150404', '松山区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (372, '150400', '150421', '阿鲁科尔沁旗', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (373, '150400', '150422', '巴林左旗', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (374, '150400', '150423', '巴林右旗', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (375, '150400', '150424', '林西县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (376, '150400', '150425', '克什克腾旗', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (377, '150400', '150426', '翁牛特旗', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (378, '150400', '150428', '喀喇沁旗', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (379, '150400', '150429', '宁城县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (380, '150400', '150430', '敖汉旗', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (381, '150000', '150500', '通辽市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (382, '150500', '150502', '科尔沁区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (383, '150500', '150521', '科尔沁左翼中旗', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (384, '150500', '150522', '科尔沁左翼后旗', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (385, '150500', '150523', '开鲁县', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (386, '150500', '150524', '库伦旗', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (387, '150500', '150525', '奈曼旗', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (388, '150500', '150526', '扎鲁特旗', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (389, '150500', '150581', '霍林郭勒市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (390, '150000', '150600', '鄂尔多斯市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (391, '150600', '150602', '东胜区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (392, '150600', '150603', '康巴什区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (393, '150600', '150621', '达拉特旗', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (394, '150600', '150622', '准格尔旗', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (395, '150600', '150623', '鄂托克前旗', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (396, '150600', '150624', '鄂托克旗', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (397, '150600', '150625', '杭锦旗', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (398, '150600', '150626', '乌审旗', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (399, '150600', '150627', '伊金霍洛旗', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (400, '150000', '150700', '呼伦贝尔市', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (401, '150700', '150702', '海拉尔区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (402, '150700', '150703', '扎赉诺尔区', '1', NULL, '2022-01-12 20:45:02', NULL, '2022-01-12 20:45:02');
INSERT INTO `sys_division` VALUES (403, '150700', '150721', '阿荣旗', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (404, '150700', '150722', '莫力达瓦达斡尔族自治旗', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (405, '150700', '150723', '鄂伦春自治旗', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (406, '150700', '150724', '鄂温克族自治旗', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (407, '150700', '150725', '陈巴尔虎旗', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (408, '150700', '150726', '新巴尔虎左旗', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (409, '150700', '150727', '新巴尔虎右旗', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (410, '150700', '150781', '满洲里市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (411, '150700', '150782', '牙克石市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (412, '150700', '150783', '扎兰屯市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (413, '150700', '150784', '额尔古纳市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (414, '150700', '150785', '根河市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (415, '150000', '150800', '巴彦淖尔市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (416, '150800', '150802', '临河区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (417, '150800', '150821', '五原县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (418, '150800', '150822', '磴口县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (419, '150800', '150823', '乌拉特前旗', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (420, '150800', '150824', '乌拉特中旗', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (421, '150800', '150825', '乌拉特后旗', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (422, '150800', '150826', '杭锦后旗', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (423, '150000', '150900', '乌兰察布市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (424, '150900', '150902', '集宁区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (425, '150900', '150921', '卓资县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (426, '150900', '150922', '化德县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (427, '150900', '150923', '商都县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (428, '150900', '150924', '兴和县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (429, '150900', '150925', '凉城县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (430, '150900', '150926', '察哈尔右翼前旗', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (431, '150900', '150927', '察哈尔右翼中旗', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (432, '150900', '150928', '察哈尔右翼后旗', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (433, '150900', '150929', '四子王旗', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (434, '150900', '150981', '丰镇市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (435, '150000', '152200', '兴安盟', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (436, '152200', '152201', '乌兰浩特市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (437, '152200', '152202', '阿尔山市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (438, '152200', '152221', '科尔沁右翼前旗', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (439, '152200', '152222', '科尔沁右翼中旗', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (440, '152200', '152223', '扎赉特旗', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (441, '152200', '152224', '突泉县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (442, '150000', '152500', '锡林郭勒盟', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (443, '152500', '152501', '二连浩特市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (444, '152500', '152502', '锡林浩特市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (445, '152500', '152522', '阿巴嘎旗', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (446, '152500', '152523', '苏尼特左旗', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (447, '152500', '152524', '苏尼特右旗', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (448, '152500', '152525', '东乌珠穆沁旗', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (449, '152500', '152526', '西乌珠穆沁旗', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (450, '152500', '152527', '太仆寺旗', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (451, '152500', '152528', '镶黄旗', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (452, '152500', '152529', '正镶白旗', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (453, '152500', '152530', '正蓝旗', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (454, '152500', '152531', '多伦县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (455, '150000', '152900', '阿拉善盟', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (456, '152900', '152921', '阿拉善左旗', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (457, '152900', '152922', '阿拉善右旗', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (458, '152900', '152923', '额济纳旗', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (459, NULL, '210000', '辽宁省', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (460, '210000', '210100', '沈阳市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (461, '210100', '210102', '和平区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (462, '210100', '210103', '沈河区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (463, '210100', '210104', '大东区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (464, '210100', '210105', '皇姑区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (465, '210100', '210106', '铁西区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (466, '210100', '210111', '苏家屯区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (467, '210100', '210112', '浑南区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (468, '210100', '210113', '沈北新区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (469, '210100', '210114', '于洪区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (470, '210100', '210115', '辽中区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (471, '210100', '210123', '康平县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (472, '210100', '210124', '法库县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (473, '210100', '210181', '新民市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (474, '210000', '210200', '大连市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (475, '210200', '210202', '中山区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (476, '210200', '210203', '西岗区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (477, '210200', '210204', '沙河口区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (478, '210200', '210211', '甘井子区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (479, '210200', '210212', '旅顺口区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (480, '210200', '210213', '金州区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (481, '210200', '210214', '普兰店区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (482, '210200', '210224', '长海县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (483, '210200', '210281', '瓦房店市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (484, '210200', '210283', '庄河市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (485, '210000', '210300', '鞍山市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (486, '210300', '210302', '铁东区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (487, '210300', '210303', '铁西区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (488, '210300', '210304', '立山区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (489, '210300', '210311', '千山区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (490, '210300', '210321', '台安县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (491, '210300', '210323', '岫岩满族自治县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (492, '210300', '210381', '海城市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (493, '210000', '210400', '抚顺市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (494, '210400', '210402', '新抚区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (495, '210400', '210403', '东洲区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (496, '210400', '210404', '望花区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (497, '210400', '210411', '顺城区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (498, '210400', '210421', '抚顺县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (499, '210400', '210422', '新宾满族自治县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (500, '210400', '210423', '清原满族自治县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (501, '210000', '210500', '本溪市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (502, '210500', '210502', '平山区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (503, '210500', '210503', '溪湖区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (504, '210500', '210504', '明山区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (505, '210500', '210505', '南芬区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (506, '210500', '210521', '本溪满族自治县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (507, '210500', '210522', '桓仁满族自治县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (508, '210000', '210600', '丹东市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (509, '210600', '210602', '元宝区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (510, '210600', '210603', '振兴区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (511, '210600', '210604', '振安区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (512, '210600', '210624', '宽甸满族自治县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (513, '210600', '210681', '东港市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (514, '210600', '210682', '凤城市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (515, '210000', '210700', '锦州市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (516, '210700', '210702', '古塔区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (517, '210700', '210703', '凌河区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (518, '210700', '210711', '太和区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (519, '210700', '210726', '黑山县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (520, '210700', '210727', '义县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (521, '210700', '210781', '凌海市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (522, '210700', '210782', '北镇市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (523, '210000', '210800', '营口市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (524, '210800', '210802', '站前区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (525, '210800', '210803', '西市区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (526, '210800', '210804', '鲅鱼圈区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (527, '210800', '210811', '老边区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (528, '210800', '210881', '盖州市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (529, '210800', '210882', '大石桥市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (530, '210000', '210900', '阜新市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (531, '210900', '210902', '海州区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (532, '210900', '210903', '新邱区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (533, '210900', '210904', '太平区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (534, '210900', '210905', '清河门区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (535, '210900', '210911', '细河区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (536, '210900', '210921', '阜新蒙古族自治县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (537, '210900', '210922', '彰武县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (538, '210000', '211000', '辽阳市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (539, '211000', '211002', '白塔区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (540, '211000', '211003', '文圣区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (541, '211000', '211004', '宏伟区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (542, '211000', '211005', '弓长岭区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (543, '211000', '211011', '太子河区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (544, '211000', '211021', '辽阳县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (545, '211000', '211081', '灯塔市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (546, '210000', '211100', '盘锦市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (547, '211100', '211102', '双台子区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (548, '211100', '211103', '兴隆台区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (549, '211100', '211104', '大洼区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (550, '211100', '211122', '盘山县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (551, '210000', '211200', '铁岭市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (552, '211200', '211202', '银州区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (553, '211200', '211204', '清河区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (554, '211200', '211221', '铁岭县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (555, '211200', '211223', '西丰县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (556, '211200', '211224', '昌图县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (557, '211200', '211281', '调兵山市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (558, '211200', '211282', '开原市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (559, '210000', '211300', '朝阳市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (560, '211300', '211302', '双塔区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (561, '211300', '211303', '龙城区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (562, '211300', '211321', '朝阳县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (563, '211300', '211322', '建平县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (564, '211300', '211324', '喀喇沁左翼蒙古族自治县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (565, '211300', '211381', '北票市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (566, '211300', '211382', '凌源市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (567, '210000', '211400', '葫芦岛市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (568, '211400', '211402', '连山区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (569, '211400', '211403', '龙港区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (570, '211400', '211404', '南票区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (571, '211400', '211421', '绥中县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (572, '211400', '211422', '建昌县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (573, '211400', '211481', '兴城市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (574, NULL, '220000', '吉林省', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (575, '220000', '220100', '长春市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (576, '220100', '220102', '南关区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (577, '220100', '220103', '宽城区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (578, '220100', '220104', '朝阳区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (579, '220100', '220105', '二道区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (580, '220100', '220106', '绿园区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (581, '220100', '220112', '双阳区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (582, '220100', '220113', '九台区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (583, '220100', '220122', '农安县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (584, '220100', '220182', '榆树市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (585, '220100', '220183', '德惠市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (586, '220100', '220184', '公主岭市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (587, '220000', '220200', '吉林市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (588, '220200', '220202', '昌邑区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (589, '220200', '220203', '龙潭区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (590, '220200', '220204', '船营区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (591, '220200', '220211', '丰满区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (592, '220200', '220221', '永吉县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (593, '220200', '220281', '蛟河市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (594, '220200', '220282', '桦甸市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (595, '220200', '220283', '舒兰市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (596, '220200', '220284', '磐石市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (597, '220000', '220300', '四平市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (598, '220300', '220302', '铁西区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (599, '220300', '220303', '铁东区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (600, '220300', '220322', '梨树县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (601, '220300', '220323', '伊通满族自治县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (602, '220300', '220382', '双辽市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (603, '220000', '220400', '辽源市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (604, '220400', '220402', '龙山区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (605, '220400', '220403', '西安区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (606, '220400', '220421', '东丰县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (607, '220400', '220422', '东辽县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (608, '220000', '220500', '通化市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (609, '220500', '220502', '东昌区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (610, '220500', '220503', '二道江区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (611, '220500', '220521', '通化县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (612, '220500', '220523', '辉南县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (613, '220500', '220524', '柳河县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (614, '220500', '220581', '梅河口市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (615, '220500', '220582', '集安市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (616, '220000', '220600', '白山市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (617, '220600', '220602', '浑江区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (618, '220600', '220605', '江源区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (619, '220600', '220621', '抚松县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (620, '220600', '220622', '靖宇县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (621, '220600', '220623', '长白朝鲜族自治县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (622, '220600', '220681', '临江市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (623, '220000', '220700', '松原市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (624, '220700', '220702', '宁江区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (625, '220700', '220721', '前郭尔罗斯蒙古族自治县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (626, '220700', '220722', '长岭县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (627, '220700', '220723', '乾安县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (628, '220700', '220781', '扶余市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (629, '220000', '220800', '白城市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (630, '220800', '220802', '洮北区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (631, '220800', '220821', '镇赉县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (632, '220800', '220822', '通榆县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (633, '220800', '220881', '洮南市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (634, '220800', '220882', '大安市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (635, '220000', '222400', '延边朝鲜族自治州', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (636, '222400', '222401', '延吉市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (637, '222400', '222402', '图们市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (638, '222400', '222403', '敦化市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (639, '222400', '222404', '珲春市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (640, '222400', '222405', '龙井市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (641, '222400', '222406', '和龙市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (642, '222400', '222424', '汪清县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (643, '222400', '222426', '安图县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (644, NULL, '230000', '黑龙江省', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (645, '230000', '230100', '哈尔滨市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (646, '230100', '230102', '道里区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (647, '230100', '230103', '南岗区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (648, '230100', '230104', '道外区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (649, '230100', '230108', '平房区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (650, '230100', '230109', '松北区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (651, '230100', '230110', '香坊区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (652, '230100', '230111', '呼兰区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (653, '230100', '230112', '阿城区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (654, '230100', '230113', '双城区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (655, '230100', '230123', '依兰县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (656, '230100', '230124', '方正县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (657, '230100', '230125', '宾县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (658, '230100', '230126', '巴彦县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (659, '230100', '230127', '木兰县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (660, '230100', '230128', '通河县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (661, '230100', '230129', '延寿县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (662, '230100', '230183', '尚志市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (663, '230100', '230184', '五常市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (664, '230000', '230200', '齐齐哈尔市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (665, '230200', '230202', '龙沙区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (666, '230200', '230203', '建华区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (667, '230200', '230204', '铁锋区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (668, '230200', '230205', '昂昂溪区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (669, '230200', '230206', '富拉尔基区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (670, '230200', '230207', '碾子山区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (671, '230200', '230208', '梅里斯达斡尔族区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (672, '230200', '230221', '龙江县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (673, '230200', '230223', '依安县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (674, '230200', '230224', '泰来县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (675, '230200', '230225', '甘南县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (676, '230200', '230227', '富裕县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (677, '230200', '230229', '克山县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (678, '230200', '230230', '克东县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (679, '230200', '230231', '拜泉县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (680, '230200', '230281', '讷河市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (681, '230000', '230300', '鸡西市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (682, '230300', '230302', '鸡冠区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (683, '230300', '230303', '恒山区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (684, '230300', '230304', '滴道区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (685, '230300', '230305', '梨树区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (686, '230300', '230306', '城子河区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (687, '230300', '230307', '麻山区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (688, '230300', '230321', '鸡东县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (689, '230300', '230381', '虎林市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (690, '230300', '230382', '密山市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (691, '230000', '230400', '鹤岗市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (692, '230400', '230402', '向阳区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (693, '230400', '230403', '工农区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (694, '230400', '230404', '南山区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (695, '230400', '230405', '兴安区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (696, '230400', '230406', '东山区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (697, '230400', '230407', '兴山区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (698, '230400', '230421', '萝北县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (699, '230400', '230422', '绥滨县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (700, '230000', '230500', '双鸭山市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (701, '230500', '230502', '尖山区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (702, '230500', '230503', '岭东区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (703, '230500', '230505', '四方台区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (704, '230500', '230506', '宝山区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (705, '230500', '230521', '集贤县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (706, '230500', '230522', '友谊县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (707, '230500', '230523', '宝清县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (708, '230500', '230524', '饶河县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (709, '230000', '230600', '大庆市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (710, '230600', '230602', '萨尔图区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (711, '230600', '230603', '龙凤区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (712, '230600', '230604', '让胡路区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (713, '230600', '230605', '红岗区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (714, '230600', '230606', '大同区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (715, '230600', '230621', '肇州县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (716, '230600', '230622', '肇源县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (717, '230600', '230623', '林甸县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (718, '230600', '230624', '杜尔伯特蒙古族自治县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (719, '230000', '230700', '伊春市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (720, '230700', '230717', '伊美区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (721, '230700', '230718', '乌翠区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (722, '230700', '230719', '友好区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (723, '230700', '230722', '嘉荫县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (724, '230700', '230723', '汤旺县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (725, '230700', '230724', '丰林县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (726, '230700', '230725', '大箐山县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (727, '230700', '230726', '南岔县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (728, '230700', '230751', '金林区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (729, '230700', '230781', '铁力市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (730, '230000', '230800', '佳木斯市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (731, '230800', '230803', '向阳区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (732, '230800', '230804', '前进区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (733, '230800', '230805', '东风区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (734, '230800', '230811', '郊区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (735, '230800', '230822', '桦南县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (736, '230800', '230826', '桦川县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (737, '230800', '230828', '汤原县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (738, '230800', '230881', '同江市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (739, '230800', '230882', '富锦市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (740, '230800', '230883', '抚远市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (741, '230000', '230900', '七台河市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (742, '230900', '230902', '新兴区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (743, '230900', '230903', '桃山区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (744, '230900', '230904', '茄子河区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (745, '230900', '230921', '勃利县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (746, '230000', '231000', '牡丹江市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (747, '231000', '231002', '东安区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (748, '231000', '231003', '阳明区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (749, '231000', '231004', '爱民区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (750, '231000', '231005', '西安区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (751, '231000', '231025', '林口县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (752, '231000', '231081', '绥芬河市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (753, '231000', '231083', '海林市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (754, '231000', '231084', '宁安市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (755, '231000', '231085', '穆棱市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (756, '231000', '231086', '东宁市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (757, '230000', '231100', '黑河市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (758, '231100', '231102', '爱辉区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (759, '231100', '231123', '逊克县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (760, '231100', '231124', '孙吴县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (761, '231100', '231181', '北安市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (762, '231100', '231182', '五大连池市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (763, '231100', '231183', '嫩江市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (764, '230000', '231200', '绥化市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (765, '231200', '231202', '北林区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (766, '231200', '231221', '望奎县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (767, '231200', '231222', '兰西县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (768, '231200', '231223', '青冈县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (769, '231200', '231224', '庆安县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (770, '231200', '231225', '明水县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (771, '231200', '231226', '绥棱县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (772, '231200', '231281', '安达市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (773, '231200', '231282', '肇东市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (774, '231200', '231283', '海伦市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (775, '230000', '232700', '大兴安岭地区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (776, '232700', '232701', '漠河市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (777, '232700', '232721', '呼玛县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (778, '232700', '232722', '塔河县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (779, NULL, '310000', '上海市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (780, '310000', '310101', '黄浦区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (781, '310000', '310104', '徐汇区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (782, '310000', '310105', '长宁区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (783, '310000', '310106', '静安区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (784, '310000', '310107', '普陀区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (785, '310000', '310109', '虹口区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (786, '310000', '310110', '杨浦区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (787, '310000', '310112', '闵行区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (788, '310000', '310113', '宝山区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (789, '310000', '310114', '嘉定区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (790, '310000', '310115', '浦东新区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (791, '310000', '310116', '金山区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (792, '310000', '310117', '松江区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (793, '310000', '310118', '青浦区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (794, '310000', '310120', '奉贤区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (795, '310000', '310151', '崇明区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (796, NULL, '320000', '江苏省', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (797, '320000', '320100', '南京市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (798, '320100', '320102', '玄武区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (799, '320100', '320104', '秦淮区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (800, '320100', '320105', '建邺区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (801, '320100', '320106', '鼓楼区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (802, '320100', '320111', '浦口区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (803, '320100', '320113', '栖霞区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (804, '320100', '320114', '雨花台区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (805, '320100', '320115', '江宁区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (806, '320100', '320116', '六合区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (807, '320100', '320117', '溧水区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (808, '320100', '320118', '高淳区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (809, '320000', '320200', '无锡市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (810, '320200', '320205', '锡山区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (811, '320200', '320206', '惠山区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (812, '320200', '320211', '滨湖区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (813, '320200', '320213', '梁溪区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (814, '320200', '320214', '新吴区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (815, '320200', '320281', '江阴市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (816, '320200', '320282', '宜兴市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (817, '320000', '320300', '徐州市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (818, '320300', '320302', '鼓楼区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (819, '320300', '320303', '云龙区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (820, '320300', '320305', '贾汪区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (821, '320300', '320311', '泉山区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (822, '320300', '320312', '铜山区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (823, '320300', '320321', '丰县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (824, '320300', '320322', '沛县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (825, '320300', '320324', '睢宁县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (826, '320300', '320381', '新沂市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (827, '320300', '320382', '邳州市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (828, '320000', '320400', '常州市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (829, '320400', '320402', '天宁区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (830, '320400', '320404', '钟楼区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (831, '320400', '320411', '新北区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (832, '320400', '320412', '武进区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (833, '320400', '320413', '金坛区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (834, '320400', '320481', '溧阳市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (835, '320000', '320500', '苏州市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (836, '320500', '320505', '虎丘区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (837, '320500', '320506', '吴中区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (838, '320500', '320507', '相城区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (839, '320500', '320508', '姑苏区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (840, '320500', '320509', '吴江区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (841, '320500', '320581', '常熟市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (842, '320500', '320582', '张家港市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (843, '320500', '320583', '昆山市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (844, '320500', '320585', '太仓市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (845, '320000', '320600', '南通市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (846, '320600', '320612', '通州区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (847, '320600', '320613', '崇川区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (848, '320600', '320614', '海门区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (849, '320600', '320623', '如东县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (850, '320600', '320681', '启东市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (851, '320600', '320682', '如皋市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (852, '320600', '320685', '海安市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (853, '320000', '320700', '连云港市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (854, '320700', '320703', '连云区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (855, '320700', '320706', '海州区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (856, '320700', '320707', '赣榆区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (857, '320700', '320722', '东海县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (858, '320700', '320723', '灌云县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (859, '320700', '320724', '灌南县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (860, '320000', '320800', '淮安市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (861, '320800', '320803', '淮安区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (862, '320800', '320804', '淮阴区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (863, '320800', '320812', '清江浦区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (864, '320800', '320813', '洪泽区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (865, '320800', '320826', '涟水县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (866, '320800', '320830', '盱眙县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (867, '320800', '320831', '金湖县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (868, '320000', '320900', '盐城市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (869, '320900', '320902', '亭湖区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (870, '320900', '320903', '盐都区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (871, '320900', '320904', '大丰区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (872, '320900', '320921', '响水县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (873, '320900', '320922', '滨海县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (874, '320900', '320923', '阜宁县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (875, '320900', '320924', '射阳县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (876, '320900', '320925', '建湖县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (877, '320900', '320981', '东台市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (878, '320000', '321000', '扬州市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (879, '321000', '321002', '广陵区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (880, '321000', '321003', '邗江区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (881, '321000', '321012', '江都区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (882, '321000', '321023', '宝应县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (883, '321000', '321081', '仪征市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (884, '321000', '321084', '高邮市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (885, '320000', '321100', '镇江市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (886, '321100', '321102', '京口区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (887, '321100', '321111', '润州区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (888, '321100', '321112', '丹徒区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (889, '321100', '321181', '丹阳市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (890, '321100', '321182', '扬中市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (891, '321100', '321183', '句容市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (892, '320000', '321200', '泰州市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (893, '321200', '321202', '海陵区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (894, '321200', '321203', '高港区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (895, '321200', '321204', '姜堰区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (896, '321200', '321281', '兴化市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (897, '321200', '321282', '靖江市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (898, '321200', '321283', '泰兴市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (899, '320000', '321300', '宿迁市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (900, '321300', '321302', '宿城区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (901, '321300', '321311', '宿豫区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (902, '321300', '321322', '沭阳县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (903, '321300', '321323', '泗阳县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (904, '321300', '321324', '泗洪县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (905, NULL, '330000', '浙江省', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (906, '330000', '330100', '杭州市', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (907, '330100', '330102', '上城区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (908, '330100', '330103', '下城区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (909, '330100', '330104', '江干区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (910, '330100', '330105', '拱墅区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (911, '330100', '330106', '西湖区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (912, '330100', '330108', '滨江区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (913, '330100', '330109', '萧山区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (914, '330100', '330110', '余杭区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (915, '330100', '330111', '富阳区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (916, '330100', '330112', '临安区', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (917, '330100', '330122', '桐庐县', '1', NULL, '2022-01-12 20:45:03', NULL, '2022-01-12 20:45:03');
INSERT INTO `sys_division` VALUES (918, '330100', '330127', '淳安县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (919, '330100', '330182', '建德市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (920, '330000', '330200', '宁波市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (921, '330200', '330203', '海曙区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (922, '330200', '330205', '江北区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (923, '330200', '330206', '北仑区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (924, '330200', '330211', '镇海区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (925, '330200', '330212', '鄞州区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (926, '330200', '330213', '奉化区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (927, '330200', '330225', '象山县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (928, '330200', '330226', '宁海县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (929, '330200', '330281', '余姚市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (930, '330200', '330282', '慈溪市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (931, '330000', '330300', '温州市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (932, '330300', '330302', '鹿城区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (933, '330300', '330303', '龙湾区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (934, '330300', '330304', '瓯海区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (935, '330300', '330305', '洞头区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (936, '330300', '330324', '永嘉县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (937, '330300', '330326', '平阳县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (938, '330300', '330327', '苍南县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (939, '330300', '330328', '文成县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (940, '330300', '330329', '泰顺县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (941, '330300', '330381', '瑞安市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (942, '330300', '330382', '乐清市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (943, '330300', '330383', '龙港市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (944, '330000', '330400', '嘉兴市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (945, '330400', '330402', '南湖区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (946, '330400', '330411', '秀洲区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (947, '330400', '330421', '嘉善县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (948, '330400', '330424', '海盐县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (949, '330400', '330481', '海宁市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (950, '330400', '330482', '平湖市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (951, '330400', '330483', '桐乡市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (952, '330000', '330500', '湖州市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (953, '330500', '330502', '吴兴区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (954, '330500', '330503', '南浔区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (955, '330500', '330521', '德清县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (956, '330500', '330522', '长兴县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (957, '330500', '330523', '安吉县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (958, '330000', '330600', '绍兴市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (959, '330600', '330602', '越城区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (960, '330600', '330603', '柯桥区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (961, '330600', '330604', '上虞区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (962, '330600', '330624', '新昌县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (963, '330600', '330681', '诸暨市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (964, '330600', '330683', '嵊州市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (965, '330000', '330700', '金华市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (966, '330700', '330702', '婺城区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (967, '330700', '330703', '金东区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (968, '330700', '330723', '武义县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (969, '330700', '330726', '浦江县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (970, '330700', '330727', '磐安县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (971, '330700', '330781', '兰溪市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (972, '330700', '330782', '义乌市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (973, '330700', '330783', '东阳市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (974, '330700', '330784', '永康市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (975, '330000', '330800', '衢州市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (976, '330800', '330802', '柯城区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (977, '330800', '330803', '衢江区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (978, '330800', '330822', '常山县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (979, '330800', '330824', '开化县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (980, '330800', '330825', '龙游县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (981, '330800', '330881', '江山市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (982, '330000', '330900', '舟山市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (983, '330900', '330902', '定海区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (984, '330900', '330903', '普陀区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (985, '330900', '330921', '岱山县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (986, '330900', '330922', '嵊泗县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (987, '330000', '331000', '台州市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (988, '331000', '331002', '椒江区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (989, '331000', '331003', '黄岩区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (990, '331000', '331004', '路桥区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (991, '331000', '331022', '三门县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (992, '331000', '331023', '天台县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (993, '331000', '331024', '仙居县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (994, '331000', '331081', '温岭市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (995, '331000', '331082', '临海市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (996, '331000', '331083', '玉环市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (997, '330000', '331100', '丽水市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (998, '331100', '331102', '莲都区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (999, '331100', '331121', '青田县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1000, '331100', '331122', '缙云县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1001, '331100', '331123', '遂昌县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1002, '331100', '331124', '松阳县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1003, '331100', '331125', '云和县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1004, '331100', '331126', '庆元县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1005, '331100', '331127', '景宁畲族自治县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1006, '331100', '331181', '龙泉市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1007, NULL, '340000', '安徽省', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1008, '340000', '340100', '合肥市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1009, '340100', '340102', '瑶海区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1010, '340100', '340103', '庐阳区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1011, '340100', '340104', '蜀山区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1012, '340100', '340111', '包河区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1013, '340100', '340121', '长丰县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1014, '340100', '340122', '肥东县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1015, '340100', '340123', '肥西县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1016, '340100', '340124', '庐江县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1017, '340100', '340181', '巢湖市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1018, '340000', '340200', '芜湖市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1019, '340200', '340202', '镜湖区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1020, '340200', '340207', '鸠江区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1021, '340200', '340209', '弋江区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1022, '340200', '340210', '湾沚区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1023, '340200', '340212', '繁昌区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1024, '340200', '340223', '南陵县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1025, '340200', '340281', '无为市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1026, '340000', '340300', '蚌埠市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1027, '340300', '340302', '龙子湖区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1028, '340300', '340303', '蚌山区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1029, '340300', '340304', '禹会区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1030, '340300', '340311', '淮上区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1031, '340300', '340321', '怀远县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1032, '340300', '340322', '五河县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1033, '340300', '340323', '固镇县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1034, '340000', '340400', '淮南市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1035, '340400', '340402', '大通区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1036, '340400', '340403', '田家庵区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1037, '340400', '340404', '谢家集区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1038, '340400', '340405', '八公山区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1039, '340400', '340406', '潘集区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1040, '340400', '340421', '凤台县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1041, '340400', '340422', '寿县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1042, '340000', '340500', '马鞍山市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1043, '340500', '340503', '花山区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1044, '340500', '340504', '雨山区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1045, '340500', '340506', '博望区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1046, '340500', '340521', '当涂县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1047, '340500', '340522', '含山县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1048, '340500', '340523', '和县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1049, '340000', '340600', '淮北市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1050, '340600', '340602', '杜集区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1051, '340600', '340603', '相山区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1052, '340600', '340604', '烈山区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1053, '340600', '340621', '濉溪县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1054, '340000', '340700', '铜陵市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1055, '340700', '340705', '铜官区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1056, '340700', '340706', '义安区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1057, '340700', '340711', '郊区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1058, '340700', '340722', '枞阳县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1059, '340000', '340800', '安庆市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1060, '340800', '340802', '迎江区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1061, '340800', '340803', '大观区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1062, '340800', '340811', '宜秀区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1063, '340800', '340822', '怀宁县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1064, '340800', '340825', '太湖县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1065, '340800', '340826', '宿松县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1066, '340800', '340827', '望江县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1067, '340800', '340828', '岳西县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1068, '340800', '340881', '桐城市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1069, '340800', '340882', '潜山市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1070, '340000', '341000', '黄山市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1071, '341000', '341002', '屯溪区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1072, '341000', '341003', '黄山区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1073, '341000', '341004', '徽州区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1074, '341000', '341021', '歙县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1075, '341000', '341022', '休宁县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1076, '341000', '341023', '黟县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1077, '341000', '341024', '祁门县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1078, '340000', '341100', '滁州市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1079, '341100', '341102', '琅琊区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1080, '341100', '341103', '南谯区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1081, '341100', '341122', '来安县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1082, '341100', '341124', '全椒县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1083, '341100', '341125', '定远县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1084, '341100', '341126', '凤阳县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1085, '341100', '341181', '天长市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1086, '341100', '341182', '明光市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1087, '340000', '341200', '阜阳市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1088, '341200', '341202', '颍州区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1089, '341200', '341203', '颍东区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1090, '341200', '341204', '颍泉区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1091, '341200', '341221', '临泉县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1092, '341200', '341222', '太和县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1093, '341200', '341225', '阜南县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1094, '341200', '341226', '颍上县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1095, '341200', '341282', '界首市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1096, '340000', '341300', '宿州市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1097, '341300', '341302', '埇桥区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1098, '341300', '341321', '砀山县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1099, '341300', '341322', '萧县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1100, '341300', '341323', '灵璧县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1101, '341300', '341324', '泗县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1102, '340000', '341500', '六安市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1103, '341500', '341502', '金安区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1104, '341500', '341503', '裕安区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1105, '341500', '341504', '叶集区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1106, '341500', '341522', '霍邱县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1107, '341500', '341523', '舒城县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1108, '341500', '341524', '金寨县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1109, '341500', '341525', '霍山县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1110, '340000', '341600', '亳州市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1111, '341600', '341602', '谯城区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1112, '341600', '341621', '涡阳县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1113, '341600', '341622', '蒙城县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1114, '341600', '341623', '利辛县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1115, '340000', '341700', '池州市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1116, '341700', '341702', '贵池区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1117, '341700', '341721', '东至县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1118, '341700', '341722', '石台县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1119, '341700', '341723', '青阳县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1120, '340000', '341800', '宣城市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1121, '341800', '341802', '宣州区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1122, '341800', '341821', '郎溪县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1123, '341800', '341823', '泾县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1124, '341800', '341824', '绩溪县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1125, '341800', '341825', '旌德县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1126, '341800', '341881', '宁国市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1127, '341800', '341882', '广德市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1128, NULL, '350000', '福建省', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1129, '350000', '350100', '福州市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1130, '350100', '350102', '鼓楼区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1131, '350100', '350103', '台江区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1132, '350100', '350104', '仓山区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1133, '350100', '350105', '马尾区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1134, '350100', '350111', '晋安区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1135, '350100', '350112', '长乐区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1136, '350100', '350121', '闽侯县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1137, '350100', '350122', '连江县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1138, '350100', '350123', '罗源县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1139, '350100', '350124', '闽清县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1140, '350100', '350125', '永泰县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1141, '350100', '350128', '平潭县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1142, '350100', '350181', '福清市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1143, '350000', '350200', '厦门市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1144, '350200', '350203', '思明区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1145, '350200', '350205', '海沧区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1146, '350200', '350206', '湖里区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1147, '350200', '350211', '集美区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1148, '350200', '350212', '同安区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1149, '350200', '350213', '翔安区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1150, '350000', '350300', '莆田市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1151, '350300', '350302', '城厢区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1152, '350300', '350303', '涵江区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1153, '350300', '350304', '荔城区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1154, '350300', '350305', '秀屿区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1155, '350300', '350322', '仙游县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1156, '350000', '350400', '三明市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1157, '350400', '350402', '梅列区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1158, '350400', '350403', '三元区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1159, '350400', '350421', '明溪县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1160, '350400', '350423', '清流县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1161, '350400', '350424', '宁化县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1162, '350400', '350425', '大田县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1163, '350400', '350426', '尤溪县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1164, '350400', '350427', '沙县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1165, '350400', '350428', '将乐县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1166, '350400', '350429', '泰宁县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1167, '350400', '350430', '建宁县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1168, '350400', '350481', '永安市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1169, '350000', '350500', '泉州市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1170, '350500', '350502', '鲤城区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1171, '350500', '350503', '丰泽区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1172, '350500', '350504', '洛江区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1173, '350500', '350505', '泉港区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1174, '350500', '350521', '惠安县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1175, '350500', '350524', '安溪县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1176, '350500', '350525', '永春县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1177, '350500', '350526', '德化县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1178, '350500', '350527', '金门县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1179, '350500', '350581', '石狮市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1180, '350500', '350582', '晋江市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1181, '350500', '350583', '南安市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1182, '350000', '350600', '漳州市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1183, '350600', '350602', '芗城区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1184, '350600', '350603', '龙文区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1185, '350600', '350622', '云霄县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1186, '350600', '350623', '漳浦县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1187, '350600', '350624', '诏安县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1188, '350600', '350625', '长泰县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1189, '350600', '350626', '东山县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1190, '350600', '350627', '南靖县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1191, '350600', '350628', '平和县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1192, '350600', '350629', '华安县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1193, '350600', '350681', '龙海市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1194, '350000', '350700', '南平市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1195, '350700', '350702', '延平区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1196, '350700', '350703', '建阳区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1197, '350700', '350721', '顺昌县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1198, '350700', '350722', '浦城县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1199, '350700', '350723', '光泽县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1200, '350700', '350724', '松溪县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1201, '350700', '350725', '政和县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1202, '350700', '350781', '邵武市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1203, '350700', '350782', '武夷山市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1204, '350700', '350783', '建瓯市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1205, '350000', '350800', '龙岩市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1206, '350800', '350802', '新罗区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1207, '350800', '350803', '永定区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1208, '350800', '350821', '长汀县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1209, '350800', '350823', '上杭县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1210, '350800', '350824', '武平县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1211, '350800', '350825', '连城县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1212, '350800', '350881', '漳平市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1213, '350000', '350900', '宁德市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1214, '350900', '350902', '蕉城区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1215, '350900', '350921', '霞浦县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1216, '350900', '350922', '古田县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1217, '350900', '350923', '屏南县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1218, '350900', '350924', '寿宁县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1219, '350900', '350925', '周宁县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1220, '350900', '350926', '柘荣县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1221, '350900', '350981', '福安市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1222, '350900', '350982', '福鼎市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1223, NULL, '360000', '江西省', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1224, '360000', '360100', '南昌市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1225, '360100', '360102', '东湖区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1226, '360100', '360103', '西湖区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1227, '360100', '360104', '青云谱区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1228, '360100', '360111', '青山湖区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1229, '360100', '360112', '新建区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1230, '360100', '360113', '红谷滩区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1231, '360100', '360121', '南昌县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1232, '360100', '360123', '安义县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1233, '360100', '360124', '进贤县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1234, '360000', '360200', '景德镇市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1235, '360200', '360202', '昌江区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1236, '360200', '360203', '珠山区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1237, '360200', '360222', '浮梁县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1238, '360200', '360281', '乐平市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1239, '360000', '360300', '萍乡市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1240, '360300', '360302', '安源区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1241, '360300', '360313', '湘东区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1242, '360300', '360321', '莲花县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1243, '360300', '360322', '上栗县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1244, '360300', '360323', '芦溪县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1245, '360000', '360400', '九江市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1246, '360400', '360402', '濂溪区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1247, '360400', '360403', '浔阳区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1248, '360400', '360404', '柴桑区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1249, '360400', '360423', '武宁县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1250, '360400', '360424', '修水县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1251, '360400', '360425', '永修县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1252, '360400', '360426', '德安县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1253, '360400', '360428', '都昌县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1254, '360400', '360429', '湖口县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1255, '360400', '360430', '彭泽县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1256, '360400', '360481', '瑞昌市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1257, '360400', '360482', '共青城市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1258, '360400', '360483', '庐山市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1259, '360000', '360500', '新余市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1260, '360500', '360502', '渝水区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1261, '360500', '360521', '分宜县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1262, '360000', '360600', '鹰潭市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1263, '360600', '360602', '月湖区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1264, '360600', '360603', '余江区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1265, '360600', '360681', '贵溪市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1266, '360000', '360700', '赣州市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1267, '360700', '360702', '章贡区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1268, '360700', '360703', '南康区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1269, '360700', '360704', '赣县区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1270, '360700', '360722', '信丰县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1271, '360700', '360723', '大余县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1272, '360700', '360724', '上犹县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1273, '360700', '360725', '崇义县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1274, '360700', '360726', '安远县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1275, '360700', '360728', '定南县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1276, '360700', '360729', '全南县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1277, '360700', '360730', '宁都县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1278, '360700', '360731', '于都县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1279, '360700', '360732', '兴国县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1280, '360700', '360733', '会昌县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1281, '360700', '360734', '寻乌县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1282, '360700', '360735', '石城县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1283, '360700', '360781', '瑞金市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1284, '360700', '360783', '龙南市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1285, '360000', '360800', '吉安市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1286, '360800', '360802', '吉州区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1287, '360800', '360803', '青原区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1288, '360800', '360821', '吉安县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1289, '360800', '360822', '吉水县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1290, '360800', '360823', '峡江县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1291, '360800', '360824', '新干县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1292, '360800', '360825', '永丰县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1293, '360800', '360826', '泰和县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1294, '360800', '360827', '遂川县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1295, '360800', '360828', '万安县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1296, '360800', '360829', '安福县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1297, '360800', '360830', '永新县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1298, '360800', '360881', '井冈山市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1299, '360000', '360900', '宜春市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1300, '360900', '360902', '袁州区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1301, '360900', '360921', '奉新县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1302, '360900', '360922', '万载县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1303, '360900', '360923', '上高县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1304, '360900', '360924', '宜丰县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1305, '360900', '360925', '靖安县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1306, '360900', '360926', '铜鼓县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1307, '360900', '360981', '丰城市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1308, '360900', '360982', '樟树市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1309, '360900', '360983', '高安市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1310, '360000', '361000', '抚州市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1311, '361000', '361002', '临川区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1312, '361000', '361003', '东乡区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1313, '361000', '361021', '南城县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1314, '361000', '361022', '黎川县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1315, '361000', '361023', '南丰县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1316, '361000', '361024', '崇仁县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1317, '361000', '361025', '乐安县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1318, '361000', '361026', '宜黄县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1319, '361000', '361027', '金溪县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1320, '361000', '361028', '资溪县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1321, '361000', '361030', '广昌县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1322, '360000', '361100', '上饶市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1323, '361100', '361102', '信州区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1324, '361100', '361103', '广丰区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1325, '361100', '361104', '广信区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1326, '361100', '361123', '玉山县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1327, '361100', '361124', '铅山县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1328, '361100', '361125', '横峰县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1329, '361100', '361126', '弋阳县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1330, '361100', '361127', '余干县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1331, '361100', '361128', '鄱阳县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1332, '361100', '361129', '万年县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1333, '361100', '361130', '婺源县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1334, '361100', '361181', '德兴市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1335, NULL, '370000', '山东省', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1336, '370000', '370100', '济南市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1337, '370100', '370102', '历下区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1338, '370100', '370103', '市中区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1339, '370100', '370104', '槐荫区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1340, '370100', '370105', '天桥区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1341, '370100', '370112', '历城区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1342, '370100', '370113', '长清区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1343, '370100', '370114', '章丘区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1344, '370100', '370115', '济阳区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1345, '370100', '370116', '莱芜区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1346, '370100', '370117', '钢城区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1347, '370100', '370124', '平阴县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1348, '370100', '370126', '商河县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1349, '370000', '370200', '青岛市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1350, '370200', '370202', '市南区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1351, '370200', '370203', '市北区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1352, '370200', '370211', '黄岛区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1353, '370200', '370212', '崂山区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1354, '370200', '370213', '李沧区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1355, '370200', '370214', '城阳区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1356, '370200', '370215', '即墨区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1357, '370200', '370281', '胶州市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1358, '370200', '370283', '平度市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1359, '370200', '370285', '莱西市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1360, '370000', '370300', '淄博市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1361, '370300', '370302', '淄川区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1362, '370300', '370303', '张店区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1363, '370300', '370304', '博山区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1364, '370300', '370305', '临淄区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1365, '370300', '370306', '周村区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1366, '370300', '370321', '桓台县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1367, '370300', '370322', '高青县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1368, '370300', '370323', '沂源县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1369, '370000', '370400', '枣庄市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1370, '370400', '370402', '市中区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1371, '370400', '370403', '薛城区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1372, '370400', '370404', '峄城区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1373, '370400', '370405', '台儿庄区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1374, '370400', '370406', '山亭区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1375, '370400', '370481', '滕州市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1376, '370000', '370500', '东营市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1377, '370500', '370502', '东营区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1378, '370500', '370503', '河口区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1379, '370500', '370505', '垦利区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1380, '370500', '370522', '利津县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1381, '370500', '370523', '广饶县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1382, '370000', '370600', '烟台市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1383, '370600', '370602', '芝罘区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1384, '370600', '370611', '福山区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1385, '370600', '370612', '牟平区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1386, '370600', '370613', '莱山区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1387, '370600', '370614', '蓬莱区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1388, '370600', '370681', '龙口市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1389, '370600', '370682', '莱阳市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1390, '370600', '370683', '莱州市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1391, '370600', '370685', '招远市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1392, '370600', '370686', '栖霞市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1393, '370600', '370687', '海阳市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1394, '370000', '370700', '潍坊市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1395, '370700', '370702', '潍城区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1396, '370700', '370703', '寒亭区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1397, '370700', '370704', '坊子区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1398, '370700', '370705', '奎文区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1399, '370700', '370724', '临朐县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1400, '370700', '370725', '昌乐县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1401, '370700', '370781', '青州市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1402, '370700', '370782', '诸城市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1403, '370700', '370783', '寿光市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1404, '370700', '370784', '安丘市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1405, '370700', '370785', '高密市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1406, '370700', '370786', '昌邑市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1407, '370000', '370800', '济宁市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1408, '370800', '370811', '任城区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1409, '370800', '370812', '兖州区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1410, '370800', '370826', '微山县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1411, '370800', '370827', '鱼台县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1412, '370800', '370828', '金乡县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1413, '370800', '370829', '嘉祥县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1414, '370800', '370830', '汶上县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1415, '370800', '370831', '泗水县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1416, '370800', '370832', '梁山县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1417, '370800', '370881', '曲阜市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1418, '370800', '370883', '邹城市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1419, '370000', '370900', '泰安市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1420, '370900', '370902', '泰山区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1421, '370900', '370911', '岱岳区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1422, '370900', '370921', '宁阳县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1423, '370900', '370923', '东平县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1424, '370900', '370982', '新泰市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1425, '370900', '370983', '肥城市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1426, '370000', '371000', '威海市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1427, '371000', '371002', '环翠区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1428, '371000', '371003', '文登区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1429, '371000', '371082', '荣成市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1430, '371000', '371083', '乳山市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1431, '370000', '371100', '日照市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1432, '371100', '371102', '东港区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1433, '371100', '371103', '岚山区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1434, '371100', '371121', '五莲县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1435, '371100', '371122', '莒县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1436, '370000', '371300', '临沂市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1437, '371300', '371302', '兰山区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1438, '371300', '371311', '罗庄区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1439, '371300', '371312', '河东区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1440, '371300', '371321', '沂南县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1441, '371300', '371322', '郯城县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1442, '371300', '371323', '沂水县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1443, '371300', '371324', '兰陵县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1444, '371300', '371325', '费县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1445, '371300', '371326', '平邑县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1446, '371300', '371327', '莒南县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1447, '371300', '371328', '蒙阴县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1448, '371300', '371329', '临沭县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1449, '370000', '371400', '德州市', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1450, '371400', '371402', '德城区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1451, '371400', '371403', '陵城区', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1452, '371400', '371422', '宁津县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1453, '371400', '371423', '庆云县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1454, '371400', '371424', '临邑县', '1', NULL, '2022-01-12 20:45:04', NULL, '2022-01-12 20:45:04');
INSERT INTO `sys_division` VALUES (1455, '371400', '371425', '齐河县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1456, '371400', '371426', '平原县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1457, '371400', '371427', '夏津县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1458, '371400', '371428', '武城县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1459, '371400', '371481', '乐陵市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1460, '371400', '371482', '禹城市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1461, '370000', '371500', '聊城市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1462, '371500', '371502', '东昌府区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1463, '371500', '371503', '茌平区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1464, '371500', '371521', '阳谷县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1465, '371500', '371522', '莘县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1466, '371500', '371524', '东阿县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1467, '371500', '371525', '冠县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1468, '371500', '371526', '高唐县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1469, '371500', '371581', '临清市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1470, '370000', '371600', '滨州市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1471, '371600', '371602', '滨城区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1472, '371600', '371603', '沾化区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1473, '371600', '371621', '惠民县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1474, '371600', '371622', '阳信县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1475, '371600', '371623', '无棣县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1476, '371600', '371625', '博兴县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1477, '371600', '371681', '邹平市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1478, '370000', '371700', '菏泽市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1479, '371700', '371702', '牡丹区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1480, '371700', '371703', '定陶区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1481, '371700', '371721', '曹县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1482, '371700', '371722', '单县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1483, '371700', '371723', '成武县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1484, '371700', '371724', '巨野县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1485, '371700', '371725', '郓城县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1486, '371700', '371726', '鄄城县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1487, '371700', '371728', '东明县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1488, NULL, '410000', '河南省', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1489, '410000', '410100', '郑州市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1490, '410100', '410102', '中原区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1491, '410100', '410103', '二七区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1492, '410100', '410104', '管城回族区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1493, '410100', '410105', '金水区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1494, '410100', '410106', '上街区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1495, '410100', '410108', '惠济区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1496, '410100', '410122', '中牟县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1497, '410100', '410181', '巩义市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1498, '410100', '410182', '荥阳市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1499, '410100', '410183', '新密市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1500, '410100', '410184', '新郑市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1501, '410100', '410185', '登封市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1502, '410000', '410200', '开封市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1503, '410200', '410202', '龙亭区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1504, '410200', '410203', '顺河回族区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1505, '410200', '410204', '鼓楼区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1506, '410200', '410205', '禹王台区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1507, '410200', '410212', '祥符区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1508, '410200', '410221', '杞县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1509, '410200', '410222', '通许县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1510, '410200', '410223', '尉氏县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1511, '410200', '410225', '兰考县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1512, '410000', '410300', '洛阳市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1513, '410300', '410302', '老城区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1514, '410300', '410303', '西工区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1515, '410300', '410304', '瀍河回族区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1516, '410300', '410305', '涧西区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1517, '410300', '410306', '吉利区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1518, '410300', '410311', '洛龙区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1519, '410300', '410322', '孟津县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1520, '410300', '410323', '新安县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1521, '410300', '410324', '栾川县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1522, '410300', '410325', '嵩县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1523, '410300', '410326', '汝阳县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1524, '410300', '410327', '宜阳县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1525, '410300', '410328', '洛宁县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1526, '410300', '410329', '伊川县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1527, '410300', '410381', '偃师市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1528, '410000', '410400', '平顶山市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1529, '410400', '410402', '新华区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1530, '410400', '410403', '卫东区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1531, '410400', '410404', '石龙区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1532, '410400', '410411', '湛河区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1533, '410400', '410421', '宝丰县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1534, '410400', '410422', '叶县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1535, '410400', '410423', '鲁山县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1536, '410400', '410425', '郏县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1537, '410400', '410481', '舞钢市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1538, '410400', '410482', '汝州市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1539, '410000', '410500', '安阳市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1540, '410500', '410502', '文峰区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1541, '410500', '410503', '北关区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1542, '410500', '410505', '殷都区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1543, '410500', '410506', '龙安区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1544, '410500', '410522', '安阳县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1545, '410500', '410523', '汤阴县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1546, '410500', '410526', '滑县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1547, '410500', '410527', '内黄县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1548, '410500', '410581', '林州市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1549, '410000', '410600', '鹤壁市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1550, '410600', '410602', '鹤山区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1551, '410600', '410603', '山城区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1552, '410600', '410611', '淇滨区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1553, '410600', '410621', '浚县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1554, '410600', '410622', '淇县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1555, '410000', '410700', '新乡市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1556, '410700', '410702', '红旗区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1557, '410700', '410703', '卫滨区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1558, '410700', '410704', '凤泉区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1559, '410700', '410711', '牧野区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1560, '410700', '410721', '新乡县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1561, '410700', '410724', '获嘉县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1562, '410700', '410725', '原阳县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1563, '410700', '410726', '延津县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1564, '410700', '410727', '封丘县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1565, '410700', '410781', '卫辉市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1566, '410700', '410782', '辉县市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1567, '410700', '410783', '长垣市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1568, '410000', '410800', '焦作市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1569, '410800', '410802', '解放区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1570, '410800', '410803', '中站区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1571, '410800', '410804', '马村区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1572, '410800', '410811', '山阳区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1573, '410800', '410821', '修武县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1574, '410800', '410822', '博爱县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1575, '410800', '410823', '武陟县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1576, '410800', '410825', '温县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1577, '410800', '410882', '沁阳市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1578, '410800', '410883', '孟州市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1579, '410000', '410900', '濮阳市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1580, '410900', '410902', '华龙区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1581, '410900', '410922', '清丰县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1582, '410900', '410923', '南乐县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1583, '410900', '410926', '范县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1584, '410900', '410927', '台前县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1585, '410900', '410928', '濮阳县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1586, '410000', '411000', '许昌市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1587, '411000', '411002', '魏都区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1588, '411000', '411003', '建安区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1589, '411000', '411024', '鄢陵县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1590, '411000', '411025', '襄城县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1591, '411000', '411081', '禹州市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1592, '411000', '411082', '长葛市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1593, '410000', '411100', '漯河市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1594, '411100', '411102', '源汇区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1595, '411100', '411103', '郾城区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1596, '411100', '411104', '召陵区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1597, '411100', '411121', '舞阳县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1598, '411100', '411122', '临颍县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1599, '410000', '411200', '三门峡市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1600, '411200', '411202', '湖滨区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1601, '411200', '411203', '陕州区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1602, '411200', '411221', '渑池县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1603, '411200', '411224', '卢氏县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1604, '411200', '411281', '义马市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1605, '411200', '411282', '灵宝市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1606, '410000', '411300', '南阳市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1607, '411300', '411302', '宛城区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1608, '411300', '411303', '卧龙区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1609, '411300', '411321', '南召县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1610, '411300', '411322', '方城县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1611, '411300', '411323', '西峡县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1612, '411300', '411324', '镇平县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1613, '411300', '411325', '内乡县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1614, '411300', '411326', '淅川县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1615, '411300', '411327', '社旗县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1616, '411300', '411328', '唐河县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1617, '411300', '411329', '新野县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1618, '411300', '411330', '桐柏县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1619, '411300', '411381', '邓州市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1620, '410000', '411400', '商丘市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1621, '411400', '411402', '梁园区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1622, '411400', '411403', '睢阳区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1623, '411400', '411421', '民权县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1624, '411400', '411422', '睢县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1625, '411400', '411423', '宁陵县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1626, '411400', '411424', '柘城县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1627, '411400', '411425', '虞城县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1628, '411400', '411426', '夏邑县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1629, '411400', '411481', '永城市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1630, '410000', '411500', '信阳市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1631, '411500', '411502', '浉河区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1632, '411500', '411503', '平桥区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1633, '411500', '411521', '罗山县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1634, '411500', '411522', '光山县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1635, '411500', '411523', '新县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1636, '411500', '411524', '商城县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1637, '411500', '411525', '固始县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1638, '411500', '411526', '潢川县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1639, '411500', '411527', '淮滨县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1640, '411500', '411528', '息县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1641, '410000', '411600', '周口市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1642, '411600', '411602', '川汇区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1643, '411600', '411603', '淮阳区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1644, '411600', '411621', '扶沟县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1645, '411600', '411622', '西华县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1646, '411600', '411623', '商水县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1647, '411600', '411624', '沈丘县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1648, '411600', '411625', '郸城县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1649, '411600', '411627', '太康县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1650, '411600', '411628', '鹿邑县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1651, '411600', '411681', '项城市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1652, '410000', '411700', '驻马店市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1653, '411700', '411702', '驿城区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1654, '411700', '411721', '西平县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1655, '411700', '411722', '上蔡县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1656, '411700', '411723', '平舆县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1657, '411700', '411724', '正阳县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1658, '411700', '411725', '确山县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1659, '411700', '411726', '泌阳县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1660, '411700', '411727', '汝南县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1661, '411700', '411728', '遂平县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1662, '411700', '411729', '新蔡县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1663, '419000', '419001', '济源市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1664, NULL, '420000', '湖北省', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1665, '420000', '420100', '武汉市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1666, '420100', '420102', '江岸区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1667, '420100', '420103', '江汉区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1668, '420100', '420104', '硚口区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1669, '420100', '420105', '汉阳区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1670, '420100', '420106', '武昌区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1671, '420100', '420107', '青山区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1672, '420100', '420111', '洪山区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1673, '420100', '420112', '东西湖区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1674, '420100', '420113', '汉南区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1675, '420100', '420114', '蔡甸区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1676, '420100', '420115', '江夏区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1677, '420100', '420116', '黄陂区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1678, '420100', '420117', '新洲区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1679, '420000', '420200', '黄石市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1680, '420200', '420202', '黄石港区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1681, '420200', '420203', '西塞山区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1682, '420200', '420204', '下陆区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1683, '420200', '420205', '铁山区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1684, '420200', '420222', '阳新县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1685, '420200', '420281', '大冶市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1686, '420000', '420300', '十堰市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1687, '420300', '420302', '茅箭区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1688, '420300', '420303', '张湾区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1689, '420300', '420304', '郧阳区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1690, '420300', '420322', '郧西县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1691, '420300', '420323', '竹山县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1692, '420300', '420324', '竹溪县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1693, '420300', '420325', '房县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1694, '420300', '420381', '丹江口市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1695, '420000', '420500', '宜昌市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1696, '420500', '420502', '西陵区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1697, '420500', '420503', '伍家岗区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1698, '420500', '420504', '点军区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1699, '420500', '420505', '猇亭区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1700, '420500', '420506', '夷陵区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1701, '420500', '420525', '远安县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1702, '420500', '420526', '兴山县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1703, '420500', '420527', '秭归县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1704, '420500', '420528', '长阳土家族自治县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1705, '420500', '420529', '五峰土家族自治县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1706, '420500', '420581', '宜都市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1707, '420500', '420582', '当阳市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1708, '420500', '420583', '枝江市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1709, '420000', '420600', '襄阳市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1710, '420600', '420602', '襄城区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1711, '420600', '420606', '樊城区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1712, '420600', '420607', '襄州区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1713, '420600', '420624', '南漳县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1714, '420600', '420625', '谷城县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1715, '420600', '420626', '保康县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1716, '420600', '420682', '老河口市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1717, '420600', '420683', '枣阳市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1718, '420600', '420684', '宜城市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1719, '420000', '420700', '鄂州市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1720, '420700', '420702', '梁子湖区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1721, '420700', '420703', '华容区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1722, '420700', '420704', '鄂城区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1723, '420000', '420800', '荆门市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1724, '420800', '420802', '东宝区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1725, '420800', '420804', '掇刀区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1726, '420800', '420822', '沙洋县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1727, '420800', '420881', '钟祥市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1728, '420800', '420882', '京山市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1729, '420000', '420900', '孝感市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1730, '420900', '420902', '孝南区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1731, '420900', '420921', '孝昌县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1732, '420900', '420922', '大悟县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1733, '420900', '420923', '云梦县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1734, '420900', '420981', '应城市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1735, '420900', '420982', '安陆市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1736, '420900', '420984', '汉川市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1737, '420000', '421000', '荆州市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1738, '421000', '421002', '沙市区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1739, '421000', '421003', '荆州区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1740, '421000', '421022', '公安县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1741, '421000', '421024', '江陵县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1742, '421000', '421081', '石首市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1743, '421000', '421083', '洪湖市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1744, '421000', '421087', '松滋市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1745, '421000', '421088', '监利市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1746, '420000', '421100', '黄冈市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1747, '421100', '421102', '黄州区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1748, '421100', '421121', '团风县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1749, '421100', '421122', '红安县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1750, '421100', '421123', '罗田县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1751, '421100', '421124', '英山县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1752, '421100', '421125', '浠水县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1753, '421100', '421126', '蕲春县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1754, '421100', '421127', '黄梅县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1755, '421100', '421181', '麻城市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1756, '421100', '421182', '武穴市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1757, '420000', '421200', '咸宁市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1758, '421200', '421202', '咸安区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1759, '421200', '421221', '嘉鱼县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1760, '421200', '421222', '通城县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1761, '421200', '421223', '崇阳县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1762, '421200', '421224', '通山县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1763, '421200', '421281', '赤壁市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1764, '420000', '421300', '随州市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1765, '421300', '421303', '曾都区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1766, '421300', '421321', '随县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1767, '421300', '421381', '广水市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1768, '420000', '422800', '恩施土家族苗族自治州', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1769, '422800', '422801', '恩施市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1770, '422800', '422802', '利川市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1771, '422800', '422822', '建始县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1772, '422800', '422823', '巴东县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1773, '422800', '422825', '宣恩县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1774, '422800', '422826', '咸丰县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1775, '422800', '422827', '来凤县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1776, '422800', '422828', '鹤峰县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1777, '429000', '429004', '仙桃市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1778, '429000', '429005', '潜江市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1779, '429000', '429006', '天门市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1780, '429000', '429021', '神农架林区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1781, NULL, '430000', '湖南省', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1782, '430000', '430100', '长沙市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1783, '430100', '430102', '芙蓉区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1784, '430100', '430103', '天心区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1785, '430100', '430104', '岳麓区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1786, '430100', '430105', '开福区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1787, '430100', '430111', '雨花区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1788, '430100', '430112', '望城区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1789, '430100', '430121', '长沙县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1790, '430100', '430181', '浏阳市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1791, '430100', '430182', '宁乡市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1792, '430000', '430200', '株洲市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1793, '430200', '430202', '荷塘区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1794, '430200', '430203', '芦淞区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1795, '430200', '430204', '石峰区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1796, '430200', '430211', '天元区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1797, '430200', '430212', '渌口区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1798, '430200', '430223', '攸县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1799, '430200', '430224', '茶陵县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1800, '430200', '430225', '炎陵县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1801, '430200', '430281', '醴陵市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1802, '430000', '430300', '湘潭市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1803, '430300', '430302', '雨湖区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1804, '430300', '430304', '岳塘区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1805, '430300', '430321', '湘潭县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1806, '430300', '430381', '湘乡市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1807, '430300', '430382', '韶山市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1808, '430000', '430400', '衡阳市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1809, '430400', '430405', '珠晖区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1810, '430400', '430406', '雁峰区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1811, '430400', '430407', '石鼓区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1812, '430400', '430408', '蒸湘区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1813, '430400', '430412', '南岳区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1814, '430400', '430421', '衡阳县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1815, '430400', '430422', '衡南县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1816, '430400', '430423', '衡山县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1817, '430400', '430424', '衡东县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1818, '430400', '430426', '祁东县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1819, '430400', '430481', '耒阳市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1820, '430400', '430482', '常宁市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1821, '430000', '430500', '邵阳市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1822, '430500', '430502', '双清区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1823, '430500', '430503', '大祥区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1824, '430500', '430511', '北塔区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1825, '430500', '430522', '新邵县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1826, '430500', '430523', '邵阳县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1827, '430500', '430524', '隆回县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1828, '430500', '430525', '洞口县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1829, '430500', '430527', '绥宁县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1830, '430500', '430528', '新宁县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1831, '430500', '430529', '城步苗族自治县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1832, '430500', '430581', '武冈市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1833, '430500', '430582', '邵东市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1834, '430000', '430600', '岳阳市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1835, '430600', '430602', '岳阳楼区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1836, '430600', '430603', '云溪区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1837, '430600', '430611', '君山区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1838, '430600', '430621', '岳阳县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1839, '430600', '430623', '华容县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1840, '430600', '430624', '湘阴县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1841, '430600', '430626', '平江县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1842, '430600', '430681', '汨罗市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1843, '430600', '430682', '临湘市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1844, '430000', '430700', '常德市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1845, '430700', '430702', '武陵区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1846, '430700', '430703', '鼎城区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1847, '430700', '430721', '安乡县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1848, '430700', '430722', '汉寿县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1849, '430700', '430723', '澧县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1850, '430700', '430724', '临澧县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1851, '430700', '430725', '桃源县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1852, '430700', '430726', '石门县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1853, '430700', '430781', '津市市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1854, '430000', '430800', '张家界市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1855, '430800', '430802', '永定区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1856, '430800', '430811', '武陵源区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1857, '430800', '430821', '慈利县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1858, '430800', '430822', '桑植县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1859, '430000', '430900', '益阳市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1860, '430900', '430902', '资阳区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1861, '430900', '430903', '赫山区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1862, '430900', '430921', '南县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1863, '430900', '430922', '桃江县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1864, '430900', '430923', '安化县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1865, '430900', '430981', '沅江市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1866, '430000', '431000', '郴州市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1867, '431000', '431002', '北湖区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1868, '431000', '431003', '苏仙区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1869, '431000', '431021', '桂阳县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1870, '431000', '431022', '宜章县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1871, '431000', '431023', '永兴县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1872, '431000', '431024', '嘉禾县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1873, '431000', '431025', '临武县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1874, '431000', '431026', '汝城县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1875, '431000', '431027', '桂东县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1876, '431000', '431028', '安仁县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1877, '431000', '431081', '资兴市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1878, '430000', '431100', '永州市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1879, '431100', '431102', '零陵区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1880, '431100', '431103', '冷水滩区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1881, '431100', '431121', '祁阳县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1882, '431100', '431122', '东安县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1883, '431100', '431123', '双牌县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1884, '431100', '431124', '道县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1885, '431100', '431125', '江永县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1886, '431100', '431126', '宁远县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1887, '431100', '431127', '蓝山县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1888, '431100', '431128', '新田县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1889, '431100', '431129', '江华瑶族自治县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1890, '430000', '431200', '怀化市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1891, '431200', '431202', '鹤城区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1892, '431200', '431221', '中方县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1893, '431200', '431222', '沅陵县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1894, '431200', '431223', '辰溪县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1895, '431200', '431224', '溆浦县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1896, '431200', '431225', '会同县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1897, '431200', '431226', '麻阳苗族自治县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1898, '431200', '431227', '新晃侗族自治县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1899, '431200', '431228', '芷江侗族自治县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1900, '431200', '431229', '靖州苗族侗族自治县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1901, '431200', '431230', '通道侗族自治县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1902, '431200', '431281', '洪江市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1903, '430000', '431300', '娄底市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1904, '431300', '431302', '娄星区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1905, '431300', '431321', '双峰县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1906, '431300', '431322', '新化县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1907, '431300', '431381', '冷水江市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1908, '431300', '431382', '涟源市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1909, '430000', '433100', '湘西土家族苗族自治州', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1910, '433100', '433101', '吉首市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1911, '433100', '433122', '泸溪县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1912, '433100', '433123', '凤凰县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1913, '433100', '433124', '花垣县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1914, '433100', '433125', '保靖县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1915, '433100', '433126', '古丈县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1916, '433100', '433127', '永顺县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1917, '433100', '433130', '龙山县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1918, NULL, '440000', '广东省', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1919, '440000', '440100', '广州市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1920, '440100', '440103', '荔湾区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1921, '440100', '440104', '越秀区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1922, '440100', '440105', '海珠区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1923, '440100', '440106', '天河区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1924, '440100', '440111', '白云区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1925, '440100', '440112', '黄埔区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1926, '440100', '440113', '番禺区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1927, '440100', '440114', '花都区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1928, '440100', '440115', '南沙区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1929, '440100', '440117', '从化区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1930, '440100', '440118', '增城区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1931, '440000', '440200', '韶关市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1932, '440200', '440203', '武江区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1933, '440200', '440204', '浈江区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1934, '440200', '440205', '曲江区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1935, '440200', '440222', '始兴县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1936, '440200', '440224', '仁化县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1937, '440200', '440229', '翁源县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1938, '440200', '440232', '乳源瑶族自治县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1939, '440200', '440233', '新丰县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1940, '440200', '440281', '乐昌市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1941, '440200', '440282', '南雄市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1942, '440000', '440300', '深圳市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1943, '440300', '440303', '罗湖区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1944, '440300', '440304', '福田区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1945, '440300', '440305', '南山区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1946, '440300', '440306', '宝安区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1947, '440300', '440307', '龙岗区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1948, '440300', '440308', '盐田区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1949, '440300', '440309', '龙华区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1950, '440300', '440310', '坪山区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1951, '440300', '440311', '光明区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1952, '440000', '440400', '珠海市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1953, '440400', '440402', '香洲区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1954, '440400', '440403', '斗门区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1955, '440400', '440404', '金湾区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1956, '440000', '440500', '汕头市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1957, '440500', '440507', '龙湖区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1958, '440500', '440511', '金平区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1959, '440500', '440512', '濠江区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1960, '440500', '440513', '潮阳区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1961, '440500', '440514', '潮南区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1962, '440500', '440515', '澄海区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1963, '440500', '440523', '南澳县', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1964, '440000', '440600', '佛山市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1965, '440600', '440604', '禅城区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1966, '440600', '440605', '南海区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1967, '440600', '440606', '顺德区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1968, '440600', '440607', '三水区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1969, '440600', '440608', '高明区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1970, '440000', '440700', '江门市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1971, '440700', '440703', '蓬江区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1972, '440700', '440704', '江海区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1973, '440700', '440705', '新会区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1974, '440700', '440781', '台山市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1975, '440700', '440783', '开平市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1976, '440700', '440784', '鹤山市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1977, '440700', '440785', '恩平市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1978, '440000', '440800', '湛江市', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1979, '440800', '440802', '赤坎区', '1', NULL, '2022-01-12 20:45:05', NULL, '2022-01-12 20:45:05');
INSERT INTO `sys_division` VALUES (1980, '440800', '440803', '霞山区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (1981, '440800', '440804', '坡头区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (1982, '440800', '440811', '麻章区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (1983, '440800', '440823', '遂溪县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (1984, '440800', '440825', '徐闻县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (1985, '440800', '440881', '廉江市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (1986, '440800', '440882', '雷州市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (1987, '440800', '440883', '吴川市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (1988, '440000', '440900', '茂名市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (1989, '440900', '440902', '茂南区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (1990, '440900', '440904', '电白区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (1991, '440900', '440981', '高州市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (1992, '440900', '440982', '化州市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (1993, '440900', '440983', '信宜市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (1994, '440000', '441200', '肇庆市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (1995, '441200', '441202', '端州区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (1996, '441200', '441203', '鼎湖区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (1997, '441200', '441204', '高要区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (1998, '441200', '441223', '广宁县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (1999, '441200', '441224', '怀集县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2000, '441200', '441225', '封开县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2001, '441200', '441226', '德庆县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2002, '441200', '441284', '四会市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2003, '440000', '441300', '惠州市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2004, '441300', '441302', '惠城区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2005, '441300', '441303', '惠阳区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2006, '441300', '441322', '博罗县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2007, '441300', '441323', '惠东县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2008, '441300', '441324', '龙门县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2009, '440000', '441400', '梅州市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2010, '441400', '441402', '梅江区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2011, '441400', '441403', '梅县区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2012, '441400', '441422', '大埔县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2013, '441400', '441423', '丰顺县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2014, '441400', '441424', '五华县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2015, '441400', '441426', '平远县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2016, '441400', '441427', '蕉岭县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2017, '441400', '441481', '兴宁市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2018, '440000', '441500', '汕尾市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2019, '441500', '441502', '城区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2020, '441500', '441521', '海丰县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2021, '441500', '441523', '陆河县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2022, '441500', '441581', '陆丰市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2023, '440000', '441600', '河源市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2024, '441600', '441602', '源城区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2025, '441600', '441621', '紫金县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2026, '441600', '441622', '龙川县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2027, '441600', '441623', '连平县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2028, '441600', '441624', '和平县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2029, '441600', '441625', '东源县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2030, '440000', '441700', '阳江市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2031, '441700', '441702', '江城区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2032, '441700', '441704', '阳东区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2033, '441700', '441721', '阳西县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2034, '441700', '441781', '阳春市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2035, '440000', '441800', '清远市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2036, '441800', '441802', '清城区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2037, '441800', '441803', '清新区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2038, '441800', '441821', '佛冈县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2039, '441800', '441823', '阳山县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2040, '441800', '441825', '连山壮族瑶族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2041, '441800', '441826', '连南瑶族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2042, '441800', '441881', '英德市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2043, '441800', '441882', '连州市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2044, '440000', '441900', '东莞市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2045, '440000', '442000', '中山市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2046, '440000', '445100', '潮州市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2047, '445100', '445102', '湘桥区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2048, '445100', '445103', '潮安区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2049, '445100', '445122', '饶平县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2050, '440000', '445200', '揭阳市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2051, '445200', '445202', '榕城区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2052, '445200', '445203', '揭东区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2053, '445200', '445222', '揭西县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2054, '445200', '445224', '惠来县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2055, '445200', '445281', '普宁市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2056, '440000', '445300', '云浮市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2057, '445300', '445302', '云城区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2058, '445300', '445303', '云安区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2059, '445300', '445321', '新兴县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2060, '445300', '445322', '郁南县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2061, '445300', '445381', '罗定市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2062, NULL, '450000', '广西壮族自治区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2063, '450000', '450100', '南宁市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2064, '450100', '450102', '兴宁区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2065, '450100', '450103', '青秀区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2066, '450100', '450105', '江南区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2067, '450100', '450107', '西乡塘区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2068, '450100', '450108', '良庆区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2069, '450100', '450109', '邕宁区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2070, '450100', '450110', '武鸣区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2071, '450100', '450123', '隆安县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2072, '450100', '450124', '马山县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2073, '450100', '450125', '上林县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2074, '450100', '450126', '宾阳县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2075, '450100', '450127', '横县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2076, '450000', '450200', '柳州市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2077, '450200', '450202', '城中区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2078, '450200', '450203', '鱼峰区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2079, '450200', '450204', '柳南区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2080, '450200', '450205', '柳北区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2081, '450200', '450206', '柳江区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2082, '450200', '450222', '柳城县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2083, '450200', '450223', '鹿寨县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2084, '450200', '450224', '融安县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2085, '450200', '450225', '融水苗族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2086, '450200', '450226', '三江侗族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2087, '450000', '450300', '桂林市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2088, '450300', '450302', '秀峰区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2089, '450300', '450303', '叠彩区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2090, '450300', '450304', '象山区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2091, '450300', '450305', '七星区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2092, '450300', '450311', '雁山区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2093, '450300', '450312', '临桂区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2094, '450300', '450321', '阳朔县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2095, '450300', '450323', '灵川县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2096, '450300', '450324', '全州县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2097, '450300', '450325', '兴安县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2098, '450300', '450326', '永福县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2099, '450300', '450327', '灌阳县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2100, '450300', '450328', '龙胜各族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2101, '450300', '450329', '资源县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2102, '450300', '450330', '平乐县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2103, '450300', '450332', '恭城瑶族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2104, '450300', '450381', '荔浦市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2105, '450000', '450400', '梧州市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2106, '450400', '450403', '万秀区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2107, '450400', '450405', '长洲区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2108, '450400', '450406', '龙圩区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2109, '450400', '450421', '苍梧县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2110, '450400', '450422', '藤县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2111, '450400', '450423', '蒙山县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2112, '450400', '450481', '岑溪市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2113, '450000', '450500', '北海市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2114, '450500', '450502', '海城区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2115, '450500', '450503', '银海区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2116, '450500', '450512', '铁山港区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2117, '450500', '450521', '合浦县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2118, '450000', '450600', '防城港市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2119, '450600', '450602', '港口区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2120, '450600', '450603', '防城区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2121, '450600', '450621', '上思县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2122, '450600', '450681', '东兴市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2123, '450000', '450700', '钦州市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2124, '450700', '450702', '钦南区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2125, '450700', '450703', '钦北区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2126, '450700', '450721', '灵山县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2127, '450700', '450722', '浦北县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2128, '450000', '450800', '贵港市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2129, '450800', '450802', '港北区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2130, '450800', '450803', '港南区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2131, '450800', '450804', '覃塘区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2132, '450800', '450821', '平南县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2133, '450800', '450881', '桂平市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2134, '450000', '450900', '玉林市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2135, '450900', '450902', '玉州区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2136, '450900', '450903', '福绵区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2137, '450900', '450921', '容县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2138, '450900', '450922', '陆川县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2139, '450900', '450923', '博白县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2140, '450900', '450924', '兴业县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2141, '450900', '450981', '北流市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2142, '450000', '451000', '百色市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2143, '451000', '451002', '右江区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2144, '451000', '451003', '田阳区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2145, '451000', '451022', '田东县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2146, '451000', '451024', '德保县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2147, '451000', '451026', '那坡县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2148, '451000', '451027', '凌云县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2149, '451000', '451028', '乐业县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2150, '451000', '451029', '田林县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2151, '451000', '451030', '西林县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2152, '451000', '451031', '隆林各族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2153, '451000', '451081', '靖西市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2154, '451000', '451082', '平果市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2155, '450000', '451100', '贺州市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2156, '451100', '451102', '八步区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2157, '451100', '451103', '平桂区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2158, '451100', '451121', '昭平县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2159, '451100', '451122', '钟山县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2160, '451100', '451123', '富川瑶族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2161, '450000', '451200', '河池市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2162, '451200', '451202', '金城江区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2163, '451200', '451203', '宜州区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2164, '451200', '451221', '南丹县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2165, '451200', '451222', '天峨县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2166, '451200', '451223', '凤山县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2167, '451200', '451224', '东兰县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2168, '451200', '451225', '罗城仫佬族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2169, '451200', '451226', '环江毛南族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2170, '451200', '451227', '巴马瑶族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2171, '451200', '451228', '都安瑶族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2172, '451200', '451229', '大化瑶族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2173, '450000', '451300', '来宾市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2174, '451300', '451302', '兴宾区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2175, '451300', '451321', '忻城县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2176, '451300', '451322', '象州县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2177, '451300', '451323', '武宣县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2178, '451300', '451324', '金秀瑶族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2179, '451300', '451381', '合山市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2180, '450000', '451400', '崇左市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2181, '451400', '451402', '江州区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2182, '451400', '451421', '扶绥县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2183, '451400', '451422', '宁明县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2184, '451400', '451423', '龙州县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2185, '451400', '451424', '大新县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2186, '451400', '451425', '天等县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2187, '451400', '451481', '凭祥市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2188, NULL, '460000', '海南省', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2189, '460000', '460100', '海口市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2190, '460100', '460105', '秀英区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2191, '460100', '460106', '龙华区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2192, '460100', '460107', '琼山区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2193, '460100', '460108', '美兰区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2194, '460000', '460200', '三亚市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2195, '460200', '460202', '海棠区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2196, '460200', '460203', '吉阳区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2197, '460200', '460204', '天涯区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2198, '460200', '460205', '崖州区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2199, '460000', '460300', '三沙市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2200, '460300', '460321', '西沙区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2201, '460300', '460322', '南沙区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2202, '460000', '460400', '儋州市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2203, '469000', '469001', '五指山市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2204, '469000', '469002', '琼海市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2205, '469000', '469005', '文昌市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2206, '469000', '469006', '万宁市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2207, '469000', '469007', '东方市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2208, '469000', '469021', '定安县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2209, '469000', '469022', '屯昌县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2210, '469000', '469023', '澄迈县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2211, '469000', '469024', '临高县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2212, '469000', '469025', '白沙黎族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2213, '469000', '469026', '昌江黎族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2214, '469000', '469027', '乐东黎族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2215, '469000', '469028', '陵水黎族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2216, '469000', '469029', '保亭黎族苗族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2217, '469000', '469030', '琼中黎族苗族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2218, NULL, '500000', '重庆市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2219, '500000', '500101', '万州区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2220, '500000', '500102', '涪陵区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2221, '500000', '500103', '渝中区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2222, '500000', '500104', '大渡口区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2223, '500000', '500105', '江北区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2224, '500000', '500106', '沙坪坝区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2225, '500000', '500107', '九龙坡区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2226, '500000', '500108', '南岸区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2227, '500000', '500109', '北碚区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2228, '500000', '500110', '綦江区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2229, '500000', '500111', '大足区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2230, '500000', '500112', '渝北区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2231, '500000', '500113', '巴南区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2232, '500000', '500114', '黔江区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2233, '500000', '500115', '长寿区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2234, '500000', '500116', '江津区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2235, '500000', '500117', '合川区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2236, '500000', '500118', '永川区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2237, '500000', '500119', '南川区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2238, '500000', '500120', '璧山区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2239, '500000', '500151', '铜梁区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2240, '500000', '500152', '潼南区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2241, '500000', '500153', '荣昌区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2242, '500000', '500154', '开州区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2243, '500000', '500155', '梁平区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2244, '500000', '500156', '武隆区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2245, '500000', '500229', '城口县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2246, '500000', '500230', '丰都县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2247, '500000', '500231', '垫江县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2248, '500000', '500233', '忠县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2249, '500000', '500235', '云阳县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2250, '500000', '500236', '奉节县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2251, '500000', '500237', '巫山县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2252, '500000', '500238', '巫溪县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2253, '500000', '500240', '石柱土家族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2254, '500000', '500241', '秀山土家族苗族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2255, '500000', '500242', '酉阳土家族苗族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2256, '500000', '500243', '彭水苗族土家族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2257, NULL, '510000', '四川省', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2258, '510000', '510100', '成都市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2259, '510100', '510104', '锦江区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2260, '510100', '510105', '青羊区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2261, '510100', '510106', '金牛区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2262, '510100', '510107', '武侯区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2263, '510100', '510108', '成华区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2264, '510100', '510112', '龙泉驿区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2265, '510100', '510113', '青白江区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2266, '510100', '510114', '新都区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2267, '510100', '510115', '温江区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2268, '510100', '510116', '双流区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2269, '510100', '510117', '郫都区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2270, '510100', '510118', '新津区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2271, '510100', '510121', '金堂县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2272, '510100', '510129', '大邑县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2273, '510100', '510131', '蒲江县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2274, '510100', '510181', '都江堰市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2275, '510100', '510182', '彭州市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2276, '510100', '510183', '邛崃市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2277, '510100', '510184', '崇州市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2278, '510100', '510185', '简阳市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2279, '510000', '510300', '自贡市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2280, '510300', '510302', '自流井区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2281, '510300', '510303', '贡井区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2282, '510300', '510304', '大安区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2283, '510300', '510311', '沿滩区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2284, '510300', '510321', '荣县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2285, '510300', '510322', '富顺县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2286, '510000', '510400', '攀枝花市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2287, '510400', '510402', '东区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2288, '510400', '510403', '西区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2289, '510400', '510411', '仁和区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2290, '510400', '510421', '米易县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2291, '510400', '510422', '盐边县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2292, '510000', '510500', '泸州市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2293, '510500', '510502', '江阳区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2294, '510500', '510503', '纳溪区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2295, '510500', '510504', '龙马潭区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2296, '510500', '510521', '泸县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2297, '510500', '510522', '合江县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2298, '510500', '510524', '叙永县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2299, '510500', '510525', '古蔺县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2300, '510000', '510600', '德阳市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2301, '510600', '510603', '旌阳区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2302, '510600', '510604', '罗江区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2303, '510600', '510623', '中江县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2304, '510600', '510681', '广汉市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2305, '510600', '510682', '什邡市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2306, '510600', '510683', '绵竹市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2307, '510000', '510700', '绵阳市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2308, '510700', '510703', '涪城区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2309, '510700', '510704', '游仙区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2310, '510700', '510705', '安州区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2311, '510700', '510722', '三台县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2312, '510700', '510723', '盐亭县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2313, '510700', '510725', '梓潼县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2314, '510700', '510726', '北川羌族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2315, '510700', '510727', '平武县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2316, '510700', '510781', '江油市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2317, '510000', '510800', '广元市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2318, '510800', '510802', '利州区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2319, '510800', '510811', '昭化区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2320, '510800', '510812', '朝天区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2321, '510800', '510821', '旺苍县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2322, '510800', '510822', '青川县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2323, '510800', '510823', '剑阁县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2324, '510800', '510824', '苍溪县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2325, '510000', '510900', '遂宁市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2326, '510900', '510903', '船山区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2327, '510900', '510904', '安居区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2328, '510900', '510921', '蓬溪县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2329, '510900', '510923', '大英县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2330, '510900', '510981', '射洪市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2331, '510000', '511000', '内江市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2332, '511000', '511002', '市中区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2333, '511000', '511011', '东兴区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2334, '511000', '511024', '威远县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2335, '511000', '511025', '资中县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2336, '511000', '511083', '隆昌市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2337, '510000', '511100', '乐山市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2338, '511100', '511102', '市中区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2339, '511100', '511111', '沙湾区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2340, '511100', '511112', '五通桥区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2341, '511100', '511113', '金口河区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2342, '511100', '511123', '犍为县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2343, '511100', '511124', '井研县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2344, '511100', '511126', '夹江县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2345, '511100', '511129', '沐川县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2346, '511100', '511132', '峨边彝族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2347, '511100', '511133', '马边彝族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2348, '511100', '511181', '峨眉山市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2349, '510000', '511300', '南充市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2350, '511300', '511302', '顺庆区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2351, '511300', '511303', '高坪区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2352, '511300', '511304', '嘉陵区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2353, '511300', '511321', '南部县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2354, '511300', '511322', '营山县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2355, '511300', '511323', '蓬安县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2356, '511300', '511324', '仪陇县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2357, '511300', '511325', '西充县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2358, '511300', '511381', '阆中市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2359, '510000', '511400', '眉山市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2360, '511400', '511402', '东坡区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2361, '511400', '511403', '彭山区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2362, '511400', '511421', '仁寿县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2363, '511400', '511423', '洪雅县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2364, '511400', '511424', '丹棱县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2365, '511400', '511425', '青神县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2366, '510000', '511500', '宜宾市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2367, '511500', '511502', '翠屏区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2368, '511500', '511503', '南溪区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2369, '511500', '511504', '叙州区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2370, '511500', '511523', '江安县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2371, '511500', '511524', '长宁县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2372, '511500', '511525', '高县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2373, '511500', '511526', '珙县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2374, '511500', '511527', '筠连县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2375, '511500', '511528', '兴文县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2376, '511500', '511529', '屏山县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2377, '510000', '511600', '广安市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2378, '511600', '511602', '广安区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2379, '511600', '511603', '前锋区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2380, '511600', '511621', '岳池县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2381, '511600', '511622', '武胜县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2382, '511600', '511623', '邻水县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2383, '511600', '511681', '华蓥市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2384, '510000', '511700', '达州市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2385, '511700', '511702', '通川区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2386, '511700', '511703', '达川区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2387, '511700', '511722', '宣汉县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2388, '511700', '511723', '开江县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2389, '511700', '511724', '大竹县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2390, '511700', '511725', '渠县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2391, '511700', '511781', '万源市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2392, '510000', '511800', '雅安市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2393, '511800', '511802', '雨城区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2394, '511800', '511803', '名山区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2395, '511800', '511822', '荥经县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2396, '511800', '511823', '汉源县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2397, '511800', '511824', '石棉县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2398, '511800', '511825', '天全县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2399, '511800', '511826', '芦山县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2400, '511800', '511827', '宝兴县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2401, '510000', '511900', '巴中市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2402, '511900', '511902', '巴州区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2403, '511900', '511903', '恩阳区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2404, '511900', '511921', '通江县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2405, '511900', '511922', '南江县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2406, '511900', '511923', '平昌县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2407, '510000', '512000', '资阳市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2408, '512000', '512002', '雁江区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2409, '512000', '512021', '安岳县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2410, '512000', '512022', '乐至县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2411, '510000', '513200', '阿坝藏族羌族自治州', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2412, '513200', '513201', '马尔康市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2413, '513200', '513221', '汶川县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2414, '513200', '513222', '理县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2415, '513200', '513223', '茂县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2416, '513200', '513224', '松潘县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2417, '513200', '513225', '九寨沟县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2418, '513200', '513226', '金川县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2419, '513200', '513227', '小金县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2420, '513200', '513228', '黑水县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2421, '513200', '513230', '壤塘县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2422, '513200', '513231', '阿坝县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2423, '513200', '513232', '若尔盖县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2424, '513200', '513233', '红原县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2425, '510000', '513300', '甘孜藏族自治州', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2426, '513300', '513301', '康定市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2427, '513300', '513322', '泸定县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2428, '513300', '513323', '丹巴县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2429, '513300', '513324', '九龙县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2430, '513300', '513325', '雅江县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2431, '513300', '513326', '道孚县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2432, '513300', '513327', '炉霍县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2433, '513300', '513328', '甘孜县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2434, '513300', '513329', '新龙县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2435, '513300', '513330', '德格县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2436, '513300', '513331', '白玉县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2437, '513300', '513332', '石渠县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2438, '513300', '513333', '色达县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2439, '513300', '513334', '理塘县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2440, '513300', '513335', '巴塘县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2441, '513300', '513336', '乡城县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2442, '513300', '513337', '稻城县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2443, '513300', '513338', '得荣县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2444, '510000', '513400', '凉山彝族自治州', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2445, '513400', '513401', '西昌市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2446, '513400', '513422', '木里藏族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2447, '513400', '513423', '盐源县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2448, '513400', '513424', '德昌县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2449, '513400', '513425', '会理县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2450, '513400', '513426', '会东县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2451, '513400', '513427', '宁南县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2452, '513400', '513428', '普格县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2453, '513400', '513429', '布拖县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2454, '513400', '513430', '金阳县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2455, '513400', '513431', '昭觉县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2456, '513400', '513432', '喜德县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2457, '513400', '513433', '冕宁县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2458, '513400', '513434', '越西县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2459, '513400', '513435', '甘洛县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2460, '513400', '513436', '美姑县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2461, '513400', '513437', '雷波县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2462, NULL, '520000', '贵州省', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2463, '520000', '520100', '贵阳市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2464, '520100', '520102', '南明区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2465, '520100', '520103', '云岩区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2466, '520100', '520111', '花溪区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2467, '520100', '520112', '乌当区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2468, '520100', '520113', '白云区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2469, '520100', '520115', '观山湖区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2470, '520100', '520121', '开阳县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2471, '520100', '520122', '息烽县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2472, '520100', '520123', '修文县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2473, '520100', '520181', '清镇市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2474, '520000', '520200', '六盘水市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2475, '520200', '520201', '钟山区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2476, '520200', '520203', '六枝特区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2477, '520200', '520204', '水城区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2478, '520200', '520281', '盘州市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2479, '520000', '520300', '遵义市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2480, '520300', '520302', '红花岗区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2481, '520300', '520303', '汇川区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2482, '520300', '520304', '播州区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2483, '520300', '520322', '桐梓县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2484, '520300', '520323', '绥阳县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2485, '520300', '520324', '正安县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2486, '520300', '520325', '道真仡佬族苗族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2487, '520300', '520326', '务川仡佬族苗族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2488, '520300', '520327', '凤冈县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2489, '520300', '520328', '湄潭县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2490, '520300', '520329', '余庆县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2491, '520300', '520330', '习水县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2492, '520300', '520381', '赤水市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2493, '520300', '520382', '仁怀市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2494, '520000', '520400', '安顺市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2495, '520400', '520402', '西秀区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2496, '520400', '520403', '平坝区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2497, '520400', '520422', '普定县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2498, '520400', '520423', '镇宁布依族苗族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2499, '520400', '520424', '关岭布依族苗族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2500, '520400', '520425', '紫云苗族布依族自治县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2501, '520000', '520500', '毕节市', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2502, '520500', '520502', '七星关区', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2503, '520500', '520521', '大方县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2504, '520500', '520522', '黔西县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2505, '520500', '520523', '金沙县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2506, '520500', '520524', '织金县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2507, '520500', '520525', '纳雍县', '1', NULL, '2022-01-12 20:45:06', NULL, '2022-01-12 20:45:06');
INSERT INTO `sys_division` VALUES (2508, '520500', '520526', '威宁彝族回族苗族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2509, '520500', '520527', '赫章县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2510, '520000', '520600', '铜仁市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2511, '520600', '520602', '碧江区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2512, '520600', '520603', '万山区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2513, '520600', '520621', '江口县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2514, '520600', '520622', '玉屏侗族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2515, '520600', '520623', '石阡县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2516, '520600', '520624', '思南县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2517, '520600', '520625', '印江土家族苗族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2518, '520600', '520626', '德江县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2519, '520600', '520627', '沿河土家族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2520, '520600', '520628', '松桃苗族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2521, '520000', '522300', '黔西南布依族苗族自治州', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2522, '522300', '522301', '兴义市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2523, '522300', '522302', '兴仁市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2524, '522300', '522323', '普安县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2525, '522300', '522324', '晴隆县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2526, '522300', '522325', '贞丰县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2527, '522300', '522326', '望谟县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2528, '522300', '522327', '册亨县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2529, '522300', '522328', '安龙县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2530, '520000', '522600', '黔东南苗族侗族自治州', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2531, '522600', '522601', '凯里市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2532, '522600', '522622', '黄平县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2533, '522600', '522623', '施秉县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2534, '522600', '522624', '三穗县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2535, '522600', '522625', '镇远县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2536, '522600', '522626', '岑巩县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2537, '522600', '522627', '天柱县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2538, '522600', '522628', '锦屏县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2539, '522600', '522629', '剑河县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2540, '522600', '522630', '台江县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2541, '522600', '522631', '黎平县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2542, '522600', '522632', '榕江县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2543, '522600', '522633', '从江县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2544, '522600', '522634', '雷山县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2545, '522600', '522635', '麻江县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2546, '522600', '522636', '丹寨县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2547, '520000', '522700', '黔南布依族苗族自治州', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2548, '522700', '522701', '都匀市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2549, '522700', '522702', '福泉市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2550, '522700', '522722', '荔波县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2551, '522700', '522723', '贵定县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2552, '522700', '522725', '瓮安县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2553, '522700', '522726', '独山县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2554, '522700', '522727', '平塘县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2555, '522700', '522728', '罗甸县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2556, '522700', '522729', '长顺县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2557, '522700', '522730', '龙里县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2558, '522700', '522731', '惠水县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2559, '522700', '522732', '三都水族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2560, NULL, '530000', '云南省', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2561, '530000', '530100', '昆明市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2562, '530100', '530102', '五华区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2563, '530100', '530103', '盘龙区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2564, '530100', '530111', '官渡区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2565, '530100', '530112', '西山区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2566, '530100', '530113', '东川区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2567, '530100', '530114', '呈贡区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2568, '530100', '530115', '晋宁区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2569, '530100', '530124', '富民县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2570, '530100', '530125', '宜良县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2571, '530100', '530126', '石林彝族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2572, '530100', '530127', '嵩明县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2573, '530100', '530128', '禄劝彝族苗族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2574, '530100', '530129', '寻甸回族彝族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2575, '530100', '530181', '安宁市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2576, '530000', '530300', '曲靖市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2577, '530300', '530302', '麒麟区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2578, '530300', '530303', '沾益区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2579, '530300', '530304', '马龙区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2580, '530300', '530322', '陆良县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2581, '530300', '530323', '师宗县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2582, '530300', '530324', '罗平县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2583, '530300', '530325', '富源县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2584, '530300', '530326', '会泽县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2585, '530300', '530381', '宣威市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2586, '530000', '530400', '玉溪市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2587, '530400', '530402', '红塔区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2588, '530400', '530403', '江川区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2589, '530400', '530423', '通海县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2590, '530400', '530424', '华宁县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2591, '530400', '530425', '易门县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2592, '530400', '530426', '峨山彝族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2593, '530400', '530427', '新平彝族傣族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2594, '530400', '530428', '元江哈尼族彝族傣族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2595, '530400', '530481', '澄江市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2596, '530000', '530500', '保山市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2597, '530500', '530502', '隆阳区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2598, '530500', '530521', '施甸县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2599, '530500', '530523', '龙陵县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2600, '530500', '530524', '昌宁县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2601, '530500', '530581', '腾冲市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2602, '530000', '530600', '昭通市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2603, '530600', '530602', '昭阳区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2604, '530600', '530621', '鲁甸县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2605, '530600', '530622', '巧家县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2606, '530600', '530623', '盐津县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2607, '530600', '530624', '大关县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2608, '530600', '530625', '永善县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2609, '530600', '530626', '绥江县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2610, '530600', '530627', '镇雄县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2611, '530600', '530628', '彝良县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2612, '530600', '530629', '威信县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2613, '530600', '530681', '水富市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2614, '530000', '530700', '丽江市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2615, '530700', '530702', '古城区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2616, '530700', '530721', '玉龙纳西族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2617, '530700', '530722', '永胜县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2618, '530700', '530723', '华坪县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2619, '530700', '530724', '宁蒗彝族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2620, '530000', '530800', '普洱市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2621, '530800', '530802', '思茅区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2622, '530800', '530821', '宁洱哈尼族彝族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2623, '530800', '530822', '墨江哈尼族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2624, '530800', '530823', '景东彝族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2625, '530800', '530824', '景谷傣族彝族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2626, '530800', '530825', '镇沅彝族哈尼族拉祜族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2627, '530800', '530826', '江城哈尼族彝族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2628, '530800', '530827', '孟连傣族拉祜族佤族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2629, '530800', '530828', '澜沧拉祜族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2630, '530800', '530829', '西盟佤族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2631, '530000', '530900', '临沧市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2632, '530900', '530902', '临翔区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2633, '530900', '530921', '凤庆县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2634, '530900', '530922', '云县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2635, '530900', '530923', '永德县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2636, '530900', '530924', '镇康县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2637, '530900', '530925', '双江拉祜族佤族布朗族傣族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2638, '530900', '530926', '耿马傣族佤族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2639, '530900', '530927', '沧源佤族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2640, '530000', '532300', '楚雄彝族自治州', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2641, '532300', '532301', '楚雄市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2642, '532300', '532322', '双柏县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2643, '532300', '532323', '牟定县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2644, '532300', '532324', '南华县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2645, '532300', '532325', '姚安县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2646, '532300', '532326', '大姚县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2647, '532300', '532327', '永仁县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2648, '532300', '532328', '元谋县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2649, '532300', '532329', '武定县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2650, '532300', '532331', '禄丰县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2651, '530000', '532500', '红河哈尼族彝族自治州', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2652, '532500', '532501', '个旧市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2653, '532500', '532502', '开远市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2654, '532500', '532503', '蒙自市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2655, '532500', '532504', '弥勒市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2656, '532500', '532523', '屏边苗族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2657, '532500', '532524', '建水县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2658, '532500', '532525', '石屏县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2659, '532500', '532527', '泸西县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2660, '532500', '532528', '元阳县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2661, '532500', '532529', '红河县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2662, '532500', '532530', '金平苗族瑶族傣族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2663, '532500', '532531', '绿春县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2664, '532500', '532532', '河口瑶族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2665, '530000', '532600', '文山壮族苗族自治州', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2666, '532600', '532601', '文山市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2667, '532600', '532622', '砚山县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2668, '532600', '532623', '西畴县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2669, '532600', '532624', '麻栗坡县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2670, '532600', '532625', '马关县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2671, '532600', '532626', '丘北县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2672, '532600', '532627', '广南县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2673, '532600', '532628', '富宁县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2674, '530000', '532800', '西双版纳傣族自治州', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2675, '532800', '532801', '景洪市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2676, '532800', '532822', '勐海县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2677, '532800', '532823', '勐腊县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2678, '530000', '532900', '大理白族自治州', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2679, '532900', '532901', '大理市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2680, '532900', '532922', '漾濞彝族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2681, '532900', '532923', '祥云县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2682, '532900', '532924', '宾川县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2683, '532900', '532925', '弥渡县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2684, '532900', '532926', '南涧彝族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2685, '532900', '532927', '巍山彝族回族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2686, '532900', '532928', '永平县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2687, '532900', '532929', '云龙县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2688, '532900', '532930', '洱源县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2689, '532900', '532931', '剑川县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2690, '532900', '532932', '鹤庆县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2691, '530000', '533100', '德宏傣族景颇族自治州', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2692, '533100', '533102', '瑞丽市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2693, '533100', '533103', '芒市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2694, '533100', '533122', '梁河县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2695, '533100', '533123', '盈江县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2696, '533100', '533124', '陇川县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2697, '530000', '533300', '怒江傈僳族自治州', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2698, '533300', '533301', '泸水市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2699, '533300', '533323', '福贡县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2700, '533300', '533324', '贡山独龙族怒族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2701, '533300', '533325', '兰坪白族普米族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2702, '530000', '533400', '迪庆藏族自治州', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2703, '533400', '533401', '香格里拉市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2704, '533400', '533422', '德钦县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2705, '533400', '533423', '维西傈僳族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2706, NULL, '540000', '西藏自治区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2707, '540000', '540100', '拉萨市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2708, '540100', '540102', '城关区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2709, '540100', '540103', '堆龙德庆区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2710, '540100', '540104', '达孜区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2711, '540100', '540121', '林周县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2712, '540100', '540122', '当雄县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2713, '540100', '540123', '尼木县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2714, '540100', '540124', '曲水县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2715, '540100', '540127', '墨竹工卡县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2716, '540000', '540200', '日喀则市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2717, '540200', '540202', '桑珠孜区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2718, '540200', '540221', '南木林县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2719, '540200', '540222', '江孜县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2720, '540200', '540223', '定日县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2721, '540200', '540224', '萨迦县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2722, '540200', '540225', '拉孜县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2723, '540200', '540226', '昂仁县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2724, '540200', '540227', '谢通门县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2725, '540200', '540228', '白朗县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2726, '540200', '540229', '仁布县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2727, '540200', '540230', '康马县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2728, '540200', '540231', '定结县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2729, '540200', '540232', '仲巴县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2730, '540200', '540233', '亚东县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2731, '540200', '540234', '吉隆县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2732, '540200', '540235', '聂拉木县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2733, '540200', '540236', '萨嘎县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2734, '540200', '540237', '岗巴县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2735, '540000', '540300', '昌都市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2736, '540300', '540302', '卡若区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2737, '540300', '540321', '江达县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2738, '540300', '540322', '贡觉县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2739, '540300', '540323', '类乌齐县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2740, '540300', '540324', '丁青县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2741, '540300', '540325', '察雅县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2742, '540300', '540326', '八宿县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2743, '540300', '540327', '左贡县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2744, '540300', '540328', '芒康县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2745, '540300', '540329', '洛隆县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2746, '540300', '540330', '边坝县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2747, '540000', '540400', '林芝市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2748, '540400', '540402', '巴宜区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2749, '540400', '540421', '工布江达县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2750, '540400', '540422', '米林县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2751, '540400', '540423', '墨脱县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2752, '540400', '540424', '波密县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2753, '540400', '540425', '察隅县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2754, '540400', '540426', '朗县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2755, '540000', '540500', '山南市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2756, '540500', '540502', '乃东区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2757, '540500', '540521', '扎囊县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2758, '540500', '540522', '贡嘎县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2759, '540500', '540523', '桑日县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2760, '540500', '540524', '琼结县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2761, '540500', '540525', '曲松县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2762, '540500', '540526', '措美县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2763, '540500', '540527', '洛扎县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2764, '540500', '540528', '加查县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2765, '540500', '540529', '隆子县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2766, '540500', '540530', '错那县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2767, '540500', '540531', '浪卡子县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2768, '540000', '540600', '那曲市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2769, '540600', '540602', '色尼区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2770, '540600', '540621', '嘉黎县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2771, '540600', '540622', '比如县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2772, '540600', '540623', '聂荣县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2773, '540600', '540624', '安多县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2774, '540600', '540625', '申扎县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2775, '540600', '540626', '索县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2776, '540600', '540627', '班戈县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2777, '540600', '540628', '巴青县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2778, '540600', '540629', '尼玛县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2779, '540600', '540630', '双湖县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2780, '540000', '542500', '阿里地区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2781, '542500', '542521', '普兰县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2782, '542500', '542522', '札达县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2783, '542500', '542523', '噶尔县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2784, '542500', '542524', '日土县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2785, '542500', '542525', '革吉县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2786, '542500', '542526', '改则县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2787, '542500', '542527', '措勤县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2788, NULL, '610000', '陕西省', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2789, '610000', '610100', '西安市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2790, '610100', '610102', '新城区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2791, '610100', '610103', '碑林区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2792, '610100', '610104', '莲湖区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2793, '610100', '610111', '灞桥区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2794, '610100', '610112', '未央区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2795, '610100', '610113', '雁塔区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2796, '610100', '610114', '阎良区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2797, '610100', '610115', '临潼区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2798, '610100', '610116', '长安区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2799, '610100', '610117', '高陵区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2800, '610100', '610118', '鄠邑区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2801, '610100', '610122', '蓝田县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2802, '610100', '610124', '周至县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2803, '610000', '610200', '铜川市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2804, '610200', '610202', '王益区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2805, '610200', '610203', '印台区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2806, '610200', '610204', '耀州区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2807, '610200', '610222', '宜君县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2808, '610000', '610300', '宝鸡市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2809, '610300', '610302', '渭滨区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2810, '610300', '610303', '金台区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2811, '610300', '610304', '陈仓区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2812, '610300', '610322', '凤翔县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2813, '610300', '610323', '岐山县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2814, '610300', '610324', '扶风县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2815, '610300', '610326', '眉县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2816, '610300', '610327', '陇县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2817, '610300', '610328', '千阳县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2818, '610300', '610329', '麟游县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2819, '610300', '610330', '凤县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2820, '610300', '610331', '太白县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2821, '610000', '610400', '咸阳市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2822, '610400', '610402', '秦都区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2823, '610400', '610403', '杨陵区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2824, '610400', '610404', '渭城区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2825, '610400', '610422', '三原县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2826, '610400', '610423', '泾阳县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2827, '610400', '610424', '乾县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2828, '610400', '610425', '礼泉县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2829, '610400', '610426', '永寿县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2830, '610400', '610428', '长武县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2831, '610400', '610429', '旬邑县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2832, '610400', '610430', '淳化县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2833, '610400', '610431', '武功县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2834, '610400', '610481', '兴平市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2835, '610400', '610482', '彬州市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2836, '610000', '610500', '渭南市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2837, '610500', '610502', '临渭区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2838, '610500', '610503', '华州区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2839, '610500', '610522', '潼关县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2840, '610500', '610523', '大荔县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2841, '610500', '610524', '合阳县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2842, '610500', '610525', '澄城县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2843, '610500', '610526', '蒲城县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2844, '610500', '610527', '白水县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2845, '610500', '610528', '富平县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2846, '610500', '610581', '韩城市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2847, '610500', '610582', '华阴市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2848, '610000', '610600', '延安市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2849, '610600', '610602', '宝塔区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2850, '610600', '610603', '安塞区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2851, '610600', '610621', '延长县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2852, '610600', '610622', '延川县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2853, '610600', '610625', '志丹县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2854, '610600', '610626', '吴起县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2855, '610600', '610627', '甘泉县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2856, '610600', '610628', '富县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2857, '610600', '610629', '洛川县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2858, '610600', '610630', '宜川县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2859, '610600', '610631', '黄龙县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2860, '610600', '610632', '黄陵县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2861, '610600', '610681', '子长市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2862, '610000', '610700', '汉中市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2863, '610700', '610702', '汉台区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2864, '610700', '610703', '南郑区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2865, '610700', '610722', '城固县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2866, '610700', '610723', '洋县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2867, '610700', '610724', '西乡县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2868, '610700', '610725', '勉县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2869, '610700', '610726', '宁强县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2870, '610700', '610727', '略阳县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2871, '610700', '610728', '镇巴县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2872, '610700', '610729', '留坝县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2873, '610700', '610730', '佛坪县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2874, '610000', '610800', '榆林市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2875, '610800', '610802', '榆阳区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2876, '610800', '610803', '横山区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2877, '610800', '610822', '府谷县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2878, '610800', '610824', '靖边县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2879, '610800', '610825', '定边县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2880, '610800', '610826', '绥德县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2881, '610800', '610827', '米脂县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2882, '610800', '610828', '佳县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2883, '610800', '610829', '吴堡县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2884, '610800', '610830', '清涧县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2885, '610800', '610831', '子洲县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2886, '610800', '610881', '神木市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2887, '610000', '610900', '安康市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2888, '610900', '610902', '汉滨区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2889, '610900', '610921', '汉阴县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2890, '610900', '610922', '石泉县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2891, '610900', '610923', '宁陕县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2892, '610900', '610924', '紫阳县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2893, '610900', '610925', '岚皋县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2894, '610900', '610926', '平利县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2895, '610900', '610927', '镇坪县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2896, '610900', '610928', '旬阳县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2897, '610900', '610929', '白河县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2898, '610000', '611000', '商洛市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2899, '611000', '611002', '商州区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2900, '611000', '611021', '洛南县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2901, '611000', '611022', '丹凤县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2902, '611000', '611023', '商南县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2903, '611000', '611024', '山阳县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2904, '611000', '611025', '镇安县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2905, '611000', '611026', '柞水县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2906, NULL, '620000', '甘肃省', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2907, '620000', '620100', '兰州市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2908, '620100', '620102', '城关区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2909, '620100', '620103', '七里河区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2910, '620100', '620104', '西固区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2911, '620100', '620105', '安宁区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2912, '620100', '620111', '红古区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2913, '620100', '620121', '永登县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2914, '620100', '620122', '皋兰县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2915, '620100', '620123', '榆中县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2916, '620000', '620200', '嘉峪关市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2917, '620000', '620300', '金昌市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2918, '620300', '620302', '金川区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2919, '620300', '620321', '永昌县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2920, '620000', '620400', '白银市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2921, '620400', '620402', '白银区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2922, '620400', '620403', '平川区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2923, '620400', '620421', '靖远县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2924, '620400', '620422', '会宁县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2925, '620400', '620423', '景泰县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2926, '620000', '620500', '天水市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2927, '620500', '620502', '秦州区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2928, '620500', '620503', '麦积区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2929, '620500', '620521', '清水县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2930, '620500', '620522', '秦安县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2931, '620500', '620523', '甘谷县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2932, '620500', '620524', '武山县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2933, '620500', '620525', '张家川回族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2934, '620000', '620600', '武威市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2935, '620600', '620602', '凉州区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2936, '620600', '620621', '民勤县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2937, '620600', '620622', '古浪县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2938, '620600', '620623', '天祝藏族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2939, '620000', '620700', '张掖市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2940, '620700', '620702', '甘州区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2941, '620700', '620721', '肃南裕固族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2942, '620700', '620722', '民乐县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2943, '620700', '620723', '临泽县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2944, '620700', '620724', '高台县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2945, '620700', '620725', '山丹县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2946, '620000', '620800', '平凉市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2947, '620800', '620802', '崆峒区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2948, '620800', '620821', '泾川县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2949, '620800', '620822', '灵台县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2950, '620800', '620823', '崇信县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2951, '620800', '620825', '庄浪县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2952, '620800', '620826', '静宁县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2953, '620800', '620881', '华亭市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2954, '620000', '620900', '酒泉市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2955, '620900', '620902', '肃州区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2956, '620900', '620921', '金塔县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2957, '620900', '620922', '瓜州县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2958, '620900', '620923', '肃北蒙古族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2959, '620900', '620924', '阿克塞哈萨克族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2960, '620900', '620981', '玉门市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2961, '620900', '620982', '敦煌市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2962, '620000', '621000', '庆阳市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2963, '621000', '621002', '西峰区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2964, '621000', '621021', '庆城县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2965, '621000', '621022', '环县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2966, '621000', '621023', '华池县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2967, '621000', '621024', '合水县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2968, '621000', '621025', '正宁县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2969, '621000', '621026', '宁县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2970, '621000', '621027', '镇原县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2971, '620000', '621100', '定西市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2972, '621100', '621102', '安定区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2973, '621100', '621121', '通渭县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2974, '621100', '621122', '陇西县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2975, '621100', '621123', '渭源县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2976, '621100', '621124', '临洮县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2977, '621100', '621125', '漳县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2978, '621100', '621126', '岷县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2979, '620000', '621200', '陇南市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2980, '621200', '621202', '武都区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2981, '621200', '621221', '成县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2982, '621200', '621222', '文县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2983, '621200', '621223', '宕昌县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2984, '621200', '621224', '康县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2985, '621200', '621225', '西和县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2986, '621200', '621226', '礼县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2987, '621200', '621227', '徽县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2988, '621200', '621228', '两当县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2989, '620000', '622900', '临夏回族自治州', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2990, '622900', '622901', '临夏市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2991, '622900', '622921', '临夏县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2992, '622900', '622922', '康乐县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2993, '622900', '622923', '永靖县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2994, '622900', '622924', '广河县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2995, '622900', '622925', '和政县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2996, '622900', '622926', '东乡族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2997, '622900', '622927', '积石山保安族东乡族撒拉族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2998, '620000', '623000', '甘南藏族自治州', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (2999, '623000', '623001', '合作市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (3000, '623000', '623021', '临潭县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (3001, '623000', '623022', '卓尼县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (3002, '623000', '623023', '舟曲县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (3003, '623000', '623024', '迭部县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (3004, '623000', '623025', '玛曲县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (3005, '623000', '623026', '碌曲县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (3006, '623000', '623027', '夏河县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (3007, NULL, '630000', '青海省', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (3008, '630000', '630100', '西宁市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (3009, '630100', '630102', '城东区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (3010, '630100', '630103', '城中区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (3011, '630100', '630104', '城西区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (3012, '630100', '630105', '城北区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (3013, '630100', '630106', '湟中区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (3014, '630100', '630121', '大通回族土族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (3015, '630100', '630123', '湟源县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (3016, '630000', '630200', '海东市', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (3017, '630200', '630202', '乐都区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (3018, '630200', '630203', '平安区', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (3019, '630200', '630222', '民和回族土族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (3020, '630200', '630223', '互助土族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (3021, '630200', '630224', '化隆回族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (3022, '630200', '630225', '循化撒拉族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (3023, '630000', '632200', '海北藏族自治州', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (3024, '632200', '632221', '门源回族自治县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (3025, '632200', '632222', '祁连县', '1', NULL, '2022-01-12 20:45:07', NULL, '2022-01-12 20:45:07');
INSERT INTO `sys_division` VALUES (3026, '632200', '632223', '海晏县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3027, '632200', '632224', '刚察县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3028, '630000', '632300', '黄南藏族自治州', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3029, '632300', '632301', '同仁市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3030, '632300', '632322', '尖扎县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3031, '632300', '632323', '泽库县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3032, '632300', '632324', '河南蒙古族自治县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3033, '630000', '632500', '海南藏族自治州', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3034, '632500', '632521', '共和县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3035, '632500', '632522', '同德县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3036, '632500', '632523', '贵德县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3037, '632500', '632524', '兴海县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3038, '632500', '632525', '贵南县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3039, '630000', '632600', '果洛藏族自治州', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3040, '632600', '632621', '玛沁县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3041, '632600', '632622', '班玛县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3042, '632600', '632623', '甘德县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3043, '632600', '632624', '达日县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3044, '632600', '632625', '久治县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3045, '632600', '632626', '玛多县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3046, '630000', '632700', '玉树藏族自治州', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3047, '632700', '632701', '玉树市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3048, '632700', '632722', '杂多县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3049, '632700', '632723', '称多县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3050, '632700', '632724', '治多县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3051, '632700', '632725', '囊谦县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3052, '632700', '632726', '曲麻莱县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3053, '630000', '632800', '海西蒙古族藏族自治州', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3054, '632800', '632801', '格尔木市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3055, '632800', '632802', '德令哈市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3056, '632800', '632803', '茫崖市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3057, '632800', '632821', '乌兰县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3058, '632800', '632822', '都兰县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3059, '632800', '632823', '天峻县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3060, NULL, '640000', '宁夏回族自治区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3061, '640000', '640100', '银川市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3062, '640100', '640104', '兴庆区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3063, '640100', '640105', '西夏区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3064, '640100', '640106', '金凤区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3065, '640100', '640121', '永宁县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3066, '640100', '640122', '贺兰县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3067, '640100', '640181', '灵武市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3068, '640000', '640200', '石嘴山市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3069, '640200', '640202', '大武口区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3070, '640200', '640205', '惠农区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3071, '640200', '640221', '平罗县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3072, '640000', '640300', '吴忠市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3073, '640300', '640302', '利通区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3074, '640300', '640303', '红寺堡区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3075, '640300', '640323', '盐池县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3076, '640300', '640324', '同心县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3077, '640300', '640381', '青铜峡市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3078, '640000', '640400', '固原市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3079, '640400', '640402', '原州区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3080, '640400', '640422', '西吉县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3081, '640400', '640423', '隆德县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3082, '640400', '640424', '泾源县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3083, '640400', '640425', '彭阳县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3084, '640000', '640500', '中卫市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3085, '640500', '640502', '沙坡头区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3086, '640500', '640521', '中宁县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3087, '640500', '640522', '海原县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3088, NULL, '650000', '新疆维吾尔自治区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3089, '650000', '650100', '乌鲁木齐市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3090, '650100', '650102', '天山区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3091, '650100', '650103', '沙依巴克区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3092, '650100', '650104', '新市区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3093, '650100', '650105', '水磨沟区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3094, '650100', '650106', '头屯河区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3095, '650100', '650107', '达坂城区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3096, '650100', '650109', '米东区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3097, '650100', '650121', '乌鲁木齐县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3098, '650000', '650200', '克拉玛依市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3099, '650200', '650202', '独山子区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3100, '650200', '650203', '克拉玛依区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3101, '650200', '650204', '白碱滩区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3102, '650200', '650205', '乌尔禾区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3103, '650000', '650400', '吐鲁番市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3104, '650400', '650402', '高昌区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3105, '650400', '650421', '鄯善县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3106, '650400', '650422', '托克逊县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3107, '650000', '650500', '哈密市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3108, '650500', '650502', '伊州区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3109, '650500', '650521', '巴里坤哈萨克自治县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3110, '650500', '650522', '伊吾县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3111, '650000', '652300', '昌吉回族自治州', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3112, '652300', '652301', '昌吉市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3113, '652300', '652302', '阜康市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3114, '652300', '652323', '呼图壁县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3115, '652300', '652324', '玛纳斯县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3116, '652300', '652325', '奇台县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3117, '652300', '652327', '吉木萨尔县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3118, '652300', '652328', '木垒哈萨克自治县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3119, '650000', '652700', '博尔塔拉蒙古自治州', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3120, '652700', '652701', '博乐市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3121, '652700', '652702', '阿拉山口市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3122, '652700', '652722', '精河县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3123, '652700', '652723', '温泉县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3124, '650000', '652800', '巴音郭楞蒙古自治州', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3125, '652800', '652801', '库尔勒市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3126, '652800', '652822', '轮台县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3127, '652800', '652823', '尉犁县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3128, '652800', '652824', '若羌县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3129, '652800', '652825', '且末县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3130, '652800', '652826', '焉耆回族自治县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3131, '652800', '652827', '和静县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3132, '652800', '652828', '和硕县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3133, '652800', '652829', '博湖县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3134, '650000', '652900', '阿克苏地区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3135, '652900', '652901', '阿克苏市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3136, '652900', '652902', '库车市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3137, '652900', '652922', '温宿县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3138, '652900', '652924', '沙雅县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3139, '652900', '652925', '新和县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3140, '652900', '652926', '拜城县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3141, '652900', '652927', '乌什县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3142, '652900', '652928', '阿瓦提县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3143, '652900', '652929', '柯坪县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3144, '650000', '653000', '克孜勒苏柯尔克孜自治州', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3145, '653000', '653001', '阿图什市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3146, '653000', '653022', '阿克陶县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3147, '653000', '653023', '阿合奇县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3148, '653000', '653024', '乌恰县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3149, '650000', '653100', '喀什地区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3150, '653100', '653101', '喀什市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3151, '653100', '653121', '疏附县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3152, '653100', '653122', '疏勒县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3153, '653100', '653123', '英吉沙县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3154, '653100', '653124', '泽普县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3155, '653100', '653125', '莎车县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3156, '653100', '653126', '叶城县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3157, '653100', '653127', '麦盖提县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3158, '653100', '653128', '岳普湖县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3159, '653100', '653129', '伽师县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3160, '653100', '653130', '巴楚县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3161, '653100', '653131', '塔什库尔干塔吉克自治县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3162, '650000', '653200', '和田地区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3163, '653200', '653201', '和田市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3164, '653200', '653221', '和田县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3165, '653200', '653222', '墨玉县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3166, '653200', '653223', '皮山县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3167, '653200', '653224', '洛浦县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3168, '653200', '653225', '策勒县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3169, '653200', '653226', '于田县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3170, '653200', '653227', '民丰县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3171, '650000', '654000', '伊犁哈萨克自治州', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3172, '654000', '654002', '伊宁市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3173, '654000', '654003', '奎屯市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3174, '654000', '654004', '霍尔果斯市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3175, '654000', '654021', '伊宁县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3176, '654000', '654022', '察布查尔锡伯自治县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3177, '654000', '654023', '霍城县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3178, '654000', '654024', '巩留县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3179, '654000', '654025', '新源县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3180, '654000', '654026', '昭苏县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3181, '654000', '654027', '特克斯县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3182, '654000', '654028', '尼勒克县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3183, '650000', '654200', '塔城地区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3184, '654200', '654201', '塔城市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3185, '654200', '654202', '乌苏市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3186, '654200', '654221', '额敏县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3187, '654200', '654223', '沙湾县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3188, '654200', '654224', '托里县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3189, '654200', '654225', '裕民县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3190, '654200', '654226', '和布克赛尔蒙古自治县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3191, '650000', '654300', '阿勒泰地区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3192, '654300', '654301', '阿勒泰市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3193, '654300', '654321', '布尔津县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3194, '654300', '654322', '富蕴县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3195, '654300', '654323', '福海县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3196, '654300', '654324', '哈巴河县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3197, '654300', '654325', '青河县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3198, '654300', '654326', '吉木乃县', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3199, '659000', '659001', '石河子市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3200, '659000', '659002', '阿拉尔市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3201, '659000', '659003', '图木舒克市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3202, '659000', '659004', '五家渠市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3203, '659000', '659005', '北屯市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3204, '659000', '659006', '铁门关市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3205, '659000', '659007', '双河市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3206, '659000', '659008', '可克达拉市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3207, '659000', '659009', '昆玉市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3208, '659000', '659010', '胡杨河市', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3209, NULL, '710000', '台湾省', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3210, NULL, '810000', '香港特别行政区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');
INSERT INTO `sys_division` VALUES (3211, NULL, '820000', '澳门特别行政区', '1', NULL, '2022-01-12 20:45:08', NULL, '2022-01-12 20:45:08');

-- ----------------------------
-- Table structure for sys_education
-- ----------------------------
DROP TABLE IF EXISTS `sys_education`;
CREATE TABLE `sys_education`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '编码',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '学历信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_education
-- ----------------------------

-- ----------------------------
-- Table structure for sys_hospital
-- ----------------------------
DROP TABLE IF EXISTS `sys_hospital`;
CREATE TABLE `sys_hospital`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机构名称',
  `authority` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '上级主管机构名称',
  `orgCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组织机构代码',
  `orgLeader` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机构负责人',
  `addrCatCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标识地址类别的代码',
  `province` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-省（自治区、直辖市）',
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-市（地区）',
  `county` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-县（区）',
  `countryside` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-乡（镇、街道办事处）',
  `village` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-村（街、路、弄等）',
  `doorNo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址-门牌号码',
  `zipcode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮政编码',
  `division` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '行政区划代码',
  `phoneCat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话-类别信息',
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话-号码',
  `email` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电子邮件地址',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '创建人',
  `createdTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '医院信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_hospital
-- ----------------------------

-- ----------------------------
-- Table structure for sys_identity
-- ----------------------------
DROP TABLE IF EXISTS `sys_identity`;
CREATE TABLE `sys_identity`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '编码',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '人员身份信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_identity
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色编码',
  `parent` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '上级菜单',
  `text` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单文本',
  `url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '链接地址',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单图标样式',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统菜单信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------

-- ----------------------------
-- Table structure for sys_position
-- ----------------------------
DROP TABLE IF EXISTS `sys_position`;
CREATE TABLE `sys_position`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '编码',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '职务信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_position
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色编码',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色名称',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色信息',
  `menu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单功能信息'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色菜单功能中间表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for sys_tech_category
-- ----------------------------
DROP TABLE IF EXISTS `sys_tech_category`;
CREATE TABLE `sys_tech_category`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '编码',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '专业职务类别信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_tech_category
-- ----------------------------

-- ----------------------------
-- Table structure for sys_tech_rank
-- ----------------------------
DROP TABLE IF EXISTS `sys_tech_rank`;
CREATE TABLE `sys_tech_rank`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '编码',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '专业职务等级信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_tech_rank
-- ----------------------------

-- ----------------------------
-- Table structure for sys_tech_title
-- ----------------------------
DROP TABLE IF EXISTS `sys_tech_title`;
CREATE TABLE `sys_tech_title`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `category` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属类别',
  `rank` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属等级',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '编码',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '系统状态：0-禁用，1-启用',
  `createdBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `createdTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifiedBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `modifiedTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '专业职务信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_tech_title
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
