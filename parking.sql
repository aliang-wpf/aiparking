
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_car_manage
-- ----------------------------
DROP TABLE IF EXISTS `app_car_manage`;
CREATE TABLE `app_car_manage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gender` varchar(1) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `nickname` varchar(100) DEFAULT NULL,
  `org_id` bigint(20) NOT NULL,
  `org_name` varchar(500) DEFAULT NULL,
  `park_manage_id` bigint(20) NOT NULL,
  `park_manage_name` varchar(500) DEFAULT NULL,
  `parking_lot` varchar(100) DEFAULT NULL,
  `plate_number` varchar(100) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `type` smallint(6) DEFAULT NULL,
  `user_id_create` bigint(20) DEFAULT NULL,
  `validity_time` datetime DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_car_manage
-- ----------------------------
BEGIN;
INSERT INTO `app_car_manage` VALUES (1, '1', '2023-11-11 21:58:50', '2023-11-19 19:49:35', NULL, '212112', 36, '华为', 2, '测试', '2121', '212121', NULL, 1, 1, NULL, '2023-04-26 00:00:00', '19003852926');
COMMIT;

-- ----------------------------
-- Table structure for app_car_park_manage
-- ----------------------------
DROP TABLE IF EXISTS `app_car_park_manage`;
CREATE TABLE `app_car_park_manage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `free_time` int(11) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `max_money` decimal(18,2) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `org_id` bigint(20) NOT NULL,
  `org_name` varchar(500) DEFAULT NULL,
  `parking_space_number` int(11) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `time_unit` int(11) DEFAULT NULL,
  `unit_cost` decimal(18,2) DEFAULT NULL,
  `user_id_create` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_car_park_manage
-- ----------------------------
BEGIN;
INSERT INTO `app_car_park_manage` VALUES (2, 60, '2023-03-27 21:52:08', '2023-03-27 21:52:08', 100.00, '测试', 36, '华为', 12, 1, 30, 5.00, NULL);
COMMIT;

-- ----------------------------
-- Table structure for app_car_parking_record
-- ----------------------------
DROP TABLE IF EXISTS `app_car_parking_record`;
CREATE TABLE `app_car_parking_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cost` decimal(18,2) DEFAULT NULL,
  `gmt_into` datetime DEFAULT NULL,
  `gmt_out` datetime DEFAULT NULL,
  `org_id` bigint(20) NOT NULL,
  `org_name` varchar(500) DEFAULT NULL,
  `park_manage_id` bigint(20) NOT NULL,
  `park_manage_name` varchar(500) DEFAULT NULL,
  `plate_number` varchar(100) DEFAULT NULL,
  `type` smallint(6) DEFAULT NULL,
  `order_no` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_car_parking_record
-- ----------------------------
BEGIN;
INSERT INTO `app_car_parking_record` VALUES (1, NULL, '2023-04-19 21:43:41', NULL, 36, '华为', 2, '测试', '豫C66EV8', 2, NULL);
COMMIT;

-- ----------------------------
-- Table structure for app_order
-- ----------------------------
DROP TABLE IF EXISTS `app_order`;
CREATE TABLE `app_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` varchar(255) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `order_no` varchar(200) DEFAULT NULL,
  `org_Id` bigint(20) NOT NULL,
  `park_manage_id` bigint(20) NOT NULL,
  `plate_number` varchar(100) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `total_Fee` decimal(18,2) DEFAULT NULL,
  `type` smallint(6) DEFAULT NULL,
  `user_create` bigint(20) DEFAULT NULL,
  `validity_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_order
