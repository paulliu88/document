/*
Navicat MySQL Data Transfer

Source Server         : 2----99
Source Server Version : 50173
Source Host           : 112.53.65.99:3306
Source Database       : top_online

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2015-08-04 15:27:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ass_news
-- ----------------------------
DROP TABLE IF EXISTS `ass_news`;
CREATE TABLE `ass_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `publish_date` datetime NOT NULL COMMENT '发布日期',
  `source` varchar(45) DEFAULT NULL COMMENT '新闻来源（政府、学校）',
  `category` varchar(45) DEFAULT NULL COMMENT '所属板块（继续教育、会计从业）',
  `type` int(11) NOT NULL COMMENT '新闻类别（通知、新闻）',
  `content` varchar(2000) NOT NULL COMMENT '新闻内容',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

-- ----------------------------
-- Records of ass_news
-- ----------------------------

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `type` int(2) DEFAULT NULL COMMENT '1学历教育、2技能培训、3少儿培训',
  `study_hours` float(4,2) DEFAULT NULL COMMENT '学习时长与study_unit配合使用',
  `study_unit` int(255) DEFAULT NULL COMMENT '1学年、2月、3天、4小时',
  `class_descr` varchar(500) DEFAULT NULL,
  `major_descr` varchar(1000) DEFAULT NULL COMMENT '专业描述',
  `subject` varchar(25) DEFAULT NULL COMMENT '大类',
  `entry_fee` decimal(10,0) DEFAULT NULL COMMENT '报名费',
  `exam_fee` decimal(6,0) DEFAULT NULL COMMENT '考试费',
  `tuition_fee` decimal(6,0) DEFAULT NULL COMMENT '学费',
  `book_fee` decimal(6,0) DEFAULT NULL COMMENT '书本费',
  `price` decimal(6,2) DEFAULT NULL COMMENT 'type为1时是单位价格，其他为总价',
  `pay_method` int(2) DEFAULT NULL COMMENT '付费方式。1在线支付、2线下支付',
  `integral_val` int(8) DEFAULT '0' COMMENT '积分',
  `integral_switch` int(2) DEFAULT NULL COMMENT '1开、2关',
  `start_date` timestamp NULL DEFAULT NULL COMMENT '课程开始时间',
  `end_date` timestamp NULL DEFAULT NULL COMMENT '课程结束时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` int(2) DEFAULT '1' COMMENT '是否删除：1、未删除，2、已删除',
  `study_method` int(2) DEFAULT NULL COMMENT '1夜大、2成人教育',
  `leaf` int(2) DEFAULT NULL COMMENT '是否是叶子节点。1：不是，2：是。',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='学校、专业、课程------弃用';

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '0', '学历教育', '1', null, null, null, '“学历教育”是根据国家教育部下达的招生计划录取的学生，按教育主管部门认可的教学计划实施教学，学生完成学业后，由学校颁发国家统一印制的毕业证书和学位证书。目前我校已有的学历教育有成人高等教育、网络教育、在职教育。', null, null, null, null, null, null, null, '3000', '1', null, null, '2015-04-03 14:43:03', '2015-04-27 18:27:08', '1', null, '1', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('2', '1', '高起专', '1', null, null, null, '高中同等学历（高中、中专、中技、职高）起点学历报考专科学历。', null, null, null, null, null, null, null, '3000', '1', null, null, null, '2015-04-27 18:27:08', '1', null, '1', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('3', '1', '专升本', '1', null, null, null, '专升本是大专学历（有学信网上可查的国家承认的大专毕业证）起点报考升本科。', null, null, null, null, null, null, null, '3000', '1', null, null, null, '2015-04-27 18:27:08', '1', null, '1', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('4', '1', '高起本', '1', null, null, null, '高中同等学力（高中、中专、中技、职高）起点学历报考本科学历。', null, null, null, null, null, null, null, '3000', '1', null, null, null, '2015-04-27 18:27:08', '1', null, '1', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('5', '2', '齐鲁工业大学', '1', null, null, null, '齐鲁工业大学始建于1948年，2013年，学校由山东轻工业学院更名为齐鲁工业大学。学校是山东省“应用型人才特色名校”立项建设单位和山东省“2011协同创新计划”立项建设单位。', null, null, null, null, null, null, null, '3000', '1', null, null, null, '2015-04-27 18:27:08', '1', null, '1', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('6', '5', '装潢艺术设计', '1', '2.50', '1', '周末班；晚上班；平常班', '计算机应用基础、艺术概论、素描、水粉、图案、字体设计、平面构成、立体构成、色彩构成、透视、装饰画、标志设计、封面设计、广告设计、包装设计', '艺术类', null, '180', '2600', '600', '1.00', null, '3000', '1', '2015-03-01 19:03:57', '2018-03-01 19:04:33', null, '2015-04-27 18:21:06', '1', null, '2', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('7', '5', '电脑艺术设计', '1', '2.50', '1', '周末班；晚上班；平常班', '计算机应用、艺术概论、素描、水粉、构成基础、图案、Potoshop7.0、CorelDRAW10、3DMAX5.0、AutoCAD2000、VI设计、广告设计', '艺术类', null, '180', '2600', '600', '1.00', null, '3000', '1', '2015-03-01 19:03:57', '2018-03-01 19:04:33', null, '2015-04-27 18:21:10', '1', null, '2', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('8', '5', '动漫设计与制作', '1', '2.50', '1', '周末班；晚上班；平常班', '动画原理、角色设计、场景设计、运动规律、视听语言、分镜头、计算机设计、动漫插画、动画剪辑与后期合成、动画项目制作、影视后期软件、三维数字软件、影视动画广告设计、动画音乐与配音、计算机基础、动画项目制作', '艺术类', null, '180', '2600', '600', '1.00', null, '3000', '1', '2015-03-01 19:03:57', '2018-03-01 19:04:33', null, '2015-04-27 18:21:37', '1', null, '2', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('9', '3', '齐鲁工业大学', '1', null, null, null, '齐鲁工业大学始建于1948年，2013年，学校由山东轻工业学院更名为齐鲁工业大学。学校是山东省“应用型人才特色名校”立项建设单位和山东省“2011协同创新计划”立项建设单位。', null, null, null, null, null, null, null, '3000', '1', null, null, null, '2015-04-27 18:27:25', '1', null, '1', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('10', '8', '艺术设计', '1', '2.50', '1', '周末班；晚上班；平常班', '素描、图案、透视、计算机辅助设计、装帧设计、壁画、VI设计、效果图、展示设计、广告设计、室内设计、室外设计包装设计', '艺术类', null, '180', '2600', '600', '1.00', null, '3000', '1', '2015-03-01 19:03:57', '2018-03-01 19:04:33', null, '2015-05-21 11:55:29', '1', null, '2', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('11', '8', '法学', '1', '2.50', '1', '周末班；晚上班；平常班', '法学基础、宪法', '法学类', null, '180', '2000', '600', '1.00', null, '3000', '1', '2015-03-01 19:03:57', '2018-03-01 19:04:33', null, '2015-05-21 11:55:32', '1', null, '2', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('12', '8', '国际经济与贸易', '1', '2.50', '1', '周末班；晚上班；平常班', '国际经济学、计量经济学、管理学、管理信息系统、世界经济概论、国际贸易实务、国际市场营销、国际商法、国际投资、国际经济合作', '经管类', null, '180', '2200', '600', '1.00', null, '3000', '1', '2015-03-01 19:03:57', '2018-03-01 19:04:33', null, '2015-05-21 11:55:34', '1', null, '2', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('13', '4', '齐鲁工业大学', '1', null, null, null, '齐鲁工业大学始建于1948年，2013年，学校由山东轻工业学院更名为齐鲁工业大学。学校是山东省“应用型人才特色名校”立项建设单位和山东省“2011协同创新计划”立项建设单位。', null, null, null, null, null, null, null, '3000', '1', null, null, null, '2015-04-27 18:27:46', '1', null, '1', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('14', '13', '艺术设计', '1', '5.00', '1', '周末班；晚上班；平常班', '素描、水粉、图案、透视、国画、摄影、计算机辅助设计、装帧设计、壁画、VI设计、效果图、展示设计、广告设室内设计、包装设计', '艺术类', null, '180', '2600', '600', '1.00', null, '3000', '1', '2015-03-01 19:03:57', '2018-03-01 19:04:33', null, '2015-05-21 11:55:39', '1', null, '2', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('15', '13', '潍坊医学院', '1', null, null, null, '潍坊医学院是一所以医学为主，管理学、法学、理学、文学等多学科门类相结合的省属高等医学院校。学校前身是成立于1951年的山东省昌潍医士学校，1958年在青岛医学院（现青岛大学医学院）支援下扩建为昌潍医学院，1987年更名为潍坊医学院，教育部“卓越医生教育培养计划”试点高校。', null, null, null, null, null, null, null, '3000', '1', null, null, null, '2015-05-21 11:55:42', '1', null, '1', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('16', '15', '临床医学', '1', '2.50', '1', '周末班；晚上班；平常班', '计算机文化基础、医用化学、英语、政治、组织胚胎学、人体解剖学、生理学、生物化学、病理学、诊断学、药理学、病原生物学、医学伦理学、内科学、外科学、预防医学、传染病学、儿科学、妇产科学', '医学类', null, '180', '2600', '600', '1.00', null, '3000', '1', '2015-03-01 19:03:57', '2018-03-01 19:04:33', null, '2015-04-27 18:24:38', '1', null, '2', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('17', '3', '潍坊医学院', '1', null, null, null, '潍坊医学院是一所以医学为主，管理学、法学、理学、文学等多学科门类相结合的省属高等医学院校。学校前身是成立于1951年的山东省昌潍医士学校，1958年在青岛医学院（现青岛大学医学院）支援下扩建为昌潍医学院，1987年更名为潍坊医学院，教育部“卓越医生教育培养计划”试点高校。', null, null, null, null, null, null, null, '3000', '1', null, null, null, '2015-04-27 18:27:52', '1', null, '1', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('18', '17', '临床医学', '1', '2.50', '1', '周末班；晚上班；平常班', '高等数学、计算机文化基础、英语、政治、系统解剖学、生理学、生物化学、病理学、药理学、病理生理学、医学影像学、内科学、妇产科学、卫生统计学、核医学、外科学、传染病学、儿科学', '医学类', null, '180', '2600', '600', '1.00', null, '3000', '1', '2015-03-01 19:03:57', '2018-03-01 19:04:33', null, '2015-04-27 18:25:14', '1', null, '2', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('19', '4', '潍坊医学院', '1', null, null, null, '潍坊医学院是一所以医学为主，管理学、法学、理学、文学等多学科门类相结合的省属高等医学院校。学校前身是成立于1951年的山东省昌潍医士学校，1958年在青岛医学院（现青岛大学医学院）支援下扩建为昌潍医学院，1987年更名为潍坊医学院，教育部“卓越医生教育培养计划”试点高校。', null, null, null, null, null, null, null, '3000', '1', null, null, null, '2015-04-27 18:27:58', '1', null, '1', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('20', '19', '临床医学', '1', '5.00', '1', '周末班；晚上班；平常班', '高等数学、计算机文化基础、英语、政治、系统解剖学、生理学、生物化学、病理学、药理学、病理生理学、医学影像学、内科学、妇产科学、卫生统计学、核医学、外科学、传染病学、儿科学', '理工类', null, '180', '2600', '600', '1.00', null, '3000', '1', '2015-03-01 19:03:57', '2018-03-01 19:04:33', null, '2015-04-27 18:26:19', '1', null, '2', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('21', '0', '技能培训', '2', null, null, null, '技能培训是为了增强市场就业竞争力，由技能培训机构开展的。通过技能考核，可以得到国家认可的技能证书。', null, null, null, null, null, null, null, '3000', '1', null, null, null, '2015-04-27 18:28:02', '1', null, '1', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('22', '21', '职业技能', '2', null, null, null, '职业技能，即指学生将来就业所需的技术和能力。', null, null, null, null, null, null, null, '3000', '1', null, null, null, '2015-04-27 18:28:06', '1', null, '1', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('23', '21', '会计培训', '2', null, null, null, '针对想取得会计从业资格证、会计职称的人员进行相关知识的培训。', null, null, null, null, null, null, null, '3000', '1', null, null, null, '2015-04-27 18:28:14', '1', null, '1', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('24', '22', '咖啡师', '2', '3.00', '2', '周末班；晚上班；平常班', '培训熟悉咖啡文化、制作方法及技巧的专业制作咖啡的服务人员', null, null, '160', '3000', null, '1.00', '1', '3000', '1', '2015-03-18 19:10:49', '2015-07-10 19:11:01', null, '2015-04-27 18:10:05', '1', null, '2', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('25', '23', '会计从业资格证', '2', null, null, '周末班；晚上班；平常班', '针对想取得会计从业资格证的人员进行相关知识的培训。', null, null, null, null, null, null, '1', '3000', '1', null, null, null, '2015-04-27 18:10:36', '1', null, '1', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('26', '25', '基础班', '2', '3.00', '2', '周末班；晚上班；平常班', '系统、全面的学习会计基础知识，讲解历年考题中出现的相应知识点。', null, null, '180', '1200', null, '1.00', null, '3000', '1', '2015-04-15 19:10:57', '2015-06-09 19:11:06', null, '2015-04-27 18:20:23', '1', null, '2', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('27', '25', '强化班', '2', '3.00', '2', '周末班；晚上班；平常班', '在了解会计知识的基础上，进一步强化知识点，结合历年考题重点分析。', null, null, '180', '2000', null, '1.00', null, '3000', '1', '2015-04-15 19:10:57', '2015-06-09 19:11:06', null, '2015-04-27 18:16:59', '1', null, '2', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('28', '25', '通关班', '2', '3.00', '2', '周末班；晚上班；平常班', '重点剖析热门考点，传授答题技巧，全真上机模拟。', null, null, '180', '2700', null, '1.00', null, '3000', '1', '2015-04-15 19:10:57', '2015-06-09 19:11:06', null, '2015-04-27 18:17:17', '1', null, '2', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('29', '2', '山东大学', '1', null, null, null, '山东大学是一所历史悠久、学科齐全、学术实力雄厚、办学特色鲜明，在国内外具有重要影响的教育部直属重点综合性大学，是国家“211工程”和“985工程”重点建设的高水平大学之一。', null, null, null, null, null, null, null, '3000', '1', '2015-05-19 15:28:57', '2015-05-19 15:29:06', null, '2015-05-19 15:28:53', '1', null, '1', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('30', '29', '工商企业管理', '1', '2.50', '1', '周末班；晚上班；平常班', '英语1、英语2、英语3、英语4、政治理论、计算机基础、政治经济学、经济学原理、管理学、经济法、高等数学、基础会计学、公共关系学、货币银行学、组织行为学、人力资源管理、市场营销学、生产运作管理、管理信息系统、财务管理学', '文史类', null, '180', '2200', '600', '1.00', null, '3000', '1', '2015-05-19 15:39:14', '2015-05-19 15:39:23', null, '2015-05-19 15:50:00', '1', null, '2', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('31', '29', '法律事务', '1', '2.50', '1', '周末班；晚上班；平常班', '英语1、英语2、英语3、英语4、政治理论、计算机基础、法理学、宪法学、民事诉讼法、管理学、 经济法、刑事诉讼法、中国法制史、民法总论、刑法总论、民法分论、刑法分论、公司法、行政法。', '文史类', null, '180', '2200', '600', '1.00', null, '3000', '1', '2015-05-19 15:39:14', '2015-05-19 15:39:23', null, '2015-05-19 15:50:03', '1', null, '2', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('32', '29', '人力资源管理', '1', '2.50', '1', '周末班；晚上班；平常班', '英语1、英语2、英语3、英语4、政治理论、计算机基础、高等数学、政治经济学、管理学、经济法、人力资源管理概论、组织行为学、招聘与筛选、绩效考核、薪酬管理、职业生涯管理、劳动经济学、生产运作管理、雇员流动管理。', '文史类', null, '180', '2200', '600', '1.00', null, '3000', '1', '2015-05-19 15:39:14', '2015-05-19 15:39:23', null, '2015-05-19 15:50:06', '1', null, '2', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('33', '3', '山东大学', null, null, null, null, '山东大学是一所历史悠久、学科齐全、学术实力雄厚、办学特色鲜明，在国内外具有重要影响的教育部直属重点综合性大学，是国家“211工程”和“985工程”重点建设的高水平大学之一。', null, null, null, null, null, null, null, '3000', '1', null, null, null, '2015-05-19 15:52:08', '1', null, '1', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('34', '33', '汉语言文学', '1', '2.50', '1', '周末班；晚上班；平常班', '英语1、英语2、英语3、英语4、政治理论、计算机基础、现代汉语、文学概论、中国古代文学、外国文学、中国当代文学、古典小说与传统文化心理、古代汉语、世界华文文学研究、当前文学热点、外国文学文化研究、神韵诗研究、中国现代文学、语言学概论', '文史类', null, '180', '2000', '600', '1.00', null, '3000', '1', '2015-05-19 15:39:14', '2015-05-19 15:39:23', null, '2015-05-19 15:53:39', '1', null, '2', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('35', '33', '法学', '1', '2.50', '1', '周末班；晚上班；平常班', '英语1、英语2、英语3、英语4、政治理论、计算机基础、中国法制史、宪法学、民法总论、刑法总论、民事诉讼法、民法分论、刑法分论、刑事诉讼法、行政法(含诉讼法)、经济法学、知识产权法、法理学', '法学类', null, '180', '2000', '600', '1.00', null, '3000', '1', '2015-05-19 15:39:14', '2015-05-19 15:39:14', null, '2015-05-19 15:53:37', '1', null, '2', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('36', '33', '预防医学', '1', '2.50', '1', '周末班；晚上班；平常班', '英语1、英语2、英语3、英语4、政治理论、计算机基础、卫生统计学、流行病学、社会医学、卫生事业管理、妇幼卫生学、职业卫生与职业医学、环境卫生学、营养与食品卫生学、食品理化检验、生物材料检验、空气检验、水质检验、卫生微生物学、卫生法规与监督学', '医学类', null, '180', '2600', '600', '1.00', null, '3000', '1', '2015-05-19 15:39:14', '2015-05-19 15:39:14', null, '2015-05-19 16:05:29', '1', null, '2', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('37', '2', '山东理工大学', '1', null, null, null, '山东理工大学创建于1956年，坐落在历史悠久的齐文化发祥地——山东省淄博市，是山东省重点建设的理工科大学。', null, null, null, null, null, null, null, '3000', '1', '2015-05-19 15:39:14', '2015-05-19 15:39:14', null, '2015-05-19 17:08:15', '1', null, '1', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('39', '37', '供应电技术', '1', '2.50', '1', '周末班；晚上班；平常班', '马克思主义基本原理、英语1、信息技术基础、高等数学1、英语2、自动控制原理、数字电子技术、嵌入式系统基础、模拟电子技术、电路分析基础、电力电子技术B、电力系统分析、发电厂电气部分、高电压技术、工厂电气控制技术、电力系统自动装置原理、电子设计初级工程师实训（任选）、专业课程设计、数字电子课程设计、模拟电子课程设计、生产实习', '理工类', null, '180', '2200', '600', '1.00', null, '3000', '1', '2015-05-19 15:39:14', '2015-05-19 15:39:14', null, '2015-05-19 16:08:43', '1', null, '2', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('40', '37', '机械设计与制造', '1', '2.50', '1', '周末班；晚上班；平常班', '马克思主义基本原理、英语1、信息技术基础、高等数学1、英语2、工程力学B、机械制图B、电工与电子技术B、互换性与技术测量、金属材料及工艺B、机械设计基础B、电气控制技术、机械制造工艺学、液压与气压传动、金属切削机床概论、数控技术B、先进制造技术', '理工类', null, '180', '2200', '600', '1.00', null, '3000', '1', '2015-05-19 15:39:14', '2015-05-19 15:39:14', null, '2015-05-19 16:08:55', '1', null, '2', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('41', '3', '山东理工大学', '1', null, null, null, '山东理工大学创建于1956年，坐落在历史悠久的齐文化发祥地——山东省淄博市，是山东省重点建设的理工科大学。', null, null, null, null, null, null, null, '3000', null, null, null, null, '2015-05-19 17:08:21', '1', null, '1', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('42', '41', '学前教育', '1', '2.50', '1', '周末班；晚上班；平常班', '毛泽东思想与中国特色社会主义理论体系概论、大学英语1、大学英语2、现代教育技术、现代教育理论、学前教育心理学、儿童心理健康教育、学前儿童家庭教育、学前游戏论、中外学前比较教育、学前卫生与营养学、学前教育政策与法规、学前语言教育、学前教育管理、学前数学教育、学前艺术与科学教育、学位英语、毕业论文', '教育学类', null, '180', '2000', '600', '1.00', null, '3000', '1', '2015-05-19 15:39:14', '2015-05-19 15:39:14', null, '2015-05-19 16:14:59', '1', null, '2', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('43', '41', '法学', '1', '2.50', '1', '周末班；晚上班；平常班', '毛泽东思想与中国特色社会主义理论体系概论、大学英语1、大学英语2、法理学专题、物权法、合同法学、侵权行为法、商法学、律师实务、经济法专题、婚姻家庭继承法、证据法、公司法学、劳动与社会保障法学、知识产权法学、国际经济法、国际私法、学位英语、法律案例分析、毕业论文', '法学类', null, '180', '2000', '600', '1.00', null, '3000', '1', '2015-05-19 15:39:14', '2015-05-19 15:39:14', null, '2015-05-19 16:15:00', '1', null, '2', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('44', '41', '英语', '1', '2.50', '1', '周末班；晚上班；平常班', '毛泽东思想与中国特色社会主义理论体系概论、现代教育技术、现代教育理论、高级英语1、英语语法A、高级英语2、日语1、高级写作、高级英语3、日语2、高级英语视听说、日语3、英语教学法A、英美文学、英语语言学概论、翻译理论与实践、高级英语口译、毕业论文', '文史类', null, '180', '2000', '600', '1.00', null, '3000', '1', '2015-05-19 15:39:14', '2015-05-19 15:39:14', null, '2015-05-19 16:15:01', '1', null, '2', null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('46', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, '2015-05-19 15:55:04', '1', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for cedu_course
-- ----------------------------
DROP TABLE IF EXISTS `cedu_course`;
CREATE TABLE `cedu_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) DEFAULT NULL COMMENT '课程年度',
  `region` varchar(45) DEFAULT NULL COMMENT '地区',
  `dic_course_id` int(11) NOT NULL,
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `fk_cedu_course_dic_course1_idx` (`dic_course_id`) USING BTREE,
  CONSTRAINT `cedu_course_ibfk_1` FOREIGN KEY (`dic_course_id`) REFERENCES `dic_course` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='继续教育课程';

-- ----------------------------
-- Records of cedu_course
-- ----------------------------

-- ----------------------------
-- Table structure for cedu_courseware
-- ----------------------------
DROP TABLE IF EXISTS `cedu_courseware`;
CREATE TABLE `cedu_courseware` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `audition` tinyint(1) DEFAULT NULL COMMENT '是否可以试听',
  `try_learn` tinyint(1) DEFAULT NULL COMMENT '是否可以试学',
  `cedu_course_id` int(11) NOT NULL,
  `dic_courseware_id` int(11) NOT NULL,
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `fk_cedu_courseware_cedu_course1_idx` (`cedu_course_id`) USING BTREE,
  KEY `fk_cedu_courseware_dic_courseware1_idx` (`dic_courseware_id`) USING BTREE,
  CONSTRAINT `cedu_courseware_ibfk_1` FOREIGN KEY (`cedu_course_id`) REFERENCES `cedu_course` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `cedu_courseware_ibfk_2` FOREIGN KEY (`dic_courseware_id`) REFERENCES `dic_courseware` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='继续教育课件';

-- ----------------------------
-- Records of cedu_courseware
-- ----------------------------

-- ----------------------------
-- Table structure for cedu_courseware_content
-- ----------------------------
DROP TABLE IF EXISTS `cedu_courseware_content`;
CREATE TABLE `cedu_courseware_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `save_hour` tinyint(1) DEFAULT NULL COMMENT '是否计入课时',
  `cedu_courseware_id` int(11) NOT NULL,
  `dic_courseware_content_id` int(11) NOT NULL,
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `fk_cedu_courseware_content_cedu_courseware1_idx` (`cedu_courseware_id`) USING BTREE,
  KEY `fk_cedu_courseware_content_dic_courseware_content1_idx` (`dic_courseware_content_id`) USING BTREE,
  CONSTRAINT `cedu_courseware_content_ibfk_1` FOREIGN KEY (`cedu_courseware_id`) REFERENCES `cedu_courseware` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `cedu_courseware_content_ibfk_2` FOREIGN KEY (`dic_courseware_content_id`) REFERENCES `dic_courseware_content` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='继续教育课件内容';

-- ----------------------------
-- Records of cedu_courseware_content
-- ----------------------------

-- ----------------------------
-- Table structure for cedu_region
-- ----------------------------
DROP TABLE IF EXISTS `cedu_region`;
CREATE TABLE `cedu_region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(100) DEFAULT NULL COMMENT '省份',
  `city` varchar(100) DEFAULT NULL COMMENT '城市',
  `street` varchar(200) DEFAULT NULL COMMENT '街道',
  `dic_course_id` int(11) NOT NULL COMMENT '课程表外键',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `fk_cedu_region_dic_course1_idx` (`dic_course_id`) USING BTREE,
  CONSTRAINT `cedu_region_ibfk_1` FOREIGN KEY (`dic_course_id`) REFERENCES `dic_course` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='继续教育地区';

-- ----------------------------
-- Records of cedu_region
-- ----------------------------

-- ----------------------------
-- Table structure for cedu_video_pop
-- ----------------------------
DROP TABLE IF EXISTS `cedu_video_pop`;
CREATE TABLE `cedu_video_pop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `play_time` int(11) DEFAULT NULL COMMENT '视频播放时间',
  `question_id` int(11) DEFAULT NULL COMMENT '题目外键',
  `cedu_courseware_content_id` int(11) NOT NULL,
  `dic_question_id` int(11) NOT NULL,
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `fk_cedu_video_pop_cedu_courseware_content1_idx` (`cedu_courseware_content_id`) USING BTREE,
  KEY `fk_cedu_video_pop_dic_question1_idx` (`dic_question_id`) USING BTREE,
  CONSTRAINT `cedu_video_pop_ibfk_1` FOREIGN KEY (`cedu_courseware_content_id`) REFERENCES `cedu_courseware_content` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `cedu_video_pop_ibfk_2` FOREIGN KEY (`dic_question_id`) REFERENCES `dic_question` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='继续教育视频弹出内容';

-- ----------------------------
-- Records of cedu_video_pop
-- ----------------------------

-- ----------------------------
-- Table structure for cedu_year
-- ----------------------------
DROP TABLE IF EXISTS `cedu_year`;
CREATE TABLE `cedu_year` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL COMMENT '年度名称',
  `desc` varchar(500) DEFAULT NULL COMMENT '年度报表',
  `total_time` int(4) unsigned zerofill NOT NULL DEFAULT '0024' COMMENT '总课时（默认为24课时）',
  `default` tinyint(1) NOT NULL COMMENT '是否是默认年度',
  `dic_course_id` int(11) NOT NULL COMMENT '课程表外键',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`) USING BTREE,
  KEY `fk_cedu_year_dic_course1_idx` (`dic_course_id`) USING BTREE,
  CONSTRAINT `cedu_year_ibfk_1` FOREIGN KEY (`dic_course_id`) REFERENCES `dic_course` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='继续教育年度';

-- ----------------------------
-- Records of cedu_year
-- ----------------------------

-- ----------------------------
-- Table structure for dic_category
-- ----------------------------
DROP TABLE IF EXISTS `dic_category`;
CREATE TABLE `dic_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL COMMENT '体系名称（行政行业、企业、农村基层）',
  `desc` varchar(45) DEFAULT NULL COMMENT '描述',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程体系';

-- ----------------------------
-- Records of dic_category
-- ----------------------------

-- ----------------------------
-- Table structure for dic_course
-- ----------------------------
DROP TABLE IF EXISTS `dic_course`;
CREATE TABLE `dic_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL COMMENT '课程名称',
  `system` int(2) DEFAULT NULL COMMENT '体系（TODO）',
  `type` varchar(45) DEFAULT NULL COMMENT '课程类型(TODO)',
  `desc` varchar(500) DEFAULT NULL COMMENT '描述',
  `dic_category_id` int(11) NOT NULL,
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `fk_dic_course_dic_category_idx` (`dic_category_id`) USING BTREE,
  CONSTRAINT `dic_course_ibfk_1` FOREIGN KEY (`dic_category_id`) REFERENCES `dic_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程表';

-- ----------------------------
-- Records of dic_course
-- ----------------------------

-- ----------------------------
-- Table structure for dic_courseware
-- ----------------------------
DROP TABLE IF EXISTS `dic_courseware`;
CREATE TABLE `dic_courseware` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL COMMENT '课件名称',
  `desc` varchar(500) DEFAULT NULL COMMENT '课件描述',
  `video_time` int(11) unsigned zerofill NOT NULL COMMENT '视频时长',
  `question_count` int(11) unsigned zerofill DEFAULT NULL COMMENT '题目个数',
  `dic_course_id` int(11) NOT NULL,
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `fk_dic_courseware_dic_course1_idx` (`dic_course_id`) USING BTREE,
  CONSTRAINT `dic_courseware_ibfk_1` FOREIGN KEY (`dic_course_id`) REFERENCES `dic_course` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课件';

-- ----------------------------
-- Records of dic_courseware
-- ----------------------------

-- ----------------------------
-- Table structure for dic_courseware_content
-- ----------------------------
DROP TABLE IF EXISTS `dic_courseware_content`;
CREATE TABLE `dic_courseware_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL COMMENT '内容类型（1：视频，2：题目）',
  `foreign_id` int(11) NOT NULL COMMENT '视频表、题目表外键',
  `dic_courseware_id` int(11) NOT NULL,
  `dic_question_id` int(11) NOT NULL,
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `fk_dic_courseware_content_dic_courseware1_idx` (`dic_courseware_id`) USING BTREE,
  KEY `fk_dic_courseware_content_dic_question1_idx` (`dic_question_id`) USING BTREE,
  CONSTRAINT `dic_courseware_content_ibfk_1` FOREIGN KEY (`dic_courseware_id`) REFERENCES `dic_courseware` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `dic_courseware_content_ibfk_2` FOREIGN KEY (`dic_question_id`) REFERENCES `dic_question` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课件内容';

-- ----------------------------
-- Records of dic_courseware_content
-- ----------------------------

-- ----------------------------
-- Table structure for dic_option
-- ----------------------------
DROP TABLE IF EXISTS `dic_option`;
CREATE TABLE `dic_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) NOT NULL COMMENT '选项内容',
  `seq` int(11) unsigned DEFAULT NULL COMMENT '选项序号',
  `answer` tinyint(4) NOT NULL COMMENT '是否是正确答案',
  `dic_question_id` int(11) NOT NULL,
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `fk_dic_option_dic_question1_idx` (`dic_question_id`) USING BTREE,
  CONSTRAINT `dic_option_ibfk_1` FOREIGN KEY (`dic_question_id`) REFERENCES `dic_question` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='题目选项';

-- ----------------------------
-- Records of dic_option
-- ----------------------------

-- ----------------------------
-- Table structure for dic_question
-- ----------------------------
DROP TABLE IF EXISTS `dic_question`;
CREATE TABLE `dic_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) NOT NULL COMMENT '题目',
  `type` int(2) NOT NULL COMMENT '题目类型（1：判断，2：单选，3：多选）',
  `teacher_id` int(11) DEFAULT NULL COMMENT '老师外键',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `difficulty` int(2) unsigned zerofill DEFAULT NULL COMMENT '难度系数（0到9）',
  `dic_teacher_id` int(11) NOT NULL COMMENT '老师表外键',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `fk_dic_question_dic_teacher1_idx` (`dic_teacher_id`) USING BTREE,
  CONSTRAINT `dic_question_ibfk_1` FOREIGN KEY (`dic_teacher_id`) REFERENCES `dic_teacher` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='题目';

-- ----------------------------
-- Records of dic_question
-- ----------------------------

-- ----------------------------
-- Table structure for dic_question_bank
-- ----------------------------
DROP TABLE IF EXISTS `dic_question_bank`;
CREATE TABLE `dic_question_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL COMMENT '题库名称题库名称',
  `count` int(5) unsigned zerofill DEFAULT NULL COMMENT '题目个数',
  `desc` varchar(500) DEFAULT NULL COMMENT '题库描述',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='题库';

-- ----------------------------
-- Records of dic_question_bank
-- ----------------------------

-- ----------------------------
-- Table structure for dic_question_bank_item
-- ----------------------------
DROP TABLE IF EXISTS `dic_question_bank_item`;
CREATE TABLE `dic_question_bank_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL COMMENT '题目主键',
  `dic_question_bank_id` int(11) NOT NULL,
  `dic_question_id` int(11) NOT NULL,
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`,`dic_question_id`),
  KEY `fk_dic_question_bank_item_dic_question_bank1_idx` (`dic_question_bank_id`) USING BTREE,
  KEY `fk_dic_question_bank_item_dic_question1_idx` (`dic_question_id`) USING BTREE,
  CONSTRAINT `dic_question_bank_item_ibfk_1` FOREIGN KEY (`dic_question_id`) REFERENCES `dic_question` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `dic_question_bank_item_ibfk_2` FOREIGN KEY (`dic_question_bank_id`) REFERENCES `dic_question_bank` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='题库题目';

-- ----------------------------
-- Records of dic_question_bank_item
-- ----------------------------

-- ----------------------------
-- Table structure for dic_resolution
-- ----------------------------
DROP TABLE IF EXISTS `dic_resolution`;
CREATE TABLE `dic_resolution` (
  `dic_question_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '试题表外键',
  `content` varchar(500) NOT NULL COMMENT '解析内容',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dic_question_id`),
  UNIQUE KEY `dic_question_id_UNIQUE` (`dic_question_id`) USING BTREE,
  KEY `fk_dic_question_resolution_dic_question1_idx` (`dic_question_id`) USING BTREE,
  CONSTRAINT `dic_resolution_ibfk_1` FOREIGN KEY (`dic_question_id`) REFERENCES `dic_question` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='题目解析';

-- ----------------------------
-- Records of dic_resolution
-- ----------------------------

-- ----------------------------
-- Table structure for dic_teacher
-- ----------------------------
DROP TABLE IF EXISTS `dic_teacher`;
CREATE TABLE `dic_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `grade` varchar(45) DEFAULT NULL COMMENT '等级(todo)',
  `unit` varchar(45) DEFAULT NULL COMMENT '单位',
  `rank` varchar(45) DEFAULT NULL COMMENT '职称',
  `desc` varchar(500) DEFAULT NULL COMMENT '介绍',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教师';

-- ----------------------------
-- Records of dic_teacher
-- ----------------------------

-- ----------------------------
-- Table structure for dic_video
-- ----------------------------
DROP TABLE IF EXISTS `dic_video`;
CREATE TABLE `dic_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total_time` int(5) unsigned zerofill DEFAULT NULL COMMENT '总时长',
  `handouts` varchar(2000) DEFAULT NULL COMMENT '讲义',
  `name` varchar(100) NOT NULL COMMENT '视频名称',
  `desc` varchar(500) DEFAULT NULL COMMENT '视频描述',
  `record_time` int(5) unsigned zerofill DEFAULT NULL COMMENT '录制时间(单位为妙)',
  `path` varchar(50) NOT NULL COMMENT '文件名称',
  `dic_courseware_content_id` int(11) DEFAULT NULL COMMENT '课程内容表外键',
  `dic_teacher_id` int(11) DEFAULT NULL COMMENT '老师表外键',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `path_UNIQUE` (`path`) USING BTREE,
  KEY `fk_dic_video_dic_courseware_content1_idx` (`dic_courseware_content_id`) USING BTREE,
  KEY `fk_dic_video_dic_teacher1_idx` (`dic_teacher_id`) USING BTREE,
  CONSTRAINT `dic_video_ibfk_1` FOREIGN KEY (`dic_courseware_content_id`) REFERENCES `dic_courseware_content` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `dic_video_ibfk_2` FOREIGN KEY (`dic_teacher_id`) REFERENCES `dic_teacher` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='视频表';

-- ----------------------------
-- Records of dic_video
-- ----------------------------

-- ----------------------------
-- Table structure for exam_paper
-- ----------------------------
DROP TABLE IF EXISTS `exam_paper`;
CREATE TABLE `exam_paper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL COMMENT '试卷名称',
  `total_time` float unsigned zerofill NOT NULL COMMENT '总时长',
  `total_score` float unsigned zerofill NOT NULL COMMENT '总分数',
  `desc` varchar(45) DEFAULT NULL COMMENT '试卷描述',
  `evaluation_name` int(11) DEFAULT NULL COMMENT '评测名称（1：及格，2：良好，3：满分）',
  `evaluation_score` float DEFAULT NULL COMMENT '评测分数',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试卷';

-- ----------------------------
-- Records of exam_paper
-- ----------------------------

-- ----------------------------
-- Table structure for exam_paper_question
-- ----------------------------
DROP TABLE IF EXISTS `exam_paper_question`;
CREATE TABLE `exam_paper_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) unsigned zerofill NOT NULL COMMENT '分值',
  `limit_time` int(11) unsigned zerofill NOT NULL COMMENT '限制时间',
  `seq` int(11) DEFAULT NULL COMMENT '序号',
  `exam_paper_role_id` int(11) NOT NULL COMMENT '考试试卷',
  `dic_question_id` int(11) NOT NULL COMMENT '题目表外键',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `fk_exam_paper_question_exam_paper_role1_idx` (`exam_paper_role_id`) USING BTREE,
  KEY `fk_exam_paper_question_dic_question1_idx` (`dic_question_id`) USING BTREE,
  CONSTRAINT `exam_paper_question_ibfk_1` FOREIGN KEY (`dic_question_id`) REFERENCES `dic_question` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `exam_paper_question_ibfk_2` FOREIGN KEY (`exam_paper_role_id`) REFERENCES `exam_paper_role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试卷题目';

-- ----------------------------
-- Records of exam_paper_question
-- ----------------------------

-- ----------------------------
-- Table structure for exam_paper_role
-- ----------------------------
DROP TABLE IF EXISTS `exam_paper_role`;
CREATE TABLE `exam_paper_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL COMMENT '组名称',
  `desc` varchar(500) DEFAULT NULL COMMENT '组描述',
  `exam_paper_id` int(11) NOT NULL COMMENT '试卷表外键',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `fk_exam_paper_role_exam_paper1_idx` (`exam_paper_id`) USING BTREE,
  CONSTRAINT `exam_paper_role_ibfk_1` FOREIGN KEY (`exam_paper_id`) REFERENCES `exam_paper` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试卷内容组卷规则';

-- ----------------------------
-- Records of exam_paper_role
-- ----------------------------

-- ----------------------------
-- Table structure for his_cedu_exam
-- ----------------------------
DROP TABLE IF EXISTS `his_cedu_exam`;
CREATE TABLE `his_cedu_exam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL COMMENT '试卷名称',
  `total_time` float unsigned zerofill NOT NULL COMMENT '总时长',
  `total_score` float unsigned zerofill NOT NULL COMMENT '总分数',
  `desc` varchar(45) DEFAULT NULL COMMENT '试卷描述',
  `evaluation_name` varchar(45) DEFAULT NULL COMMENT '评测名称（1：及格，2：良好，3：满分）',
  `evaluation_score` float DEFAULT NULL,
  `user_id` int(11) NOT NULL COMMENT '用户表外键',
  `begin_time` datetime NOT NULL COMMENT '考试开始时间',
  `end_time` datetime NOT NULL COMMENT '考试结束时间',
  `type` int(2) unsigned NOT NULL COMMENT '考试类型（1：正式，2：模拟）',
  `year` int(5) unsigned DEFAULT NULL COMMENT '年度',
  `user_score` float NOT NULL COMMENT '用户考试得分',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试卷';

-- ----------------------------
-- Records of his_cedu_exam
-- ----------------------------

-- ----------------------------
-- Table structure for his_cedu_exam_option
-- ----------------------------
DROP TABLE IF EXISTS `his_cedu_exam_option`;
CREATE TABLE `his_cedu_exam_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) NOT NULL COMMENT '选项内容',
  `seq` int(11) unsigned zerofill DEFAULT NULL COMMENT '选项序号',
  `answer` tinyint(4) NOT NULL COMMENT '是否是正确答案',
  `his_cedu_exam_question_id` int(11) NOT NULL,
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `fk_his_cedu_exam_option_his_cedu_exam_question1_idx` (`his_cedu_exam_question_id`) USING BTREE,
  CONSTRAINT `his_cedu_exam_option_ibfk_1` FOREIGN KEY (`his_cedu_exam_question_id`) REFERENCES `his_cedu_exam_question` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='题目选项';

-- ----------------------------
-- Records of his_cedu_exam_option
-- ----------------------------

-- ----------------------------
-- Table structure for his_cedu_exam_print
-- ----------------------------
DROP TABLE IF EXISTS `his_cedu_exam_print`;
CREATE TABLE `his_cedu_exam_print` (
  `his_cedu_exam_id` int(11) NOT NULL,
  `print_user_id` int(11) NOT NULL COMMENT '打印人外键',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`his_cedu_exam_id`),
  KEY `fk_his_cedu_exam_print_his_cedu_exam1_idx` (`his_cedu_exam_id`) USING BTREE,
  CONSTRAINT `his_cedu_exam_print_ibfk_1` FOREIGN KEY (`his_cedu_exam_id`) REFERENCES `his_cedu_exam` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='继续教育考试打印明细';

-- ----------------------------
-- Records of his_cedu_exam_print
-- ----------------------------

-- ----------------------------
-- Table structure for his_cedu_exam_question
-- ----------------------------
DROP TABLE IF EXISTS `his_cedu_exam_question`;
CREATE TABLE `his_cedu_exam_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) NOT NULL COMMENT '题目',
  `type` int(2) unsigned NOT NULL COMMENT '题目类型（1：判断，2：单选，3：多选）',
  `teacher_id` int(11) DEFAULT NULL COMMENT '老师外键',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `difficulty` float DEFAULT NULL COMMENT '难度系数',
  `score` int(11) unsigned zerofill NOT NULL COMMENT '分值',
  `limit_time` int(11) unsigned zerofill DEFAULT NULL COMMENT '限制时间',
  `seq` int(11) unsigned zerofill DEFAULT NULL COMMENT '序号',
  `his_cedu_exam_role_id` int(11) NOT NULL,
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `fk_his_cedu_exam_question_his_cedu_exam_role1_idx` (`his_cedu_exam_role_id`) USING BTREE,
  CONSTRAINT `his_cedu_exam_question_ibfk_1` FOREIGN KEY (`his_cedu_exam_role_id`) REFERENCES `his_cedu_exam_role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试卷题目';

-- ----------------------------
-- Records of his_cedu_exam_question
-- ----------------------------

-- ----------------------------
-- Table structure for his_cedu_exam_resolution
-- ----------------------------
DROP TABLE IF EXISTS `his_cedu_exam_resolution`;
CREATE TABLE `his_cedu_exam_resolution` (
  `his_cedu_exam_question_id` int(11) NOT NULL,
  `content` varchar(500) NOT NULL COMMENT '解析内容',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`his_cedu_exam_question_id`),
  KEY `fk_cedu_exam_question_resolution_cedu_exam_question1_idx` (`his_cedu_exam_question_id`) USING BTREE,
  CONSTRAINT `his_cedu_exam_resolution_ibfk_1` FOREIGN KEY (`his_cedu_exam_question_id`) REFERENCES `his_cedu_exam_question` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='题目解析';

-- ----------------------------
-- Records of his_cedu_exam_resolution
-- ----------------------------

-- ----------------------------
-- Table structure for his_cedu_exam_role
-- ----------------------------
DROP TABLE IF EXISTS `his_cedu_exam_role`;
CREATE TABLE `his_cedu_exam_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL COMMENT '组名称',
  `desc` varchar(500) DEFAULT NULL COMMENT '组描述',
  `his_cedu_exam_id` int(11) NOT NULL,
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `fk_his_cedu_exam_role_his_cedu_exam1_idx` (`his_cedu_exam_id`) USING BTREE,
  CONSTRAINT `his_cedu_exam_role_ibfk_1` FOREIGN KEY (`his_cedu_exam_id`) REFERENCES `his_cedu_exam` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试卷内容组卷规则';

-- ----------------------------
-- Records of his_cedu_exam_role
-- ----------------------------

-- ----------------------------
-- Table structure for his_cedu_record
-- ----------------------------
DROP TABLE IF EXISTS `his_cedu_record`;
CREATE TABLE `his_cedu_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户表外键',
  `year` int(11) unsigned NOT NULL COMMENT '年度',
  `region` varchar(45) NOT NULL COMMENT '区域',
  `hours` float unsigned zerofill NOT NULL COMMENT '已完成课时',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='继续教育学习情况';

-- ----------------------------
-- Records of his_cedu_record
-- ----------------------------

-- ----------------------------
-- Table structure for his_cedu_record_item
-- ----------------------------
DROP TABLE IF EXISTS `his_cedu_record_item`;
CREATE TABLE `his_cedu_record_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(2) unsigned NOT NULL COMMENT '学习类型（1：视频，2：题目，3：模拟考试）',
  `object_id` int(11) NOT NULL COMMENT '对象外键，可能为（视频、题目、试卷的外键）',
  `begin_time` datetime DEFAULT NULL COMMENT '学习开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '学习结束时间',
  `learn_time` int(11) unsigned zerofill NOT NULL COMMENT '此次学习时长',
  `his_cedu_item_id` int(11) NOT NULL COMMENT '用户继续教育学习情况表外键',
  `his_cedu_id` int(11) NOT NULL,
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `fk_his_cedu_item_his_cedu1_idx` (`his_cedu_id`) USING BTREE,
  CONSTRAINT `his_cedu_record_item_ibfk_1` FOREIGN KEY (`his_cedu_id`) REFERENCES `his_cedu_record` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户继续教育学习情况明细';

-- ----------------------------
-- Records of his_cedu_record_item
-- ----------------------------

-- ----------------------------
-- Table structure for integral_record
-- ----------------------------
DROP TABLE IF EXISTS `integral_record`;
CREATE TABLE `integral_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trading_capacity` int(11) DEFAULT NULL COMMENT '交易数量',
  `out_trade_no` varchar(255) DEFAULT NULL COMMENT '关联订单订单号',
  `integral_before` int(11) DEFAULT NULL COMMENT '交易之前积分',
  `integral_behind` int(11) DEFAULT NULL COMMENT '交易之后积分',
  `description` varchar(255) DEFAULT NULL COMMENT '描述备注',
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `userId` int(11) NOT NULL COMMENT '用户id',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COMMENT='支付交易通知记录';

-- ----------------------------
-- Records of integral_record
-- ----------------------------
INSERT INTO `integral_record` VALUES ('30', '100', null, '100', '200', '注册赠送积分', null, '13', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('31', '-20', '20150615160709238', '60', '40', '消费积分', null, '12', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('32', '100', '20150615160709238', '600', '700', '被推荐人18560683520消费，赠送积分', null, '3', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('33', '-20', '20150615211400326', '40', '20', '消费积分', null, '12', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('34', '100', '20150615211400326', '620', '720', '被推荐人18560683520消费，赠送积分', null, '3', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('35', '100', null, '100', '200', '注册赠送积分', null, '14', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('36', '-20', '20150616084622936', '80', '60', '消费积分', null, '14', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('37', '-20', '201506160853507', '20', '0', '消费积分', null, '12', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('38', '100', '201506160853507', '640', '740', '被推荐人18560683520消费，赠送积分', null, '3', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('39', '-20', '20150616091609897', '60', '40', '消费积分', null, '14', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('40', '100', '20150616104533751', '640', '740', '被推荐人18560683520消费，赠送积分', null, '3', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('41', '100', '20150616123348556', '640', '740', '被推荐人18560683520消费，赠送积分', null, '3', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('42', '100', '20150616124525156', '640', '740', '被推荐人18560683520消费，赠送积分', null, '3', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('43', '100', '20150616131151649', '640', '740', '被推荐人18560683520消费，赠送积分', null, '3', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('44', '100', '20150616132557693', '640', '740', '被推荐人18560683520消费，赠送积分', null, '3', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('45', '100', '2015061613335161', '640', '740', '被推荐人18560683520消费，赠送积分', null, '3', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('46', '100', '20150616140304162', '640', '740', '被推荐人18560683520消费，赠送积分', null, '3', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('47', '-20', '20150617094237615', '620', '600', '消费积分', null, '3', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('48', '100', '2015061709455685', '620', '720', '被推荐人18560683520消费，赠送积分', null, '3', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('49', '100', '20150617094702289', '620', '720', '被推荐人18560683520消费，赠送积分', null, '3', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('50', '100', '20150617094834769', '620', '720', '被推荐人18560683520消费，赠送积分', null, '3', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('51', '-20', '20150618202647964', '180', '160', '消费积分', null, '4', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('52', '-20', '20150625110341109', '0', '-20', '消费积分', null, '12', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('53', '100', '20150625110341109', '640', '740', '被推荐人18560683520消费，赠送积分', null, '3', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('54', '-20', '20150626100710699', '40', '20', '消费积分', null, '14', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('55', '-20', '20150630085915622', '160', '140', '消费积分', null, '4', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('56', '-640', '20150630105613742', '0', '-640', '消费积分', null, '3', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('57', '100', '20150630110345536', '4710', '4810', '被推荐人18560683520消费，赠送积分', null, '3', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('58', '8835', '20150630110818808', '13545', '22380', '被推荐人18560683520消费，赠送积分', null, '3', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('59', '-8830', '20150630110847614', '5', '-8825', '消费积分', null, '12', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('60', '8172', '20150630110847614', '21717', '29889', '被推荐人18560683520消费，赠送积分', null, '3', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('61', '100', null, '100', '200', '注册赠送积分', null, '15', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('62', '-5560', '20150710161417846', '0', '-5560', '消费积分', null, '15', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('63', '100', null, '100', '200', '注册赠送积分', null, '16', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('64', '-100', '20150711010318168', '0', '-100', '消费积分', null, '16', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('65', '100', null, '100', '200', '注册赠送积分', null, '17', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('66', '-3890', '20150712203857663', '4', '-3886', '消费积分', null, '16', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('67', '100', null, '100', '200', '注册赠送积分', null, '18', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('68', '100', null, '100', '200', '注册赠送积分', null, '19', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('69', '100', null, '100', '200', '注册赠送积分', null, '20', null, null, null, null, null, null);
INSERT INTO `integral_record` VALUES ('70', '100', null, '100', '200', '注册赠送积分', null, '21', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for log_comment
-- ----------------------------
DROP TABLE IF EXISTS `log_comment`;
CREATE TABLE `log_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL COMMENT '对象类型',
  `forgin_id` int(11) DEFAULT NULL COMMENT '对象主键',
  `content` varchar(500) DEFAULT NULL COMMENT '评论内容',
  `user_id` int(11) DEFAULT NULL COMMENT '评论人',
  `create_date` datetime DEFAULT NULL COMMENT '评论时间',
  `p_id` int(11) DEFAULT NULL COMMENT '上级评论外键',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='对象评论';

-- ----------------------------
-- Records of log_comment
-- ----------------------------

-- ----------------------------
-- Table structure for log_hits
-- ----------------------------
DROP TABLE IF EXISTS `log_hits`;
CREATE TABLE `log_hits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL COMMENT '对象类型',
  `forgin_id` int(11) DEFAULT NULL COMMENT '对象外键',
  `begin_date` datetime DEFAULT NULL COMMENT '开始时间',
  `end_date` datetime DEFAULT NULL COMMENT '结束时间',
  `user_id` int(11) DEFAULT NULL COMMENT '操作人外键',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='对象点击量';

-- ----------------------------
-- Records of log_hits
-- ----------------------------

-- ----------------------------
-- Table structure for log_star
-- ----------------------------
DROP TABLE IF EXISTS `log_star`;
CREATE TABLE `log_star` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL COMMENT '对象类型',
  `forginn_id` int(11) DEFAULT NULL COMMENT '对象外键',
  `count` int(2) DEFAULT NULL COMMENT '星的个数',
  `appraiser_id` int(11) DEFAULT NULL COMMENT '评价人外键',
  `create_date` datetime DEFAULT NULL COMMENT '评价时间',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='对象星级';

-- ----------------------------
-- Records of log_star
-- ----------------------------

-- ----------------------------
-- Table structure for tb_level
-- ----------------------------
DROP TABLE IF EXISTS `tb_level`;
CREATE TABLE `tb_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `type` int(2) DEFAULT NULL COMMENT '1学历教育、2技能培训、3少儿培训',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='层次';

-- ----------------------------
-- Records of tb_level
-- ----------------------------
INSERT INTO `tb_level` VALUES ('1', '1', '高起专', '2015-04-03 14:43:03', '2015-06-12 14:34:06', '1', null, null, null, null, null, null, null, null);
INSERT INTO `tb_level` VALUES ('2', '1', '专升本', '2015-04-03 14:43:03', '2015-06-12 14:34:13', '1', null, null, null, null, null, null, null, null);
INSERT INTO `tb_level` VALUES ('3', '1', '高起本', '2015-04-03 14:43:03', '2015-06-12 14:34:10', '1', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `order_number` varchar(255) NOT NULL COMMENT '订单号',
  `userId` int(11) NOT NULL,
  `projectId` int(11) NOT NULL,
  `category` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `buyerId` varchar(255) DEFAULT NULL COMMENT '购买用户id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `notify_time` timestamp NULL DEFAULT NULL COMMENT '支付确认时间',
  `description` varchar(255) DEFAULT NULL COMMENT '订单描述',
  `payId` varchar(255) DEFAULT NULL COMMENT '支付流水号',
  `pay_type` int(11) DEFAULT NULL COMMENT '支付方式1.微信支付2.支付宝3.线下支付',
  `price` decimal(19,2) DEFAULT NULL COMMENT '现价',
  `totalPrice` decimal(19,2) DEFAULT NULL COMMENT '总价',
  `referrer` varchar(255) DEFAULT NULL COMMENT '推荐人手机号',
  `proxy_idcard` varchar(255) DEFAULT NULL,
  `proxy_mobile` varchar(255) DEFAULT NULL,
  `proxy_name` varchar(255) DEFAULT NULL,
  `pay_full` int(11) DEFAULT NULL COMMENT '是否支付全款',
  `integral` decimal(19,2) DEFAULT NULL COMMENT '积分抵现',
  `status` int(11) DEFAULT NULL COMMENT '-1，已取消;0待支付；1已支付2；线下支付；3退款',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`order_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES ('20150615155807150', '13', '1', 0x7B22626F6F6B466565223A3630302E30302C2263726561746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31322C226461794F665765656B223A352C226461794F6659656172223A3136332C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31302C226D696C6C6973223A313433343037373135353030302C226D696C6C69734F66446179223A33383735353030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A3634352C226D696E7574654F66486F7572223A34352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A33383735352C227365636F6E644F664D696E757465223A35352C227765656B4F665765656B79656172223A32342C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D2C2264656C65746564223A312C22656E6444617465223A7B2261667465724E6F77223A747275652C226265666F72654E6F77223A66616C73652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F6779227D2C226461794F664D6F6E7468223A312C226461794F665765656B223A342C226461794F6659656172223A36302C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31392C226D696C6C6973223A313531393930323237333030302C226D696C6C69734F66446179223A36383637333030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313134342C226D696E7574654F66486F7572223A342C226D6F6E74684F6659656172223A332C227365636F6E644F66446179223A36383637332C227365636F6E644F664D696E757465223A33332C227765656B4F665765656B79656172223A392C227765656B79656172223A323031382C2279656172223A323031382C22796561724F6643656E74757279223A31382C22796561724F66457261223A323031382C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D2C22656E726F6C6D656E74223A2233E69C88222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A312C226C6576656C4964223A312C226D616A6F7244657363223A22E8AEA1E7AE97E69CBAE5BA94E794A8E59FBAE7A180E38081E889BAE69CAFE6A682E8AEBAE38081E7B4A0E68F8FE38081E6B0B4E7B289E38081E59BBEE6A188E38081E5AD97E4BD93E8AEBEE8AEA1E38081E5B9B3E99DA2E69E84E68890E38081E7AB8BE4BD93E69E84E68890E38081E889B2E5BDA9E69E84E68890E38081E9808FE8A786E38081E8A385E9A5B0E794BBE38081E6A087E5BF97E8AEBEE8AEA1E38081E5B081E99DA2E8AEBEE8AEA1E38081E5B9BFE5918AE8AEBEE8AEA1E38081E58C85E8A385E8AEBEE8AEA1222C226D616A6F724964223A312C227363686F6F6C4964223A312C22737461727444617465223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F6779227D2C226461794F664D6F6E7468223A312C226461794F665765656B223A372C226461794F6659656172223A36302C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31392C226D696C6C6973223A313432353230373833373030302C226D696C6C69734F66446179223A36383633373030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313134332C226D696E7574654F66486F7572223A332C226D6F6E74684F6659656172223A332C227365636F6E644F66446179223A36383633372C227365636F6E644F664D696E757465223A35372C227765656B4F665765656B79656172223A392C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D2C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A353938302E30302C2274756974696F6E466565223A323630302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F6779227D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31302C226D696C6C6973223A313433343333353833343030302C226D696C6C69734F66446179223A33383233343030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A3633372C226D696E7574654F66486F7572223A33372C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A33383233342C227365636F6E644F664D696E757465223A31342C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-15 15:58:07', null, null, null, null, '5980.00', '5980.00', '', null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150615160709238', '12', '1', 0x7B22626F6F6B466565223A3630302E30302C2263726561746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31322C226461794F665765656B223A352C226461794F6659656172223A3136332C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31302C226D696C6C6973223A313433343037373135353030302C226D696C6C69734F66446179223A33383735353030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A3634352C226D696E7574654F66486F7572223A34352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A33383735352C227365636F6E644F664D696E757465223A35352C227765656B4F665765656B79656172223A32342C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D2C2264656C65746564223A312C22656E6444617465223A7B2261667465724E6F77223A747275652C226265666F72654E6F77223A66616C73652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F6779227D2C226461794F664D6F6E7468223A312C226461794F665765656B223A342C226461794F6659656172223A36302C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31392C226D696C6C6973223A313531393930323237333030302C226D696C6C69734F66446179223A36383637333030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313134342C226D696E7574654F66486F7572223A342C226D6F6E74684F6659656172223A332C227365636F6E644F66446179223A36383637332C227365636F6E644F664D696E757465223A33332C227765656B4F665765656B79656172223A392C227765656B79656172223A323031382C2279656172223A323031382C22796561724F6643656E74757279223A31382C22796561724F66457261223A323031382C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D2C22656E726F6C6D656E74223A2233E69C88222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A312C226C6576656C4964223A312C226D616A6F7244657363223A22E8AEA1E7AE97E69CBAE5BA94E794A8E59FBAE7A180E38081E889BAE69CAFE6A682E8AEBAE38081E7B4A0E68F8FE38081E6B0B4E7B289E38081E59BBEE6A188E38081E5AD97E4BD93E8AEBEE8AEA1E38081E5B9B3E99DA2E69E84E68890E38081E7AB8BE4BD93E69E84E68890E38081E889B2E5BDA9E69E84E68890E38081E9808FE8A786E38081E8A385E9A5B0E794BBE38081E6A087E5BF97E8AEBEE8AEA1E38081E5B081E99DA2E8AEBEE8AEA1E38081E5B9BFE5918AE8AEBEE8AEA1E38081E58C85E8A385E8AEBEE8AEA1222C226D616A6F724964223A312C227363686F6F6C4964223A312C22737461727444617465223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F6779227D2C226461794F664D6F6E7468223A312C226461794F665765656B223A372C226461794F6659656172223A36302C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31392C226D696C6C6973223A313432353230373833373030302C226D696C6C69734F66446179223A36383633373030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313134332C226D696E7574654F66486F7572223A332C226D6F6E74684F6659656172223A332C227365636F6E644F66446179223A36383633372C227365636F6E644F664D696E757465223A35372C227765656B4F665765656B79656172223A392C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D2C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A353938302E30302C2274756974696F6E466565223A323630302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F6779227D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31302C226D696C6C6973223A313433343333353833343030302C226D696C6C69734F66446179223A33383233343030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A3633372C226D696E7574654F66486F7572223A33372C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A33383233342C227365636F6E644F664D696E757465223A31342C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-15 16:07:09', null, null, null, null, '5978.00', '5980.00', '13687639010', null, null, null, '0', '2.00', '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150615211400326', '12', '38', 0x7B22626F6F6B466565223A3630302E30302C2263726561746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31352C226D696C6C6973223A313433343335313937333030302C226D696C6C69734F66446179223A35343337333030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A3930362C226D696E7574654F66486F7572223A362C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A35343337332C227365636F6E644F664D696E757465223A31332C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D2C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A33382C226C6576656C4964223A312C226D616A6F7244657363223A22E8AEA1E7AE97E69CBAE4BFA1E681AFE7AEA1E79086222C226D616A6F724964223A362C227363686F6F6C4964223A352C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F6779227D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393039383030302C226D696C6C69734F66446179223A36313439383030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032342C226D696E7574654F66486F7572223A342C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313439382C227365636F6E644F664D696E757465223A35382C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-15 21:14:00', null, null, null, null, '6278.00', '6280.00', '13687639010', null, null, null, '0', '2.00', '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150616084622936', '14', '225', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A3232352C226C6576656C4964223A332C226D616A6F7244657363223A22E8AEA1E7AE97E69CBAE7A791E5ADA6E4B88EE68A80E69CAF222C226D616A6F724964223A3134322C227061794D6574686F64223A312C227363686F6F6C4964223A342C2273747564794475726174696F6E223A352E302C227374756479556E6974223A312C22746F74616C466565223A31313738302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343336313332333030302C226D696C6C69734F66446179223A36333732333030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313036322C226D696E7574654F66486F7572223A34322C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36333732332C227365636F6E644F664D696E757465223A332C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-16 08:46:22', null, null, null, null, '10600.00', '11780.00', '', null, null, null, '1', '2.00', '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('201506160853507', '12', '7', 0x7B22626F6F6B466565223A3630302E30302C2263726561746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31302C226D696C6C6973223A313433343333363032383030302C226D696C6C69734F66446179223A33383432383030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A3634302C226D696E7574654F66486F7572223A34302C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A33383432382C227365636F6E644F664D696E757465223A32382C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D2C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A372C226C6576656C4964223A312C226D616A6F7244657363223A22E69CBAE794B5E4B880E4BD93E58C96E68A80E69CAF222C226D616A6F724964223A372C227363686F6F6C4964223A332C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F6779227D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393039373030302C226D696C6C69734F66446179223A36313439373030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032342C226D696E7574654F66486F7572223A342C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313439372C227365636F6E644F664D696E757465223A35372C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-16 08:53:50', null, null, null, null, '5650.00', '6280.00', '13687639010', null, null, null, '1', '2.00', '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150616091609897', '14', '226', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A3232362C226C6576656C4964223A332C226D616A6F7244657363223A22E69CBAE6A2B0E794B5E5AD90E5B7A5E7A88B222C226D616A6F724964223A3133372C227061794D6574686F64223A312C227363686F6F6C4964223A342C2273747564794475726174696F6E223A352E302C227374756479556E6974223A312C22746F74616C466565223A31313738302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343336313332333030302C226D696C6C69734F66446179223A36333732333030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313036322C226D696E7574654F66486F7572223A34322C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36333732332C227365636F6E644F664D696E757465223A332C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-16 09:16:09', null, null, null, null, '10600.00', '11780.00', '', null, null, null, '1', '2.00', '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150616104533751', '12', '98', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A39382C226C6576656C4964223A312C226D616A6F7244657363223A22E5B7A5E59586E7AEA1E79086222C226D616A6F724964223A312C227363686F6F6C4964223A312C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393130303030302C226D696C6C69734F66446179223A36313530303030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032352C226D696E7574654F66486F7572223A352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313530302C227365636F6E644F664D696E757465223A302C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-16 10:45:33', null, null, null, null, '5652.00', '6280.00', '13687639010', null, null, null, '1', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150616123348556', '12', '98', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A39382C226C6576656C4964223A312C226D616A6F7244657363223A22E5B7A5E59586E7AEA1E79086222C226D616A6F724964223A312C227363686F6F6C4964223A312C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393130303030302C226D696C6C69734F66446179223A36313530303030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032352C226D696E7574654F66486F7572223A352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313530302C227365636F6E644F664D696E757465223A302C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-16 12:33:49', null, null, null, null, '6280.00', '6280.00', '13687639010', null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150616124525156', '12', '98', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A39382C226C6576656C4964223A312C226D616A6F7244657363223A22E5B7A5E59586E7AEA1E79086222C226D616A6F724964223A312C227363686F6F6C4964223A312C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393130303030302C226D696C6C69734F66446179223A36313530303030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032352C226D696E7574654F66486F7572223A352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313530302C227365636F6E644F664D696E757465223A302C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-16 12:45:25', null, null, null, null, '6280.00', '6280.00', '13687639010', null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150616131151649', '12', '98', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A39382C226C6576656C4964223A312C226D616A6F7244657363223A22E5B7A5E59586E7AEA1E79086222C226D616A6F724964223A312C227363686F6F6C4964223A312C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393130303030302C226D696C6C69734F66446179223A36313530303030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032352C226D696E7574654F66486F7572223A352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313530302C227365636F6E644F664D696E757465223A302C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-16 13:11:51', null, null, null, null, '6280.00', '6280.00', '13687639010', null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150616132557693', '12', '98', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A39382C226C6576656C4964223A312C226D616A6F7244657363223A22E5B7A5E59586E7AEA1E79086222C226D616A6F724964223A312C227363686F6F6C4964223A312C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393130303030302C226D696C6C69734F66446179223A36313530303030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032352C226D696E7574654F66486F7572223A352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313530302C227365636F6E644F664D696E757465223A302C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-16 13:25:57', null, null, null, null, '6280.00', '6280.00', '13687639010', null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('2015061613335161', '12', '110', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A3131302C226C6576656C4964223A312C226D616A6F7244657363223A22E8AEA1E7AE97E69CBAE58F8AE5BA94E794A8222C226D616A6F724964223A362C227363686F6F6C4964223A312C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393130313030302C226D696C6C69734F66446179223A36313530313030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032352C226D696E7574654F66486F7572223A352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313530312C227365636F6E644F664D696E757465223A312C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-16 13:33:51', null, null, null, null, '6280.00', '6280.00', '13687639010', null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150616140304162', '12', '98', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A39382C226C6576656C4964223A312C226D616A6F7244657363223A22E5B7A5E59586E7AEA1E79086222C226D616A6F724964223A312C227363686F6F6C4964223A312C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393130303030302C226D696C6C69734F66446179223A36313530303030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032352C226D696E7574654F66486F7572223A352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313530302C227365636F6E644F664D696E757465223A302C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-16 14:03:05', '2015-06-16 14:07:13', null, null, null, '0.01', '6280.00', '13687639010', null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150617094237615', '3', '98', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A39382C226C6576656C4964223A312C226D616A6F7244657363223A22E5B7A5E59586E7AEA1E79086222C226D616A6F724964223A312C227363686F6F6C4964223A312C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393130303030302C226D696C6C69734F66446179223A36313530303030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032352C226D696E7574654F66486F7572223A352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313530302C227365636F6E644F664D696E757465223A302C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-17 09:42:37', null, null, null, null, '5650.00', '6280.00', null, null, null, null, '1', '2.00', '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150617094457488', '3', '98', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A39382C226C6576656C4964223A312C226D616A6F7244657363223A22E5B7A5E59586E7AEA1E79086222C226D616A6F724964223A312C227363686F6F6C4964223A312C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393130303030302C226D696C6C69734F66446179223A36313530303030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032352C226D696E7574654F66486F7572223A352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313530302C227365636F6E644F664D696E757465223A302C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-17 09:44:57', null, null, null, null, '6280.00', '6280.00', null, null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('2015061709455685', '12', '98', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A39382C226C6576656C4964223A312C226D616A6F7244657363223A22E5B7A5E59586E7AEA1E79086222C226D616A6F724964223A312C227363686F6F6C4964223A312C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393130303030302C226D696C6C69734F66446179223A36313530303030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032352C226D696E7574654F66486F7572223A352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313530302C227365636F6E644F664D696E757465223A302C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-17 09:45:56', null, null, null, null, '6280.00', '6280.00', '13687639010', null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150617094702289', '12', '98', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A39382C226C6576656C4964223A312C226D616A6F7244657363223A22E5B7A5E59586E7AEA1E79086222C226D616A6F724964223A312C227363686F6F6C4964223A312C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393130303030302C226D696C6C69734F66446179223A36313530303030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032352C226D696E7574654F66486F7572223A352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313530302C227365636F6E644F664D696E757465223A302C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-17 09:47:02', null, null, null, null, '6280.00', '6280.00', '13687639010', null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150617094712205', '3', '98', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A39382C226C6576656C4964223A312C226D616A6F7244657363223A22E5B7A5E59586E7AEA1E79086222C226D616A6F724964223A312C227363686F6F6C4964223A312C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393130303030302C226D696C6C69734F66446179223A36313530303030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032352C226D696E7574654F66486F7572223A352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313530302C227365636F6E644F664D696E757465223A302C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-17 09:47:12', null, null, null, null, '6280.00', '6280.00', null, null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150617094834769', '12', '98', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A39382C226C6576656C4964223A312C226D616A6F7244657363223A22E5B7A5E59586E7AEA1E79086222C226D616A6F724964223A312C227363686F6F6C4964223A312C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393130303030302C226D696C6C69734F66446179223A36313530303030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032352C226D696E7574654F66486F7572223A352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313530302C227365636F6E644F664D696E757465223A302C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-17 09:48:34', null, null, null, null, '6280.00', '6280.00', '13687639010', null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150617094939867', '3', '98', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A39382C226C6576656C4964223A312C226D616A6F7244657363223A22E5B7A5E59586E7AEA1E79086222C226D616A6F724964223A312C227363686F6F6C4964223A312C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393130303030302C226D696C6C69734F66446179223A36313530303030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032352C226D696E7574654F66486F7572223A352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313530302C227365636F6E644F664D696E757465223A302C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-17 09:49:39', null, null, null, null, '6280.00', '6280.00', null, null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150617094953176', '3', '98', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A39382C226C6576656C4964223A312C226D616A6F7244657363223A22E5B7A5E59586E7AEA1E79086222C226D616A6F724964223A312C227363686F6F6C4964223A312C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393130303030302C226D696C6C69734F66446179223A36313530303030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032352C226D696E7574654F66486F7572223A352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313530302C227365636F6E644F664D696E757465223A302C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-17 09:49:53', null, null, null, null, '6280.00', '6280.00', null, null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150617095033240', '3', '98', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A39382C226C6576656C4964223A312C226D616A6F7244657363223A22E5B7A5E59586E7AEA1E79086222C226D616A6F724964223A312C227363686F6F6C4964223A312C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393130303030302C226D696C6C69734F66446179223A36313530303030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032352C226D696E7574654F66486F7572223A352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313530302C227365636F6E644F664D696E757465223A302C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-17 09:50:33', null, null, null, null, '6280.00', '6280.00', null, null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('2015061709564932', '3', '98', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A39382C226C6576656C4964223A312C226D616A6F7244657363223A22E5B7A5E59586E7AEA1E79086222C226D616A6F724964223A312C227363686F6F6C4964223A312C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393130303030302C226D696C6C69734F66446179223A36313530303030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032352C226D696E7574654F66486F7572223A352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313530302C227365636F6E644F664D696E757465223A302C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-17 09:56:49', null, null, null, null, '6280.00', '6280.00', null, null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150617095827872', '3', '98', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A39382C226C6576656C4964223A312C226D616A6F7244657363223A22E5B7A5E59586E7AEA1E79086222C226D616A6F724964223A312C227363686F6F6C4964223A312C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393130303030302C226D696C6C69734F66446179223A36313530303030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032352C226D696E7574654F66486F7572223A352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313530302C227365636F6E644F664D696E757465223A302C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-17 09:58:27', null, null, null, null, '6280.00', '6280.00', null, null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150617095832987', '3', '98', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A39382C226C6576656C4964223A312C226D616A6F7244657363223A22E5B7A5E59586E7AEA1E79086222C226D616A6F724964223A312C227363686F6F6C4964223A312C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393130303030302C226D696C6C69734F66446179223A36313530303030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032352C226D696E7574654F66486F7572223A352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313530302C227365636F6E644F664D696E757465223A302C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-17 09:58:32', null, null, null, null, '6280.00', '6280.00', null, null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150617095901553', '3', '98', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A39382C226C6576656C4964223A312C226D616A6F7244657363223A22E5B7A5E59586E7AEA1E79086222C226D616A6F724964223A312C227363686F6F6C4964223A312C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393130303030302C226D696C6C69734F66446179223A36313530303030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032352C226D696E7574654F66486F7572223A352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313530302C227365636F6E644F664D696E757465223A302C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-17 09:59:01', null, null, null, null, '6280.00', '6280.00', null, null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150617100138161', '3', '98', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A39382C226C6576656C4964223A312C226D616A6F7244657363223A22E5B7A5E59586E7AEA1E79086222C226D616A6F724964223A312C227363686F6F6C4964223A312C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393130303030302C226D696C6C69734F66446179223A36313530303030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032352C226D696E7574654F66486F7572223A352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313530302C227365636F6E644F664D696E757465223A302C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-17 10:01:38', null, null, null, null, '6280.00', '6280.00', null, null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150618202647964', '4', '2', 0x7B22626F6F6B466565223A3630302E30302C2263726561746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31322C226461794F665765656B223A352C226461794F6659656172223A3136332C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31302C226D696C6C6973223A313433343037373135353030302C226D696C6C69734F66446179223A33383735353030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A3634352C226D696E7574654F66486F7572223A34352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A33383735352C227365636F6E644F664D696E757465223A35352C227765656B4F665765656B79656172223A32342C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D2C2264656C65746564223A312C22656E726F6C6D656E74223A2233E69C88222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A322C226C6576656C4964223A312C226D616A6F7244657363223A22E6B395E5BE8BE4BA8BE58AA1222C226D616A6F724964223A322C227363686F6F6C4964223A332C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F6779227D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31362C226D696C6C6973223A313433343335373033333030302C226D696C6C69734F66446179223A35393433333030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A3939302C226D696E7574654F66486F7572223A33302C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A35393433332C227365636F6E644F664D696E757465223A33332C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-18 20:26:47', null, null, null, null, '5650.00', '6280.00', null, null, null, null, '1', '2.00', '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150625110341109', '12', '98', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A39382C226C6576656C4964223A312C226D616A6F7244657363223A22E5B7A5E59586E7AEA1E79086222C226D616A6F724964223A312C227363686F6F6C4964223A312C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393130303030302C226D696C6C69734F66446179223A36313530303030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032352C226D696E7574654F66486F7572223A352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313530302C227365636F6E644F664D696E757465223A302C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-25 11:03:41', null, null, null, null, '5650.00', '6280.00', '13687639010', null, null, null, '1', '2.00', '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150626100710699', '14', '1', 0x7B22626F6F6B466565223A3630302E30302C2263726561746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31322C226461794F665765656B223A352C226461794F6659656172223A3136332C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31302C226D696C6C6973223A313433343037373135353030302C226D696C6C69734F66446179223A33383735353030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A3634352C226D696E7574654F66486F7572223A34352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A33383735352C227365636F6E644F664D696E757465223A35352C227765656B4F665765656B79656172223A32342C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D2C2264656C65746564223A312C22656E726F6C6D656E74223A2233E69C88222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A312C226C6576656C4964223A312C226D616A6F7244657363223A22E5B7A5E59586E4BC81E4B89AE7AEA1E79086222C226D616A6F724964223A312C227363686F6F6C4964223A332C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F6779227D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31342C226D696C6C6973223A313433343335303336343030302C226D696C6C69734F66446179223A35323736343030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A3837392C226D696E7574654F66486F7572223A33392C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A35323736342C227365636F6E644F664D696E757465223A32342C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-26 10:07:11', null, null, null, null, '5650.00', '6280.00', '', null, null, null, '1', '2.00', '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150626111528254', '14', '12', 0x7B22626F6F6B466565223A3630302E30302C2263726561746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31302C226D696C6C6973223A313433343333363033393030302C226D696C6C69734F66446179223A33383433393030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A3634302C226D696E7574654F66486F7572223A34302C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A33383433392C227365636F6E644F664D696E757465223A33392C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D2C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A31322C226C6576656C4964223A312C226D616A6F7244657363223A22E68AA4E79086222C226D616A6F724964223A31322C227363686F6F6C4964223A332C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A373238302E30302C2274756974696F6E466565223A323630302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F6779227D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393039383030302C226D696C6C69734F66446179223A36313439383030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032342C226D696E7574654F66486F7572223A342C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313439382C227365636F6E644F664D696E757465223A35382C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-26 11:15:28', null, null, null, null, '7280.00', '7280.00', '', null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150626111957148', '14', '12', 0x7B22626F6F6B466565223A3630302E30302C2263726561746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31302C226D696C6C6973223A313433343333363033393030302C226D696C6C69734F66446179223A33383433393030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A3634302C226D696E7574654F66486F7572223A34302C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A33383433392C227365636F6E644F664D696E757465223A33392C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D2C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A31322C226C6576656C4964223A312C226D616A6F7244657363223A22E68AA4E79086222C226D616A6F724964223A31322C227363686F6F6C4964223A332C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A373238302E30302C2274756974696F6E466565223A323630302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F6779227D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393039383030302C226D696C6C69734F66446179223A36313439383030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032342C226D696E7574654F66486F7572223A342C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313439382C227365636F6E644F664D696E757465223A35382C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-26 11:19:57', null, null, null, null, '7280.00', '7280.00', '', null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150626151840136', '14', '12', 0x7B22626F6F6B466565223A3630302E30302C2263726561746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31302C226D696C6C6973223A313433343333363033393030302C226D696C6C69734F66446179223A33383433393030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A3634302C226D696E7574654F66486F7572223A34302C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A33383433392C227365636F6E644F664D696E757465223A33392C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D2C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A31322C226C6576656C4964223A312C226D616A6F7244657363223A22E68AA4E79086222C226D616A6F724964223A31322C227363686F6F6C4964223A332C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A373238302E30302C2274756974696F6E466565223A323630302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F6779227D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393039383030302C226D696C6C69734F66446179223A36313439383030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032342C226D696E7574654F66486F7572223A342C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313439382C227365636F6E644F664D696E757465223A35382C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-26 15:18:40', null, null, null, null, '7280.00', '7280.00', '', null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150626152049325', '14', '12', 0x7B22626F6F6B466565223A3630302E30302C2263726561746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31302C226D696C6C6973223A313433343333363033393030302C226D696C6C69734F66446179223A33383433393030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A3634302C226D696E7574654F66486F7572223A34302C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A33383433392C227365636F6E644F664D696E757465223A33392C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D2C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A31322C226C6576656C4964223A312C226D616A6F7244657363223A22E68AA4E79086222C226D616A6F724964223A31322C227363686F6F6C4964223A332C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A373238302E30302C2274756974696F6E466565223A323630302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F6779227D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393039383030302C226D696C6C69734F66446179223A36313439383030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032342C226D696E7574654F66486F7572223A342C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313439382C227365636F6E644F664D696E757465223A35382C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-26 15:20:49', null, null, null, null, '7280.00', '7280.00', '', null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150626152054140', '14', '12', 0x7B22626F6F6B466565223A3630302E30302C2263726561746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31302C226D696C6C6973223A313433343333363033393030302C226D696C6C69734F66446179223A33383433393030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A3634302C226D696E7574654F66486F7572223A34302C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A33383433392C227365636F6E644F664D696E757465223A33392C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D2C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A31322C226C6576656C4964223A312C226D616A6F7244657363223A22E68AA4E79086222C226D616A6F724964223A31322C227363686F6F6C4964223A332C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A373238302E30302C2274756974696F6E466565223A323630302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F6779227D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393039383030302C226D696C6C69734F66446179223A36313439383030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032342C226D696E7574654F66486F7572223A342C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313439382C227365636F6E644F664D696E757465223A35382C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-26 15:20:54', null, null, null, null, '7280.00', '7280.00', '', null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150626165220131', '14', '12', 0x7B22626F6F6B466565223A3630302E30302C2263726561746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31302C226D696C6C6973223A313433343333363033393030302C226D696C6C69734F66446179223A33383433393030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A3634302C226D696E7574654F66486F7572223A34302C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A33383433392C227365636F6E644F664D696E757465223A33392C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D2C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A31322C226C6576656C4964223A312C226D616A6F7244657363223A22E68AA4E79086222C226D616A6F724964223A31322C227363686F6F6C4964223A332C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A373238302E30302C2274756974696F6E466565223A323630302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F6779227D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393039383030302C226D696C6C69734F66446179223A36313439383030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032342C226D696E7574654F66486F7572223A342C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313439382C227365636F6E644F664D696E757465223A35382C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-26 16:52:20', null, null, null, null, '7280.00', '7280.00', '', null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150629091359297', '14', '235', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A3233352C226C6576656C4964223A332C226D616A6F7244657363223A22E59BBDE99985E7BB8FE6B58EE4B88EE8B4B8E69893222C226D616A6F724964223A3134342C227061794D6574686F64223A312C227363686F6F6C4964223A312C2273747564794475726174696F6E223A352E302C227374756479556E6974223A312C22746F74616C466565223A31313738302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343336313332333030302C226D696C6C69734F66446179223A36333732333030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313036322C226D696E7574654F66486F7572223A34322C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36333732332C227365636F6E644F664D696E757465223A332C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-29 09:14:00', null, null, null, null, '11780.00', '11780.00', '', null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150629091710195', '14', '72', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A37322C226C6576656C4964223A312C226D616A6F7244657363223A22E5B7A5E59586E4BC81E4B89AE7AEA1E79086222C226D616A6F724964223A312C227363686F6F6C4964223A342C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393130303030302C226D696C6C69734F66446179223A36313530303030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032352C226D696E7574654F66486F7572223A352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313530302C227365636F6E644F664D696E757465223A302C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-29 09:17:10', null, null, null, null, '6280.00', '6280.00', '', null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('2015062911313447', '14', '12', 0x7B22626F6F6B466565223A3630302E30302C2263726561746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31302C226D696C6C6973223A313433343333363033393030302C226D696C6C69734F66446179223A33383433393030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A3634302C226D696E7574654F66486F7572223A34302C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A33383433392C227365636F6E644F664D696E757465223A33392C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D2C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A31322C226C6576656C4964223A312C226D616A6F7244657363223A22E68AA4E79086222C226D616A6F724964223A31322C227363686F6F6C4964223A332C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A373238302E30302C2274756974696F6E466565223A323630302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F6779227D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393039383030302C226D696C6C69734F66446179223A36313439383030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032342C226D696E7574654F66486F7572223A342C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313439382C227365636F6E644F664D696E757465223A35382C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-29 11:31:34', null, null, null, null, '7280.00', '7280.00', '', null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150630085915622', '4', '16', 0x7B22626F6F6B466565223A3630302E30302C2263726561746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31352C226D696C6C6973223A313433343335313837303030302C226D696C6C69734F66446179223A35343237303030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A3930342C226D696E7574654F66486F7572223A342C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A35343237302C227365636F6E644F664D696E757465223A33302C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D2C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A31362C226C6576656C4964223A312C226D616A6F7244657363223A22E88BB1E8AFADE69599E882B2222C226D616A6F724964223A31362C227363686F6F6C4964223A352C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A353738302E30302C2274756974696F6E466565223A323030302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F6779227D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393039383030302C226D696C6C69734F66446179223A36313439383030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032342C226D696E7574654F66486F7572223A342C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313439382C227365636F6E644F664D696E757465223A35382C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-30 08:59:15', null, null, null, null, '5200.00', '5780.00', null, null, null, null, '1', '2.00', '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150630105613742', '3', '98', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A39382C226C6576656C4964223A312C226D616A6F7244657363223A22E5B7A5E59586E7AEA1E79086222C226D616A6F724964223A312C227363686F6F6C4964223A312C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393130303030302C226D696C6C69734F66446179223A36313530303030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032352C226D696E7574654F66486F7572223A352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313530302C227365636F6E644F664D696E757465223A302C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-30 10:56:13', null, null, null, null, '6216.00', '6280.00', null, null, null, null, '0', '64.00', '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150630110257498', '3', '98', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A39382C226C6576656C4964223A312C226D616A6F7244657363223A22E5B7A5E59586E7AEA1E79086222C226D616A6F724964223A312C227363686F6F6C4964223A312C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393130303030302C226D696C6C69734F66446179223A36313530303030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032352C226D696E7574654F66486F7572223A352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313530302C227365636F6E644F664D696E757465223A302C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-30 11:02:57', null, null, null, null, '6280.00', '6280.00', null, null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150630110345536', '12', '98', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A39382C226C6576656C4964223A312C226D616A6F7244657363223A22E5B7A5E59586E7AEA1E79086222C226D616A6F724964223A312C227363686F6F6C4964223A312C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393130303030302C226D696C6C69734F66446179223A36313530303030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032352C226D696E7574654F66486F7572223A352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313530302C227365636F6E644F664D696E757465223A302C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-30 11:03:45', null, null, null, null, '6280.00', '6280.00', '13687639010', null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150630110818808', '12', '222', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A3232322C226C6576656C4964223A332C226D616A6F7244657363223A22E4BAA4E9809AE8BF90E8BE93222C226D616A6F724964223A3133392C227061794D6574686F64223A312C227363686F6F6C4964223A352C2273747564794475726174696F6E223A352E302C227374756479556E6974223A312C22746F74616C466565223A31313738302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343336313332333030302C226D696C6C69734F66446179223A36333732333030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313036322C226D696E7574654F66486F7572223A34322C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36333732332C227365636F6E644F664D696E757465223A332C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-30 11:08:18', null, null, null, null, '11780.00', '11780.00', '13687639010', null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150630110847614', '12', '222', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A3232322C226C6576656C4964223A332C226D616A6F7244657363223A22E4BAA4E9809AE8BF90E8BE93222C226D616A6F724964223A3133392C227061794D6574686F64223A312C227363686F6F6C4964223A352C2273747564794475726174696F6E223A352E302C227374756479556E6974223A312C22746F74616C466565223A31313738302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343336313332333030302C226D696C6C69734F66446179223A36333732333030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313036322C226D696E7574654F66486F7572223A34322C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36333732332C227365636F6E644F664D696E757465223A332C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-06-30 11:08:47', null, null, null, null, '10896.50', '11780.00', '13687639010', null, null, null, '0', '883.50', '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150707223723985', '4', '98', 0x7B22626F6F6B466565223A3630302E30302C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A39382C226C6576656C4964223A312C226D616A6F7244657363223A22E5B7A5E59586E7AEA1E79086222C226D616A6F724964223A312C227363686F6F6C4964223A312C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A363238302E30302C2274756974696F6E466565223A323230302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393130303030302C226D696C6C69734F66446179223A36313530303030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032352C226D696E7574654F66486F7572223A352C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313530302C227365636F6E644F664D696E757465223A302C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E75706461746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-07-07 22:37:24', null, null, null, null, '6280.00', '6280.00', null, null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150710161342606', '15', '12', 0x7B22626F6F6B466565223A3630302E30302C2263726561746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31302C226D696C6C6973223A313433343333363033393030302C226D696C6C69734F66446179223A33383433393030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A3634302C226D696E7574654F66486F7572223A34302C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A33383433392C227365636F6E644F664D696E757465223A33392C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D2C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A31322C226C6576656C4964223A312C226D616A6F7244657363223A22E68AA4E79086222C226D616A6F724964223A31322C227363686F6F6C4964223A332C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A373238302E30302C2274756974696F6E466565223A323630302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F6779227D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393039383030302C226D696C6C69734F66446179223A36313439383030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032342C226D696E7574654F66486F7572223A342C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313439382C227365636F6E644F664D696E757465223A35382C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-07-10 16:13:42', null, null, null, null, '7280.00', '7280.00', '', null, null, null, '0', null, '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150710161417846', '15', '13', 0x7B22626F6F6B466565223A3630302E30302C2263726561746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31352C226D696C6C6973223A313433343335313836313030302C226D696C6C69734F66446179223A35343236313030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A3930342C226D696E7574654F66486F7572223A342C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A35343236312C227365636F6E644F664D696E757465223A32312C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D2C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A31332C226C6576656C4964223A312C226D616A6F7244657363223A22E59BBDE99985E59586E58AA1222C226D616A6F724964223A31332C227363686F6F6C4964223A352C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A353738302E30302C2274756974696F6E466565223A323030302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F6779227D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393039383030302C226D696C6C69734F66446179223A36313439383030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032342C226D696E7574654F66486F7572223A342C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313439382C227365636F6E644F664D696E757465223A35382C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-07-10 16:14:17', null, null, null, null, '4646.00', '5780.00', '', null, null, null, '1', '556.00', '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150711010318168', '16', '23', 0x7B22626F6F6B466565223A3630302E30302C2263726561746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31352C226D696C6C6973223A313433343335313839313030302C226D696C6C69734F66446179223A35343239313030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A3930342C226D696E7574654F66486F7572223A342C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A35343239312C227365636F6E644F664D696E757465223A35312C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D2C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A32332C226C6576656C4964223A312C226D616A6F7244657363223A22E6B395E5BE8BE4BA8BE58AA1222C226D616A6F724964223A322C227363686F6F6C4964223A352C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A353738302E30302C2274756974696F6E466565223A323030302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F6779227D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393039383030302C226D696C6C69734F66446179223A36313439383030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032342C226D696E7574654F66486F7572223A342C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313439382C227365636F6E644F664D696E757465223A35382C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-07-11 01:03:18', null, null, null, null, '5192.00', '5780.00', '', null, null, null, '1', '10.00', '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150712203857663', '16', '18', 0x7B22626F6F6B466565223A3630302E30302C2263726561746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31352C226D696C6C6973223A313433343335313837353030302C226D696C6C69734F66446179223A35343237353030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A3930342C226D696E7574654F66486F7572223A342C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A35343237352C227365636F6E644F664D696E757465223A33352C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D2C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A31382C226C6576656C4964223A312C226D616A6F7244657363223A22E69687E7A798222C226D616A6F724964223A31382C227363686F6F6C4964223A352C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A353738302E30302C2274756974696F6E466565223A323030302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F6779227D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393039383030302C226D696C6C69734F66446179223A36313439383030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032342C226D696E7574654F66486F7572223A342C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313439382C227365636F6E644F664D696E757465223A35382C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-07-12 20:38:57', null, null, null, null, '4812.60', '5780.00', '', null, null, null, '1', '389.40', '-1', null, null, null, null, null, null, null);
INSERT INTO `tb_order` VALUES ('20150722171558116', '16', '12', 0x7B22626F6F6B466565223A3630302E30302C2263726561746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B227A6F6E65223A7B226669786564223A66616C73652C226944223A22417369612F5368616E67686169222C22756E6361636865645A6F6E65223A7B226361636861626C65223A747275652C226669786564223A66616C73652C226944223A22417369612F5368616E67686169227D7D7D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31302C226D696C6C6973223A313433343333363033393030302C226D696C6C69734F66446179223A33383433393030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A3634302C226D696E7574654F66486F7572223A34302C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A33383433392C227365636F6E644F664D696E757465223A33392C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D2C2264656C65746564223A312C22656E726F6C6D656E74223A22E6ACA1E5B9B433E69C88E4BBBD222C22656E747279466565223A302E30302C226578616D466565223A3138302E30302C226964223A31322C226C6576656C4964223A312C226D616A6F7244657363223A22E68AA4E79086222C226D616A6F724964223A31322C227363686F6F6C4964223A332C2273747564794475726174696F6E223A322E352C227374756479556E6974223A312C22746F74616C466565223A373238302E30302C2274756974696F6E466565223A323630302E30302C2274797065223A312C2275706461746554696D65223A7B2261667465724E6F77223A66616C73652C226265666F72654E6F77223A747275652C2263656E747572794F66457261223A32302C226368726F6E6F6C6F6779223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F6779227D2C226461794F664D6F6E7468223A31352C226461794F665765656B223A312C226461794F6659656172223A3136362C22657175616C4E6F77223A66616C73652C22657261223A312C22686F75724F66446179223A31372C226D696C6C6973223A313433343335393039383030302C226D696C6C69734F66446179223A36313439383030302C226D696C6C69734F665365636F6E64223A302C226D696E7574654F66446179223A313032342C226D696E7574654F66486F7572223A342C226D6F6E74684F6659656172223A362C227365636F6E644F66446179223A36313439382C227365636F6E644F664D696E757465223A35382C227765656B4F665765656B79656172223A32352C227765656B79656172223A323031352C2279656172223A323031352C22796561724F6643656E74757279223A31352C22796561724F66457261223A323031352C227A6F6E65223A7B2224726566223A22242E63726561746554696D652E6368726F6E6F6C6F67792E7A6F6E65227D7D7D, null, '2015-07-22 17:15:58', null, null, null, null, '7280.00', '7280.00', '', null, null, null, '0', null, '0', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for tb_project
-- ----------------------------
DROP TABLE IF EXISTS `tb_project`;
CREATE TABLE `tb_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(2) DEFAULT NULL COMMENT '1学历教育 2会计培训 3技能培训 4事业培训 5银行证书 6期货 7 证券 8少儿培训',
  `name` varchar(36) DEFAULT NULL COMMENT '显示名称',
  `major_desc` varchar(1000) DEFAULT NULL COMMENT '专业描述',
  `study_unit` int(11) DEFAULT '1' COMMENT '1学年、2月、3天、4小时',
  `study_duration` decimal(11,1) DEFAULT '1.0' COMMENT '学习时长与study_unit配合使用',
  `entry_fee` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '报名费',
  `exam_fee` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '考试费',
  `tuition_fee` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '学费/单位',
  `book_fee` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '书本费',
  `total_fee` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '总价',
  `pay_method` int(2) DEFAULT '1' COMMENT '付费方式。1在线支付、2线下支付',
  `start_date` timestamp NULL DEFAULT NULL COMMENT '课程开始时间',
  `end_date` timestamp NULL DEFAULT NULL COMMENT '课程结束时间',
  `enrolment` varchar(255) DEFAULT NULL COMMENT '注册学籍时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` int(2) DEFAULT '1' COMMENT '是否删除：1、未删除，2、已删除',
  `study_method` int(2) DEFAULT NULL COMMENT '1夜大、2成人教育',
  `level_id` int(11) DEFAULT NULL COMMENT '层次ID',
  `school_id` int(11) DEFAULT NULL COMMENT '学校ID',
  `specialty_id` int(11) DEFAULT NULL COMMENT '专业id',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `fk_fee_levle_id` (`level_id`) USING BTREE,
  KEY `fk_fee_school_id` (`school_id`) USING BTREE,
  KEY `fk_fee_specialty_id` (`specialty_id`) USING BTREE,
  CONSTRAINT `tb_project_ibfk_1` FOREIGN KEY (`level_id`) REFERENCES `tb_level` (`id`),
  CONSTRAINT `tb_project_ibfk_2` FOREIGN KEY (`school_id`) REFERENCES `tb_school` (`id`),
  CONSTRAINT `tb_project_ibfk_3` FOREIGN KEY (`specialty_id`) REFERENCES `tb_specialty` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8 COMMENT='费用';

-- ----------------------------
-- Records of tb_project
-- ----------------------------
INSERT INTO `tb_project` VALUES ('1', '1', null, '工商企业管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '3月', '2015-06-12 10:45:55', '2015-06-15 14:39:24', '1', null, '1', '3', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('2', '1', null, '法律事务', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '3月', '2015-06-12 10:45:55', '2015-06-15 16:30:33', '1', null, '1', '3', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('3', '1', null, '人力资源管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '3月', '2015-06-12 10:45:55', '2015-06-15 16:30:33', '1', null, '1', '3', '3', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('4', '1', null, '会计', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '3月', '2015-06-15 10:40:20', '2015-06-15 16:30:33', '1', null, '1', '3', '4', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('5', '1', null, '市场营销', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '3月', '2015-06-15 10:40:23', '2015-06-15 16:30:33', '1', null, '1', '3', '5', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('6', '1', null, '计算机信息管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '3月', '2015-06-15 10:40:25', '2015-06-15 16:30:33', '1', null, '1', '3', '6', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('7', '1', null, '机电一体化技术', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', '2015-06-15 10:40:28', '2015-06-15 17:04:57', '1', null, '1', '3', '7', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('8', '1', null, '药学', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', null, null, null, '次年3月份', '2015-06-15 10:40:30', '2015-06-15 17:04:57', '1', null, '1', '3', '8', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('9', '1', null, '医学检验技术', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', null, null, null, '次年3月份', '2015-06-15 10:40:33', '2015-06-15 17:04:57', '1', null, '1', '3', '9', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('10', '1', null, '临床医学', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', null, null, null, '次年3月份', '2015-06-15 10:40:35', '2015-06-15 17:04:57', '1', null, '1', '3', '10', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('11', '1', null, '口腔医学', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', null, null, null, '次年3月份', '2015-06-15 10:40:37', '2015-06-15 17:04:58', '1', null, '1', '3', '11', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('12', '1', null, '护理', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', null, null, null, '次年3月份', '2015-06-15 10:40:39', '2015-06-15 17:04:58', '1', null, '1', '3', '12', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('13', '1', null, '国际商务', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', null, null, null, '次年3月份', '2015-06-15 15:04:21', '2015-06-15 17:04:58', '1', null, '1', '5', '13', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('14', '1', null, '应用韩语', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', null, null, null, '次年3月份', '2015-06-15 15:04:25', '2015-06-15 17:04:58', '1', null, '1', '5', '14', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('15', '1', null, '应用日语', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', null, null, null, '次年3月份', '2015-06-15 15:04:27', '2015-06-15 17:04:58', '1', null, '1', '5', '15', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('16', '1', null, '英语教育', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', null, null, null, '次年3月份', '2015-06-15 15:04:30', '2015-06-15 17:04:58', '1', null, '1', '5', '16', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('17', '1', null, '商务英语', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', null, null, null, '次年3月份', '2015-06-15 15:04:32', '2015-06-15 17:04:58', '1', null, '1', '5', '17', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('18', '1', null, '文秘', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', null, null, null, '次年3月份', '2015-06-15 15:04:35', '2015-06-15 17:04:58', '1', null, '1', '5', '18', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('19', '1', null, '汉语', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', null, null, null, '次年3月份', '2015-06-15 15:04:39', '2015-06-15 17:04:58', '1', null, '1', '5', '19', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('20', '1', null, '教育管理', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', null, null, null, '次年3月份', '2015-06-15 15:04:42', '2015-06-15 17:04:58', '1', null, '1', '5', '20', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('21', '1', null, '初等教育', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', null, null, null, '次年3月份', '2015-06-15 15:04:45', '2015-06-15 17:04:58', '1', null, '1', '5', '21', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('22', '1', null, '学前教育', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', null, null, null, '次年3月份', '2015-06-15 15:04:48', '2015-06-15 17:04:58', '1', null, '1', '5', '22', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('23', '1', null, '法律事务', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', null, null, null, '次年3月份', '2015-06-15 15:04:51', '2015-06-15 17:04:58', '1', null, '1', '5', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('24', '1', null, '社区管理与服务', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', null, null, null, '次年3月份', '2015-06-15 15:04:56', '2015-06-15 17:04:58', '1', null, '1', '5', '23', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('25', '1', null, '国际经济与贸易', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', '2015-06-15 15:05:00', '2015-06-15 17:04:58', '1', null, '1', '5', '24', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('26', '1', null, '会计', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', '2015-06-15 15:05:05', '2015-06-15 17:04:58', '1', null, '1', '5', '4', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('27', '1', null, '经济管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', '2015-06-15 15:05:36', '2015-06-15 17:04:58', '1', null, '1', '5', '25', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('28', '1', null, '市场营销', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', '2015-06-15 15:05:40', '2015-06-15 17:04:58', '1', null, '1', '5', '5', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('29', '1', null, '旅游管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', '2015-06-15 15:05:43', '2015-06-15 17:04:58', '1', null, '1', '5', '26', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('30', '1', null, '工商企业管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', '2015-06-15 15:05:46', '2015-06-15 17:04:58', '1', null, '1', '5', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('31', '1', null, '行政管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', '2015-06-15 15:05:50', '2015-06-15 17:04:58', '1', null, '1', '5', '27', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('32', '1', null, '报关与国际货运', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', '2015-06-15 15:05:52', '2015-06-15 17:04:58', '1', null, '1', '5', '28', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('33', '1', null, '人力资源管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', '2015-06-15 15:05:56', '2015-06-15 17:04:58', '1', null, '1', '5', '3', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('34', '1', null, '应用心理学', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', '2015-06-15 15:05:59', '2015-06-15 17:04:58', '1', null, '1', '5', '29', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('35', '1', null, '机电一体化技术', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', '2015-06-15 15:06:02', '2015-06-15 17:04:58', '1', null, '1', '5', '151', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('36', '1', null, '汽车运用技术', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', '2015-06-15 15:06:09', '2015-06-15 17:04:58', '1', null, '1', '5', '30', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('37', '1', null, '道路桥梁工程技术', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', '2015-06-15 15:06:11', '2015-06-15 17:04:58', '1', null, '1', '5', '31', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('38', '1', null, '计算机信息管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', '2015-06-15 15:06:13', '2015-06-15 17:04:58', '1', null, '1', '5', '6', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('39', '1', null, '计算机应用技术', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', '2015-06-15 15:06:22', '2015-06-15 17:04:58', '1', null, '1', '5', '6', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('40', '1', null, '工程造价', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', '2015-06-15 15:06:40', '2015-06-15 17:04:59', '1', null, '1', '5', '32', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('41', '1', null, '建筑工程技术', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', '2015-06-15 15:06:43', '2015-06-15 17:04:59', '1', null, '1', '5', '33', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('42', '1', null, '数控技术', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', '2015-06-15 15:06:46', '2015-06-15 17:04:59', '1', null, '1', '5', '34', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('43', '1', null, '物流管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', '2015-06-15 15:06:49', '2015-06-15 17:04:59', '1', null, '1', '5', '35', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('44', '1', null, '港口业务管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', '2015-06-15 15:07:07', '2015-06-15 17:04:59', '1', null, '1', '5', '36', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('45', '1', null, '食品质量与安全', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:04:59', '1', null, '1', '5', '37', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('46', '1', null, '幼儿艺术教育', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', null, null, null, '次年3月份', null, '2015-06-15 17:04:59', '1', null, '1', '5', '38', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('47', '1', null, '音乐教育', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', null, null, null, '次年3月份', null, '2015-06-15 17:04:59', '1', null, '1', '5', '39', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('48', '1', null, '艺术设计', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', null, null, null, '次年3月份', null, '2015-06-15 17:04:59', '1', null, '1', '5', '40', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('49', '1', null, '电气自动化技术', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:04:59', '1', null, '1', '4', '41', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('51', '1', null, '供用电技术', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:04:59', '1', null, '1', '4', '42', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('52', '1', null, '机械电子工程', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:04:59', '1', null, '1', '4', '43', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('53', '1', null, '机电一体化技术', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:04:59', '1', null, '1', '4', '151', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('54', '1', null, '数控技术', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:04:59', '1', null, '1', '4', '34', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('55', '1', null, '工程造价', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:04:59', '1', null, '1', '4', '32', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('56', '1', null, '工程监理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:04:59', '1', null, '1', '4', '44', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('57', '1', null, '建筑工程技术', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:04:59', '1', null, '1', '4', '33', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('58', '1', null, '道路桥梁工程技术', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:04:59', '1', null, '1', '4', '31', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('59', '1', null, '采矿工程', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:04:59', '1', null, '1', '4', '45', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('60', '1', null, '矿山机电', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:04:59', '1', null, '1', '4', '46', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('61', '1', null, '矿山资源开发与管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:04:59', '1', null, '1', '4', '47', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('62', '1', null, '计算机应用技术', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:04:59', '1', null, '1', '4', '6', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('63', '1', null, '化学工程与工艺', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:04:59', '1', null, '1', '4', '48', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('64', '1', null, '汽车检测与维修技术', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:04:59', '1', null, '1', '4', '49', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('65', '1', null, '热能动力设备与应用', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:04:59', '1', null, '1', '4', '50', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('66', '1', null, '环境工程', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:04:59', '1', null, '1', '4', '51', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('67', '1', null, '测绘工程', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:04:59', '1', null, '1', '4', '52', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('68', '1', null, '矿井通风与安全', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:04:59', '1', null, '1', '4', '53', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('69', '1', null, '会计电算化', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:04:59', '1', null, '1', '4', '4', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('70', '1', null, '财务管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '4', '54', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('71', '1', null, '经济管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '4', '25', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('72', '1', null, '工商企业管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '4', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('73', '1', null, '市场营销', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '4', '5', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('74', '1', null, '酒店管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '4', '55', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('75', '1', null, '国际经济与贸易', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '4', '24', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('76', '1', null, '计算机信息管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '4', '6', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('77', '1', null, '人力资源管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '4', '3', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('78', '1', null, '学前教育', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '4', '22', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('79', '1', null, '法律事务', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '4', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('80', '1', null, '艺术设计', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '4', '40', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('81', '1', null, '体育教育', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '4', '56', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('82', '1', null, '临床医学', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '2', '10', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('83', '1', null, '护理', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '2', '12', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('84', '1', null, '麻醉学', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '2', '57', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('85', '1', null, '口腔医学', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '2', '11', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('86', '1', null, '医学影像学', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '2', '58', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('87', '1', null, '预防医学', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '2', '153', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('88', '1', null, '药学', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '2', '8', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('89', '1', null, '医学检验', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '2', '9', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('90', '1', null, '中西医结合', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '2', '60', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('91', '1', null, '医药营销', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '2', '61', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('92', '1', null, '公共卫生管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '2', '62', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('93', '1', null, '营养与食品卫生', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '2', '154', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('94', '1', null, '装潢艺术设计', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '1', '155', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('95', '1', null, '电脑艺术设计', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '1', '156', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('96', '1', null, '动漫设计与制作', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '1', '157', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('97', '1', null, '金融学', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '1', '63', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('98', '1', null, '工商管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('99', '1', null, '经济管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '1', '25', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('100', '1', null, '国际经济与贸易', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '1', '24', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('101', '1', null, '市场营销', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '1', '5', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('102', '1', null, '会计电算化', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:00', '1', null, '1', '1', '4', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('103', '1', null, '电子商务', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:01', '1', null, '1', '1', '64', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('104', '1', null, '旅游管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:01', '1', null, '1', '1', '26', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('105', '1', null, '物流管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:01', '1', null, '1', '1', '35', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('106', '1', null, '电气工程及其自动化', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:01', '1', null, '1', '1', '65', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('107', '1', null, '应用电子技术', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:01', '1', null, '1', '1', '66', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('108', '1', null, '生物工程', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:01', '1', null, '1', '1', '67', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('109', '1', null, '机械电子工程', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:01', '1', null, '1', '1', '43', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('110', '1', null, '计算机及应用', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:01', '1', null, '1', '1', '6', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('111', '1', null, '制浆造纸工程', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:01', '1', null, '1', '1', '68', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('112', '1', null, '材料科学与工程', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:01', '1', null, '1', '1', '69', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('113', '1', null, '印刷工程', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:01', '1', null, '1', '1', '70', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('114', '1', null, '化学工程与工艺', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', null, null, null, '次年3月份', null, '2015-06-15 17:05:01', '1', null, '1', '1', '48', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('115', '1', null, '法学', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', null, null, null, '次年3月份', null, '2015-06-15 17:37:42', '1', null, '2', '3', '82', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('116', '1', null, '药学', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', null, null, null, '次年3月份', null, '2015-06-15 17:37:43', '1', null, '2', '3', '83', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('117', '1', null, '预防医学', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', null, null, null, '次年3月份', null, '2015-06-15 17:37:43', '1', null, '2', '3', '84', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('118', '1', null, '医学检验', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', null, null, null, '次年3月份', null, '2015-06-15 17:37:43', '1', null, '2', '3', '85', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('119', '1', null, '临床医学', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', null, null, null, '次年3月份', null, '2015-06-15 17:37:43', '1', null, '2', '3', '86', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('120', '1', null, '口腔医学', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', null, null, null, '次年3月份', null, '2015-06-15 17:37:43', '1', null, '2', '3', '87', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('121', '1', null, '护理学', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:43', '1', null, '2', '3', '88', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('122', '1', null, '国际经济与贸易', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:43', '1', null, '2', '3', '152', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('123', '1', null, '金融学', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:43', '1', null, '2', '3', '90', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('124', '1', null, '行政管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:43', '1', null, '2', '3', '91', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('125', '1', null, '工程管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:43', '1', null, '2', '3', '92', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('126', '1', null, '人力资源管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:43', '1', null, '2', '3', '93', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('127', '1', null, '会计学', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:43', '1', null, '2', '3', '94', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('128', '1', null, '市场营销', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:43', '1', null, '2', '3', '95', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('129', '1', null, '工商管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:43', '1', null, '2', '3', '96', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('130', '1', null, '计算机信息管理及应用技术', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:43', '1', null, '2', '3', '97', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('131', '1', null, '机械电子工程', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:43', '1', null, '2', '3', '98', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('132', '1', null, '土木工程', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:43', '1', null, '2', '3', '99', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('133', '1', null, '英语', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:43', '1', null, '2', '5', '100', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('134', '1', null, '朝鲜语', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:43', '1', null, '2', '5', '101', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('135', '1', null, '日语', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:43', '1', null, '2', '5', '102', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('136', '1', null, '汉语言文学', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:43', '1', null, '2', '5', '81', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('137', '1', null, '法学', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:43', '1', null, '2', '5', '82', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('138', '1', null, '社会工作', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:43', '1', null, '2', '5', '103', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('139', '1', null, '学前教育', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:43', '1', null, '2', '5', '104', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('140', '1', null, '教育学', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:43', '1', null, '2', '5', '105', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('141', '1', null, '国际经济与贸易', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:43', '1', null, '2', '5', '152', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('142', '1', null, '会计学', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:43', '1', null, '2', '5', '94', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('143', '1', null, '旅游管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:43', '1', null, '2', '5', '106', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('144', '1', null, '市场营销', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:43', '1', null, '2', '5', '95', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('145', '1', null, '工商管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:43', '1', null, '2', '5', '96', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('146', '1', null, '行政管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:44', '1', null, '2', '5', '91', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('147', '1', null, '人力资源管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:44', '1', null, '2', '5', '93', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('148', '1', null, '文秘教育', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:44', '1', null, '2', '5', '107', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('149', '1', null, '应用心理学', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:44', '1', null, '2', '5', '108', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('150', '1', null, '经济学', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:44', '1', null, '2', '5', '109', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('151', '1', null, '工程管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:44', '1', null, '2', '5', '92', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('152', '1', null, '土木工程', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:44', '1', null, '2', '5', '95', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('153', '1', null, '机械电子工程', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:44', '1', null, '2', '5', '98', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('154', '1', null, '计算机信息管理及应用技术', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:44', '1', null, '2', '5', '158', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('155', '1', null, '网络工程', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:44', '1', null, '2', '5', '110', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('156', '1', null, '电气工程及其自动化', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:44', '1', null, '2', '5', '111', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('157', '1', null, '物流工程', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:44', '1', null, '2', '5', '112', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('158', '1', null, '交通运输', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:44', '1', null, '2', '5', '113', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('159', '1', null, '食品质量与安全', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:44', '1', null, '2', '5', '159', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('160', '1', null, '船舶与海洋工程', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:44', '1', null, '2', '5', '115', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('161', '1', null, '热能与动力工程', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:44', '1', null, '2', '5', '116', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('162', '1', null, '音乐学', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:44', '1', null, '2', '5', '117', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('163', '1', null, '艺术设计', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:44', '1', null, '2', '5', '118', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('164', '1', null, '广播电视编导', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:44', '1', null, '2', '5', '119', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('165', '1', null, '法学', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:44', '1', null, '2', '4', '82', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('166', '1', null, '英语', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:44', '1', null, '2', '4', '100', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('167', '1', null, '汉语言文学', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:44', '1', null, '2', '4', '81', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('168', '1', null, '金融学', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:44', '1', null, '2', '4', '90', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('169', '1', null, '会计学', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:44', '1', null, '2', '4', '94', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('170', '1', null, '工商管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:44', '1', null, '2', '4', '96', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('171', '1', null, '市场营销', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:44', '1', null, '2', '4', '95', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('172', '1', null, '行政管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:44', '1', null, '2', '4', '91', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('173', '1', null, '工程管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '4', '92', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('174', '1', null, '人力资源管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '4', '93', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('175', '1', null, '信息管理与信息系统', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '4', '120', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('176', '1', null, '电气工程及其自动化', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '4', '111', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('177', '1', null, '化学工程与工艺', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '4', '121', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('178', '1', null, '机械电子工程', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '4', '98', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('179', '1', null, '计算机信息管理及应用技术', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '4', '158', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('180', '1', null, '交通运输', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '4', '113', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('181', '1', null, '土木工程', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '4', '99', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('182', '1', null, '测绘工程', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '4', '122', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('183', '1', null, '采矿工程', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '4', '123', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('184', '1', null, '通信工程', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '4', '124', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('185', '1', null, '矿物加工工程', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '4', '125', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('186', '1', null, '热能与动力工程', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '4', '116', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('187', '1', null, '数学与应用数学', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '4', '126', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('188', '1', null, '学前教育', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '4', '104', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('189', '1', null, '艺术设计', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '4', '118', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('190', '1', null, '临床医学', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '2', '86', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('191', '1', null, '护理学', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '2', '88', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('192', '1', null, '麻醉学', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '2', '127', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('193', '1', null, '口腔医学', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '2', '87', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('194', '1', null, '医学影像学', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '2', '128', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('195', '1', null, '预防医学', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '2', '84', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('196', '1', null, '医学检验', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '2', '85', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('197', '1', null, '中西医临床医学', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '2', '129', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('198', '1', null, '药学', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '2', '83', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('199', '1', null, '公共事业管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '2', '130', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('200', '1', null, '法学', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '2', '82', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('201', '1', null, '艺术设计', '1', '2.5', '0.00', '180.00', '2600.00', '600.00', '7280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '1', '118', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('202', '1', null, '英语', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '1', '100', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('203', '1', null, '法学', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '1', '82', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('204', '1', null, '国际经济与贸易', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '1', '152', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('205', '1', null, '金融学', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:45', '1', null, '2', '1', '90', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('206', '1', null, '市场营销', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:46', '1', null, '2', '1', '95', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('207', '1', null, '会计学', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:46', '1', null, '2', '1', '94', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('208', '1', null, '人力资源管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:46', '1', null, '2', '1', '93', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('209', '1', null, '工商管理', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:46', '1', null, '2', '1', '96', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('210', '1', null, '计算机信息管理及应用技术', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:46', '1', null, '2', '1', '158', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('212', '1', null, '电气工程及其自动化', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:46', '1', null, '2', '1', '111', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('213', '1', null, '机械电子工程', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:46', '1', null, '2', '1', '98', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('214', '1', null, '化工与制药', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:46', '1', null, '2', '1', '131', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('215', '1', null, '环境工程', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:46', '1', null, '2', '1', '132', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('216', '1', null, '生物工程', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:46', '1', null, '2', '1', '133', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('217', '1', null, '轻化工程', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:46', '1', null, '2', '1', '134', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('218', '1', null, '材料科学与工程', '1', '2.5', '0.00', '180.00', '2200.00', '600.00', '6280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:37:46', '1', null, '2', '1', '135', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('219', '1', null, '电气工程及其自动化', '1', '5.0', '0.00', '180.00', '2200.00', '600.00', '11780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:42:03', '1', null, '3', '5', '136', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('220', '1', null, '机械设计制造及其自动化', '1', '5.0', '0.00', '180.00', '2200.00', '600.00', '11780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:42:03', '1', null, '3', '5', '137', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('221', '1', null, '土木工程', '1', '5.0', '0.00', '180.00', '2200.00', '600.00', '11780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:42:03', '1', null, '3', '5', '138', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('222', '1', null, '交通运输', '1', '5.0', '0.00', '180.00', '2200.00', '600.00', '11780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:42:03', '1', null, '3', '5', '139', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('223', '1', null, '物流管理', '1', '5.0', '0.00', '180.00', '2200.00', '600.00', '11780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:42:03', '1', null, '3', '5', '140', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('224', '1', null, '学前教育', '1', '5.0', '0.00', '180.00', '2000.00', '600.00', '11780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:42:03', '1', null, '3', '5', '141', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('225', '1', null, '计算机科学与技术', '1', '5.0', '0.00', '180.00', '2200.00', '600.00', '11780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:42:03', '1', null, '3', '4', '142', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('226', '1', null, '机械电子工程', '1', '5.0', '0.00', '180.00', '2200.00', '600.00', '11780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:42:03', '1', null, '3', '4', '137', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('227', '1', null, '采矿工程', '1', '5.0', '0.00', '180.00', '2200.00', '600.00', '11780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:42:03', '1', null, '3', '4', '143', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('228', '1', null, '土木工程', '1', '5.0', '0.00', '180.00', '2200.00', '600.00', '11780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:42:03', '1', null, '3', '4', '138', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('229', '1', null, '国际经济与贸易', '1', '5.0', '0.00', '180.00', '2200.00', '600.00', '11780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:42:03', '1', null, '3', '4', '144', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('230', '1', null, '工商管理', '1', '5.0', '0.00', '180.00', '2200.00', '600.00', '11780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:42:03', '1', null, '3', '4', '145', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('231', '1', null, '会计学', '1', '5.0', '0.00', '180.00', '2200.00', '600.00', '11780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:42:03', '1', null, '3', '4', '143', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('232', '1', null, '临床医学', '1', '5.0', '0.00', '180.00', '2600.00', '600.00', '14280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:42:03', '1', null, '3', '2', '147', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('233', '1', null, '护理学', '1', '5.0', '0.00', '180.00', '2600.00', '600.00', '14280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:42:03', '1', null, '3', '2', '148', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('234', '1', null, '艺术设计', '1', '5.0', '0.00', '180.00', '2600.00', '600.00', '14280.00', '1', null, null, '次年3月份', null, '2015-06-15 17:42:03', '1', null, '3', '1', '149', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('235', '1', null, '国际经济与贸易', '1', '5.0', '0.00', '180.00', '2200.00', '600.00', '11780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:42:03', '1', null, '3', '1', '144', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('236', '1', null, '印刷工程', '1', '5.0', '0.00', '180.00', '2200.00', '600.00', '11780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:42:03', '1', null, '3', '1', '150', null, null, null, null, null, null, null);
INSERT INTO `tb_project` VALUES ('237', '1', '', '汉语言文学', '1', '2.5', '0.00', '180.00', '2000.00', '600.00', '5780.00', '1', null, null, '次年3月份', null, '2015-06-15 17:49:06', '1', null, '1', '3', '81', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for tb_school
-- ----------------------------
DROP TABLE IF EXISTS `tb_school`;
CREATE TABLE `tb_school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `description` varchar(1000) DEFAULT NULL COMMENT '学校介绍',
  `status` int(2) DEFAULT '1' COMMENT '是否删除：1、未删除，0、已删除',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `fk_specialId` (`description`(255)) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='学校';

-- ----------------------------
-- Records of tb_school
-- ----------------------------
INSERT INTO `tb_school` VALUES ('1', '齐鲁工业大学', '2015-06-15 09:13:11', '2015-06-15 10:13:06', '齐鲁工业大学始建于1948年，2013年，学校由山东轻工业学院更名为齐鲁工业大学。学校是山东省“应用型人才特色名校”立项建设单位和山东省“2011协同创新计划”立项建设单位。', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_school` VALUES ('2', '潍坊医学院', '2015-06-15 09:13:11', '2015-06-15 10:12:43', '潍坊医学院是一所以医学为主，管理学、法学、理学、文学等多学科门类相结合的省属高等医学院校。学校前身是成立于1951年的山东省昌潍医士学校，1958年在青岛医学院（现青岛大学医学院）支援下扩建为昌潍医学院，1987年更名为潍坊医学院，教育部“卓越医生教育培养计划”试点高校。', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_school` VALUES ('3', '山东大学', '2015-06-15 09:13:11', '2015-06-15 10:14:18', '山东大学是一所历史悠久、学科齐全、学术实力雄厚、办学特色鲜明，在国内外具有重要影响的教育部直属重点综合性大学，是国家“211工程”和“985工程”重点建设的高水平大学之一。', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_school` VALUES ('4', '山东理工大学', '2015-06-15 09:13:11', '2015-06-15 10:15:10', '山东理工大学创建于1956年，坐落在历史悠久的齐文化发祥地——山东省淄博市，是山东省重点建设的理工科大学。', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_school` VALUES ('5', '鲁东大学', '2015-06-15 09:46:12', '2015-06-15 10:13:02', '', '1', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for tb_specialty
-- ----------------------------
DROP TABLE IF EXISTS `tb_specialty`;
CREATE TABLE `tb_specialty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `create_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `description` varchar(1000) DEFAULT NULL COMMENT '专业介绍',
  `status` int(2) DEFAULT '1' COMMENT '是否删除：1、未删除，0、已删除',
  `level_id` int(11) DEFAULT NULL COMMENT '层次id',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `fk_levelId` (`description`(255)) USING BTREE,
  KEY `fk_level_id` (`level_id`) USING BTREE,
  CONSTRAINT `tb_specialty_ibfk_1` FOREIGN KEY (`level_id`) REFERENCES `tb_level` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8 COMMENT='专业';

-- ----------------------------
-- Records of tb_specialty
-- ----------------------------
INSERT INTO `tb_specialty` VALUES ('1', '工商企业管理', '2015-06-15 10:50:24', '2015-06-15 10:50:37', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('2', '法律事务', '2015-06-15 10:50:24', '2015-06-15 10:50:50', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('3', '人力资源管理', '2015-06-15 10:50:24', '2015-06-15 10:53:30', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('4', '会计', '2015-06-15 10:50:24', '2015-06-15 10:53:30', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('5', '市场营销', '2015-06-15 10:50:24', '2015-06-15 10:53:30', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('6', '计算机信息管理及应用技术', '2015-06-15 10:50:24', '2015-06-15 11:35:37', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('7', '机电一体化技术', '2015-06-15 10:50:24', '2015-06-15 10:53:43', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('8', '药学', '2015-06-15 10:50:24', '2015-06-15 10:53:44', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('9', '医学检验技术', '2015-06-15 10:50:24', '2015-06-15 10:53:44', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('10', '临床医学', '2015-06-15 10:50:24', '2015-06-15 10:53:44', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('11', '口腔医学', '2015-06-15 10:50:24', '2015-06-15 10:53:45', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('12', '护理', '2015-06-15 10:50:24', '2015-06-15 10:53:45', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('13', '国际商务', '2015-06-15 10:50:24', '2015-06-15 10:53:45', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('14', '应用韩语', '2015-06-15 10:50:24', '2015-06-15 10:53:45', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('15', '应用日语', '2015-06-15 10:50:24', '2015-06-15 10:53:45', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('16', '英语教育', '2015-06-15 10:50:24', '2015-06-15 10:53:46', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('17', '商务英语', '2015-06-15 10:50:24', '2015-06-15 10:53:54', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('18', '文秘', '2015-06-15 10:50:24', '2015-06-15 10:53:46', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('19', '汉语', '2015-06-15 10:51:04', '2015-06-15 10:53:46', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('20', '教育管理', '2015-06-15 10:50:24', '2015-06-15 10:53:47', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('21', '初等教育', '2015-06-15 10:50:24', '2015-06-15 10:53:47', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('22', '学前教育', '2015-06-15 10:50:24', '2015-06-15 10:53:47', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('23', '社区管理与服务', '2015-06-15 10:50:24', '2015-06-15 11:43:50', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('24', '国际经济与贸易', '2015-06-15 10:50:24', '2015-06-15 11:43:50', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('25', '经济管理', '2015-06-15 10:50:24', '2015-06-15 11:43:50', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('26', '旅游管理', '2015-06-15 10:50:24', '2015-06-15 11:43:50', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('27', '行政管理', '2015-06-15 10:50:24', '2015-06-15 11:43:50', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('28', '报关与国际货运', '2015-06-15 10:50:24', '2015-06-15 11:43:50', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('29', '应用心理学', '2015-06-15 10:50:24', '2015-06-15 11:43:50', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('30', '汽车运用技术', '2015-06-15 10:50:24', '2015-06-15 11:43:50', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('31', '道路桥梁工程技术', '2015-06-15 10:50:24', '2015-06-15 11:43:50', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('32', '工程造价', '2015-06-15 10:50:24', '2015-06-15 11:43:50', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('33', '建筑工程技术', '2015-06-15 10:50:24', '2015-06-15 11:43:50', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('34', '数控技术', '2015-06-15 10:50:24', '2015-06-15 11:43:50', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('35', '物流管理', '2015-06-15 10:50:24', '2015-06-15 11:43:50', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('36', '港口业务管理', '2015-06-15 10:50:24', '2015-06-15 11:43:50', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('37', '食品质量与安全', '2015-06-15 11:44:23', '2015-06-15 11:44:32', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('38', '幼儿艺术教育', '2015-06-15 10:50:24', '2015-06-15 11:43:50', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('39', '音乐教育', '2015-06-15 10:50:24', '2015-06-15 11:43:51', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('40', '艺术设计', '2015-06-15 10:50:24', '2015-06-15 11:43:51', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('41', '电气自动化技术', '2015-06-15 10:50:24', '2015-06-15 11:43:51', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('42', '供用电技术', '2015-06-15 10:50:24', '2015-06-15 11:43:51', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('43', '机械电子工程', '2015-06-15 10:50:24', '2015-06-15 11:43:51', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('44', '工程监理', '2015-06-15 10:50:24', '2015-06-15 11:43:51', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('45', '采矿工程', '2015-06-15 10:50:24', '2015-06-15 11:43:51', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('46', '矿山机电', '2015-06-15 10:50:24', '2015-06-15 11:43:51', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('47', '矿山资源开发与管理', '2015-06-15 10:50:24', '2015-06-15 11:43:51', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('48', '化学工程与工艺', '2015-06-15 10:50:24', '2015-06-15 11:43:51', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('49', '汽车检测与维修技术', '2015-06-15 11:44:23', '2015-06-15 11:44:57', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('50', '热能动力设备与应用', '2015-06-15 11:44:23', '2015-06-15 11:44:57', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('51', '环境工程', '2015-06-15 11:44:23', '2015-06-15 11:44:57', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('52', '测绘工程', '2015-06-15 11:44:23', '2015-06-15 11:44:57', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('53', '矿井通风与安全', '2015-06-15 11:44:23', '2015-06-15 11:44:57', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('54', '财务管理', '2015-06-15 11:44:23', '2015-06-15 11:44:57', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('55', '酒店管理', '2015-06-15 11:44:23', '2015-06-15 11:44:57', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('56', '体育教育', '2015-06-15 11:44:23', '2015-06-15 11:44:57', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('57', '麻醉学', '2015-06-15 11:44:23', '2015-06-15 11:44:57', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('58', '医学影像学', '2015-06-15 11:44:23', '2015-06-15 11:44:57', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('60', '中西医结合', '2015-06-15 11:44:23', '2015-06-15 11:44:57', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('61', '医药营销', '2015-06-15 11:44:23', '2015-06-15 11:44:59', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('62', '公共卫生管理', '2015-06-15 11:44:23', '2015-06-15 11:44:59', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('63', '金融学', '2015-06-15 11:44:23', '2015-06-15 11:44:59', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('64', '电子商务', '2015-06-15 11:44:23', '2015-06-15 11:45:00', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('65', '电气工程及其自动化', '2015-06-15 11:44:23', '2015-06-15 11:45:00', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('66', '应用电子技术', '2015-06-15 11:44:23', '2015-06-15 11:45:00', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('67', '生物工程', '2015-06-15 13:22:47', '2015-06-15 13:23:10', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('68', '制浆造纸工程', '2015-06-15 13:22:47', '2015-06-15 13:22:57', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('69', '材料科学材料科学与工程', '2015-06-15 11:44:23', '2015-06-15 11:50:33', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('70', '印刷工程', '2015-06-15 11:44:23', '2015-06-15 11:45:00', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('71', '工商企业管理', '2015-06-15 11:44:23', '2015-06-15 11:45:05', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('81', '汉语言文学', '2015-06-15 13:22:47', '2015-06-15 13:22:51', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('82', '法学', '2015-06-15 13:22:47', '2015-06-15 13:22:52', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('83', '药学', '2015-06-15 13:22:47', '2015-06-15 13:22:52', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('84', '预防医学', '2015-06-15 13:22:47', '2015-06-15 13:23:17', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('85', '医学检验', '2015-06-15 13:22:47', '2015-06-15 13:23:18', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('86', '临床医学', '2015-06-15 13:22:47', '2015-06-15 13:23:18', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('87', '口腔医学', '2015-06-15 13:22:47', '2015-06-15 13:23:19', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('88', '护理学', '2015-06-15 13:22:47', '2015-06-15 13:23:20', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('90', '金融学', '2015-06-15 13:22:47', '2015-06-15 13:23:23', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('91', '行政管理', '2015-06-15 13:22:47', '2015-06-15 13:23:30', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('92', '工程管理', '2015-06-15 13:22:47', '2015-06-15 13:23:30', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('93', '人力资源管理', '2015-06-15 13:22:47', '2015-06-15 13:23:30', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('94', '会计学', '2015-06-15 13:22:47', '2015-06-15 13:23:30', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('95', '市场营销', '2015-06-15 13:22:47', '2015-06-15 13:23:30', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('96', '工商管理', '2015-06-15 13:22:47', '2015-06-15 13:23:30', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('97', '计算机信息管理及应用技术', '2015-06-15 13:22:47', '2015-06-15 13:23:30', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('98', '机械设计制造及其自动化', '2015-06-15 13:22:47', '2015-06-15 13:23:30', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('99', '土木工程', '2015-06-15 13:22:47', '2015-06-15 13:23:30', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('100', '英语', '2015-06-15 13:22:47', '2015-06-15 13:23:30', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('101', '朝鲜语', '2015-06-15 13:22:47', '2015-06-15 13:23:30', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('102', '日语', '2015-06-15 13:22:47', '2015-06-15 13:23:30', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('103', '社会工作', '2015-06-15 13:22:47', '2015-06-15 13:23:30', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('104', '学前教育', '2015-06-15 13:22:47', '2015-06-15 13:23:30', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('105', '教育学', '2015-06-15 13:22:47', '2015-06-15 13:22:56', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('106', '旅游管理', '2015-06-15 13:22:47', '2015-06-15 13:22:56', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('107', '文秘教育', '2015-06-15 13:22:47', '2015-06-15 13:22:55', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('108', '应用心理学', '2015-06-15 13:22:47', '2015-06-15 13:22:55', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('109', '经济学', '2015-06-15 13:22:47', '2015-06-15 13:22:54', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('110', '网络工程', '2015-06-15 13:33:03', '2015-06-15 13:33:05', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('111', '电气工程及其自动化', '2015-06-15 13:33:03', '2015-06-15 13:33:10', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('112', '物流工程', '2015-06-15 13:33:03', '2015-06-15 13:33:11', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('113', '交通运输', '2015-06-15 13:33:03', '2015-06-15 13:33:11', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('114', '食品质量与安全', '2015-06-15 13:33:03', '2015-06-15 13:33:12', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('115', '船舶与海洋工程', '2015-06-15 13:33:03', '2015-06-15 17:22:23', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('116', '热能与动力工程', '2015-06-15 13:33:03', '2015-06-15 13:33:13', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('117', '音乐学', '2015-06-15 13:33:03', '2015-06-15 13:33:14', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('118', '艺术设计', '2015-06-15 13:33:03', '2015-06-15 13:33:14', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('119', '广播电视编导', '2015-06-15 13:33:03', '2015-06-15 13:33:15', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('120', '信息管理与信息系统', '2015-06-15 13:33:03', '2015-06-15 13:33:16', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('121', '化学工程与工艺', '2015-06-15 13:33:03', '2015-06-15 13:33:16', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('122', '测绘工程', '2015-06-15 13:33:03', '2015-06-15 13:33:17', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('123', '采矿工程', '2015-06-15 13:33:03', '2015-06-15 13:33:17', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('124', '通信工程', '2015-06-15 13:33:03', '2015-06-15 13:33:18', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('125', '矿物加工工程', '2015-06-15 13:33:03', '2015-06-15 13:33:19', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('126', '数学与应用数学', '2015-06-15 13:33:03', '2015-06-15 13:33:21', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('127', '麻醉学', '2015-06-15 13:33:03', '2015-06-15 13:33:21', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('128', '医学影像学', '2015-06-15 13:33:03', '2015-06-15 13:33:22', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('129', '中西医临床医学', '2015-06-15 13:33:03', '2015-06-15 13:33:22', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('130', '公共事业管理', '2015-06-15 13:33:03', '2015-06-15 13:33:22', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('131', '化工与制药', '2015-06-15 13:33:03', '2015-06-15 13:33:23', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('132', '环境工程', '2015-06-15 13:33:03', '2015-06-15 13:33:23', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('133', '生物工程', '2015-06-15 13:33:03', '2015-06-15 13:33:24', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('134', '轻化工程', '2015-06-15 13:33:03', '2015-06-15 13:33:24', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('135', '材料科学与工程', '2015-06-15 13:33:03', '2015-06-15 13:33:24', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('136', '电气工程及其自动化', '2015-06-15 13:33:03', '2015-06-15 13:33:25', '专业描述', '1', '3', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('137', '机械电子工程', '2015-06-15 13:33:03', '2015-06-15 13:33:31', '专业描述', '1', '3', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('138', '土木工程', '2015-06-15 13:33:03', '2015-06-15 13:33:26', '专业描述', '1', '3', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('139', '交通运输', '2015-06-15 13:33:03', '2015-06-15 13:33:32', '专业描述', '1', '3', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('140', '物流管理', '2015-06-15 13:33:03', '2015-06-15 13:33:26', '专业描述', '1', '3', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('141', '学前教育', '2015-06-15 13:33:03', '2015-06-15 13:33:34', '专业描述', '1', '3', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('142', '计算机信息管理及应用技术', '2015-06-15 13:33:03', '2015-06-15 13:33:30', '专业描述', '1', '3', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('143', '采矿工程', '2015-06-15 13:33:03', '2015-06-15 13:33:35', '专业描述', '1', '3', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('144', '国际经济与贸易', '2015-06-15 13:33:03', '2015-06-15 13:33:36', '专业描述', '1', '3', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('145', '工商管理', '2015-06-15 13:33:03', '2015-06-15 13:33:37', '专业描述', '1', '3', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('146', '会计学', '2015-06-15 13:33:03', '2015-06-15 13:33:37', '专业描述', '1', '3', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('147', '临床医学', '2015-06-15 13:33:03', '2015-06-15 13:33:38', '专业描述', '1', '3', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('148', '护理学', '2015-06-15 13:33:03', '2015-06-15 13:33:39', '专业描述', '1', '3', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('149', '艺术设计', '2015-06-15 13:33:03', '2015-06-15 13:33:41', '专业描述', '1', '3', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('150', '印刷工程', '2015-06-15 13:33:03', '2015-06-15 13:33:43', '专业描述', '1', '3', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('151', '机电一体化技术', '2015-06-15 13:57:47', '2015-06-15 13:57:49', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('152', '国际经济与贸易', '2015-06-15 14:04:47', '2015-06-15 14:18:40', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('153', '预防医学', '2015-06-15 14:10:37', '2015-06-15 14:18:42', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('154', '营养与食品卫生', '2015-06-15 14:14:15', '2015-06-15 14:18:44', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('155', '装潢艺术设计', '2015-06-15 14:18:28', '2015-06-15 14:18:54', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('156', '电脑艺术设计', '2015-06-15 14:18:30', '2015-06-15 14:18:55', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('157', '动漫设计与制作', '2015-06-15 14:18:32', '2015-06-15 14:18:56', '专业描述', '1', '1', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('158', '计算机科学与技术', '2015-06-15 17:20:49', '2015-06-15 17:20:47', '专业描述', '1', '2', null, null, null, null, null, null, null);
INSERT INTO `tb_specialty` VALUES ('159', '食品科学与工程', '2015-06-15 17:21:26', '2015-06-15 17:21:36', '专业描述', '1', '2', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for trade_record
-- ----------------------------
DROP TABLE IF EXISTS `trade_record`;
CREATE TABLE `trade_record` (
  `id` varchar(255) NOT NULL,
  `trade_number` varchar(255) NOT NULL COMMENT '支付宝交易号',
  `out_trade_no` varchar(255) DEFAULT NULL COMMENT '商户订单号',
  `notifyTime` timestamp NULL DEFAULT NULL COMMENT '通知时间',
  `total_fee` decimal(15,2) DEFAULT NULL COMMENT '交易金额',
  `result` varchar(255) DEFAULT NULL COMMENT '交易结果',
  `buyer_id` varchar(255) DEFAULT NULL COMMENT '买家支付宝id',
  `subject` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `createTime` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付交易通知记录';

-- ----------------------------
-- Records of trade_record
-- ----------------------------
INSERT INTO `trade_record` VALUES ('034f1e84-38ea-40e8-b0ef-b144d45136b5', '1006790227201506150253496582', '20150615160709238', '2015-06-15 16:07:23', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150615160709238', '2015-06-15 16:41:21', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('062d0b40-b674-4d17-84a5-2fc8d994b239', '1006790227201506130247000354', '20150613212047207', '2015-06-13 21:21:06', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150613212047207', '2015-06-13 21:25:09', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('15d7f92b-78a5-47ad-ae54-ced29e471045', '1006790227201506150255015632', '20150615211400326', '2015-06-15 21:14:15', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150615211400326', '2015-06-15 22:48:29', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('1f5b866a-8eb6-42a0-89d2-2c815d07e7dd', '1006790227201506150255015632', '20150615211400326', '2015-06-15 21:14:15', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150615211400326', '2015-06-15 21:48:23', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('22888c52-b493-4901-97fd-9f1c74c73818', '1006790227201506150253496582', '20150615160709238', '2015-06-15 16:07:23', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150615160709238', '2015-06-15 19:11:33', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('2592e915-5f02-4547-a188-e8211b2ecc24', '1006790227201506150253496582', '20150615160709238', '2015-06-15 16:07:23', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150615160709238', '2015-06-15 17:41:26', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('2d0406f4-cbc0-4ed7-a1ff-4116248f6542', '2015061600001000700056875425', '2015061613335161', '2015-06-16 16:58:41', '0.01', 'TRADE_SUCCESS', '2088402368617704', '托普在线-null', '2015-06-16 16:58:41', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('39152efc-dc1d-4e57-8b12-3948f70c8b89', '1006790227201506150253199549', '20150615144539207', '2015-06-15 14:45:49', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150615144539207', '2015-06-15 14:49:42', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('3f92bced-6126-438a-b616-d19128450d86', '2015061600001000700056870828', '20150616124525156', '2015-06-16 16:09:57', '0.01', 'TRADE_SUCCESS', '2088402368617704', '托普在线-null', '2015-06-16 16:09:57', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('411d1a4e-8231-43bc-809b-1a107eb3e376', '1006790227201506150253199549', '20150615144539207', '2015-06-15 14:45:49', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150615144539207', '2015-06-15 14:46:09', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('42947063-1f4e-4159-98bd-87dce5bb3df4', '1006790227201506130247085947', '20150613213720506', '2015-06-13 21:37:46', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150613213720506', '2015-06-13 21:37:53', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('45e3f1e4-79d0-45c6-b7c8-399e0f72e518', '1006790227201506150253496582', '20150615160709238', '2015-06-15 16:07:23', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150615160709238', '2015-06-15 16:11:18', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('48930e1e-b745-424d-8c7e-5365148fa559', '2015061600001000700056875425', '2015061613335161', '2015-06-16 22:58:01', '0.01', 'TRADE_SUCCESS', '2088402368617704', '托普在线-null', '2015-06-16 22:58:02', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('4b24180d-b7f6-4965-b487-18ba85b79b7f', '1006790227201506150253496582', '20150615160709238', '2015-06-15 16:07:23', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150615160709238', '2015-06-15 16:07:24', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('4d6e0f62-94cf-46ef-84b6-d864d20c6195', '1006790227201506150253199549', '20150615144539207', '2015-06-15 14:45:49', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150615144539207', '2015-06-15 14:46:40', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('4dfe9ea4-2c14-446c-af94-b60731a49cb7', '1006790227201506130247000354', '20150613212047207', '2015-06-13 21:21:06', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150613212047207', '2015-06-13 21:21:08', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('4f731594-47c7-4671-817e-4473efae64bf', '1006790227201506150255015632', '20150615211400326', '2015-06-15 21:14:15', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150615211400326', '2015-06-15 21:18:19', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('5626dbea-3a5f-44c5-a333-b890dd46bfa1', '1006790227201506130247085947', '20150613213720506', '2015-06-13 21:37:46', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150613213720506', '2015-06-13 21:37:47', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('5648480f-9fb3-41db-ba57-1c3a48af0817', '1006790227201506150255015632', '20150615211400326', '2015-06-15 21:14:15', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150615211400326', '2015-06-16 00:18:36', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('72197f54-6c3c-46d1-83de-4ee5605ef717', '1006790227201506130247085947', '20150613213720506', '2015-06-13 21:37:46', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150613213720506', '2015-06-13 21:38:11', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('7525fbd4-8aa2-498a-ab30-c25b725af140', '2015061600001000700056870828', '20150616124525156', '2015-06-16 22:09:18', '0.01', 'TRADE_SUCCESS', '2088402368617704', '托普在线-null', '2015-06-16 22:09:19', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('765742bf-8e78-419f-a4d3-f501168f38cf', '1006790227201506150253199549', '20150615144539207', '2015-06-15 14:45:49', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150615144539207', '2015-06-15 16:19:51', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('7a724bfc-d8a8-475c-9b4e-af88cd2579a2', '2015061600001000700056869704', '20150616123348556', '2015-06-16 15:58:38', '0.01', 'TRADE_SUCCESS', '2088402368617704', '托普在线-null', '2015-06-16 15:58:38', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('7b37f933-65cf-41b7-857a-d46dc095bb74', '1006790227201506150253496582', '20150615160709238', '2015-06-15 16:07:23', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150615160709238', '2015-06-15 16:07:27', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('8825d073-55c2-4fa0-9c8d-d1856a03baf0', '2015061600001000700056875425', '2015061613335161', '2015-06-17 13:58:36', '0.01', 'TRADE_SUCCESS', '2088402368617704', '托普在线-null', '2015-06-17 13:58:36', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('8b3b3613-3b42-40f0-ab29-704b3d6d5c24', '1006790227201506150255015632', '20150615211400326', '2015-06-15 21:14:15', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150615211400326', '2015-06-15 21:15:17', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('9199ef35-1e0c-423e-86d5-00e6288cce31', '1006790227201506150255015632', '20150615211400326', '2015-06-15 21:14:15', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150615211400326', '2015-06-15 21:14:43', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('9dc89437-7f3d-47c2-804e-de0378a5e463', '1006790227201506150253199549', '20150615144539207', '2015-06-15 14:45:49', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150615144539207', '2015-06-15 15:19:46', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('9efdce6a-37ec-4450-82e4-22d2cd3cdde4', '1006790227201506130247000354', '20150613212047207', '2015-06-13 21:21:06', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150613212047207', '2015-06-13 21:21:34', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('a1afbefa-5548-4ea4-9c2a-f824cc363c24', '1006790227201506150253496582', '20150615160709238', '2015-06-15 16:07:23', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150615160709238', '2015-06-15 16:08:16', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('a60d52e6-d8a9-4008-a24e-19cf64fa5a58', '1006790227201506150253199549', '20150615144539207', '2015-06-15 14:45:49', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150615144539207', '2015-06-15 15:49:49', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('a82f6876-2dfc-4c07-aa1d-4b15f6a42485', '2015061600001000700056870828', '20150616124525156', '2015-06-17 13:09:28', '0.01', 'TRADE_SUCCESS', '2088402368617704', '托普在线-null', '2015-06-17 13:09:28', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('b1d95c5e-4c1c-42cf-afc9-220250c1793d', '1006790227201506150253199549', '20150615144539207', '2015-06-15 14:45:49', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150615144539207', '2015-06-15 16:49:53', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('b27f9c75-e6b9-41d9-ae1c-b41a56fe9a91', '1006790227201506150255015632', '20150615211400326', '2015-06-15 21:14:15', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150615211400326', '2015-06-15 22:18:26', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('b8f662f8-fffe-44d3-8fb1-d3406c95d59f', '2015061600001000700056869704', '20150616123348556', '2015-06-17 12:58:39', '0.01', 'TRADE_SUCCESS', '2088402368617704', '托普在线-null', '2015-06-17 12:58:39', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('bf5d1558-99f3-4757-9c12-dbdc732ac017', '1006790227201506150253496582', '20150615160709238', '2015-06-15 16:07:23', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150615160709238', '2015-06-15 16:07:45', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('c171e34d-8f69-47fd-9e93-a99ae4ba8674', '1006790227201506150253496582', '20150615160709238', '2015-06-15 16:07:23', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150615160709238', '2015-06-15 18:11:30', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('ccf0bcd8-9057-485f-a16f-11619a2c63bd', '1006790227201506150253496582', '20150615160709238', '2015-06-15 16:07:23', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150615160709238', '2015-06-15 17:11:23', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('cd2d39e6-6702-4d9a-8a8a-57fce8a96591', '1006790227201506150253199549', '20150615144539207', '2015-06-15 14:45:49', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150615144539207', '2015-06-15 14:45:52', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('d69a716f-99a8-4c16-b155-e69d057124ad', '2015061600001000700056877817', '20150616140304162', '2015-06-16 14:07:13', '0.01', 'TRADE_SUCCESS', '2088402368617704', '托普在线-null', '2015-06-16 14:07:13', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('d75eea24-95e5-4204-9b8d-e0bfd3b3995f', '1006790227201506150253199549', '20150615144539207', '2015-06-15 14:45:49', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150615144539207', '2015-06-15 17:49:54', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('e08adaa8-7af4-468b-a05a-87da7fc35cfc', '1006790227201506150253199549', '20150615144539207', '2015-06-15 14:45:49', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150615144539207', '2015-06-15 14:45:51', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('ee28b0c3-c34c-4714-86ba-032846da4093', '1006790227201506150255015632', '20150615211400326', '2015-06-15 21:14:15', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150615211400326', '2015-06-15 21:14:16', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('ef2e52f8-4a5b-4e7f-a6bc-44027d16863e', '2015061600001000700056870828', '20150616124525156', '2015-06-16 14:09:02', '0.01', 'TRADE_SUCCESS', '2088402368617704', '托普在线-null', '2015-06-16 14:09:02', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('f40c67d4-e78c-4bd7-a782-8cea1517e75c', '1006790227201506150255015632', '20150615211400326', '2015-06-15 21:14:15', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150615211400326', '2015-06-15 21:14:25', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('f5ac1c34-0d05-4e51-92ea-b8ed79b09c06', '2015061600001000700056877817', '20150616140304162', '2015-06-16 14:03:17', '0.01', 'TRADE_SUCCESS', '2088402368617704', '托普在线-null', '2015-06-16 14:03:17', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('faf94ece-731b-462f-bed6-afe3d9ac66e8', '2015061600001000700056869704', '20150616123348556', '2015-06-16 21:58:55', '0.01', 'TRADE_SUCCESS', '2088402368617704', '托普在线-null', '2015-06-16 21:58:55', null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('fda4b131-8d7f-4422-b97a-02980fbc9577', '1006790227201506150255015632', '20150615211400326', '2015-06-15 21:14:15', '0.01', 'SUCCESS', 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', '20150615211400326', '2015-06-15 23:18:32', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(15) NOT NULL DEFAULT '',
  `password` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `id_card` varchar(45) DEFAULT NULL,
  `referrer_mobile` varchar(45) DEFAULT NULL,
  `industry` varchar(200) DEFAULT NULL,
  `available_credits` int(11) DEFAULT NULL,
  `freeze_credits` int(11) DEFAULT NULL,
  `register_date` timestamp NULL DEFAULT NULL,
  `proxy` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `wechat` varchar(255) DEFAULT NULL COMMENT '微信openid',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '15253251950', '49ba59abbe56e057', null, '\0', null, null, null, '300', null, '2015-06-13 10:25:12', null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('2', '18678951678', '13955235245b2497', null, '\0', null, null, null, '100', null, '2015-06-13 16:35:15', null, 'oNY5suIzVKGHouCHVnGI2AY1AnuM', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('3', '13687639010', '49ba59abbe56e057', '程大伟', '\0', '370282198704243610', null, null, '21717', null, '2015-06-13 16:42:52', null, 'oNY5suH4CVgTT9izW_dTUM8heVYo', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('4', '13583282090', '7b8132b40ad12588', '侯晓娜', '\0', null, null, null, '4870', null, '2015-06-14 20:07:33', null, 'oNY5suItW_mgpPUtq8aQU18VJges', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('12', '18560683520', '49ba59abbe56e057', '王磊', '\0', '370704199106525801', '13687639010', null, '8177', null, '2015-06-15 15:37:06', null, 'oNY5suBB_iOm6z1E1zgFYKQ-CYzQ', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('13', '13864809299', '43164b56500def9a', null, '\0', null, '', null, '100', null, '2015-06-15 15:55:39', null, 'oNY5suNc2DO38U4KtcbiexKgEd-k', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('14', '18563917990', '965eb72c92a549dd', '陈爱丽', '\0', '370702197505162248', '', null, '40', null, '2015-06-16 08:43:21', null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('15', '15854207636', '49ba59abbe56e057', null, '\0', null, '', null, '3484', null, '2015-07-10 16:12:10', null, 'oNY5suMOi7twDlzFN5aNTjlFGLys', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('16', '15335320821', '8458ce06fbc5bb76', null, '\0', null, '', null, '3613', null, '2015-07-11 01:02:33', null, 'oNY5suKEaFyd8-2iTf-ZYGT_Tkzc', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('17', '18766219167', '40a79a7463a4339a', null, '\0', null, '', null, '100', null, '2015-07-12 16:54:23', null, 'oNY5suLxg0ujMq6YmLLlYSvnWo3Y', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('18', '13969777183', 'fa5bd1448ad3ff79', null, '\0', null, '', null, '100', null, '2015-07-13 17:43:45', null, 'oNY5suBsshcaVmoUcpgIw1-7lD0k', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('19', '18853291834', 'a1bf2ac2a176bede', null, '\0', null, '', null, '100', null, '2015-07-14 22:12:23', null, 'oNY5suHumO1XosMl8JSYViuLjYZQ', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('20', '13969681544', 'b86b892ccd993348', null, '\0', null, '', null, '100', null, '2015-07-16 10:19:09', null, 'oNY5suFfwPtU-yozAmLHDQSuGwbA', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('21', '18561605083', '9b6a68e857f980a9', null, '\0', null, '', null, '100', null, '2015-07-22 12:32:41', null, 'oNY5suICl0qKje0txk7xGI2dqxzc', null, null, null, null, null, null, null);
