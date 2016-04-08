/*
Navicat MySQL Data Transfer

Source Server         : 2----99
Source Server Version : 50173
Source Host           : 112.53.65.99:3306
Source Database       : top_jiaowu

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2015-08-04 15:26:46
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
  `source` varchar(45) DEFAULT NULL COMMENT '新闻来源：1、政府，2、学校',
  `system` varchar(45) DEFAULT NULL COMMENT '所属板块：1,继续教育，2、会计从业，3、乐学',
  `type` int(11) NOT NULL COMMENT '新闻类别：1、通知，2、新闻',
  `category` varchar(50) DEFAULT NULL COMMENT '针对乐学系统，分为：电工，咖啡，面点，摄影',
  `abstract` varchar(255) DEFAULT NULL COMMENT '摘要',
  `content` varchar(2000) NOT NULL COMMENT '新闻内容',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

-- ----------------------------
-- Records of ass_news
-- ----------------------------
INSERT INTO `ass_news` VALUES ('1', '今年青岛将培训3000名“金蓝领”', '2015-08-03 13:36:09', '1', '3', '1', '0002', '市人社局昨天公布了今年青岛市“金蓝领”培训项目计划', '本报讯 （青岛财经日报/青岛财经网(博客,微博)记者 封满楼） 市人社局昨天公布了今年青岛市“金蓝领”培训项目计划，今年我市将通过42个“金蓝领”培训基地培训“金蓝领”3000人，涉及船舶海工等10个重点行业的120个培训工种。我市要求，培训后未参加全市统一鉴定的，不予颁发职业资格证书和兑现培训补贴。', '\0', '', null, null, null, null, null);
INSERT INTO `ass_news` VALUES ('2', '把好“三关”做好职业技能培训', '2015-08-03 14:47:08', '1', '3', '1', '0003', '石城县设立劳动保障事务所', '今年来，江西省石城县就业局严格按照上级文件要求，在工业园设立劳动保障事务所，就近服务方便企业技能培训的申请，优化经办流程。在此基础上，强化内功修炼，明确每个工作环节的责任，实行责任备案制度，把好三关做好职业技能培训。', '\0', '', null, null, null, null, null);
INSERT INTO `ass_news` VALUES ('3', '新县开展技能培训,助力脱贫致富', '2015-08-03 14:51:31', '1', '3', '1', '0004', '新县开班第二期新型农民骨干培训班', '近日，在新县开办的第二期新型农民骨干培训班上，养殖合作社社员聂永琴正聚精会神听课，不时记下笔记。“这个班不仅讲养殖技术，更重要的是传授管理与市场运作经验，很对我们农民胃口。”她说。', '\0', '', null, null, null, null, null);
INSERT INTO `ass_news` VALUES ('4', '学子福音！银影职业艺术教育机构扶贫助学免费培训', '2015-08-03 14:53:51', '1', '3', '1', '0005', '银影职业艺术教育机构扶贫助学全免费培训', '搜狐网讯】银影职业艺术教育机构扶贫助学全免费培训，给广大学子送福音!一份迟来的爱!2015年【银影职业艺术教育机构】与【黑龙江省民政职业技术中等专业学校】联合办学，现面向黑龙江省招收年满16岁以上，具有初中学历的适龄“孤儿”及“家庭困难、事实无依”的适龄青少年进行免费培训。', '\0', '', null, null, null, null, null);
INSERT INTO `ass_news` VALUES ('5', '大客车驾驶人职业教育试点深入推进', '2015-08-03 14:55:19', '1', '3', '1', '0002', '大客车驾驶人职业教育试点工作已在云南、江苏、安徽三省深入开展', '在交通运输部的牵头下，大客车驾驶人职业教育试点工作已在云南、江苏、安徽三省深入开展。伴随着试点省份职业院校大客车驾驶员专业、“大客车司机班”的招生和教学，试点省份已为全国大客车驾驶人职业教育探索出一些宝贵的经验。', '\0', '', null, null, null, null, null);
INSERT INTO `ass_news` VALUES ('6', '只做线上的IT职业教育要怎么赚钱？', '2015-08-03 14:56:34', '1', '3', '1', '0003', '线上的IT职业教育要怎么赚钱', '很多公司都想做O2O，但更多还只是把线上作为展示或流量导入，而并没有真正去变革原有的核心模式。在接触的IT培训的同行里，提到业界的排名，北大青鸟和达内科技（TEDU.NASDAQ）的名列前茅完全没有争议。', '\0', '', null, null, null, null, null);
INSERT INTO `ass_news` VALUES ('7', '郫县2015年相关职业技能培训班开班', '2015-08-03 14:58:20', '1', '3', '1', '0004', '郫县失业人员就业培训暨第一批次职业技能培训班正式开班', '7月24日，郫县失业人员就业培训暨第一批次职业技能培训班正式开班。此次培训在郫筒、犀浦、红光、德源和安德镇设5个培训点，共开设7个培训班，培训专业包括电工、计算机操作员、会计、中式烹调师、育婴师，参训失业人员达420人。', '\0', '', null, null, null, null, null);
INSERT INTO `ass_news` VALUES ('8', '职业培训和技能鉴定可申领补助', '2015-08-03 14:59:21', '1', '3', '1', '0005', '我省各级公共就业人才服务机构办理求职、失业、就业等实名制登记的城乡劳动者', '福州新闻网7月21日讯（福州日报记者 张铁国）在我省各级公共就业人才服务机构办理求职、失业、就业等实名制登记的城乡劳动者（含外省来闽务工人员），全日制普通高等学校、中高职学校毕业年度学生（只享受职业技能鉴定补贴），组织签订1年以上期限劳动合同并缴纳基本养老保险费员工培训的企业，均可享受并申领相关补助。近日，省人社厅和省财政厅联合下发通知，职业培训和技能鉴定的个人和企业可申领相关资金补助。', '\0', '', null, null, null, null, null);
INSERT INTO `ass_news` VALUES ('9', '中等职业教育免学费政策调整 韶关逾万名技校生受益', '2015-08-03 15:00:59', '1', '3', '1', '0002', '我市将对中等职业教育免学费政策和国家助学金政策进行调整完善', '《关于调整中等职业教育免学费政策的通知》和《关于调整普通高中和中职教育国家助学金政策的通知》，我市将对中等职业教育免学费政策和国家助学金政策进行调整完善，全市因此受益的技工院校学生超过上万人。', '\0', '', null, null, null, null, null);
INSERT INTO `ass_news` VALUES ('10', '教育部关于深入推进职业教育集团化办学的意见', '2015-08-03 15:02:27', '1', '3', '1', '0003', '教育部关于深入推进职业教育集团化办学的意见', '为贯彻落实全国职业教育工作会议精神和《国务院关于加快发展现代职业教育的决定》（国发〔2014〕19号），鼓励多元主体组建职业教育集团，深化职业教育办学体制机制改革，推进现代职业教育体系建设，现就深入推进职业教育集团化办学提出以下意见。', '\0', '', null, null, null, null, null);
INSERT INTO `ass_news` VALUES ('11', '大力推进职业教育 助力福建产业发展', '2015-08-03 15:04:08', '1', '3', '1', '0004', '省长苏树林23日主持召开座谈会，分别与企业家代表和职业院校负责人深入交流，共商加快福建职业教育发展之计。', '当前我省职业教育发展的瓶颈在哪里？院校专业设置是否科学？校企合作有哪些行之有效的模式？围绕这些问题，省长苏树林23日主持召开座谈会，分别与企业家代表和职业院校负责人深入交流，共商加快福建职业教育发展之计。', '\0', '', null, null, null, null, null);

-- ----------------------------
-- Table structure for course_course
-- ----------------------------
DROP TABLE IF EXISTS `course_course`;
CREATE TABLE `course_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(55) DEFAULT NULL COMMENT '课程名称',
  `professional_id` int(11) NOT NULL COMMENT '专业主键  id',
  `classHour` int(11) DEFAULT NULL COMMENT '标准课时',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_course
-- ----------------------------
INSERT INTO `course_course` VALUES ('1', '00010001', '摄影师', '1', '170', '\0', '', '2015-07-30 00:30:54', null, '6', null, null);
INSERT INTO `course_course` VALUES ('2', '00010002', '咖啡师', '2', '45', '\0', '', '2015-07-30 00:30:54', null, '6', null, null);
INSERT INTO `course_course` VALUES ('3', '00010003', '多媒体作品制作员', '3', '40', '\0', '', '2015-07-30 00:30:54', null, '6', null, null);
INSERT INTO `course_course` VALUES ('4', '00010004', '美容师', '4', '40', '\0', '', '2015-07-30 00:30:54', null, '6', null, null);
INSERT INTO `course_course` VALUES ('5', '00010005', '育婴师', '5', '440', '\0', '', '2015-07-30 00:30:54', null, '6', null, null);
INSERT INTO `course_course` VALUES ('6', '00010006', '维修电工', '6', null, '\0', '', '2015-07-30 00:30:54', null, '6', null, null);
INSERT INTO `course_course` VALUES ('7', '00010007', '保健按摩师', '7', null, '\0', '', '2015-07-30 00:30:54', null, '6', null, null);
INSERT INTO `course_course` VALUES ('8', '00010008', '中式面点师（初级）', '8', null, '\0', '', '2015-07-30 00:30:54', null, '6', null, null);
INSERT INTO `course_course` VALUES ('9', '00010009', '中式面点师（中级）', '9', null, '\0', '', '2015-07-30 00:30:54', null, '6', null, null);
INSERT INTO `course_course` VALUES ('10', '00010010', '中式烹调师', '10', null, '\0', '', '2015-07-30 00:30:54', null, '6', null, null);
INSERT INTO `course_course` VALUES ('11', '00010011', '汽车维修', '11', null, '\0', '', '2015-07-30 00:30:54', null, '6', null, null);
INSERT INTO `course_course` VALUES ('12', '00010012', '计算机操作员', '12', null, '\0', '', '2015-07-30 00:30:54', null, '6', null, null);
INSERT INTO `course_course` VALUES ('13', '00010013', '电焊工', '13', null, '\0', '', '2015-07-30 00:30:54', null, '6', null, null);

-- ----------------------------
-- Table structure for course_curriculum
-- ----------------------------
DROP TABLE IF EXISTS `course_curriculum`;
CREATE TABLE `course_curriculum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程表',
  `periodTime` varchar(55) DEFAULT NULL COMMENT '期次',
  `name` varchar(55) DEFAULT NULL COMMENT '课程表名称',
  `year_id` int(11) DEFAULT NULL COMMENT '课程表年度外键',
  `school_id` int(11) DEFAULT NULL COMMENT '学校外键',
  `course_id` int(11) DEFAULT NULL,
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_curriculum
-- ----------------------------
INSERT INTO `course_curriculum` VALUES ('7', '4', '中式烹调师2015年度第4期课程表', '2', '1', '10', '\0', '', '2015-07-30 02:18:59', null, '6', null, null);
INSERT INTO `course_curriculum` VALUES ('8', '6', '育婴师2015年度第6期课程表', '2', '1', '5', '\0', '', '2015-07-30 02:18:59', null, '6', null, null);
INSERT INTO `course_curriculum` VALUES ('9', '6', '多媒体作品制作员2015年度第6期课程表', '2', '1', '3', '\0', '', '2015-07-30 02:18:59', null, '6', null, null);
INSERT INTO `course_curriculum` VALUES ('10', '5', '中式面点师（中级）2015年度第5期课程表', '2', '1', '9', '\0', '', '2015-07-30 02:18:59', null, '6', null, null);
INSERT INTO `course_curriculum` VALUES ('11', '6', '中式面点师（中级）2015年度第6期课程表', '2', '1', '9', '\0', '', '2015-07-30 02:18:59', null, '6', null, null);
INSERT INTO `course_curriculum` VALUES ('12', '5', '咖啡师2015年度第5期课程表', '2', '1', '2', '\0', '', '2015-07-30 02:18:59', null, '6', null, null);
INSERT INTO `course_curriculum` VALUES ('13', '5', '摄影师2015年度第5期课程表', '2', '1', '1', '\0', '', '2015-07-30 02:18:59', null, '6', null, null);

-- ----------------------------
-- Table structure for course_curriculumdetail
-- ----------------------------
DROP TABLE IF EXISTS `course_curriculumdetail`;
CREATE TABLE `course_curriculumdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程表明细',
  `curriculum_id` int(11) DEFAULT NULL COMMENT '课程表外键',
  `date` datetime DEFAULT NULL COMMENT '课程日期',
  `content` text COMMENT '课程内容',
  `beginTime` datetime DEFAULT NULL COMMENT '上课时间',
  `endTime` datetime DEFAULT NULL COMMENT '下课时间',
  `classroom_id` int(11) DEFAULT NULL COMMENT '教室主键',
  `teacher_id` int(11) DEFAULT NULL COMMENT '授课教师外键',
  `headteacher_id` int(11) DEFAULT NULL COMMENT '班主任id',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_curriculumdetail
-- ----------------------------
INSERT INTO `course_curriculumdetail` VALUES ('8', '7', '2015-07-01 00:00:00', '中式烹调师', '2015-07-01 18:00:00', '2015-07-01 20:00:00', '11', '791', '803', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('9', '7', '2015-07-02 00:00:00', '中式烹调师', '2015-07-02 18:00:00', '2015-07-02 20:00:00', '11', '791', '803', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('10', '7', '2015-07-08 00:00:00', '中式烹调师', '2015-07-08 18:00:00', '2015-07-08 20:00:00', '11', '791', '803', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('11', '7', '2015-07-09 00:00:00', '中式烹调师', '2015-07-09 18:00:00', '2015-07-09 20:00:00', '11', '791', '803', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('12', '7', '2015-07-15 00:00:00', '中式烹调师', '2015-07-15 18:00:00', '2015-07-15 20:00:00', '11', '791', '803', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('13', '7', '2015-07-16 00:00:00', '中式烹调师', '2015-07-16 18:00:00', '2015-07-16 20:00:00', '11', '791', '803', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('14', '7', '2015-07-22 00:00:00', '中式烹调师', '2015-07-22 18:00:00', '2015-07-22 20:00:00', '11', '791', '803', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('15', '7', '2015-07-23 00:00:00', '中式烹调师', '2015-07-23 18:00:00', '2015-07-23 20:00:00', '11', '791', '803', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('16', '7', '2015-07-29 00:00:00', '中式烹调师', '2015-07-29 18:00:00', '2015-07-29 20:00:00', '11', '791', '803', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('17', '7', '2015-07-30 00:00:00', '中式烹调师', '2015-07-30 18:00:00', '2015-07-30 20:00:00', '11', '791', '803', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('18', '7', '2015-08-05 00:00:00', '中式烹调师', '2015-08-05 18:00:00', '2015-08-05 20:00:00', '11', '791', '803', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('19', '7', '2015-08-06 00:00:00', '中式烹调师', '2015-08-06 18:00:00', '2015-08-06 20:00:00', '11', '791', '803', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('20', '7', '2015-08-12 00:00:00', '中式烹调师', '2015-08-12 18:00:00', '2015-08-12 20:00:00', '11', '791', '803', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('21', '7', '2015-08-13 00:00:00', '中式烹调师', '2015-08-13 18:00:00', '2015-08-13 20:00:00', '11', '791', '803', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('22', '8', '2015-07-08 00:00:00', '育婴师', '2015-07-08 18:00:00', '2015-07-08 20:00:00', '4', '784', '799', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('23', '8', '2015-07-10 00:00:00', '育婴师', '2015-07-10 18:00:00', '2015-07-10 20:00:00', '4', '784', '799', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('24', '8', '2015-07-13 00:00:00', '育婴师', '2015-07-13 18:00:00', '2015-07-13 20:00:00', '4', '784', '799', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('25', '8', '2015-07-15 00:00:00', '育婴师', '2015-07-15 18:00:00', '2015-07-15 20:00:00', '4', '784', '799', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('26', '8', '2015-07-17 00:00:00', '育婴师', '2015-07-17 18:00:00', '2015-07-17 20:00:00', '4', '784', '799', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('27', '8', '2015-07-20 00:00:00', '育婴师', '2015-07-20 18:00:00', '2015-07-20 20:00:00', '4', '784', '799', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('28', '8', '2015-07-22 00:00:00', '育婴师', '2015-07-22 18:00:00', '2015-07-22 20:00:00', '4', '784', '799', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('29', '8', '2015-07-24 00:00:00', '育婴师', '2015-07-24 18:00:00', '2015-07-24 20:00:00', '4', '784', '799', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('30', '8', '2015-07-27 00:00:00', '育婴师', '2015-07-27 18:00:00', '2015-07-27 20:00:00', '4', '784', '799', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('31', '8', '2015-07-29 00:00:00', '育婴师', '2015-07-29 18:00:00', '2015-07-29 20:00:00', '4', '784', '799', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('32', '8', '2015-07-31 00:00:00', '育婴师', '2015-07-31 18:00:00', '2015-07-31 20:00:00', '4', '784', '799', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('33', '8', '2015-08-03 00:00:00', '育婴师', '2015-08-03 18:00:00', '2015-08-03 20:00:00', '4', '784', '799', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('34', '8', '2015-08-05 00:00:00', '育婴师', '2015-08-05 18:00:00', '2015-08-05 20:00:00', '4', '784', '799', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('35', '8', '2015-08-07 00:00:00', '育婴师', '2015-08-07 18:00:00', '2015-08-07 20:00:00', '4', '784', '799', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('36', '8', '2015-08-10 00:00:00', '育婴师', '2015-08-10 18:00:00', '2015-08-10 20:00:00', '4', '784', '799', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('37', '8', '2015-08-12 00:00:00', '育婴师', '2015-08-12 18:00:00', '2015-08-12 20:00:00', '4', '784', '799', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('38', '8', '2015-08-14 00:00:00', '育婴师', '2015-08-14 18:00:00', '2015-08-14 20:00:00', '4', '784', '799', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('39', '8', '2015-08-17 00:00:00', '育婴师', '2015-08-17 18:00:00', '2015-08-17 20:00:00', '4', '784', '799', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('40', '9', '2015-06-29 00:00:00', '多媒体作品制作员', '2015-06-29 13:30:00', '2015-06-29 15:30:00', '3', '789', '801', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('41', '9', '2015-07-01 00:00:00', '多媒体作品制作员', '2015-07-01 13:30:00', '2015-07-01 15:30:00', '3', '789', '801', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('42', '9', '2015-07-06 00:00:00', '多媒体作品制作员', '2015-07-06 13:30:00', '2015-07-06 15:30:00', '3', '789', '801', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('43', '9', '2015-07-08 00:00:00', '多媒体作品制作员', '2015-07-08 13:30:00', '2015-07-08 15:30:00', '3', '789', '801', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('44', '9', '2015-07-13 00:00:00', '多媒体作品制作员', '2015-07-13 13:30:00', '2015-07-13 15:30:00', '3', '789', '801', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('45', '9', '2015-07-15 00:00:00', '多媒体作品制作员', '2015-07-15 13:30:00', '2015-07-15 15:30:00', '3', '789', '801', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('46', '9', '2015-07-20 00:00:00', '多媒体作品制作员', '2015-07-20 13:30:00', '2015-07-20 15:30:00', '3', '789', '801', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('47', '9', '2015-07-22 00:00:00', '多媒体作品制作员', '2015-07-22 13:30:00', '2015-07-22 15:30:00', '3', '789', '801', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('48', '9', '2015-07-27 00:00:00', '多媒体作品制作员', '2015-07-27 13:30:00', '2015-07-27 15:30:00', '3', '789', '801', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('49', '9', '2015-07-29 00:00:00', '多媒体作品制作员', '2015-07-29 13:30:00', '2015-07-29 15:30:00', '3', '789', '801', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('50', '9', '2015-08-03 00:00:00', '多媒体作品制作员', '2015-08-03 13:30:00', '2015-08-03 15:30:00', '3', '789', '801', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('51', '9', '2015-08-05 00:00:00', '多媒体作品制作员', '2015-08-05 13:30:00', '2015-08-05 15:30:00', '3', '789', '801', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('52', '9', '2015-08-10 00:00:00', '多媒体作品制作员', '2015-08-10 13:30:00', '2015-08-10 15:30:00', '3', '789', '801', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('53', '9', '2015-08-12 00:00:00', '多媒体作品制作员', '2015-08-12 13:30:00', '2015-08-12 15:30:00', '3', '789', '801', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('54', '9', '2015-08-17 00:00:00', '多媒体作品制作员', '2015-08-17 13:30:00', '2015-08-17 15:30:00', '3', '789', '801', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('55', '9', '2015-08-19 00:00:00', '多媒体作品制作员', '2015-08-19 13:30:00', '2015-08-19 15:30:00', '3', '789', '801', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('56', '9', '2015-08-24 00:00:00', '多媒体作品制作员', '2015-08-24 13:30:00', '2015-08-24 15:30:00', '3', '789', '801', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('57', '9', '2015-08-26 00:00:00', '多媒体作品制作员', '2015-08-26 13:30:00', '2015-08-26 15:30:00', '3', '789', '801', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('58', '9', '2015-08-28 00:00:00', '多媒体作品制作员', '2015-08-28 13:30:00', '2015-08-28 15:30:00', '3', '789', '801', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('59', '9', '2015-08-31 00:00:00', '多媒体作品制作员', '2015-08-31 13:30:00', '2015-08-31 15:30:00', '3', '789', '801', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('60', '9', '2015-09-02 00:00:00', '多媒体作品制作员', '2015-09-02 13:30:00', '2015-09-02 15:30:00', '3', '789', '801', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('61', '9', '2015-09-07 00:00:00', '多媒体作品制作员', '2015-09-07 13:30:00', '2015-09-07 15:30:00', '3', '789', '801', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('62', '9', '2015-09-09 00:00:00', '多媒体作品制作员', '2015-09-09 13:30:00', '2015-09-09 15:30:00', '3', '789', '801', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('63', '9', '2015-09-11 00:00:00', '多媒体作品制作员', '2015-09-11 13:30:00', '2015-09-11 15:30:00', '3', '789', '801', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('64', '9', '2015-09-14 00:00:00', '多媒体作品制作员', '2015-09-14 13:30:00', '2015-09-14 15:30:00', '3', '789', '801', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('65', '9', '2015-09-16 00:00:00', '多媒体作品制作员', '2015-09-16 13:30:00', '2015-09-16 15:30:00', '3', '789', '801', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('66', '10', '2015-06-25 00:00:00', '中式面点师（中级）', '2015-06-25 18:00:00', '2015-06-25 20:00:00', '12', '788', '802', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('67', '10', '2015-06-26 00:00:00', '中式面点师（中级）', '2015-06-26 18:00:00', '2015-06-26 20:00:00', '12', '788', '802', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('68', '10', '2015-07-01 00:00:00', '中式面点师（中级）', '2015-07-01 18:00:00', '2015-07-01 20:00:00', '12', '788', '802', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('69', '10', '2015-07-03 00:00:00', '中式面点师（中级）', '2015-07-03 18:00:00', '2015-07-03 20:00:00', '12', '788', '802', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('70', '10', '2015-08-03 00:00:00', '中式面点师（中级）', '2015-08-03 16:00:00', '2015-08-03 18:00:00', '12', '788', '802', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('71', '10', '2015-07-30 00:00:00', '中式面点师（中级）', '2015-07-10 16:00:00', '2015-07-10 18:30:00', '12', '788', '802', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('72', '10', '2015-07-30 00:00:00', '中式面点师（中级）', '2015-07-15 12:00:00', '2015-07-15 13:00:00', '12', '788', '802', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('73', '10', '2015-07-30 00:00:00', '中式面点师（中级）', '2015-07-17 18:00:00', '2015-07-17 20:00:00', '12', '788', '802', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('74', '10', '2015-07-22 00:00:00', '中式面点师（中级）', '2015-07-22 18:00:00', '2015-07-22 20:00:00', '12', '788', '802', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('75', '10', '2015-07-24 00:00:00', '中式面点师（中级）', '2015-07-24 18:00:00', '2015-07-24 20:00:00', '12', '788', '802', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('76', '10', '2015-07-29 00:00:00', '中式面点师（中级）', '2015-07-29 18:00:00', '2015-07-29 20:00:00', '12', '788', '802', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('77', '10', '2015-07-31 00:00:00', '中式面点师（中级）', '2015-07-31 18:00:00', '2015-07-31 20:00:00', '12', '788', '802', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('78', '10', '2015-08-05 00:00:00', '中式面点师（中级）', '2015-08-05 18:00:00', '2015-08-05 20:00:00', '12', '788', '802', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('79', '10', '2015-08-07 00:00:00', '中式面点师（中级）', '2015-08-07 18:00:00', '2015-08-07 20:00:00', '12', '788', '802', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('80', '10', '2015-08-12 00:00:00', '中式面点师（中级）', '2015-08-12 18:00:00', '2015-08-12 20:00:00', '12', '788', '802', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('81', '10', '2015-08-14 00:00:00', '中式面点师（中级）', '2015-08-14 18:00:00', '2015-08-14 20:00:00', '12', '788', '802', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('82', '11', '2015-06-27 00:00:00', '中式面点师（中级）', '2015-06-27 08:00:00', '2015-06-27 12:00:00', '12', '788', '802', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('83', '11', '2015-07-04 00:00:00', '中式面点师（中级）', '2015-07-04 08:00:00', '2015-07-04 12:00:00', '12', '788', '802', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('84', '11', '2015-07-11 00:00:00', '中式面点师（中级）', '2015-07-11 08:00:00', '2015-07-11 12:00:00', '12', '788', '802', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('85', '11', '2015-07-18 00:00:00', '中式面点师（中级）', '2015-07-18 08:00:00', '2015-07-18 12:00:00', '12', '788', '802', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('86', '11', '2015-07-25 00:00:00', '中式面点师（中级）', '2015-07-25 08:00:00', '2015-07-25 12:00:00', '12', '788', '802', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('87', '11', '2015-08-01 00:00:00', '中式面点师（中级）', '2015-08-01 08:00:00', '2015-08-01 12:00:00', '12', '788', '802', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('88', '11', '2015-08-08 00:00:00', '中式面点师（中级）', '2015-08-08 08:00:00', '2015-08-08 12:00:00', '12', '788', '802', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('89', '11', '2015-08-15 00:00:00', '中式面点师（中级）', '2015-08-15 08:00:00', '2015-08-15 12:00:00', '12', '788', '802', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('90', '12', '2015-08-03 00:00:00', '咖啡师', '2015-08-03 16:20:00', '2015-08-03 18:30:00', '2', '795', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('91', '12', '2015-07-10 00:00:00', '咖啡师', '2015-07-10 14:00:00', '2015-07-10 16:30:00', '2', '795', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('92', '12', '2015-07-13 00:00:00', '咖啡师', '2015-07-13 14:00:00', '2015-07-13 16:30:00', '2', null, '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('93', '12', '2015-07-15 00:00:00', '咖啡师', '2015-07-15 14:00:00', '2015-07-15 16:30:00', '2', null, '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('94', '12', '2015-07-17 00:00:00', '咖啡师', '2015-07-17 14:00:00', '2015-07-17 16:30:00', '2', null, '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('95', '12', '2015-07-20 00:00:00', '咖啡师', '2015-07-20 14:00:00', '2015-07-20 16:30:00', '2', null, '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('96', '12', '2015-07-22 00:00:00', '咖啡师', '2015-07-22 14:00:00', '2015-07-22 16:30:00', '2', null, '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('97', '12', '2015-07-24 00:00:00', '咖啡师', '2015-07-24 14:00:00', '2015-07-24 16:30:00', '2', null, '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('98', '12', '2015-07-27 00:00:00', '咖啡师', '2015-07-27 14:00:00', '2015-07-27 16:30:00', '2', null, '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('99', '12', '2015-07-29 00:00:00', '咖啡师', '2015-07-29 14:00:00', '2015-07-29 16:30:00', '2', '795', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('100', '12', '2015-07-31 00:00:00', '咖啡师', '2015-07-31 14:00:00', '2015-07-31 16:30:00', '2', '795', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('101', '12', '2015-08-03 00:00:00', '咖啡师', '2015-08-03 14:00:00', '2015-08-03 16:30:00', '2', '795', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('102', '12', '2015-08-05 00:00:00', '咖啡师', '2015-08-05 14:00:00', '2015-08-05 16:30:00', '2', '795', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('103', '12', '2015-08-07 00:00:00', '咖啡师', '2015-08-07 14:00:00', '2015-08-07 16:30:00', '2', null, '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('104', '12', '2015-08-10 00:00:00', '咖啡师', '2015-08-10 14:00:00', '2015-08-10 16:30:00', '2', null, '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('105', '12', '2015-08-12 00:00:00', '咖啡师', '2015-08-12 14:00:00', '2015-08-12 16:30:00', '2', null, '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('106', '13', '2015-07-31 00:00:00', '摄影师', '2015-07-31 14:00:00', '2015-07-31 20:00:00', '1', '785', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('107', '13', '2015-07-22 00:00:00', '摄影师', '2015-07-22 15:00:00', '2015-07-22 17:00:00', '1', '785', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('108', '13', '2015-07-24 00:00:00', '摄影师', '2015-07-24 15:00:00', '2015-07-24 17:00:00', '1', '785', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('109', '13', '2015-07-27 00:00:00', '摄影师', '2015-07-27 15:00:00', '2015-07-27 17:00:00', '1', '785', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('110', '13', '2015-07-29 00:00:00', '摄影师', '2015-07-29 15:00:00', '2015-07-29 17:00:00', '1', '785', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('111', '13', '2015-08-02 00:00:00', '摄影师', '2015-08-02 15:00:00', '2015-08-31 17:00:00', '1', '785', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('112', '13', '2015-08-03 00:00:00', '摄影师', '2015-07-31 15:00:00', '2015-07-31 17:00:00', '1', '785', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('113', '13', '2015-08-05 00:00:00', '摄影师', '2015-08-05 15:00:00', '2015-08-05 17:00:00', '1', '785', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('114', '13', '2015-08-07 00:00:00', '摄影师', '2015-08-07 15:00:00', '2015-08-07 17:00:00', '1', '785', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('115', '13', '2015-08-10 00:00:00', '摄影师', '2015-08-10 15:00:00', '2015-08-10 17:00:00', '1', '785', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('116', '13', '2015-08-12 00:00:00', '摄影师', '2015-08-12 15:00:00', '2015-08-12 17:00:00', '1', '785', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('117', '13', '2015-08-14 00:00:00', '摄影师', '2015-08-14 15:00:00', '2015-08-14 17:00:00', '1', '785', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('118', '13', '2015-08-17 00:00:00', '摄影师', '2015-08-17 15:00:00', '2015-08-17 17:00:00', '1', '785', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('119', '13', '2015-08-19 00:00:00', '摄影师', '2015-08-19 15:00:00', '2015-08-19 17:00:00', '1', '785', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('120', '13', '2015-08-21 00:00:00', '摄影师', '2015-08-21 15:00:00', '2015-08-21 17:00:00', '1', '785', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('121', '13', '2015-08-24 00:00:00', '摄影师', '2015-08-24 15:00:00', '2015-08-24 17:00:00', '1', '785', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('122', '13', '2015-08-26 00:00:00', '摄影师', '2015-08-26 15:00:00', '2015-08-26 17:00:00', '1', '785', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('123', '13', '2015-08-28 00:00:00', '摄影师', '2015-08-28 15:00:00', '2015-08-28 17:00:00', '1', '785', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('124', '13', '2015-08-31 00:00:00', '摄影师', '2015-08-31 15:00:00', '2015-08-31 17:00:00', '1', '785', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('125', '13', '2015-09-02 00:00:00', '摄影师', '2015-09-02 15:00:00', '2015-09-02 17:00:00', '1', '785', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('126', '13', '2015-09-04 00:00:00', '摄影师', '2015-09-04 15:00:00', '2015-09-04 17:00:00', '1', '785', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('127', '13', '2015-09-07 00:00:00', '摄影师', '2015-09-07 15:00:00', '2015-09-07 17:00:00', '1', '785', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('128', '13', '2015-09-09 00:00:00', '摄影师', '2015-09-09 15:00:00', '2015-09-09 17:00:00', '1', '785', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('129', '13', '2015-09-11 00:00:00', '摄影师', '2015-09-11 15:00:00', '2015-09-11 17:00:00', '1', '785', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('130', '13', '2015-09-14 00:00:00', '摄影师', '2015-09-14 15:00:00', '2015-09-14 17:00:00', '1', '785', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);
INSERT INTO `course_curriculumdetail` VALUES ('131', '13', '2015-09-16 00:00:00', '摄影师', '2015-09-16 15:00:00', '2015-09-16 17:00:00', '1', '785', '800', '\0', '', '2015-07-30 03:14:15', null, '6', null, null);

-- ----------------------------
-- Table structure for course_plan
-- ----------------------------
DROP TABLE IF EXISTS `course_plan`;
CREATE TABLE `course_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程巡检计划表',
  `name` varchar(55) DEFAULT NULL COMMENT '计划名称',
  `curriculum_id` int(11) DEFAULT NULL COMMENT '课程表外键',
  `desc` text COMMENT '计划说明',
  `makerId` varchar(55) DEFAULT NULL COMMENT '制单员',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_plan
-- ----------------------------
INSERT INTO `course_plan` VALUES ('15', '中式烹调师2015年度第4期课程表巡检计划', '7', null, null, '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plan` VALUES ('16', '育婴师2015年度第6期课程表巡检计划', '8', null, null, '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plan` VALUES ('17', '多媒体作品制作员2015年度第6期课程表巡检计划', '9', null, null, '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plan` VALUES ('18', '中式面点师（中级）2015年度第5期课程表巡检计划', '10', null, null, '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plan` VALUES ('19', '中式面点师（中级）2015年度第6期课程表巡检计划', '11', null, null, '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plan` VALUES ('20', '咖啡师2015年度第5期课程表巡检计划', '12', null, null, '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plan` VALUES ('21', '摄影师2015年度第5期课程表巡检计划', '13', null, null, '\0', '', '2015-07-30 15:17:47', null, '6', null, null);

-- ----------------------------
-- Table structure for course_plandetail
-- ----------------------------
DROP TABLE IF EXISTS `course_plandetail`;
CREATE TABLE `course_plandetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程巡检计划明细',
  `plan_id` int(11) DEFAULT NULL COMMENT '巡检计划外键',
  `inspection_id` int(11) DEFAULT NULL COMMENT '巡检员外键',
  `desc` text COMMENT '说明',
  `curriculum_id` int(11) DEFAULT NULL COMMENT '课程表明细主键',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1744 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_plandetail
-- ----------------------------
INSERT INTO `course_plandetail` VALUES ('1620', '15', '803', null, '8', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1621', '15', '803', null, '9', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1622', '15', '803', null, '10', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1623', '15', '803', null, '11', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1624', '15', '803', null, '12', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1625', '15', '803', null, '13', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1626', '15', '803', null, '14', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1627', '15', '803', null, '15', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1628', '15', '803', null, '16', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1629', '15', '803', null, '17', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1630', '15', '803', null, '18', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1631', '15', '803', null, '19', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1632', '15', '803', null, '20', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1633', '15', '803', null, '21', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1634', '16', '799', null, '22', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1635', '16', '799', null, '23', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1636', '16', '799', null, '24', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1637', '16', '799', null, '25', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1638', '16', '799', null, '26', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1639', '16', '799', null, '27', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1640', '16', '799', null, '28', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1641', '16', '799', null, '29', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1642', '16', '799', null, '30', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1643', '16', '799', null, '31', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1644', '16', '799', null, '32', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1645', '16', '799', null, '33', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1646', '16', '799', null, '34', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1647', '16', '799', null, '35', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1648', '16', '799', null, '36', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1649', '16', '799', null, '37', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1650', '16', '799', null, '38', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1651', '16', '799', null, '39', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1652', '17', '801', null, '40', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1653', '17', '801', null, '41', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1654', '17', '801', null, '42', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1655', '17', '801', null, '43', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1656', '17', '801', null, '44', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1657', '17', '801', null, '45', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1658', '17', '801', null, '46', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1659', '17', '801', null, '47', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1660', '17', '801', null, '48', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1661', '17', '801', null, '49', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1662', '17', '801', null, '50', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1663', '17', '801', null, '51', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1664', '17', '801', null, '52', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1665', '17', '801', null, '53', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1666', '17', '801', null, '54', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1667', '17', '801', null, '55', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1668', '17', '801', null, '56', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1669', '17', '801', null, '57', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1670', '17', '801', null, '58', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1671', '17', '801', null, '59', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1672', '17', '801', null, '60', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1673', '17', '801', null, '61', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1674', '17', '801', null, '62', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1675', '17', '801', null, '63', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1676', '17', '801', null, '64', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1677', '17', '801', null, '65', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1678', '18', '802', null, '66', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1679', '18', '802', null, '67', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1680', '18', '802', null, '68', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1681', '18', '802', null, '69', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1682', '18', '802', null, '70', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1683', '18', '802', null, '71', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1684', '18', '802', null, '72', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1685', '18', '802', null, '73', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1686', '18', '802', null, '74', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1687', '18', '802', null, '75', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1688', '18', '802', null, '76', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1689', '18', '802', null, '77', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1690', '18', '802', null, '78', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1691', '18', '802', null, '79', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1692', '18', '802', null, '80', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1693', '18', '802', null, '81', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1694', '19', '802', null, '82', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1695', '19', '802', null, '83', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1696', '19', '802', null, '84', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1697', '19', '802', null, '85', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1698', '19', '802', null, '86', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1699', '19', '802', null, '87', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1700', '19', '802', null, '88', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1701', '19', '802', null, '89', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1702', '20', '800', null, '90', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1703', '20', '800', null, '91', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1704', '20', '800', null, '92', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1705', '20', '800', null, '93', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1706', '20', '800', null, '94', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1707', '20', '800', null, '95', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1708', '20', '800', null, '96', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1709', '20', '800', null, '97', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1710', '20', '800', null, '98', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1711', '20', '800', null, '99', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1712', '20', '800', null, '100', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1713', '20', '800', null, '101', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1714', '20', '800', null, '102', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1715', '20', '800', null, '103', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1716', '20', '800', null, '104', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1717', '20', '800', null, '105', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1718', '21', '800', null, '106', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1719', '21', '800', null, '107', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1720', '21', '800', null, '108', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1721', '21', '800', null, '109', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1722', '21', '800', null, '110', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1723', '21', '800', null, '111', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1724', '21', '800', null, '112', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1725', '21', '800', null, '113', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1726', '21', '800', null, '114', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1727', '21', '800', null, '115', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1728', '21', '800', null, '116', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1729', '21', '800', null, '117', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1730', '21', '800', null, '118', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1731', '21', '800', null, '119', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1732', '21', '800', null, '120', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1733', '21', '800', null, '121', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1734', '21', '800', null, '122', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1735', '21', '800', null, '123', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1736', '21', '800', null, '124', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1737', '21', '800', null, '125', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1738', '21', '800', null, '126', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1739', '21', '800', null, '127', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1740', '21', '800', null, '128', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1741', '21', '800', null, '129', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1742', '21', '800', null, '130', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);
INSERT INTO `course_plandetail` VALUES ('1743', '21', '800', null, '131', '\0', '', '2015-07-30 15:17:47', null, '6', null, null);

-- ----------------------------
-- Table structure for course_professinal
-- ----------------------------
DROP TABLE IF EXISTS `course_professinal`;
CREATE TABLE `course_professinal` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '专业',
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '专业名称 ',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_professinal
-- ----------------------------
INSERT INTO `course_professinal` VALUES ('1', '00001', '摄影师', '\0', '', '2015-07-30 00:24:54', null, '6', null, null);
INSERT INTO `course_professinal` VALUES ('2', '00002', '咖啡师', '\0', '', '2015-07-30 00:24:54', null, '6', null, null);
INSERT INTO `course_professinal` VALUES ('3', '00003', '多媒体作品制作员', '\0', '', '2015-07-30 00:24:54', null, '6', null, null);
INSERT INTO `course_professinal` VALUES ('4', '00004', '美容师', '\0', '', '2015-07-30 00:24:54', null, '6', null, null);
INSERT INTO `course_professinal` VALUES ('5', '00005', '育婴师', '\0', '', '2015-07-30 00:24:54', null, '6', null, null);
INSERT INTO `course_professinal` VALUES ('6', '00006', '维修电工', '\0', '', '2015-07-30 00:24:54', null, '6', null, null);
INSERT INTO `course_professinal` VALUES ('7', '00007', '保健按摩师', '\0', '', '2015-07-30 00:24:54', null, '6', null, null);
INSERT INTO `course_professinal` VALUES ('8', '00008', '中式面点师（初级）', '\0', '', '2015-07-30 00:24:54', null, '6', null, null);
INSERT INTO `course_professinal` VALUES ('9', '00009', '中式面点师（中级）', '\0', '', '2015-07-30 00:24:54', null, '6', null, null);
INSERT INTO `course_professinal` VALUES ('10', '00010', '中式烹调师', '\0', '', '2015-07-30 00:24:54', null, '6', null, null);
INSERT INTO `course_professinal` VALUES ('11', '00011', '汽车维修', '\0', '', '2015-07-30 00:24:54', null, '6', null, null);
INSERT INTO `course_professinal` VALUES ('12', '00012', '计算机操作员', '\0', '', '2015-07-30 00:24:54', null, '6', null, null);
INSERT INTO `course_professinal` VALUES ('13', '00013', '电焊工', '\0', '', '2015-07-30 00:24:54', null, '6', null, null);

-- ----------------------------
-- Table structure for course_year
-- ----------------------------
DROP TABLE IF EXISTS `course_year`;
CREATE TABLE `course_year` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程年度表',
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(55) DEFAULT NULL COMMENT '年度名称',
  `isCurrent` bit(1) DEFAULT NULL COMMENT '是否为当前年度',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_year
-- ----------------------------
INSERT INTO `course_year` VALUES ('2', 'Y0001', '2015年度', '', '\0', '', '2015-07-30 00:36:24', null, '6', null, null);
INSERT INTO `course_year` VALUES ('3', 'Y0002', '2016年度', '\0', '\0', '', '2015-07-30 00:36:24', null, '6', null, null);
INSERT INTO `course_year` VALUES ('4', 'Y0003', '2017年度', '\0', '\0', '', '2015-07-30 00:36:24', null, '6', null, null);
INSERT INTO `course_year` VALUES ('5', 'Y0004', '2018年度', '\0', '\0', '', '2015-07-30 00:36:24', null, '6', null, null);
INSERT INTO `course_year` VALUES ('6', 'Y0005', '2019年度', '\0', '\0', '', '2015-07-30 00:36:24', null, '6', null, null);

-- ----------------------------
-- Table structure for dic_attachment
-- ----------------------------
DROP TABLE IF EXISTS `dic_attachment`;
CREATE TABLE `dic_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '附件',
  `billId` int(11) DEFAULT NULL COMMENT '对象编号',
  `billType` int(55) DEFAULT NULL COMMENT '对象类型。1：巡检记录。',
  `fileName` varchar(55) DEFAULT NULL COMMENT '文件名称',
  `fileUrl` varchar(55) DEFAULT NULL COMMENT '文件地址',
  `fileSize` int(11) DEFAULT NULL COMMENT '文件大小',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dic_attachment
-- ----------------------------
INSERT INTO `dic_attachment` VALUES ('1', '1', '1', '附件', 'images/dudao/out2.png', '20', null, null, null, null, null, null, null);
INSERT INTO `dic_attachment` VALUES ('2', '1', '1', '网页', 'images/dudao/out2.png', '100', null, null, null, null, null, null, null);
INSERT INTO `dic_attachment` VALUES ('3', '1', '1', '网页', 'images/dudao/out2.png', '100', '\0', '\0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '');
INSERT INTO `dic_attachment` VALUES ('4', '1', '1', '网页', 'images/dudao/out2.png', '100', '\0', '\0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '');
INSERT INTO `dic_attachment` VALUES ('5', '1', '1', '网页', 'images/dudao/out2.png', '100', '\0', '\0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '');
INSERT INTO `dic_attachment` VALUES ('6', '1', '1', '网页', 'images/dudao/out2.png', '100', '\0', '\0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '');
INSERT INTO `dic_attachment` VALUES ('7', '1', '1', '网页', 'images/dudao/out2.png', '100', '\0', '\0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '');
INSERT INTO `dic_attachment` VALUES ('8', '1', '1', '网页', 'images/dudao/out2.png', '100', '\0', '\0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '');
INSERT INTO `dic_attachment` VALUES ('9', '1', '1', '网页', 'images/dudao/out2.png', '100', '\0', '\0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '');
INSERT INTO `dic_attachment` VALUES ('10', '1', '1', '网页', 'images/dudao/out2.png', '100', '\0', '\0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '');
INSERT INTO `dic_attachment` VALUES ('11', '1', '1', '图片test', 'images/dudao/out2.png', '10', '\0', '\0', '2015-07-29 18:50:27', null, '1', null, null);
INSERT INTO `dic_attachment` VALUES ('12', '1', '1', '1438175370628', 'images/dudao/out2.png', '10', '\0', '\0', '2015-07-29 21:09:38', null, '1', null, null);
INSERT INTO `dic_attachment` VALUES ('13', '24', '1', '1438175769290', 'images/dudao/201508031133300.685979793779552.jpg', '10', '\0', '\0', '2015-07-29 21:16:17', null, '1', null, null);
INSERT INTO `dic_attachment` VALUES ('14', '26', '1', '1438176154785', 'images/dudao/201508031133300.685979793779552.jpg', '10', '\0', '\0', '2015-07-29 21:22:50', null, '1', null, null);
INSERT INTO `dic_attachment` VALUES ('15', '37', '1', '1438179138277', 'images/dudao/201508031133300.685979793779552.jpg', '10', '\0', '\0', '2015-07-29 22:12:41', null, '1', null, null);
INSERT INTO `dic_attachment` VALUES ('16', '37', '1', '1438179131680', 'images/dudao/201508031133300.685979793779552.jpg', '10', '\0', '\0', '2015-07-29 22:12:44', null, '1', null, null);
INSERT INTO `dic_attachment` VALUES ('17', '40', '1', '1438179210432', 'images/dudao/201508031133300.685979793779552.jpg', '10', '\0', '\0', '2015-07-29 22:13:44', null, '1', null, null);
INSERT INTO `dic_attachment` VALUES ('18', '38', '1', '1438179210432', 'images/dudao/201508031133300.685979793779552.jpg', '10', '\0', '\0', '2015-07-29 22:13:44', null, '1', null, null);
INSERT INTO `dic_attachment` VALUES ('19', '41', '1', '1438179461532', 'images/dudao/201508031133300.685979793779552.jpg', '10', '\0', '\0', '2015-07-29 22:17:44', null, '1', null, null);
INSERT INTO `dic_attachment` VALUES ('20', '42', '1', '1438179497267', 'images/dudao/201508031133300.685979793779552.jpg', '10', '\0', '\0', '2015-07-29 22:18:19', null, '1', null, null);
INSERT INTO `dic_attachment` VALUES ('21', '43', '1', '1438179677802', 'images/dudao/201508031133300.685979793779552.jpg', '1', '\0', '\0', '2015-07-29 22:21:28', null, '', null, null);
INSERT INTO `dic_attachment` VALUES ('22', '43', '1', '1438179684789', 'images/dudao/201508031133300.685979793779552.jpg', '1', '\0', '\0', '2015-07-29 22:21:28', null, '', null, null);
INSERT INTO `dic_attachment` VALUES ('23', '44', '1', '1438179727147', 'images/dudao/201508031133300.685979793779552.jpg', '1', '\0', '\0', '2015-07-29 22:22:15', null, '', null, null);
INSERT INTO `dic_attachment` VALUES ('24', '44', '1', '1438179732124', 'images/dudao/201508031133300.685979793779552.jpg', '1', '\0', '\0', '2015-07-29 22:22:15', null, '', null, null);
INSERT INTO `dic_attachment` VALUES ('25', '45', '1', '1438179752544', 'images/dudao/201508031133300.685979793779552.jpg', '1', '\0', '\0', '2015-07-29 22:22:36', null, '', null, null);
INSERT INTO `dic_attachment` VALUES ('26', '46', '1', '1438179820518', 'images/dudao/201508031133300.685979793779552.jpg', '1', '\0', '\0', '2015-07-29 22:23:44', null, '', null, null);
INSERT INTO `dic_attachment` VALUES ('27', '47', '1', '1438179897507', 'images/dudao/201508031133300.685979793779552.jpg', '2147483647', '\0', '\0', '2015-07-29 22:25:04', null, '1', null, null);
INSERT INTO `dic_attachment` VALUES ('28', '48', '1', '1438239988829', 'images/dudao/201508031133300.685979793779552.jpg', '59181', '\0', '\0', '2015-07-30 15:06:35', null, '802', null, null);
INSERT INTO `dic_attachment` VALUES ('29', '49', '1', '1438241794851', 'images/dudao/201508031133300.685979793779552.jpg', '60612', '\0', '\0', '2015-07-30 15:36:45', null, '802', null, null);
INSERT INTO `dic_attachment` VALUES ('30', '50', '1', '1438242134072', 'images/dudao/201508031133300.685979793779552.jpg', '68533', '\0', '\0', '2015-07-30 15:42:39', null, '802', null, null);
INSERT INTO `dic_attachment` VALUES ('31', '50', '1', '1438242139481', 'images/dudao/201507301542360.640809423988685.jpg', '66230', '\0', '\0', '2015-07-30 15:42:39', null, '802', null, null);
INSERT INTO `dic_attachment` VALUES ('32', '50', '1', '1438242125936', 'images/dudao/201508031133300.685979793779552.jpg', '67938', '\0', '\0', '2015-07-30 15:42:39', null, '802', null, null);
INSERT INTO `dic_attachment` VALUES ('33', '51', '1', '1438242593392', 'images/dudao/201508031133300.685979793779552.jpg', '53235', '\0', '\0', '2015-07-30 15:50:10', null, '802', null, null);
INSERT INTO `dic_attachment` VALUES ('34', '51', '1', '1438242597706', 'images/dudao/201508031133300.685979793779552.jpg', '62759', '\0', '\0', '2015-07-30 15:50:10', null, '802', null, null);
INSERT INTO `dic_attachment` VALUES ('35', '52', '1', '1438243028695', 'images/dudao/201508031133300.685979793779552.jpg', '63782', '\0', '\0', '2015-07-30 15:58:15', null, '802', null, null);
INSERT INTO `dic_attachment` VALUES ('36', '52', '1', '1438243044340', 'images/dudao/201508031133300.685979793779552.jpg', '64045', '\0', '\0', '2015-07-30 15:58:16', null, '802', null, null);
INSERT INTO `dic_attachment` VALUES ('37', '52', '1', '1438243038864', 'images/dudao/201508031133300.685979793779552.jpg', '63035', '\0', '\0', '2015-07-30 15:58:16', null, '802', null, null);
INSERT INTO `dic_attachment` VALUES ('38', '53', '1', '1438243028695', 'images/dudao/201508031133300.685979793779552.jpg', '63782', '\0', '\0', '2015-07-30 15:59:10', null, '802', null, null);
INSERT INTO `dic_attachment` VALUES ('39', '53', '1', '1438243038864', 'images/dudao/201508031133300.685979793779552.jpg', '63035', '\0', '\0', '2015-07-30 15:59:10', null, '802', null, null);
INSERT INTO `dic_attachment` VALUES ('40', '53', '1', '1438243044340', 'images/dudao/201508031133300.685979793779552.jpg', '64045', '\0', '\0', '2015-07-30 15:59:10', null, '802', null, null);
INSERT INTO `dic_attachment` VALUES ('41', '54', '1', '1438246194924', 'images/dudao/201508031133300.685979793779552.jpg', '61378', '\0', '\0', '2015-07-30 16:50:10', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('42', '54', '1', '1438246189901', 'images/dudao/201508031133300.685979793779552.jpg', '63021', '\0', '\0', '2015-07-30 16:50:10', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('43', '54', '1', '1438246185041', 'images/dudao/201508031133300.685979793779552.jpg', '57469', '\0', '\0', '2015-07-30 16:50:10', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('44', '55', '1', '1438246416104', 'images/dudao/201508031133300.685979793779552.jpg', '43006', '\0', '\0', '2015-07-30 16:53:59', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('45', '55', '1', '1438246420724', 'images/dudao/201508031133300.685979793779552.jpg', '60717', '\0', '\0', '2015-07-30 16:53:59', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('46', '55', '1', '1438246425349', 'images/dudao/201508031133300.685979793779552.jpg', '64876', '\0', '\0', '2015-07-30 16:53:59', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('47', '56', '1', '1438246517662', 'images/dudao/201508031133300.685979793779552.jpg', '66320', '\0', '\0', '2015-07-30 16:55:38', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('48', '56', '1', '1438246522364', 'images/dudao/201508031133300.685979793779552.jpg', '67713', '\0', '\0', '2015-07-30 16:55:38', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('49', '57', '1', '1438246646207', 'images/dudao/201508031133300.685979793779552.jpg', '63573', '\0', '\0', '2015-07-30 16:57:32', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('50', '57', '1', '1438246639783', 'images/dudao/201508031133300.685979793779552.jpg', '71384', '\0', '\0', '2015-07-30 16:57:32', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('51', '57', '1', '1438246632130', 'images/dudao/201508031133300.685979793779552.jpg', '69321', '\0', '\0', '2015-07-30 16:57:32', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('52', '58', '1', '1438246843245', 'images/dudao/201508031133300.685979793779552.jpg', '61717', '\0', '\0', '2015-07-30 17:01:12', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('53', '58', '1', '1438246848357', 'images/dudao/201508031133300.685979793779552.jpg', '66404', '\0', '\0', '2015-07-30 17:01:12', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('54', '59', '1', '1438247094185', 'images/dudao/201508031133300.685979793779552.jpg', '63117', '\0', '\0', '2015-07-30 17:05:08', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('55', '59', '1', '1438247089277', 'images/dudao/201508031133300.685979793779552.jpg', '63583', '\0', '\0', '2015-07-30 17:05:08', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('56', '59', '1', '1438247098684', 'images/dudao/201508031133300.685979793779552.jpg', '62952', '\0', '\0', '2015-07-30 17:05:08', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('57', '60', '1', '1438247287706', 'images/dudao/201508031133300.685979793779552.jpg', '68802', '\0', '\0', '2015-07-30 17:08:18', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('58', '60', '1', '1438247283485', 'images/dudao/201508031133300.685979793779552.jpg', '63687', '\0', '\0', '2015-07-30 17:08:18', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('59', '60', '1', '1438247291269', 'images/dudao/201508031133300.685979793779552.jpg', '65486', '\0', '\0', '2015-07-30 17:08:18', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('60', '61', '1', '1438247478029', 'images/dudao/201508031133300.685979793779552.jpg', '64049', '\0', '\0', '2015-07-30 17:11:24', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('61', '62', '1', '1438247491890', 'images/dudao/201508031133300.685979793779552.jpg', '64972', '\0', '\0', '2015-07-30 17:11:42', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('62', '62', '1', '1438247495982', 'images/dudao/201508031133300.685979793779552.jpg', '64725', '\0', '\0', '2015-07-30 17:11:42', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('63', '74', '1', '1438317683005', 'images/dudao/201508031133300.685979793779552.jpg', '72037', '\0', '\0', '2015-07-31 12:41:34', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('64', '75', '1', '1438326660281', 'images/dudao/201508031133300.685979793779552.jpg', '69618', '\0', '\0', '2015-07-31 15:11:25', null, '802', null, null);
INSERT INTO `dic_attachment` VALUES ('65', '75', '1', '1438326652515', 'images/dudao/201508031133300.685979793779552.jpg', '71450', '\0', '\0', '2015-07-31 15:11:25', null, '802', null, null);
INSERT INTO `dic_attachment` VALUES ('66', '76', '1', '1438572808838', 'images/dudao/201508031133300.685979793779552.jpg', '66148', '\0', '\0', '2015-08-03 11:33:30', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('67', '77', '1', '1438572821349', 'images/dudao/201508031133300.685979793779552.jpg', '69889', '\0', '\0', '2015-08-03 11:33:58', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('68', '78', '1', '1438573035372', 'images/dudao/201508031133300.685979793779552.jpg', '61592', '\0', '\0', '2015-08-03 11:37:25', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('69', '79', '1', '1438576740370', 'images/dudao/201508031239010.3101584722753614.jpg', '61059', '\0', '\0', '2015-08-03 12:39:01', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('70', '80', '1', '1438597197945', 'images/dudao/201508031833400.8424277594313025.jpg', '64475', '\0', '\0', '2015-08-03 18:33:40', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('71', '80', '1', '1438597217897', 'images/dudao/201508031833400.28326940443366766.jpg', '66178', '\0', '\0', '2015-08-03 18:33:40', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('72', '80', '1', '1438597207595', 'images/dudao/201508031833400.6797829933930188.jpg', '71254', '\0', '\0', '2015-08-03 18:33:40', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('73', '81', '1', '1438598062831', 'images/dudao/201508031838580.8533060357440263.jpg', '70080', '\0', '\0', '2015-08-03 18:38:58', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('74', '81', '1', '1438598072711', 'images/dudao/201508031838580.8515850082039833.jpg', '61091', '\0', '\0', '2015-08-03 18:38:58', null, '800', null, null);
INSERT INTO `dic_attachment` VALUES ('75', '81', '1', '1438598080792', 'images/dudao/201508031838580.7601451070513576.jpg', '70746', '\0', '\0', '2015-08-03 18:38:58', null, '800', null, null);

-- ----------------------------
-- Table structure for dic_attendance
-- ----------------------------
DROP TABLE IF EXISTS `dic_attendance`;
CREATE TABLE `dic_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '考勤',
  `idNum` varchar(20) DEFAULT NULL COMMENT '人员身份证号',
  `personId` int(11) DEFAULT NULL COMMENT '人员在会员表中的Id',
  `onScanningTime` datetime DEFAULT NULL COMMENT '上课打卡时间',
  `offScanningTime` datetime DEFAULT NULL COMMENT '下课打卡时间',
  `course_curriculumdetail_id` int(11) DEFAULT NULL COMMENT '课程表明细Id',
  `isAbsenteeism` bit(1) DEFAULT NULL COMMENT '是否旷课',
  `isLate` bit(1) DEFAULT NULL COMMENT '是否迟到',
  `isLeaveEarly` bit(1) DEFAULT NULL COMMENT '是否早退',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dic_attendance
-- ----------------------------
INSERT INTO `dic_attendance` VALUES ('73', '370212197507160540', '663', '2015-08-03 14:30:33', null, '70', '\0', '\0', '', '', '2015-08-03 17:16:05', null, '663', null, null, '\0');
INSERT INTO `dic_attendance` VALUES ('74', '370683198310195522', '661', '2015-08-03 14:30:35', null, '70', '\0', '\0', '', '', '2015-08-03 17:16:05', null, '661', null, null, '\0');
INSERT INTO `dic_attendance` VALUES ('75', '370282197609214828', '660', '2015-08-03 14:30:36', null, '70', '\0', '\0', '', '', '2015-08-03 17:16:05', null, '660', null, null, '\0');
INSERT INTO `dic_attendance` VALUES ('76', '370221197308010028', '662', '2015-08-03 14:30:42', null, '70', '\0', '\0', '', '', '2015-08-03 17:16:05', null, '662', null, null, '\0');

-- ----------------------------
-- Table structure for school_classroom
-- ----------------------------
DROP TABLE IF EXISTS `school_classroom`;
CREATE TABLE `school_classroom` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学校教室',
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(55) DEFAULT NULL COMMENT '教室名称',
  `school_id` int(11) DEFAULT NULL COMMENT '学校外键  id',
  `isDel` bit(1) DEFAULT b'0' COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT b'1' COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT '6' COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school_classroom
-- ----------------------------
INSERT INTO `school_classroom` VALUES ('1', 'C0001', '摄影实训室', '1', '\0', '', '2015-07-30 00:41:06', null, '6', null, null);
INSERT INTO `school_classroom` VALUES ('2', 'C0002', '咖啡实训室', '1', '\0', '', '2015-07-30 00:41:06', null, '6', null, null);
INSERT INTO `school_classroom` VALUES ('3', 'C0003', '204机房', '1', '\0', '', '2015-07-30 00:41:06', null, '6', null, null);
INSERT INTO `school_classroom` VALUES ('4', 'C0004', '307教室', '1', '\0', '', '2015-07-30 00:41:06', null, '6', null, null);
INSERT INTO `school_classroom` VALUES ('5', 'C0005', '面点实训室', '1', '\0', '', '2015-07-30 00:41:06', null, '6', null, null);
INSERT INTO `school_classroom` VALUES ('6', 'C0006', '烹饪实训室', '1', '\0', '', '2015-07-30 00:41:06', null, '6', null, null);
INSERT INTO `school_classroom` VALUES ('7', 'C0007', '电工实训室', '1', '\0', '', '2015-07-30 00:41:06', null, '6', null, null);
INSERT INTO `school_classroom` VALUES ('8', 'C0008', '美容实训室', '1', '\0', '', '2015-07-30 00:41:06', null, '6', null, null);
INSERT INTO `school_classroom` VALUES ('9', 'C0009', '保健按摩实训室', '1', '\0', '', '2015-07-30 00:41:06', null, '6', null, null);
INSERT INTO `school_classroom` VALUES ('10', 'C0010', '电焊实训室', '1', '\0', '', '2015-07-30 00:41:06', null, '6', null, null);
INSERT INTO `school_classroom` VALUES ('11', 'C0011', '407、烹饪实训室', '1', '\0', '', '2015-07-30 00:41:06', null, '6', null, null);
INSERT INTO `school_classroom` VALUES ('12', 'C0012', '307教室、面点实训室', '1', '\0', '', '2015-07-30 00:41:06', null, '6', null, null);

-- ----------------------------
-- Table structure for school_school
-- ----------------------------
DROP TABLE IF EXISTS `school_school`;
CREATE TABLE `school_school` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学校',
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(55) DEFAULT NULL COMMENT '学校名称',
  `address` varchar(55) DEFAULT NULL COMMENT '学校地点',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school_school
-- ----------------------------
INSERT INTO `school_school` VALUES ('1', 'S0001', '青岛托普科技培训学校', '山东省青岛市李沧区金水路1577-10', '\0', '', '2015-07-30 00:39:08', null, '6', null, null);

-- ----------------------------
-- Table structure for school_selection
-- ----------------------------
DROP TABLE IF EXISTS `school_selection`;
CREATE TABLE `school_selection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生选课表',
  `curriculum_id` int(11) DEFAULT NULL COMMENT '课程表外键',
  `student_id` int(11) DEFAULT NULL COMMENT '学生外键',
  `selectDate` datetime DEFAULT NULL COMMENT '选课时间',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=341 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school_selection
-- ----------------------------
INSERT INTO `school_selection` VALUES ('306', '10', '662', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('307', '10', '663', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('305', '10', '661', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('304', '10', '660', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('173', '7', '529', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('174', '7', '530', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('175', '7', '531', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('176', '7', '532', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('177', '7', '533', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('178', '7', '534', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('179', '7', '535', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('180', '7', '536', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('181', '7', '537', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('182', '7', '538', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('183', '7', '539', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('184', '7', '540', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('185', '7', '541', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('186', '7', '542', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('187', '7', '543', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('188', '7', '544', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('189', '7', '545', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('190', '7', '546', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('191', '7', '547', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('192', '7', '548', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('193', '7', '549', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('194', '7', '550', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('195', '8', '551', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('196', '8', '552', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('197', '8', '553', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('198', '8', '554', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('199', '8', '555', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('200', '8', '556', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('201', '8', '557', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('202', '8', '558', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('203', '8', '559', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('204', '8', '560', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('205', '8', '561', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('206', '8', '562', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('207', '8', '563', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('208', '8', '564', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('209', '8', '565', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('210', '8', '566', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('211', '8', '567', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('212', '8', '568', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('213', '8', '569', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('214', '8', '570', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('215', '8', '571', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('216', '8', '572', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('217', '8', '573', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('218', '8', '574', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('219', '8', '575', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('220', '8', '576', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('221', '8', '577', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('222', '8', '578', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('223', '8', '579', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('224', '8', '580', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('225', '8', '581', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('226', '8', '582', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('227', '8', '583', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('228', '8', '584', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('229', '8', '585', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('230', '8', '586', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('231', '8', '587', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('232', '8', '588', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('233', '8', '589', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('234', '8', '590', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('235', '8', '591', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('236', '8', '592', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('237', '8', '593', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('238', '8', '594', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('239', '9', '595', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('240', '9', '596', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('241', '9', '597', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('242', '9', '598', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('243', '9', '599', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('244', '9', '600', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('245', '9', '601', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('246', '9', '602', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('247', '9', '603', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('248', '9', '604', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('249', '9', '605', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('250', '9', '606', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('251', '9', '607', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('252', '9', '608', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('253', '9', '609', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('254', '9', '610', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('255', '9', '611', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('256', '9', '612', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('257', '9', '613', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('258', '9', '614', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('259', '9', '615', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('260', '9', '616', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('261', '12', '617', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('262', '12', '618', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('263', '12', '619', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('264', '12', '620', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('265', '12', '621', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('266', '12', '622', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('267', '12', '623', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('268', '12', '624', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('269', '12', '625', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('270', '12', '626', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('271', '12', '627', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('272', '12', '628', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('273', '12', '629', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('274', '12', '630', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('275', '12', '631', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('276', '12', '632', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('277', '12', '633', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('278', '12', '634', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('279', '12', '635', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('280', '12', '636', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('281', '12', '637', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('282', '12', '638', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('283', '12', '639', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('284', '12', '640', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('285', '12', '641', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('286', '12', '642', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('287', '10', '643', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('288', '10', '644', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('289', '10', '645', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('290', '10', '646', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('291', '10', '647', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('292', '10', '648', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('293', '10', '649', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('294', '10', '650', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('295', '10', '651', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('296', '10', '652', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('297', '10', '653', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('298', '10', '654', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('299', '10', '655', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('300', '10', '656', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('301', '10', '657', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('302', '10', '658', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('303', '10', '659', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('308', '10', '664', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('309', '10', '665', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('310', '10', '666', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('311', '10', '667', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('312', '11', '668', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('313', '11', '669', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('314', '11', '670', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('315', '11', '671', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('316', '11', '672', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('317', '11', '673', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('318', '11', '674', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('319', '11', '675', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('320', '11', '676', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('321', '11', '677', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('322', '11', '678', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('323', '11', '679', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('324', '11', '680', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('325', '11', '681', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('326', '11', '682', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('327', '11', '683', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('328', '11', '684', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('329', '11', '685', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('330', '11', '686', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('331', '11', '687', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('332', '11', '688', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('333', '11', '689', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('334', '11', '690', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('335', '11', '691', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('336', '11', '692', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('337', '11', '693', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('338', '11', '694', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('339', '11', '695', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);
INSERT INTO `school_selection` VALUES ('340', '11', '696', '2015-07-30 04:47:40', '\0', '', '2015-07-30 04:47:40', null, '6', null, null);

-- ----------------------------
-- Table structure for TEST
-- ----------------------------
DROP TABLE IF EXISTS `TEST`;
CREATE TABLE `TEST` (
  `ID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of TEST
-- ----------------------------
INSERT INTO `TEST` VALUES ('766');
INSERT INTO `TEST` VALUES ('767');
INSERT INTO `TEST` VALUES ('768');
INSERT INTO `TEST` VALUES ('769');
INSERT INTO `TEST` VALUES ('770');
INSERT INTO `TEST` VALUES ('771');
INSERT INTO `TEST` VALUES ('772');
INSERT INTO `TEST` VALUES ('773');
INSERT INTO `TEST` VALUES ('774');
INSERT INTO `TEST` VALUES ('775');
INSERT INTO `TEST` VALUES ('776');
INSERT INTO `TEST` VALUES ('777');
INSERT INTO `TEST` VALUES ('778');
INSERT INTO `TEST` VALUES ('779');
INSERT INTO `TEST` VALUES ('780');
INSERT INTO `TEST` VALUES ('781');
INSERT INTO `TEST` VALUES ('782');
INSERT INTO `TEST` VALUES ('783');
INSERT INTO `TEST` VALUES ('834');
INSERT INTO `TEST` VALUES ('835');
INSERT INTO `TEST` VALUES ('836');
INSERT INTO `TEST` VALUES ('837');
INSERT INTO `TEST` VALUES ('838');
INSERT INTO `TEST` VALUES ('839');
INSERT INTO `TEST` VALUES ('840');
INSERT INTO `TEST` VALUES ('841');
INSERT INTO `TEST` VALUES ('842');
INSERT INTO `TEST` VALUES ('843');
INSERT INTO `TEST` VALUES ('844');
INSERT INTO `TEST` VALUES ('845');
INSERT INTO `TEST` VALUES ('846');
INSERT INTO `TEST` VALUES ('847');
INSERT INTO `TEST` VALUES ('848');
INSERT INTO `TEST` VALUES ('849');
INSERT INTO `TEST` VALUES ('850');
INSERT INTO `TEST` VALUES ('851');
INSERT INTO `TEST` VALUES ('852');
INSERT INTO `TEST` VALUES ('853');
INSERT INTO `TEST` VALUES ('854');
INSERT INTO `TEST` VALUES ('855');
INSERT INTO `TEST` VALUES ('856');
INSERT INTO `TEST` VALUES ('857');
INSERT INTO `TEST` VALUES ('858');
INSERT INTO `TEST` VALUES ('859');
INSERT INTO `TEST` VALUES ('860');
INSERT INTO `TEST` VALUES ('861');
INSERT INTO `TEST` VALUES ('862');
INSERT INTO `TEST` VALUES ('863');
INSERT INTO `TEST` VALUES ('864');
INSERT INTO `TEST` VALUES ('865');
INSERT INTO `TEST` VALUES ('866');
INSERT INTO `TEST` VALUES ('867');
INSERT INTO `TEST` VALUES ('868');
INSERT INTO `TEST` VALUES ('869');
INSERT INTO `TEST` VALUES ('870');
INSERT INTO `TEST` VALUES ('871');
INSERT INTO `TEST` VALUES ('872');
INSERT INTO `TEST` VALUES ('873');
INSERT INTO `TEST` VALUES ('874');
INSERT INTO `TEST` VALUES ('875');
INSERT INTO `TEST` VALUES ('784');
INSERT INTO `TEST` VALUES ('785');
INSERT INTO `TEST` VALUES ('786');
INSERT INTO `TEST` VALUES ('787');
INSERT INTO `TEST` VALUES ('788');
INSERT INTO `TEST` VALUES ('789');
INSERT INTO `TEST` VALUES ('790');
INSERT INTO `TEST` VALUES ('791');
INSERT INTO `TEST` VALUES ('792');
INSERT INTO `TEST` VALUES ('793');
INSERT INTO `TEST` VALUES ('794');
INSERT INTO `TEST` VALUES ('795');
INSERT INTO `TEST` VALUES ('796');
INSERT INTO `TEST` VALUES ('797');
INSERT INTO `TEST` VALUES ('798');
INSERT INTO `TEST` VALUES ('799');
INSERT INTO `TEST` VALUES ('800');
INSERT INTO `TEST` VALUES ('801');
INSERT INTO `TEST` VALUES ('802');
INSERT INTO `TEST` VALUES ('803');
INSERT INTO `TEST` VALUES ('804');
INSERT INTO `TEST` VALUES ('805');
INSERT INTO `TEST` VALUES ('806');
INSERT INTO `TEST` VALUES ('807');
INSERT INTO `TEST` VALUES ('808');
INSERT INTO `TEST` VALUES ('809');
INSERT INTO `TEST` VALUES ('810');
INSERT INTO `TEST` VALUES ('811');
INSERT INTO `TEST` VALUES ('812');
INSERT INTO `TEST` VALUES ('813');
INSERT INTO `TEST` VALUES ('814');
INSERT INTO `TEST` VALUES ('815');
INSERT INTO `TEST` VALUES ('816');
INSERT INTO `TEST` VALUES ('817');
INSERT INTO `TEST` VALUES ('818');
INSERT INTO `TEST` VALUES ('819');
INSERT INTO `TEST` VALUES ('820');
INSERT INTO `TEST` VALUES ('821');
INSERT INTO `TEST` VALUES ('822');
INSERT INTO `TEST` VALUES ('823');
INSERT INTO `TEST` VALUES ('824');
INSERT INTO `TEST` VALUES ('825');
INSERT INTO `TEST` VALUES ('826');
INSERT INTO `TEST` VALUES ('827');
INSERT INTO `TEST` VALUES ('828');
INSERT INTO `TEST` VALUES ('829');
INSERT INTO `TEST` VALUES ('830');
INSERT INTO `TEST` VALUES ('831');
INSERT INTO `TEST` VALUES ('832');
INSERT INTO `TEST` VALUES ('833');
INSERT INTO `TEST` VALUES ('752');
INSERT INTO `TEST` VALUES ('753');
INSERT INTO `TEST` VALUES ('754');
INSERT INTO `TEST` VALUES ('755');
INSERT INTO `TEST` VALUES ('756');
INSERT INTO `TEST` VALUES ('757');
INSERT INTO `TEST` VALUES ('758');
INSERT INTO `TEST` VALUES ('759');
INSERT INTO `TEST` VALUES ('760');
INSERT INTO `TEST` VALUES ('761');
INSERT INTO `TEST` VALUES ('762');
INSERT INTO `TEST` VALUES ('763');
INSERT INTO `TEST` VALUES ('764');
INSERT INTO `TEST` VALUES ('765');

-- ----------------------------
-- Table structure for trade_record
-- ----------------------------
DROP TABLE IF EXISTS `trade_record`;
CREATE TABLE `trade_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '巡检记录表',
  `headteacher_id` int(11) DEFAULT NULL COMMENT '班主任外键',
  `planDetail_id` int(11) DEFAULT NULL COMMENT '课程巡检计划明细表外键',
  `title` varchar(55) DEFAULT NULL COMMENT '主题',
  `comments` text COMMENT '评论',
  `isDel` bit(1) DEFAULT NULL COMMENT '是否删除',
  `isUsed` bit(1) DEFAULT NULL COMMENT '是否停用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `editTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `editUser` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `memo` varchar(2000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trade_record
-- ----------------------------
INSERT INTO `trade_record` VALUES ('1', '1', '1', '巡查1', '很好', null, null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('3', '1', '1', '巡查2', '优秀', null, null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('4', '1', '1', '巡查2', '优秀', null, null, null, null, null, null, null);
INSERT INTO `trade_record` VALUES ('5', '1', '1', '1', '1', '\0', null, '2015-07-29 16:04:36', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('6', '1', '1', '222', '1', '\0', null, '2015-07-29 16:06:12', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('7', '1', '1', 'eeee', 'nihao', '\0', null, '2015-07-29 17:40:43', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('8', '1', '1', 'eeee', 'hao', '\0', null, '2015-07-29 17:45:01', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('9', '1', '1', 'eeee', 'nnnn', '\0', null, '2015-07-29 17:47:13', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('10', '1', '1', 'eeee', 'nnnnb', '\0', null, '2015-07-29 17:50:56', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('11', '1', '1', 'eeee', 'nnnnb', '\0', null, '2015-07-29 17:53:35', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('12', '1', '1', 'eeee', '??', '\0', null, '2015-07-29 20:10:56', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('13', '1', null, null, null, '\0', null, '2015-07-29 20:10:56', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('14', '1', '1', 'eeee', '', '\0', null, '2015-07-29 20:11:36', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('15', '1', '1', 'eeee', '???', '\0', null, '2015-07-29 20:12:41', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('16', '1', null, null, null, '\0', null, '2015-07-29 20:12:41', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('17', '1', '1', 'eeee', '??', '\0', null, '2015-07-29 20:14:44', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('18', '1', null, null, null, '\0', null, '2015-07-29 20:14:45', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('19', '1', '1', 'eeee', '', '\0', null, '2015-07-29 20:17:36', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('20', '1', '1', 'eeee', '??', '\0', null, '2015-07-29 20:25:53', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('21', '1', '1', 'eeee', '', '\0', null, '2015-07-29 20:37:42', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('22', '1', '1', 'eeee', '?????', '\0', null, '2015-07-29 20:55:30', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('23', '1', '1', 'eeee', '????', '\0', null, '2015-07-29 21:09:38', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('24', '1', '1', 'eeee', '', '\0', null, '2015-07-29 21:16:16', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('25', '1', '1', 'eeee', 'Pff', '\0', null, '2015-07-29 21:19:48', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('26', '1', '1', 'eeee', '??????', '\0', null, '2015-07-29 21:22:49', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('27', '1', '1', 'eeee', '?????', '\0', null, '2015-07-29 21:27:00', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('28', '1', '1', 'eeee', '?????', '\0', null, '2015-07-29 21:30:54', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('29', '1', '1', 'eeee', '?????', '\0', null, '2015-07-29 21:32:47', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('30', '1', '1', 'eeee', '?????', '\0', null, '2015-07-29 21:32:47', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('31', '1', '1', 'eeee', '????', '\0', null, '2015-07-29 21:34:12', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('32', '1', '1', 'eeee', 'v???', '\0', null, '2015-07-29 21:51:50', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('33', '1', '1', 'eeee', '?????', '\0', null, '2015-07-29 21:52:50', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('34', '1', '1', 'eeee', null, '\0', null, '2015-07-29 21:56:26', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('35', '1', '1', 'eeee', null, '\0', null, '2015-07-29 21:58:17', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('36', '1', '1', 'eeee', '吃饱饭减肥', '\0', null, '2015-07-29 22:02:31', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('37', '1', '1', 'eeee', 'hh', '\0', null, '2015-07-29 22:12:26', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('38', '1', '1', 'eeee', '', '\0', null, '2015-07-29 22:13:35', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('39', '1', '1', 'eeee', '', '\0', null, '2015-07-29 22:13:35', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('40', '1', '1', 'eeee', '', '\0', null, '2015-07-29 22:13:36', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('41', '1', '1', 'eeee', '', '\0', null, '2015-07-29 22:17:44', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('42', '1', '1', 'eeee', '', '\0', null, '2015-07-29 22:18:19', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('43', '1', '1', 'eeee', '', '\0', null, '2015-07-29 22:21:28', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('44', '1', '1', 'eeee', '', '\0', null, '2015-07-29 22:22:14', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('45', '1', '1', 'eeee', '', '\0', null, '2015-07-29 22:22:35', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('46', '1', '1', 'eeee', '', '\0', null, '2015-07-29 22:23:43', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('47', '1', '1', 'eeee', '', '\0', null, '2015-07-29 22:25:03', null, '1', null, null);
INSERT INTO `trade_record` VALUES ('48', '802', '1558', '中式面点师（中级）', '你好', '\0', null, '2015-07-30 15:06:35', null, '802', null, null);
INSERT INTO `trade_record` VALUES ('49', '802', '1682', '中式面点师（中级）', '你好你好', '\0', null, '2015-07-30 15:36:45', null, '802', null, null);
INSERT INTO `trade_record` VALUES ('50', '802', '1682', '中式面点师（中级）', '你好你好吧', '\0', null, '2015-07-30 15:42:37', null, '802', null, null);
INSERT INTO `trade_record` VALUES ('51', '802', '1682', '中式面点师（中级）', '55558468', '\0', null, '2015-07-30 15:50:09', null, '802', null, null);
INSERT INTO `trade_record` VALUES ('52', '802', '1682', '中式面点师（中级）', '上传图片', '\0', null, '2015-07-30 15:58:14', null, '802', null, null);
INSERT INTO `trade_record` VALUES ('53', '802', '1682', '中式面点师（中级）', '上传图片', '\0', null, '2015-07-30 15:59:09', null, '802', null, null);
INSERT INTO `trade_record` VALUES ('54', '800', '1718', '摄影师', '测试图片', '\0', null, '2015-07-30 16:50:09', null, '800', null, null);
INSERT INTO `trade_record` VALUES ('55', '800', '1718', '摄影师', '测试2', '\0', null, '2015-07-30 16:53:58', null, '800', null, null);
INSERT INTO `trade_record` VALUES ('56', '800', '1718', '摄影师', '测试3', '\0', null, '2015-07-30 16:55:36', null, '800', null, null);
INSERT INTO `trade_record` VALUES ('57', '800', '1718', '摄影师', '测试', '\0', null, '2015-07-30 16:57:31', null, '800', null, null);
INSERT INTO `trade_record` VALUES ('58', '800', '1718', '摄影师', '测试', '\0', null, '2015-07-30 17:01:11', null, '800', null, null);
INSERT INTO `trade_record` VALUES ('59', '800', '1718', '摄影师', '测试', '\0', null, '2015-07-30 17:05:07', null, '800', null, null);
INSERT INTO `trade_record` VALUES ('60', '800', '1718', '摄影师', '测试', '\0', null, '2015-07-30 17:08:17', null, '800', null, null);
INSERT INTO `trade_record` VALUES ('61', '800', '1718', '摄影师', '评价', '\0', null, '2015-07-30 17:11:23', null, '800', null, null);
INSERT INTO `trade_record` VALUES ('62', '800', '1718', '摄影师', '测试', '\0', null, '2015-07-30 17:11:42', null, '800', null, null);
INSERT INTO `trade_record` VALUES ('63', '800', '1718', '摄影师', '测试', '\0', null, '2015-07-30 17:13:16', null, '800', null, null);
INSERT INTO `trade_record` VALUES ('64', '800', '1718', '摄影师', '测试评价', '\0', null, '2015-07-30 17:16:49', null, '800', null, null);
INSERT INTO `trade_record` VALUES ('65', '800', '1718', '摄影师', '评价5', '\0', null, '2015-07-30 17:17:58', null, '800', null, null);
INSERT INTO `trade_record` VALUES ('66', '800', '1718', '摄影师', '再评价', '\0', null, '2015-07-30 17:19:54', null, '800', null, null);
INSERT INTO `trade_record` VALUES ('67', '800', '1718', '摄影师', '很好', '\0', null, '2015-07-31 12:12:57', null, '800', null, null);
INSERT INTO `trade_record` VALUES ('68', '800', '1718', '摄影师', '很好', '\0', null, '2015-07-31 12:13:06', null, '800', null, null);
INSERT INTO `trade_record` VALUES ('69', '800', '1718', '摄影师', '很好', '\0', null, '2015-07-31 12:13:23', null, '800', null, null);
INSERT INTO `trade_record` VALUES ('70', '800', '1718', '摄影师', '很好', '\0', null, '2015-07-31 12:21:17', null, '800', null, null);
INSERT INTO `trade_record` VALUES ('71', '800', '1718', '摄影师', '很好', '\0', null, '2015-07-31 12:21:23', null, '800', null, null);
INSERT INTO `trade_record` VALUES ('72', '800', '1718', '摄影师', '你好', '\0', null, '2015-07-31 12:21:44', null, '800', null, null);
INSERT INTO `trade_record` VALUES ('73', '800', '1718', '摄影师', '比较好姐姐', '\0', null, '2015-07-31 12:26:24', null, '800', null, null);
INSERT INTO `trade_record` VALUES ('74', '800', '1718', '摄影师', '很傲', '\0', null, '2015-07-31 12:41:34', null, '800', null, null);
INSERT INTO `trade_record` VALUES ('75', '802', '1682', '中式面点师（中级）', '课程很好', '\0', null, '2015-07-31 15:11:24', null, '802', null, null);
INSERT INTO `trade_record` VALUES ('76', '800', '1723', '摄影师', '', '\0', null, '2015-08-03 11:33:30', null, '800', null, null);
INSERT INTO `trade_record` VALUES ('77', '800', '1723', '摄影师', '', '\0', null, '2015-08-03 11:33:58', null, '800', null, null);
INSERT INTO `trade_record` VALUES ('78', '800', '1723', '摄影师', '很好', '\0', null, '2015-08-03 11:37:25', null, '800', null, null);
INSERT INTO `trade_record` VALUES ('79', '800', '1723', '摄影师', '', '\0', null, '2015-08-03 12:39:01', null, '800', null, null);
INSERT INTO `trade_record` VALUES ('80', '800', '1723', '摄影师', '特别好', '\0', null, '2015-08-03 18:33:39', null, '800', null, null);
INSERT INTO `trade_record` VALUES ('81', '800', '1723', '摄影师', '非常好', '\0', null, '2015-08-03 18:38:58', null, '800', null, null);

-- ----------------------------
-- View structure for v_jiaoshijibenqingkuang
-- ----------------------------
DROP VIEW IF EXISTS `v_jiaoshijibenqingkuang`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_jiaoshijibenqingkuang` AS select `tmp`.`id` AS `id`,`tmp`.`name` AS `name`,`tmp`.`sex` AS `sex`,`tmp`.`national` AS `national`,`tmp`.`card_no` AS `card_no`,`tmp`.`email` AS `email`,`tmp`.`phone` AS `phone`,`tmp`.`birthplace` AS `birthplace`,`tmp`.`face` AS `face`,`tmp`.`address` AS `address`,`tmp`.`nationality` AS `nationality`,`tmp`.`health` AS `health` from `top_member`.`person` `tmp` where (`tmp`.`type` = 2) ;

-- ----------------------------
-- View structure for v_xueshengjibenxinxibiao
-- ----------------------------
DROP VIEW IF EXISTS `v_xueshengjibenxinxibiao`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_xueshengjibenxinxibiao` AS select `tmp`.`id` AS `id`,`tmp`.`name` AS `name`,`tmp`.`sex` AS `sex`,`tmp`.`national` AS `national`,`tmp`.`card_no` AS `card_no`,`tmp`.`email` AS `email`,`tmp`.`phone` AS `phone`,`tmp`.`birthplace` AS `birthplace`,`tmp`.`face` AS `face`,`tmp`.`address` AS `address`,`tmp`.`nationality` AS `nationality`,`tmp`.`health` AS `health` from `top_member`.`person` `tmp` where (`tmp`.`type` = 1) ;

-- ----------------------------
-- View structure for vwJiaoShiHuiZong
-- ----------------------------
DROP VIEW IF EXISTS `vwJiaoShiHuiZong`;
CREATE ALGORITHM=UNDEFINED DEFINER=`drms`@`%` SQL SECURITY DEFINER VIEW `vwJiaoShiHuiZong` AS select `top_member`.`person`.`id` AS `id`,`top_member`.`person`.`name` AS `name`,`top_member`.`person`.`sex` AS `sex`,`top_member`.`person`.`birthday` AS `birthday`,(select sum(`top_jiaowu`.`course_course`.`classHour`) AS `classHourTotal` from `top_jiaowu`.`course_course` where `top_jiaowu`.`course_course`.`id` in (select `top_jiaowu`.`course_curriculumdetail`.`curriculum_id` from `top_jiaowu`.`course_curriculumdetail` where (`top_jiaowu`.`course_curriculumdetail`.`teacher_id` = `top_member`.`person`.`id`))) AS `courseHours`,(select sum(`top_jiaowu`.`course_course`.`classHour`) AS `classHourTotal` from `top_jiaowu`.`course_course` where `top_jiaowu`.`course_course`.`id` in (select `top_jiaowu`.`course_curriculumdetail`.`curriculum_id` from `top_jiaowu`.`course_curriculumdetail` where ((`top_jiaowu`.`course_curriculumdetail`.`teacher_id` = `top_member`.`person`.`id`) and (`top_jiaowu`.`course_curriculumdetail`.`date` <= now())))) AS `completeHours`,((select count(0) from `top_jiaowu`.`dic_attendance` `att` where (`att`.`personId` in (select `top_member`.`person`.`id` from `top_member`.`person` where (`top_member`.`person`.`type` = 2)) and (ifnull(`att`.`isLate`,0) <> 1) and (ifnull(`att`.`isAbsenteeism`,0) <> 1) and (ifnull(`att`.`isLeaveEarly`,0) <> 1))) / (select count(0) from `top_jiaowu`.`course_curriculumdetail` `detail` where ((`detail`.`teacher_id` = `top_member`.`person`.`id`) and (`detail`.`date` <= now())))) AS `normalRatio`,((select count(0) from `top_jiaowu`.`dic_attendance` `att` where (`att`.`personId` in (select `top_member`.`person`.`id` from `top_member`.`person` where (`top_member`.`person`.`type` = 2)) and (ifnull(`att`.`isLate`,0) = 1) and (ifnull(`att`.`isAbsenteeism`,0) <> 1) and (ifnull(`att`.`isLeaveEarly`,0) <> 1))) / (select count(0) from `top_jiaowu`.`course_curriculumdetail` `detail` where ((`detail`.`teacher_id` = `top_member`.`person`.`id`) and (`detail`.`date` <= now())))) AS `lateRatio`,((select count(0) from `top_jiaowu`.`dic_attendance` `att` where (`att`.`personId` in (select `top_member`.`person`.`id` from `top_member`.`person` where (`top_member`.`person`.`type` = 2)) and (ifnull(`att`.`isLate`,0) <> 1) and (ifnull(`att`.`isAbsenteeism`,0) = 1) and (ifnull(`att`.`isLeaveEarly`,0) <> 1))) / (select count(0) from `top_jiaowu`.`course_curriculumdetail` `detail` where ((`detail`.`teacher_id` = `top_member`.`person`.`id`) and (`detail`.`date` <= now())))) AS `absenceRatio` from `top_member`.`person` ;

-- ----------------------------
-- View structure for vwKeChengKaoCha
-- ----------------------------
DROP VIEW IF EXISTS `vwKeChengKaoCha`;
CREATE ALGORITHM=UNDEFINED DEFINER=`drms`@`%` SQL SECURITY DEFINER VIEW `vwKeChengKaoCha` AS select `curriculum`.`id` AS `courseId`,`curriculum`.`name` AS `courseName`,`curriculum`.`periodTime` AS `periodTime`,`b`.`classHour` AS `classHour`,(select count(0) from `course_curriculumdetail` `d` where ((`d`.`endTime` < curdate()) and (`d`.`curriculum_id` = `curriculum`.`course_id`))) AS `completeHour`,`fngetNormalRatio`(`curriculum`.`course_id`) AS `normalRatio`,(`fnGetLateCount`(`curriculum`.`course_id`) / `fnGetTotallyCoursePersonCount`(`curriculum`.`course_id`)) AS `lateRatio`,(`fnGetAbsenceCount`(`curriculum`.`course_id`) / `fnGetTotallyCoursePersonCount`(`curriculum`.`course_id`)) AS `absenceRatio` from ((`course_curriculum` `curriculum` join `course_course` `b` on((`curriculum`.`course_id` = `b`.`id`))) join `course_curriculumdetail` `detail` on((`detail`.`curriculum_id` = `b`.`id`))) ;

-- ----------------------------
-- Procedure structure for spPlanBuildByHand
-- ----------------------------
DROP PROCEDURE IF EXISTS `spPlanBuildByHand`;
DELIMITER ;;
CREATE DEFINER=`top`@`%` PROCEDURE `spPlanBuildByHand`()
BEGIN
    DECLARE isOver INT DEFAULT FALSE;	#遍历数据结束标志
  
		DECLARE curId INT;#课程表ID
		DECLARE planName VARCHAR(50);#课程表课件ID
		DECLARE planId INT;#巡检计划主表ID

    DECLARE curPlan CURSOR FOR #游标
			SELECT cur.id
				,cur.`name`
			FROM course_curriculum cur
			WHERE IFNULL(cur.isDel,0) = 0
			;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET isOver = TRUE;	#将结束标志绑定到游标
    OPEN curPlan;	#打开游标
    read_loop: LOOP	#开始循环
        -- 提取游标里的数据，这里只有一个，多个的话也一样；
        FETCH curPlan INTO 
    			curId
					,planName
    			;

        -- 声明结束的时候
        IF isOver THEN
          LEAVE read_loop;
        END IF;  

				-- 主表
				IF EXISTS (SELECT 1 FROM course_plan WHERE curriculum_id = curId AND IFNULL(isDel,0) = 0) THEN
					SELECT id INTO planId FROM course_plan 
						WHERE curriculum_id = curId AND IFNULL(isDel,0) = 0
					;
				ELSE
					INSERT INTO course_plan (`name`, curriculum_id, isDel, isUsed, createTime, createUser)
						VALUES (CONCAT(planName,'巡检计划'), curId, 0, 1, NOW(), 6)
					;

					SELECT @@IDENTITY INTO planId;
				END IF;
 
				-- 子表
				INSERT INTO course_plandetail (plan_id, inspection_id, curriculum_id, isDel, isUsed, createTime, createUser)
				-- VALUES (planId, headTeacherId, curDetailId, 0, 1, NOW(), 6)
				SELECT planId, headteacher_id, id, 0, 1, NOW(), 6
				FROM course_curriculumdetail
				WHERE curriculum_id = curId
					AND ID NOT IN (
						SELECT curriculum_id 
						FROM course_plandetail 
						WHERE plan_id = planId 
							AND IFNULL(isdel,0)=0
					);

  END LOOP;

  -- 关闭游标
  CLOSE curPlan;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for spStudentAttendanceBuild
-- ----------------------------
DROP PROCEDURE IF EXISTS `spStudentAttendanceBuild`;
DELIMITER ;;
CREATE DEFINER=`top`@`%` PROCEDURE `spStudentAttendanceBuild`(studentIdNum VARCHAR(50)
	,attDateTime VARCHAR(50))
spb:BEGIN
		/*
	功能：学生考勤明细生成BY学生身份证、指纹打卡时间
	注意：当前处理逻辑为：一天只有一堂课的情况，2015-07-29已跟侯晓娜确定。
	2015-07-29
	**/

	-- 传入的考勤时间相关
	SET @attDate = LEFT(attDateTime, 10);
	SET @currentDate = CURDATE();
	SET @attTime = RIGHT(attDateTime, 8);

	-- 一次连续打卡频率（分钟）
	SET @scanningRate = 5;

	-- 身份证去除前后空格
	SET @idNum = trim(leading ' ' from studentIdNum);

	-- 根据身份证查询当前考勤人员会员ID
	SET @personId = 0;

	-- 当前年度
	SET @currentYearId = '';

	-- 需学习课程内容信息
	SET @curriculumDetailId = 0;
	SET @curriculumDetailBeginTime = '';
	SET @curriculumDetailEndTime = '';
	SET @isAbsenteeism = 0;-- 是否旷课
	SET @isLate = 0; -- 是否迟到
	SET @isLeaveEarly = 0;-- 是否早退

	-- 返回信息
	SET @excuteResult = 1;-- 执行结果。0：失败，1：成功。
	SET @excuteMsg = '';-- 执行消息。

	-- 查询当前考勤人员会员ID
	SELECT p.id INTO @personId
	FROM top_member.person p
	-- INNER JOIN top_member.`person` u ON u.sys_person_id = p.id
	WHERE trim(leading ' ' from p.card_no) = @idNum 
		AND IFNULL(p.card_type,0) = 1
	;

	-- 返回信息
	IF IFNULL(@personId,0) <= 0 THEN
		SET @excuteResult = 0;
		SET @excuteMsg = '人员不存在！';

		SELECT @excuteResult AS excuteResult, @excuteMsg AS excuteMsg;

		LEAVE spb;
	END IF;

	-- 查询当前年度ID
	SELECT id INTO @currentYearId
	FROM course_year
	WHERE IFNULL(isDel,0) = 0
		AND IFNULL(isCurrent,0) = 1
	;

	-- 返回信息
	IF IFNULL(@currentYearId,0) <= 0 THEN
		SET @excuteResult = 0;
		SET @excuteMsg = '未设置当前年度！';

		SELECT @excuteResult AS excuteResult, @excuteMsg AS excuteMsg;

		LEAVE spb;
	END IF;

	
	-- 获取今天需要学习的课程内容相关信息
	SELECT curd.id
		,RIGHT(curd.beginTime,8)
		,RIGHT(curd.endTime,8)
	INTO @curriculumDetailId
		,@curriculumDetailBeginTime
		,@curriculumDetailEndTime
	FROM school_selection s
	INNER JOIN course_curriculum cur ON s.curriculum_id = cur.id
	INNER JOIN course_curriculumdetail curd ON cur.id = curd.curriculum_id
	WHERE IFNULL(cur.isDel,0) = 0
		AND s.student_id = @personId
		AND LEFT(date,10) = @attDate
	LIMIT 0,1
	;

	-- 返回信息
	IF IFNULL(@curriculumDetailId,0) <= 0 THEN
		SET @excuteResult = 0;
		SET @excuteMsg = '该人员没有今天要学习/教授的课程！';

		SELECT @excuteResult AS excuteResult, @excuteMsg AS excuteMsg;

		LEAVE spb;
	END IF;


	SET @attendanceId = 0;
	SET @isExists = 0;

	IF NOT EXISTS (
			SELECT 1 
			FROM dic_attendance 
			WHERE IFNULL(isDel,0) = 0 
			AND idNum = @idNum
			AND personId = @personId
			AND course_curriculumdetail_id = @curriculumDetailId
		) THEN
		SET @isExists = 1;
	ELSE
		SELECT id INTO @attendanceId
		FROM dic_attendance
		WHERE IFNULL(IsDel,0) = 0
			AND idNum = @idNum
			AND personId = @personId
			AND course_curriculumdetail_id = @curriculumDetailId
		;
	END IF;



	-- 正常上课
	IF @isExists = 1 AND @attTime <= @curriculumDetailBeginTime THEN
		INSERT INTO dic_attendance (idNum, personId, onScanningTime, offScanningTime, course_curriculumdetail_id, 
			isLate, isLeaveEarly, isAbsenteeism, createTime, createUser, isUsed, isDel)
		VALUES (@idNum, @personId, CONCAT(@currentDate,' ',@attTime), NULL, @curriculumDetailId
			,0, 1, 0, NOW(), @personId, 1, 0
		)
		;
	END IF;
	-- 迟到
	IF @isExists = 1 AND @attTime > @curriculumDetailBeginTime AND @attTime < @curriculumDetailEndTime THEN
		INSERT INTO dic_attendance (idNum, personId, onScanningTime, offScanningTime, course_curriculumdetail_id, 
			isLate, isLeaveEarly, isAbsenteeism, createTime, createUser, isUsed, isDel)
		VALUES (@idNum, @personId, CONCAT(@currentDate,' ',@attTime), NULL, @curriculumDetailId
			,1, 1, 0, NOW(), @personId, 1, 0
		)
		;
	END IF;
	-- 缺勤
	IF @isExists = 1 AND @attTime >= @curriculumDetailEndTime THEN
		INSERT INTO dic_attendance (idNum, personId, onScanningTime, offScanningTime, course_curriculumdetail_id, 
			isLate, isLeaveEarly, isAbsenteeism, createTime, createUser, isUsed, isDel)
		VALUES (@idNum, @personId, NULL, CONCAT(@currentDate,' ',@attTime), @curriculumDetailId
			,0, 0, 1, NOW(), @personId, 1, 0
		)
		;
	END IF;

	-- 正常上课
	IF @isExists = 0 AND @attTime <= @curriculumDetailBeginTime THEN
		UPDATE dic_attendance SET onScanningTime = CONCAT(@currentDate,' ',@attTime)
			,isLate = 0
			,isLeaveEarly = 1
			,isAbsenteeism = 0
		WHERE id = @attendanceId
		;
	END IF;
	-- 早退
	IF @isExists = 0 AND @attTime > @curriculumDetailBeginTime AND @attTime < @curriculumDetailEndTime THEN
		UPDATE dic_attendance SET offScanningTime = CONCAT(@currentDate,' ',@attTime)
			,isLeaveEarly = 1
			,isAbsenteeism = 0
		WHERE id = @attendanceId
		;
	END IF;
	-- 缺勤
	IF @isExists = 0 AND @attTime >= @curriculumDetailEndTime THEN
		UPDATE dic_attendance SET offScanningTime = CONCAT(@currentDate,' ',@attTime)
			,isAbsenteeism = 1
		WHERE id = @attendanceId
		;
	END IF;

	-- 返回信息
	IF IFNULL(@curriculumDetailId,0) > 0 THEN
		SET @excuteResult = 0;
		SET @excuteMsg = '考勤信息存储成功！';

		SELECT @excuteResult AS excuteResult, @excuteMsg AS excuteMsg;

		LEAVE spb;
	END IF;

