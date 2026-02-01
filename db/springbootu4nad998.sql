/*
 Navicat Premium Dump SQL

 Source Server         : jack2
 Source Server Type    : MySQL
 Source Server Version : 90300 (9.3.0)
 Source Host           : localhost:3306
 Source Schema         : springbootu4nad998

 Target Server Type    : MySQL
 Target Server Version : 90300 (9.3.0)
 File Encoding         : 65001

 Date: 01/02/2026 11:19:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  `url` varchar(500) DEFAULT NULL COMMENT 'url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------
BEGIN;
INSERT INTO `config` (`id`, `name`, `value`, `url`) VALUES (1, 'picture1', 'upload/picture1.jpg', NULL);
INSERT INTO `config` (`id`, `name`, `value`, `url`) VALUES (2, 'picture2', 'upload/picture2.jpg', NULL);
INSERT INTO `config` (`id`, `name`, `value`, `url`) VALUES (3, 'picture3', 'upload/picture3.jpg', NULL);
COMMIT;

-- ----------------------------
-- Table structure for dingdanxinxi
-- ----------------------------
DROP TABLE IF EXISTS `dingdanxinxi`;
CREATE TABLE `dingdanxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `suyuanma` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '溯源码',
  `chanpinmingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产品名称',
  `chanpinpinzhong` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '产品品种',
  `jingxiaoshangming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经销商名',
  `tupian` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '图片',
  `jiagongqiye` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '加工企业',
  `shengchanriqi` date NOT NULL COMMENT '生产日期',
  `jingxiaoshanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经销商号',
  `jiage` int DEFAULT NULL COMMENT '价格',
  `shuliang` int DEFAULT NULL COMMENT '购买数量',
  `heji` int DEFAULT NULL COMMENT '合计',
  `zhanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `zhuangtai` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '状态',
  `ispay` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单信息';

-- ----------------------------
-- Records of dingdanxinxi
-- ----------------------------
BEGIN;
INSERT INTO `dingdanxinxi` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jingxiaoshanghao`, `jiage`, `shuliang`, `heji`, `zhanghao`, `xingming`, `dengjishijian`, `zhuangtai`, `ispay`) VALUES (1, '2025-03-23 16:43:22', '溯源码1', '产品名称1', '产品品种1', '上海经销商', 'upload/dingdanxinxi_tupian1.jpg,upload/dingdanxinxi_tupian2.jpg,upload/dingdanxinxi_tupian3.jpg', '加工企业1', '2025-03-23', '22', 1, 1, 1, '账号1', '姓名1', '2025-03-23 16:43:22', '已发货', '未支付');
INSERT INTO `dingdanxinxi` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jingxiaoshanghao`, `jiage`, `shuliang`, `heji`, `zhanghao`, `xingming`, `dengjishijian`, `zhuangtai`, `ispay`) VALUES (2, '2025-03-23 16:43:22', '溯源码2', '产品名称2', '产品品种2', '上海经销商', 'upload/dingdanxinxi_tupian2.jpg,upload/dingdanxinxi_tupian3.jpg,upload/dingdanxinxi_tupian4.jpg', '加工企业2', '2025-03-23', '22', 2, 2, 2, '账号2', '姓名2', '2025-03-23 16:43:22', '已发货', '未支付');
INSERT INTO `dingdanxinxi` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jingxiaoshanghao`, `jiage`, `shuliang`, `heji`, `zhanghao`, `xingming`, `dengjishijian`, `zhuangtai`, `ispay`) VALUES (3, '2025-03-23 16:43:22', '溯源码3', '产品名称3', '产品品种3', '上海经销商', 'upload/dingdanxinxi_tupian3.jpg,upload/dingdanxinxi_tupian4.jpg,upload/dingdanxinxi_tupian5.jpg', '加工企业3', '2025-03-23', '22', 3, 3, 3, '账号3', '姓名3', '2025-03-23 16:43:22', '已发货', '未支付');
INSERT INTO `dingdanxinxi` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jingxiaoshanghao`, `jiage`, `shuliang`, `heji`, `zhanghao`, `xingming`, `dengjishijian`, `zhuangtai`, `ispay`) VALUES (4, '2025-03-23 16:43:22', '溯源码4', '产品名称4', '产品品种4', '上海经销商', 'upload/dingdanxinxi_tupian4.jpg,upload/dingdanxinxi_tupian5.jpg,upload/dingdanxinxi_tupian6.jpg', '加工企业4', '2025-03-23', '22', 4, 4, 4, '账号4', '姓名4', '2025-03-23 16:43:22', '已发货', '未支付');
INSERT INTO `dingdanxinxi` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jingxiaoshanghao`, `jiage`, `shuliang`, `heji`, `zhanghao`, `xingming`, `dengjishijian`, `zhuangtai`, `ispay`) VALUES (5, '2025-03-23 16:43:22', '溯源码5', '产品名称5', '产品品种5', '经销商名5', 'upload/dingdanxinxi_tupian5.jpg,upload/dingdanxinxi_tupian6.jpg,upload/dingdanxinxi_tupian7.jpg', '加工企业5', '2025-03-23', '经销商号5', 5, 5, 5, '账号5', '姓名5', '2025-03-23 16:43:22', '已发货', '未支付');
INSERT INTO `dingdanxinxi` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jingxiaoshanghao`, `jiage`, `shuliang`, `heji`, `zhanghao`, `xingming`, `dengjishijian`, `zhuangtai`, `ispay`) VALUES (6, '2025-03-23 16:43:22', '溯源码6', '产品名称6', '产品品种6', '经销商名6', 'upload/dingdanxinxi_tupian6.jpg,upload/dingdanxinxi_tupian7.jpg,upload/dingdanxinxi_tupian8.jpg', '加工企业6', '2025-03-23', '经销商号6', 6, 6, 6, '账号6', '姓名6', '2025-03-23 16:43:22', '已发货', '未支付');
INSERT INTO `dingdanxinxi` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jingxiaoshanghao`, `jiage`, `shuliang`, `heji`, `zhanghao`, `xingming`, `dengjishijian`, `zhuangtai`, `ispay`) VALUES (7, '2025-03-23 16:43:22', '溯源码7', '产品名称7', '产品品种7', '经销商名7', 'upload/dingdanxinxi_tupian7.jpg,upload/dingdanxinxi_tupian8.jpg,upload/dingdanxinxi_tupian1.jpg', '加工企业7', '2025-03-23', '经销商号7', 7, 7, 7, '账号7', '姓名7', '2025-03-23 16:43:22', '已发货', '未支付');
INSERT INTO `dingdanxinxi` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jingxiaoshanghao`, `jiage`, `shuliang`, `heji`, `zhanghao`, `xingming`, `dengjishijian`, `zhuangtai`, `ispay`) VALUES (8, '2025-03-23 16:43:22', '溯源码8', '产品名称8', '产品品种8', '经销商名8', 'upload/dingdanxinxi_tupian8.jpg,upload/dingdanxinxi_tupian1.jpg,upload/dingdanxinxi_tupian2.jpg', '加工企业8', '2025-03-23', '经销商号8', 8, 8, 8, '账号8', '姓名8', '2025-03-23 16:43:22', '已发货', '未支付');
INSERT INTO `dingdanxinxi` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jingxiaoshanghao`, `jiage`, `shuliang`, `heji`, `zhanghao`, `xingming`, `dengjishijian`, `zhuangtai`, `ispay`) VALUES (9, '2025-03-23 16:51:56', '1742719642215', '水电费水电费', '省份时段', '上海经销商', 'upload/1742719743160.jpg', '阿斯蒂芬水电费', '2025-03-24', '22', 23, 2, 46, '11', '张三', '2025-03-23 16:51:45', '已发货', '已支付');
COMMIT;

-- ----------------------------
-- Table structure for jiagonghuanjie
-- ----------------------------
DROP TABLE IF EXISTS `jiagonghuanjie`;
CREATE TABLE `jiagonghuanjie` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `suyuanma` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '溯源码',
  `jingxiaoshangming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经销商名',
  `chanpinmingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产品名称',
  `chanpinpinzhong` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '产品品种',
  `tupian` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '图片',
  `shuliang` int NOT NULL COMMENT '数量',
  `jiagongqiye` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '加工企业',
  `shengchanriqi` date NOT NULL COMMENT '生产日期',
  `jiagonggongyi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '加工工艺',
  `jiagongliucheng` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '加工流程',
  `tianjiaji` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '添加剂',
  `jingxiaoshanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经销商号',
  `nongchanpinmingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '农产品名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='加工环节';

-- ----------------------------
-- Records of jiagonghuanjie
-- ----------------------------
BEGIN;
INSERT INTO `jiagonghuanjie` (`id`, `addtime`, `suyuanma`, `jingxiaoshangming`, `chanpinmingcheng`, `chanpinpinzhong`, `tupian`, `shuliang`, `jiagongqiye`, `shengchanriqi`, `jiagonggongyi`, `jiagongliucheng`, `tianjiaji`, `jingxiaoshanghao`, `nongchanpinmingcheng`) VALUES (1, '2025-03-23 16:43:22', '溯源码1', '上海经销商', '产品名称1', '产品品种1', 'upload/jiagonghuanjie_tupian1.jpg,upload/jiagonghuanjie_tupian2.jpg,upload/jiagonghuanjie_tupian3.jpg', 1, '加工企业1', '2025-03-23', '加工工艺1', '加工流程1', '添加剂1', '22', '农产品名称1');
INSERT INTO `jiagonghuanjie` (`id`, `addtime`, `suyuanma`, `jingxiaoshangming`, `chanpinmingcheng`, `chanpinpinzhong`, `tupian`, `shuliang`, `jiagongqiye`, `shengchanriqi`, `jiagonggongyi`, `jiagongliucheng`, `tianjiaji`, `jingxiaoshanghao`, `nongchanpinmingcheng`) VALUES (2, '2025-03-23 16:43:22', '溯源码2', '上海经销商', '产品名称2', '产品品种2', 'upload/jiagonghuanjie_tupian2.jpg,upload/jiagonghuanjie_tupian3.jpg,upload/jiagonghuanjie_tupian4.jpg', 2, '加工企业2', '2025-03-23', '加工工艺2', '加工流程2', '添加剂2', '22', '农产品名称2');
INSERT INTO `jiagonghuanjie` (`id`, `addtime`, `suyuanma`, `jingxiaoshangming`, `chanpinmingcheng`, `chanpinpinzhong`, `tupian`, `shuliang`, `jiagongqiye`, `shengchanriqi`, `jiagonggongyi`, `jiagongliucheng`, `tianjiaji`, `jingxiaoshanghao`, `nongchanpinmingcheng`) VALUES (3, '2025-03-23 16:43:22', '溯源码3', '上海经销商', '产品名称3', '产品品种3', 'upload/jiagonghuanjie_tupian3.jpg,upload/jiagonghuanjie_tupian4.jpg,upload/jiagonghuanjie_tupian5.jpg', 3, '加工企业3', '2025-03-23', '加工工艺3', '加工流程3', '添加剂3', '22', '农产品名称3');
INSERT INTO `jiagonghuanjie` (`id`, `addtime`, `suyuanma`, `jingxiaoshangming`, `chanpinmingcheng`, `chanpinpinzhong`, `tupian`, `shuliang`, `jiagongqiye`, `shengchanriqi`, `jiagonggongyi`, `jiagongliucheng`, `tianjiaji`, `jingxiaoshanghao`, `nongchanpinmingcheng`) VALUES (4, '2025-03-23 16:43:22', '溯源码4', '上海经销商', '产品名称4', '产品品种4', 'upload/jiagonghuanjie_tupian4.jpg,upload/jiagonghuanjie_tupian5.jpg,upload/jiagonghuanjie_tupian6.jpg', 4, '加工企业4', '2025-03-23', '加工工艺4', '加工流程4', '添加剂4', '22', '农产品名称4');
INSERT INTO `jiagonghuanjie` (`id`, `addtime`, `suyuanma`, `jingxiaoshangming`, `chanpinmingcheng`, `chanpinpinzhong`, `tupian`, `shuliang`, `jiagongqiye`, `shengchanriqi`, `jiagonggongyi`, `jiagongliucheng`, `tianjiaji`, `jingxiaoshanghao`, `nongchanpinmingcheng`) VALUES (5, '2025-03-23 16:43:22', '溯源码5', '经销商名5', '产品名称5', '产品品种5', 'upload/jiagonghuanjie_tupian5.jpg,upload/jiagonghuanjie_tupian6.jpg,upload/jiagonghuanjie_tupian7.jpg', 5, '加工企业5', '2025-03-23', '加工工艺5', '加工流程5', '添加剂5', '经销商号5', '农产品名称5');
INSERT INTO `jiagonghuanjie` (`id`, `addtime`, `suyuanma`, `jingxiaoshangming`, `chanpinmingcheng`, `chanpinpinzhong`, `tupian`, `shuliang`, `jiagongqiye`, `shengchanriqi`, `jiagonggongyi`, `jiagongliucheng`, `tianjiaji`, `jingxiaoshanghao`, `nongchanpinmingcheng`) VALUES (6, '2025-03-23 16:43:22', '溯源码6', '经销商名6', '产品名称6', '产品品种6', 'upload/jiagonghuanjie_tupian6.jpg,upload/jiagonghuanjie_tupian7.jpg,upload/jiagonghuanjie_tupian8.jpg', 6, '加工企业6', '2025-03-23', '加工工艺6', '加工流程6', '添加剂6', '经销商号6', '农产品名称6');
INSERT INTO `jiagonghuanjie` (`id`, `addtime`, `suyuanma`, `jingxiaoshangming`, `chanpinmingcheng`, `chanpinpinzhong`, `tupian`, `shuliang`, `jiagongqiye`, `shengchanriqi`, `jiagonggongyi`, `jiagongliucheng`, `tianjiaji`, `jingxiaoshanghao`, `nongchanpinmingcheng`) VALUES (7, '2025-03-23 16:43:22', '溯源码7', '经销商名7', '产品名称7', '产品品种7', 'upload/jiagonghuanjie_tupian7.jpg,upload/jiagonghuanjie_tupian8.jpg,upload/jiagonghuanjie_tupian1.jpg', 7, '加工企业7', '2025-03-23', '加工工艺7', '加工流程7', '添加剂7', '经销商号7', '农产品名称7');
INSERT INTO `jiagonghuanjie` (`id`, `addtime`, `suyuanma`, `jingxiaoshangming`, `chanpinmingcheng`, `chanpinpinzhong`, `tupian`, `shuliang`, `jiagongqiye`, `shengchanriqi`, `jiagonggongyi`, `jiagongliucheng`, `tianjiaji`, `jingxiaoshanghao`, `nongchanpinmingcheng`) VALUES (8, '2025-03-23 16:43:22', '溯源码8', '经销商名8', '产品名称8', '产品品种8', 'upload/jiagonghuanjie_tupian8.jpg,upload/jiagonghuanjie_tupian1.jpg,upload/jiagonghuanjie_tupian2.jpg', 8, '加工企业8', '2025-03-23', '加工工艺8', '加工流程8', '添加剂8', '经销商号8', '农产品名称8');
INSERT INTO `jiagonghuanjie` (`id`, `addtime`, `suyuanma`, `jingxiaoshangming`, `chanpinmingcheng`, `chanpinpinzhong`, `tupian`, `shuliang`, `jiagongqiye`, `shengchanriqi`, `jiagonggongyi`, `jiagongliucheng`, `tianjiaji`, `jingxiaoshanghao`, `nongchanpinmingcheng`) VALUES (9, '2025-03-23 16:49:21', '1742719642215', '上海经销商', '水电费水电费', '省份时段', 'upload/1742719743160.jpg', 22, '阿斯蒂芬水电费', '2025-03-24', '<p>水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费</p>', '<p>水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费</p>', '<p>水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费</p>', '22', '阿斯蒂芬');
COMMIT;

-- ----------------------------
-- Table structure for jianguanzhe
-- ----------------------------
DROP TABLE IF EXISTS `jianguanzhe`;
CREATE TABLE `jianguanzhe` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jianguanzhezhanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '监管者账号',
  `mima` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `jianguanzhexingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '监管者姓名',
  `xingbie` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `nianling` int DEFAULT NULL COMMENT '年龄',
  `touxiang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jianguanzhezhanghao` (`jianguanzhezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1742719588178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='监管者';

-- ----------------------------
-- Records of jianguanzhe
-- ----------------------------
BEGIN;
INSERT INTO `jianguanzhe` (`id`, `addtime`, `jianguanzhezhanghao`, `mima`, `jianguanzhexingming`, `xingbie`, `nianling`, `touxiang`) VALUES (31, '2025-03-23 16:43:22', '监管者账号1', '123456', '监管者姓名1', '男', 1, 'upload/jianguanzhe_touxiang1.jpg');
INSERT INTO `jianguanzhe` (`id`, `addtime`, `jianguanzhezhanghao`, `mima`, `jianguanzhexingming`, `xingbie`, `nianling`, `touxiang`) VALUES (32, '2025-03-23 16:43:22', '监管者账号2', '123456', '监管者姓名2', '男', 2, 'upload/jianguanzhe_touxiang2.jpg');
INSERT INTO `jianguanzhe` (`id`, `addtime`, `jianguanzhezhanghao`, `mima`, `jianguanzhexingming`, `xingbie`, `nianling`, `touxiang`) VALUES (33, '2025-03-23 16:43:22', '监管者账号3', '123456', '监管者姓名3', '男', 3, 'upload/jianguanzhe_touxiang3.jpg');
INSERT INTO `jianguanzhe` (`id`, `addtime`, `jianguanzhezhanghao`, `mima`, `jianguanzhexingming`, `xingbie`, `nianling`, `touxiang`) VALUES (34, '2025-03-23 16:43:22', '监管者账号4', '123456', '监管者姓名4', '男', 4, 'upload/jianguanzhe_touxiang4.jpg');
INSERT INTO `jianguanzhe` (`id`, `addtime`, `jianguanzhezhanghao`, `mima`, `jianguanzhexingming`, `xingbie`, `nianling`, `touxiang`) VALUES (35, '2025-03-23 16:43:22', '监管者账号5', '123456', '监管者姓名5', '男', 5, 'upload/jianguanzhe_touxiang5.jpg');
INSERT INTO `jianguanzhe` (`id`, `addtime`, `jianguanzhezhanghao`, `mima`, `jianguanzhexingming`, `xingbie`, `nianling`, `touxiang`) VALUES (36, '2025-03-23 16:43:22', '监管者账号6', '123456', '监管者姓名6', '男', 6, 'upload/jianguanzhe_touxiang6.jpg');
INSERT INTO `jianguanzhe` (`id`, `addtime`, `jianguanzhezhanghao`, `mima`, `jianguanzhexingming`, `xingbie`, `nianling`, `touxiang`) VALUES (37, '2025-03-23 16:43:22', '监管者账号7', '123456', '监管者姓名7', '男', 7, 'upload/jianguanzhe_touxiang7.jpg');
INSERT INTO `jianguanzhe` (`id`, `addtime`, `jianguanzhezhanghao`, `mima`, `jianguanzhexingming`, `xingbie`, `nianling`, `touxiang`) VALUES (38, '2025-03-23 16:43:22', '监管者账号8', '123456', '监管者姓名8', '男', 8, 'upload/jianguanzhe_touxiang8.jpg');
INSERT INTO `jianguanzhe` (`id`, `addtime`, `jianguanzhezhanghao`, `mima`, `jianguanzhexingming`, `xingbie`, `nianling`, `touxiang`) VALUES (1742719588177, '2025-03-23 16:46:28', '33', '33', '王五', '男', 33, 'upload/1742719587511.jpg');
COMMIT;

-- ----------------------------
-- Table structure for jingxiaoshang
-- ----------------------------
DROP TABLE IF EXISTS `jingxiaoshang`;
CREATE TABLE `jingxiaoshang` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingxiaoshanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '经销商号',
  `mima` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `jingxiaoshangming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经销商名',
  `touxiang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '头像',
  `lianxiren` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jingxiaoshanghao` (`jingxiaoshanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1742719570640 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='经销商';

-- ----------------------------
-- Records of jingxiaoshang
-- ----------------------------
BEGIN;
INSERT INTO `jingxiaoshang` (`id`, `addtime`, `jingxiaoshanghao`, `mima`, `jingxiaoshangming`, `touxiang`, `lianxiren`, `lianxidianhua`, `youxiang`) VALUES (21, '2025-03-23 16:43:22', '经销商号1', '123456', '经销商名1', 'upload/jingxiaoshang_touxiang1.jpg', '联系人1', '13823888881', '773890001@qq.com');
INSERT INTO `jingxiaoshang` (`id`, `addtime`, `jingxiaoshanghao`, `mima`, `jingxiaoshangming`, `touxiang`, `lianxiren`, `lianxidianhua`, `youxiang`) VALUES (22, '2025-03-23 16:43:22', '经销商号2', '123456', '经销商名2', 'upload/jingxiaoshang_touxiang2.jpg', '联系人2', '13823888882', '773890002@qq.com');
INSERT INTO `jingxiaoshang` (`id`, `addtime`, `jingxiaoshanghao`, `mima`, `jingxiaoshangming`, `touxiang`, `lianxiren`, `lianxidianhua`, `youxiang`) VALUES (23, '2025-03-23 16:43:22', '经销商号3', '123456', '经销商名3', 'upload/jingxiaoshang_touxiang3.jpg', '联系人3', '13823888883', '773890003@qq.com');
INSERT INTO `jingxiaoshang` (`id`, `addtime`, `jingxiaoshanghao`, `mima`, `jingxiaoshangming`, `touxiang`, `lianxiren`, `lianxidianhua`, `youxiang`) VALUES (24, '2025-03-23 16:43:22', '经销商号4', '123456', '经销商名4', 'upload/jingxiaoshang_touxiang4.jpg', '联系人4', '13823888884', '773890004@qq.com');
INSERT INTO `jingxiaoshang` (`id`, `addtime`, `jingxiaoshanghao`, `mima`, `jingxiaoshangming`, `touxiang`, `lianxiren`, `lianxidianhua`, `youxiang`) VALUES (25, '2025-03-23 16:43:22', '经销商号5', '123456', '经销商名5', 'upload/jingxiaoshang_touxiang5.jpg', '联系人5', '13823888885', '773890005@qq.com');
INSERT INTO `jingxiaoshang` (`id`, `addtime`, `jingxiaoshanghao`, `mima`, `jingxiaoshangming`, `touxiang`, `lianxiren`, `lianxidianhua`, `youxiang`) VALUES (26, '2025-03-23 16:43:22', '经销商号6', '123456', '经销商名6', 'upload/jingxiaoshang_touxiang6.jpg', '联系人6', '13823888886', '773890006@qq.com');
INSERT INTO `jingxiaoshang` (`id`, `addtime`, `jingxiaoshanghao`, `mima`, `jingxiaoshangming`, `touxiang`, `lianxiren`, `lianxidianhua`, `youxiang`) VALUES (27, '2025-03-23 16:43:22', '经销商号7', '123456', '经销商名7', 'upload/jingxiaoshang_touxiang7.jpg', '联系人7', '13823888887', '773890007@qq.com');
INSERT INTO `jingxiaoshang` (`id`, `addtime`, `jingxiaoshanghao`, `mima`, `jingxiaoshangming`, `touxiang`, `lianxiren`, `lianxidianhua`, `youxiang`) VALUES (28, '2025-03-23 16:43:22', '经销商号8', '123456', '经销商名8', 'upload/jingxiaoshang_touxiang8.jpg', '联系人8', '13823888888', '773890008@qq.com');
INSERT INTO `jingxiaoshang` (`id`, `addtime`, `jingxiaoshanghao`, `mima`, `jingxiaoshangming`, `touxiang`, `lianxiren`, `lianxidianhua`, `youxiang`) VALUES (1742719570639, '2025-03-23 16:46:10', '22', '22', '上海经销商', 'upload/1742719556046.jpg', '李四', '13933333333', '333@163.com');
COMMIT;

-- ----------------------------
-- Table structure for nongchanpin
-- ----------------------------
DROP TABLE IF EXISTS `nongchanpin`;
CREATE TABLE `nongchanpin` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `suyuanma` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '溯源码',
  `chanpinmingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产品名称',
  `chanpinpinzhong` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '产品品种',
  `jingxiaoshangming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经销商名',
  `tupian` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '图片',
  `jiagongqiye` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '加工企业',
  `shengchanriqi` date NOT NULL COMMENT '生产日期',
  `jiagonggongyi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '加工工艺',
  `jiagongliucheng` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '加工流程',
  `tianjiaji` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '添加剂',
  `jingxiaoshanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经销商号',
  `jiage` int DEFAULT NULL COMMENT '价格',
  `shuliang` int DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='农产品';

-- ----------------------------
-- Records of nongchanpin
-- ----------------------------
BEGIN;
INSERT INTO `nongchanpin` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jiagonggongyi`, `jiagongliucheng`, `tianjiaji`, `jingxiaoshanghao`, `jiage`, `shuliang`) VALUES (1, '2025-03-23 16:43:22', '溯源码1', '产品名称1', '产品品种1', '上海经销商', 'upload/nongchanpin_tupian1.jpg,upload/nongchanpin_tupian2.jpg,upload/nongchanpin_tupian3.jpg', '加工企业1', '2025-03-23', '加工工艺1', '加工流程1', '添加剂1', '22', 1, 1);
INSERT INTO `nongchanpin` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jiagonggongyi`, `jiagongliucheng`, `tianjiaji`, `jingxiaoshanghao`, `jiage`, `shuliang`) VALUES (2, '2025-03-23 16:43:22', '溯源码2', '产品名称2', '产品品种2', '上海经销商', 'upload/nongchanpin_tupian2.jpg,upload/nongchanpin_tupian3.jpg,upload/nongchanpin_tupian4.jpg', '加工企业2', '2025-03-23', '加工工艺2', '加工流程2', '添加剂2', '22', 2, 2);
INSERT INTO `nongchanpin` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jiagonggongyi`, `jiagongliucheng`, `tianjiaji`, `jingxiaoshanghao`, `jiage`, `shuliang`) VALUES (3, '2025-03-23 16:43:22', '溯源码3', '产品名称3', '产品品种3', '上海经销商', 'upload/nongchanpin_tupian3.jpg,upload/nongchanpin_tupian4.jpg,upload/nongchanpin_tupian5.jpg', '加工企业3', '2025-03-23', '加工工艺3', '加工流程3', '添加剂3', '22', 3, 3);
INSERT INTO `nongchanpin` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jiagonggongyi`, `jiagongliucheng`, `tianjiaji`, `jingxiaoshanghao`, `jiage`, `shuliang`) VALUES (4, '2025-03-23 16:43:22', '溯源码4', '产品名称4', '产品品种4', '上海经销商', 'upload/nongchanpin_tupian4.jpg,upload/nongchanpin_tupian5.jpg,upload/nongchanpin_tupian6.jpg', '加工企业4', '2025-03-23', '加工工艺4', '加工流程4', '添加剂4', '22', 4, 4);
INSERT INTO `nongchanpin` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jiagonggongyi`, `jiagongliucheng`, `tianjiaji`, `jingxiaoshanghao`, `jiage`, `shuliang`) VALUES (5, '2025-03-23 16:43:22', '溯源码5', '产品名称5', '产品品种5', '经销商名5', 'upload/nongchanpin_tupian5.jpg,upload/nongchanpin_tupian6.jpg,upload/nongchanpin_tupian7.jpg', '加工企业5', '2025-03-23', '加工工艺5', '加工流程5', '添加剂5', '经销商号5', 5, 5);
INSERT INTO `nongchanpin` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jiagonggongyi`, `jiagongliucheng`, `tianjiaji`, `jingxiaoshanghao`, `jiage`, `shuliang`) VALUES (6, '2025-03-23 16:43:22', '溯源码6', '产品名称6', '产品品种6', '经销商名6', 'upload/nongchanpin_tupian6.jpg,upload/nongchanpin_tupian7.jpg,upload/nongchanpin_tupian8.jpg', '加工企业6', '2025-03-23', '加工工艺6', '加工流程6', '添加剂6', '经销商号6', 6, 6);
INSERT INTO `nongchanpin` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jiagonggongyi`, `jiagongliucheng`, `tianjiaji`, `jingxiaoshanghao`, `jiage`, `shuliang`) VALUES (7, '2025-03-23 16:43:22', '溯源码7', '产品名称7', '产品品种7', '经销商名7', 'upload/nongchanpin_tupian7.jpg,upload/nongchanpin_tupian8.jpg,upload/nongchanpin_tupian1.jpg', '加工企业7', '2025-03-23', '加工工艺7', '加工流程7', '添加剂7', '经销商号7', 7, 7);
INSERT INTO `nongchanpin` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jiagonggongyi`, `jiagongliucheng`, `tianjiaji`, `jingxiaoshanghao`, `jiage`, `shuliang`) VALUES (8, '2025-03-23 16:43:22', '溯源码8', '产品名称8', '产品品种8', '经销商名8', 'upload/nongchanpin_tupian8.jpg,upload/nongchanpin_tupian1.jpg,upload/nongchanpin_tupian2.jpg', '加工企业8', '2025-03-23', '加工工艺8', '加工流程8', '添加剂8', '经销商号8', 8, 8);
INSERT INTO `nongchanpin` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jiagonggongyi`, `jiagongliucheng`, `tianjiaji`, `jingxiaoshanghao`, `jiage`, `shuliang`) VALUES (9, '2025-03-23 16:50:50', '1742719642215', '水电费水电费', '省份时段', '上海经销商', 'upload/1742719743160.jpg', '阿斯蒂芬水电费', '2025-03-24', '<p>水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费</p>', '<p>水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费</p>', '<p>水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费</p>', '22', 23, 20);
COMMIT;

-- ----------------------------
-- Table structure for nongchanpinjichuxinxi
-- ----------------------------
DROP TABLE IF EXISTS `nongchanpinjichuxinxi`;
CREATE TABLE `nongchanpinjichuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `suyuanma` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '溯源码',
  `nongchanpinmingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '农产品名称',
  `nongchanpinpinzhong` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '农产品品种',
  `chanpintupian` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '产品图片',
  `turangsuanjiandu` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '土壤酸碱度',
  `turangfeilizhi` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '土壤肥力值',
  `zhiyangshijian` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '植养时间',
  `zhongzhijilu` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '种植记录',
  `shengchanzhehao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生产者号',
  `shengchanzheming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生产者名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `suyuanma` (`suyuanma`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='农产品基础信息';

-- ----------------------------
-- Records of nongchanpinjichuxinxi
-- ----------------------------
BEGIN;
INSERT INTO `nongchanpinjichuxinxi` (`id`, `addtime`, `suyuanma`, `nongchanpinmingcheng`, `nongchanpinpinzhong`, `chanpintupian`, `turangsuanjiandu`, `turangfeilizhi`, `zhiyangshijian`, `zhongzhijilu`, `shengchanzhehao`, `shengchanzheming`) VALUES (1, '2025-03-23 16:43:22', '1111111111', '农产品名称1', '农产品品种1', 'upload/nongchanpinjichuxinxi_chanpintupian1.jpg,upload/nongchanpinjichuxinxi_chanpintupian2.jpg,upload/nongchanpinjichuxinxi_chanpintupian3.jpg', '土壤酸碱度1', '土壤肥力值1', '植养时间1', '种植记录1', '44', '柳柳');
INSERT INTO `nongchanpinjichuxinxi` (`id`, `addtime`, `suyuanma`, `nongchanpinmingcheng`, `nongchanpinpinzhong`, `chanpintupian`, `turangsuanjiandu`, `turangfeilizhi`, `zhiyangshijian`, `zhongzhijilu`, `shengchanzhehao`, `shengchanzheming`) VALUES (2, '2025-03-23 16:43:22', '2222222222', '农产品名称2', '农产品品种2', 'upload/nongchanpinjichuxinxi_chanpintupian2.jpg,upload/nongchanpinjichuxinxi_chanpintupian3.jpg,upload/nongchanpinjichuxinxi_chanpintupian4.jpg', '土壤酸碱度2', '土壤肥力值2', '植养时间2', '种植记录2', '44', '柳柳');
INSERT INTO `nongchanpinjichuxinxi` (`id`, `addtime`, `suyuanma`, `nongchanpinmingcheng`, `nongchanpinpinzhong`, `chanpintupian`, `turangsuanjiandu`, `turangfeilizhi`, `zhiyangshijian`, `zhongzhijilu`, `shengchanzhehao`, `shengchanzheming`) VALUES (3, '2025-03-23 16:43:22', '3333333333', '农产品名称3', '农产品品种3', 'upload/nongchanpinjichuxinxi_chanpintupian3.jpg,upload/nongchanpinjichuxinxi_chanpintupian4.jpg,upload/nongchanpinjichuxinxi_chanpintupian5.jpg', '土壤酸碱度3', '土壤肥力值3', '植养时间3', '种植记录3', '44', '柳柳');
INSERT INTO `nongchanpinjichuxinxi` (`id`, `addtime`, `suyuanma`, `nongchanpinmingcheng`, `nongchanpinpinzhong`, `chanpintupian`, `turangsuanjiandu`, `turangfeilizhi`, `zhiyangshijian`, `zhongzhijilu`, `shengchanzhehao`, `shengchanzheming`) VALUES (4, '2025-03-23 16:43:22', '4444444444', '农产品名称4', '农产品品种4', 'upload/nongchanpinjichuxinxi_chanpintupian4.jpg,upload/nongchanpinjichuxinxi_chanpintupian5.jpg,upload/nongchanpinjichuxinxi_chanpintupian6.jpg', '土壤酸碱度4', '土壤肥力值4', '植养时间4', '种植记录4', '44', '柳柳');
INSERT INTO `nongchanpinjichuxinxi` (`id`, `addtime`, `suyuanma`, `nongchanpinmingcheng`, `nongchanpinpinzhong`, `chanpintupian`, `turangsuanjiandu`, `turangfeilizhi`, `zhiyangshijian`, `zhongzhijilu`, `shengchanzhehao`, `shengchanzheming`) VALUES (5, '2025-03-23 16:43:22', '5555555555', '农产品名称5', '农产品品种5', 'upload/nongchanpinjichuxinxi_chanpintupian5.jpg,upload/nongchanpinjichuxinxi_chanpintupian6.jpg,upload/nongchanpinjichuxinxi_chanpintupian7.jpg', '土壤酸碱度5', '土壤肥力值5', '植养时间5', '种植记录5', '生产者号5', '生产者名5');
INSERT INTO `nongchanpinjichuxinxi` (`id`, `addtime`, `suyuanma`, `nongchanpinmingcheng`, `nongchanpinpinzhong`, `chanpintupian`, `turangsuanjiandu`, `turangfeilizhi`, `zhiyangshijian`, `zhongzhijilu`, `shengchanzhehao`, `shengchanzheming`) VALUES (6, '2025-03-23 16:43:22', '6666666666', '农产品名称6', '农产品品种6', 'upload/nongchanpinjichuxinxi_chanpintupian6.jpg,upload/nongchanpinjichuxinxi_chanpintupian7.jpg,upload/nongchanpinjichuxinxi_chanpintupian8.jpg', '土壤酸碱度6', '土壤肥力值6', '植养时间6', '种植记录6', '生产者号6', '生产者名6');
INSERT INTO `nongchanpinjichuxinxi` (`id`, `addtime`, `suyuanma`, `nongchanpinmingcheng`, `nongchanpinpinzhong`, `chanpintupian`, `turangsuanjiandu`, `turangfeilizhi`, `zhiyangshijian`, `zhongzhijilu`, `shengchanzhehao`, `shengchanzheming`) VALUES (7, '2025-03-23 16:43:22', '7777777777', '农产品名称7', '农产品品种7', 'upload/nongchanpinjichuxinxi_chanpintupian7.jpg,upload/nongchanpinjichuxinxi_chanpintupian8.jpg,upload/nongchanpinjichuxinxi_chanpintupian1.jpg', '土壤酸碱度7', '土壤肥力值7', '植养时间7', '种植记录7', '生产者号7', '生产者名7');
INSERT INTO `nongchanpinjichuxinxi` (`id`, `addtime`, `suyuanma`, `nongchanpinmingcheng`, `nongchanpinpinzhong`, `chanpintupian`, `turangsuanjiandu`, `turangfeilizhi`, `zhiyangshijian`, `zhongzhijilu`, `shengchanzhehao`, `shengchanzheming`) VALUES (8, '2025-03-23 16:43:22', '8888888888', '农产品名称8', '农产品品种8', 'upload/nongchanpinjichuxinxi_chanpintupian8.jpg,upload/nongchanpinjichuxinxi_chanpintupian1.jpg,upload/nongchanpinjichuxinxi_chanpintupian2.jpg', '土壤酸碱度8', '土壤肥力值8', '植养时间8', '种植记录8', '生产者号8', '生产者名8');
INSERT INTO `nongchanpinjichuxinxi` (`id`, `addtime`, `suyuanma`, `nongchanpinmingcheng`, `nongchanpinpinzhong`, `chanpintupian`, `turangsuanjiandu`, `turangfeilizhi`, `zhiyangshijian`, `zhongzhijilu`, `shengchanzhehao`, `shengchanzheming`) VALUES (9, '2025-03-23 16:48:02', '1742719642215', '阿斯蒂芬', '水电费', 'upload/1742719662707.jpeg', '22', '11', '2025年3月23日16:47:42', '<p>内容阿斯蒂芬阿斯蒂芬水岸东方内容阿斯蒂芬阿斯蒂芬水岸东方内容阿斯蒂芬阿斯蒂芬水岸东方内容阿斯蒂芬阿斯蒂芬水岸东方内容阿斯蒂芬阿斯蒂芬水岸东方内容阿斯蒂芬阿斯蒂芬水岸东方内容阿斯蒂芬阿斯蒂芬水岸东方内容阿斯蒂芬阿斯蒂芬水岸东方内容阿斯蒂芬阿斯蒂芬水岸东方内容阿斯蒂芬阿斯蒂芬水岸东方内容阿斯蒂芬阿斯蒂芬水岸东方内容阿斯蒂芬阿斯蒂芬水岸东方内容阿斯蒂芬阿斯蒂芬水岸东方内容阿斯蒂芬阿斯蒂芬水岸东方内容阿斯蒂芬阿斯蒂芬水岸东方内容阿斯蒂芬阿斯蒂芬水岸东方内容阿斯蒂芬阿斯蒂芬水岸东方内容阿斯蒂芬阿斯蒂芬水岸东方</p>', '44', '柳柳');
COMMIT;

-- ----------------------------
-- Table structure for shengchanguochengzhuizong
-- ----------------------------
DROP TABLE IF EXISTS `shengchanguochengzhuizong`;
CREATE TABLE `shengchanguochengzhuizong` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `suyuanma` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '溯源码',
  `nongchanpinmingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '农产品名称',
  `nongchanpinpinzhong` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '农产品品种',
  `chanpintupian` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '产品图片',
  `turangsuanjiandu` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '土壤酸碱度',
  `turangfeilizhi` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '土壤肥力值',
  `guangai` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '灌溉',
  `bozhongjilu` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '播种记录',
  `shifeijilu` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '施肥记录',
  `shiyaojilu` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '施药记录',
  `caizhaishijian` date DEFAULT NULL COMMENT '采摘时间',
  `shengchanzhehao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生产者号',
  `shengchanzheming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生产者名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='生产过程追踪';

-- ----------------------------
-- Records of shengchanguochengzhuizong
-- ----------------------------
BEGIN;
INSERT INTO `shengchanguochengzhuizong` (`id`, `addtime`, `suyuanma`, `nongchanpinmingcheng`, `nongchanpinpinzhong`, `chanpintupian`, `turangsuanjiandu`, `turangfeilizhi`, `guangai`, `bozhongjilu`, `shifeijilu`, `shiyaojilu`, `caizhaishijian`, `shengchanzhehao`, `shengchanzheming`) VALUES (1, '2025-03-23 16:43:22', '溯源码1', '农产品名称1', '农产品品种1', 'upload/shengchanguochengzhuizong_chanpintupian1.jpg,upload/shengchanguochengzhuizong_chanpintupian2.jpg,upload/shengchanguochengzhuizong_chanpintupian3.jpg', '土壤酸碱度1', '土壤肥力值1', '灌溉1', '播种记录1', '施肥记录1', '施药记录1', '2025-03-23', '44', '柳柳');
INSERT INTO `shengchanguochengzhuizong` (`id`, `addtime`, `suyuanma`, `nongchanpinmingcheng`, `nongchanpinpinzhong`, `chanpintupian`, `turangsuanjiandu`, `turangfeilizhi`, `guangai`, `bozhongjilu`, `shifeijilu`, `shiyaojilu`, `caizhaishijian`, `shengchanzhehao`, `shengchanzheming`) VALUES (2, '2025-03-23 16:43:22', '溯源码2', '农产品名称2', '农产品品种2', 'upload/shengchanguochengzhuizong_chanpintupian2.jpg,upload/shengchanguochengzhuizong_chanpintupian3.jpg,upload/shengchanguochengzhuizong_chanpintupian4.jpg', '土壤酸碱度2', '土壤肥力值2', '灌溉2', '播种记录2', '施肥记录2', '施药记录2', '2025-03-23', '44', '柳柳');
INSERT INTO `shengchanguochengzhuizong` (`id`, `addtime`, `suyuanma`, `nongchanpinmingcheng`, `nongchanpinpinzhong`, `chanpintupian`, `turangsuanjiandu`, `turangfeilizhi`, `guangai`, `bozhongjilu`, `shifeijilu`, `shiyaojilu`, `caizhaishijian`, `shengchanzhehao`, `shengchanzheming`) VALUES (3, '2025-03-23 16:43:22', '溯源码3', '农产品名称3', '农产品品种3', 'upload/shengchanguochengzhuizong_chanpintupian3.jpg,upload/shengchanguochengzhuizong_chanpintupian4.jpg,upload/shengchanguochengzhuizong_chanpintupian5.jpg', '土壤酸碱度3', '土壤肥力值3', '灌溉3', '播种记录3', '施肥记录3', '施药记录3', '2025-03-23', '44', '柳柳');
INSERT INTO `shengchanguochengzhuizong` (`id`, `addtime`, `suyuanma`, `nongchanpinmingcheng`, `nongchanpinpinzhong`, `chanpintupian`, `turangsuanjiandu`, `turangfeilizhi`, `guangai`, `bozhongjilu`, `shifeijilu`, `shiyaojilu`, `caizhaishijian`, `shengchanzhehao`, `shengchanzheming`) VALUES (4, '2025-03-23 16:43:22', '溯源码4', '农产品名称4', '农产品品种4', 'upload/shengchanguochengzhuizong_chanpintupian4.jpg,upload/shengchanguochengzhuizong_chanpintupian5.jpg,upload/shengchanguochengzhuizong_chanpintupian6.jpg', '土壤酸碱度4', '土壤肥力值4', '灌溉4', '播种记录4', '施肥记录4', '施药记录4', '2025-03-23', '44', '柳柳');
INSERT INTO `shengchanguochengzhuizong` (`id`, `addtime`, `suyuanma`, `nongchanpinmingcheng`, `nongchanpinpinzhong`, `chanpintupian`, `turangsuanjiandu`, `turangfeilizhi`, `guangai`, `bozhongjilu`, `shifeijilu`, `shiyaojilu`, `caizhaishijian`, `shengchanzhehao`, `shengchanzheming`) VALUES (5, '2025-03-23 16:43:22', '溯源码5', '农产品名称5', '农产品品种5', 'upload/shengchanguochengzhuizong_chanpintupian5.jpg,upload/shengchanguochengzhuizong_chanpintupian6.jpg,upload/shengchanguochengzhuizong_chanpintupian7.jpg', '土壤酸碱度5', '土壤肥力值5', '灌溉5', '播种记录5', '施肥记录5', '施药记录5', '2025-03-23', '生产者号5', '生产者名5');
INSERT INTO `shengchanguochengzhuizong` (`id`, `addtime`, `suyuanma`, `nongchanpinmingcheng`, `nongchanpinpinzhong`, `chanpintupian`, `turangsuanjiandu`, `turangfeilizhi`, `guangai`, `bozhongjilu`, `shifeijilu`, `shiyaojilu`, `caizhaishijian`, `shengchanzhehao`, `shengchanzheming`) VALUES (6, '2025-03-23 16:43:22', '溯源码6', '农产品名称6', '农产品品种6', 'upload/shengchanguochengzhuizong_chanpintupian6.jpg,upload/shengchanguochengzhuizong_chanpintupian7.jpg,upload/shengchanguochengzhuizong_chanpintupian8.jpg', '土壤酸碱度6', '土壤肥力值6', '灌溉6', '播种记录6', '施肥记录6', '施药记录6', '2025-03-23', '生产者号6', '生产者名6');
INSERT INTO `shengchanguochengzhuizong` (`id`, `addtime`, `suyuanma`, `nongchanpinmingcheng`, `nongchanpinpinzhong`, `chanpintupian`, `turangsuanjiandu`, `turangfeilizhi`, `guangai`, `bozhongjilu`, `shifeijilu`, `shiyaojilu`, `caizhaishijian`, `shengchanzhehao`, `shengchanzheming`) VALUES (7, '2025-03-23 16:43:22', '溯源码7', '农产品名称7', '农产品品种7', 'upload/shengchanguochengzhuizong_chanpintupian7.jpg,upload/shengchanguochengzhuizong_chanpintupian8.jpg,upload/shengchanguochengzhuizong_chanpintupian1.jpg', '土壤酸碱度7', '土壤肥力值7', '灌溉7', '播种记录7', '施肥记录7', '施药记录7', '2025-03-23', '生产者号7', '生产者名7');
INSERT INTO `shengchanguochengzhuizong` (`id`, `addtime`, `suyuanma`, `nongchanpinmingcheng`, `nongchanpinpinzhong`, `chanpintupian`, `turangsuanjiandu`, `turangfeilizhi`, `guangai`, `bozhongjilu`, `shifeijilu`, `shiyaojilu`, `caizhaishijian`, `shengchanzhehao`, `shengchanzheming`) VALUES (8, '2025-03-23 16:43:22', '溯源码8', '农产品名称8', '农产品品种8', 'upload/shengchanguochengzhuizong_chanpintupian8.jpg,upload/shengchanguochengzhuizong_chanpintupian1.jpg,upload/shengchanguochengzhuizong_chanpintupian2.jpg', '土壤酸碱度8', '土壤肥力值8', '灌溉8', '播种记录8', '施肥记录8', '施药记录8', '2025-03-23', '生产者号8', '生产者名8');
INSERT INTO `shengchanguochengzhuizong` (`id`, `addtime`, `suyuanma`, `nongchanpinmingcheng`, `nongchanpinpinzhong`, `chanpintupian`, `turangsuanjiandu`, `turangfeilizhi`, `guangai`, `bozhongjilu`, `shifeijilu`, `shiyaojilu`, `caizhaishijian`, `shengchanzhehao`, `shengchanzheming`) VALUES (9, '2025-03-23 16:48:31', '1742719642215', '阿斯蒂芬', '水电费', 'upload/1742719662707.jpeg', '22', '11', '<p>阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬</p>', '<p>阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬</p>', '<p>阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬</p>', '<p>阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯蒂芬</p>', '2025-03-24', '44', '柳柳');
COMMIT;

-- ----------------------------
-- Table structure for shengchanzhe
-- ----------------------------
DROP TABLE IF EXISTS `shengchanzhe`;
CREATE TABLE `shengchanzhe` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shengchanzhehao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '生产者号',
  `mima` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `shengchanzheming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生产者名',
  `xingbie` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `dianhua` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话',
  `touxiang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shengchanzhehao` (`shengchanzhehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1742719631992 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='生产者';

-- ----------------------------
-- Records of shengchanzhe
-- ----------------------------
BEGIN;
INSERT INTO `shengchanzhe` (`id`, `addtime`, `shengchanzhehao`, `mima`, `shengchanzheming`, `xingbie`, `dianhua`, `touxiang`) VALUES (41, '2025-03-23 16:43:22', '生产者号1', '123456', '生产者名1', '男', '13823888881', 'upload/shengchanzhe_touxiang1.jpg');
INSERT INTO `shengchanzhe` (`id`, `addtime`, `shengchanzhehao`, `mima`, `shengchanzheming`, `xingbie`, `dianhua`, `touxiang`) VALUES (42, '2025-03-23 16:43:22', '生产者号2', '123456', '生产者名2', '男', '13823888882', 'upload/shengchanzhe_touxiang2.jpg');
INSERT INTO `shengchanzhe` (`id`, `addtime`, `shengchanzhehao`, `mima`, `shengchanzheming`, `xingbie`, `dianhua`, `touxiang`) VALUES (43, '2025-03-23 16:43:22', '生产者号3', '123456', '生产者名3', '男', '13823888883', 'upload/shengchanzhe_touxiang3.jpg');
INSERT INTO `shengchanzhe` (`id`, `addtime`, `shengchanzhehao`, `mima`, `shengchanzheming`, `xingbie`, `dianhua`, `touxiang`) VALUES (44, '2025-03-23 16:43:22', '生产者号4', '123456', '生产者名4', '男', '13823888884', 'upload/shengchanzhe_touxiang4.jpg');
INSERT INTO `shengchanzhe` (`id`, `addtime`, `shengchanzhehao`, `mima`, `shengchanzheming`, `xingbie`, `dianhua`, `touxiang`) VALUES (45, '2025-03-23 16:43:22', '生产者号5', '123456', '生产者名5', '男', '13823888885', 'upload/shengchanzhe_touxiang5.jpg');
INSERT INTO `shengchanzhe` (`id`, `addtime`, `shengchanzhehao`, `mima`, `shengchanzheming`, `xingbie`, `dianhua`, `touxiang`) VALUES (46, '2025-03-23 16:43:22', '生产者号6', '123456', '生产者名6', '男', '13823888886', 'upload/shengchanzhe_touxiang6.jpg');
INSERT INTO `shengchanzhe` (`id`, `addtime`, `shengchanzhehao`, `mima`, `shengchanzheming`, `xingbie`, `dianhua`, `touxiang`) VALUES (47, '2025-03-23 16:43:22', '生产者号7', '123456', '生产者名7', '男', '13823888887', 'upload/shengchanzhe_touxiang7.jpg');
INSERT INTO `shengchanzhe` (`id`, `addtime`, `shengchanzhehao`, `mima`, `shengchanzheming`, `xingbie`, `dianhua`, `touxiang`) VALUES (48, '2025-03-23 16:43:22', '生产者号8', '123456', '生产者名8', '男', '13823888888', 'upload/shengchanzhe_touxiang8.jpg');
INSERT INTO `shengchanzhe` (`id`, `addtime`, `shengchanzhehao`, `mima`, `shengchanzheming`, `xingbie`, `dianhua`, `touxiang`) VALUES (1742719631991, '2025-03-23 16:47:11', '44', '44', '柳柳', '女', '13966666666', 'upload/1742719629675.jpeg');
COMMIT;

-- ----------------------------
-- Table structure for shouhuoxinxi
-- ----------------------------
DROP TABLE IF EXISTS `shouhuoxinxi`;
CREATE TABLE `shouhuoxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `suyuanma` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '溯源码',
  `chanpinmingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产品名称',
  `chanpinpinzhong` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '产品品种',
  `jingxiaoshangming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经销商名',
  `tupian` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '图片',
  `jiagongqiye` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '加工企业',
  `shengchanriqi` date NOT NULL COMMENT '生产日期',
  `jingxiaoshanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经销商号',
  `jiage` int DEFAULT NULL COMMENT '价格',
  `shuliang` int DEFAULT NULL COMMENT '数量',
  `heji` int DEFAULT NULL COMMENT '合计',
  `zhanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `querenshijian` datetime DEFAULT NULL COMMENT '确认时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='收货信息';

-- ----------------------------
-- Records of shouhuoxinxi
-- ----------------------------
BEGIN;
INSERT INTO `shouhuoxinxi` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jingxiaoshanghao`, `jiage`, `shuliang`, `heji`, `zhanghao`, `xingming`, `querenshijian`) VALUES (1, '2025-03-23 16:43:22', '溯源码1', '产品名称1', '产品品种1', '上海经销商', 'upload/shouhuoxinxi_tupian1.jpg,upload/shouhuoxinxi_tupian2.jpg,upload/shouhuoxinxi_tupian3.jpg', '加工企业1', '2025-03-23', '22', 1, 1, 1, '账号1', '姓名1', '2025-03-23 16:43:22');
INSERT INTO `shouhuoxinxi` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jingxiaoshanghao`, `jiage`, `shuliang`, `heji`, `zhanghao`, `xingming`, `querenshijian`) VALUES (2, '2025-03-23 16:43:22', '溯源码2', '产品名称2', '产品品种2', '上海经销商', 'upload/shouhuoxinxi_tupian2.jpg,upload/shouhuoxinxi_tupian3.jpg,upload/shouhuoxinxi_tupian4.jpg', '加工企业2', '2025-03-23', '22', 2, 2, 2, '账号2', '姓名2', '2025-03-23 16:43:22');
INSERT INTO `shouhuoxinxi` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jingxiaoshanghao`, `jiage`, `shuliang`, `heji`, `zhanghao`, `xingming`, `querenshijian`) VALUES (3, '2025-03-23 16:43:22', '溯源码3', '产品名称3', '产品品种3', '上海经销商', 'upload/shouhuoxinxi_tupian3.jpg,upload/shouhuoxinxi_tupian4.jpg,upload/shouhuoxinxi_tupian5.jpg', '加工企业3', '2025-03-23', '22', 3, 3, 3, '账号3', '姓名3', '2025-03-23 16:43:22');
INSERT INTO `shouhuoxinxi` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jingxiaoshanghao`, `jiage`, `shuliang`, `heji`, `zhanghao`, `xingming`, `querenshijian`) VALUES (4, '2025-03-23 16:43:22', '溯源码4', '产品名称4', '产品品种4', '上海经销商', 'upload/shouhuoxinxi_tupian4.jpg,upload/shouhuoxinxi_tupian5.jpg,upload/shouhuoxinxi_tupian6.jpg', '加工企业4', '2025-03-23', '22', 4, 4, 4, '账号4', '姓名4', '2025-03-23 16:43:22');
INSERT INTO `shouhuoxinxi` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jingxiaoshanghao`, `jiage`, `shuliang`, `heji`, `zhanghao`, `xingming`, `querenshijian`) VALUES (5, '2025-03-23 16:43:22', '溯源码5', '产品名称5', '产品品种5', '经销商名5', 'upload/shouhuoxinxi_tupian5.jpg,upload/shouhuoxinxi_tupian6.jpg,upload/shouhuoxinxi_tupian7.jpg', '加工企业5', '2025-03-23', '经销商号5', 5, 5, 5, '账号5', '姓名5', '2025-03-23 16:43:22');
INSERT INTO `shouhuoxinxi` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jingxiaoshanghao`, `jiage`, `shuliang`, `heji`, `zhanghao`, `xingming`, `querenshijian`) VALUES (6, '2025-03-23 16:43:22', '溯源码6', '产品名称6', '产品品种6', '经销商名6', 'upload/shouhuoxinxi_tupian6.jpg,upload/shouhuoxinxi_tupian7.jpg,upload/shouhuoxinxi_tupian8.jpg', '加工企业6', '2025-03-23', '经销商号6', 6, 6, 6, '账号6', '姓名6', '2025-03-23 16:43:22');
INSERT INTO `shouhuoxinxi` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jingxiaoshanghao`, `jiage`, `shuliang`, `heji`, `zhanghao`, `xingming`, `querenshijian`) VALUES (7, '2025-03-23 16:43:22', '溯源码7', '产品名称7', '产品品种7', '经销商名7', 'upload/shouhuoxinxi_tupian7.jpg,upload/shouhuoxinxi_tupian8.jpg,upload/shouhuoxinxi_tupian1.jpg', '加工企业7', '2025-03-23', '经销商号7', 7, 7, 7, '账号7', '姓名7', '2025-03-23 16:43:22');
INSERT INTO `shouhuoxinxi` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jingxiaoshanghao`, `jiage`, `shuliang`, `heji`, `zhanghao`, `xingming`, `querenshijian`) VALUES (8, '2025-03-23 16:43:22', '溯源码8', '产品名称8', '产品品种8', '经销商名8', 'upload/shouhuoxinxi_tupian8.jpg,upload/shouhuoxinxi_tupian1.jpg,upload/shouhuoxinxi_tupian2.jpg', '加工企业8', '2025-03-23', '经销商号8', 8, 8, 8, '账号8', '姓名8', '2025-03-23 16:43:22');
INSERT INTO `shouhuoxinxi` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jingxiaoshanghao`, `jiage`, `shuliang`, `heji`, `zhanghao`, `xingming`, `querenshijian`) VALUES (9, '2025-03-23 16:53:25', '1742719642215', '水电费水电费', '省份时段', '上海经销商', 'upload/1742719743160.jpg', '阿斯蒂芬水电费', '2025-03-24', '22', 23, 2, 46, '11', '张三', '2025-03-23 16:53:11');
COMMIT;

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
BEGIN;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES (1, 1742719631991, '44', 'shengchanzhe', '生产者', '3csnkroo7d1fk6vk039ls3v9bmesue0t', '2025-03-23 16:47:21', '2026-02-01 12:01:58');
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES (2, 1742719570639, '22', 'jingxiaoshang', '经销商', 'w3ga9lniifiwrze5u86hyc429yrlmdi2', '2025-03-23 16:48:44', '2026-02-01 12:16:09');
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES (3, 1742719588177, '33', 'jianguanzhe', '监管者', 'fksfelm7mp6a4ug4wuwomb4x3duxpujd', '2025-03-23 16:49:42', '2026-02-01 12:02:49');
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES (4, 1742719525922, '11', 'xiaofeizhe', '消费者', 'zdx55pi5agvnrhvz6jfytpolf99fnc7z', '2025-03-23 16:51:35', '2025-03-23 17:53:52');
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES (5, 1, 'admin', 'users', '管理员', 'lypz73lp63xyj8zllk4rtrxajez1joti', '2025-03-23 16:53:40', '2026-02-01 12:09:12');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `image` varchar(200) DEFAULT NULL COMMENT '头像',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员表';

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `username`, `password`, `image`, `role`, `addtime`) VALUES (1, 'admin', 'admin', 'upload/image1.jpg', '管理员', '2025-03-23 16:43:22');
COMMIT;

-- ----------------------------
-- Table structure for wuliuyunshu
-- ----------------------------
DROP TABLE IF EXISTS `wuliuyunshu`;
CREATE TABLE `wuliuyunshu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `suyuanma` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '溯源码',
  `chanpinmingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产品名称',
  `chanpinpinzhong` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '产品品种',
  `jingxiaoshangming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经销商名',
  `tupian` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '图片',
  `jiagongqiye` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '加工企业',
  `shengchanriqi` date NOT NULL COMMENT '生产日期',
  `jingxiaoshanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经销商号',
  `jiage` int DEFAULT NULL COMMENT '价格',
  `shuliang` int DEFAULT NULL COMMENT '购买数量',
  `heji` int DEFAULT NULL COMMENT '合计',
  `zhanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `fahuoshijian` datetime DEFAULT NULL COMMENT '发货时间',
  `wuliuxinxi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '物流信息',
  `dingdanzhuangtai` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '订单状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='物流运输';

-- ----------------------------
-- Records of wuliuyunshu
-- ----------------------------
BEGIN;
INSERT INTO `wuliuyunshu` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jingxiaoshanghao`, `jiage`, `shuliang`, `heji`, `zhanghao`, `xingming`, `fahuoshijian`, `wuliuxinxi`, `dingdanzhuangtai`) VALUES (1, '2025-03-23 16:43:22', '溯源码1', '产品名称1', '产品品种1', '上海经销商', 'upload/wuliuyunshu_tupian1.jpg,upload/wuliuyunshu_tupian2.jpg,upload/wuliuyunshu_tupian3.jpg', '加工企业1', '2025-03-23', '22', 1, 1, 1, '账号1', '姓名1', '2025-03-23 16:43:22', '物流信息1', '已确认');
INSERT INTO `wuliuyunshu` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jingxiaoshanghao`, `jiage`, `shuliang`, `heji`, `zhanghao`, `xingming`, `fahuoshijian`, `wuliuxinxi`, `dingdanzhuangtai`) VALUES (2, '2025-03-23 16:43:22', '溯源码2', '产品名称2', '产品品种2', '上海经销商', 'upload/wuliuyunshu_tupian2.jpg,upload/wuliuyunshu_tupian3.jpg,upload/wuliuyunshu_tupian4.jpg', '加工企业2', '2025-03-23', '22', 2, 2, 2, '账号2', '姓名2', '2025-03-23 16:43:22', '物流信息2', '已确认');
INSERT INTO `wuliuyunshu` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jingxiaoshanghao`, `jiage`, `shuliang`, `heji`, `zhanghao`, `xingming`, `fahuoshijian`, `wuliuxinxi`, `dingdanzhuangtai`) VALUES (3, '2025-03-23 16:43:22', '溯源码3', '产品名称3', '产品品种3', '上海经销商', 'upload/wuliuyunshu_tupian3.jpg,upload/wuliuyunshu_tupian4.jpg,upload/wuliuyunshu_tupian5.jpg', '加工企业3', '2025-03-23', '22', 3, 3, 3, '账号3', '姓名3', '2025-03-23 16:43:22', '物流信息3', '已确认');
INSERT INTO `wuliuyunshu` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jingxiaoshanghao`, `jiage`, `shuliang`, `heji`, `zhanghao`, `xingming`, `fahuoshijian`, `wuliuxinxi`, `dingdanzhuangtai`) VALUES (4, '2025-03-23 16:43:22', '溯源码4', '产品名称4', '产品品种4', '上海经销商', 'upload/wuliuyunshu_tupian4.jpg,upload/wuliuyunshu_tupian5.jpg,upload/wuliuyunshu_tupian6.jpg', '加工企业4', '2025-03-23', '22', 4, 4, 4, '账号4', '姓名4', '2025-03-23 16:43:22', '物流信息4', '已确认');
INSERT INTO `wuliuyunshu` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jingxiaoshanghao`, `jiage`, `shuliang`, `heji`, `zhanghao`, `xingming`, `fahuoshijian`, `wuliuxinxi`, `dingdanzhuangtai`) VALUES (5, '2025-03-23 16:43:22', '溯源码5', '产品名称5', '产品品种5', '经销商名5', 'upload/wuliuyunshu_tupian5.jpg,upload/wuliuyunshu_tupian6.jpg,upload/wuliuyunshu_tupian7.jpg', '加工企业5', '2025-03-23', '经销商号5', 5, 5, 5, '账号5', '姓名5', '2025-03-23 16:43:22', '物流信息5', '已确认');
INSERT INTO `wuliuyunshu` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jingxiaoshanghao`, `jiage`, `shuliang`, `heji`, `zhanghao`, `xingming`, `fahuoshijian`, `wuliuxinxi`, `dingdanzhuangtai`) VALUES (6, '2025-03-23 16:43:22', '溯源码6', '产品名称6', '产品品种6', '经销商名6', 'upload/wuliuyunshu_tupian6.jpg,upload/wuliuyunshu_tupian7.jpg,upload/wuliuyunshu_tupian8.jpg', '加工企业6', '2025-03-23', '经销商号6', 6, 6, 6, '账号6', '姓名6', '2025-03-23 16:43:22', '物流信息6', '已确认');
INSERT INTO `wuliuyunshu` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jingxiaoshanghao`, `jiage`, `shuliang`, `heji`, `zhanghao`, `xingming`, `fahuoshijian`, `wuliuxinxi`, `dingdanzhuangtai`) VALUES (7, '2025-03-23 16:43:22', '溯源码7', '产品名称7', '产品品种7', '经销商名7', 'upload/wuliuyunshu_tupian7.jpg,upload/wuliuyunshu_tupian8.jpg,upload/wuliuyunshu_tupian1.jpg', '加工企业7', '2025-03-23', '经销商号7', 7, 7, 7, '账号7', '姓名7', '2025-03-23 16:43:22', '物流信息7', '已确认');
INSERT INTO `wuliuyunshu` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jingxiaoshanghao`, `jiage`, `shuliang`, `heji`, `zhanghao`, `xingming`, `fahuoshijian`, `wuliuxinxi`, `dingdanzhuangtai`) VALUES (8, '2025-03-23 16:43:22', '溯源码8', '产品名称8', '产品品种8', '经销商名8', 'upload/wuliuyunshu_tupian8.jpg,upload/wuliuyunshu_tupian1.jpg,upload/wuliuyunshu_tupian2.jpg', '加工企业8', '2025-03-23', '经销商号8', 8, 8, 8, '账号8', '姓名8', '2025-03-23 16:43:22', '物流信息8', '已确认');
INSERT INTO `wuliuyunshu` (`id`, `addtime`, `suyuanma`, `chanpinmingcheng`, `chanpinpinzhong`, `jingxiaoshangming`, `tupian`, `jiagongqiye`, `shengchanriqi`, `jingxiaoshanghao`, `jiage`, `shuliang`, `heji`, `zhanghao`, `xingming`, `fahuoshijian`, `wuliuxinxi`, `dingdanzhuangtai`) VALUES (9, '2025-03-23 16:53:00', '1742719642215', '水电费水电费', '省份时段', '上海经销商', 'upload/1742719743160.jpg', '阿斯蒂芬水电费', '2025-03-24', '22', 23, 2, 46, '11', '张三', '2025-03-23 16:52:45', '<p>2024年1月10日 下午6:59:17&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>2024年1月10日 下午6:57:56</p><p>离开【淮北市邮件处理中心】,下一站【邮件处理中心】</p><p>2024年1月10日 上午9:24:15</p><p>到达【淮北市邮件处理中心】</p><p>2024年1月10日 上午8:29:06</p><p>离开【濉溪快包】,【淮北市邮件处理中心】</p>', '已确认');
COMMIT;

-- ----------------------------
-- Table structure for xiaofeizhe
-- ----------------------------
DROP TABLE IF EXISTS `xiaofeizhe`;
CREATE TABLE `xiaofeizhe` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '账号',
  `mima` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机',
  `touxiang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1769868299564 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='消费者';

-- ----------------------------
-- Records of xiaofeizhe
-- ----------------------------
BEGIN;
INSERT INTO `xiaofeizhe` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `shouji`, `touxiang`) VALUES (11, '2025-03-23 16:43:22', '账号1', '123456', '姓名1', '男', '13823888881', 'upload/xiaofeizhe_touxiang1.jpg');
INSERT INTO `xiaofeizhe` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `shouji`, `touxiang`) VALUES (12, '2025-03-23 16:43:22', '账号2', '123456', '姓名2', '男', '13823888882', 'upload/xiaofeizhe_touxiang2.jpg');
INSERT INTO `xiaofeizhe` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `shouji`, `touxiang`) VALUES (13, '2025-03-23 16:43:22', '账号3', '123456', '姓名3', '男', '13823888883', 'upload/xiaofeizhe_touxiang3.jpg');
INSERT INTO `xiaofeizhe` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `shouji`, `touxiang`) VALUES (14, '2025-03-23 16:43:22', '账号4', '123456', '姓名4', '男', '13823888884', 'upload/xiaofeizhe_touxiang4.jpg');
INSERT INTO `xiaofeizhe` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `shouji`, `touxiang`) VALUES (15, '2025-03-23 16:43:22', '账号5', '123456', '姓名5', '男', '13823888885', 'upload/xiaofeizhe_touxiang5.jpg');
INSERT INTO `xiaofeizhe` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `shouji`, `touxiang`) VALUES (16, '2025-03-23 16:43:22', '账号6', '123456', '姓名6', '男', '13823888886', 'upload/xiaofeizhe_touxiang6.jpg');
INSERT INTO `xiaofeizhe` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `shouji`, `touxiang`) VALUES (17, '2025-03-23 16:43:22', '账号7', '123456', '姓名7', '男', '13823888887', 'upload/xiaofeizhe_touxiang7.jpg');
INSERT INTO `xiaofeizhe` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `shouji`, `touxiang`) VALUES (18, '2025-03-23 16:43:22', '账号8', '123456', '姓名8', '男', '13823888888', 'upload/xiaofeizhe_touxiang8.jpg');
INSERT INTO `xiaofeizhe` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `shouji`, `touxiang`) VALUES (1742719525922, '2025-03-23 16:45:25', '11', '11', '张三', '女', '13922222222', 'upload/1742719524615.jpg');
INSERT INTO `xiaofeizhe` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `shouji`, `touxiang`) VALUES (1769868299563, '2026-01-31 22:04:59', 'admin', 'admin', 'admin', '', '', '');
COMMIT;

-- ----------------------------
-- Table structure for zhiliangjiance
-- ----------------------------
DROP TABLE IF EXISTS `zhiliangjiance`;
CREATE TABLE `zhiliangjiance` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `suyuanma` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '溯源码',
  `jingxiaoshangming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经销商名',
  `chanpinmingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产品名称',
  `chanpinpinzhong` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '产品品种',
  `tupian` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '图片',
  `jiagongqiye` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '加工企业',
  `shuliang` int DEFAULT NULL COMMENT '数量',
  `shengchanriqi` date NOT NULL COMMENT '生产日期',
  `jiagonggongyi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '加工工艺',
  `jiagongliucheng` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '加工流程',
  `tianjiaji` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '添加剂',
  `jingxiaoshanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经销商号',
  `nongchanpinmingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '农产品名称',
  `jianguanzhezhanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '监管者账号',
  `jianguanzhexingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '监管者姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='质量检测';

-- ----------------------------
-- Records of zhiliangjiance
-- ----------------------------
BEGIN;
INSERT INTO `zhiliangjiance` (`id`, `addtime`, `suyuanma`, `jingxiaoshangming`, `chanpinmingcheng`, `chanpinpinzhong`, `tupian`, `jiagongqiye`, `shuliang`, `shengchanriqi`, `jiagonggongyi`, `jiagongliucheng`, `tianjiaji`, `jingxiaoshanghao`, `nongchanpinmingcheng`, `jianguanzhezhanghao`, `jianguanzhexingming`) VALUES (1, '2025-03-23 16:43:22', '溯源码1', '经销商名1', '产品名称1', '产品品种1', 'upload/zhiliangjiance_tupian1.jpg,upload/zhiliangjiance_tupian2.jpg,upload/zhiliangjiance_tupian3.jpg', '加工企业1', 1, '2025-03-23', '加工工艺1', '加工流程1', '添加剂1', '经销商号1', '农产品名称1', '33', '王五');
INSERT INTO `zhiliangjiance` (`id`, `addtime`, `suyuanma`, `jingxiaoshangming`, `chanpinmingcheng`, `chanpinpinzhong`, `tupian`, `jiagongqiye`, `shuliang`, `shengchanriqi`, `jiagonggongyi`, `jiagongliucheng`, `tianjiaji`, `jingxiaoshanghao`, `nongchanpinmingcheng`, `jianguanzhezhanghao`, `jianguanzhexingming`) VALUES (2, '2025-03-23 16:43:22', '溯源码2', '经销商名2', '产品名称2', '产品品种2', 'upload/zhiliangjiance_tupian2.jpg,upload/zhiliangjiance_tupian3.jpg,upload/zhiliangjiance_tupian4.jpg', '加工企业2', 2, '2025-03-23', '加工工艺2', '加工流程2', '添加剂2', '经销商号2', '农产品名称2', '33', '王五');
INSERT INTO `zhiliangjiance` (`id`, `addtime`, `suyuanma`, `jingxiaoshangming`, `chanpinmingcheng`, `chanpinpinzhong`, `tupian`, `jiagongqiye`, `shuliang`, `shengchanriqi`, `jiagonggongyi`, `jiagongliucheng`, `tianjiaji`, `jingxiaoshanghao`, `nongchanpinmingcheng`, `jianguanzhezhanghao`, `jianguanzhexingming`) VALUES (3, '2025-03-23 16:43:22', '溯源码3', '经销商名3', '产品名称3', '产品品种3', 'upload/zhiliangjiance_tupian3.jpg,upload/zhiliangjiance_tupian4.jpg,upload/zhiliangjiance_tupian5.jpg', '加工企业3', 3, '2025-03-23', '加工工艺3', '加工流程3', '添加剂3', '经销商号3', '农产品名称3', '33', '王五');
INSERT INTO `zhiliangjiance` (`id`, `addtime`, `suyuanma`, `jingxiaoshangming`, `chanpinmingcheng`, `chanpinpinzhong`, `tupian`, `jiagongqiye`, `shuliang`, `shengchanriqi`, `jiagonggongyi`, `jiagongliucheng`, `tianjiaji`, `jingxiaoshanghao`, `nongchanpinmingcheng`, `jianguanzhezhanghao`, `jianguanzhexingming`) VALUES (4, '2025-03-23 16:43:22', '溯源码4', '经销商名4', '产品名称4', '产品品种4', 'upload/zhiliangjiance_tupian4.jpg,upload/zhiliangjiance_tupian5.jpg,upload/zhiliangjiance_tupian6.jpg', '加工企业4', 4, '2025-03-23', '加工工艺4', '加工流程4', '添加剂4', '经销商号4', '农产品名称4', '33', '王五');
INSERT INTO `zhiliangjiance` (`id`, `addtime`, `suyuanma`, `jingxiaoshangming`, `chanpinmingcheng`, `chanpinpinzhong`, `tupian`, `jiagongqiye`, `shuliang`, `shengchanriqi`, `jiagonggongyi`, `jiagongliucheng`, `tianjiaji`, `jingxiaoshanghao`, `nongchanpinmingcheng`, `jianguanzhezhanghao`, `jianguanzhexingming`) VALUES (5, '2025-03-23 16:43:22', '溯源码5', '上海经销商', '产品名称5', '产品品种5', 'upload/zhiliangjiance_tupian5.jpg,upload/zhiliangjiance_tupian6.jpg,upload/zhiliangjiance_tupian7.jpg', '加工企业5', 5, '2025-03-23', '加工工艺5', '加工流程5', '添加剂5', '22', '农产品名称5', '监管者账号5', '监管者姓名5');
INSERT INTO `zhiliangjiance` (`id`, `addtime`, `suyuanma`, `jingxiaoshangming`, `chanpinmingcheng`, `chanpinpinzhong`, `tupian`, `jiagongqiye`, `shuliang`, `shengchanriqi`, `jiagonggongyi`, `jiagongliucheng`, `tianjiaji`, `jingxiaoshanghao`, `nongchanpinmingcheng`, `jianguanzhezhanghao`, `jianguanzhexingming`) VALUES (6, '2025-03-23 16:43:22', '溯源码6', '上海经销商', '产品名称6', '产品品种6', 'upload/zhiliangjiance_tupian6.jpg,upload/zhiliangjiance_tupian7.jpg,upload/zhiliangjiance_tupian8.jpg', '加工企业6', 6, '2025-03-23', '加工工艺6', '加工流程6', '添加剂6', '22', '农产品名称6', '监管者账号6', '监管者姓名6');
INSERT INTO `zhiliangjiance` (`id`, `addtime`, `suyuanma`, `jingxiaoshangming`, `chanpinmingcheng`, `chanpinpinzhong`, `tupian`, `jiagongqiye`, `shuliang`, `shengchanriqi`, `jiagonggongyi`, `jiagongliucheng`, `tianjiaji`, `jingxiaoshanghao`, `nongchanpinmingcheng`, `jianguanzhezhanghao`, `jianguanzhexingming`) VALUES (7, '2025-03-23 16:43:22', '溯源码7', '上海经销商', '产品名称7', '产品品种7', 'upload/zhiliangjiance_tupian7.jpg,upload/zhiliangjiance_tupian8.jpg,upload/zhiliangjiance_tupian1.jpg', '加工企业7', 7, '2025-03-23', '加工工艺7', '加工流程7', '添加剂7', '22', '农产品名称7', '监管者账号7', '监管者姓名7');
INSERT INTO `zhiliangjiance` (`id`, `addtime`, `suyuanma`, `jingxiaoshangming`, `chanpinmingcheng`, `chanpinpinzhong`, `tupian`, `jiagongqiye`, `shuliang`, `shengchanriqi`, `jiagonggongyi`, `jiagongliucheng`, `tianjiaji`, `jingxiaoshanghao`, `nongchanpinmingcheng`, `jianguanzhezhanghao`, `jianguanzhexingming`) VALUES (8, '2025-03-23 16:43:22', '溯源码8', '上海经销商', '产品名称8', '产品品种8', 'upload/zhiliangjiance_tupian8.jpg,upload/zhiliangjiance_tupian1.jpg,upload/zhiliangjiance_tupian2.jpg', '加工企业8', 8, '2025-03-23', '加工工艺8', '加工流程8', '添加剂8', '22', '农产品名称8', '监管者账号8', '监管者姓名8');
INSERT INTO `zhiliangjiance` (`id`, `addtime`, `suyuanma`, `jingxiaoshangming`, `chanpinmingcheng`, `chanpinpinzhong`, `tupian`, `jiagongqiye`, `shuliang`, `shengchanriqi`, `jiagonggongyi`, `jiagongliucheng`, `tianjiaji`, `jingxiaoshanghao`, `nongchanpinmingcheng`, `jianguanzhezhanghao`, `jianguanzhexingming`) VALUES (9, '2025-03-23 16:49:56', '1742719642215', '上海经销商', '水电费水电费', '省份时段', 'upload/1742719743160.jpg', '阿斯蒂芬水电费', 22, '2025-03-24', '<p>水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费</p>', '<p>水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费</p>', '<p>水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费水电费</p>', '22', '阿斯蒂芬', '33', '王五');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
