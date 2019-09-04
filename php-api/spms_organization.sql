/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-08-30 18:20:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for spms_organization
-- ----------------------------
DROP TABLE IF EXISTS `spms_organization`;
CREATE TABLE `spms_organization` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `org_id` varchar(40) NOT NULL DEFAULT '' COMMENT '部门id',
  `parent_id` varchar(40) NOT NULL DEFAULT '0' COMMENT '父id',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '部所名称',
  `spell` varchar(255) NOT NULL DEFAULT '' COMMENT '部门拼音',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '6' COMMENT '部门种类 1、省公司  2总部部门 3专业公司 4直属单位 5研发机构',
  `level` tinyint(2) unsigned DEFAULT '0' COMMENT '级别',
  `listorder` int(11) unsigned DEFAULT '0' COMMENT '部所排序，越小越靠前',
  `creator_id` varchar(100) NOT NULL DEFAULT '' COMMENT '创建人',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updated_at` int(10) unsigned DEFAULT '0' COMMENT '更新时间',
  `del_flag` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除标识1删除 0正常',
  `year` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1153 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of spms_organization
-- ----------------------------
INSERT INTO `spms_organization` VALUES ('1', '00030000000000000000', '00000000000000000000', '集团公司', 'jituangongsi', '0', '1', '11111', '', '1482819336', '1492077187', '0', '2017');
INSERT INTO `spms_organization` VALUES ('2', '00270000000000000000', '00030000000000000000', '北京公司', 'beijinggongsi', '1', '2', '100002', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('3', '00290000000000000000', '00030000000000000000', '天津公司', 'tianjingongsi', '1', '2', '100003', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('4', '00300000000000000000', '00030000000000000000', '河北公司', 'hebeigongsi', '1', '2', '100004', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('5', '00410000000000000000', '00030000000000000000', '山西公司', 'shanxigongsi', '1', '2', '100005', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('6', '00420000000000000000', '00030000000000000000', '内蒙古公司', 'neimenggugongsi', '1', '2', '100006', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('7', '00310000000000000000', '00030000000000000000', '辽宁公司', 'liaoninggongsi', '1', '2', '100007', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('8', '00430000000000000000', '00030000000000000000', '吉林公司', 'jilingongsi', '1', '2', '100008', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('9', '00440000000000000000', '00030000000000000000', '黑龙江公司', 'heilongjianggongsi', '1', '2', '100009', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('10', '00280000000000000000', '00030000000000000000', '上海公司', 'shanghaigongsi', '1', '2', '100010', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('11', '00230000000000000000', '00030000000000000000', '江苏公司', 'jiangsugongsi', '1', '2', '100011', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('12', '00220000000000000000', '00030000000000000000', '浙江公司', 'zhejianggongsi', '1', '2', '100012', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('13', '00340000000000000000', '00030000000000000000', '安徽公司', 'anhuigongsi', '1', '2', '100013', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('14', '00240000000000000000', '00030000000000000000', '福建公司', 'fujiangongsi', '1', '2', '100014', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('15', '00370000000000000000', '00030000000000000000', '江西公司', 'jiangxigongsi', '1', '2', '100015', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('16', '00320000000000000000', '00030000000000000000', '山东公司', 'shandonggongsi', '1', '2', '100016', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('17', '00250000000000000000', '00030000000000000000', '河南公司', 'henangongsi', '1', '2', '100017', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('18', '00350000000000000000', '00030000000000000000', '湖北公司', 'hubeigongsi', '1', '2', '100018', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('19', '00360000000000000000', '00030000000000000000', '湖南公司', 'hunangongsi', '1', '2', '100019', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('20', '00210000000000000000', '00030000000000000000', '广东公司', 'guangdonggongsi', '1', '2', '100020', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('21', '00330000000000000000', '00030000000000000000', '广西公司', 'guangxigongsi', '1', '2', '100021', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('22', '00260000000000000000', '00030000000000000000', '海南公司', 'hainangongsi', '1', '2', '100022', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('23', '00390000000000000000', '00030000000000000000', '重庆公司', 'zhongqinggongsi', '1', '2', '100023', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('24', '00380000000000000000000000000000', '00030000000000000000', '四川公司', 'sichuangongsi', '1', '2', '100024', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('25', '00450000000000000000', '00030000000000000000', '贵州公司', 'guizhougongsi', '1', '2', '100025', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('26', '00460000000000000000', '00030000000000000000', '云南公司', 'yunnangongsi', '1', '2', '100026', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('27', '00470000000000000000', '00030000000000000000', '西藏公司', 'xicanggongsi', '1', '2', '100027', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('28', '00400000000000000000', '00030000000000000000', '陕西公司', 'shanxigongsi', '1', '2', '100028', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('29', '00480000000000000000', '00030000000000000000', '甘肃公司', 'gansugongsi', '1', '2', '100029', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('30', '00500000000000000000', '00030000000000000000', '宁夏公司', 'ningxiagongsi', '1', '2', '100030', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('31', '00490000000000000000', '00030000000000000000', '青海公司', 'qinghaigongsi', '1', '2', '100031', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('32', '00510000000000000000', '00030000000000000000', '新疆公司', 'xinjianggongsi', '1', '2', '100032', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('33', '00030091000000000000', '00030000000000000000', '香港机构', 'xianggangjigou', '1', '2', '100033', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('34', '00030010000000000000', '00030000000000000000', '集团公司领导', 'jituangongsilingdao', '2', '2', '100034', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('35', '00030048000000000000', '00030000000000000000', '副总会计师', 'fuzonghuijishi', '2', '2', '100035', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('37', '00030021000000000000', '00030000000000000000', '综合部', 'zonghebu', '2', '2', '100037', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('38', '00030022000000000000', '00030000000000000000', '发展战略部', 'fazhanzhanluebu', '2', '2', '100038', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('39', '00030046000000000000', '00030000000000000000', '法律事务部', 'falvshiwubu', '2', '2', '100039', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('40', '00030027000000000000', '00030000000000000000', '计划建设部', 'jihuajianshebu', '2', '2', '100040', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('41', '00030029000000000000', '00030000000000000000', '财务部', 'caiwubu', '2', '2', '100041', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('42', '00030030000000000000', '00030000000000000000', '人力资源部', 'renliziyuanbu', '2', '2', '100042', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('43', '00030023000000000000', '00030000000000000000', '市场经营部', 'shichangjingyingbu', '2', '2', '100043', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('44', '00030025000000000000', '00030000000000000000', '网络部', 'wangluobu', '2', '2', '100044', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('45', '00030026000000000000', '00030000000000000000', '技术部', 'jishubu', '2', '2', '100045', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('46', '00030043000000000000', '00030000000000000000', '业务支撑系统部', 'yewuzhichengxitongbu', '2', '2', '100046', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('47', '00030041000000000000', '00030000000000000000', '内审部', 'neishenbu', '2', '2', '100047', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('48', '00030035000000000000', '00030000000000000000', '党组办公室（党群工作部）', 'dangzubangongshidangqungongzuobu', '2', '2', '100048', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('49', '00030036000000000000', '00030000000000000000', '纪检组监察室（巡视工作办公室）', 'jijianzujianchashixunshigongzuobangongshi', '2', '2', '100049', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('50', '00030037000000000000', '00030000000000000000', '集团工会', 'jituangonghui', '2', '2', '100050', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('51', '00030093000000000000', '00030000000000000000', 'CMPak', 'CMPak', '2', '2', '100051', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('52', '00750000000000000000', '00030000000000000000', '国际公司', 'guojigongsi', '3', '2', '100052', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('53', '00060000000000000000', '00030000000000000000', '终端公司', 'zhongduangongsi', '3', '2', '100053', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('54', '00030039000000000000', '00030000000000000000', '政企分公司', 'zhengqifengongsi', '3', '2', '100054', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('55', '00700000000000000000', '00030000000000000000', '财务公司', 'caiwugongsi', '3', '2', '100055', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('56', '00760000000000000000', '00030000000000000000', '中移物联网公司', 'zhongyiwulianwanggongsi', '3', '2', '100056', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('57', '00130000000000000000', '00030000000000000000', '深圳公司', 'shenzhengongsi', '3', '2', '100057', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('58', '00080000000000000000', '00030000000000000000', '中移在线服务有限公司', 'zaixianfuwugongsi', '3', '2', '100058', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('59', '00560000000000000000', '00030000000000000000', '咪咕公司', 'migugongsi', '3', '2', '100059', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('60', '00030038000000000000', '00030000000000000000', '投资公司', 'touzigongsi', '3', '2', '100060', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('61', '00030088000000000000', '00030000000000000000', '移动学院', 'yidongxueyuan', '4', '2', '100061', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('62', '00030070000000000000', '00030000000000000000', '信息港中心', 'xinxigangzhongxin', '4', '2', '100062', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('63', '00030050000000000000', '00030000000000000000', '信安中心', 'xinanzhongxin', '4', '2', '100063', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('64', '00030052000000000000', '00030000000000000000', '采购共享中心', 'caigougongxiangzhongxin', '4', '2', '100064', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('65', '00030087000000000000', '00030000000000000000', '研究院', 'yanjiuyuan', '5', '2', '100065', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('66', '00040000000000000000', '00030000000000000000', '设计院', 'shejiyuan', '5', '2', '100066', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('67', '00550000000000000000', '00030000000000000000', '苏州研发中心', 'suzhouyanfazhongxin', '5', '2', '100067', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('68', '00520000000000000000', '00030000000000000000', '杭州研发中心', 'hangzhouyanfazhongxin', '5', '2', '100068', '', '1482819336', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('351', '00030047000000000000', '00030000000000000000', '退休领导', 'tuixiulingdao', '2', '2', '1000351', '', '1482819336', '1482819336', '0', '2017');
INSERT INTO `spms_organization` VALUES ('354', '00610000000000000000', '00030000000000000000', '中移全通系统集成有限公司', 'zhongyiquantongxitongjichengyouxiangongsi', '3', '2', '1000354', '', '1482819336', '1482819336', '0', '2017');
INSERT INTO `spms_organization` VALUES ('482', '00620000000000000000', '00030000000000000000', '铁通公司', 'tietonggongsi', '3', '2', '1000482', 'luhongbing@hq.cmcc', '1485161185', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('499', '00030092000000000000', '00030000000000000000', '国务院派驻集团公司监事会', 'guowuyuanpaizhujituangongsijianshihui', '2', '2', '1000499', 'luhongbing@hq.cmcc', '1485167838', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('1002', '00660000000000000000', '00030000000000000000', '互联网公司', 'hulianwanggongsi', '3', '2', '10001002', '', '1482819336', '1486364247', '0', '2017');
INSERT INTO `spms_organization` VALUES ('1003', '00640000000000000000', '00030000000000000000', '卓望公司', 'zhuowanggongsi', '3', '2', '1000500', '', '1509525962', '0', '0', '2017');
INSERT INTO `spms_organization` VALUES ('1005', '00030000000000000000', '00000000000000000000', '集团公司', 'jituangongsi', '0', '1', '100001', 'liuxuyjy', '1532506687', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1006', '00270000000000000000', '00030000000000000000', '北京公司', 'beijinggongsi', '1', '2', '100002', 'liuxuyjy', '1532506687', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1007', '00290000000000000000', '00030000000000000000', '天津公司', 'tianjingongsi', '1', '2', '100003', 'liuxuyjy', '1532506687', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1008', '00300000000000000000', '00030000000000000000', '河北公司', 'hebeigongsi', '1', '2', '100004', 'liuxuyjy', '1532506687', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1009', '00410000000000000000', '00030000000000000000', '山西公司', 'shanxigongsi', '1', '2', '100005', 'liuxuyjy', '1532506687', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1010', '00420000000000000000', '00030000000000000000', '内蒙古公司', 'neimenggugongsi', '1', '2', '100006', 'liuxuyjy', '1532506687', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1011', '00310000000000000000', '00030000000000000000', '辽宁公司', 'liaoninggongsi', '1', '2', '100007', 'liuxuyjy', '1532506687', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1012', '00430000000000000000', '00030000000000000000', '吉林公司', 'jilingongsi', '1', '2', '100008', 'liuxuyjy', '1532506687', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1013', '00440000000000000000', '00030000000000000000', '黑龙江公司', 'heilongjianggongsi', '1', '2', '100009', 'liuxuyjy', '1532506687', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1014', '00280000000000000000', '00030000000000000000', '上海公司', 'shanghaigongsi', '1', '2', '100010', 'liuxuyjy', '1532506687', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1015', '00230000000000000000', '00030000000000000000', '江苏公司', 'jiangsugongsi', '1', '2', '100011', 'liuxuyjy', '1532506687', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1016', '00220000000000000000', '00030000000000000000', '浙江公司', 'zhejianggongsi', '1', '2', '100012', 'liuxuyjy', '1532506687', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1017', '00340000000000000000', '00030000000000000000', '安徽公司', 'anhuigongsi', '1', '2', '100013', 'liuxuyjy', '1532506687', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1018', '00240000000000000000', '00030000000000000000', '福建公司', 'fujiangongsi', '1', '2', '100014', 'liuxuyjy', '1532506687', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1019', '00370000000000000000', '00030000000000000000', '江西公司', 'jiangxigongsi', '1', '2', '100015', 'liuxuyjy', '1532506687', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1020', '00320000000000000000', '00030000000000000000', '山东公司', 'shandonggongsi', '1', '2', '100016', 'liuxuyjy', '1532506687', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1021', '00250000000000000000', '00030000000000000000', '河南公司', 'henangongsi', '1', '2', '100017', 'liuxuyjy', '1532506687', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1022', '00350000000000000000', '00030000000000000000', '湖北公司', 'hubeigongsi', '1', '2', '100018', 'liuxuyjy', '1532506687', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1023', '00360000000000000000', '00030000000000000000', '湖南公司', 'hunangongsi', '1', '2', '100019', 'liuxuyjy', '1532506687', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1024', '00210000000000000000', '00030000000000000000', '广东公司', 'guangdonggongsi', '1', '2', '100020', 'liuxuyjy', '1532506687', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1025', '00330000000000000000', '00030000000000000000', '广西公司', 'guangxigongsi', '1', '2', '100021', 'liuxuyjy', '1532506687', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1026', '00260000000000000000', '00030000000000000000', '海南公司', 'hainangongsi', '1', '2', '100022', 'liuxuyjy', '1532506687', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1027', '00390000000000000000', '00030000000000000000', '重庆公司', 'zhongqinggongsi', '1', '2', '100023', 'liuxuyjy', '1532506687', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1028', '00380000000000000000000000000000', '00030000000000000000', '四川公司', 'sichuangongsi', '1', '2', '100024', 'liuxuyjy', '1532506687', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1029', '00450000000000000000', '00030000000000000000', '贵州公司', 'guizhougongsi', '1', '2', '100025', 'liuxuyjy', '1532506687', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1030', '00460000000000000000', '00030000000000000000', '云南公司', 'yunnangongsi', '1', '2', '100026', 'liuxuyjy', '1532506687', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1031', '00470000000000000000', '00030000000000000000', '西藏公司', 'xicanggongsi', '1', '2', '100027', 'liuxuyjy', '1532506687', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1032', '00400000000000000000', '00030000000000000000', '陕西公司', 'shanxigongsi', '1', '2', '100028', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1033', '00480000000000000000', '00030000000000000000', '甘肃公司', 'gansugongsi', '1', '2', '100029', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1034', '00500000000000000000', '00030000000000000000', '宁夏公司', 'ningxiagongsi', '1', '2', '100030', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1035', '00490000000000000000', '00030000000000000000', '青海公司', 'qinghaigongsi', '1', '2', '100031', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1036', '00510000000000000000', '00030000000000000000', '新疆公司', 'xinjianggongsi', '1', '2', '100032', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1037', '00030091000000000000', '00030000000000000000', '香港机构', 'xianggangjigou', '1', '2', '100033', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1038', '00030021000000000000', '00030000000000000000', '办公厅（董事会办公室）', 'bangongtingdongshihuibangongshi', '2', '2', '100034', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1039', '00030022000000000000', '00030000000000000000', '发展战略部', 'fazhanzhanluebu', '2', '2', '100035', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1040', '00030046000000000000', '00030000000000000000', '法律与监管事务部', 'falvyujianguanshiwubu', '2', '2', '100036', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1041', '00030027000000000000', '00030000000000000000', '计划建设部', 'jihuajianshebu', '2', '2', '100037', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1042', '00030029000000000000', '00030000000000000000', '财务部', 'caiwubu', '2', '2', '100038', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1043', '00030030000000000000', '00030000000000000000', '人力资源部', 'renliziyuanbu', '2', '2', '100039', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1044', '00030023000000000000', '00030000000000000000', '市场经营部', 'shichangjingyingbu', '2', '2', '100040', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1045', '00030062000000000000', '00030000000000000000', '客户服务部', 'kehufuwubu', '2', '2', '100041', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1046', '00030025000000000000', '00030000000000000000', '网络部', 'wangluobu', '2', '2', '100042', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1047', '00030026000000000000', '00030000000000000000', '技术部', 'jishubu', '2', '2', '100043', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1048', '00030028000000000000', '00030000000000000000', 'IT管理委员会办公室', 'ITguanliweiyuanhuibangongshi', '2', '2', '100044', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1049', '00030041000000000000', '00030000000000000000', '内审部', 'neishenbu', '2', '2', '100045', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1050', '00030035000000000000', '00030000000000000000', '党组办公室（党群办公室）', 'dangzubangongshidangqunbangongshi', '2', '2', '100046', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1051', '00030036000000000000', '00030000000000000000', '纪检组监察室', 'jijianzujianchashi', '2', '2', '100047', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1052', '00030053000000000000', '00030000000000000000', '巡视工作办公室', 'xunshigongzuobangongshi', '2', '2', '100048', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1053', '00030037000000000000', '00030000000000000000', '集团工会', 'jituangonghui', '2', '2', '100049', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1054', '00620000000000000000', '00030000000000000000', '铁通公司', 'tietonggongsi', '3', '2', '100050', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1055', '00040000000000000000', '00030000000000000000', '设计院', 'shejiyuan', '3', '2', '100051', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1056', '00750000000000000000', '00030000000000000000', '国际公司', 'guojigongsi', '3', '2', '100052', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1057', '00060000000000000000', '00030000000000000000', '终端公司', 'zhongduangongsi', '3', '2', '100053', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1058', '00030039000000000000', '00030000000000000000', '政企分公司', 'zhengqifengongsi', '3', '2', '100054', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1059', '00700000000000000000', '00030000000000000000', '财务公司', 'caiwugongsi', '3', '2', '100055', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1060', '00760000000000000000', '00030000000000000000', '中移物联网公司', 'zhongyiwulianwanggongsi', '3', '2', '100056', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1061', '00550000000000000000', '00030000000000000000', '苏州研发中心', 'suzhouyanfazhongxin', '3', '2', '100057', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1062', '00520000000000000000', '00030000000000000000', '杭州研发中心', 'hangzhouyanfazhongxin', '3', '2', '100058', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1063', '00080000000000000000', '00030000000000000000', '中移在线服务有限公司', 'zhongyizaixianfuwuyouxiangongsi', '3', '2', '100059', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1064', '00560000000000000000', '00030000000000000000', '咪咕文化科技有限公司', 'gugongsi', '3', '2', '100060', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1065', '00660000000000000000', '00030000000000000000', '互联网公司', 'hulianwanggongsi', '3', '2', '100061', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1066', '00030038000000000000', '00030000000000000000', '投资公司', 'touzigongsi', '3', '2', '100062', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1067', '00030087000000000000', '00030000000000000000', '研究院', 'yanjiuyuan', '4', '2', '100063', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1068', '00030088000000000000', '00030000000000000000', '移动学院', 'yidongxueyuan', '4', '2', '100064', 'liuxuyjy', '1532506688', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1069', '00030070000000000000', '00030000000000000000', '信息港中心', 'xinxigangzhongxin', '4', '2', '100065', 'liuxuyjy', '1532506689', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1070', '00030050000000000000', '00030000000000000000', '信安中心', 'xinanzhongxin', '4', '2', '100066', 'liuxuyjy', '1532506689', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1071', '00030052000000000000', '00030000000000000000', '采购共享中心', 'caigougongxiangzhongxin', '4', '2', '100067', 'liuxuyjy', '1532506689', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1072', '00030043000000000000', '00030000000000000000', 'IT技术中心（公司）', 'itjishuzhongxingongsi', '4', '2', '100068', 'liuxuyjy', '1532506689', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1073', '00640000000000000000', '00030000000000000000', '卓望公司', 'zhuowanggongsi', '3', '2', '100069', 'liuxuyjy', '1533103191', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1074', '00030058000000000000', '00030000000000000000', '上海产业研究院筹备组', 'shanghaichanyeyanjiuyuanchoubeizu', '4', '2', '100070', 'liuxuyjy', '1533103191', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1075', '00800000000000000000', '00030000000000000000', '辛姆巴科公司', 'xinmubakegongsi', '1', '2', '100071', 'liuxuyjy', '1533117625', '0', '0', '2018');
INSERT INTO `spms_organization` VALUES ('1076', '00030000000000000000', '00000000000000000000', '集团公司', 'jituangongsi', '0', '1', '100001', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1077', '00270000000000000000', '00030000000000000000', '北京公司', 'beijinggongsi', '1', '2', '100002', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1078', '00290000000000000000', '00030000000000000000', '天津公司', 'tianjingongsi', '1', '2', '100003', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1079', '00300000000000000000', '00030000000000000000', '河北公司', 'hebeigongsi', '1', '2', '100004', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1080', '00410000000000000000', '00030000000000000000', '山西公司', 'shanxigongsi', '1', '2', '100005', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1081', '00420000000000000000', '00030000000000000000', '内蒙古公司', 'neimenggugongsi', '1', '2', '100006', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1082', '00310000000000000000', '00030000000000000000', '辽宁公司', 'liaoninggongsi', '1', '2', '100007', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1083', '00430000000000000000', '00030000000000000000', '吉林公司', 'jilingongsi', '1', '2', '100008', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1084', '00440000000000000000', '00030000000000000000', '黑龙江公司', 'heilongjianggongsi', '1', '2', '100009', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1085', '00280000000000000000', '00030000000000000000', '上海公司', 'shanghaigongsi', '1', '2', '100010', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1086', '00230000000000000000', '00030000000000000000', '江苏公司', 'jiangsugongsi', '1', '2', '100011', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1087', '00220000000000000000', '00030000000000000000', '浙江公司', 'zhejianggongsi', '1', '2', '100012', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1088', '00340000000000000000', '00030000000000000000', '安徽公司', 'anhuigongsi', '1', '2', '100013', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1089', '00240000000000000000', '00030000000000000000', '福建公司', 'fujiangongsi', '1', '2', '100014', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1090', '00370000000000000000', '00030000000000000000', '江西公司', 'jiangxigongsi', '1', '2', '100015', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1091', '00320000000000000000', '00030000000000000000', '山东公司', 'shandonggongsi', '1', '2', '100016', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1092', '00250000000000000000', '00030000000000000000', '河南公司', 'henangongsi', '1', '2', '100017', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1093', '00350000000000000000', '00030000000000000000', '湖北公司', 'hubeigongsi', '1', '2', '100018', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1094', '00360000000000000000', '00030000000000000000', '湖南公司', 'hunangongsi', '1', '2', '100019', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1095', '00210000000000000000', '00030000000000000000', '广东公司', 'guangdonggongsi', '1', '2', '100020', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1096', '00330000000000000000', '00030000000000000000', '广西公司', 'guangxigongsi', '1', '2', '100021', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1097', '00260000000000000000', '00030000000000000000', '海南公司', 'hainangongsi', '1', '2', '100022', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1098', '00390000000000000000', '00030000000000000000', '重庆公司', 'zhongqinggongsi', '1', '2', '100023', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1099', '00380000000000000000000000000000', '00030000000000000000', '四川公司', 'sichuangongsi', '1', '2', '100024', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1100', '00450000000000000000', '00030000000000000000', '贵州公司', 'guizhougongsi', '1', '2', '100025', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1101', '00460000000000000000', '00030000000000000000', '云南公司', 'yunnangongsi', '1', '2', '100026', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1102', '00470000000000000000', '00030000000000000000', '西藏公司', 'xicanggongsi', '1', '2', '100027', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1103', '00400000000000000000', '00030000000000000000', '陕西公司', 'shanxigongsi', '1', '2', '100028', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1104', '00480000000000000000', '00030000000000000000', '甘肃公司', 'gansugongsi', '1', '2', '100029', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1105', '00500000000000000000', '00030000000000000000', '宁夏公司', 'ningxiagongsi', '1', '2', '100030', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1106', '00490000000000000000', '00030000000000000000', '青海公司', 'qinghaigongsi', '1', '2', '100031', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1107', '00510000000000000000', '00030000000000000000', '新疆公司', 'xinjianggongsi', '1', '2', '100032', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1108', '00030091000000000000', '00030000000000000000', '香港机构', 'xianggangjigou', '1', '2', '100033', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1109', '00030021000000000000', '00030000000000000000', '办公厅（董事会办公室）', 'bangongtingdongshihuibangongshi', '2', '2', '100034', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1110', '00030022000000000000', '00030000000000000000', '发展战略部', 'fazhanzhanluebu', '2', '2', '100035', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1111', '00030046000000000000', '00030000000000000000', '法律与监管事务部', 'falvyujianguanshiwubu', '2', '2', '100036', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1112', '00030027000000000000', '00030000000000000000', '计划建设部', 'jihuajianshebu', '2', '2', '100037', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1113', '00030029000000000000', '00030000000000000000', '财务部', 'caiwubu', '2', '2', '100038', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1114', '00030030000000000000', '00030000000000000000', '人力资源部', 'renliziyuanbu', '2', '2', '100039', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1115', '00030023000000000000', '00030000000000000000', '市场经营部', 'shichangjingyingbu', '2', '2', '100040', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1116', '00030062000000000000', '00030000000000000000', '客户服务部', 'kehufuwubu', '2', '2', '100041', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1117', '00030025000000000000', '00030000000000000000', '网络部', 'wangluobu', '2', '2', '100042', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1118', '00030026000000000000', '00030000000000000000', '技术部', 'jishubu', '2', '2', '100043', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1119', '00030028000000000000', '00030000000000000000', 'IT管理委员会办公室', 'ITguanliweiyuanhuibangongshi', '2', '2', '100044', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1120', '00030041000000000000', '00030000000000000000', '内审部', 'neishenbu', '2', '2', '100045', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1121', '00030035000000000000', '00030000000000000000', '党组办公室（党群办公室）', 'dangzubangongshidangqunbangongshi', '2', '2', '100046', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1122', '00030036000000000000', '00030000000000000000', '纪检组监察室', 'jijianzujianchashi', '2', '2', '100047', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1123', '00030053000000000000', '00030000000000000000', '巡视工作办公室', 'xunshigongzuobangongshi', '2', '2', '100048', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1124', '00030037000000000000', '00030000000000000000', '集团工会', 'jituangonghui', '2', '2', '100049', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1125', '00620000000000000000', '00030000000000000000', '铁通公司', 'tietonggongsi', '3', '2', '100050', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1126', '00040000000000000000', '00030000000000000000', '设计院', 'shejiyuan', '3', '2', '100051', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1127', '00750000000000000000', '00030000000000000000', '国际公司', 'guojigongsi', '3', '2', '100052', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1128', '00060000000000000000', '00030000000000000000', '终端公司', 'zhongduangongsi', '3', '2', '100053', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1129', '00030039000000000000', '00030000000000000000', '政企分公司', 'zhengqifengongsi', '3', '2', '100054', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1130', '00700000000000000000', '00030000000000000000', '财务公司', 'caiwugongsi', '3', '2', '100055', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1131', '00760000000000000000', '00030000000000000000', '中移物联网公司', 'zhongyiwulianwanggongsi', '3', '2', '100056', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1132', '00550000000000000000', '00030000000000000000', '苏州研发中心', 'suzhouyanfazhongxin', '3', '2', '100057', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1133', '00520000000000000000', '00030000000000000000', '杭州研发中心', 'hangzhouyanfazhongxin', '3', '2', '100058', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1134', '00080000000000000000', '00030000000000000000', '中移在线服务有限公司', 'zhongyizaixianfuwuyouxiangongsi', '3', '2', '100059', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1135', '00560000000000000000', '00030000000000000000', '咪咕文化科技有限公司', 'gugongsi', '3', '2', '100060', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1136', '00660000000000000000', '00030000000000000000', '中移互联网有限公司', 'zhongyihulianwangyouxiangongsi', '3', '2', '100061', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1137', '00030038000000000000', '00030000000000000000', '投资公司', 'touzigongsi', '3', '2', '100062', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1138', '00030087000000000000', '00030000000000000000', '研究院', 'yanjiuyuan', '4', '2', '100063', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1139', '00030088000000000000', '00030000000000000000', '移动学院', 'yidongxueyuan', '4', '2', '100064', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1140', '00030070000000000000', '00030000000000000000', '信息港中心', 'xinxigangzhongxin', '4', '2', '100065', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1141', '00030050000000000000', '00030000000000000000', '信安中心', 'xinanzhongxin', '4', '2', '100066', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1142', '00030052000000000000', '00030000000000000000', '采购共享中心', 'caigougongxiangzhongxin', '4', '2', '100067', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1143', '00030043000000000000', '00030000000000000000', '信息技术中心', 'xinxijishuzhongxin', '4', '2', '100068', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1144', '00640000000000000000', '00030000000000000000', '卓望公司', 'zhuowanggongsi', '3', '2', '100069', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1145', '00030058000000000000', '00030000000000000000', '上海产业研究院筹备组', 'shanghaichanyeyanjiuyuanchoubeizu', '4', '2', '100070', 'liuxuyjy', '1547717842', '0', '1', '2019');
INSERT INTO `spms_organization` VALUES ('1146', '00800000000000000000', '00030000000000000000', '辛姆巴科公司', 'xinmubakegongsi', '1', '2', '100071', 'liuxuyjy', '1547717842', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1147', '00680000000000000000', '00030000000000000000', '成都产业研究院', 'chengduchanyeyanjiuyuan', '4', '2', '100072', 'liuxuyjy', '1566958838', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1148', '00280000000000000000', '00030000000000000000', '上海产业研究院', 'shanghaichanyeyanjiuyuan', '4', '2', '100073', 'liuxuyjy', '1566958838', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1149', '00030059000000000000', '00030000000000000000', '电商公司', 'dianshanggongsi', '4', '2', '100074', 'liuxuyjy', '1566958838', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1150', '00680000000000000000', '00030000000000000000', '成都产业研究院', 'chengduchanyeyanjiuyuan', '4', '2', '100072', 'liuxuyjy', '1566958905', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1151', '00280000000000000000', '00030000000000000000', '上海产业研究院', 'shanghaichanyeyanjiuyuan', '4', '2', '100073', 'liuxuyjy', '1566958905', '0', '0', '2019');
INSERT INTO `spms_organization` VALUES ('1152', '00030059000000000000', '00030000000000000000', '电商公司', 'dianshanggongsi', '4', '2', '100074', 'liuxuyjy', '1566958905', '0', '0', '8');