END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for chuqinlv
-- ----------------------------
DROP FUNCTION IF EXISTS `chuqinlv`;
DELIMITER ;;
CREATE DEFINER=`drms`@`%` FUNCTION `chuqinlv`(`scanningTime` datetime,`id` int) RETURNS float
BEGIN
	#Routine body goes here...

	RETURN 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fnGetAbsenceCount
-- ----------------------------
DROP FUNCTION IF EXISTS `fnGetAbsenceCount`;
DELIMITER ;;
CREATE DEFINER=`drms`@`%` FUNCTION `fnGetAbsenceCount`(`courseId` int) RETURNS int(11)
BEGIN
	#Routine body goes here... luke
	SET @personCount = 0;

#缺勤率分子 p
select count(*) into @personCount from dic_attendance att where att.course_curriculumdetail_id in (
	select detail.id from course_curriculumdetail detail where detail.curriculum_id IN (
		select id from course_curriculum curr where curr.course_id = courseId
	)
)and IFNULL(att.isLate, 0) <> 1 and IFNULL(att.isAbsenteeism, 0) = 1 and IFNULL(att.isLeaveEarly, 0) <> 1;

	RETURN @personCount;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fnGetLateCount
-- ----------------------------
DROP FUNCTION IF EXISTS `fnGetLateCount`;
DELIMITER ;;
CREATE DEFINER=`drms`@`%` FUNCTION `fnGetLateCount`(`courseId` int) RETURNS int(11)
BEGIN
	#Routine body goes here... luke
	SET @personCount = 0;

	#迟到率分子 n
