/*
Navicat MySQL Data Transfer

Source Server         : mydb
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : jkdb

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2017-04-06 00:11:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for action
-- ----------------------------
DROP TABLE IF EXISTS `action`;
CREATE TABLE `action` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `actionName` varchar(20) DEFAULT NULL,
  `actionColumnId` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of action
-- ----------------------------

-- ----------------------------
-- Table structure for authority
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority` (
  `authorityId` int(20) NOT NULL AUTO_INCREMENT,
  `authorityName` varchar(20) DEFAULT NULL,
  `authorityColumId` int(20) DEFAULT NULL,
  `action` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`authorityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authority
-- ----------------------------

-- ----------------------------
-- Table structure for authority_action
-- ----------------------------
DROP TABLE IF EXISTS `authority_action`;
CREATE TABLE `authority_action` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `authorityId` int(20) DEFAULT NULL,
  `actionId` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `actionId` (`actionId`),
  KEY `authorityId` (`authorityId`),
  CONSTRAINT `authority_action_ibfk_1` FOREIGN KEY (`actionId`) REFERENCES `action` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `authority_action_ibfk_2` FOREIGN KEY (`authorityId`) REFERENCES `authority` (`authorityId`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authority_action
-- ----------------------------

-- ----------------------------
-- Table structure for contract_c
-- ----------------------------
DROP TABLE IF EXISTS `contract_c`;
CREATE TABLE `contract_c` (
  `CONTRACT_ID` varchar(40) NOT NULL,
  `OFFEROR` varchar(200) DEFAULT NULL,
  `CONTRACT_NO` varchar(20) DEFAULT NULL,
  `SIGNING_DATE` datetime DEFAULT NULL,
  `INPUT_BY` varchar(30) DEFAULT NULL,
  `CHECK_BY` varchar(30) DEFAULT NULL,
  `INSPECTOR` varchar(30) DEFAULT NULL,
  `TOTAL_AMOUNT` decimal(10,2) DEFAULT NULL,
  `CREQUEST` varchar(2000) DEFAULT NULL,
  `CUSTOM_NAME` varchar(2000) DEFAULT NULL,
  `SHIP_TIME` datetime DEFAULT NULL,
  `IMPORT_NUM` char(1) DEFAULT NULL,
  `DELIVERY_PERIOD` datetime DEFAULT NULL,
  `REMARK` varchar(2000) DEFAULT NULL,
  `PRINT_STYLE` char(1) DEFAULT NULL,
  `OLD_STATE` int(11) DEFAULT NULL,
  `STATE` int(11) DEFAULT NULL,
  `CREATE_BY` varchar(40) DEFAULT NULL,
  `CREATE_DEPT` varchar(40) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `TRADE_TERMS` varchar(30) DEFAULT NULL,
  `OUT_STATE` int(11) DEFAULT NULL,
  PRIMARY KEY (`CONTRACT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contract_c
-- ----------------------------
INSERT INTO `contract_c` VALUES ('4028817a3357462e0133591b86ec0002', '陕西杰信商务发展有限公司', 'C/3817/11', '2011-10-31 00:00:00', '杨丽', '', '吕晓波', '10800.00', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生成前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2011年12月15日/工厂,没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 'BEAKIE LEE', '2011-12-30 00:00:00', '1', '2011-12-15 00:00:00', '', '2', null, '1', 'ff80808131301abf0131303fe2e40038', '0001002', '2011-11-01 10:40:26', null, null);
INSERT INTO `contract_c` VALUES ('4028817a3357462e01336cc0877b0010', '陕西杰信商务发展有限公司', '11JK1080', '2011-11-04 00:00:00', '杨丽', '', '吕晓波', '2318.40', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生成前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2011年12月10日/工厂。毛坯送至祁县瑞成玻璃镀膜厂。 \r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', '', '2011-12-20 00:00:00', '3', '2011-12-10 00:00:00', '待样品确认后方可安排生产', '1', null, '1', 'ff80808131301abf0131303fe2e40038', '0001002', '2011-11-04 16:50:21', null, null);
INSERT INTO `contract_c` VALUES ('4028817a3357462e01336d3a0be10014', '陕西杰信商务发展有限公司', '11JK1078', '2011-11-04 00:00:00', '杨丽', '', '李春光', '54120.00', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生成前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2011年11月15日/工厂。 \r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', '', '2011-12-30 00:00:00', '3', '2011-11-15 00:00:00', '', '2', null, '1', 'ff80808131301abf0131303fe2e40038', '0001002', '2011-11-04 14:38:54', null, null);
INSERT INTO `contract_c` VALUES ('4028817a3357462e01336d523195001a', '陕西杰信商务发展有限公司', 'C/3847/11', '2011-12-02 00:00:00', '杨丽', '', '李春光', '39240.00', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生成前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。\r\n 交期：2011年12月15日/工厂。 \r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 'HOME', '2011-12-25 00:00:00', '3', '2011-12-15 00:00:00', '', '2', null, '1', 'ff80808131301abf0131303fe2e40038', '0001002', '2012-02-01 12:18:47', '', null);
INSERT INTO `contract_c` VALUES ('4028817a33812ffd0133813f25940001', '陕西杰信商务发展有限公司', 'C/3861/11', '2011-11-08 00:00:00', '杨丽', '', '吕晓波', '165378.00', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 包装：产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口；\r\n 交期：2012年1月10日/工厂。 \r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 'HOME', '2012-01-25 00:00:00', '3', '2012-01-10 00:00:00', '', '2', null, '1', 'ff80808131301abf0131303fe2e40038', '0001002', '2012-01-04 14:22:12', null, null);
INSERT INTO `contract_c` VALUES ('4028817a33812ffd013382048ff80024', '陕西杰信商务发展有限公司', '11JK1082', '2011-11-08 00:00:00', '杨丽', '', '李春光', '40200.00', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生成前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 包装：产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口；\r\n 交期：2011年12月30日/工厂。  \r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 'MSA', '2012-01-15 00:00:00', '3', '2011-12-30 00:00:00', '', '2', null, '1', 'ff80808131301abf0131303fe2e40038', '0001002', '2011-11-08 17:25:18', null, null);
INSERT INTO `contract_c` VALUES ('4028817a33812ffd0133821a8eb5002b', '陕西杰信商务发展有限公司', '11JK1084', '2011-11-08 00:00:00', '杨丽', '', '李春光', '10936.00', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生成前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2011年12月20日/工厂。毛坯送至祁县瑞成玻璃镀膜厂。 \r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 'ONE WORLD', '2011-12-30 00:00:00', '3', '2011-12-20 00:00:00', '', '2', null, '1', 'ff80808131301abf0131303fe2e40038', '0001002', '2011-12-01 16:58:54', null, null);
INSERT INTO `contract_c` VALUES ('4028817a33d4f8b40133d9878e88000d', '陕西杰信商务发展有限公司', '11JK1070', '2011-10-20 00:00:00', '杨丽', '', '', '55789.00', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生成前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2011年11月5日/工厂。 \r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', '', '2011-12-20 00:00:00', '3', '2011-11-05 00:00:00', '', '2', null, '1', 'ff80808131301abf0131303fe2e40038', '0001002', '2011-11-25 15:01:39', null, null);
INSERT INTO `contract_c` VALUES ('4028817a33d4f8b40133d991a50d0019', '陕西杰信商务发展有限公司', '11JK1066', '2011-11-25 00:00:00', '杨丽', '', '李春光', '146184.00', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生成前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2011年12月5日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', '', '2011-12-20 00:00:00', '3', '2011-12-05 00:00:00', '待样品确认后方可安排生产', '2', null, '0', 'ff80808131301abf0131303fe2e40038', '0001002', '2011-11-25 16:01:28', null, null);
INSERT INTO `contract_c` VALUES ('4028817a33d4f8b40133d9bea39b002f', '陕西杰信商务发展有限公司', '11JK1060', '2011-11-25 00:00:00', '杨丽', '', '', '152072.00', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生成前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2011年12月15日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 'COACH HOUSE', '2011-12-30 00:00:00', '3', '2011-12-15 00:00:00', '', '2', null, '0', 'ff80808131301abf0131303fe2e40038', '0001002', '2011-12-02 11:41:10', null, null);
INSERT INTO `contract_c` VALUES ('4028817a33fc4e280133fd81e7d7001d', '陕西杰信商务发展有限公司', '11JK1068', '2011-10-14 00:00:00', '杨丽', '', '', '102711.80', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2011年12月15日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 'ELAD', '2011-12-30 00:00:00', '3', '2011-12-15 00:00:00', '', '2', null, '0', 'ff80808131301abf0131303fe2e40038', '0001002', '2011-12-02 14:52:22', null, null);
INSERT INTO `contract_c` VALUES ('4028817a33fc4e280133fd9f8b4e002f', '陕西杰信商务发展有限公司', '11JK1072', '2011-10-20 00:00:00', '杨丽', '', '', '99918.00', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2011年12月15日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 'BRISSI', '2011-12-30 00:00:00', '3', '2011-12-15 00:00:00', '', '2', null, '0', 'ff80808131301abf0131303fe2e40038', '0001002', '2011-12-02 16:31:28', null, null);
INSERT INTO `contract_c` VALUES ('4028817a3420e78a013421a693730001', '陕西杰信商务发展有限公司', 'C/4040/11', '2011-12-09 00:00:00', '杨丽', '', '李春光', '114640.00', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年2月15日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 'HOME', '2012-02-25 00:00:00', '1', '2012-02-15 00:00:00', '', '2', null, '1', 'ff80808131301abf0131303fe2e40038', '0001002', '2011-12-09 16:16:29', null, null);
INSERT INTO `contract_c` VALUES ('4028817a353b8d8e01353d15008d0046', '陕西杰信商务发展有限公司', 'C/4104/11', '2012-02-02 00:00:00', '杨丽', '', '', '37749.00', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年2月15日/工厂。 \r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 'HOME', '2012-02-25 00:00:00', '3', '2012-02-15 00:00:00', '', '2', null, '1', 'ff80808131301abf0131303fe2e40038', '0001002', '2012-02-02 17:04:16', 'T/T', '0');

-- ----------------------------
-- Table structure for contract_product_c
-- ----------------------------
DROP TABLE IF EXISTS `contract_product_c`;
CREATE TABLE `contract_product_c` (
  `CONTRACT_PRODUCT_ID` varchar(40) NOT NULL,
  `CONTRACT_ID` varchar(40) DEFAULT NULL,
  `EXPORT_LIST_ID` varchar(40) DEFAULT NULL,
  `INVOICE_ID` varchar(40) DEFAULT NULL,
  `PRODUCT_NAME` varchar(200) DEFAULT NULL,
  `PRODUCT_NO` varchar(50) DEFAULT NULL,
  `PRODUCT_IMAGE` varchar(200) DEFAULT NULL,
  `PRODUCT_DESC` varchar(600) DEFAULT NULL,
  `SIZE_LENGTH` decimal(10,2) DEFAULT NULL,
  `SIZE_WIDTH` decimal(10,2) DEFAULT NULL,
  `SIZE_HEIGHT` decimal(10,2) DEFAULT NULL,
  `LOADING_RATE` varchar(30) DEFAULT NULL,
  `PRODUCT_REQUEST` varchar(2000) DEFAULT NULL,
  `FACTORY_ID` varchar(40) DEFAULT NULL,
  `FACTORY_NAME` varchar(255) DEFAULT NULL COMMENT '生产厂家',
  `PACKING_UNIT` varchar(20) DEFAULT NULL,
  `CNUMBER` int(11) DEFAULT NULL,
  `OUT_NUMBER` int(11) DEFAULT NULL,
  `FINISHED` bit(1) DEFAULT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  `AMOUNT` decimal(10,2) DEFAULT NULL,
  `CUNIT` varchar(10) DEFAULT NULL,
  `BOX_NUM` int(11) DEFAULT NULL,
  `GROSS_WEIGHT` decimal(10,2) DEFAULT NULL,
  `NET_WEIGHT` decimal(10,2) DEFAULT NULL,
  `CSIZE` varchar(20) DEFAULT NULL,
  `EX_PRICE` decimal(10,2) DEFAULT NULL,
  `EX_AMOUNT` decimal(10,2) DEFAULT NULL,
  `EX_UNIT` varchar(10) DEFAULT NULL,
  `NO_TAX` decimal(10,2) DEFAULT NULL,
  `TAX` decimal(10,2) DEFAULT NULL,
  `COST_PRICE` decimal(10,2) DEFAULT NULL,
  `COST_TAX` decimal(10,2) DEFAULT NULL,
  `ACCESSORIES` bit(1) DEFAULT NULL,
  `ORDER_NO` int(11) DEFAULT NULL,
  `EXTS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CONTRACT_PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contract_product_c
-- ----------------------------
INSERT INTO `contract_product_c` VALUES ('0e169814-9f59-469d-9223-ceb1d032ee68', '4028817a3357462e0133591b86ec0002', null, null, null, '2', '12', '2', null, null, null, '1/2', null, '4028817a33d4f8b40133d9989f5e0024', '民鑫', '2', '100', null, null, '100.00', '10000.00', null, '51', null, null, null, null, null, null, null, null, null, null, null, '2', null);
INSERT INTO `contract_product_c` VALUES ('3ebb0e9d-8ea0-4ff9-a175-5a15333a84e4', '4028817a3357462e0133591b86ec0002', null, null, null, '2', '1', '2', null, null, null, '1/2', null, '12', '平遥远江', '2', '1000', null, null, '1.00', '1000.00', null, '501', null, null, null, null, null, null, null, null, null, null, null, '21', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e0133591b86ec0003', '4028817a3357462e0133591b86ec0002', null, null, null, '2965', '2ba24918-4c3c-4632-8d8a-9d475d5e4d2d.png', '全明料糖缸带盖子\r\n尺寸：16X40CM高  底径：11CM\r\n重量不低于1500克/只\r\n1只/上下保利龙盖/彩盒   6只/大箱', null, null, null, '1/6', null, '2', null, 'PCS', '144', '0', '\0', '17.00', '2448.00', null, '24', null, null, null, null, null, null, null, null, null, null, '\0', '2', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e0133591b86ec0004', '4028817a3357462e0133591b86ec0002', null, null, null, '2964', 'ad25929a-27f5-4065-bb9f-6d4788d395ee.png', '全明料糖缸带盖子\r\n尺寸：19X48CM高  底径：13.5CM\r\n重量不低于1600克/只\r\n1只/上下保利龙盖/彩盒    4只/大箱', null, null, null, '1/4', null, '2', null, 'PCS', '144', '0', '\0', '24.00', '3456.00', null, '36', null, null, null, null, null, null, null, null, null, null, '\0', '1', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e0133592355750005', '4028817a3357462e0133591b86ec0002', null, null, null, '2977', 'b5480a29-da8c-41e1-b91c-54a9fdb15834.png', '全明料圆肚糖缸带盖子\r\n尺寸：16X36CM高    底径：12CM\r\n最大径：22CM    重量不低于1200克/只\r\n1只/上下保利龙盖/彩盒     2只/大箱', null, null, null, '1/2', null, '2', null, 'PCS', '144', '0', '\0', '17.00', '2448.00', null, '72', null, null, null, null, null, null, null, null, null, null, '\0', '4', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e0133592355750006', '4028817a3357462e0133591b86ec0002', null, null, null, '2976', 'af417c8a-e44f-406e-b226-194d8a61df75.png', '全明料糖缸带盖子\r\n尺寸：17.5X41CM高   底径：13CM\r\n重量不低于1800克/只\r\n1只/上下保利龙盖/彩盒     4只/大箱', null, null, null, '1/4', null, '2', null, 'PCS', '144', '0', '\0', '17.00', '2448.00', null, '36', null, null, null, null, null, null, null, null, null, null, '\0', '3', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e01336cc0879b0011', '4028817a3357462e01336cc0877b0010', null, null, null, 'JK1700011', '05702b8f-6bda-4bca-9c4d-f15c18f279eb.png', '全明料方形黄油缸\r\n尺寸：罩子：7.3X8CM高   盘：6X5CM\r\n1只/内盒       6只/中盒       24只/大箱', null, null, null, '24', null, '3', null, 'SETS', '504', '0', '\0', '4.60', '2318.40', null, '21', null, null, null, null, null, null, null, null, null, null, '\0', '1', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e01336d3a0be10015', '4028817a3357462e01336d3a0be10014', null, null, null, 'JK1014003', '699176d9-c242-42d2-8661-9ce712bba97a.png', '全明料盘子，烤鱼白花纸\r\n盘子直径：27CM\r\n2只/五层内盒        16只/大箱\r\n花纸我司提供', null, null, null, '2/16', null, '7', null, 'PCS', '1200', '0', '\0', '7.50', '9000.00', null, '75', null, null, null, null, null, null, null, null, null, null, '\0', '3', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e01336d3a0be10016', '4028817a3357462e01336d3a0be10014', null, null, null, 'JK1014001', 'a2ffd39f-18d5-4a6b-89a2-bc91df4926f5.png', '全明料大碗，烤鱼白花纸\r\n尺寸：23X11CM高\r\n1只/五层内盒                4只/大箱\r\n花纸我司提供', null, null, null, '1/4', null, '1', null, 'PCS', '1000', '0', '\0', '16.50', '16500.00', null, '250', null, null, null, null, null, null, null, null, null, null, '\0', '2', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e01336d3a0be10017', '4028817a3357462e01336d3a0be10014', null, null, null, 'JK1014006', 'edc6f494-cc9f-41f2-a04c-edff659df1af.png', '全明料低口杯，烤6种白花纸\r\n尺寸：7.3X10.5CM高\r\n6只/五层内盒         24只/大箱\r\n6种花纸内盒中混装，白花纸我司供', null, null, null, '6/24', null, '1', null, 'PCS', '1800', '0', '\0', '5.30', '9540.00', null, '75', null, null, null, null, null, null, null, null, null, null, '\0', '5', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e01336d3a0be10018', '4028817a3357462e01336d3a0be10014', null, null, null, 'JK1014005', '9ed4ab1e-d425-4b8d-beb3-1fa6dc63d1df.png', '全明料低口杯，烤鱼白花纸\r\n尺寸：7.3X10.5CM高\r\n4只/五层内盒       24只/大箱\r\n花纸我司提供', null, null, null, '4/24', null, '1', null, 'PCS', '1800', '0', '\0', '5.30', '9540.00', null, '75', null, null, null, null, null, null, null, null, null, null, '\0', '4', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e01336d3a0be10019', '4028817a3357462e01336d3a0be10014', null, null, null, 'JK1080766-3', '21b5e24a-a58a-4a58-a705-1595faeec581.png', '全明料低口杯，烤3种不同的白花纸\r\n尺寸：7.3X10.5CM \r\n3只/五层内盒            24只/大箱\r\n每种花纸600只，3种花纸混装\r\n花纸我司提供', null, null, null, '3/24', null, '1', null, 'PCS', '1800', '0', '\0', '5.30', '9540.00', null, '75', null, null, null, null, null, null, null, null, null, null, '\0', '1', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e01336d523195001b', '4028817a3357462e01336d523195001a', null, null, null, '8708/6203', '1bab511c-4f4c-4de7-8b65-4ccdcd00a569.png', '怪虫小碗，喷紫色，喷漆，喷珠光\r\n直径：18CM\r\n4只/内盒           8只/大箱\r\n白纸，瓦楞纸包裹，大箱用胶带纸工字封口', null, null, null, '4/8', null, '7', null, 'PCS', '600', '0', '\0', '6.50', '3900.00', null, '75', null, null, null, null, null, null, null, null, null, null, '\0', '1', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e01336d5e8a59001c', '4028817a3357462e01336d523195001a', null, null, null, '9749/6525', '143a4aa8-894d-4226-a461-eac712567360.png', '怪虫碗，喷绿色，喷漆，喷珠光\r\n直径：18CM\r\n4只/内盒            8只/大箱\r\n白纸，瓦楞纸包装\r\n大箱用胶带纸工字封口；', null, null, null, '4/8', null, '7', null, 'PCS', '600', '0', '\0', '6.50', '3900.00', null, '75', null, null, null, null, null, null, null, null, null, null, '\0', '6', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e01336d5e8a59001d', '4028817a3357462e01336d523195001a', null, null, null, '9226/6116', 'fcf3f5a9-a405-4f33-abb9-f317c60f1453.png', '海星盘，喷绿色，喷漆，喷珠光\r\n直径：31CM\r\n4只/内盒             8只/大箱\r\n白纸包装，中间垫隔板\r\n大箱用胶带纸工字封口；', null, null, null, '4/8', null, '7', null, 'PCS', '408', '0', '\0', '11.00', '4488.00', null, '51', null, null, null, null, null, null, null, null, null, null, '\0', '3', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e01336d5e8a59001e', '4028817a3357462e01336d523195001a', null, null, null, '9748/6115', '657ac46a-bd23-4a2d-9abe-c552a8fc3727.png', '海星盘，喷蓝色，喷漆，喷珠光\r\n直径：31CM\r\n4只/内盒            8只/大箱\r\n白纸包裹，中间垫隔板\r\n大箱用胶带纸工字封口；', null, null, null, '4/8', null, '7', null, 'PCS', '408', '0', '\0', '11.00', '4488.00', null, '51', null, null, null, null, null, null, null, null, null, null, '\0', '5', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e01336d5e8a59001f', '4028817a3357462e01336d523195001a', null, null, null, '9956/6308', '1ca7fc1c-aad2-4f1e-8c3b-9a1009e22c04.png', '竹节碗，喷蓝色，喷漆，喷珠光\r\n直径：31CM\r\n4只/内盒            8只/大箱\r\n白纸，瓦楞纸包裹\r\n大箱用胶带纸工字封口', null, null, null, '4/8', null, '7', null, 'PCS', '408', '0', '\0', '11.50', '4692.00', null, '51', null, null, null, null, null, null, null, null, null, null, '\0', '9', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e01336d5e8a590020', '4028817a3357462e01336d523195001a', null, null, null, '9954/6309', '1e15e517-af2a-45c9-8c1e-1f1b592f5f79.png', '竹节碗，喷绿色，喷漆，喷珠光\r\n直径：31CM\r\n4只/内盒            8只/大箱\r\n白纸，瓦楞纸包裹\r\n大箱用胶带纸工字封口', null, null, null, '4/8', null, '7', null, 'PCS', '408', '0', '\0', '11.50', '4692.00', null, '51', null, null, null, null, null, null, null, null, null, null, '\0', '7', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e01336d5e8a590021', '4028817a3357462e01336d523195001a', null, null, null, '8709/6204', '1a6770a7-033c-4b98-9e2a-60cd2a5081c3.png', '怪虫小碗，喷蓝色，喷漆，喷珠光\r\n直径：18CM\r\n4只/内盒          8只/大箱\r\n白纸，瓦楞纸包装，大箱用胶带纸工字封口；', null, null, null, '4/8', null, '7', null, 'PCS', '600', '0', '\0', '6.50', '3900.00', null, '75', null, null, null, null, null, null, null, null, null, null, '\0', '2', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e01336d5e8a590022', '4028817a3357462e01336d523195001a', null, null, null, '9955/6105', '15c6d6ad-3608-4d73-83f3-23f605123b90.png', '竹节碗，喷紫色，喷漆，喷珠光\r\n直径：31CM\r\n4只/内盒            8只/大箱\r\n白纸，瓦楞纸包裹\r\n大箱用胶带纸工字封口；', null, null, null, '4/8', null, '7', null, 'PCS', '408', '0', '\0', '11.50', '4692.00', null, '51', null, null, null, null, null, null, null, null, null, null, '\0', '8', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3357462e01336d5e8a590023', '4028817a3357462e01336d523195001a', null, null, null, '9227/6092', '0ffed7a5-6fd6-4b36-9387-7108bb408fdf.png', '海星盘，喷紫色，喷漆，喷珠光\r\n直径：30CM\r\n4只/内盒            8只/大箱\r\n包装包裹，中间垫隔板\r\n大箱用胶带纸工字封口', null, null, null, '4/8', null, '7', null, 'PCS', '408', '0', '\0', '11.00', '4488.00', null, '51', null, null, null, null, null, null, null, null, null, null, '\0', '4', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133813f25a30002', '4028817a33812ffd0133813f25940001', null, null, null, '4993', '3feb6071-7835-48b6-beca-e54202221c3b.png', '全明料死模风灯，电镀花银喷绿色 \r\n明料挺底\r\n尺寸：11.5X20.3CM\r\n1只/五层内盒      12只/大箱\r\n电镀喷色我司安排', null, null, null, '1/12', null, '4', null, 'PCS', '300', '0', '\0', '8.50', '2550.00', null, '25', null, null, null, null, null, null, null, null, null, null, '\0', '1', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133813f25a30003', '4028817a33812ffd0133813f25940001', null, null, null, '4994', '56ada31d-acfc-4261-b28d-8be65ba2a21e.png', '全明料死模风灯，电镀花银喷蓝色\r\n明料挺底\r\n尺寸：11.5X20.3CM\r\n1只/五层内盒     12只/大箱\r\n电镀喷色我司安排', null, null, null, '1/12', null, '4', null, 'PCS', '300', '0', '\0', '8.50', '2550.00', null, '25', null, null, null, null, null, null, null, null, null, null, '\0', '2', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133813f25a30004', '4028817a33812ffd0133813f25940001', null, null, null, '4995', '9eb0c66c-d682-4f19-b89a-1a4808da5456.png', '全明料死模风灯，电镀花银喷紫色\r\n明料挺底\r\n尺寸：11.5X20.3CM\r\n1只/五层内盒      12只/大箱\r\n电镀喷色我司安排', null, null, null, '1/12', null, '4', null, 'PCS', '300', '0', '\0', '8.50', '2550.00', null, '25', null, null, null, null, null, null, null, null, null, null, '\0', '3', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacc40005', '4028817a33812ffd0133813f25940001', null, null, null, '9868', 'ba10c6b0-34b7-4911-a45c-cc282cf8072d.png', '全明料喇叭底糖缸配盖子\r\n尺寸：16X40CM高\r\n1只/上中下泡沫垫/内盒  2只/大箱\r\n泡沫垫工厂供，入内盒\r\n大箱用胶带纸工字封口', null, null, null, '1/2', null, '2', null, 'PCS', '600', '0', '\0', '16.00', '9600.00', null, '300', null, null, null, null, null, null, null, null, null, null, '\0', '27', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacc40006', '4028817a33812ffd0133813f25940001', null, null, null, '5099', 'd38c8874-e641-4c59-9f6d-eb07df231d44.png', '全明料钻石蛋糕盘粘底座\r\n喷蓝色，喷漆\r\n尺寸：23X11.5CM高\r\n1只/五层内盒     4只/大箱', null, null, null, '1/4', null, '7', null, 'PCS', '300', '0', '\0', '11.00', '3300.00', null, '75', null, null, null, null, null, null, null, null, null, null, '\0', '9', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacc40007', '4028817a33812ffd0133813f25940001', null, null, null, '5094', '662d9320-a8b7-4957-8d73-e4560e12e0e7.png', '全明料冰花风灯，粘电镀底座  \r\n尺寸：15.8X32CM高\r\n1只/五层内盒     6只/五层大箱', null, null, null, '1/6', null, '4028817a33d4f8b40133d9989f5e0024', null, 'PCS', '300', '0', '\0', '14.50', '4350.00', null, '50', null, null, null, null, null, null, null, null, null, null, '\0', '7', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacc40008', '4028817a33812ffd0133813f25940001', null, null, null, '5189', 'a2a503a3-f0cd-49b4-b05c-8ea55ecbe2bf.png', '全明料竖棱风灯，粘电镀底座\r\n底座由我司提供\r\n尺寸：20X35CM高\r\n1只/上下泡沫垫/内盒  4只/大箱\r\n保利龙垫工厂供', null, null, null, '1/4', null, '2', null, 'PCS', '300', '0', '\0', '14.00', '4200.00', null, '75', null, null, null, null, null, null, null, null, null, null, '\0', '12', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacc40009', '4028817a33812ffd0133813f25940001', null, null, null, '5331', '1b211d97-1def-49c6-90a8-8097bbd07f68.png', '全明料死模风灯，电镀花银喷绿色\r\n\r\n尺寸：17X23CM高\r\n1只/五层内盒      6只/大箱\r\n电镀喷色我司安排', null, null, null, '1/6', null, '4', null, 'PCS', '300', '0', '\0', '11.50', '3450.00', null, '50', null, null, null, null, null, null, null, null, null, null, '\0', '13', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacc4000a', '4028817a33812ffd0133813f25940001', null, null, null, '5095', '7b5d7395-40b4-45ad-9c42-c7050e232448.png', '全明料冰花风灯，粘明料底座 \r\n尺寸：15.8X32CM高\r\n1只/五层内盒    6只/五层大箱', null, null, null, '1/6', null, '4028817a33d4f8b40133d9989f5e0024', null, 'PCS', '300', '0', '\0', '14.00', '4200.00', null, '50', null, null, null, null, null, null, null, null, null, null, '\0', '8', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd4000b', '4028817a33812ffd0133813f25940001', null, null, null, '843MA', 'c0229e90-0a5b-438d-8b07-4acd238b142b.png', '全明料喇叭底糖缸，带盖子	\r\n盖子：10CMX10.3CM高 壁厚3MM	\r\n身子：11.2X31.7CM(全高） 底径12CM	\r\n壁厚不小于3MM  重量：950克	\r\n1只/上下保利龙垫/内盒   4只/大箱	\r\n保利龙垫工厂提供	\r\n大箱用胶带纸工字封口', null, null, null, '1/4', null, '2', null, 'PCS', '600', '0', '\0', '16.00', '9600.00', null, '150', null, null, null, null, null, null, null, null, null, null, '\0', '21', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd4000c', '4028817a33812ffd0133813f25940001', null, null, null, '4997', '0fdad1e1-452c-4ae4-a354-49688bd41778.png', '全明料死模风灯，电镀花银喷蓝色	\r\n明料挺底	\r\n尺寸：11.5X30.5CM	\r\n1只/五层内盒      6只/大箱	\r\n电镀喷色我司安排', null, null, null, '1/6', null, '4', null, 'PCS', '300', '0', '\0', '10.50', '3150.00', null, '50', null, null, null, null, null, null, null, null, null, null, '\0', '5', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd4000d', '4028817a33812ffd0133813f25940001', null, null, null, '4996', '7ae6c20e-0f57-4fab-9e40-22d1a486e943.png', '全明料死模风灯，电镀花银喷绿色\r\n明料挺底\r\n尺寸：11.5X30.5CM高\r\n1只/五层内盒      6只/大箱\r\n电镀喷色我司安排', null, null, null, '1/6', null, '4', null, 'PCS', '300', '0', '\0', '10.50', '3150.00', null, '50', null, null, null, null, null, null, null, null, null, null, '\0', '4', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd4000e', '4028817a33812ffd0133813f25940001', null, null, null, '600MA', '958fe4fb-db40-4977-bf2e-2c2db29d65f3.png', '全明料蛋糕盘+罩子,磨口抛光\r\n蛋糕罩子尺寸：17.5X15.5CM高\r\n蛋糕盘子尺寸：19.2X18CM高\r\n1只/上下保利龙垫/内盒   4只/大箱\r\n保丽龙垫工厂提供，大箱用胶带纸工字封口', null, null, null, '1/4', null, '2', null, 'SETS', '600', '0', '\0', '18.00', '10800.00', null, '150', null, null, null, null, null, null, null, null, null, null, '\0', '17', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd4000f', '4028817a33812ffd0133813f25940001', null, null, null, '602MA', '624ab3d2-12f3-4dd8-b438-c03a3018b170.png', '全明平光蛋糕盘+罩子,磨口抛光\r\n蛋糕罩子尺寸：17.5X15.5CM高\r\n蛋糕盘子尺寸：19.2X28CM高\r\n1只/上下保利龙垫/内盒  2只/大箱\r\n保利龙垫工厂提供\r\n大箱用胶带纸工字封口', null, null, null, '1/2', null, '2', null, 'SETS', '600', '0', '\0', '19.00', '11400.00', null, '300', null, null, null, null, null, null, null, null, null, null, '\0', '18', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd40010', '4028817a33812ffd0133813f25940001', null, null, null, '8759', 'f92f57f8-65de-42be-9814-bad100059d23.png', '全明料竖棱糖缸配盖子\r\n尺寸：16.5X40CM高\r\n1只/上中下泡沫垫/内盒  2只/大箱\r\n\r\n泡沫垫工厂供，大箱用胶带工字封口', null, null, null, '1/2', null, '2', null, 'PCS', '600', '0', '\0', '15.00', '9000.00', null, '300', null, null, null, null, null, null, null, null, null, null, '\0', '25', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd40011', '4028817a33812ffd0133813f25940001', null, null, null, '6998', '3be8121c-867d-4745-bebf-3844e6a05589.png', '全明料蛋糕盘+蛋糕罩 \r\n盘子沿电镀，罩子上珠描白金。\r\n尺寸：6-1/2\" X 12-1/2\" CM H\r\n1只/上中下泡沫垫/内盒  4只/大箱\r\n产品用中上下泡沫垫包装入内盒，\r\n大箱用胶带纸工字封口。电镀我司安排，泡沫垫工厂提供。\r\n盘子请于12月25日送祁县喜福来厂电镀', null, null, null, '1/4', null, '2', null, 'SETS', '300', '0', '\0', '19.00', '5700.00', null, '75', null, null, null, null, null, null, null, null, null, null, '\0', '20', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd40012', '4028817a33812ffd0133813f25940001', null, null, null, '5118', '635cdf31-8e48-45f3-886c-5fffd532175b.png', '全明料蛋糕盘+罩子\r\n罩子上烤白金字母花纸（SWEETS)\r\n盘子口径16.4CM\r\n罩子尺寸：15X13CM  全高：26.7CM\r\n1套/上下保利龙垫/五层内盒 4套/大箱\r\n花纸我司供，保利龙垫工厂供', null, null, null, '1/4', null, '2', null, 'SETS', '300', '0', '\0', '16.00', '4800.00', null, '75', null, null, null, null, null, null, null, null, null, null, '\0', '11', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd40013', '4028817a33812ffd0133813f25940001', null, null, null, '8708', '39b3ac6f-fb30-4b37-8fff-a07fb88aef15.png', '怪虫小碗，喷紫色，喷漆，喷珠光\r\n尺寸：18CX9CM高\r\n4只/内盒           8只/大箱 \r\n白纸，瓦楞纸包裹', null, null, null, '1/8', null, '7', null, 'PCS', '600', '0', '\0', '6.50', '3900.00', null, '75', null, null, null, null, null, null, null, null, null, null, '\0', '23', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd40014', '4028817a33812ffd0133813f25940001', null, null, null, '5336', '466ba3d1-94b5-44ca-92c9-98631bf3b92b.png', '全明料死模风灯，电镀花银喷绿色	\r\n 	\r\n尺寸：14.5X20CM高	\r\n1只/五层内盒      12只/大箱	\r\n电镀喷色我司安排', null, null, null, '1/12', null, '4', null, 'PCS', '300', '0', '\0', '8.00', '2400.00', null, '25', null, null, null, null, null, null, null, null, null, null, '\0', '14', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd40015', '4028817a33812ffd0133813f25940001', null, null, null, '5337', '78ff069b-327e-488e-a629-b76bed0efb98.png', '全明料死模风灯，电镀花银喷蓝色\r\n\r\n尺寸：14.5X20CM高\r\n1只/五层内盒      12只/大箱\r\n电镀喷色我司安排', null, null, null, '1/12', null, '4', null, 'PCS', '300', '0', '\0', '8.00', '2400.00', null, '25', null, null, null, null, null, null, null, null, null, null, '\0', '15', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd40016', '4028817a33812ffd0133813f25940001', null, null, null, '603MA', 'ea12f8ba-afc1-4651-bc10-432c85fcb091.png', '全明平光蛋糕盘+罩子,磨口抛光\r\n蛋糕罩子尺寸：17.5X15.5CM高\r\n蛋糕盘子尺寸：19.2X38CM高\r\n此单数量出自C/1440/11\r\n1只/上下保利龙垫/内盒  2只/大箱\r\n保丽龙垫工厂提供，大箱用胶带纸工字封口', null, null, null, '1/2', null, '2', null, 'SETS', '600', '0', '\0', '20.00', '12000.00', null, '300', null, null, null, null, null, null, null, null, null, null, '\0', '19', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd40017', '4028817a33812ffd0133813f25940001', null, null, null, '5117', '4f7fdc19-c276-47da-aced-5cec4e02be08.png', '全明料蛋糕盘+罩子\r\n罩上烤白金字母花纸（SWEETS)\r\n罩子尺寸：15X13CM高\r\n盘子尺寸：16.4X27CM高\r\n1套/上下保利龙垫/五层内盒\r\n4套/大箱\r\n花纸我司供', null, null, null, '1/4', null, '2', null, 'SETS', '300', '0', '\0', '17.00', '5100.00', null, '75', null, null, null, null, null, null, null, null, null, null, '\0', '10', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd40018', '4028817a33812ffd0133813f25940001', null, null, null, '5400', '3b810117-19c6-446e-886f-d3b2fd5ba411.png', '全明料死模风灯，电镀花银喷蓝色\r\n \r\n尺寸：17X23CM高\r\n1只/五层内盒      6只/大箱\r\n电镀喷色我司安排', null, null, null, '1/6', null, '4', null, 'PCS', '300', '0', '\0', '11.50', '3450.00', null, '50', null, null, null, null, null, null, null, null, null, null, '\0', '16', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd40019', '4028817a33812ffd0133813f25940001', null, null, null, '4998', '0c400655-fb24-4781-aae1-eaa30e31ad4c.png', '全明料死模风灯，电镀花银喷紫色\r\n明料挺底\r\n尺寸：11.5X30.5CM\r\n1只/五层内盒      6只/大箱\r\n电镀喷色我司安排', null, null, null, '1/6', null, '4', null, 'PCS', '300', '0', '\0', '10.50', '3150.00', null, '50', null, null, null, null, null, null, null, null, null, null, '\0', '6', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd4001a', '4028817a33812ffd0133813f25940001', null, null, null, '8760', '2aaba753-e5d2-4c42-badf-cc16acf81d2b.png', '全明料竖棱糖缸配盖子\r\n尺寸：16.5X51CM高\r\n\r\n1只/上中下泡沫垫/内盒  2只/大箱\r\n泡沫垫工厂供，大箱用胶带工字封口', null, null, null, '1/2', null, '2', null, 'PCS', '600', '0', '\0', '16.00', '9600.00', null, '300', null, null, null, null, null, null, null, null, null, null, '\0', '26', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd4001b', '4028817a33812ffd0133813f25940001', null, null, null, '844MA', '6f6f097f-ae83-4ecb-80c6-ec1e93353985.png', '全明料糖缸带盖子\r\n盖子：9.3X13.3CM高 壁厚3MM\r\n身子：10.5X28.4CM(全高)\r\n底径：13CM   壁厚不小于3MM\r\n1只/上下保利龙垫/内盒 4只/大箱\r\n保利龙垫工厂提供，大箱用胶带纸工字封口', null, null, null, '1/4', null, '2', null, 'PCS', '600', '0', '\0', '16.00', '9600.00', null, '150', null, null, null, null, null, null, null, null, null, null, '\0', '22', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd4001c', '4028817a33812ffd0133813f25940001', null, null, null, '9869', 'be81bc6b-610b-45fa-bb8b-5156d8de9d52.png', '全明料喇叭底糖缸配盖子\r\n尺寸：19X40CM高\r\n1只/上中下泡沫垫/内盒  2只/大箱\r\n泡沫垫工厂供， \r\n大箱用胶带纸工字封口', null, null, null, '1/2', null, '2', null, 'PCS', '600', '0', '\0', '16.00', '9600.00', null, '300', null, null, null, null, null, null, null, null, null, null, '\0', '28', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133816aacd4001d', '4028817a33812ffd0133813f25940001', null, null, null, '8709', 'd33ee976-4d35-4990-ae41-eebee8989f5a.png', '怪虫小碗，喷蓝色，喷漆，喷珠光\r\n尺寸：18CMX9CM高\r\n4只/内盒          8只/大箱', null, null, null, '1/8', null, '7', null, 'PCS', '600', '0', '\0', '6.50', '3900.00', null, '75', null, null, null, null, null, null, null, null, null, null, '\0', '24', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd013382048ff80025', '4028817a33812ffd013382048ff80024', null, null, null, '20-37-264/JK1051087', 'ef1348ed-d11c-4acf-ae57-4a0600e4ff0f.png', '全明料蛋糕盘+罩子\r\n罩子烤蒙砂白花纸，花纸我司供\r\n尺寸：12.3X22.5CM高\r\n1只/五层内盒       12只/大箱', null, null, null, '1/12', null, '1', null, 'SETS', '1200', '0', '\0', '9.50', '11400.00', null, '100', null, null, null, null, null, null, null, null, null, null, '\0', '1', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd013382048ff80026', '4028817a33812ffd013382048ff80024', null, null, null, '20-37-265/JK1050163', 'e96667ee-d5e9-43d1-bac0-758593c56629.png', '全明料蛋糕盘+罩子\r\n罩子烤蒙砂白花纸，花纸我司供\r\n尺寸：13.5X29.5CM高\r\n1只/五层内盒       6只/大箱', null, null, null, '1/6', null, '1', null, 'SETS', '1200', '0', '\0', '11.00', '13200.00', null, '200', null, null, null, null, null, null, null, null, null, null, '\0', '2', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd013382048ff80027', '4028817a33812ffd013382048ff80024', null, null, null, '20-37-266/JK1050164', '6b8d7276-1de9-40d8-9cf8-dabc7a8d853d.png', '全明料蛋糕盘+罩子\r\n罩子烤蒙砂白花纸，花纸我司供\r\n尺寸：14.5X33CM高\r\n1只/五层内盒       6只/大箱', null, null, null, '1/6', null, '1', null, 'SETS', '1200', '0', '\0', '13.00', '15600.00', null, '200', null, null, null, null, null, null, null, null, null, null, '\0', '3', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133821a8eb5002c', '4028817a33812ffd0133821a8eb5002b', null, null, null, 'JK110102', 'e4df38d5-f0d9-4f91-99c6-240addaa36a3.png', '全明料平光蛋糕罩配钻石盘子\r\n罩子上粘小鸟，小鸟和钻石盘我司供\r\n罩子尺寸：26X36CM高\r\n1套/上下保利龙盖/内盒\r\n2套/大箱\r\n保利龙垫工厂供', null, null, null, '1/2', null, '1', null, 'SETS', '150', '0', '\0', '32.00', '4800.00', null, '75', null, null, null, null, null, null, null, null, null, null, '\0', '2', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33812ffd0133821a8eb5002d', '4028817a33812ffd0133821a8eb5002b', null, null, null, 'JK110101', 'bfd61df4-61b5-492c-b11c-7d19b63f5cf1.png', '全明料平光蛋糕罩配钻石盘子\r\n罩子上粘小鸟，小鸟和钻石盘我司供\r\n罩子尺寸：20X20.5CM高\r\n1套/上下保利龙盖/内盒\r\n4套/大箱\r\n保利龙垫工厂供', null, null, null, '1/4', null, '1', null, 'SETS', '152', '0', '\0', '22.00', '3344.00', null, '38', null, null, null, null, null, null, null, null, null, null, '\0', '1', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9878e88000e', '4028817a33d4f8b40133d9878e88000d', null, null, null, 'JK1060019/11990', 'undefined', '全明料密直棱低口杯\r\n尺寸：9X10.5CM高\r\n4只/五层内盒            24只/大箱', null, null, null, '4/24', null, '13', null, 'PCS', '696', '0', '\0', '5.00', '3480.00', null, '29', null, null, null, null, null, null, null, null, null, null, '\0', '6', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9878e88000f', '4028817a33d4f8b40133d9878e88000d', null, null, null, 'JK103134/11989', 'undefined', '全明料密直棱香槟杯\r\n尺寸：9X21CM高\r\n4只/五层内盒            16只/大箱', null, null, null, '4/16', null, '13', null, 'PCS', '832', '0', '\0', '6.00', '4992.00', null, '52', null, null, null, null, null, null, null, null, null, null, '\0', '7', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9878e880010', '4028817a33d4f8b40133d9878e88000d', null, null, null, 'JK1050152/11306', 'undefined', '全明料酒杯，口部描1CM白金边\r\n尺寸：7X26CM高\r\n4只/五层内盒           16只/大箱', null, null, null, '4/16', null, '1', null, 'PCS', '608', '0', '\0', '8.50', '5168.00', null, '38', null, null, null, null, null, null, null, null, null, null, '\0', '1', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9878e880011', '4028817a33d4f8b40133d9878e88000d', null, null, null, 'JK103233/11301', 'undefined', '全明料糖缸配盖子，糖缸刻钻石描亮油\r\n尺寸：11X30.5CM高\r\n1只/五层内盒        12只/大箱', null, null, null, '1/12', null, '2', null, 'PCS', '12', '0', '\0', '18.00', '216.00', null, '12', null, null, null, null, null, null, null, null, null, null, '\0', '11', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9878e880012', '4028817a33d4f8b40133d9878e88000d', null, null, null, 'JK1050068/11314', 'undefined', '全明料马丁尼，口部描1CM白金边\r\n尺寸：12X19CM高\r\n4只/五层内盒           16只/大箱', null, null, null, '4/16', null, '1', null, 'PCS', '608', '0', '\0', '11.20', '6809.60', null, '38', null, null, null, null, null, null, null, null, null, null, '\0', '3', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9878e880013', '4028817a33d4f8b40133d9878e88000d', null, null, null, 'JK1050317/12006', 'undefined', '全明料糖缸配盖子，糖缸刻交叉麦穗花\r\n尺寸：10.5X14CM高\r\n1只/五层内盒          12只/大箱', null, null, null, '1/12', null, '2', null, 'PCS', '168', '0', '\0', '9.50', '1596.00', null, '14', null, null, null, null, null, null, null, null, null, null, '\0', '9', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9878e880014', '4028817a33d4f8b40133d9878e88000d', null, null, null, 'JK169340/13076', 'undefined', '全明料蛋糕罩配盘子，罩子烤白花纸\r\n尺寸：25X26CM高\r\n1套/上下保丽龙垫/内盒    2套/大箱\r\n白花纸我司供', null, null, null, '1/2', null, '2', null, 'SETS', '464', '0', '\0', '36.00', '16704.00', null, '232', null, null, null, null, null, null, null, null, null, null, '\0', '8', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9878e880015', '4028817a33d4f8b40133d9878e88000d', null, null, null, 'JK1050316/12005', 'undefined', '全明料糖缸配盖子，糖缸刻交叉麦穗花\r\n尺寸：15X15CM高\r\n1只/五层内盒        6只/大箱', null, null, null, '1/6', null, '2', null, 'PCS', '162', '0', '\0', '12.50', '2025.00', null, '27', null, null, null, null, null, null, null, null, null, null, '\0', '10', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9878e880016', '4028817a33d4f8b40133d9878e88000d', null, null, null, 'JK1050201/12078', 'undefined', '全明料蛋糕罩配盘子，罩子上烤花纸\r\n罩子尺寸：15X11.5CM高\r\n盘子尺寸：16X13CM高\r\n全高：22CM\r\n1套/上下保丽龙垫/内盒     6套/大箱', null, null, null, '1/6', null, '2', null, 'SETS', '204', '0', '\0', '18.00', '3672.00', null, '34', null, null, null, null, null, null, null, null, null, null, '\0', '4', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9878e880017', '4028817a33d4f8b40133d9878e88000d', null, null, null, 'JK1050154/11308', 'undefined', '全明料香槟杯，口部描1CM白金边\r\n尺寸：5X29CM高\r\n4只/五层内盒           16只/大箱', null, null, null, '4/16', null, '1', null, 'PCS', '704', '0', '\0', '7.50', '5280.00', null, '44', null, null, null, null, null, null, null, null, null, null, '\0', '2', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9878e880018', '4028817a33d4f8b40133d9878e88000d', null, null, null, 'JK103136/11988', 'undefined', '全明料密直棱酒杯，底厚要求5MM\r\n尺寸：9X17.5CM高\r\n4只/五层内盒            16只/大箱', null, null, null, '4/16', null, '13', null, 'PCS', '928', '0', '\0', '6.30', '5846.40', null, '58', null, null, null, null, null, null, null, null, null, null, '\0', '5', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d991a50d001a', '4028817a33d4f8b40133d991a50d0019', null, null, null, 'JK1040446/JK446', 'undefined', '全明料糖缸配盖子，普通底\r\n尺寸：16.5X50CM高\r\n1只/上下保丽龙垫/白盒\r\n2只/大箱\r\n保丽龙垫工厂供', null, null, null, '1/2', null, 'ff808081301885760130189e47ca0013', null, 'PCS', '600', '0', '\0', '25.00', '15000.00', null, '300', null, null, null, null, null, null, null, null, null, null, '\0', '7', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d991a50d001b', '4028817a33d4f8b40133d991a50d0019', null, null, null, 'JK1040364/JK364', 'undefined', '全明料糖缸配盖子\r\n尺寸：19X39CM高\r\n1只/上下保丽龙垫/白盒\r\n2只/大箱\r\n保丽龙工厂供', null, null, null, '1/2', null, '2', null, 'PCS', '600', '0', '\0', '25.00', '15000.00', null, '300', null, null, null, null, null, null, null, null, null, null, '\0', '6', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d991a50d001c', '4028817a33d4f8b40133d991a50d0019', null, null, null, 'JK1050316/JK316', 'undefined', '全明料糖缸，刻麦穗花不描亮油。\r\n盖子电镀，电镀我司安排。\r\n尺寸：15X15CM 高\r\n1只/白盒    6只/大箱\r\n产品用白纸、瓦纸、气泡纸包装入白盒，入大箱。大箱用胶带纸工字封口。\r\n白盒我司供', null, null, null, '1/6', null, '2', null, 'PCS', '600', '0', '\0', '12.00', '7200.00', null, '100', null, null, null, null, null, null, null, null, null, null, '\0', '2', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d991a50d001d', '4028817a33d4f8b40133d991a50d0019', null, null, null, 'JK1050166/JK166', 'undefined', '全明料糖缸，刻花不描亮油。\r\n尺寸：12.5X26.5CM高\r\n1只/白盒    6只/大箱\r\n产品用白纸、瓦纸、气泡纸包装入白盒，入大箱。大箱用胶带纸工字封口。\r\n白盒我司供', null, null, null, '1/6', null, '1', null, 'PCS', '600', '0', '\0', '16.00', '9600.00', null, '100', null, null, null, null, null, null, null, null, null, null, '\0', '1', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d991a50d001e', '4028817a33d4f8b40133d991a50d0019', null, null, null, 'JK103694/JK694', 'undefined', '套6全明料死模低口杯\r\n尺寸：8X12.5CM高\r\n1套/白盒    4套/大箱\r\n产品用白纸、瓦纸、气泡纸包装入白盒，入大箱。大箱用胶带纸工字封口。\r\n白盒我司供', null, null, null, '1/4', null, '4', null, 'SETS', '480', '0', '\0', '24.00', '11520.00', null, '120', null, null, null, null, null, null, null, null, null, null, '\0', '4', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d991a50d001f', '4028817a33d4f8b40133d991a50d0019', null, null, null, 'JK103956/JK956', 'undefined', '全明料蛋糕罩配盘子\r\n盘子我司安排\r\n罩子尺寸：33X14X15\r\n1套/保丽龙/五层内盒  2套/大箱\r\n2011年11月15日送天顺厂', null, null, null, '1/2', null, 'ff808081301885760130189e47ca0013', null, 'SETS', '480', '0', '\0', '27.00', '12960.00', null, '240', null, null, null, null, null, null, null, null, null, null, '\0', '5', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d991a50d0020', '4028817a33d4f8b40133d991a50d0019', null, null, null, 'JK103693/JK693', 'undefined', '套6全明料死模低口杯\r\n尺寸：7.3X10.5CM高\r\n1套/白盒    8套/大箱\r\n产品用白纸、瓦纸、气泡纸包装入白盒，入大箱。大箱用胶带纸工字封口。\r\n白盒我司供', null, null, null, '1/8', null, '4', null, 'SETS', '184', '0', '\0', '21.00', '3864.00', null, '23', null, null, null, null, null, null, null, null, null, null, '\0', '3', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9be557b0029', '4028817a33d4f8b40133d991a50d0019', null, null, null, 'J859101549/JK549', '', '全明料蛋糕盘\r\n尺寸：直径33.5CM\r\n2只/五层内盒    8只/大箱', null, null, null, '2/8', null, '9', null, 'PCS', '1200', '0', '\0', '10.00', '12000.00', null, '150', null, null, null, null, null, null, null, null, null, null, '\0', '12', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9be557b002a', '4028817a33d4f8b40133d991a50d0019', null, null, null, 'JK1060338/JK338', '', '全明料机压直棱糖缸\r\n尺寸：15.5X15.5CM 高\r\n1只/白盒  12只/五层大箱\r\n白盒我司供', null, null, null, '1/12', null, '4028817a33d4f8b40133d9989f5e0024', null, 'PCS', '2400', '0', '\0', '7.15', '17160.00', null, '200', null, null, null, null, null, null, null, null, null, null, '\0', '8', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9be557b002b', '4028817a33d4f8b40133d991a50d0019', null, null, null, 'JK103209/JK209', '', '全明料2层钻石蛋糕盘，配喷塑铁架\r\n铁架我司供\r\n大盘尺寸：33X2.5CM\r\n小盘尺寸：21X2.5CM\r\n1套/内盒    6套/大箱', null, null, null, '1/6', null, '9', null, 'SETS', '1200', '0', '\0', '13.00', '15600.00', null, '200', null, null, null, null, null, null, null, null, null, null, '\0', '11', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9be557b002c', '4028817a33d4f8b40133d991a50d0019', null, null, null, 'JK1031007-LP/JK007/1', '', '全明料钻石蛋糕盘，粘底座\r\n尺寸：30X11.5CM高\r\n1只/白盒    4只/大箱\r\n白盒我司供', null, null, null, '1/4', null, '9', null, 'PCS', '600', '0', '\0', '10.50', '6300.00', null, '150', null, null, null, null, null, null, null, null, null, null, '\0', '13', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9be557b002d', '4028817a33d4f8b40133d991a50d0019', null, null, null, 'JK1050128/JK0128', '', '全明料三层糖缸，刻麦穗花\r\n尺寸：12X22.5CM\r\n1套/白盒    8套/大箱\r\n产品用白纸、瓦纸、气泡纸包装入白盒，入大箱。大箱用胶带纸工字封口。\r\n白盒我司供', null, null, null, '1/8', null, '1', null, 'SETS', '600', '0', '\0', '18.50', '11100.00', null, '75', null, null, null, null, null, null, null, null, null, null, '\0', '9', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9be557b002e', '4028817a33d4f8b40133d991a50d0019', null, null, null, 'JK103176/JK176', '', '全明料糖缸，刻花，不带盖子\r\n尺寸：20X14.5CM高\r\n1只/白盒    4只/大箱\r\n产品用白纸、瓦纸、气泡纸包装入白盒，入大箱。大箱用胶带纸工字封口。\r\n白盒我司供', null, null, null, '1/4', null, '2', null, 'PCS', '480', '0', '\0', '18.50', '8880.00', null, '120', null, null, null, null, null, null, null, null, null, null, '\0', '10', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9bea39b0030', '4028817a33d4f8b40133d9bea39b002f', null, null, null, 'JK1050806/JK032', 'undefined', '套6全明料香槟杯，电镀渐变色\r\n尺寸：5.7X25CM高\r\n1套/五层内盒           4套/大箱', null, null, null, '1/4', null, '1', null, 'SETS', '320', '0', '\0', '31.80', '10176.00', null, '80', null, null, null, null, null, null, null, null, null, null, '\0', '6', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9bea39b0031', '4028817a33d4f8b40133d9bea39b002f', null, null, null, 'JK045/JK1060426', 'undefined', '套6紫色碗明挺底香槟杯\r\n尺寸：8X17CM高\r\n1套/五层内盒          4套/大箱', null, null, null, '1/4', null, '4', null, 'SETS', '240', '0', '\0', '33.60', '8064.00', null, '60', null, null, null, null, null, null, null, null, null, null, '\0', '9', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9bea39b0032', '4028817a33d4f8b40133d9bea39b002f', null, null, null, 'JK1050807/JK033', 'undefined', '套6全明料酒杯，电镀渐变色\r\n尺寸：8X24CM高\r\n1套/五层内盒          2套/大箱', null, null, null, '1/2', null, '1', null, 'SETS', '300', '0', '\0', '34.80', '10440.00', null, '150', null, null, null, null, null, null, null, null, null, null, '\0', '7', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9bea39b0033', '4028817a33d4f8b40133d9bea39b002f', null, null, null, 'JK040/JK1060338', 'undefined', '全明料机压竖棱糖缸\r\n尺寸：15.5X15.5CM\r\n1只/内盒           12只/大箱\r\n白纸，瓦楞纸包装', null, null, null, '1/12', null, '4028817a33d4f8b40133d9989f5e0024', null, 'PCS', '3000', '0', '\0', '8.04', '24120.00', null, '250', null, null, null, null, null, null, null, null, null, null, '\0', '3', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9bea39b0034', '4028817a33d4f8b40133d9bea39b002f', null, null, null, 'JK044/JK1060425', 'undefined', '套6紫色碗明挺底红酒杯\r\n尺寸：8X20CM高\r\n1套/五层内盒           4套/大箱', null, null, null, '1/4', null, '4', null, 'SETS', '240', '0', '\0', '34.80', '8352.00', null, '60', null, null, null, null, null, null, null, null, null, null, '\0', '8', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9bea39b0035', '4028817a33d4f8b40133d9bea39b002f', null, null, null, 'JK019/J859100824', 'undefined', '套4全明料酒杯，口部描2.5CM宽白金边\r\n尺寸：8.4X22CM高\r\n1套/五层内盒     4套/大箱', null, null, null, '1/4', null, '1', null, 'SETS', '320', '0', '\0', '58.00', '18560.00', null, '80', null, null, null, null, null, null, null, null, null, null, '\0', '2', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9bea39b0036', '4028817a33d4f8b40133d9bea39b002f', null, null, null, 'JK018/J859100826', 'undefined', '套4全明料香槟杯，口部描2.5CM宽白金边\r\n尺寸：4.7X26.5CM高\r\n1套/五层内盒         6套/大箱', null, null, null, '1/6', null, '1', null, 'SETS', '300', '0', '\0', '40.00', '12000.00', null, '50', null, null, null, null, null, null, null, null, null, null, '\0', '1', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9bea39b0037', '4028817a33d4f8b40133d9bea39b002f', null, null, null, 'JK041/JK1060339', 'undefined', '全明料蒙古包糖缸\r\n尺寸：9X11CM高\r\n1只/五层内盒          24只/大箱\r\n白纸，瓦楞纸包装', null, null, null, '1/24', null, '3', null, 'PCS', '3000', '0', '\0', '4.00', '12000.00', null, '125', null, null, null, null, null, null, null, null, null, null, '\0', '4', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33d4f8b40133d9bea39b0038', '4028817a33d4f8b40133d9bea39b002f', null, null, null, 'JK020/J859100825', 'undefined', '套4全明料马丁尼，口部描2.5CM白金边\r\n尺寸：11.8X20CM高\r\n1套/五层内盒           4套/大箱', null, null, null, '1/4', null, '1', null, 'SETS', '300', '0', '\0', '70.00', '21000.00', null, '75', null, null, null, null, null, null, null, null, null, null, '\0', '5', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33f7960d0133f8d912ba0005', '4028817a33812ffd0133821a8eb5002b', null, null, null, 'JK110102', '', '全明料钻石盘子\r\n盘子尺寸：29.5X11.5CM\r\n安全包装送祁县宏艺厂', null, null, null, '1/2', null, '9', null, 'PCS', '150', '0', '\0', '10.00', '1500.00', null, '38', null, null, null, null, null, null, null, null, null, null, '\0', '3', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33f7960d0133f8d912ba0006', '4028817a33812ffd0133821a8eb5002b', null, null, null, 'JK110101', '', '全明料钻石盘子\r\n盘子尺寸：23X11.5CM\r\n安全包装送祁县宏艺厂', null, null, null, '1/4', null, '9', null, 'PCS', '152', '0', '\0', '8.50', '1292.00', null, '38', null, null, null, null, null, null, null, null, null, null, '\0', '4', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fcdb13f4000e', '4028817a33d4f8b40133d9bea39b002f', null, null, null, 'JK052/JK1070691', '', '套4全明料马丁尼\r\n尺寸：12.5X19.5CM高\r\n1套/五层内盒          4套/大箱', null, null, null, '1/4', null, '1', null, 'SETS', '300', '0', '\0', '30.00', '9000.00', null, '75', null, null, null, null, null, null, null, null, null, null, '\0', '12', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fcdb13f4000f', '4028817a33d4f8b40133d9bea39b002f', null, null, null, 'JK050/JK1070690', '', '套4全明料白酒杯，钻石挺\r\n尺寸：8.6X23CM高\r\n1套/五层内盒            4套/大箱', null, null, null, '1/4', null, '5', null, 'SETS', '300', '0', '\0', '23.20', '6960.00', null, '75', null, null, null, null, null, null, null, null, null, null, '\0', '11', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fcdb13f40010', '4028817a33d4f8b40133d9bea39b002f', null, null, null, 'JK046/JK1050201', '', '全明料蛋糕盘+罩子\r\n罩子上烤蒙砂白花纸\r\n距口部1CM处，花纸我司供\r\n罩子：15X11CM高   重量不低于485克/只\r\n盘子：16X23.3CM高    底径：11.8CM\r\n重量不低于645克/只   全高：32CM\r\n1套/上中下保利龙垫/内盒      6套/大箱\r\n保利龙垫工厂供', null, null, null, '1/6', null, '2', null, 'SETS', '600', '0', '\0', '19.00', '11400.00', null, '100', null, null, null, null, null, null, null, null, null, null, '\0', '10', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fd81e7d7001e', '4028817a33fc4e280133fd81e7d7001d', null, null, null, '169280', '', '全明料蛋糕盘+罩子	\r\n距离罩子口部3CM烤字母花纸	\r\n 	\r\n罩子尺寸：22X15CM 壁厚3MM	\r\n盘子尺寸：24X20.8CM高 壁厚3.5CM  	\r\n底径：13.5CM  沿高：3CM 	\r\n1只/上中下保丽龙垫/五层内盒 	\r\n2只/大箱', null, null, null, '1/2', null, '2', null, 'SETS', '100', '0', '\0', '32.00', '3200.00', null, '50', null, null, null, null, null, null, null, null, null, null, '\0', '10', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fd81e7d7001f', '4028817a33fc4e280133fd81e7d7001d', null, null, null, 'J859102682/113860', '', '全明料糖缸，烤字母白花纸\r\nSTORAGE ONLY\r\n尺寸：9.5X23CM高 最大径：14.5CM\r\n1只/五层内盒       6只/大箱\r\n花纸我司供', null, null, null, '1/6', null, '1', null, 'PCS', '300', '0', '\0', '16.00', '4800.00', null, '50', null, null, null, null, null, null, null, null, null, null, '\0', '5', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fd81e7d70020', '4028817a33fc4e280133fd81e7d7001d', null, null, null, 'JK1080435', '', '全明料球形瓶子，刻花，描亮油\r\n\r\n尺寸:9.5X10.5CM（不含喷头高）  \r\n底径：5.5CM\r\n1只/五层内盒    24只/五层大箱', null, null, null, '1/24', null, '4', null, 'PCS', '1008', '0', '\0', '9.00', '9072.00', null, '42', null, null, null, null, null, null, null, null, null, null, '\0', '4', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fd81e7d70021', '4028817a33fc4e280133fd81e7d7001d', null, null, null, '123540', '', '全明料蛋糕盘子+罩子\r\n罩子上烤字母（HIGH TEA）花纸\r\n盘子尺寸：19.3X28CM高\r\n罩子尺寸：17X15.5CM高\r\n1只/上中下保利龙垫/五层内盒 \r\n4只/大箱', null, null, null, '1/4', null, '2', null, 'SETS', '100', '0', '\0', '22.00', '2200.00', null, '25', null, null, null, null, null, null, null, null, null, null, '\0', '9', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fd81e7d70022', '4028817a33fc4e280133fd81e7d7001d', null, null, null, 'JK1052446/158080', '', '全明料酒壶，杯身烤白色字母花纸\r\n \r\n尺寸：7.8X22.5CM高  1400克/只\r\n1只/五层内盒    6只/五层大箱\r\n花纸我司安排', null, null, null, '1/6', null, '3', null, 'PCS', '702', '0', '\0', '16.50', '11583.00', null, '117', null, null, null, null, null, null, null, null, null, null, '\0', '6', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fd81e7d70023', '4028817a33fc4e280133fd81e7d7001d', null, null, null, '62145', '', '全明料蛋糕罩子\r\n\r\n尺寸：30.3X11.5X15CM\r\n1只/五层内盒    8只/大箱', null, null, null, '1/8', null, 'ff808081301885760130189e47ca0013', null, 'PCS', '504', '0', '\0', '27.00', '13608.00', null, '63', null, null, null, null, null, null, null, null, null, null, '\0', '2', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fd81e7d70024', '4028817a33fc4e280133fd81e7d7001d', null, null, null, '62146/F-57', '', '全明料蛋糕罩子，刻麦穗花\r\n\r\n尺寸：30.3X11.5X15CM\r\n1只/五层内盒    8只/大箱', null, null, null, '1/8', null, 'ff808081301885760130189e47ca0013', null, 'PCS', '504', '0', '\0', '28.50', '14364.00', null, '63', null, null, null, null, null, null, null, null, null, null, '\0', '3', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fd81e7d70025', '4028817a33fc4e280133fd81e7d7001d', null, null, null, 'JKF081342/62180', '', '全明料蛋糕罩子+盘子\r\n盘子我司安排\r\n尺寸：30.3X11.5X15CM\r\n1套/保丽龙/内盒    4套/大箱', null, null, null, '1/4', null, 'ff808081301885760130189e47ca0013', null, 'SETS', '652', '0', '\0', '27.00', '17604.00', null, '163', null, null, null, null, null, null, null, null, null, null, '\0', '1', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fd81e7d70026', '4028817a33fc4e280133fd81e7d7001d', null, null, null, 'JK10501218/160380', '', '全明料糖缸带盖子，糖缸身上烤\r\n白色字母花纸\r\n尺寸：12.5X22.5CM高\r\n\r\n1套/五层内盒     12套/大箱\r\n花纸我司供', null, null, null, '1/12', null, '1', null, 'PCS', '600', '0', '\0', '15.00', '9000.00', null, '50', null, null, null, null, null, null, null, null, null, null, '\0', '8', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fd81e7d70027', '4028817a33fc4e280133fd81e7d7001d', null, null, null, 'JK1040009/141760', '', '全明料三层糖缸，烤字母花纸\r\n花纸我司安排\r\n尺寸：16.5X40CM高\r\n1套/五层内盒     2套/五层大箱\r\n花纸具体位置见我司封样', null, null, null, '1/2', null, '1', null, 'PCS', '300', '0', '\0', '35.00', '10500.00', null, '150', null, null, null, null, null, null, null, null, null, null, '\0', '7', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fd89fcc00028', '4028817a33fc4e280133fd81e7d7001d', null, null, null, 'JKF081342/62180', '', '全明料蛋糕盘配罩子\r\n罩子由文水志远厂提供\r\n尺寸：33X13.5CM高\r\n1套/保丽龙/五层内盒 4套/大箱\r\n保丽龙由我司提供\r\n内盒，大箱由文水志远厂提供', null, null, null, '1/4', null, '7', null, 'SETS', '652', '0', '\0', '10.40', '6780.80', null, '163', null, null, null, null, null, null, null, null, null, null, '\0', '11', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fd9f8b4e0030', '4028817a33fc4e280133fd9f8b4e002f', null, null, null, 'JK1040158/12068', '', '明料灯宫细转棱蜡台\r\n\r\n尺寸：6X26CM高\r\n4只/三层内盒      16只/大箱', null, null, null, '4/16', null, '15', null, 'PCS', '400', '0', '\0', '9.70', '3880.00', null, '25', null, null, null, null, null, null, null, null, null, null, '\0', '4', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fd9f8b4e0031', '4028817a33fc4e280133fd9f8b4e002f', null, null, null, 'JK1050317/12006', '', '明料糖缸配明料盖子\r\n缸身刻交叉麦穗花\r\n尺寸：10.5X14CM高\r\n1只/五层内盒     12只/五层大箱', null, null, null, '1/12', null, '2', null, 'PCS', '504', '0', '\0', '9.50', '4788.00', null, '42', null, null, null, null, null, null, null, null, null, null, '\0', '3', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fd9f8b4e0032', '4028817a33fc4e280133fd9f8b4e002f', null, null, null, 'JK1050316/12005', '', '明料糖缸配明料盖子\r\n缸身刻交叉麦穗花\r\n尺寸：15X15CM高\r\n1只/五层内盒      6只/五层大箱', null, null, null, '1/6', null, '2', null, 'PCS', '348', '0', '\0', '12.50', '4350.00', null, '58', null, null, null, null, null, null, null, null, null, null, '\0', '2', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fd9f8b4e0033', '4028817a33fc4e280133fd9f8b4e002f', null, null, null, 'JK103233/11301', '', '全明料糖缸刻钻石，描亮油\r\n尺寸：11X30.5CM高\r\n1只/五层内盒    12只/大箱', null, null, null, '1/12', null, '2', null, 'PCS', '408', '0', '\0', '18.00', '7344.00', null, '34', null, null, null, null, null, null, null, null, null, null, '\0', '1', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fdb370c00034', '4028817a33812ffd0133813f25940001', null, null, null, '9749', '', '怪虫小碗喷绿色，喷漆，喷珠光\r\n尺寸：18X9CM高\r\n4只/内盒             8只/大箱', null, null, null, '4/8', null, '7', null, 'PCS', '304', '0', '\0', '6.50', '1976.00', null, '38', null, null, null, null, null, null, null, null, null, null, '\0', '29', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fdb370cf0035', '4028817a33812ffd0133813f25940001', null, null, null, '9749', '', '怪虫小碗喷绿色，喷漆，喷珠光\r\n尺寸：18X9CM高\r\n4只/内盒             8只/大箱', null, null, null, '4/8', null, '7', null, 'PCS', '304', '0', '\0', '6.50', '1976.00', null, '38', null, null, null, null, null, null, null, null, null, null, '\0', '30', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fdb370df0036', '4028817a33812ffd0133813f25940001', null, null, null, '9749', '', '怪虫小碗喷绿色，喷漆，喷珠光\r\n尺寸：18X9CM高\r\n4只/内盒             8只/大箱', null, null, null, '4/8', null, '7', null, 'PCS', '304', '0', '\0', '6.50', '1976.00', null, '38', null, null, null, null, null, null, null, null, null, null, '\0', '31', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fde6504f0037', '4028817a33fc4e280133fd9f8b4e002f', null, null, null, 'JK1050201/12078', '', '全明料蛋糕罩配盘子,罩子上烤蒙砂白花纸\r\n盘子尺寸：16X13CM高\r\n罩子尺寸：15X11.5CM高\r\n全高：22CM  花纸我司供\r\n1套/保利龙垫/五层内盒\r\n6套/大箱  保利龙垫工厂供', null, null, null, '1/6', null, '2', null, 'PCS', '402', '0', '\0', '18.00', '7236.00', null, '67', null, null, null, null, null, null, null, null, null, null, '\0', '5', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fde6504f0038', '4028817a33fc4e280133fd9f8b4e002f', null, null, null, 'JK1050198/12860', '', '全明料酒杯，\r\n距口部1.5CM烤蒙砂白花纸\r\n尺寸：11X19CM高\r\n4只/五层内盒       16只/大箱\r\n花纸我司供', null, null, null, '4/16', null, '13', null, 'PCS', '400', '0', '\0', '6.50', '2600.00', null, '25', null, null, null, null, null, null, null, null, null, null, '\0', '7', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fde6504f0039', '4028817a33fc4e280133fd9f8b4e002f', null, null, null, 'JK169340/13076', '', '全明料蛋糕罩配盘子，罩子上烤蒙砂白花纸		\r\n尺寸：25X26CM高		\r\n1套/保利龙垫/五层内盒		\r\n2套/大箱	此款样品确认后方可生产大货	\r\n花纸我司供，保利龙垫工厂提供', null, null, null, '1/2', null, '2', null, 'SETS', '200', '0', '\0', '36.00', '7200.00', null, '100', null, null, null, null, null, null, null, null, null, null, '\0', '8', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fde6504f003a', '4028817a33fc4e280133fd9f8b4e002f', null, null, null, 'JK1400002/13077', '', '全明料竖棱酒壶，磨口抛光\r\n不可有碰口，棱要明显\r\n尺寸：10X24.5CM高\r\n1只/五层内盒   4只/大箱', null, null, null, '1/4', null, 'ff808081301885760130189e47ca0013', null, 'PCS', '1200', '0', '\0', '13.00', '15600.00', null, '300', null, null, null, null, null, null, null, null, null, null, '\0', '9', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fde6504f003b', '4028817a33fc4e280133fd9f8b4e002f', null, null, null, 'JK5100005-F/13079', '', '全明料竖棱香槟杯\r\n尺寸：5.5X24.5CM高\r\n4只/三层内盒     24只/大箱', null, null, null, '4/24', null, '15', null, 'PCS', '1200', '0', '\0', '10.00', '12000.00', null, '50', null, null, null, null, null, null, null, null, null, null, '\0', '11', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fde6504f003c', '4028817a33fc4e280133fd9f8b4e002f', null, null, null, 'JK1050195/12859', '', '全明料香槟杯\r\n距口部1.5CM烤蒙砂白花纸\r\n尺寸：8X21CM高\r\n4只/五层内盒       16只/大箱\r\n花纸我司供', null, null, null, '4/16', null, '13', null, 'PCS', '400', '0', '\0', '6.00', '2400.00', null, '25', null, null, null, null, null, null, null, null, null, null, '\0', '6', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fde6504f003d', '4028817a33fc4e280133fd9f8b4e002f', null, null, null, 'JK5100004/13078', '', '全明料直棱酒杯\r\n尺寸：9.5X18.5CM高\r\n4只/三层内盒      16只/大箱', null, null, null, '4/16', null, '15', null, 'PCS', '1200', '0', '\0', '8.80', '10560.00', null, '75', null, null, null, null, null, null, null, null, null, null, '\0', '10', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fde6504f003e', '4028817a33fc4e280133fd9f8b4e002f', null, null, null, 'JK5300006/13080', '', '全明料竖棱糖缸，盖子上带圆头\r\n尺寸：9X8CM高\r\n1只/三层内盒     48只/大箱', null, null, null, '1/48', null, '15', null, 'PCS', '1200', '0', '\0', '8.50', '10200.00', null, '25', null, null, null, null, null, null, null, null, null, null, '\0', '12', null);
INSERT INTO `contract_product_c` VALUES ('4028817a33fc4e280133fde6504f003f', '4028817a33fc4e280133fd9f8b4e002f', null, null, null, 'JK5300007/13081', '', '全明料竖棱糖缸，盖子上带圆头\r\n尺寸：9X12CM高\r\n1只/三层内盒     24只/大箱', null, null, null, '1/24', null, '15', null, 'PCS', '1200', '0', '\0', '9.80', '11760.00', null, '50', null, null, null, null, null, null, null, null, null, null, '\0', '13', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a693820002', '4028817a3420e78a013421a693730001', null, null, null, '4995', 'c7801815-993e-43f0-8ac5-d5d788f34e74.png', '全明料死模风灯，电镀花银喷紫色\r\n明料挺底，电镀喷色我司安排\r\n尺寸：11.5X20.3CM\r\n1只/五层内盒      12只/大箱\r\n白纸，瓦楞纸，气泡纸包裹\r\n1月30日送祁县瑞成电镀厂电镀', '44.00', '29.00', '50.00', '1/12', null, '4', null, 'PCS', '300', '300', '', '8.50', '2550.00', null, '25', '8.00', '6.00', null, '1.80', null, null, null, null, null, null, '\0', '3', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a693820003', '4028817a3420e78a013421a693730001', null, null, null, '4994', 'ae3e208e-8037-41dc-89d3-6727d1403c4c.png', '全明料死模风灯，电镀花银喷浅海蓝\r\n明料挺底,电镀喷色我司安排\r\n尺寸：11.5X20.3CM\r\n1只/五层内盒     12只/大箱\r\n白纸，瓦楞纸，汽泡纸包装\r\n1月30日送祁县瑞成厂电镀', '44.00', '29.00', '50.00', '1/12', null, '4', null, 'PCS', '300', '300', '', '8.50', '2550.00', null, '25', '8.00', '6.00', null, '1.80', null, null, null, null, null, null, '\0', '2', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a693820004', '4028817a3420e78a013421a693730001', null, null, null, '4996', '09b2983e-67b1-4f42-b6ec-0efa99b90cae.png', '全明料死模风灯，电镀花银喷浅绿色\r\n明料挺底，电镀喷色我司安排\r\n尺寸：11.5X30.5CM高\r\n1只/五层内盒      6只/大箱\r\n白纸，瓦楞纸，汽泡纸包裹\r\n1月30日送祁县瑞成电镀厂电镀', '44.00', '29.00', '38.00', '1/6', null, '4', null, 'PCS', '300', '300', '', '10.50', '3150.00', null, '50', '9.00', '7.00', null, '2.20', null, null, null, null, null, null, '\0', '4', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a693820005', '4028817a3420e78a013421a693730001', null, null, null, '5118', 'd2f2ab57-ca50-43ff-87fd-9b6b38d14adc.png', '全明料蛋糕盘+罩子	\r\n罩子上烤白金字母花纸（SWEETS)	\r\n盘子口径16.4CM	\r\n罩子尺寸：15X13CM  全高：26.7CM	\r\n1套/上下保利龙垫/五层内盒 4套/大箱	\r\n花纸我司供，保利龙垫工厂供', '42.00', '42.00', '27.00', '1/4', null, '2', null, 'SETS', '300', '300', '', '16.00', '4800.00', null, '75', '6.00', '4.00', null, '3.60', null, null, null, null, null, null, '\0', '14', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a693820006', '4028817a3420e78a013421a693730001', null, null, null, '4993', '49a9221c-aa5d-42a6-997c-9671c69ebb96.png', '全明料死模风灯，电镀花银喷浅绿色 	\r\n明料挺底，电镀喷色我司安排\r\n尺寸：11.5X20.3CM	\r\n1只/五层内盒      12只/大箱\r\n白纸，瓦楞纸，汽泡纸包裹\r\n1月30日送祁县瑞成电镀厂电镀', '44.00', '29.00', '50.00', '1/12', null, '4', null, 'PCS', '300', '300', '', '8.50', '2550.00', null, '25', '8.00', '6.00', null, '1.80', null, null, null, null, null, null, '\0', '1', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a693820007', '4028817a3420e78a013421a693730001', null, null, null, '5117', '94744a94-9215-425c-8d7c-e6c27b74d47a.png', '全明料蛋糕盘+罩子	\r\n罩上烤白金字母花纸（SWEETS)	\r\n罩子尺寸：15X13CM高	\r\n盘子尺寸：16.4X27CM高	\r\n1套/上下保利龙垫/五层内盒	\r\n4套/大箱	保利龙垫工厂提供\r\n花纸我司供', '42.00', '42.00', '37.50', '1/4', null, '2', null, 'SETS', '300', '300', '', '17.00', '5100.00', null, '75', '6.00', '4.00', null, '3.85', null, null, null, null, null, null, '\0', '13', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a693820008', '4028817a3420e78a013421a693730001', null, null, null, '5086', 'f9c8b767-01c1-47a1-816c-4203c229f765.png', '全明料冰花风灯，电镀花银喷绿色\r\n尺寸：12.5X20CM高\r\n1只/五层内盒    6只/五层大箱\r\n白纸，瓦楞纸，汽泡纸包裹', '56.00', '36.00', '24.00', '1/6', null, '4028817a33d4f8b40133d9989f5e0024', null, 'PCS', '300', '300', '', '13.00', '3900.00', null, '50', '7.00', '5.00', null, '2.50', null, null, null, null, null, null, '\0', '10', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a693820009', '4028817a3420e78a013421a693730001', null, null, null, '5190', 'b0d362a3-2044-4bb8-ad61-0d6228e94110.png', '全明料平光蛋糕罩配钻石盘子\r\n罩子上粘小鸟，小鸟和钻石盘我司供\r\n罩子尺寸：20X20.5CM高\r\n1套/上下保利龙盖/内盒\r\n4套/大箱\r\n保利龙垫工厂供', '57.00', '56.00', '29.00', '1/4', null, '1', null, 'SETS', '100', '100', '', '22.00', '2200.00', null, '25', '8.00', '6.00', null, '6.40', null, null, null, null, null, null, '\0', '16', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a69382000a', '4028817a3420e78a013421a693730001', null, null, null, '5190', 'de8f61ab-0ce5-4e66-862f-acc66140d77f.png', '全明料钻石蛋糕盘粘底座\r\n \r\n尺寸：23X11.5CM高\r\n安全包装送祁县宏艺厂', null, null, null, '1/4', null, '9', null, 'PCS', '100', '100', '', '8.50', '850.00', null, '25', null, null, null, null, null, null, null, null, null, null, '\0', '17', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a69382000b', '4028817a3420e78a013421a693730001', null, null, null, '5084', '4afac9ad-6f75-4186-95e2-0f3c992fd0a8.png', '全明料冰花风灯，电镀花银喷蓝色\r\n尺寸：10X17.5CM高\r\n1只/五层内盒    12只/五层大箱\r\n白纸，瓦楞纸，汽泡纸包裹', '46.00', '31.00', '42.00', '1/12', null, '4028817a33d4f8b40133d9989f5e0024', null, 'PCS', '300', '300', '', '11.50', '3450.00', null, '25', '7.00', '5.00', null, '2.05', null, null, null, null, null, null, '\0', '8', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a69382000c', '4028817a3420e78a013421a693730001', null, null, null, '5085', '11799ce4-7d8a-451b-8838-6b01f804b8ff.png', '全明料冰花风灯，电镀花银喷紫色\r\n尺寸：10X17.5CM高\r\n1只/五层内盒     12只/五层大箱\r\n白纸，瓦楞纸，汽泡纸包裹', '46.00', '31.00', '42.00', '1/12', null, '4028817a33d4f8b40133d9989f5e0024', null, 'PCS', '300', '300', '', '11.50', '3450.00', null, '25', '7.00', '5.00', null, '2.05', null, null, null, null, null, null, '\0', '9', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a69382000d', '4028817a3420e78a013421a693730001', null, null, null, '5144', '978f44fd-492c-4209-8b4a-6dd58539a14f.png', '全明料钻石蛋糕盘粘底座\r\n喷绿色，喷漆，喷珠光\r\n尺寸：23X11.5CM高\r\n1只/五层内盒      4只/大箱\r\n白纸，瓦楞纸，气泡纸包裹', '50.00', '26.00', '28.00', '1/4', null, '7', null, 'PCS', '100', '100', '', '11.00', '1100.00', null, '25', '5.50', '3.50', null, '2.10', null, null, null, null, null, null, '\0', '15', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a69382000e', '4028817a3420e78a013421a693730001', null, null, null, '4998', '4c8991c6-227e-4c31-bcf7-539fd002cd12.png', '全明料死模风灯，电镀花银喷紫色\r\n明料挺底,电镀喷色我司安排\r\n尺寸：11.5X30.5CM\r\n1只/五层内盒      6只/大箱\r\n白纸，瓦楞纸，气泡纸\r\n1月30日送祁县瑞成厂电镀', '44.00', '29.00', '38.00', '1/6', null, '4', null, 'PCS', '300', '300', '', '10.50', '3150.00', null, '50', '9.00', '7.00', null, '2.20', null, null, null, null, null, null, '\0', '6', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a69382000f', '4028817a3420e78a013421a693730001', null, null, null, '5088', '9926bf89-1345-4082-aeeb-a3f94d0dcc40.png', '全明料冰花风灯，电镀花银喷蓝色\r\n尺寸：12.5X20CM高\r\n1只/五层内盒     6只/五层大箱\r\n白纸，瓦楞纸，汽泡纸包裹', '56.00', '36.00', '24.00', '1/6', null, '4028817a33d4f8b40133d9989f5e0024', null, 'PCS', '300', '300', '', '13.00', '3900.00', null, '50', '7.00', '5.00', null, '2.50', null, null, null, null, null, null, '\0', '11', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a693820010', '4028817a3420e78a013421a693730001', null, null, null, '5089', '22a26221-2c14-4ea4-b972-ebe9df1a27ab.png', '全明料冰花风灯，电镀花银喷紫色\r\n尺寸：12.5X20CM高\r\n1只/五层内盒    6只/五层大箱\r\n白纸，瓦楞纸，气泡纸包裹', '56.00', '36.00', '24.00', '1/6', null, '4028817a33d4f8b40133d9989f5e0024', null, 'PCS', '300', '300', '', '13.00', '3900.00', null, '50', '7.00', '5.00', null, '2.50', null, null, null, null, null, null, '\0', '12', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a693920011', '4028817a3420e78a013421a693730001', null, null, null, '4997', 'f62db940-2432-4a7d-946c-22e2ba184d37.png', '全明料死模风灯，电镀花银喷浅海蓝\r\n明料挺底，电镀喷色我司安排\r\n尺寸：11.5X30.5CM\r\n1只/五层内盒      6只/大箱\r\n白纸，瓦楞纸，汽泡纸包裹\r\n1月30日送祁县瑞成电镀厂电镀', '44.00', '29.00', '38.00', '1/6', null, '4', null, 'PCS', '300', '300', '', '10.50', '3150.00', null, '50', '9.00', '7.00', null, '2.20', null, null, null, null, null, null, '\0', '5', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421a693920012', '4028817a3420e78a013421a693730001', null, null, null, '5083', '65fe2446-a833-483a-ad34-dc5da6a7e28a.png', '全明料冰花风灯，电镀花银喷绿色\r\n尺寸：10X17.5CM高\r\n1只/五层内盒     12只/五层大箱\r\n白纸，瓦楞纸，汽泡纸包装', '46.00', '31.00', '42.00', '1/12', null, '4028817a33d4f8b40133d9989f5e0024', null, 'PCS', '300', '300', '', '11.50', '3450.00', null, '25', '7.00', '5.00', null, '2.05', null, null, null, null, null, null, '\0', '7', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421d2e3fe0013', '4028817a3420e78a013421a693730001', null, null, null, '5336', '422bfb7c-ad4e-4098-8953-beca57d6259c.png', '全明料死模风灯，电镀花银喷绿色	\r\n 	\r\n尺寸：14.5X20CM高	\r\n1只/五层内盒      12只/大箱	\r\n1月30日送祁县瑞成电镀缠，电镀喷色我司安排\r\n白纸，瓦楞纸，气泡纸包裹', '54.00', '36.00', '49.00', '1/12', null, '4', null, 'PCS', '300', '300', '', '8.00', '2400.00', null, '25', '9.00', '7.00', null, '2.05', null, null, null, null, null, null, '\0', '20', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421d2e3fe0014', '4028817a3420e78a013421a693730001', null, null, null, '5331', 'c09ea297-bb5f-47a0-b8a0-0b4419f6e138.png', '全明料死模风灯，电镀花银喷绿色\r\n尺寸：17X23CM高\r\n1只/五层内盒      6只/大箱\r\n1月30日送祁县瑞成电镀厂，我司安排电镀\r\n白纸，瓦楞纸，气泡纸包裹', '66.00', '44.00', '29.00', '1/6', null, '4', null, 'PCS', '300', '300', '', '11.50', '3450.00', null, '50', '8.00', '6.00', null, '2.65', null, null, null, null, null, null, '\0', '19', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421d2e3fe0015', '4028817a3420e78a013421a693730001', null, null, null, '5190', 'aa3e7517-3227-41ff-b239-a5a6d5c00939.png', '机压小鸟,表面要光滑\r\n\r\n安全包装送祁县宏艺厂\r\n请提供一定余量，以备损耗', null, null, null, '1/4', null, '9', null, 'PCS', '100', '100', '', '2.40', '240.00', null, '25', null, null, null, null, null, null, null, null, null, null, '\0', '18', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421e2e3c10016', '4028817a3420e78a013421a693730001', null, null, null, '5400', 'f475d46e-733a-4220-8243-98ba76f09ddc.png', '全明料死模风灯，电镀花银喷蓝色\r\n \r\n尺寸：17X23CM高\r\n1只/五层内盒      6只/大箱\r\n电镀喷色我司安排\r\n1月30日送祁县瑞成电镀厂\r\n白纸，瓦楞纸，气泡纸包裹', '66.00', '44.00', '29.00', '1/6', null, '4', null, 'PCS', '300', '300', '', '11.50', '3450.00', null, '50', '8.00', '6.00', null, '2.65', null, null, null, null, null, null, '\0', '22', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421e2e3c10017', '4028817a3420e78a013421a693730001', null, null, null, '9749', '3d52357d-71bf-4ac1-b7f0-38b640a2d349.png', '怪虫小碗，喷绿色，喷漆，喷珠光\r\n\r\n尺寸:18X9CM高\r\n4只/内盒        8只/大箱\r\n白纸，瓦楞纸，气泡纸包裹', '39.00', '20.00', '20.00', '4/8', null, '7', null, 'PCS', '600', '600', '', '6.50', '3900.00', null, '75', '6.50', '4.50', null, '1.29', null, null, null, null, null, null, '\0', '28', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421e2e3c10018', '4028817a3420e78a013421a693730001', null, null, null, '8759', 'c5f0d6c6-275f-4fb4-b468-a9be38f85f02.png', '全明料糖缸带盖子\r\n尺寸：16.5X40CM高\r\n1只/上下保利龙垫/内盒 2只/大箱\r\n保利龙垫工厂供\r\n此数量出自订单C/3908/11', '44.00', '22.00', '45.00', '1/2', null, '2', null, 'PCS', '600', '600', '', '15.00', '9000.00', null, '300', '4.00', '2.00', null, '2.85', null, null, null, null, null, null, '\0', '27', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421e2e3c10019', '4028817a3420e78a013421a693730001', null, null, null, '8709', '2720f819-b111-4aeb-b5e8-abc262dc5a7b.png', '怪虫小碗，喷蓝色，喷漆，喷珠光\r\n \r\n尺寸：18X9CM高\r\n4只/内盒        8只/大箱\r\n白纸，瓦楞纸，气泡纸包裹', '39.00', '20.00', '20.00', '4/8', null, '7', null, 'PCS', '600', '600', '', '6.50', '3900.00', null, '75', '6.50', '4.50', null, '1.29', null, null, null, null, null, null, '\0', '26', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421e2e3c1001a', '4028817a3420e78a013421a693730001', null, null, null, '5337', 'c2ff4999-1ea3-479d-8859-3302bb0e9d77.png', '全明料死模风灯，电镀花银喷蓝色	\r\n	\r\n尺寸：14.5X20CM高	\r\n1只/五层内盒      12只/大箱	\r\n1月30日送祁县瑞成电镀厂，电镀喷色我司安排	\r\n白纸，瓦楞纸，气泡纸包裹', '54.00', '36.00', '49.00', '1/12', null, '4', null, 'PCS', '300', '300', '', '8.00', '2400.00', null, '25', '9.00', '7.00', null, '2.05', null, null, null, null, null, null, '\0', '21', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421e2e3c1001b', '4028817a3420e78a013421a693730001', null, null, null, '8708', 'cd89d279-e040-4647-a89f-59bfee1d6db9.png', '怪虫小碗，喷紫色，喷漆，喷珠光\r\n \r\n尺寸：18X9CM高\r\n4只/内盒        8只/大箱\r\n白纸，瓦楞纸，气泡纸', '39.00', '20.00', '20.00', '4/8', null, '7', null, 'PCS', '600', '600', '', '6.50', '3900.00', null, '75', '6.50', '4.50', null, '1.29', null, null, null, null, null, null, '\0', '25', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421e2e3c1001c', '4028817a3420e78a013421a693730001', null, null, null, '843MA', '6b4da997-ad8c-4101-90cb-1c554c356bb1.png', '全明料喇叭底糖缸，带盖子	\r\n盖子：10CMX10.3CM高 壁厚3MM	\r\n身子：11.2X31.7CM(全高） 底径12CM	\r\n壁厚不小于3MM  重量不低于950克	\r\n1只/上下保利龙垫/内盒   4只/大箱	\r\n保利龙垫工厂提供	\r\n此数量出自订单C/3908/11', '48.00', '47.00', '46.00', '1/4', null, '2', null, 'PCS', '600', '600', '', '16.00', '9600.00', null, '150', '6.00', '4.00', null, '3.29', null, null, null, null, null, null, '\0', '23', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421e2e3c1001d', '4028817a3420e78a013421a693730001', null, null, null, '844MA', '19dd24a2-4eb2-4273-a46a-229d28aeee85.png', '全明料糖缸带盖子\r\n盖子：9.3X13.3CM高 壁厚3MM\r\n身子：10.5X28.4CM(全高)\r\n底径：13CM   壁厚不小于3MM\r\n1只/上下保利龙垫/内盒 4只/大箱\r\n保利龙垫工厂供\r\n此单数量出自C/3908/11', '47.00', '46.00', '46.00', '1/4', null, '2', null, 'PCS', '600', '600', '', '16.00', '9600.00', null, '150', '6.00', '4.00', null, '3.29', null, null, null, null, null, null, '\0', '24', null);
INSERT INTO `contract_product_c` VALUES ('4028817a3420e78a013421e53b8c001e', '4028817a3420e78a013421a693730001', null, null, null, '9868', '6bf2fdf5-6d7e-4147-b40c-6eddf95abcd8.png', '全明料喇叭底糖缸配盖子\r\n尺寸：5-1/4\"X17\"H\r\n1只/上中下泡沫垫/内盒 2只/大箱\r\n保利龙垫工厂供\r\n从数量出自订单C/3908/11', '44.00', '22.00', '43.00', '1/2', null, '2', null, 'PCS', '600', '600', '', '16.00', '9600.00', null, '300', '4.00', '2.00', null, '3.15', null, null, null, null, null, null, '\0', '29', null);
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d15008d0047', '4028817a353b8d8e01353d15008d0046', null, null, null, '5089', '2c991b9e-a14b-4f37-a2ca-5e7d01cba021.jpg', '全明料冰花风灯，电镀花银喷紫色。\r\n尺寸:12.5*20 CM H\r\n1只/五层内盒        6只/五层大箱\r\n产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口。', '54.00', '36.00', '24.00', '1/6', null, '4028817a33d4f8b40133d9989f5e0024', null, 'PCS', '204', '204', '', '13.00', '2652.00', null, '34', '7.00', '5.00', null, '2.50', null, null, null, null, null, null, '\0', '3', null);
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d15008d0048', '4028817a353b8d8e01353d15008d0046', null, null, null, '5094', '7ae1ccaa-426b-4476-bc6a-28258d735fbd.jpg', '全明料冰花风灯，粘电镀底座  	\r\n尺寸：15.8X32CM高		\r\n1只/五层内盒     6只/五层大箱\r\n产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口。', '54.00', '36.00', '37.00', '1/6', null, '4028817a33d4f8b40133d9989f5e0024', null, 'PCS', '150', '150', '', '14.50', '2175.00', null, '25', '7.00', '5.00', null, '2.80', null, null, null, null, null, null, '\0', '7', null);
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d15008d0049', '4028817a353b8d8e01353d15008d0046', null, null, null, '5093', '796ec9af-d6bb-4511-a6c6-6d75bcc1f2e3.jpg', '全明料冰花风灯粘电镀底座， 	\r\n喷紫色，全喷，内电镀花银	\r\n尺寸：15.8X32CM高		\r\n1只/五层内盒     6只/五层大箱\r\n产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口。', '54.00', '36.00', '37.00', '1/6', null, '4028817a33d4f8b40133d9989f5e0024', null, 'PCS', '102', '102', '', '16.00', '1632.00', null, '17', '7.00', '5.00', null, '3.10', null, null, null, null, null, null, '\0', '6', null);
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d15008d004a', '4028817a353b8d8e01353d15008d0046', null, null, null, '5099', '9586c248-7796-4f99-b648-f913e65250f3.jpg', '全明料钻石蛋糕盘粘底座	\r\n喷蓝色，喷漆,喷珠光		\r\n尺寸：23X11.5CM高		\r\n1只/五层内盒      4只/大箱\r\n产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口。', '50.00', '26.00', '28.00', '1/4', null, '7', null, 'PCS', '152', '152', '', '11.00', '1672.00', null, '38', '5.50', '3.50', null, '2.10', null, null, null, null, null, null, '\0', '10', null);
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d15008d004b', '4028817a353b8d8e01353d15008d0046', null, null, null, '5098', 'bb0e509f-ccb0-44f4-8320-df18ff6ac880.jpg', '全明料钻石蛋糕盘粘底座	\r\n喷紫色，喷漆,喷珠光		\r\n尺寸：23X11.5CM高		\r\n1只/五层内盒      4只/大箱\r\n产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口。', '50.00', '26.00', '28.00', '1/4', null, '7', null, 'PCS', '152', '152', '', '11.00', '1672.00', null, '38', '5.50', '3.50', null, '2.10', null, null, null, null, null, null, '\0', '9', null);
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d15008d004c', '4028817a353b8d8e01353d15008d0046', null, null, null, '5090', '2ec05114-5c74-4211-b254-4d979218c05e.jpg', '全明料冰花风灯粘电镀底座， 	\r\n喷蓝色，全喷，内电镀花银	\r\n尺寸：15.8X32CM高		\r\n1只/五层内盒     6只/五层大箱\r\n产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口。', '54.00', '36.00', '37.00', '1/6', null, '4028817a33d4f8b40133d9989f5e0024', null, 'PCS', '102', '102', '', '16.00', '1632.00', null, '17', '7.00', '5.00', null, '3.10', null, null, null, null, null, null, '\0', '4', null);
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d15008d004d', '4028817a353b8d8e01353d15008d0046', null, null, null, '5088', '9488192b-fb0f-4aa5-9e29-86de71d05675.jpg', '全明料冰花风灯，电镀花银喷蓝色。\r\n尺寸:12.5*20 CM H\r\n1只/五层内盒        6只/五层大箱\r\n产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口。', '54.00', '36.00', '24.00', '1/6', null, '4028817a33d4f8b40133d9989f5e0024', null, 'PCS', '204', '204', '', '13.00', '2652.00', null, '34', '7.00', '5.00', null, '2.50', null, null, null, null, null, null, '\0', '2', null);
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d15008d004e', '4028817a353b8d8e01353d15008d0046', null, null, null, '5092', '289d254d-0f0d-4671-9376-d04cc36540d2.jpg', '全明料冰花风灯粘电镀底座， 	\r\n喷绿色，全喷，内电镀花银	\r\n尺寸：15.8X32CM高		\r\n1只/五层内盒     6只/五层大箱\r\n产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口。', '54.00', '36.00', '37.00', '1/6', null, '4028817a33d4f8b40133d9989f5e0024', null, 'PCS', '102', '102', '', '16.00', '1632.00', null, '17', '7.00', '5.00', null, '3.10', null, null, null, null, null, null, '\0', '5', null);
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d15008d004f', '4028817a353b8d8e01353d15008d0046', null, null, null, '5095', '01349ede-bef9-4168-a346-e109e3111773.jpg', '全明料冰花风灯，粘明料底座 	\r\n尺寸：15.8X32CM高		\r\n1只/五层内盒    6只/五层大箱\r\n产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口。', '54.00', '36.00', '37.00', '1/6', null, '4028817a33d4f8b40133d9989f5e0024', null, 'PCS', '150', '150', '', '14.00', '2100.00', null, '25', '7.00', '5.00', null, '2.80', null, null, null, null, null, null, '\0', '8', null);
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d15008d0050', '4028817a353b8d8e01353d15008d0046', null, null, null, '5086', '3c77a543-f2f2-4cf3-b173-8ef1d1a1f8be.jpg', '全明料冰花风灯，电镀花银喷绿色。\r\n尺寸:12.5*20 CM H\r\n1只/五层内盒        6只/五层大箱\r\n产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口。', '54.00', '36.00', '24.00', '1/6', null, '4028817a33d4f8b40133d9989f5e0024', null, 'PCS', '204', '204', '', '13.00', '2652.00', null, '34', '7.00', '5.00', null, '2.50', null, null, null, null, null, null, '\0', '1', null);
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d32350d0051', '4028817a353b8d8e01353d15008d0046', null, null, null, '5117', 'aec0cd7f-795e-4c5f-b8c5-532b6479c4be.jpg', '全明料蛋糕盘+罩子		\r\n罩上烤白金字母花纸（SWEETS)	\r\n罩子尺寸：15X13CM高		\r\n盘子尺寸：16.4X27CM高		\r\n1套/上下保利龙垫/五层内盒	\r\n4套/大箱			\r\n产品配套合适后用保丽龙垫包装，入内盒，大箱用胶带纸工字封口。\r\n花纸我司供，保利龙垫工厂供', '42.00', '42.00', '37.50', '1/4', null, '2', null, 'SETS', '100', '100', '', '17.00', '1700.00', null, '25', '6.00', '4.00', null, '3.85', null, null, null, null, null, null, '\0', '11', null);
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d32350d0052', '4028817a353b8d8e01353d15008d0046', null, null, null, '5191', '5a77aec3-1299-4b75-8ff4-5c7232d0a8c6.jpg', '机压小鸟,表面要光滑		\r\n安全包装送祁县宏艺厂		\r\n请提供一定余量，以备损耗', null, null, null, '1/2', null, '9', null, 'PCS', '100', '100', '', '2.40', '240.00', null, '50', null, null, null, null, null, null, null, null, null, null, '\0', '19', null);
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d32350d0053', '4028817a353b8d8e01353d15008d0046', null, null, null, '5144', '91d36961-2e9e-44cc-94ed-44ab4d6a24e4.jpg', '全明料钻石蛋糕盘粘底座	\r\n喷绿色，喷漆，喷珠光		\r\n尺寸：23X11.5CM高		\r\n1只/五层内盒      4只/大箱	\r\n产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口。', '50.00', '26.00', '28.00', '1/4', null, '7', null, 'PCS', '152', '152', '', '11.00', '1672.00', null, '38', '5.50', '3.50', null, '2.10', null, null, null, null, null, null, '\0', '13', null);
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d32350d0054', '4028817a353b8d8e01353d15008d0046', null, null, null, '5191', '06191cc8-a932-4f7a-a951-eabbd4336f13.jpg', '全明料钻石蛋糕盘粘底座	\r\n尺寸：29.5X11.5CM高		\r\n安全包装送祁县宏艺厂', null, null, null, '1/2', null, '9', null, 'PCS', '100', '100', '', '10.00', '1000.00', null, '50', null, null, null, null, null, null, null, null, null, null, '\0', '18', null);
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d32350d0055', '4028817a353b8d8e01353d15008d0046', null, null, null, '5118', 'b76467e5-21b5-4102-8085-f0d14189e257.jpg', '全明料蛋糕盘+罩子		\r\n罩子上烤白金字母花纸（SWEETS)	\r\n罩子尺寸：15X13CM 		\r\n盘子尺寸：16.4X16.5CM高\r\n全高：26.7CM		\r\n1套/上下保利龙垫/五层内盒   4套/大箱\r\n产品配套合适后用保丽龙垫包装，入内盒，大箱用胶带纸工字封口。	\r\n花纸我司供，保利龙垫工厂供', '42.00', '42.00', '27.00', '1/4', null, '2', null, 'SETS', '152', '152', '', '16.00', '2432.00', null, '38', '6.00', '4.00', null, '3.60', null, null, null, null, null, null, '\0', '12', null);
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d32350d0056', '4028817a353b8d8e01353d15008d0046', null, null, null, '5190', '9a6203d7-01b0-4ebe-bc08-d390b5ecd46a.jpg', '机压小鸟,表面要光滑		\r\n安全包装送祁县宏艺厂		\r\n请提供一定余量，以备损耗', null, null, null, '1/4', null, '9', null, 'PCS', '100', '100', '', '2.40', '240.00', null, '25', null, null, null, null, null, null, null, null, null, null, '\0', '16', null);
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d32350d0057', '4028817a353b8d8e01353d15008d0046', null, null, null, '5337', 'ecc411bc-b3ce-4175-9e96-17014661c601.jpg', '全明料死模风灯，电镀花银喷蓝色	\r\n尺寸：14.5X20CM高		\r\n1只/五层内盒      12只/大箱	\r\n电镀喷色我司安排\r\n产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口。', '54.00', '36.00', '49.00', '1/12', null, '4', null, 'PCS', '156', '156', '', '8.00', '1248.00', null, '13', '9.00', '7.00', null, '2.05', null, null, null, null, null, null, '\0', '22', null);
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d32350d0058', '4028817a353b8d8e01353d15008d0046', null, null, null, '5190', '9196fdca-db89-42a3-99d8-6a168479344c.jpg', '全明料钻石蛋糕盘粘底座	\r\n尺寸：23X11.5CM高		\r\n安全包装送祁县宏艺厂', null, null, null, '1/4', null, '9', null, 'PCS', '100', '100', '', '8.50', '850.00', null, '25', null, null, null, null, null, null, null, null, null, null, '\0', '15', null);
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d32350d0059', '4028817a353b8d8e01353d15008d0046', null, null, null, '5190', 'a3c28393-5d85-4ab5-8f9b-c10d8becf945.jpg', '全明料平光蛋糕罩配钻石盘子	\r\n罩子上粘小鸟，小鸟和钻石盘我司供\r\n罩子尺寸：20X20.5CM高		\r\n1套/上下保利龙盖/内盒		\r\n4套/大箱			\r\n保利龙垫工厂供\r\n产品用保丽龙包装后入内盒，大箱，大箱用胶带纸工字封口。', '57.00', '56.00', '29.00', '1/4', null, '1', null, 'PCS', '100', '100', '', '22.00', '2200.00', null, '25', '8.00', '6.00', null, '6.40', null, null, null, null, null, null, '\0', '14', null);
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d32350d005a', '4028817a353b8d8e01353d15008d0046', null, null, null, '5330', '75849bf7-f9a2-4f74-853e-baefef078d93.jpg', '全明料死模风灯，电镀花银喷紫色	\r\n尺寸：14.5X20CM高		\r\n1只/五层内盒      12只/大箱	\r\n电镀喷色我司安排\r\n产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口。', '54.00', '36.00', '49.00', '1/12', null, '4', null, 'PCS', '156', '156', '', '8.00', '1248.00', null, '13', '9.00', '7.00', null, '2.05', null, null, null, null, null, null, '\0', '20', null);
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d32350d005b', '4028817a353b8d8e01353d15008d0046', null, null, null, '5336', '5fe32315-0fb6-4a84-bb82-61b27ef3a8e3.jpg', '全明料死模风灯，电镀花银喷绿色	\r\n尺寸：14.5X20CM高		\r\n1只/五层内盒      12只/大箱	\r\n电镀喷色我司安排\r\n产品用白纸，瓦楞纸，气泡纸包裹后入内盒，大箱，大箱用胶带纸工字封口。', '54.00', '36.00', '49.00', '1/12', null, '4', null, 'PCS', '156', '156', '', '8.00', '1248.00', null, '13', '9.00', '7.00', null, '2.05', null, null, null, null, null, null, '\0', '21', null);
INSERT INTO `contract_product_c` VALUES ('4028817a353b8d8e01353d32353c005c', '4028817a353b8d8e01353d15008d0046', null, null, null, '5191', '135fbc3e-1c1d-4188-91e0-6a54cb0e2901.jpg', '全明料平光蛋糕罩配钻石盘子	\r\n罩子上粘小鸟，小鸟和钻石盘我司供\r\n罩子尺寸：26X36CM高		\r\n1套/上下保利龙盖/内盒		\r\n2套/大箱			\r\n保利龙垫工厂供\r\n产品用保丽龙包装后入内盒，大箱，大箱用胶带纸工字封口。', '71.00', '36.00', '34.00', '1/2', null, '1', null, 'PCS', '100', '100', '', '32.00', '3200.00', null, '50', '6.50', '4.50', null, '8.55', null, null, null, null, null, null, '\0', '17', null);

-- ----------------------------
-- Table structure for export_c
-- ----------------------------
DROP TABLE IF EXISTS `export_c`;
CREATE TABLE `export_c` (
  `EXPORT_ID` varchar(40) NOT NULL,
  `INPUT_DATE` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `CONTRACT_IDS` varchar(500) DEFAULT NULL,
  `CUSTOMER_CONTRACT` varchar(200) DEFAULT NULL,
  `LCNO` varchar(10) DEFAULT NULL,
  `CONSIGNEE` varchar(100) DEFAULT NULL,
  `MARKS` varchar(1000) DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  `SHIPMENT_PORT` varchar(100) DEFAULT NULL,
  `DESTINATION_PORT` varchar(100) DEFAULT NULL,
  `TRANSPORT_MODE` varchar(10) DEFAULT NULL,
  `PRICE_CONDITION` varchar(10) DEFAULT NULL,
  `STATE` int(11) DEFAULT NULL,
  `GROSS_WEIGHT` decimal(5,2) DEFAULT NULL,
  `NET_WEIGHT` decimal(5,2) DEFAULT NULL,
  `MEASUREMENT` decimal(8,2) DEFAULT NULL,
  `CREATE_BY` varchar(40) DEFAULT NULL,
  `CREATE_DEPT` varchar(40) DEFAULT NULL,
  `CREATE_TIME` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  PRIMARY KEY (`EXPORT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of export_c
-- ----------------------------
INSERT INTO `export_c` VALUES ('0b727c71-8d53-4b94-b1d1-18e925c50a01', '2016-12-28 23:29:31.134127', '4028817a33812ffd0133813f25940001,4028817a3420e78a013421a693730001,4028817a353b8d8e01353d15008d0046', 'C/3861/11 C/4040/11 C/4104/11', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-28 23:29:31.134127');
INSERT INTO `export_c` VALUES ('11f83852-8811-417f-8d12-e6bb9b03670a', '2016-12-28 23:29:31.191399', '4028817a3357462e01336d3a0be10014', '11JK1078', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-28 23:29:31.191399');
INSERT INTO `export_c` VALUES ('a81f5a3f-386d-4b31-a03f-e81a8fe28a1d', '1970-01-01 08:00:01.000000', '4028817a3357462e0133591b86ec0002,4028817a3357462e01336cc0877b0010', 'C/3817/11 11JK1080', 'L/C1', '11', '41', '51', '21', '31', 'AIR', 'FOB', null, null, null, null, null, null, '2016-12-28 23:29:31.030769');
INSERT INTO `export_c` VALUES ('d6df3c32-3ff1-4120-9072-7db7fa7a7221', '2016-12-28 23:29:31.304736', '4028817a3357462e01336cc0877b0010', '11JK1080', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-28 23:29:31.304736');

-- ----------------------------
-- Table structure for export_product_c
-- ----------------------------
DROP TABLE IF EXISTS `export_product_c`;
CREATE TABLE `export_product_c` (
  `EXPORT_PRODUCT_ID` varchar(40) NOT NULL,
  `EXPORT_ID` varchar(40) DEFAULT NULL,
  `FACTORY_ID` varchar(40) DEFAULT NULL,
  `FACTORY_NAME` varchar(50) DEFAULT NULL,
  `PRODUCT_NO` varchar(50) DEFAULT NULL,
  `PACKING_UNIT` varchar(10) DEFAULT NULL,
  `CNUMBER` int(11) DEFAULT NULL,
  `BOX_NUM` int(11) DEFAULT NULL,
  `GROSS_WEIGHT` decimal(8,2) DEFAULT NULL,
  `NET_WEIGHT` decimal(8,2) DEFAULT NULL,
  `SIZE_LENGTH` decimal(8,2) DEFAULT NULL,
  `SIZE_WIDTH` decimal(8,2) DEFAULT NULL,
  `SIZE_HEIGHT` decimal(8,2) DEFAULT NULL,
  `EX_PRICE` decimal(8,2) DEFAULT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  `TAX` decimal(8,2) DEFAULT NULL,
  `ORDER_NO` int(11) DEFAULT NULL,
  PRIMARY KEY (`EXPORT_PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of export_product_c
-- ----------------------------
INSERT INTO `export_product_c` VALUES ('0099fc20-c894-4313-98d8-7c5c23cf70a9', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5088', 'PCS', '300', '50', null, null, null, null, null, null, '13.00', null, null);
INSERT INTO `export_product_c` VALUES ('02aedd1f-61c7-4f1e-869a-f5d0e8f21777', 'd6df3c32-3ff1-4120-9072-7db7fa7a7221', '3', '会龙', 'JK1700011', 'SETS', '504', '21', null, null, null, null, null, null, '4.60', null, null);
INSERT INTO `export_product_c` VALUES ('02c05fa3-f4b5-4ee7-85ec-78b31f1c51b9', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '7', '天顺', '5098', 'PCS', '152', '38', null, null, null, null, null, null, '11.00', null, null);
INSERT INTO `export_product_c` VALUES ('043a081f-f06d-432e-a4be-51befcdcc7b9', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '7', '天顺', '8709', 'PCS', '600', '75', null, null, null, null, null, null, '6.50', null, null);
INSERT INTO `export_product_c` VALUES ('05de02b4-2045-4567-b59a-9d470ccfbb9e', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5095', 'PCS', '150', '25', null, null, null, null, null, null, '14.00', null, null);
INSERT INTO `export_product_c` VALUES ('0677599d-6078-4850-a296-7183060d84e4', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '7', '天顺', '5099', 'PCS', '152', '38', null, null, null, null, null, null, '11.00', null, null);
INSERT INTO `export_product_c` VALUES ('08608de7-61d9-413c-b110-1634ce742243', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5095', 'PCS', '300', '50', null, null, null, null, null, null, '14.00', null, null);
INSERT INTO `export_product_c` VALUES ('0a87fc28-9473-4607-8a90-314bcc9ed289', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4', '精艺', '5400', 'PCS', '300', '50', null, null, null, null, null, null, '11.50', null, null);
INSERT INTO `export_product_c` VALUES ('0f933c1b-4473-46d6-8b2d-8bea9e2d5c47', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4', '精艺', '5337', 'PCS', '300', '25', null, null, null, null, null, null, '8.00', null, null);
INSERT INTO `export_product_c` VALUES ('11f986e6-9d0c-4f75-937e-01414f22ae52', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4', '精艺', '5336', 'PCS', '300', '25', null, null, null, null, null, null, '8.00', null, null);
INSERT INTO `export_product_c` VALUES ('137024a5-042f-479f-8805-0a313fd7d852', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5084', 'PCS', '300', '25', null, null, null, null, null, null, '11.50', null, null);
INSERT INTO `export_product_c` VALUES ('168ab200-af6c-4f3d-9412-1ddc93f25fb2', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '9', '华艺', '5191', 'PCS', '100', '50', null, null, null, null, null, null, '2.40', null, null);
INSERT INTO `export_product_c` VALUES ('1757787a-6570-493f-a419-f859e78a9d92', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4', '精艺', '4995', 'PCS', '300', '25', null, null, null, null, null, null, '8.50', null, null);
INSERT INTO `export_product_c` VALUES ('184607a0-6fbd-4ad9-bf8e-bcf48bedaa31', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '7', '天顺', '5144', 'PCS', '152', '38', null, null, null, null, null, null, '11.00', null, null);
INSERT INTO `export_product_c` VALUES ('20cba979-cd73-40af-85f3-bac442991dcc', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5089', 'PCS', '204', '34', null, null, null, null, null, null, '13.00', null, null);
INSERT INTO `export_product_c` VALUES ('220892e3-6a9f-4699-9548-1f6423558447', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4', '精艺', '5400', 'PCS', '300', '50', null, null, null, null, null, null, '11.50', null, null);
INSERT INTO `export_product_c` VALUES ('255e4cac-cf47-44f7-8416-4d87b1437531', 'a81f5a3f-386d-4b31-a03f-e81a8fe28a1d', '2', '光华', '2977', 'PCS', '144', '72', null, null, null, '4.00', null, null, '17.00', null, '4');
INSERT INTO `export_product_c` VALUES ('263da453-a315-43c4-8694-21b9e39a14cf', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '7', '天顺', '8708', 'PCS', '600', '75', null, null, null, null, null, null, '6.50', null, null);
INSERT INTO `export_product_c` VALUES ('26715775-69ec-4de5-886c-bfc86f36d865', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '2', '光华', '844MA', 'PCS', '600', '150', null, null, null, null, null, null, '16.00', null, null);
INSERT INTO `export_product_c` VALUES ('27a5f393-b6a2-4ecb-8397-6bb1b4a8cc3a', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5092', 'PCS', '102', '17', null, null, null, null, null, null, '16.00', null, null);
INSERT INTO `export_product_c` VALUES ('28093552-1fda-4659-9555-366055f1f629', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '7', '天顺', '8709', 'PCS', '600', '75', null, null, null, null, null, null, '6.50', null, null);
INSERT INTO `export_product_c` VALUES ('2eae4747-1b05-4885-bcdc-b774368bdbb6', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4', '精艺', '4996', 'PCS', '300', '50', null, null, null, null, null, null, '10.50', null, null);
INSERT INTO `export_product_c` VALUES ('2f53f581-4b6b-4eec-ac32-121f6dd12d4c', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4', '精艺', '5330', 'PCS', '156', '13', null, null, null, null, null, null, '8.00', null, null);
INSERT INTO `export_product_c` VALUES ('31cf8191-1788-49f1-9220-60d7729bc0d7', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '2', '光华', '843MA', 'PCS', '600', '150', null, null, null, null, null, null, '16.00', null, null);
INSERT INTO `export_product_c` VALUES ('371d506c-5211-4cfb-b2ee-169843bcdab4', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '9', '华艺', '5191', 'PCS', '100', '50', null, null, null, null, null, null, '10.00', null, null);
INSERT INTO `export_product_c` VALUES ('38de303b-9f7d-46cf-8a45-c65c3c77476e', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '1', '宏艺', '5190', 'SETS', '100', '25', null, null, null, null, null, null, '22.00', null, null);
INSERT INTO `export_product_c` VALUES ('39edb875-7c09-4d40-ac72-37c3dbd04708', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '2', '光华', '5118', 'SETS', '152', '38', null, null, null, null, null, null, '16.00', null, null);
INSERT INTO `export_product_c` VALUES ('3af5a539-f965-4fc8-90bf-469ddd2d3c5d', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '2', '光华', '9868', 'PCS', '600', '300', null, null, null, null, null, null, '16.00', null, null);
INSERT INTO `export_product_c` VALUES ('3f73d099-df91-4c64-a151-5fdb91fbd451', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4', '精艺', '4998', 'PCS', '300', '50', null, null, null, null, null, null, '10.50', null, null);
INSERT INTO `export_product_c` VALUES ('416971e1-7e3c-4c0d-ac91-a48f8629b741', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '7', '天顺', '5144', 'PCS', '100', '25', null, null, null, null, null, null, '11.00', null, null);
INSERT INTO `export_product_c` VALUES ('465bc072-04da-482f-ac1d-34126c8c545e', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5086', 'PCS', '300', '50', null, null, null, null, null, null, '13.00', null, null);
INSERT INTO `export_product_c` VALUES ('467b7db4-5ca4-455a-9b34-178de835994f', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '2', '光华', '6998', 'SETS', '300', '75', null, null, null, null, null, null, '19.00', null, null);
INSERT INTO `export_product_c` VALUES ('4a3bed16-298c-47cb-adfb-ca29ad8a3254', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '7', '天顺', '9749', 'PCS', '304', '38', null, null, null, null, null, null, '6.50', null, null);
INSERT INTO `export_product_c` VALUES ('55fdd3be-ee68-46f8-ad47-52444674ed54', '11f83852-8811-417f-8d12-e6bb9b03670a', '7', '天顺', 'JK1014003', 'PCS', '1200', '75', null, null, null, null, null, null, '7.50', null, null);
INSERT INTO `export_product_c` VALUES ('589cb3a3-b791-47c6-9df2-302540ed7d4f', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '7', '天顺', '9749', 'PCS', '600', '75', null, null, null, null, null, null, '6.50', null, null);
INSERT INTO `export_product_c` VALUES ('5929fb70-070f-4742-87da-3ff948929fc7', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '2', '光华', '5189', 'PCS', '300', '75', null, null, null, null, null, null, '14.00', null, null);
INSERT INTO `export_product_c` VALUES ('59891f8e-47e6-430b-a79c-5fc2876de52a', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4', '精艺', '4997', 'PCS', '300', '50', null, null, null, null, null, null, '10.50', null, null);
INSERT INTO `export_product_c` VALUES ('5abbca1e-3888-4fbf-800f-1562950c0a44', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '2', '光华', '5117', 'SETS', '300', '75', null, null, null, null, null, null, '17.00', null, null);
INSERT INTO `export_product_c` VALUES ('5e75fb77-33d6-4702-9b21-398fbc32b514', '11f83852-8811-417f-8d12-e6bb9b03670a', '1', '宏艺', 'JK1014006', 'PCS', '1800', '75', null, null, null, null, null, null, '5.30', null, null);
INSERT INTO `export_product_c` VALUES ('64ec658c-9420-4985-bdf6-cd0399b652dc', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '2', '光华', '600MA', 'SETS', '600', '150', null, null, null, null, null, null, '18.00', null, null);
INSERT INTO `export_product_c` VALUES ('67062a63-3d47-4ad4-bd35-20657d4a4a19', 'a81f5a3f-386d-4b31-a03f-e81a8fe28a1d', '3', '会龙', 'JK1700011', 'SETS', '504', '21', null, null, null, null, '5.00', null, '4.60', null, '5');
INSERT INTO `export_product_c` VALUES ('699eb1b1-7695-46c1-839d-1e08732ea3f4', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '7', '天顺', '9749', 'PCS', '304', '38', null, null, null, null, null, null, '6.50', null, null);
INSERT INTO `export_product_c` VALUES ('6a20e4cf-41c8-4a2e-a9dc-208b8447edbb', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '2', '光华', '5117', 'SETS', '300', '75', null, null, null, null, null, null, '17.00', null, null);
INSERT INTO `export_product_c` VALUES ('6d18911f-86d3-4404-8003-89aff43b2d08', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '2', '光华', '603MA', 'SETS', '600', '300', null, null, null, null, null, null, '20.00', null, null);
INSERT INTO `export_product_c` VALUES ('6de3e60d-9429-4c09-92d0-2aea6e55bdcf', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '2', '光华', '602MA', 'SETS', '600', '300', null, null, null, null, null, null, '19.00', null, null);
INSERT INTO `export_product_c` VALUES ('74ce062d-df07-4e9a-96b7-101e24b79060', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5088', 'PCS', '204', '34', null, null, null, null, null, null, '13.00', null, null);
INSERT INTO `export_product_c` VALUES ('7abd8f74-437a-4f5e-ae03-d624544860cf', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '1', '宏艺', '5190', 'PCS', '100', '25', null, null, null, null, null, null, '22.00', null, null);
INSERT INTO `export_product_c` VALUES ('7bb7f525-f1cf-4fd7-8c15-b579b7b93db1', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5085', 'PCS', '300', '25', null, null, null, null, null, null, '11.50', null, null);
INSERT INTO `export_product_c` VALUES ('810988e9-8ba8-4822-9374-fea7b7cf8e8c', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '2', '光华', '844MA', 'PCS', '600', '150', null, null, null, null, null, null, '16.00', null, null);
INSERT INTO `export_product_c` VALUES ('8206cf71-f24e-44e9-ba59-26674669659e', 'a81f5a3f-386d-4b31-a03f-e81a8fe28a1d', '2', '光华', '2964', 'PCS', '144', '36', null, '2.00', null, null, null, null, '24.00', '8.00', '2');
INSERT INTO `export_product_c` VALUES ('85a3cd04-bec8-4465-94b5-76c4b26bdb1f', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5086', 'PCS', '204', '34', null, null, null, null, null, null, '13.00', null, null);
INSERT INTO `export_product_c` VALUES ('85b756a8-7590-4263-ba51-10c60f6ee8d1', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '2', '光华', '5118', 'SETS', '300', '75', null, null, null, null, null, null, '16.00', null, null);
INSERT INTO `export_product_c` VALUES ('87c6195e-4063-45d2-9257-9d4e531ff4c1', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4', '精艺', '5336', 'PCS', '300', '25', null, null, null, null, null, null, '8.00', null, null);
INSERT INTO `export_product_c` VALUES ('8b94964b-927f-4565-8977-02d424b9bafa', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '2', '光华', '8760', 'PCS', '600', '300', null, null, null, null, null, null, '16.00', null, null);
INSERT INTO `export_product_c` VALUES ('8e389ac0-a249-43b7-9dd8-59c103b6d965', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5094', 'PCS', '150', '25', null, null, null, null, null, null, '14.50', null, null);
INSERT INTO `export_product_c` VALUES ('90ca98b7-5583-4f83-81ff-ae2a3af15060', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '9', '华艺', '5190', 'PCS', '100', '25', null, null, null, null, null, null, '8.50', null, null);
INSERT INTO `export_product_c` VALUES ('92d926bd-54e2-4b33-bd92-0197a6a85f05', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5083', 'PCS', '300', '25', null, null, null, null, null, null, '11.50', null, null);
INSERT INTO `export_product_c` VALUES ('953be239-fbf8-40b8-936d-03ef2ecaa16d', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '2', '光华', '9868', 'PCS', '600', '300', null, null, null, null, null, null, '16.00', null, null);
INSERT INTO `export_product_c` VALUES ('975f7588-91e5-42b0-9b76-1baf843f5df5', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4', '精艺', '5337', 'PCS', '300', '25', null, null, null, null, null, null, '8.00', null, null);
INSERT INTO `export_product_c` VALUES ('a084197d-b88c-4c62-814b-428146280e2f', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '9', '华艺', '5190', 'PCS', '100', '25', null, null, null, null, null, null, '2.40', null, null);
INSERT INTO `export_product_c` VALUES ('a8dfcd10-977c-4934-b8e6-b053afd46381', 'a81f5a3f-386d-4b31-a03f-e81a8fe28a1d', '2', '光华', '2965', 'PCS', '144', '24', '33.00', '3.00', '4.00', null, null, '7.00', '17.00', '999.00', '1');
INSERT INTO `export_product_c` VALUES ('a9d6c16e-785f-4d6b-b879-df857f2760b7', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4', '精艺', '4994', 'PCS', '300', '25', null, null, null, null, null, null, '8.50', null, null);
INSERT INTO `export_product_c` VALUES ('ab4399dc-665c-44b0-a955-ee30a2a54a5b', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '7', '天顺', '9749', 'PCS', '304', '38', null, null, null, null, null, null, '6.50', null, null);
INSERT INTO `export_product_c` VALUES ('adf2af9d-6b68-455e-b447-322670fde26b', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4', '精艺', '4994', 'PCS', '300', '25', null, null, null, null, null, null, '8.50', null, null);
INSERT INTO `export_product_c` VALUES ('aef37a75-b856-4eb0-82e4-52815487e111', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4', '精艺', '5336', 'PCS', '156', '13', null, null, null, null, null, null, '8.00', null, null);
INSERT INTO `export_product_c` VALUES ('af726f64-1fcb-4d52-a6cc-5f4358b0b6c5', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '2', '光华', '843MA', 'PCS', '600', '150', null, null, null, null, null, null, '16.00', null, null);
INSERT INTO `export_product_c` VALUES ('b0af860f-98ff-4c78-9de4-4a8dc5f6ac11', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '2', '光华', '5118', 'SETS', '300', '75', null, null, null, null, null, null, '16.00', null, null);
INSERT INTO `export_product_c` VALUES ('b19f0e96-1195-44f6-a02d-6000a6fa1a5a', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '2', '光华', '8759', 'PCS', '600', '300', null, null, null, null, null, null, '15.00', null, null);
INSERT INTO `export_product_c` VALUES ('b477ef8a-3a94-49e8-830a-9c4b56080283', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4', '精艺', '5331', 'PCS', '300', '50', null, null, null, null, null, null, '11.50', null, null);
INSERT INTO `export_product_c` VALUES ('b9cb5297-a564-4112-a88f-fb2723e156e1', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4', '精艺', '4998', 'PCS', '300', '50', null, null, null, null, null, null, '10.50', null, null);
INSERT INTO `export_product_c` VALUES ('ba595324-440a-4104-a85d-b6d0f09e46e3', '11f83852-8811-417f-8d12-e6bb9b03670a', '1', '宏艺', 'JK1014001', 'PCS', '1000', '250', null, null, null, null, null, null, '16.50', null, null);
INSERT INTO `export_product_c` VALUES ('c26d6cd2-7f4a-47cd-b209-613d50bcdfbc', '11f83852-8811-417f-8d12-e6bb9b03670a', '1', '宏艺', 'JK1080766-3', 'PCS', '1800', '75', null, null, null, null, null, null, '5.30', null, null);
INSERT INTO `export_product_c` VALUES ('c4e9753c-a51b-4995-b01e-3e0a31702393', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5093', 'PCS', '102', '17', null, null, null, null, null, null, '16.00', null, null);
INSERT INTO `export_product_c` VALUES ('ca426bb1-6983-4573-a0aa-94424003c999', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '9', '华艺', '5190', 'PCS', '100', '25', null, null, null, null, null, null, '2.40', null, null);
INSERT INTO `export_product_c` VALUES ('cda82a57-eb55-46e2-bb22-ededb376f9af', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '2', '光华', '5117', 'SETS', '100', '25', null, null, null, null, null, null, '17.00', null, null);
INSERT INTO `export_product_c` VALUES ('d8fbe029-a3fb-4c12-8b1f-bbb7be42333b', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4', '精艺', '4997', 'PCS', '300', '50', null, null, null, null, null, null, '10.50', null, null);
INSERT INTO `export_product_c` VALUES ('da125df7-3345-4312-a715-76f48a22d9e7', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '7', '天顺', '5099', 'PCS', '300', '75', null, null, null, null, null, null, '11.00', null, null);
INSERT INTO `export_product_c` VALUES ('da62485a-a3a5-40a4-8db9-1da4c993953a', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '9', '华艺', '5190', 'PCS', '100', '25', null, null, null, null, null, null, '8.50', null, null);
INSERT INTO `export_product_c` VALUES ('db43077b-6b86-4dee-b2eb-b04761ffd67d', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4', '精艺', '5331', 'PCS', '300', '50', null, null, null, null, null, null, '11.50', null, null);
INSERT INTO `export_product_c` VALUES ('dd2dc3ea-3532-4b8a-8b03-85f9520524d8', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5094', 'PCS', '300', '50', null, null, null, null, null, null, '14.50', null, null);
INSERT INTO `export_product_c` VALUES ('de5f4d2d-d128-4e15-9d60-278e2b924591', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4', '精艺', '4993', 'PCS', '300', '25', null, null, null, null, null, null, '8.50', null, null);
INSERT INTO `export_product_c` VALUES ('e013b8ee-e9d1-41d9-9237-6da0036c41dd', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '2', '光华', '8759', 'PCS', '600', '300', null, null, null, null, null, null, '15.00', null, null);
INSERT INTO `export_product_c` VALUES ('e0f95727-ab55-48a6-9cfa-9b45c14d6a96', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5089', 'PCS', '300', '50', null, null, null, null, null, null, '13.00', null, null);
INSERT INTO `export_product_c` VALUES ('e2e7b1d5-4872-4c0c-9d19-53f972c06d16', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '1', '宏艺', '5191', 'PCS', '100', '50', null, null, null, null, null, null, '32.00', null, null);
INSERT INTO `export_product_c` VALUES ('ebe39aed-9af7-4141-b5a6-324e5d47e70c', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4', '精艺', '4996', 'PCS', '300', '50', null, null, null, null, null, null, '10.50', null, null);
INSERT INTO `export_product_c` VALUES ('ec30e94d-424f-4113-981d-7b37d8bd2941', '11f83852-8811-417f-8d12-e6bb9b03670a', '1', '宏艺', 'JK1014005', 'PCS', '1800', '75', null, null, null, null, null, null, '5.30', null, null);
INSERT INTO `export_product_c` VALUES ('ee689198-ff5d-456e-b5d4-57255cd813b8', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4', '精艺', '4995', 'PCS', '300', '25', null, null, null, null, null, null, '8.50', null, null);
INSERT INTO `export_product_c` VALUES ('f5fab8b1-46c4-4616-ba30-35268ea78ac1', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '2', '光华', '9869', 'PCS', '600', '300', null, null, null, null, null, null, '16.00', null, null);
INSERT INTO `export_product_c` VALUES ('f6bdd7bd-4ae7-48d0-b95e-709dfd8d6838', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4', '精艺', '5337', 'PCS', '156', '13', null, null, null, null, null, null, '8.00', null, null);
INSERT INTO `export_product_c` VALUES ('fbd73cf8-2481-4874-98d7-3a0b174efe06', 'a81f5a3f-386d-4b31-a03f-e81a8fe28a1d', '2', '光华', '2976', 'PCS', '144', '36', null, null, '3.00', null, null, null, '17.00', null, '3');
INSERT INTO `export_product_c` VALUES ('fdd6c6b0-f349-4ab4-a88a-1255cdc99143', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '7', '天顺', '8708', 'PCS', '600', '75', null, null, null, null, null, null, '6.50', null, null);
INSERT INTO `export_product_c` VALUES ('fe29a25d-5d7d-4c4f-ac56-bf43d18ba172', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5090', 'PCS', '102', '17', null, null, null, null, null, null, '16.00', null, null);
INSERT INTO `export_product_c` VALUES ('fea293f8-7b34-49a1-b494-33e6d265ae52', '0b727c71-8d53-4b94-b1d1-18e925c50a01', '4', '精艺', '4993', 'PCS', '300', '25', null, null, null, null, null, null, '8.50', null, null);

-- ----------------------------
-- Table structure for ext_cproduct_c
-- ----------------------------
DROP TABLE IF EXISTS `ext_cproduct_c`;
CREATE TABLE `ext_cproduct_c` (
  `EXT_CPRODUCT_ID` varchar(40) NOT NULL,
  `FACTORY_ID` varchar(40) DEFAULT NULL,
  `CONTRACT_PRODUCT_ID` varchar(40) DEFAULT NULL,
  `CTYPE` int(11) DEFAULT NULL,
  `PRODUCT_NAME` varchar(200) DEFAULT NULL,
  `PRODUCT_NO` varchar(50) DEFAULT NULL,
  `PRODUCT_IMAGE` varchar(200) DEFAULT NULL,
  `PRODUCT_DESC` varchar(600) DEFAULT NULL,
  `LOADING_RATE` varchar(30) DEFAULT NULL,
  `PACKING_UNIT` varchar(10) DEFAULT NULL,
  `CNUMBER` int(11) DEFAULT NULL,
  `OUT_NUMBER` int(11) DEFAULT NULL,
  `FINISHED` bit(1) DEFAULT NULL,
  `GROSS_WEIGHT` decimal(10,2) DEFAULT NULL,
  `NET_WEIGHT` decimal(10,2) DEFAULT NULL,
  `SIZE_LENGTH` decimal(10,2) DEFAULT NULL,
  `SIZE_WIDTH` decimal(10,2) DEFAULT NULL,
  `SIZE_HEIGHT` decimal(10,2) DEFAULT NULL,
  `PRODUCT_REQUEST` varchar(2000) DEFAULT NULL,
  `FACTORY_NAME` varchar(200) DEFAULT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  `AMOUNT` decimal(10,2) DEFAULT NULL,
  `CUNIT` varchar(10) DEFAULT NULL,
  `BOX_NUM` int(11) DEFAULT NULL,
  `EX_PRICE` decimal(10,2) DEFAULT NULL,
  `EX_UNIT` varchar(10) DEFAULT NULL,
  `NO_TAX` decimal(10,2) DEFAULT NULL,
  `TAX` decimal(10,2) DEFAULT NULL,
  `COST_PRICE` decimal(10,2) DEFAULT NULL,
  `COST_TAX` decimal(10,2) DEFAULT NULL,
  `ACCESSORIES` bit(1) DEFAULT NULL,
  `ORDER_NO` int(11) DEFAULT NULL,
  PRIMARY KEY (`EXT_CPRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ext_cproduct_c
-- ----------------------------
INSERT INTO `ext_cproduct_c` VALUES ('4028817a3357462e013359291f540007', '16', '4028817a3357462e0133591b86ec0003', '1', null, '2965', 'undefined', '彩盒，新菲林\r\n配全明料糖缸带盖子\r\n彩盒尺寸：20X20X41CM', null, 'PCS', '144', null, '\0', null, null, null, null, null, '1.彩盒要求350克面纸；\r\n2.工厂待用安全包装，待我司运至工厂；\r\n3.工厂免费提供1%余量，以防划伤，破损；\r\n4.交期:2011年11月05日。', null, '3.20', '460.80', null, null, null, null, null, null, null, null, '\0', '2');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a3357462e013359291f640008', '16', '4028817a3357462e0133591b86ec0004', '1', null, '2964', '', '彩盒，新菲林\r\n配全明料糖缸带盖子\r\n彩盒尺寸：22.5X22.5X48.5CM', null, 'PCS', '144', null, '\0', null, null, null, null, null, '1.彩盒要求350克面纸；\r\n2.工厂待用安全包装，待我司运至工厂；\r\n3.工厂免费提供1%余量，以防划伤，破损；\r\n4.交期:2011年11月05日。', null, '4.00', '576.00', null, null, null, null, null, null, null, null, '\0', '1');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a3357462e013359291f640009', '16', '4028817a3357462e0133592355750006', '1', null, '2976', 'undefined', '彩盒，新菲林\r\n配明料糖缸带盖子\r\n彩盒尺寸：25.7X25.7X35.7CM', null, 'PCS', '144', null, '\0', null, null, null, null, null, '1.彩盒要求350克面纸；\r\n2.工厂待用安全包装，待我司运至工厂；\r\n3.工厂免费提供1%余量，以防划伤，破损；\r\n4.交期:2011年11月05日。', null, '3.90', '561.60', null, null, null, null, null, null, null, null, '\0', '4');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a3357462e013359291f64000a', '16', '4028817a3357462e0133592355750006', '2', null, '2976', 'undefined', '彩盒，新菲林\r\n配全明料糖缸带盖子\r\n彩盒尺寸：21.5X21.5X41CM', null, 'PCS', '144', null, '\0', null, null, null, null, null, '1.彩盒要求350克面纸；\r\n2.工厂待用安全包装，待我司运至工厂；\r\n3.工厂免费提供1%余量，以防划伤，破损；\r\n4.交期:2011年11月05日。', null, '3.30', '475.20', null, null, null, null, null, null, null, null, '\0', '3');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33812ffd0133820c0a460028', '19', '4028817a33812ffd013382048ff80027', '2', null, '20-37-266/JK1050164', '73be2c8a-b961-4ae9-899a-2d259ecd152b.png', '蒙砂白花纸\r\n配全明料蛋糕罩\r\n\r\n送祁县宏艺厂', null, 'PCS', '1200', null, '\0', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年12月05日；', null, '0.40', '480.00', null, null, null, null, null, null, null, null, '\0', '3');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33812ffd0133820c0a460029', '19', '4028817a33812ffd013382048ff80026', '2', null, '20-37-265/JK1050163', '1af851ab-98ff-4227-ba39-1175dca33c6f.png', '蒙砂白花纸\r\n配全明料蛋糕罩\r\n\r\n送祁县宏艺厂', null, 'PCS', '1200', null, '\0', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年12月05日；', null, '0.38', '456.00', null, null, null, null, null, null, null, null, '\0', '2');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33812ffd0133820c0a46002a', '19', '4028817a33812ffd013382048ff80025', '2', null, '20-37-264/JK1051087', 'bdf6ff59-ab4c-4218-a554-361ec409a04f.png', '蒙砂白花纸\r\n配全明料蛋糕罩\r\n\r\n送祁县宏艺厂', null, 'PCS', '1200', null, '\0', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年12月05日；', null, '0.35', '420.00', null, null, null, null, null, null, null, null, '\0', '1');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33d4f8b40133d994c45e0021', '19', '4028817a33d4f8b40133d9878e880014', '2', null, 'JK169340/13076', 'undefined', '蒙砂白花纸\r\n烤在蛋糕罩上\r\n送祁县光华厂', null, 'PCS', '464', null, '\0', null, null, null, null, null, '1.产品的颜色、造型、尺寸、务必同我司提供样稿一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年11月20日。', null, '1.02', '473.28', null, null, null, null, null, null, null, null, '\0', '2');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33d4f8b40133d994c45e0022', '19', '4028817a33d4f8b40133d9878e880016', '2', null, 'JK1050201/12078', '', '蒙砂白花纸\r\n烤在蛋糕罩上\r\n送祁县光华厂', null, 'PCS', '204', null, '\0', null, null, null, null, null, '1.产品的颜色、造型、尺寸、务必同我司提供的样稿一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年11月20日送指定工厂。', null, '0.80', '163.20', null, null, null, null, null, null, null, null, '\0', '1');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33ecdbf70133edfc84d40001', '19', '4028817a3357462e01336d3a0be10018', '2', null, 'JK1014005', '94d2d773-24b6-412e-b0e3-0fc9dddf0955.png', '低温鱼花纸\r\n明料低口杯\r\n祁县宏艺厂', null, 'PCS', '1800', null, '\0', null, null, null, null, null, '1.产品的颜色、造型、尺寸、务必同提供的样品一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年12月10；', null, '1.20', '2160.00', null, null, null, null, null, null, null, null, '\0', '4');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33ecdbf70133edfc84e40002', '19', '4028817a3357462e01336d3a0be10019', '2', null, 'JK1080766-3', '29bb909d-d527-475d-bfbe-e5e05a02349c.png', '套3白花纸\r\n\r\n送祁县宏艺厂', null, 'SETS', '600', null, '\0', null, null, null, null, null, '1.产品的颜色、造型、尺寸、务必同提供的样品一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年12月10；', null, '0.60', '360.00', null, null, null, null, null, null, null, null, '\0', '1');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33ecdbf70133edfc84e40003', '19', '4028817a3357462e01336d3a0be10017', '2', null, 'JK1014006', '7be85008-7652-4995-aaca-3ade8405eca9.png', '套6彩色花纸\r\n明料低口杯\r\n祁县宏艺厂', null, 'SETS', '300', null, '\0', null, null, null, null, null, '1.产品的颜色、造型、尺寸、务必同提供的样品一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年12月10；', null, '9.00', '2700.00', null, null, null, null, null, null, null, null, '\0', '5');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33ecdbf70133edfc84e40004', '19', '4028817a3357462e01336d3a0be10016', '2', null, 'JK1014001', '7a3d341f-f473-44ce-9bd4-c7f2b87343ca.png', '低温鱼花纸\r\n明料大碗\r\n送祁县宏艺厂', null, 'PCS', '1000', null, '\0', null, null, null, null, null, '1.产品的颜色、造型、尺寸、务必同提供的样品一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年12月10；', null, '2.40', '2400.00', null, null, null, null, null, null, null, null, '\0', '2');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33ecdbf70133edfc84e40005', '19', '4028817a3357462e01336d3a0be10015', '2', null, 'JK1014003', '73980c53-44f6-4232-8c04-9d08a66eeccb.png', '低温鱼花纸\r\n明料盘子\r\n\r\n送祁县天顺厂', null, 'PCS', '1200', null, '\0', null, null, null, null, null, '1.产品的颜色、造型、尺寸、务必同提供的样品一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年12月10；', null, '3.80', '4560.00', null, null, null, null, null, null, null, null, '\0', '3');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33fc4e280133fcdff5490011', '19', '4028817a33fc4e280133fcdb13f40010', '2', null, 'JK046/JK1050201', 'undefined', '蒙砂白花纸\r\n烤在蛋糕罩子上\r\n送祁县光华厂', null, 'PCS', '600', null, '\0', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年11月15日；', null, '0.80', '480.00', null, null, null, null, null, null, null, null, '\0', '3');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33fc4e280133fcdff5490012', '20', '4028817a33d4f8b40133d9bea39b0032', '4', null, 'JK1050807/JK033', 'undefined', '套6全明料酒杯\r\n杯碗电镀渐变色，挺底电镀\r\n尺寸：8X24CM高', null, 'SETS', '300', null, '\0', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2011年12月15日/工厂。                          没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '21.00', '6300.00', null, null, null, null, null, null, null, null, '\0', '2');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33fc4e280133fcdff5490013', '20', '4028817a33d4f8b40133d9bea39b0030', '4', null, 'JK1050806/JK032', '', '套6全明料香槟杯\r\n杯碗电镀渐变色，挺底电镀\r\n尺寸：5.7X25CM高', null, 'SETS', '320', null, '\0', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2011年12月15日/工厂。                          没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '21.00', '6720.00', null, null, null, null, null, null, null, null, '\0', '1');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33fc4e280133fd906b0d0029', '19', '4028817a33fc4e280133fd81e7d70027', '2', null, 'JK1040009/141760', 'undefined', '白色字母花纸 \r\n送祁县宏艺厂', null, 'PCS', '300', null, '\0', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年11月25日；', null, '0.90', '270.00', null, null, null, null, null, null, null, null, '\0', '3');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33fc4e280133fd906b0d002a', '19', '4028817a33fc4e280133fd81e7d7001f', '2', null, 'J859102682/113860', '', '白色字母花纸\r\nSTORAGE ONLY\r\n祁县宏艺厂', null, 'PCS', '300', null, '\0', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年11月25日；', null, '0.40', '120.00', null, null, null, null, null, null, null, null, '\0', '1');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33fc4e280133fd906b0d002b', '19', '4028817a33fc4e280133fd81e7d70026', '2', null, 'JK10501218/160380', 'undefined', '白色字母花纸 \r\n送祁县宏艺厂', null, 'PCS', '600', null, '\0', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年11月25日；', null, '0.40', '240.00', null, null, null, null, null, null, null, null, '\0', '4');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33fc4e280133fd906b0d002c', '19', '4028817a33fc4e280133fd81e7d70021', '2', null, '123540', 'undefined', '白色字母花纸(HIGH TEA)\r\n字体：ENGLISH SCRIPT\r\n尺寸：18X5.5CM\r\n祁县光华厂', null, 'PCS', '100', null, '\0', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年11月25日；', null, '0.30', '30.00', null, null, null, null, null, null, null, null, '\0', '5');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33fc4e280133fd906b0d002d', '19', '4028817a33fc4e280133fd81e7d70022', '2', null, 'JK1052446/158080', 'undefined', '白色字母花纸\r\n\r\n \r\n祁县会龙厂', null, 'PCS', '702', null, '\0', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年11月25日；', null, '0.25', '175.50', null, null, null, null, null, null, null, null, '\0', '2');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33fc4e280133fd906b0d002e', '19', '4028817a33fc4e280133fd81e7d7001e', '2', null, '169280', 'undefined', '白色字母花纸(HIGH TEA)\r\n字体：ENGLISH SCRIPT\r\n尺寸：18X5.5CM\r\n祁县光华厂', null, 'PCS', '100', null, '\0', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年11月25日；', null, '0.30', '30.00', null, null, null, null, null, null, null, null, '\0', '6');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33fc4e280133fded2e6d0040', '19', '4028817a33fc4e280133fde6504f0039', '2', null, 'JK169340/13076', 'undefined', '蒙砂白花纸\r\n\"烤在蛋糕罩子上(25X26CM)\r\n\"\r\n祁县光华厂', null, 'PCS', '200', null, '\0', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年11月20日', null, '1.02', '204.00', null, null, null, null, null, null, null, null, '\0', '4');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33fc4e280133fded2e6d0041', '19', '4028817a33fc4e280133fde6504f0038', '2', null, 'JK1050198/12860', 'undefined', '蒙砂白花纸\r\n烤在红酒杯（11X19CM)上\r\n送平遥鸿艺', null, 'PCS', '400', null, '\0', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年11月20日', null, '0.49', '196.00', null, null, null, null, null, null, null, null, '\0', '3');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33fc4e280133fded2e6d0042', '19', '4028817a33fc4e280133fde6504f003c', '2', null, 'JK1050195/12859', 'undefined', '蒙砂白花纸\r\n烤在香槟杯(8X21CM)上\r\n送平遥鸿艺', null, 'PCS', '400', null, '\0', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年11月20日', null, '0.40', '160.00', null, null, null, null, null, null, null, null, '\0', '2');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a33fc4e280133fded2e6d0043', '19', '4028817a33fc4e280133fde6504f0037', '2', null, 'JK1050201/12078', '', '蒙砂白花纸\r\n烤在蛋糕罩子上\r\n祁县光华厂', null, 'PCS', '402', null, '\0', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年11月20日；', null, '0.80', '321.60', null, null, null, null, null, null, null, null, '\0', '1');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a343a5c9101343a6fd3200001', '22', '4028817a33812ffd0133816aacd40019', '4', null, '4998', 'undefined', '全明料死模风灯 ，电镀花银喷紫色\r\n尺寸：11.5X30.5CM', null, 'PCS', '300', null, '\0', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年1月10日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '1.70', '510.00', null, null, null, null, null, null, null, null, '\0', '6');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a343a5c9101343a6fd35f0002', '19', '4028817a33812ffd0133816aacd40017', '2', null, '5117', 'undefined', '白金字母花纸\r\nSWEETS\r\n送祁县光华厂', null, 'PCS', '300', null, '\0', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年11月30日；', null, '3.00', '900.00', null, null, null, null, null, null, null, null, '\0', '12');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a343a5c9101343a6fd35f0003', '22', '4028817a33812ffd0133813f25a30002', '4', null, '4993', '', '全明料死模风灯，电镀花银喷绿色\r\n尺寸：11.5X20.3CM\r\n毛坯1月25日送', null, 'PCS', '300', null, '\0', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年1月10日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '1.70', '510.00', null, null, null, null, null, null, null, null, '\0', '1');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a343a5c9101343a6fd35f0004', '22', '4028817a33812ffd0133816aacd40018', '4', null, '5400', 'undefined', '全明料死模风灯，电镀花银喷蓝色\r\n尺寸：17X23CM高', null, 'PCS', '300', null, '\0', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年1月10日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '3.50', '1050.00', null, null, null, null, null, null, null, null, '\0', '10');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a343a5c9101343a6fd35f0005', '22', '4028817a33812ffd0133816aacd4000d', '4', null, '4996', 'undefined', '全明料死模风灯，电镀花银喷绿色\r\n尺寸：11.5X30.5CM高', null, 'PCS', '300', null, '\0', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年1月10日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '1.70', '510.00', null, null, null, null, null, null, null, null, '\0', '4');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a343a5c9101343a6fd35f0006', '22', '4028817a33812ffd0133816aacd40014', '4', null, '5336', 'undefined', '全明料死模风灯，电镀花银喷绿色\r\n尺寸：14.5X20CM高', null, 'PCS', '300', null, '\0', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年1月10日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '2.00', '600.00', null, null, null, null, null, null, null, null, '\0', '8');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a343a5c9101343a6fd35f0007', '22', '4028817a33812ffd0133813f25a30003', '4', null, '4994', 'undefined', '全明料死模风灯，电镀花银喷蓝色\r\n尺寸：11.5X20.3CM高', null, 'PCS', '300', null, '\0', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年1月10日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '1.70', '510.00', null, null, null, null, null, null, null, null, '\0', '2');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a343a5c9101343a6fd35f0008', '20', '4028817a33812ffd0133816aacd40011', '4', null, '6998', 'undefined', '全明料蛋糕盘，盘沿电镀\r\n尺寸：6-1/2\"X12-1/2\"高', null, 'PCS', '300', null, '\0', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年1月10日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '6.00', '1800.00', null, null, null, null, null, null, null, null, '\0', '11');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a343a5c9101343a6fd35f0009', '22', '4028817a33812ffd0133816aacd4000c', '4', null, '4997', 'undefined', '全明料死模风灯，电镀花银喷蓝色\r\n尺寸：11.5X30.5CM高', null, 'PCS', '300', null, '\0', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年1月10日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '1.70', '510.00', null, null, null, null, null, null, null, null, '\0', '5');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a343a5c9101343a6fd35f000a', '19', '4028817a33812ffd0133816aacd40012', '2', null, '5118', 'undefined', '白金字母花纸\r\nSWEETS\r\n送祁县光华厂', null, 'PCS', '600', null, '\0', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2011年11月30日；', null, '3.00', '1800.00', null, null, null, null, null, null, null, null, '\0', '13');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a343a5c9101343a6fd35f000b', '22', '4028817a33812ffd0133816aacd40015', '4', null, '5337', 'undefined', '全明料死模风灯，电镀花银喷蓝色\r\n尺寸：14.5X20CM高', null, 'PCS', '300', null, '\0', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年1月10日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '2.00', '600.00', null, null, null, null, null, null, null, null, '\0', '9');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a343a5c9101343a6fd35f000c', '22', '4028817a33812ffd0133816aacc40009', '4', null, '5331', 'undefined', '全明料死模风灯，电镀花银喷绿色\r\n尺寸：17X23CM高', null, 'PCS', '300', null, '\0', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年1月10日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '3.50', '1050.00', null, null, null, null, null, null, null, null, '\0', '7');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a343a5c9101343a6fd35f000d', '22', '4028817a33812ffd0133813f25a30004', '4', null, '4995', 'undefined', '全明料死模风灯，电镀花银喷紫色\r\n尺寸：11.5X20.3CM', null, 'PCS', '300', null, '\0', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年1月10日/工厂。\r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '1.70', '510.00', null, null, null, null, null, null, null, null, '\0', '3');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353cad7b730023', '19', '4028817a3420e78a013421a693820007', '2', null, '5117', 'undefined', '白金字母花纸\r\nSWEETS\r\n送祁县光华厂', null, 'PCS', '300', null, '\0', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年1月15日。', null, '3.00', '900.00', null, null, null, null, null, null, null, null, '\0', '11');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353cad7b730024', '4028817a33ecdbf70133ee202e49000b', '4028817a3420e78a013421e2e3c1001a', '4', null, '5337', 'e877a4e2-2e48-4b06-91a8-3fb64f150a0f.jpg', '全明料死模风灯，电镀花银喷蓝色			\r\n尺寸：14.5X20CM高			\r\n1只/五层内盒      12只/大箱			\r\n毛坯1月30日送', null, 'PCS', '300', null, '\0', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '3.00', '900.00', null, null, null, null, null, null, null, null, '\0', '9');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353cad7b730027', '4028817a33ecdbf70133ee202e49000b', '4028817a3420e78a013421a693820002', '4', null, '4995', 'b232e729-a02f-48b2-987b-2c6311827816.jpg', '全明料死模风灯，电镀花银喷浅紫色\r\n明料挺底			\r\n尺寸：11.5X20.3CM		\r\n1只/五层内盒     12只/大箱	\r\n毛坯1月30日送', null, 'PCS', '300', null, '\0', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年2月15日/工厂。毛坯送至祁县瑞成玻璃镀膜厂。 \r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '1.70', '510.00', null, null, null, null, null, null, null, null, '\0', '3');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353cad7b730029', '4028817a33ecdbf70133ee202e49000b', '4028817a3420e78a013421a693820004', '4', null, '4996', '987692c0-6e47-4117-b6c8-3dbbeaca1b0c.jpg', '全明料死模风灯，电镀花银喷浅绿色\r\n明料挺底			\r\n尺寸：11.5X30.5CM高		\r\n1只/五层内盒      6只/大箱	\r\n毛坯1月30日送', null, 'PCS', '300', null, '\0', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年2月15日/工厂。毛坯送至祁县瑞成玻璃镀膜厂。 \r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '1.70', '510.00', null, null, null, null, null, null, null, null, '\0', '4');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353cad7b73002a', '4028817a33ecdbf70133ee202e49000b', '4028817a3420e78a013421a693820006', '4', null, '4993', 'a803fa9e-dda1-476a-a822-a51b226aca39.jpg', '全明料死模风灯，电镀花银喷浅绿色 \r\n明料挺底			\r\n尺寸：11.5X20.3CM		\r\n1只/五层内盒      12只/大箱	\r\n毛坯1月30日送', null, 'PCS', '300', null, '\0', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '1.70', '510.00', null, null, null, null, null, null, null, null, '\0', '1');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353cad7b73002b', '4028817a33ecdbf70133ee202e49000b', '4028817a3420e78a013421d2e3fe0014', '4', null, '5331', '51902cb9-1650-480b-8373-2da4c3f2338b.jpg', '全明料死模风灯，电镀花银喷绿色			\r\n尺寸：17X23CM高			\r\n1只/五层内盒      6只/大箱			\r\n毛坯1月30日送', null, 'PCS', '300', null, '\0', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '3.50', '1050.00', null, null, null, null, null, null, null, null, '\0', '7');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353cad7b73002d', '4028817a33ecdbf70133ee202e49000b', '4028817a3420e78a013421a693820003', '4', null, '4994', '05b37ddc-8904-4df3-8167-b98129c600de.jpg', '全明料死模风灯，电镀花银喷浅蓝色\r\n明料挺底			\r\n尺寸：11.5X20.3CM		\r\n1只/五层内盒     12只/大箱	\r\n毛坯1月30日送', null, 'PCS', '300', null, '\0', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年2月15日/工厂。毛坯送至祁县瑞成玻璃镀膜厂。 \r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '1.70', '510.00', null, null, null, null, null, null, null, null, '\0', '2');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353cadeab80031', '4028817a33ecdbf70133ee202e49000b', '4028817a3420e78a013421a693920011', '4', null, '4997', '7dbc495e-a12c-4eec-9975-c93c1b3f4297.jpg', '全明料死模风灯，电镀花银喷浅蓝色\r\n明料挺底			\r\n尺寸：11.5X30.5CM高		\r\n1只/五层内盒      6只/大箱	\r\n毛坯1月30日送', null, 'PCS', '300', null, '\0', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '1.70', '510.00', null, null, null, null, null, null, null, null, '\0', '5');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353cadeab80037', '19', '4028817a3420e78a013421a693820005', '2', null, '5118', 'undefined', '白金字母花纸\r\nSWEETS\r\n送祁县光华厂', null, 'PCS', '300', null, '\0', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年1月15日。', null, '3.00', '900.00', null, null, null, null, null, null, null, null, '\0', '12');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353cadec6d003a', '4028817a33ecdbf70133ee202e49000b', '4028817a3420e78a013421d2e3fe0013', '4', null, '5336', 'c8350cd2-47ae-4054-ad81-70004fe4eb44.jpg', '全明料死模风灯，电镀花银喷绿色			\r\n 尺寸：14.5X20CM高			\r\n1只/五层内盒      12只/大箱			\r\n毛坯1月30日送', null, 'PCS', '300', null, '\0', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '3.00', '900.00', null, null, null, null, null, null, null, null, '\0', '8');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353cadec6d0042', '4028817a33ecdbf70133ee202e49000b', '4028817a3420e78a013421a69382000e', '4', null, '4998', '44fc2f77-af8a-42d3-8d9b-fa2bafa8f47a.jpg', '全明料死模风灯，电镀花银喷浅紫色\r\n明料挺底			\r\n尺寸：11.5X30.5CM高		\r\n1只/五层内盒      6只/大箱	\r\n毛坯1月30日送', null, 'PCS', '300', null, '\0', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年2月15日/工厂。毛坯送至祁县瑞成玻璃镀膜厂。 \r\n       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '1.70', '510.00', null, null, null, null, null, null, null, null, '\0', '6');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353cadec6d0044', '4028817a33ecdbf70133ee202e49000b', '4028817a3420e78a013421e2e3c10016', '4', null, '5400', '601585a1-ba16-42bb-9ffb-d187b521be1f.jpg', '全明料死模风灯，电镀花银喷蓝色			\r\n尺寸：17X23CM高			\r\n1只/五层内盒      6只/大箱			\r\n毛坯1月30日送', null, 'PCS', '300', null, '\0', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '3.50', '1050.00', null, null, null, null, null, null, null, null, '\0', '10');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353d39f06c005d', '19', '4028817a353b8d8e01353d32350d0051', '2', null, '5117', 'aec0cd7f-795e-4c5f-b8c5-532b6479c4be.jpg', '白金字母花纸\r\nSWEETS\r\n安全包装送祁县光华厂', null, 'PCS', '100', null, '\0', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年2月5日。', null, '3.00', '300.00', null, null, null, null, null, null, null, null, '\0', '1');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353d39f06c005e', '4028817a33ecdbf70133ee202e49000b', '4028817a353b8d8e01353d32350d005b', '4', null, '5336', '4436f9d7-b0e2-4926-9cd4-f6c66333c290.jpg', '全明料死模风灯，电镀花银喷绿色			\r\n 			\r\n尺寸：14.5X20CM高			\r\n1只/五层内盒      12只/大箱			\r\n毛坯1月30日送', null, 'PCS', '156', null, '\0', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '3.00', '468.00', null, null, null, null, null, null, null, null, '\0', '4');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353d39f06c005f', '4028817a33ecdbf70133ee202e49000b', '4028817a353b8d8e01353d32350d005a', '4', null, '5330', 'be775015-234a-4504-ad52-af6af53d2a9c.jpg', '全明料死模风灯，电镀花银喷紫色			\r\n			\r\n尺寸：14.5X20CM高			\r\n1只/五层内盒      12只/大箱			\r\n毛坯1月30日送', null, 'PCS', '156', null, '\0', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '3.00', '468.00', null, null, null, null, null, null, null, null, '\0', '3');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353d39f06c0060', '19', '4028817a353b8d8e01353d32350d0055', '2', null, '5118', 'undefined', '白金字母花纸\r\nSWEETS\r\n安全包装送祁县光华厂', null, 'PCS', '100', null, '\0', null, null, null, null, null, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\r\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\r\n3.交期:2012年2月5日。', null, '3.00', '300.00', null, null, null, null, null, null, null, null, '\0', '2');
INSERT INTO `ext_cproduct_c` VALUES ('4028817a353b8d8e01353d39f06c0061', '4028817a33ecdbf70133ee202e49000b', '4028817a353b8d8e01353d32350d0057', '4', null, '5337', '673a4e11-3706-4beb-b958-ee1d7c564b3b.jpg', '全明料死模风灯，电镀花银喷蓝色			\r\n 			\r\n尺寸：14.5X20CM高			\r\n1只/五层内盒      12只/大箱			\r\n毛坯1月30日送', null, 'PCS', '156', null, '\0', null, null, null, null, null, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \r\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \r\n       并将验货照片传回公司。 \r\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \r\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \r\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', null, '3.00', '468.00', null, null, null, null, null, null, null, null, '\0', '5');

-- ----------------------------
-- Table structure for ext_eproduct_c
-- ----------------------------
DROP TABLE IF EXISTS `ext_eproduct_c`;
CREATE TABLE `ext_eproduct_c` (
  `EXT_EPRODUCT_ID` varchar(40) NOT NULL,
  `EXPORT_PRODUCT_ID` varchar(40) DEFAULT NULL,
  `FACTORY_ID` varchar(40) DEFAULT NULL,
  `FACTORY_NAME` varchar(50) DEFAULT NULL,
  `CTYPE` int(11) DEFAULT NULL,
  `PRODUCT_NO` varchar(50) DEFAULT NULL,
  `PRODUCT_IMAGE` varchar(200) DEFAULT NULL,
  `PRODUCT_DESC` varchar(600) DEFAULT NULL,
  `CNUMBER` int(11) DEFAULT NULL,
  `PACKING_UNIT` varchar(10) DEFAULT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  `AMOUNT` decimal(10,2) DEFAULT NULL,
  `PRODUCT_REQUEST` varchar(2000) DEFAULT NULL,
  `ORDER_NO` int(11) DEFAULT NULL,
  PRIMARY KEY (`EXT_EPRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ext_eproduct_c
-- ----------------------------
INSERT INTO `ext_eproduct_c` VALUES ('2396053f-fe09-4608-858a-64bbc9dca577', '467b7db4-5ca4-455a-9b34-178de835994f', '20', '喜福来', '4', '6998', 'undefined', '全明料蛋糕盘，盘沿电镀<br>尺寸：6-1/2\"X12-1/2\"高', '300', 'PCS', '6.00', '1800.00', '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。<br> ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致，\r\n <br>并将验货照片传回公司。<br>★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 <br>\r\n交期：2012年1月10日/工厂。　　没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。<br>开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', '11');
INSERT INTO `ext_eproduct_c` VALUES ('e10e185c-a983-4c91-becf-0ced9675e87a', '467b7db4-5ca4-455a-9b34-178de835994f', '20', '喜福来撒', '4', '6998', 'undefined', '的撒旦撒旦撒全明料蛋糕盘，盘沿电镀<br>尺寸：6-1/2\"X12-1/2\"高', '300', 'PCS', '6.00', '1800.00', '★   的撒的撒产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。<br> ★★  的撒的撒产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致，\r\n <br>并将验货照片传回公司。<br>★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 <br>\r\n交期：2012年1月10日/工厂。　的撒的撒　没有经过我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。<br>开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', '11');

-- ----------------------------
-- Table structure for factory_c
-- ----------------------------
DROP TABLE IF EXISTS `factory_c`;
CREATE TABLE `factory_c` (
  `FACTORY_ID` varchar(40) NOT NULL,
  `FULL_NAME` varchar(200) DEFAULT NULL,
  `FACTORY_NAME` varchar(50) DEFAULT NULL,
  `CONTACTS` varchar(30) DEFAULT NULL,
  `PHONE` varchar(20) DEFAULT NULL,
  `MOBILE` varchar(20) DEFAULT NULL,
  `FAX` varchar(20) DEFAULT NULL,
  `CNOTE` text,
  `INSPECTOR` varchar(30) DEFAULT NULL,
  `ORDER_NO` int(11) DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL,
  `CREATE_BY` varchar(40) DEFAULT NULL,
  `CREATE_DEPT` varchar(40) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FACTORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of factory_c
-- ----------------------------
INSERT INTO `factory_c` VALUES ('1', '祁县宏艺厂', '宏艺', '杰诚', '0354-5041999', '', '', '', '高琴', null, '0', null, null, null);
INSERT INTO `factory_c` VALUES ('10', '祁县晶晨厂', '晶晨', '续贵', '0354-5271999', '', '', '', '吕波', null, '0', null, null, null);
INSERT INTO `factory_c` VALUES ('11', '祁县浩丰厂', '浩丰', '建生', '0354-524099', '', '', '', '吕波', null, '0', null, null, null);
INSERT INTO `factory_c` VALUES ('12', '平遥远江厂', '平遥远江', '宏远', null, '13935499967', null, null, null, null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('13', '平遥鸿艺厂', '平遥鸿艺', '雄飞', '0354-5940888', '', '', '', '吕波', null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('15', '南皮开发玻璃制品厂', '南皮开发', '舒东', '0317-8863999', null, null, null, null, null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('16', '陕西康达彩印厂', '康达', '袁喜', '029-84528015', null, null, null, null, null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('17', '陕西众鑫印务包装有限公司', '众鑫', '赵毅', '029-84341858', null, null, null, null, null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('18', '翰林彩印厂', '翰林', '孙财', '029-88917456', null, null, null, null, null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('19', '祁县综艺玻璃花纸厂', '综艺花纸', '王棕', '0354-5278918', '', '', '', '', null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('2', '祁县光华厂', '光华', '薛成', '0354-5298981', '', '', '', '吕波', null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('20', '祁县喜福来玻璃加工厂', '喜福来', '王卫', '0354-5328850', '', '', '', '', null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('21', '祁县美晶泡沫厂', '美晶', '范长', '0354-5071387', '', '', '', '', null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('22', '祁县瑞成玻璃镀膜厂', '瑞成', '温明', '', '13834809374', '', '', '', null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('3', '祁县会龙厂', '会龙', '李伟', '0354-5248696', '', '', '', '李光', null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('4', '祁县精艺厂', '精艺', '闫强', '0354-5047289', '', '', '', '高琴', null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('4028817a33d4f8b40133d99621cb0023', '祁县海洋厂', '升华', '刘生', '0354-5299987', '', '', '', '吕波', null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('4028817a33d4f8b40133d9989f5e0024', '闻喜民鑫厂', '民鑫', '李民', '0359-7472727', '', '', '', '吕波', null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('4028817a33de41d80133e982a18a001c', '太谷四通PVC厂', '太谷PVC', '张海', '0354-6226591', '', '', '', '', null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('4028817a33ecdbf70133ee202e49000b', '祁县瑞成电镀厂', '瑞成电镀厂', '温民', '13835926900', '', '', '', '', null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('4028817a34f93be50134f9df84470001', '神舟玻璃制品有限公司', '神舟厂', '申定', '0356-3961959', '13935672348', '0356-3991304', '', '李光', null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('4028817a353b8d8e0135415bf0a90070', '陕西宇津进出口有限公司', '宇津水龙头厂', '任宁', '029-62990818', '', '', '', '', null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('4028817a35e0895e0135ec7a4dbe0087', '西安方圆工贸有限公司', '西安方圆工贸', '许涛', '029-86539568', '', '029-86590565', '', '', null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('4028817a3632e86601363344d16d0001', '淄博雷波陶瓷花纸厂', '淄博花纸厂', '吴璇', '0533-5176946', '', '', '', '', null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('4028817a371a8d7f01372a74451f0068', '山西大德成工贸有限公司', '铁架厂', '高辉', '0354-5288919', '', '', '', '李光', null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('4028817a37583d45013758d152450038', '祁县顺驰厂', '顺驰', '王明', '0354-5109398', '', '', '', '李光', null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('4028817a38024a04013803e3a8a2004b', '祁县欣欣泡沫有限公司', '祁县欣欣泡沫厂', '许杰', '0354-3939793', '', '', '', '', null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('4028817a382b4fd401382b9aad2a0008', '祁县仲玉玻璃厂', '仲玉', '吕军', '0354-5018888', '', '', '', '李光', null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('4028817a38736298013874c51a800036', '汇融玻璃有限公司', '展鹏厂', '厂长', '0354-5326986', '13834893800', '0354-5826197', '', '李光', null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('4028817a389cc7b701389d1efd940001', '宇虹包装彩印厂', '宇虹包装厂', '翟帅', '0358-3099923', '19033470988', '0358-3098183', '', '', null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('4028817a39b2b37f0139b46268c40025', '祁县馨艺玻璃厂', '馨艺', '袁长', '0354-5041938', '', '', '', '李光', null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('4028817a3aa9f950013ab0b6c98d0050', '祁县一先厂', '一先厂', '李刚', '0654-9018444', '', '', '', '李光', null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('4028817a3aa9f950013ab97f64110053', '温县致远玻璃制品有限公司', '温县致远厂', '红升', '18936896666', '', '', '', '', null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('4028817a3abe8f15013ac019a61f0031', '祁县喜福来电镀厂', '喜福来电镀厂', '王卫', '0154-5282888', '', '', '', '李光', null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('4028817a3ae2ac42013ae3550357000d', '临潼华清蜡厂', '临潼华清蜡厂', '吴波', '13791903888', '', '', '', '', null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('5', '祁县汇越厂', '汇越', '建忠', '0354-5019656', '', '', '', '吕波', null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('6', '祁县泰宇厂', '泰宇', '立东', '0354-5299160', null, null, null, null, null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('62a68416-f6bc-4b00-9c65-8dfdfb8b6d57', ' as', 's', 'ssss', 's', 'ssss', 's', 's', 'ss', '1', '1', null, null, null);
INSERT INTO `factory_c` VALUES ('7', '祁县天顺厂', '天顺', '渠海', '0354-5299499', '', '', '', '李光', null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('8', '祁县天诚厂', '天诚', '庞正', '0354-5299539', null, null, null, null, null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('9', '祁县华艺厂', '华艺', '史国', '0354-5041927', '', '', '', '高琴', null, '1', null, null, null);
INSERT INTO `factory_c` VALUES ('ff808081301885760130189e47ca0013', '文水志远厂', '文水志远', '志远', '0358-3934083', '', '', '', '李光', null, '1', null, null, null);

-- ----------------------------
-- Table structure for mainmenu
-- ----------------------------
DROP TABLE IF EXISTS `mainmenu`;
CREATE TABLE `mainmenu` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `menuName` varchar(20) DEFAULT NULL,
  `menuUrl` varchar(255) DEFAULT NULL COMMENT '横向主菜单',
  `leftMenuUrl` varchar(255) DEFAULT NULL COMMENT '左侧菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mainmenu
-- ----------------------------
INSERT INTO `mainmenu` VALUES ('1', '系统首页', 'fmain.action', null);
INSERT INTO `mainmenu` VALUES ('2', '货运管理', 'cargoMain.action', 'cargoLeft.action');
INSERT INTO `mainmenu` VALUES ('3', '基础信息', 'baseinfoMain.action', 'baseinfoLeft.action');
INSERT INTO `mainmenu` VALUES ('4', '系统管理', 'sysadminMain.action', 'sysadminLeft.action');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `F_ModuleId` varchar(30) DEFAULT NULL COMMENT '菜单Id',
  `F_ParentId` varchar(30) DEFAULT NULL COMMENT '父菜单ID',
  `F_EnCode` varchar(255) DEFAULT NULL COMMENT '英文名字',
  `F_FullName` varchar(255) DEFAULT NULL COMMENT '全名',
  `F_Icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `F_UrlAddress` varchar(255) DEFAULT NULL COMMENT 'url',
  `F_Target` varchar(255) DEFAULT NULL,
  `F_IsMenu` int(30) DEFAULT NULL COMMENT '是不是菜单',
  `F_AllowExpand` int(30) DEFAULT NULL,
  `F_IsPublic` int(30) DEFAULT NULL,
  `F_AllowEdit` varchar(255) DEFAULT NULL,
  `F_AllowDelete` varchar(255) DEFAULT NULL,
  `F_SortCode` int(30) DEFAULT NULL,
  `F_DeleteMark` int(30) DEFAULT NULL,
  `F_EnabledMark` int(30) DEFAULT NULL,
  `F_Description` varchar(255) DEFAULT NULL,
  `F_CreateDate` varchar(255) DEFAULT NULL,
  `F_CreateUserId` varchar(255) DEFAULT NULL,
  `F_CreateUserName` varchar(255) DEFAULT NULL,
  `F_ModifyDate` varchar(255) DEFAULT NULL,
  `F_ModifyUserId` varchar(255) DEFAULT NULL,
  `F_ModifyUserName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '0', '	Workplace', '个人工作台', 'fa fa-desktop', 'null', 'expand', '0', '1', '0', 'null', 'null', '1', '0', '1', 'null', 'null', 'null', 'null', '2015-11-17 11:22:46', 'System', '超级管理员');
INSERT INTO `menu` VALUES ('11', '1', 'msgBoard', '我的留言板', 'fa fa-sitemap', 'null', 'iframe', '0', '1', '0', 'null', 'null', '1', '0', '1', ' null', 'null', 'null', 'null', '2016-04-29 11:55:28', 'System', '超级管理员');
INSERT INTO `menu` VALUES ('12', '1', 'feedBack', '系统反馈', 'fa fa-leaf', 'null', 'iframe', '0', '1', '0', 'null', 'null', '1', '0', '1', 'null', 'null', 'null', 'null', '2016-04-29 11:55:28', 'System', '超级管理员');
INSERT INTO `menu` VALUES ('2', '0', 'freight', '货运管理', 'fa fa-leaf', 'null', 'expand', '0', '1', '0', 'NULL', 'NULL', '1', '0', '1', 'null', 'null', 'null', 'null', '2016-04-29 11:55:28', 'System', '超级管理员');
INSERT INTO `menu` VALUES ('3', '0', 'basics', '基础信息', 'fa fa-desktop', 'null', 'expand', '0', '1', '0', 'null', 'null', '1', '0', '1', 'null', 'null', 'null', 'null', '2016-04-29 11:55:28', 'System', '超级管理员');
INSERT INTO `menu` VALUES ('31', '3', 'sysCode', '系统代码', 'fa fa-desktop', 'null', 'iframe', '0', '1', '0', 'null', 'null', '1', '0', '1', 'null', 'null', 'null', 'null', '2016-04-29 11:55:28', 'System', '超级管理员');
INSERT INTO `menu` VALUES ('32', '3', 'manufInfo', '厂家信息', 'fa fa-desktop', 'null', 'iframe', '0', '1', '0', 'null', 'null', '1', '0', '1', 'null', 'null', 'null', 'null', '2016-04-29 11:55:28', 'System', '超级管理员');

-- ----------------------------
-- Table structure for packing_list_c
-- ----------------------------
DROP TABLE IF EXISTS `packing_list_c`;
CREATE TABLE `packing_list_c` (
  `PACKING_LIST_ID` varchar(40) NOT NULL,
  `SELLER` varchar(200) DEFAULT NULL,
  `BUYER` varchar(200) DEFAULT NULL,
  `INVOICE_NO` varchar(30) DEFAULT NULL,
  `INVOICE_DATE` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `MARKS` varchar(200) DEFAULT NULL,
  `DESCRIPTIONS` varchar(200) DEFAULT NULL,
  `EXPORT_IDS` varchar(200) DEFAULT NULL,
  `EXPORT_NOS` varchar(200) DEFAULT NULL,
  `STATE` int(11) DEFAULT NULL,
  `CREATE_BY` varchar(40) DEFAULT NULL,
  `CREATE_DEPT` varchar(40) DEFAULT NULL,
  `CREATE_TIME` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  PRIMARY KEY (`PACKING_LIST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of packing_list_c
-- ----------------------------
INSERT INTO `packing_list_c` VALUES ('ceeeaa09-75ab-4c56-b333-26191a3db1ee', '12', '41', '21', '2017-01-03 00:00:00.000000', '老师，可不可以在DivData中再加一个name为exportNos的input隐藏域，\r\n\r\n\r\n是不就不用拼字符串来啊？', '51', 'a81f5a3f-386d-4b31-a03f-e81a8fe28a1d', 'C/3817/11 11JK1080', '0', null, null, '2017-01-03 21:15:12.327300');

-- ----------------------------
-- Table structure for sys_code_b
-- ----------------------------
DROP TABLE IF EXISTS `sys_code_b`;
CREATE TABLE `sys_code_b` (
  `SYS_CODE_ID` varchar(40) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `PARENT_ID` varchar(40) DEFAULT NULL,
  `PARENT_NAME` varchar(100) DEFAULT NULL,
  `LAYER_NUM` int(11) DEFAULT NULL,
  `IS_LEAF` int(11) DEFAULT NULL,
  `QUOTE_NUM` int(11) DEFAULT NULL,
  `CNOTE` varchar(100) DEFAULT NULL,
  `ICO` varchar(20) DEFAULT NULL,
  `ORDER_NO` int(11) DEFAULT NULL,
  `STATE` char(1) DEFAULT NULL,
  `CREATED_BY` varchar(40) DEFAULT NULL,
  `CREATED_TIME` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `UPDATED_BY` varchar(40) DEFAULT NULL,
  `UPDATED_TIME` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  PRIMARY KEY (`SYS_CODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_code_b
-- ----------------------------
INSERT INTO `sys_code_b` VALUES ('01', '系统代码', '-1', 'root', '0', '0', '1', null, null, '0', '1', null, '2017-01-03 21:01:34.000000', null, '2017-01-03 21:01:34.000000');
INSERT INTO `sys_code_b` VALUES ('0101', '人员级别', '01', '系统代码', '1', '0', '0', null, null, '1', null, '001', '2017-01-03 21:06:49.000000', null, '2017-01-03 21:06:49.156635');
INSERT INTO `sys_code_b` VALUES ('010102', '管理员', '0101', '人员级别', '2', '1', '0', null, null, '1', null, '001', '2017-01-03 21:06:49.000000', null, '2017-01-03 21:06:49.324525');
INSERT INTO `sys_code_b` VALUES ('010102aaa', '管理员', '0101', '人员级别', '2', '1', '0', null, null, '1', null, '001', '2017-01-03 21:13:40.000000', null, '2017-01-03 21:13:40.214519');
INSERT INTO `sys_code_b` VALUES ('010103', '总经理', '0101', '人员级别', '2', '1', '0', null, null, '2', null, '001', '2017-01-03 21:06:49.000000', null, '2017-01-03 21:06:49.396758');
INSERT INTO `sys_code_b` VALUES ('010103v', '总经理', '0101', '人员级别', '2', '1', '0', null, null, '2', null, '001', '2017-01-03 21:13:40.000000', null, '2017-01-03 21:13:40.252897');
INSERT INTO `sys_code_b` VALUES ('010104', '部门经理', '0101', '人员级别', '2', '1', '0', null, null, '3', null, '001', '2017-01-03 21:06:49.000000', '001', '2017-01-03 21:06:49.000000');
INSERT INTO `sys_code_b` VALUES ('010104ru', '部门经理', '0101', '人员级别', '2', '1', '0', null, null, '3', null, '001', '2017-01-03 21:13:40.000000', '001', '2017-01-03 21:13:40.000000');
INSERT INTO `sys_code_b` VALUES ('010105', '组长', '0101', '人员级别', '2', '1', '0', null, null, '4', null, '001', '2017-01-03 21:06:49.000000', null, '2017-01-03 21:06:49.676705');
INSERT INTO `sys_code_b` VALUES ('010105hgf', '组长', '0101', '人员级别', '2', '1', '0', null, null, '4', null, '001', '2017-01-03 21:13:40.000000', null, '2017-01-03 21:13:40.341319');
INSERT INTO `sys_code_b` VALUES ('010106', '员工', '0101', '人员级别', '2', '1', '0', null, null, '5', null, '001', '2017-01-03 21:06:49.000000', null, '2017-01-03 21:06:49.755698');
INSERT INTO `sys_code_b` VALUES ('0101s', '人员级别', '01', '系统代码', '1', '0', '0', null, null, '1', null, '001', '2017-01-03 21:13:40.000000', null, '2017-01-03 21:13:40.152564');
INSERT INTO `sys_code_b` VALUES ('0102', '栏目', '01', '系统代码', '1', '0', '0', null, null, '2', null, '001', '2017-01-03 21:06:49.000000', null, '2017-01-03 21:06:49.799307');
INSERT INTO `sys_code_b` VALUES ('010202', '新闻报道', '0102', '栏目', '2', '1', '0', null, null, '1', null, '001', '2017-01-03 21:06:49.000000', null, '2017-01-03 21:06:49.834460');
INSERT INTO `sys_code_b` VALUES ('010203', '通知公告', '0102', '栏目', '2', '1', '0', null, null, '2', null, '001', '2017-01-03 21:06:49.000000', null, '2017-01-03 21:06:49.879605');
INSERT INTO `sys_code_b` VALUES ('010204', '公司制度', '0102', '栏目', '2', '1', '0', null, null, '3', null, '001', '2017-01-03 21:06:49.000000', null, '2017-01-03 21:06:49.924459');
INSERT INTO `sys_code_b` VALUES ('010205', '行业报道', '0102', '栏目', '2', '1', '0', null, null, '4', null, '001', '2017-01-03 21:06:49.000000', null, '2017-01-03 21:06:49.965585');
INSERT INTO `sys_code_b` VALUES ('010206', '大事记', '0102', '栏目', '2', '1', '0', null, null, '5', null, '001', '2017-01-03 21:06:49.000000', null, '2017-01-03 21:06:49.998673');
INSERT INTO `sys_code_b` VALUES ('0103', '厂家类型', '01', '系统代码', '1', '0', '1', null, null, '3', null, '001', '2017-01-03 21:06:50.000000', '001', '2017-01-03 21:06:50.000000');
INSERT INTO `sys_code_b` VALUES ('010302', '玻璃', '0103', '厂家类型', '2', '1', '1', null, null, '1', null, '001', '2017-01-03 21:06:50.000000', '001', '2017-01-03 21:06:50.000000');
INSERT INTO `sys_code_b` VALUES ('010303', '彩盒', '0103', '厂家类型', '2', '1', '1', null, null, '2', null, '001', '2017-01-03 21:06:50.000000', '001', '2017-01-03 21:06:50.000000');
INSERT INTO `sys_code_b` VALUES ('010304', 'PVC', '0103', '厂家类型', '2', '1', '1', null, null, '3', null, '001', '2017-01-03 21:06:50.000000', null, '2017-01-03 21:06:50.262279');
INSERT INTO `sys_code_b` VALUES ('010305', '花纸', '0103', '厂家类型', '2', '1', '1', null, null, '4', null, '001', '2017-01-03 21:06:50.000000', null, '2017-01-03 21:06:50.333646');
INSERT INTO `sys_code_b` VALUES ('010306', '保丽龙', '0103', '厂家类型', '2', '1', '1', null, null, '5', null, '001', '2017-01-03 21:06:50.000000', null, '2017-01-03 21:06:50.447543');
INSERT INTO `sys_code_b` VALUES ('010307', '电镀', '0103', '厂家类型', '2', '1', '1', null, null, '6', null, '001', '2017-01-03 21:06:50.000000', null, '2017-01-03 21:06:50.554643');
INSERT INTO `sys_code_b` VALUES ('010308', '水龙头', '0103', '厂家类型', '2', '1', '1', null, null, '7', null, '001', '2017-01-03 21:06:50.000000', null, '2017-01-03 21:06:50.598786');
INSERT INTO `sys_code_b` VALUES ('010309', '蜡', '0103', '厂家类型', '2', '1', '1', null, null, '8', null, '001', '2017-01-03 21:06:50.000000', null, '2017-01-03 21:06:50.661752');
INSERT INTO `sys_code_b` VALUES ('0104', '附件类型', '01', '系统代码', '1', '0', '1', null, null, '4', null, '001', '2017-01-03 21:06:50.000000', null, '2017-01-03 21:06:50.699868');
INSERT INTO `sys_code_b` VALUES ('010402', '彩盒', '0104', '附件类型', '2', '1', '1', null, null, '1', '1', '001', '2017-01-03 21:06:50.000000', null, '2017-01-03 21:06:50.745111');
INSERT INTO `sys_code_b` VALUES ('010403', '花纸', '0104', '附件类型', '2', '1', '1', null, null, '2', '1', '001', '2017-01-03 21:06:50.000000', null, '2017-01-03 21:06:50.778439');
INSERT INTO `sys_code_b` VALUES ('010404', '保丽龙', '0104', '附件类型', '2', '1', '1', null, null, '3', '1', '001', '2017-01-03 21:06:50.000000', null, '2017-01-03 21:06:50.824949');
INSERT INTO `sys_code_b` VALUES ('010405', '电镀', '0104', '附件类型', '2', '1', '1', null, null, '4', '1', '001', '2017-01-03 21:06:50.000000', null, '2017-01-03 21:06:50.000000');
INSERT INTO `sys_code_b` VALUES ('010407', '的萨芬的话一套', '0104', '大防弹武僧', '2', '1', '0', null, null, '8', '1', '001', '2008-08-08 12:30:00.000000', null, '2008-08-08 12:30:00.000000');
INSERT INTO `sys_code_b` VALUES ('010408', '大', '0104', '大防弹武僧', '2', '1', '0', null, null, '8', '1', '001', '2008-08-08 12:30:00.000000', null, '2008-08-08 12:30:00.000000');
INSERT INTO `sys_code_b` VALUES ('010409', '不锈钢勺子', '0104', '附件类型', '2', '1', '0', null, null, '8', '1', '001', '2008-08-08 12:30:00.000000', null, '2008-08-08 12:30:00.000000');
INSERT INTO `sys_code_b` VALUES ('0122a', '系统代码', '-1', 'root', '0', '0', '1', null, null, '0', '1', null, '2017-01-03 21:12:38.000000', null, '2017-01-03 21:12:38.000000');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(20) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `department` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `departmentId` varchar(20) DEFAULT NULL,
  `position` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '管理', '1938838576', '001', '管理员');
