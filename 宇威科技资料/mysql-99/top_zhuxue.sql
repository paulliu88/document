/*
Navicat MySQL Data Transfer

Source Server         : 115.28.59.227
Source Server Version : 50543
Source Host           : 127.0.0.1:3306
Source Database       : top_zhuxue

Target Server Type    : MYSQL
Target Server Version : 50543
File Encoding         : 65001

Date: 2015-08-04 15:29:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hs_announcement
-- ----------------------------
DROP TABLE IF EXISTS `hs_announcement`;
CREATE TABLE `hs_announcement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '公告标题',
  `detail` text CHARACTER SET utf8 COMMENT '公告详细信息介绍',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` int(3) DEFAULT '1' COMMENT '是否删除：1、未删除，2、删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of hs_announcement
-- ----------------------------
INSERT INTO `hs_announcement` VALUES ('1', '购2015年中级职称精品/实验班 赠无纸化模拟系统', null, '2015-04-13 14:31:22', '2015-04-14 14:31:26', '1');
INSERT INTO `hs_announcement` VALUES ('2', '18:30与赵俊峰相约注会经济法名师直播课堂', null, '2015-04-13 14:31:22', '2015-04-14 14:31:26', '1');
INSERT INTO `hs_announcement` VALUES ('3', '2015注会“梦想成真”纸质书限时尊享八折优惠', null, '2015-04-13 14:31:22', '2015-04-14 14:31:26', '1');
INSERT INTO `hs_announcement` VALUES ('4', '财务类岗位招聘信息免费发布 火速投递', null, '2015-04-13 14:31:22', '2015-04-14 14:31:26', '1');

-- ----------------------------
-- Table structure for hs_category
-- ----------------------------
DROP TABLE IF EXISTS `hs_category`;
CREATE TABLE `hs_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `type` int(2) DEFAULT NULL COMMENT '1学历教育、2技能培训、3少儿培训',
  `study_hours` float(4,2) DEFAULT NULL COMMENT '学习时长与study_unit配合使用',
  `study_unit` int(255) DEFAULT NULL COMMENT '1学年、2月、3天、4小时',
  `price` double(6,2) DEFAULT NULL COMMENT 'type为1时是单位价格，其他为总价',
  `class_descr` varchar(500) DEFAULT NULL,
  `major_descr` varchar(1000) DEFAULT NULL COMMENT '专业描述',
  `subject` varchar(25) DEFAULT NULL COMMENT '大类',
  `exam_fee` int(6) DEFAULT NULL COMMENT '考试费',
  `tuition_fee` int(6) DEFAULT NULL COMMENT '学费',
  `book_fee` int(6) DEFAULT NULL COMMENT '书本费',
  `pay_method` int(2) DEFAULT NULL COMMENT '付费方式。1在线支付、2线下支付',
  `integral_val` int(8) DEFAULT '0' COMMENT '积分',
  `integral_switch` int(2) DEFAULT NULL COMMENT '1开、2关',
  `start_date` datetime DEFAULT NULL COMMENT '课程开始时间',
  `end_date` datetime DEFAULT NULL COMMENT '课程结束时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` int(2) DEFAULT '1' COMMENT '是否删除：1、未删除，2、已删除',
  `study_method` int(2) DEFAULT NULL COMMENT '1夜大、2成人教育',
  `leaf` int(2) DEFAULT NULL COMMENT '是否是叶子节点。1：不是，2：是。',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_category
-- ----------------------------
INSERT INTO `hs_category` VALUES ('1', '0', '学历教育', '1', null, null, null, null, '“学历教育”是根据国家教育部下达的招生计划录取的学生，按教育主管部门认可的教学计划实施教学，学生完成学业后，由学校颁发国家统一印制的毕业证书和学位证书。目前我校已有的学历教育有成人高等教育、网络教育、在职教育。', null, null, null, null, null, '3000', '1', null, null, '2015-04-03 14:43:03', '2015-04-27 18:27:08', '1', null, '1');
INSERT INTO `hs_category` VALUES ('2', '1', '高起专', '1', null, null, null, null, '高中同等学历（高中、中专、中技、职高）起点学历报考专科学历。', null, null, null, null, null, '3000', '1', null, null, null, '2015-04-27 18:27:08', '1', null, '1');
INSERT INTO `hs_category` VALUES ('3', '1', '专升本', '1', null, null, null, null, '专升本是大专学历（有学信网上可查的国家承认的大专毕业证）起点报考升本科。', null, null, null, null, null, '3000', '1', null, null, null, '2015-04-27 18:27:08', '1', null, '1');
INSERT INTO `hs_category` VALUES ('4', '1', '高起本', '1', null, null, null, null, '高中同等学力（高中、中专、中技、职高）起点学历报考本科学历。', null, null, null, null, null, '3000', '1', null, null, null, '2015-04-27 18:27:08', '1', null, '1');
INSERT INTO `hs_category` VALUES ('5', '2', '齐鲁工业大学', '1', null, null, null, null, '齐鲁工业大学始建于1948年，2013年，学校由山东轻工业学院更名为齐鲁工业大学。学校是山东省“应用型人才特色名校”立项建设单位和山东省“2011协同创新计划”立项建设单位。', null, null, null, null, null, '3000', '1', null, null, null, '2015-04-27 18:27:08', '1', null, '1');
INSERT INTO `hs_category` VALUES ('6', '5', '装潢艺术设计', '1', '2.50', '1', '1.00', '周末班；晚上班；平常班', '计算机应用基础、艺术概论、素描、水粉、图案、字体设计、平面构成、立体构成、色彩构成、透视、装饰画、标志设计、封面设计、广告设计、包装设计', '艺术类', '180', '2600', '600', null, '3000', '1', '2015-03-01 19:03:57', '2018-03-01 19:04:33', null, '2015-04-27 18:21:06', '1', null, '2');
INSERT INTO `hs_category` VALUES ('7', '5', '电脑艺术设计', '1', '2.50', '1', '1.00', '周末班；晚上班；平常班', '计算机应用、艺术概论、素描、水粉、构成基础、图案、Potoshop7.0、CorelDRAW10、3DMAX5.0、AutoCAD2000、VI设计、广告设计', '艺术类', '180', '2600', '600', null, '3000', '1', '2015-03-01 19:03:57', '2018-03-01 19:04:33', null, '2015-04-27 18:21:10', '1', null, '2');
INSERT INTO `hs_category` VALUES ('8', '5', '动漫设计与制作', '1', '2.50', '1', '1.00', '周末班；晚上班；平常班', '动画原理、角色设计、场景设计、运动规律、视听语言、分镜头、计算机设计、动漫插画、动画剪辑与后期合成、动画项目制作、影视后期软件、三维数字软件、影视动画广告设计、动画音乐与配音、计算机基础、动画项目制作', '艺术类', '180', '2600', '600', null, '3000', '1', '2015-03-01 19:03:57', '2018-03-01 19:04:33', null, '2015-04-27 18:21:37', '1', null, '2');
INSERT INTO `hs_category` VALUES ('9', '3', '齐鲁工业大学', '1', null, null, null, null, '齐鲁工业大学始建于1948年，2013年，学校由山东轻工业学院更名为齐鲁工业大学。学校是山东省“应用型人才特色名校”立项建设单位和山东省“2011协同创新计划”立项建设单位。', null, null, null, null, null, '3000', '1', null, null, null, '2015-04-27 18:27:25', '1', null, '1');
INSERT INTO `hs_category` VALUES ('10', '5', '艺术设计', '1', '2.50', '1', '1.00', '周末班；晚上班；平常班', '素描、图案、透视、计算机辅助设计、装帧设计、壁画、VI设计、效果图、展示设计、广告设计、室内设计、室外设计包装设计', '艺术类', '180', '2600', '600', null, '3000', '1', '2015-03-01 19:03:57', '2018-03-01 19:04:33', null, '2015-04-27 18:22:13', '1', null, '2');
INSERT INTO `hs_category` VALUES ('11', '5', '法学', '1', '2.50', '1', '1.00', '周末班；晚上班；平常班', '法学基础、宪法', '法学类', '180', '2000', '600', null, '3000', '1', '2015-03-01 19:03:57', '2018-03-01 19:04:33', null, '2015-04-27 18:22:59', '1', null, '2');
INSERT INTO `hs_category` VALUES ('12', '5', '国际经济与贸易', '1', '2.50', '1', '1.00', '周末班；晚上班；平常班', '国际经济学、计量经济学、管理学、管理信息系统、世界经济概论、国际贸易实务、国际市场营销、国际商法、国际投资、国际经济合作', '经管类', '180', '2200', '600', null, '3000', '1', '2015-03-01 19:03:57', '2018-03-01 19:04:33', null, '2015-04-27 18:22:18', '1', null, '2');
INSERT INTO `hs_category` VALUES ('13', '4', '齐鲁工业大学', '1', null, null, null, null, '齐鲁工业大学始建于1948年，2013年，学校由山东轻工业学院更名为齐鲁工业大学。学校是山东省“应用型人才特色名校”立项建设单位和山东省“2011协同创新计划”立项建设单位。', null, null, null, null, null, '3000', '1', null, null, null, '2015-04-27 18:27:46', '1', null, '1');
INSERT INTO `hs_category` VALUES ('14', '5', '艺术设计', '1', '5.00', '1', '1.00', '周末班；晚上班；平常班', '素描、水粉、图案、透视、国画、摄影、计算机辅助设计、装帧设计、壁画、VI设计、效果图、展示设计、广告设室内设计、包装设计', '艺术类', '180', '2600', '600', null, '3000', '1', '2015-03-01 19:03:57', '2018-03-01 19:04:33', null, '2015-04-27 18:23:57', '1', null, '2');
INSERT INTO `hs_category` VALUES ('15', '2', '潍坊医学院', '1', null, null, null, null, '潍坊医学院是一所以医学为主，管理学、法学、理学、文学等多学科门类相结合的省属高等医学院校。学校前身是成立于1951年的山东省昌潍医士学校，1958年在青岛医学院（现青岛大学医学院）支援下扩建为昌潍医学院，1987年更名为潍坊医学院，教育部“卓越医生教育培养计划”试点高校。', null, null, null, null, null, '3000', '1', null, null, null, '2015-04-27 18:27:49', '1', null, '1');
INSERT INTO `hs_category` VALUES ('16', '15', '临床医学', '1', '2.50', '1', '1.00', '周末班；晚上班；平常班', '计算机文化基础、医用化学、英语、政治、组织胚胎学、人体解剖学、生理学、生物化学、病理学、诊断学、药理学、病原生物学、医学伦理学、内科学、外科学、预防医学、传染病学、儿科学、妇产科学', '医学类', '180', '2600', '600', null, '3000', '1', '2015-03-01 19:03:57', '2018-03-01 19:04:33', null, '2015-04-27 18:24:38', '1', null, '2');
INSERT INTO `hs_category` VALUES ('17', '3', '潍坊医学院', '1', null, null, null, null, '潍坊医学院是一所以医学为主，管理学、法学、理学、文学等多学科门类相结合的省属高等医学院校。学校前身是成立于1951年的山东省昌潍医士学校，1958年在青岛医学院（现青岛大学医学院）支援下扩建为昌潍医学院，1987年更名为潍坊医学院，教育部“卓越医生教育培养计划”试点高校。', null, null, null, null, null, '3000', '1', null, null, null, '2015-04-27 18:27:52', '1', null, '1');
INSERT INTO `hs_category` VALUES ('18', '17', '临床医学', '1', '2.50', '1', '1.00', '周末班；晚上班；平常班', '高等数学、计算机文化基础、英语、政治、系统解剖学、生理学、生物化学、病理学、药理学、病理生理学、医学影像学、内科学、妇产科学、卫生统计学、核医学、外科学、传染病学、儿科学', '医学类', '180', '2600', '600', null, '3000', '1', '2015-03-01 19:03:57', '2018-03-01 19:04:33', null, '2015-04-27 18:25:14', '1', null, '2');
INSERT INTO `hs_category` VALUES ('19', '4', '潍坊医学院', '1', null, null, null, null, '潍坊医学院是一所以医学为主，管理学、法学、理学、文学等多学科门类相结合的省属高等医学院校。学校前身是成立于1951年的山东省昌潍医士学校，1958年在青岛医学院（现青岛大学医学院）支援下扩建为昌潍医学院，1987年更名为潍坊医学院，教育部“卓越医生教育培养计划”试点高校。', null, null, null, null, null, '3000', '1', null, null, null, '2015-04-27 18:27:58', '1', null, '1');
INSERT INTO `hs_category` VALUES ('20', '19', '临床医学', '1', '5.00', '1', '1.00', '周末班；晚上班；平常班', '高等数学、计算机文化基础、英语、政治、系统解剖学、生理学、生物化学、病理学、药理学、病理生理学、医学影像学、内科学、妇产科学、卫生统计学、核医学、外科学、传染病学、儿科学', '理工类', '180', '2600', '600', null, '3000', '1', '2015-03-01 19:03:57', '2018-03-01 19:04:33', null, '2015-04-27 18:26:19', '1', null, '2');
INSERT INTO `hs_category` VALUES ('21', '0', '技能培训', '2', null, null, null, null, '技能培训是为了增强市场就业竞争力，由技能培训机构开展的。通过技能考核，可以得到国家认可的技能证书。', null, null, null, null, null, '3000', '1', null, null, null, '2015-04-27 18:28:02', '1', null, '1');
INSERT INTO `hs_category` VALUES ('22', '21', '职业技能', '2', null, null, null, null, '职业技能，即指学生将来就业所需的技术和能力。', null, null, null, null, null, '3000', '1', null, null, null, '2015-04-27 18:28:06', '1', null, '1');
INSERT INTO `hs_category` VALUES ('23', '21', '会计培训', '2', null, null, null, null, '针对想取得会计从业资格证、会计职称的人员进行相关知识的培训。', null, null, null, null, null, '3000', '1', null, null, null, '2015-04-27 18:28:14', '1', null, '1');
INSERT INTO `hs_category` VALUES ('24', '22', '咖啡师', '2', '3.00', '2', '1.00', '周末班；晚上班；平常班', '培训熟悉咖啡文化、制作方法及技巧的专业制作咖啡的服务人员', null, '160', '3000', null, '1', '3000', '1', '2015-03-18 19:10:49', '2015-07-10 19:11:01', null, '2015-04-27 18:10:05', '1', null, '2');
INSERT INTO `hs_category` VALUES ('25', '23', '会计从业资格证', '2', null, null, null, '周末班；晚上班；平常班', '针对想取得会计从业资格证的人员进行相关知识的培训。', null, null, null, null, '1', '3000', '1', null, null, null, '2015-04-27 18:10:36', '1', null, '1');
INSERT INTO `hs_category` VALUES ('26', '25', '基础班', '2', '3.00', '2', '1.00', '周末班；晚上班；平常班', '系统、全面的学习会计基础知识，讲解历年考题中出现的相应知识点。', null, '180', '1200', null, null, '3000', '1', '2015-04-15 19:10:57', '2015-06-09 19:11:06', null, '2015-04-27 18:20:23', '1', null, '2');
INSERT INTO `hs_category` VALUES ('27', '25', '强化班', '2', '3.00', '2', '1.00', '周末班；晚上班；平常班', '在了解会计知识的基础上，进一步强化知识点，结合历年考题重点分析。', null, '180', '2000', null, null, '3000', '1', '2015-04-15 19:10:57', '2015-06-09 19:11:06', null, '2015-04-27 18:16:59', '1', null, '2');
INSERT INTO `hs_category` VALUES ('28', '25', '通关班', '2', '3.00', '2', '1.00', '周末班；晚上班；平常班', '重点剖析热门考点，传授答题技巧，全真上机模拟。', null, '180', '2700', null, null, '3000', '1', '2015-04-15 19:10:57', '2015-06-09 19:11:06', null, '2015-04-27 18:17:17', '1', null, '2');
INSERT INTO `hs_category` VALUES ('29', '2', '山东大学', '1', null, null, null, null, '山东大学是一所历史悠久、学科齐全、学术实力雄厚、办学特色鲜明，在国内外具有重要影响的教育部直属重点综合性大学，是国家“211工程”和“985工程”重点建设的高水平大学之一。', null, null, null, null, null, '3000', '1', '2015-05-19 15:28:57', '2015-05-19 15:29:06', null, '2015-05-19 15:28:53', '1', null, '1');
INSERT INTO `hs_category` VALUES ('30', '29', '工商企业管理', '1', '2.50', '1', '1.00', '周末班；晚上班；平常班', '英语1、英语2、英语3、英语4、政治理论、计算机基础、政治经济学、经济学原理、管理学、经济法、高等数学、基础会计学、公共关系学、货币银行学、组织行为学、人力资源管理、市场营销学、生产运作管理、管理信息系统、财务管理学', '文史类', '180', '2200', '600', null, '3000', '1', '2015-05-19 15:39:14', '2015-05-19 15:39:23', null, '2015-05-19 15:50:00', '1', null, '2');
INSERT INTO `hs_category` VALUES ('31', '29', '法律事务', '1', '2.50', '1', '1.00', '周末班；晚上班；平常班', '英语1、英语2、英语3、英语4、政治理论、计算机基础、法理学、宪法学、民事诉讼法、管理学、 经济法、刑事诉讼法、中国法制史、民法总论、刑法总论、民法分论、刑法分论、公司法、行政法。', '文史类', '180', '2200', '600', null, '3000', '1', '2015-05-19 15:39:14', '2015-05-19 15:39:23', null, '2015-05-19 15:50:03', '1', null, '2');
INSERT INTO `hs_category` VALUES ('32', '29', '人力资源管理', '1', '2.50', '1', '1.00', '周末班；晚上班；平常班', '英语1、英语2、英语3、英语4、政治理论、计算机基础、高等数学、政治经济学、管理学、经济法、人力资源管理概论、组织行为学、招聘与筛选、绩效考核、薪酬管理、职业生涯管理、劳动经济学、生产运作管理、雇员流动管理。', '文史类', '180', '2200', '600', null, '3000', '1', '2015-05-19 15:39:14', '2015-05-19 15:39:23', null, '2015-05-19 15:50:06', '1', null, '2');
INSERT INTO `hs_category` VALUES ('33', '3', '山东大学', null, null, null, null, null, '山东大学是一所历史悠久、学科齐全、学术实力雄厚、办学特色鲜明，在国内外具有重要影响的教育部直属重点综合性大学，是国家“211工程”和“985工程”重点建设的高水平大学之一。', null, null, null, null, null, '3000', '1', null, null, null, '2015-05-19 15:52:08', '1', null, '1');
INSERT INTO `hs_category` VALUES ('34', '33', '汉语言文学', '1', '2.50', '1', '1.00', '周末班；晚上班；平常班', '英语1、英语2、英语3、英语4、政治理论、计算机基础、现代汉语、文学概论、中国古代文学、外国文学、中国当代文学、古典小说与传统文化心理、古代汉语、世界华文文学研究、当前文学热点、外国文学文化研究、神韵诗研究、中国现代文学、语言学概论', '文史类', '180', '2000', '600', null, '3000', '1', '2015-05-19 15:39:14', '2015-05-19 15:39:23', null, '2015-05-19 15:53:39', '1', null, '2');
INSERT INTO `hs_category` VALUES ('35', '33', '法学', '1', '2.50', '1', '1.00', '周末班；晚上班；平常班', '英语1、英语2、英语3、英语4、政治理论、计算机基础、中国法制史、宪法学、民法总论、刑法总论、民事诉讼法、民法分论、刑法分论、刑事诉讼法、行政法(含诉讼法)、经济法学、知识产权法、法理学', '法学类', '180', '2000', '600', null, '3000', '1', '2015-05-19 15:39:14', '2015-05-19 15:39:14', null, '2015-05-19 15:53:37', '1', null, '2');
INSERT INTO `hs_category` VALUES ('36', '33', '预防医学', '1', '2.50', '1', '1.00', '周末班；晚上班；平常班', '英语1、英语2、英语3、英语4、政治理论、计算机基础、卫生统计学、流行病学、社会医学、卫生事业管理、妇幼卫生学、职业卫生与职业医学、环境卫生学、营养与食品卫生学、食品理化检验、生物材料检验、空气检验、水质检验、卫生微生物学、卫生法规与监督学', '医学类', '180', '2600', '600', null, '3000', '1', '2015-05-19 15:39:14', '2015-05-19 15:39:14', null, '2015-05-19 16:05:29', '1', null, '2');
INSERT INTO `hs_category` VALUES ('37', '2', '山东理工大学', '1', null, null, null, null, '山东理工大学创建于1956年，坐落在历史悠久的齐文化发祥地——山东省淄博市，是山东省重点建设的理工科大学。', null, null, null, null, null, '3000', '1', '2015-05-19 15:39:14', '2015-05-19 15:39:14', null, '2015-05-19 17:08:15', '1', null, '1');
INSERT INTO `hs_category` VALUES ('39', '37', '供应电技术', '1', '2.50', '1', '1.00', '周末班；晚上班；平常班', '马克思主义基本原理、英语1、信息技术基础、高等数学1、英语2、自动控制原理、数字电子技术、嵌入式系统基础、模拟电子技术、电路分析基础、电力电子技术B、电力系统分析、发电厂电气部分、高电压技术、工厂电气控制技术、电力系统自动装置原理、电子设计初级工程师实训（任选）、专业课程设计、数字电子课程设计、模拟电子课程设计、生产实习', '理工类', '180', '2200', '600', null, '3000', '1', '2015-05-19 15:39:14', '2015-05-19 15:39:14', null, '2015-05-19 16:08:43', '1', null, '2');
INSERT INTO `hs_category` VALUES ('40', '37', '机械设计与制造', '1', '2.50', '1', '1.00', '周末班；晚上班；平常班', '马克思主义基本原理、英语1、信息技术基础、高等数学1、英语2、工程力学B、机械制图B、电工与电子技术B、互换性与技术测量、金属材料及工艺B、机械设计基础B、电气控制技术、机械制造工艺学、液压与气压传动、金属切削机床概论、数控技术B、先进制造技术', '理工类', '180', '2200', '600', null, '3000', '1', '2015-05-19 15:39:14', '2015-05-19 15:39:14', null, '2015-05-19 16:08:55', '1', null, '2');
INSERT INTO `hs_category` VALUES ('41', '3', '山东理工大学', '1', null, null, null, null, '山东理工大学创建于1956年，坐落在历史悠久的齐文化发祥地——山东省淄博市，是山东省重点建设的理工科大学。', null, null, null, null, null, '3000', null, null, null, null, '2015-05-19 17:08:21', '1', null, '1');
INSERT INTO `hs_category` VALUES ('42', '41', '学前教育', '1', '2.50', '1', '1.00', '周末班；晚上班；平常班', '毛泽东思想与中国特色社会主义理论体系概论、大学英语1、大学英语2、现代教育技术、现代教育理论、学前教育心理学、儿童心理健康教育、学前儿童家庭教育、学前游戏论、中外学前比较教育、学前卫生与营养学、学前教育政策与法规、学前语言教育、学前教育管理、学前数学教育、学前艺术与科学教育、学位英语、毕业论文', '教育学类', '180', '2000', '600', null, '3000', '1', '2015-05-19 15:39:14', '2015-05-19 15:39:14', null, '2015-05-19 16:14:59', '1', null, '2');
INSERT INTO `hs_category` VALUES ('43', '41', '法学', '1', '2.50', '1', '1.00', '周末班；晚上班；平常班', '毛泽东思想与中国特色社会主义理论体系概论、大学英语1、大学英语2、法理学专题、物权法、合同法学、侵权行为法、商法学、律师实务、经济法专题、婚姻家庭继承法、证据法、公司法学、劳动与社会保障法学、知识产权法学、国际经济法、国际私法、学位英语、法律案例分析、毕业论文', '法学类', '180', '2000', '600', null, '3000', '1', '2015-05-19 15:39:14', '2015-05-19 15:39:14', null, '2015-05-19 16:15:00', '1', null, '2');
INSERT INTO `hs_category` VALUES ('44', '41', '英语', '1', '2.50', '1', '1.00', '周末班；晚上班；平常班', '毛泽东思想与中国特色社会主义理论体系概论、现代教育技术、现代教育理论、高级英语1、英语语法A、高级英语2、日语1、高级写作、高级英语3、日语2、高级英语视听说、日语3、英语教学法A、英美文学、英语语言学概论、翻译理论与实践、高级英语口译、毕业论文', '文史类', '180', '2000', '600', null, '3000', '1', '2015-05-19 15:39:14', '2015-05-19 15:39:14', null, '2015-05-19 16:15:01', '1', null, '2');
INSERT INTO `hs_category` VALUES ('45', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, '2015-05-19 15:55:04', '1', null, null);

-- ----------------------------
-- Table structure for hs_consume
-- ----------------------------
DROP TABLE IF EXISTS `hs_consume`;
CREATE TABLE `hs_consume` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户表外键',
  `setting_id` int(11) DEFAULT NULL COMMENT '积分设置id',
  `name` varchar(100) DEFAULT NULL,
  `type` int(2) DEFAULT NULL COMMENT '1学历教育、2技能培训、3少儿培训',
  `study_hours` float(4,2) DEFAULT NULL,
  `study_unit` int(2) DEFAULT NULL COMMENT '1学年、2月、3学时',
  `price` double(6,2) DEFAULT NULL COMMENT 'type为1时是单位价格，其他为总价',
  `class_descr` varchar(500) DEFAULT NULL COMMENT '上课的描述',
  `major_descr` varchar(1000) DEFAULT NULL COMMENT '专业描述',
  `subject` varchar(50) DEFAULT NULL COMMENT '大类',
  `exam_fee` int(6) DEFAULT NULL COMMENT '考试费',
  `tuition_fee` int(6) DEFAULT NULL COMMENT '学费',
  `book_fee` int(6) DEFAULT NULL COMMENT '书本费',
  `pay_method` int(2) DEFAULT NULL COMMENT '付费方式。1在线支付、2线下支付',
  `pay_money` int(6) DEFAULT NULL COMMENT '实际支付的金额（因为积分原因，最后支付的金额可能会出现小数）',
  `start_date` datetime DEFAULT NULL COMMENT '课程开始时间',
  `end_date` datetime DEFAULT NULL COMMENT '课程结束时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL,
  `deleted` int(2) DEFAULT '1' COMMENT '是否删除：1、未删除，2、已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_consume
-- ----------------------------

-- ----------------------------
-- Table structure for hs_integral
-- ----------------------------
DROP TABLE IF EXISTS `hs_integral`;
CREATE TABLE `hs_integral` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `setting_id` int(11) DEFAULT NULL COMMENT '积分设置id',
  `source_type` int(2) DEFAULT NULL COMMENT '1设置签到、2专业购买获得、3推荐获得、4金额奖励、5注册',
  `source_id` int(11) DEFAULT NULL COMMENT '来源关联表id',
  `target_type` int(2) DEFAULT NULL COMMENT '1兑换商品、2购买课程',
  `target_id` int(11) DEFAULT NULL COMMENT '积分兑换物品表外键',
  `integral_val` int(6) DEFAULT NULL,
  `type` int(2) DEFAULT NULL COMMENT '1获得的积分、2消费的积分',
  `create_time` datetime DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted` int(2) DEFAULT '1' COMMENT '删除状态，1、未删除，2、已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_integral
-- ----------------------------

-- ----------------------------
-- Table structure for hs_setting
-- ----------------------------
DROP TABLE IF EXISTS `hs_setting`;
CREATE TABLE `hs_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applied` int(2) DEFAULT '2' COMMENT '是否是当前生效的配置。1、表示生效，2、无效',
  `itgl_sign_val` int(4) DEFAULT NULL COMMENT '签到积分',
  `itgl_sign_switch` int(2) DEFAULT NULL COMMENT '是否开启签到获取积分。1、开启，2、关闭',
  `itgl_rcmd_val` int(4) DEFAULT NULL COMMENT '推荐获得积分',
  `itgl_rcmd_switch` int(2) DEFAULT NULL COMMENT '是否开启推荐获取积分。1、开启，2、关闭',
  `itgl_exchange` int(4) DEFAULT NULL COMMENT 'n个积分兑换1元',
  `category_version` int(11) DEFAULT '1' COMMENT '课程相关信息变动，版本号累加，从1开始',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(2) DEFAULT '1' COMMENT '是否删除、1、未删除，2、已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_setting
-- ----------------------------

-- ----------------------------
-- Table structure for sys_message
-- ----------------------------
DROP TABLE IF EXISTS `sys_message`;
CREATE TABLE `sys_message` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `datetime` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `deleted` int(2) DEFAULT NULL,
  `sys_messagecol` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sys_message
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(15) COLLATE utf8_bin DEFAULT NULL COMMENT '用户名（手机号），唯一',
  `passwd` varchar(15) COLLATE utf8_bin DEFAULT NULL COMMENT '登录密码（加密）',
  `status` int(2) unsigned NOT NULL DEFAULT '1' COMMENT '状态：1，激活；2，锁定',
  `deleted` int(2) DEFAULT '1' COMMENT '删除状态，1、未删除；2、删除；',
  `createtime` timestamp NULL DEFAULT NULL,
  `online` int(2) DEFAULT '1' COMMENT '用户是否已经登录，1：未登录，2：登录',
  `deskey` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '加密解密key',
  `availabletime` int(8) DEFAULT '0' COMMENT '购买学习时长',
  `remaintime` int(8) DEFAULT '0' COMMENT '已用学习时长',
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '真实姓名',
  `idcard` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '身份证号',
  `age` int(3) DEFAULT NULL COMMENT '年龄',
  `sex` int(2) DEFAULT '1' COMMENT '1男，2女',
  `updatetime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `recommend_phone` varchar(15) COLLATE utf8_bin DEFAULT NULL COMMENT '推荐人手机号',
  `system` int(11) DEFAULT NULL COMMENT '1、英语App，2、青岛司法局App，3、托普报名服务系统',
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_UNIQUE` (`phone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '13583282090', 'K0SMaeFtDg', '1', '1', '2015-04-01 15:10:41', '1', '6,2,9,', '110', '94', 'paulliu', '370785198911246514', null, '1', '2015-05-20 20:38:57', '', '1');
INSERT INTO `sys_user` VALUES ('2', '13306530926', 'K0SMaeFtDg', '1', '1', '2015-05-20 20:40:24', '1', '3,2,5', '0', '0', null, null, null, '1', '2015-05-20 20:40:22', null, '1');
INSERT INTO `sys_user` VALUES ('3', '15335320821', 'K0SMaeFtDg', '1', '1', null, '1', '2,8,3,', '0', '0', null, null, null, '1', '2015-05-20 20:40:52', null, '1');
INSERT INTO `sys_user` VALUES ('4', '15854207636', 'K0SMaeFtDg', '1', '1', null, '1', '6,3,2,', '0', '0', null, null, null, '1', '2015-05-20 21:27:16', null, '1');
INSERT INTO `sys_user` VALUES ('5', '18563917990', 'K0SMaeFtDg', '1', '1', null, '1', null, '0', '0', null, null, null, '1', '2015-05-20 21:39:18', null, '1');
INSERT INTO `sys_user` VALUES ('6', '13864809299', 'K0SMaeFtDg', '1', '1', null, '1', '0,4,6,', '0', '0', null, null, null, '1', '2015-05-20 21:39:19', null, '1');

-- ----------------------------
-- Table structure for sys_verifycode
-- ----------------------------
DROP TABLE IF EXISTS `sys_verifycode`;
CREATE TABLE `sys_verifycode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(45) CHARACTER SET utf8 NOT NULL COMMENT '手机号',
  `verify_code` varchar(45) CHARACTER SET utf8 NOT NULL COMMENT '短信验证码',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '短信验证码发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sys_verifycode
-- ----------------------------
INSERT INTO `sys_verifycode` VALUES ('1', '15335320821', '691254', '2015-05-19 19:23:10');
INSERT INTO `sys_verifycode` VALUES ('2', '15335320821', '597381', '2015-05-19 19:23:56');
INSERT INTO `sys_verifycode` VALUES ('3', '15335320821', '692845', '2015-05-20 08:52:35');