select count(*) into @personCount from dic_attendance att where att.course_curriculumdetail_id in (
	select detail.id from course_curriculumdetail detail where detail.curriculum_id IN (
		select id from course_curriculum curr where curr.course_id = courseId
	)
)and IFNULL(att.isLate, 0) = 1 and IFNULL(att.isAbsenteeism, 0) <> 1 and IFNULL(att.isLeaveEarly, 0) <> 1;

	RETURN @personCount;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fnGetLatePersonCount
-- ----------------------------
DROP FUNCTION IF EXISTS `fnGetLatePersonCount`;
DELIMITER ;;
CREATE DEFINER=`top`@`%` FUNCTION `fnGetLatePersonCount`(
	courseId INT -- 课程ID
	,yearId INT -- 课程年度
) RETURNS int(11)
BEGIN

	SET @personCount = 0;

	SELECT COUNT(DISTINCT student_id) INTO @personCount
	FROM (
		SELECT m.student_id
		FROM (
			SELECT scur.id AS curriculumId
				,s.student_id
				,LEFT(scan.scanningTime,10) AS scanningDate
				,MIN(RIGHT(scan.scanningTime,8)) AS minScanningTime
			FROM school_selection s
			INNER JOIN course_curriculum scur ON s.curriculum_id = scur.id
			INNER JOIN (
				SELECT u.id AS memberId, patte.scanningTime
				FROM top_member.person p
				INNER JOIN top_member.`user` u ON u.sys_person_id = p.id
				INNER JOIN dic_attendance patte ON p.card_no = patte.idNum AND IFNULL(p.card_type,0) = 1
			) AS scan ON s.student_id = scan.memberId
			WHERE IFNULL(s.isDel,0) = 0
				AND (IFNULL(courseId,0) = 0  OR scur.id = courseId)
				AND (IFNULL(yearId,0) = 0  OR scur.year_id = yearId)
			GROUP BY s.student_id
				,LEFT(scan.scanningTime,10)
				,scur.id
		) AS m
		INNER JOIN (
			SELECT cur.id AS curriculumId
				,LEFT(curd.date,10) AS curDate
				,RIGHT(curd.beginTime,8) AS beginTime
				,RIGHT(curd.endTime,8) AS endTime
			FROM course_curriculumdetail curd
			INNER JOIN course_curriculum cur ON curd.curriculum_id = cur.id
			WHERE IFNULL(cur.isDel,0) = 0
				AND (IFNULL(courseId,0) = 0  OR cur.id = courseId)
				AND (IFNULL(yearId,0) = 0  OR cur.year_id = yearId)
		) d ON m.curriculumId = d.curriculumId
			AND m.scanningDate = d.curDate
			AND m.minScanningTime > d.beginTime
	) tt
	;

	RETURN @personCount;