-- ----------------------------
BEGIN;
INSERT INTO `app_order` VALUES (1, '{}', '2023-07-06 10:37:14', '123123123', 38, 2, '豫C267EF', '耳朵上', 1, 35.00, 0, 1, '2023-07-07 10:38:37');
INSERT INTO `app_order` VALUES (2, NULL, '2023-07-02 13:33:09', '3323781', 38, 2, '豫C267EF', '涂上去', 1, 42.00, 1, 1, '2023-12-18 14:18:50');
INSERT INTO `app_order` VALUES (3, NULL, '2023-06-27 11:41:14', '8595363', 38, 2, '豫C267EF', '魔方大厦额外', 1, 30.00, 2, 1, '2023-08-15 06:39:09');
INSERT INTO `app_order` VALUES (4, NULL, '2023-07-03 20:37:47', '6104494', 38, 2, '豫C267EF', '太容易度为啥非要', 1, 87.00, 1, 1, '2023-07-20 22:46:32');
COMMIT;

-- ----------------------------
-- Table structure for app_pay_config
-- ----------------------------
DROP TABLE IF EXISTS `app_pay_config`;
CREATE TABLE `app_pay_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `car_park_id` bigint(20) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `mch_id` varchar(500) DEFAULT NULL,
  `secret_key` varchar(500) DEFAULT NULL,
  `user_id_create` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_pay_config
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `config_key` varchar(200) NOT NULL COMMENT '唯一标识',
  `config_value` varchar(500) NOT NULL COMMENT '值',
  `config_remark` varchar(1000) NOT NULL COMMENT '备注',
  `user_id_create` bigint(20) NOT NULL COMMENT '创建人',
  `gmt_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL COMMENT '状态 0 禁用 1 可用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='基础配置';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_interface
-- ----------------------------
DROP TABLE IF EXISTS `sys_interface`;
CREATE TABLE `sys_interface` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL,
  `query` text,
  `status` smallint(6) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `user_id_create` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_interface