END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fnGetLeaveEarlyCount
-- ----------------------------
DROP FUNCTION IF EXISTS `fnGetLeaveEarlyCount`;
DELIMITER ;;
CREATE DEFINER=`drms`@`%` FUNCTION `fnGetLeaveEarlyCount`(`courseId` int) RETURNS int(11)
BEGIN
	#Routine body goes here... luke
	SET @personCount = 0;

	#迟到率分子 n
select count(*) into @personCount from dic_attendance att where att.course_curriculumdetail_id in (
	select detail.id from course_curriculumdetail detail where detail.curriculum_id IN (
		select id from course_curriculum curr where curr.course_id = courseId
	)
)and IFNULL(att.isLate, 0) <> 1 and IFNULL(att.isAbsenteeism, 0) <> 1 and IFNULL(att.isLeaveEarly, 0) = 1;

	RETURN @personCount;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fnGetNormalCount
-- ----------------------------
DROP FUNCTION IF EXISTS `fnGetNormalCount`;
DELIMITER ;;
CREATE DEFINER=`drms`@`%` FUNCTION `fnGetNormalCount`(`courseId` int) RETURNS int(11)
BEGIN
	#Routine body goes here... luke
	SET @personCount = 0;

	#出勤率分子 m
	select count(*) into @personCount 
	from dic_attendance att 
	where att.course_curriculumdetail_id in (
		select detail.id 
		from course_curriculumdetail detail 
		where detail.curriculum_id IN (
			select id from course_curriculum curr where curr.course_id = courseId
			)
	) and IFNULL(att.isLate, 0) <> 1 and IFNULL(att.isAbsenteeism, 0) <> 1 and IFNULL(att.isLeaveEarly, 0) <> 1;

	RETURN @personCount;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fnGetNormalRatio
-- ----------------------------
DROP FUNCTION IF EXISTS `fnGetNormalRatio`;
DELIMITER ;;
CREATE DEFINER=`drms`@`%` FUNCTION `fngetNormalRatio`(`courseId` int) RETURNS decimal(18,2)
BEGIN
	#Routine body goes here... luke

	SET @ratio = fnGetNormalCount(courseId)/fnGetTotallyCoursePersonCount(courseId);

	RETURN @ratio;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fnGetStudentAbsenceRatio
-- ----------------------------
DROP FUNCTION IF EXISTS `fnGetStudentAbsenceRatio`;
DELIMITER ;;
CREATE DEFINER=`drms`@`%` FUNCTION `fnGetStudentAbsenceRatio`(`StudentId` int) RETURNS float
BEGIN
	#Routine body goes here...

	set @ret =0;

	SELECT ((select count(*) from dic_attendance att where att.personid = StudentId and att.isAbsenteeism = 1 and att.isLate <>1 and att.isLeaveEarly <>1)/
	(select count(*) from school_selection selection where selection.student_id = StudentId)) INTO @ret;

	RETURN @ret;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fnGetStudentLateRatio
-- ----------------------------
DROP FUNCTION IF EXISTS `fnGetStudentLateRatio`;
DELIMITER ;;
CREATE DEFINER=`drms`@`%` FUNCTION `fnGetStudentLateRatio`(`StudentId` int) RETURNS float
BEGIN
	#Routine body goes here...

	set @ret =0;

	SELECT ((select count(*) from dic_attendance att where att.personid = StudentId and att.isAbsenteeism <> 1 and att.isLate = 1 and att.isLeaveEarly <>1)/
	(select count(*) from school_selection selection where selection.student_id = StudentId)) INTO @ret;

	RETURN @ret;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fnGetStudentLeaveEarlyRatio