-- ----------------------------
BEGIN;
INSERT INTO `sys_interface` VALUES (1, '首页 统计信息', '2023-07-05 17:51:59', NULL, NULL, 'select * from (select count(1) as orgNumber from sys_org) AS a \nJOIN (select count(1) as parkNumber from app_car_park_manage ) as b on 1=1\nJOIN (select count(1) as carNumber from app_car_manage) as c on 1=1\nJOIN (select sum(total_Fee) as cost from app_order where status = 1) as d on 1=1', 1, NULL, 'indexStatistics', 1);
INSERT INTO `sys_interface` VALUES (2, '支付类型统计', '2023-07-06 11:38:28', NULL, NULL, 'select case type when 0 then \'微信\' when 1 then \'支付宝\' when 2 then \'Apple Pay\' when 3 then \'HUAWEI pay\' end as `name`, count(order_no) as `data` from app_order where status = 1 group by type;', 1, NULL, 'payTypeStatistics', 1);
INSERT INTO `sys_interface` VALUES (3, '近7天支付情况统计', '2023-07-06 15:55:57', NULL, NULL, 'SELECT a.date, case a.type when 0 then \'微信\' when 1 then \'支付宝\' when 2 then \'Apple Pay\' when 3 then \'HUAWEI pay\' end as payType, ifnull( total_fee, 0 ) amount \nFROM (SELECT * FROM\n	(\n		select DATE(DATE_SUB(CURRENT_DATE, INTERVAL help_topic_id DAY)) date from  mysql.help_topic\nwhere help_topic_id<7\norder by help_topic_id\n	) AS a\n	JOIN ( SELECT DISTINCT type FROM app_order ) AS b ON 1 = 1 \n) AS a\nLEFT JOIN ( \n	SELECT date( gmt_create ) gmt_create, type, sum( total_fee ) total_fee \n	FROM `app_order` WHERE STATUS = 1 GROUP BY date( gmt_create ), type \n) AS b ON a.date = b.gmt_create AND a.type = b.type \nWHERE\n	a.date < DATE(NOW()) \nORDER BY\n	a.date', 1, NULL, 'total7Pay', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_landing_records
-- ----------------------------
DROP TABLE IF EXISTS `sys_landing_records`;
CREATE TABLE `sys_landing_records` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户ID',
  `login_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最近登录时间',
  `place` varchar(10) NOT NULL COMMENT '最近登录地点',
  `ip` char(15) NOT NULL COMMENT '最近登录IP',
  `login_way` char(10) NOT NULL COMMENT '登录方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='用户登录日志';

-- ----------------------------
-- Records of sys_landing_records
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `time` int(11) DEFAULT NULL COMMENT '响应时间',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` text COMMENT '请求参数',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `device_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '访问方式 0:PC 1:手机 2:未知',
  `log_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型 0: 一般日志记录 1: 异常错误日志',
  `exception_detail` text COMMENT '异常详细信息',
  `gmt_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
BEGIN;
INSERT INTO `sys_log` VALUES (1, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2023-03-08 19:58:39');
INSERT INTO `sys_log` VALUES (2, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2023-03-16 20:26:27');
INSERT INTO `sys_log` VALUES (3, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2023-03-26 20:51:14');
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单id',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `gmt_create` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=317 DEFAULT CHARSET=utf8 COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES (1, 0, '系统管理', NULL, '', 0, 'layui-icon layui-icon-template-1', 5, '2023-08-09 22:49:47', '2023-09-11 17:25:22');
INSERT INTO `sys_menu` VALUES (2, 1, '系统菜单', 'sys/menu/list.html', NULL, 1, 'layui-icon layui-icon-spread-left', 10, '2023-08-09 22:55:15', '2023-08-17 10:00:12');
INSERT INTO `sys_menu` VALUES (6, 299, '用户管理', 'sys/user/list.html', '', 1, 'layui-icon layui-icon-username', 2, '2023-08-10 14:12:11', '2023-09-05 12:57:42');
INSERT INTO `sys_menu` VALUES (7, 1, '角色管理', 'sys/role/list.html', '', 1, 'layui-icon layui-icon-tree', 1, '2023-08-10 14:13:19', '2023-09-05 12:57:30');
INSERT INTO `sys_menu` VALUES (11, 6, '刷新', '/sys/user/list', 'sys:user:list', 2, NULL, 0, '2023-08-14 10:51:05', '2023-09-05 12:47:23');
INSERT INTO `sys_menu` VALUES (12, 6, '新增', '/sys/user/save', 'sys:user:save', 2, NULL, 0, '2023-08-14 10:51:35', '2023-09-05 12:47:34');
INSERT INTO `sys_menu` VALUES (13, 6, '编辑', '/sys/user/update', 'sys:user:edit', 2, NULL, 0, '2023-08-14 10:52:06', '2023-09-05 12:47:46');
INSERT INTO `sys_menu` VALUES (14, 6, '删除', '/sys/user/remove', 'sys:user:remove', 2, NULL, 0, '2023-08-14 10:52:24', '2023-09-05 12:48:03');
INSERT INTO `sys_menu` VALUES (15, 7, '刷新', '/sys/role/list', 'sys:role:list', 2, NULL, 0, '2023-08-14 10:56:37', '2023-09-05 12:44:04');
INSERT INTO `sys_menu` VALUES (16, 7, '新增', '/sys/role/save', 'sys:role:save', 2, NULL, 0, '2023-08-14 10:57:02', '2023-09-05 12:44:23');
INSERT INTO `sys_menu` VALUES (17, 7, '编辑', '/sys/role/update', 'sys:role:edit', 2, NULL, 0, '2023-08-14 10:57:31', '2023-09-05 12:44:48');
INSERT INTO `sys_menu` VALUES (18, 7, '删除', '/sys/role/remove', 'sys:role:remove', 2, NULL, 0, '2023-08-14 10:57:50', '2023-09-05 12:45:02');
INSERT INTO `sys_menu` VALUES (19, 7, '操作权限', '/sys/role/authorize/opt', 'sys:role:authorizeOpt', 2, NULL, 0, '2023-08-14 10:58:55', '2023-09-05 12:45:29');
INSERT INTO `sys_menu` VALUES (20, 2, '刷新', '/sys/menu/list', 'sys:menu:list', 2, NULL, 0, '2023-08-14 10:59:32', '2023-09-05 13:06:24');
INSERT INTO `sys_menu` VALUES (21, 2, '新增', '/sys/menu/save', 'sys:menu:save', 2, NULL, 0, '2023-08-14 10:59:56', '2023-09-05 13:06:35');
INSERT INTO `sys_menu` VALUES (22, 2, '编辑', '/sys/menu/update', 'sys:menu:edit', 2, NULL, 0, '2023-08-14 11:00:26', '2023-09-05 13:06:48');
INSERT INTO `sys_menu` VALUES (23, 2, '删除', '/sys/menu/remove', 'sys:menu:remove', 2, NULL, 0, '2023-08-14 11:00:58', '2023-09-05 13:07:00');
INSERT INTO `sys_menu` VALUES (24, 6, '启用', '/sys/user/enable', 'sys:user:enable', 2, NULL, 0, '2023-08-14 17:27:18', '2023-09-05 12:48:30');
INSERT INTO `sys_menu` VALUES (25, 6, '停用', '/sys/user/disable', 'sys:user:disable', 2, NULL, 0, '2023-08-14 17:27:43', '2023-09-05 12:48:49');
INSERT INTO `sys_menu` VALUES (26, 6, '重置密码', '/sys/user/rest', 'sys:user:resetPassword', 2, NULL, 0, '2023-08-14 17:28:34', '2023-09-05 12:49:17');
INSERT INTO `sys_menu` VALUES (27, 267, '系统日志', 'sys/log/list.html', NULL, 1, 'fa fa-warning', 3, '2023-08-14 22:11:53', '2023-08-17 09:55:19');
INSERT INTO `sys_menu` VALUES (28, 27, '刷新', '/sys/log/list', 'sys:log:list', 2, NULL, 0, '2023-08-14 22:30:22', '2023-09-05 13:05:24');
INSERT INTO `sys_menu` VALUES (29, 27, '删除', '/sys/log/remove', 'sys:log:remove', 2, NULL, 0, '2023-08-14 22:30:43', '2023-09-05 13:05:37');
INSERT INTO `sys_menu` VALUES (30, 27, '清空', '/sys/log/clear', 'sys:log:clear', 2, NULL, 0, '2023-08-14 22:31:02', '2023-09-05 13:05:53');
INSERT INTO `sys_menu` VALUES (42, 261, '刷新', '/sys/org/list', 'sys:org:list', 2, NULL, 0, '2023-08-17 10:03:36', '2023-09-05 11:47:37');
INSERT INTO `sys_menu` VALUES (43, 261, '新增', '/sys/org/save', 'sys:org:save', 2, NULL, 0, '2023-08-17 10:03:54', '2023-09-05 12:40:55');
INSERT INTO `sys_menu` VALUES (44, 261, '编辑', '/sys/org/update', 'sys:org:edit', 2, NULL, 0, '2023-08-17 10:04:11', '2023-09-05 12:43:06');
INSERT INTO `sys_menu` VALUES (45, 261, '删除', '/sys/org/remove', 'sys:org:remove', 2, NULL, 0, '2023-08-17 10:04:30', '2023-09-05 12:42:19');
INSERT INTO `sys_menu` VALUES (46, 7, '数据权限', '/sys/role/authorize/data', 'sys:role:authorizeData', 2, NULL, 0, '2023-08-17 13:48:11', '2023-09-05 12:45:54');
INSERT INTO `sys_menu` VALUES (261, 299, '合作单位', '/sys/org/list.html', NULL, 1, 'layui-icon layui-icon-friends', 3, NULL, NULL);
INSERT INTO `sys_menu` VALUES (264, 1, '全局配置', 'sys/config/list.html', NULL, 1, 'layui-icon layui-icon-templeate-1', 40, NULL, NULL);
INSERT INTO `sys_menu` VALUES (267, 0, '系统监控', NULL, NULL, 0, 'layui-icon layui-icon-camera', 40, NULL, NULL);
INSERT INTO `sys_menu` VALUES (295, 0, '停车场管理', NULL, NULL, 0, 'layui-icon layui-icon-diamond', 0, NULL, NULL);
INSERT INTO `sys_menu` VALUES (296, 295, '停车场管理', 'car/parkManage/list.html', NULL, 1, 'layui-icon layui-icon-set', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (299, 0, '账户管理', NULL, NULL, 0, 'layui-icon layui-icon-username', 10, NULL, NULL);
INSERT INTO `sys_menu` VALUES (300, 0, '车场管理', NULL, NULL, 0, 'layui-icon layui-icon-release', 3, NULL, NULL);
INSERT INTO `sys_menu` VALUES (301, 300, '车辆管理', 'car/carManage/list.html', NULL, 1, 'layui-icon layui-icon-release', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (302, 0, '停车记录', NULL, NULL, 0, 'layui-icon layui-icon-file-b', 4, NULL, NULL);
INSERT INTO `sys_menu` VALUES (303, 302, '停车记录', 'car/parkingRecord/list.html', NULL, 1, 'layui-icon layui-icon-location', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (304, 0, '车牌识别', '', NULL, 0, 'layui-icon layui-icon-camera-fill', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (305, 304, '车牌识别', 'car/distinguish/list.html', NULL, 1, 'layui-icon layui-icon-camera-fill', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (310, 0, '控制台管理', NULL, NULL, 0, 'layui-icon layui-icon-form', 6, NULL, NULL);
INSERT INTO `sys_menu` VALUES (312, 310, '统计管理', '/sys/interface/list.html', NULL, 1, 'layui-icon layui-icon-template', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (313, 312, '查询', '/sys/interface/list', 'sys:interface:list', 2, 'layui-icon layui-icon-template', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (314, 0, '财务管理', NULL, NULL, 0, 'layui-icon layui-icon-app', 7, NULL, NULL);
INSERT INTO `sys_menu` VALUES (315, 314, '订单列表', '/finance/list.html', NULL, 1, 'layui-icon layui-icon-theme', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (316, 315, '查询', '/finance/order/list', 'finance:order:list', 2, '', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_org
-- ----------------------------
DROP TABLE IF EXISTS `sys_org`;
CREATE TABLE `sys_org` (
  `org_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '机构id',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级机构ID，一级机构为0',
  `code` varchar(100) DEFAULT NULL COMMENT '机构编码',
  `name` varchar(100) DEFAULT NULL COMMENT '机构名称',
  `full_name` varchar(100) DEFAULT NULL COMMENT '机构名称(全称)',
  `director` varchar(100) DEFAULT NULL COMMENT '机构负责人',
  `email` varchar(100) DEFAULT NULL COMMENT '联系邮箱',
  `phone` varchar(100) DEFAULT NULL COMMENT '联系电话',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `status` tinyint(4) DEFAULT '1' COMMENT '可用标识  1：可用  0：不可用',
  `gmt_create` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='机构管理';

-- ----------------------------
-- Records of sys_org
-- ----------------------------
BEGIN;
INSERT INTO `sys_org` VALUES (36, 0, '00006', '华为', '华为', '海信', NULL, NULL, NULL, NULL, 1, '2023-05-08 22:06:58', '2023-05-08 22:07:03');
INSERT INTO `sys_org` VALUES (38, 0, '00005', '大疆', '大疆', NULL, NULL, NULL, NULL, NULL, 1, '2023-9-08 22:17:32', '2023-11-07 10:44:25');
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `org_id` bigint(255) DEFAULT NULL COMMENT '所属机构',
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `role_sign` varchar(100) DEFAULT NULL COMMENT '角色标识',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `user_id_create` bigint(255) DEFAULT NULL COMMENT '创建用户id',
  `gmt_create` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='系统角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES (1, 17, '超级管理员', 'admin', '【系统内置】', 2, '2023-08-12 00:43:52', '2023-11-21 10:19:08');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15027 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES (14988, 1, 1);
INSERT INTO `sys_role_menu` VALUES (14989, 1, 7);
INSERT INTO `sys_role_menu` VALUES (14990, 1, 15);
INSERT INTO `sys_role_menu` VALUES (14991, 1, 16);
INSERT INTO `sys_role_menu` VALUES (14992, 1, 17);
INSERT INTO `sys_role_menu` VALUES (14993, 1, 18);
INSERT INTO `sys_role_menu` VALUES (14994, 1, 19);
INSERT INTO `sys_role_menu` VALUES (14995, 1, 46);
INSERT INTO `sys_role_menu` VALUES (14996, 1, 2);
INSERT INTO `sys_role_menu` VALUES (14997, 1, 20);
INSERT INTO `sys_role_menu` VALUES (14998, 1, 21);
INSERT INTO `sys_role_menu` VALUES (14999, 1, 22);
INSERT INTO `sys_role_menu` VALUES (15000, 1, 23);
INSERT INTO `sys_role_menu` VALUES (15001, 1, 264);
INSERT INTO `sys_role_menu` VALUES (15008, 1, 299);
INSERT INTO `sys_role_menu` VALUES (15009, 1, 6);
INSERT INTO `sys_role_menu` VALUES (15010, 1, 11);
INSERT INTO `sys_role_menu` VALUES (15011, 1, 12);
INSERT INTO `sys_role_menu` VALUES (15012, 1, 13);
INSERT INTO `sys_role_menu` VALUES (15013, 1, 14);
INSERT INTO `sys_role_menu` VALUES (15014, 1, 24);
INSERT INTO `sys_role_menu` VALUES (15015, 1, 25);
INSERT INTO `sys_role_menu` VALUES (15016, 1, 26);
INSERT INTO `sys_role_menu` VALUES (15017, 1, 261);
INSERT INTO `sys_role_menu` VALUES (15018, 1, 42);
INSERT INTO `sys_role_menu` VALUES (15019, 1, 43);
INSERT INTO `sys_role_menu` VALUES (15020, 1, 44);
INSERT INTO `sys_role_menu` VALUES (15021, 1, 45);
INSERT INTO `sys_role_menu` VALUES (15022, 1, 267);
INSERT INTO `sys_role_menu` VALUES (15023, 1, 27);
INSERT INTO `sys_role_menu` VALUES (15024, 1, 28);
INSERT INTO `sys_role_menu` VALUES (15025, 1, 29);
INSERT INTO `sys_role_menu` VALUES (15026, 1, 30);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_org
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_org`;
CREATE TABLE `sys_role_org` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `org_id` bigint(20) DEFAULT NULL COMMENT '机构ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='角色与机构对应关系';

-- ----------------------------
-- Records of sys_role_org
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_org` VALUES (17, 1, 17);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `org_id` bigint(20) NOT NULL COMMENT '所属机构',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `nickname` varchar(50) DEFAULT NULL COMMENT '姓名(昵称)',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态 0:禁用，1:正常',
  `avatar_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '头像上传 0:未上传 1:上传',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `user_id_create` bigint(255) DEFAULT NULL COMMENT '创建用户id',
  `gmt_create` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `is_modify_pwd` tinyint(4) DEFAULT '0' COMMENT '是否修改过初始密码',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='系统用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES (1, 36, 'admin', '4cf28b576b2af52c9441d653e5a79917', 'admin', 'dsf42@admin.com', '18903852927', 1, 0, NULL, 1, '2023-08-15 21:40:39', '2023-03-08 21:04:16', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=266 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` VALUES (265, 1, 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