-- ----------------------------
DROP FUNCTION IF EXISTS `fnGetStudentLeaveEarlyRatio`;
DELIMITER ;;
CREATE DEFINER=`drms`@`%` FUNCTION `fnGetStudentLeaveEarlyRatio`(`StudentId` int) RETURNS float
BEGIN
	#Routine body goes here...

	set @ret =0;

	SELECT ((select count(*) from dic_attendance att where att.personid = StudentId and att.isAbsenteeism <> 1 and att.isLate <>1 and att.isLeaveEarly =1)/
	(select count(*) from school_selection selection where selection.student_id = StudentId)) INTO @ret;

	RETURN @ret;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fnGetStudentNormalRatio
-- ----------------------------
DROP FUNCTION IF EXISTS `fnGetStudentNormalRatio`;
DELIMITER ;;
CREATE DEFINER=`drms`@`%` FUNCTION `fnGetStudentNormalRatio`(`StudentId` int) RETURNS float
BEGIN
	#Routine body goes here...

	set @ret =0;

	SELECT ((select count(*) from dic_attendance att where att.personid = StudentId and att.isAbsenteeism <> 1 and att.isLate <>1 and att.isLeaveEarly <>1)/
	(select count(*) from school_selection selection where selection.student_id = StudentId)) INTO @ret;

	RETURN @ret;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fnGetStudyPersonCount
-- ----------------------------
DROP FUNCTION IF EXISTS `fnGetStudyPersonCount`;
DELIMITER ;;
CREATE DEFINER=`top`@`%` FUNCTION `fnGetStudyPersonCount`(
	courseId INT -- 课程ID
	,yearId INT -- 课程年度
) RETURNS int(11)
BEGIN

	SET @personCount = 0;

	SELECT COUNT(*) INTO @personCount
	FROM (
		SELECT scur.id AS curriculumId
			,s.student_id
			,LEFT(scan.scanningTime,10) AS scanningDate
			,MIN(RIGHT(scan.scanningTime,8)) AS minScanningTime
		FROM school_selection s
		INNER JOIN course_curriculum scur ON s.curriculum_id = scur.id
		INNER JOIN (
			SELECT u.id AS memberId, patte.scanningTime
			FROM top_member.person p
			INNER JOIN top_member.`user` u ON u.sys_person_id = p.id
			INNER JOIN dic_attendance patte ON p.card_no = patte.idNum AND IFNULL(p.card_type,0) = 1
		) AS scan ON s.student_id = scan.memberId
		WHERE IFNULL(s.isDel,0) = 0
			AND (IFNULL(courseId,0) = 0  OR scur.id = courseId)
			AND (IFNULL(yearId,0) = 0  OR scur.year_id = yearId)
		GROUP BY s.student_id
			,LEFT(scan.scanningTime,10)
			,scur.id
	) AS m
	INNER JOIN (
		SELECT cur.id AS curriculumId
			,LEFT(curd.date,10) AS curDate
			,MAX(RIGHT(curd.beginTime,8)) AS maxBeginTime
		FROM course_curriculumdetail curd
		INNER JOIN course_curriculum cur ON curd.curriculum_id = cur.id
		WHERE IFNULL(cur.isDel,0) = 0
			AND (IFNULL(courseId,0) = 0  OR cur.id = courseId)
			AND (IFNULL(yearId,0) = 0  OR cur.year_id = yearId)
		GROUP BY LEFT(curd.date,10)
			,cur.ID
	) d ON m.curriculumId = d.curriculumId
		AND m.scanningDate = d.curDate
		AND m.minScanningTime <= d.maxBeginTime
	;

	RETURN @personCount;

END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fnGetTeacherAbsenceRatio
-- ----------------------------
DROP FUNCTION IF EXISTS `fnGetTeacherAbsenceRatio`;
DELIMITER ;;
CREATE DEFINER=`drms`@`%` FUNCTION `fnGetTeacherAbsenceRatio`(`teacherId` int) RETURNS float
BEGIN
	#Routine body goes here...
	set @ret = 0;
	select (( select count(*) from dic_attendance att where att.personId in (
SELECT id from top_member.person person where person.type =2
) and IFNULL(att.isLate, 0) <> 1 and IFNULL(att.isAbsenteeism, 0) = 1 and IFNULL(att.isLeaveEarly, 0) <> 1)/
(select count(*) from course_curriculumdetail detail where detail.teacher_id = teacherId and detail.date <= NOW())) INTO @ret;
		RETURN 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fnGetTeacherCompleteHours
-- ----------------------------
DROP FUNCTION IF EXISTS `fnGetTeacherCompleteHours`;
DELIMITER ;;
CREATE DEFINER=`drms`@`%` FUNCTION `fnGetTeacherCompleteHours`(`teacherId` int) RETURNS int(11)
BEGIN
	#Routine body goes here...

	set @ret = 0;
	SELECT SUM(classHour) INTO @ret FROM course_course where course_course.id in (
 SELECT curriculum_id from course_curriculumdetail where teacher_id = teacherId and date <= NOW() );

	RETURN @ret;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fnGetTeacherCourseHours
-- ----------------------------
DROP FUNCTION IF EXISTS `fnGetTeacherCourseHours`;
DELIMITER ;;
CREATE DEFINER=`drms`@`%` FUNCTION `fnGetTeacherCourseHours`(`teacherId` int) RETURNS int(11)
BEGIN
	#Routine body goes here...

	set @ret = 0;
	SELECT SUM(classHour) INTO @ret FROM course_course where course_course.id in (
		SELECT curriculum_id from course_curriculumdetail where teacher_id = teacherId );

	RETURN @ret;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fnGetTeacherLateRatio
-- ----------------------------
DROP FUNCTION IF EXISTS `fnGetTeacherLateRatio`;
DELIMITER ;;
CREATE DEFINER=`drms`@`%` FUNCTION `fnGetTeacherLateRatio`(`teacherId` int) RETURNS float
BEGIN
	#Routine body goes here...
	set @ret = 0;
	select (( select count(*) from dic_attendance att where att.personId in (
SELECT id from top_member.person person where person.type =2
) and IFNULL(att.isLate, 0) = 1 and IFNULL(att.isAbsenteeism, 0) <> 1 and IFNULL(att.isLeaveEarly, 0) <> 1)/
(select count(*) from course_curriculumdetail detail where detail.teacher_id = teacherId and detail.date <= NOW())) INTO @ret;
		RETURN 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fnGetTeacherNormalRatio
-- ----------------------------
DROP FUNCTION IF EXISTS `fnGetTeacherNormalRatio`;
DELIMITER ;;
CREATE DEFINER=`drms`@`%` FUNCTION `fnGetTeacherNormalRatio`(`teacherId` int) RETURNS float
BEGIN
	#Routine body goes here...
	set @ret = 0;
	select ((select count(*) from dic_attendance att where att.personId in (
		SELECT id from top_member.person person where person.type =2
	) and IFNULL(att.isLate, 0) <> 1 and IFNULL(att.isAbsenteeism, 0) <> 1 and IFNULL(att.isLeaveEarly, 0) <> 1)/
	(select count(*) from course_curriculumdetail detail where detail.teacher_id = teacherId and detail.date <= NOW())) INTO @ret;
		RETURN 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fnGetTotallyCoursePersonCount
-- ----------------------------
DROP FUNCTION IF EXISTS `fnGetTotallyCoursePersonCount`;
DELIMITER ;;
CREATE DEFINER=`drms`@`%` FUNCTION `fnGetTotallyCoursePersonCount`(`courseId` int) RETURNS int(11)
BEGIN
	#Routine body goes here... luke
	SET @personCount = 0;


#出勤率分母----有多少人选了这门课 x
#SELECT count(*) from school_selection sle where sle.curriculum_id in (
#	select curr.id from course_curriculum curr where curr.course_id = 1
#);
#出勤率分母----这门课到目前为止共多少课程 y
#select count(*) from course_curriculumdetail detail where detail.curriculum_id in (
#	select curr.id from course_curriculum curr where curr.course_id =1
#) and detail.date <= NOW();


#出勤率分母---- z = x * y 
select ((SELECT count(*) from school_selection sle where sle.curriculum_id in (
	select curr.id from course_curriculum curr where curr.course_id = courseId)
) * (select count(*) from course_curriculumdetail detail where detail.curriculum_id in (
	select curr.id from course_curriculum curr where curr.course_id =courseId
) and detail.date <= NOW())) into @personCount ;

	RETURN @personCount;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fnGetTotallyTeacherCount
-- ----------------------------
DROP FUNCTION IF EXISTS `fnGetTotallyTeacherCount`;
DELIMITER ;;
CREATE DEFINER=`drms`@`%` FUNCTION `fnGetTotallyTeacherCount`(`courseId` int) RETURNS int(11)
BEGIN
	#Routine body goes here... luke
	SET @personCount = 0;


#教师出勤率分母----有多少人选了该教师的课 x
#SELECT count(*) from school_selection sle where sle.curriculum_id in (
#	select curr.id from course_curriculum curr where curr.course_id = 1
#);
#教师出勤率分母----该教师的课到目前为止共多少课程 y
#select count(*) from course_curriculumdetail detail where detail.curriculum_id in (
#	select curr.id from course_curriculum curr where curr.course_id =1
#) and detail.date <= NOW();


#出勤率分母---- z = x * y 
select ((SELECT count(*) from school_selection sle where sle.curriculum_id in (
	select curr.id from course_curriculum curr where curr.course_id = courseId)
) * (select count(*) from course_curriculumdetail detail where detail.curriculum_id in (
	select curr.id from course_curriculum curr where curr.course_id =courseId
) and detail.date <= NOW())) into @personCount ;

	RETURN @personCount;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for GetCompleteCourseTime
-- ----------------------------
DROP FUNCTION IF EXISTS `GetCompleteCourseTime`;
DELIMITER ;;
CREATE DEFINER=`drms`@`%` FUNCTION `GetCompleteCourseTime`(`courseID` int) RETURNS int(11)
BEGIN
	
	SET @allTime = 0;

  SELECT IFNULL(SUM(abs(DATEDIFF(d.endTime,d.beginTime))),0)  INTO @allTime
  from course_curriculumdetail d 
  where LEFT(d.endTime,10) < CURDATE() and d.curriculum_id =courseID
	;

	RETURN @allTime;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for getLateCount
-- ----------------------------
DROP FUNCTION IF EXISTS `getLateCount`;
DELIMITER ;;
CREATE DEFINER=`drms`@`%` FUNCTION `getLateCount`(`courseId` int) RETURNS int(11)
BEGIN
	#Routine body goes here... luke
	SET @personCount = 0;

	#迟到率分子 n
select count(*) into @personCount from dic_attendance att where att.course_curriculumdetail_id in (
	select detail.id from course_curriculumdetail detail where detail.curriculum_id = (
		select id from course_curriculum curr where curr.course_id = courseId
	)
)and IFNULL(att.isLate, 0) = 1 and IFNULL(att.isAbsenteeism, 0) <> 1 and IFNULL(att.isLeaveEarly, 0) <> 1;

	RETURN @personCount;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for GetMaxCheckInDate
-- ----------------------------
DROP FUNCTION IF EXISTS `GetMaxCheckInDate`;
DELIMITER ;;
CREATE DEFINER=`drms`@`%` FUNCTION `GetMaxCheckInDate`(`personID` int,`dateID` date) RETURNS datetime
BEGIN
	#Routine body goes here...
  set @maxdate = '1900-01-01 00:00:00';
  select Max(onScanningTime) into @maxdate from dic_attendance a where a.personId=personID and left(onScanningTime,10)=dateID;
	RETURN @maxdate;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for GetMinCheckInDate
-- ----------------------------
DROP FUNCTION IF EXISTS `GetMinCheckInDate`;
DELIMITER ;;
CREATE DEFINER=`drms`@`%` FUNCTION `GetMinCheckInDate`(`personID` int,`dateID` date) RETURNS datetime
BEGIN
	#Routine body goes here...
  set @mindate = '1900-01-01 00:00:00';
  select Min(onScanningTime) into @mindate from dic_attendance a where a.personId=personId and left(onScanningTime,10)=dateID;
	RETURN @mindate;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for GetPeopleCountBycurriculumn_id
-- ----------------------------
DROP FUNCTION IF EXISTS `GetPeopleCountBycurriculumn_id`;
DELIMITER ;;
CREATE DEFINER=`drms`@`%` FUNCTION `GetPeopleCountBycurriculumn_id`(`curriculum_id` int) RETURNS int(11)
BEGIN
	#Routine body goes here...
  SET @PeopleCount = 0;
  SELECT count(*) into @PeopleCount from school_selection a where a.curriculum_id=curriculum_id;
	RETURN @PeopleCount;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for GetRealPeopleCountBycourse_curriculumdetail_id
-- ----------------------------
DROP FUNCTION IF EXISTS `GetRealPeopleCountBycourse_curriculumdetail_id`;
DELIMITER ;;
CREATE DEFINER=`drms`@`%` FUNCTION `GetRealPeopleCountBycourse_curriculumdetail_id`(`course_curriculumdetail_id` int) RETURNS int(11)
BEGIN
	#Routine body goes here...
  SET @RealPeopleCount = 0;
  SELECT COUNT(*) into @RealPeopleCount FROM dic_attendance a where a.course_curriculumdetail_id=course_curriculumdetail_id and isAbsenteeism=1;
	RETURN @RealPeopleCount;
END
;;
DELIMITER ;
