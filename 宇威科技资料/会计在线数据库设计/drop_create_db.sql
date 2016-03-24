-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema top_online
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema top_online
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `top_online` DEFAULT CHARACTER SET utf8 ;
USE `top_online` ;

-- -----------------------------------------------------
-- Table `top_online`.`ass_news`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`ass_news` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(200) NOT NULL,
  `publish_date` DATETIME NOT NULL COMMENT '发布日期',
  `source` VARCHAR(45) NULL DEFAULT NULL COMMENT '新闻来源（政府、学校）',
  `category` VARCHAR(45) NULL COMMENT '所属板块（继续教育、会计从业）',
  `type` INT(11) NOT NULL COMMENT '新闻类别（通知、新闻）',
  `content` VARCHAR(2000) NOT NULL COMMENT '新闻内容',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '新闻资讯';


-- -----------------------------------------------------
-- Table `top_online`.`dic_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`dic_category` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL COMMENT '体系名称（行政行业、企业、农村基层）',
  `desc` VARCHAR(45) NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '课程体系';


-- -----------------------------------------------------
-- Table `top_online`.`dic_course`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`dic_course` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL COMMENT '课程名称',
  `system` INT(2) NULL COMMENT '体系（TODO）',
  `type` VARCHAR(45) NULL DEFAULT NULL COMMENT '课程类型(TODO)',
  `desc` VARCHAR(500) NULL COMMENT '描述',
  `dic_category_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_dic_course_dic_category_idx` (`dic_category_id` ASC),
  CONSTRAINT `fk_dic_course_dic_category`
    FOREIGN KEY (`dic_category_id`)
    REFERENCES `top_online`.`dic_category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '课程表';


-- -----------------------------------------------------
-- Table `top_online`.`cedu_course`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`cedu_course` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `year` INT(11) NULL DEFAULT NULL COMMENT '课程年度',
  `region` VARCHAR(45) NULL DEFAULT NULL COMMENT '地区',
  `dic_course_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_cedu_course_dic_course1_idx` (`dic_course_id` ASC),
  CONSTRAINT `fk_cedu_course_dic_course1`
    FOREIGN KEY (`dic_course_id`)
    REFERENCES `top_online`.`dic_course` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '继续教育课程';


-- -----------------------------------------------------
-- Table `top_online`.`dic_courseware`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`dic_courseware` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL COMMENT '课件名称',
  `desc` VARCHAR(500) NULL COMMENT '课件描述',
  `video_time` INT(11) UNSIGNED ZEROFILL NOT NULL COMMENT '视频时长',
  `question_count` INT(11) UNSIGNED ZEROFILL NULL COMMENT '题目个数',
  `dic_course_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_dic_courseware_dic_course1_idx` (`dic_course_id` ASC),
  CONSTRAINT `fk_dic_courseware_dic_course1`
    FOREIGN KEY (`dic_course_id`)
    REFERENCES `top_online`.`dic_course` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '课件';


-- -----------------------------------------------------
-- Table `top_online`.`cedu_courseware`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`cedu_courseware` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `audition` TINYINT(1) NULL DEFAULT NULL COMMENT '是否可以试听',
  `try_learn` TINYINT(1) NULL DEFAULT NULL COMMENT '是否可以试学',
  `cedu_course_id` INT(11) NOT NULL,
  `dic_courseware_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_cedu_courseware_cedu_course1_idx` (`cedu_course_id` ASC),
  INDEX `fk_cedu_courseware_dic_courseware1_idx` (`dic_courseware_id` ASC),
  CONSTRAINT `fk_cedu_courseware_cedu_course1`
    FOREIGN KEY (`cedu_course_id`)
    REFERENCES `top_online`.`cedu_course` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cedu_courseware_dic_courseware1`
    FOREIGN KEY (`dic_courseware_id`)
    REFERENCES `top_online`.`dic_courseware` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '继续教育课件';


-- -----------------------------------------------------
-- Table `top_online`.`dic_teacher`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`dic_teacher` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `grade` VARCHAR(45) NULL COMMENT '等级(todo)',
  `unit` VARCHAR(45) NULL COMMENT '单位',
  `rank` VARCHAR(45) NULL COMMENT '职称',
  `desc` VARCHAR(500) NULL COMMENT '介绍',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '教师';


-- -----------------------------------------------------
-- Table `top_online`.`dic_question`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`dic_question` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `content` VARCHAR(500) NOT NULL COMMENT '题目',
  `type` INT(2) NOT NULL COMMENT '题目类型（1：判断，2：单选，3：多选）',
  `teacher_id` INT(11) NULL COMMENT '老师外键',
  `create_time` TIMESTAMP NOT NULL DEFAULT NOW() COMMENT '创建时间',
  `difficulty` INT(2) UNSIGNED ZEROFILL NULL COMMENT '难度系数（0到9）',
  `dic_teacher_id` INT(11) NOT NULL COMMENT '老师表外键',
  PRIMARY KEY (`id`),
  INDEX `fk_dic_question_dic_teacher1_idx` (`dic_teacher_id` ASC),
  CONSTRAINT `fk_dic_question_dic_teacher1`
    FOREIGN KEY (`dic_teacher_id`)
    REFERENCES `top_online`.`dic_teacher` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '题目';


-- -----------------------------------------------------
-- Table `top_online`.`dic_courseware_content`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`dic_courseware_content` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `type` INT(11) NOT NULL COMMENT '内容类型（1：视频，2：题目）',
  `foreign_id` INT(11) NOT NULL COMMENT '视频表、题目表外键',
  `dic_courseware_id` INT(11) NOT NULL,
  `dic_question_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_dic_courseware_content_dic_courseware1_idx` (`dic_courseware_id` ASC),
  INDEX `fk_dic_courseware_content_dic_question1_idx` (`dic_question_id` ASC),
  CONSTRAINT `fk_dic_courseware_content_dic_courseware1`
    FOREIGN KEY (`dic_courseware_id`)
    REFERENCES `top_online`.`dic_courseware` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_dic_courseware_content_dic_question1`
    FOREIGN KEY (`dic_question_id`)
    REFERENCES `top_online`.`dic_question` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '课件内容';


-- -----------------------------------------------------
-- Table `top_online`.`cedu_courseware_content`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`cedu_courseware_content` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `save_hour` TINYINT(1) NULL DEFAULT NULL COMMENT '是否计入课时',
  `cedu_courseware_id` INT(11) NOT NULL,
  `dic_courseware_content_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_cedu_courseware_content_cedu_courseware1_idx` (`cedu_courseware_id` ASC),
  INDEX `fk_cedu_courseware_content_dic_courseware_content1_idx` (`dic_courseware_content_id` ASC),
  CONSTRAINT `fk_cedu_courseware_content_cedu_courseware1`
    FOREIGN KEY (`cedu_courseware_id`)
    REFERENCES `top_online`.`cedu_courseware` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cedu_courseware_content_dic_courseware_content1`
    FOREIGN KEY (`dic_courseware_content_id`)
    REFERENCES `top_online`.`dic_courseware_content` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '继续教育课件内容';


-- -----------------------------------------------------
-- Table `top_online`.`his_cedu_exam`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`his_cedu_exam` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL COMMENT '试卷名称',
  `total_time` FLOAT UNSIGNED ZEROFILL NOT NULL COMMENT '总时长',
  `total_score` FLOAT UNSIGNED ZEROFILL NOT NULL COMMENT '总分数',
  `desc` VARCHAR(45) NULL COMMENT '试卷描述',
  `evaluation_name` VARCHAR(45) NULL COMMENT '评测名称（1：及格，2：良好，3：满分）',
  `evaluation_score` FLOAT NULL,
  `user_id` INT(11) NOT NULL COMMENT '用户表外键',
  `begin_time` DATETIME NOT NULL COMMENT '考试开始时间',
  `end_time` DATETIME NOT NULL COMMENT '考试结束时间',
  `type` INT(2) UNSIGNED NOT NULL COMMENT '考试类型（1：正式，2：模拟）',
  `year` INT(5) UNSIGNED NULL COMMENT '年度',
  `user_score` FLOAT NOT NULL COMMENT '用户考试得分',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '试卷';


-- -----------------------------------------------------
-- Table `top_online`.`his_cedu_exam_role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`his_cedu_exam_role` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL COMMENT '组名称',
  `desc` VARCHAR(500) NULL COMMENT '组描述',
  `his_cedu_exam_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_his_cedu_exam_role_his_cedu_exam1_idx` (`his_cedu_exam_id` ASC),
  CONSTRAINT `fk_his_cedu_exam_role_his_cedu_exam1`
    FOREIGN KEY (`his_cedu_exam_id`)
    REFERENCES `top_online`.`his_cedu_exam` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '试卷内容组卷规则';


-- -----------------------------------------------------
-- Table `top_online`.`his_cedu_exam_question`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`his_cedu_exam_question` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `content` VARCHAR(500) NOT NULL COMMENT '题目',
  `type` INT(2) UNSIGNED NOT NULL COMMENT '题目类型（1：判断，2：单选，3：多选）',
  `teacher_id` INT(11) NULL COMMENT '老师外键',
  `create_time` TIMESTAMP NOT NULL DEFAULT NOW() COMMENT '创建时间',
  `difficulty` FLOAT NULL COMMENT '难度系数',
  `score` INT(11) UNSIGNED ZEROFILL NOT NULL COMMENT '分值',
  `limit_time` INT(11) UNSIGNED ZEROFILL NULL COMMENT '限制时间',
  `seq` INT(11) UNSIGNED ZEROFILL NULL COMMENT '序号',
  `his_cedu_exam_role_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_his_cedu_exam_question_his_cedu_exam_role1_idx` (`his_cedu_exam_role_id` ASC),
  CONSTRAINT `fk_his_cedu_exam_question_his_cedu_exam_role1`
    FOREIGN KEY (`his_cedu_exam_role_id`)
    REFERENCES `top_online`.`his_cedu_exam_role` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '试卷题目';


-- -----------------------------------------------------
-- Table `top_online`.`his_cedu_exam_option`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`his_cedu_exam_option` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `content` VARCHAR(500) NOT NULL COMMENT '选项内容',
  `seq` INT(11) UNSIGNED ZEROFILL NULL COMMENT '选项序号',
  `answer` TINYINT(4) NOT NULL COMMENT '是否是正确答案',
  `his_cedu_exam_question_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_his_cedu_exam_option_his_cedu_exam_question1_idx` (`his_cedu_exam_question_id` ASC),
  CONSTRAINT `fk_his_cedu_exam_option_his_cedu_exam_question1`
    FOREIGN KEY (`his_cedu_exam_question_id`)
    REFERENCES `top_online`.`his_cedu_exam_question` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '题目选项';


-- -----------------------------------------------------
-- Table `top_online`.`his_cedu_exam_resolution`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`his_cedu_exam_resolution` (
  `his_cedu_exam_question_id` INT(11) NOT NULL,
  `content` VARCHAR(500) NOT NULL COMMENT '解析内容',
  PRIMARY KEY (`his_cedu_exam_question_id`),
  INDEX `fk_cedu_exam_question_resolution_cedu_exam_question1_idx` (`his_cedu_exam_question_id` ASC),
  CONSTRAINT `fk_cedu_exam_question_resolution_cedu_exam_question1`
    FOREIGN KEY (`his_cedu_exam_question_id`)
    REFERENCES `top_online`.`his_cedu_exam_question` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '题目解析';


-- -----------------------------------------------------
-- Table `top_online`.`cedu_region`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`cedu_region` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `province` VARCHAR(100) NULL COMMENT '省份',
  `city` VARCHAR(100) NULL DEFAULT NULL COMMENT '城市',
  `street` VARCHAR(200) NULL DEFAULT NULL COMMENT '街道',
  `dic_course_id` INT(11) NOT NULL COMMENT '课程表外键',
  PRIMARY KEY (`id`),
  INDEX `fk_cedu_region_dic_course1_idx` (`dic_course_id` ASC),
  CONSTRAINT `fk_cedu_region_dic_course1`
    FOREIGN KEY (`dic_course_id`)
    REFERENCES `top_online`.`dic_course` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '继续教育地区';


-- -----------------------------------------------------
-- Table `top_online`.`cedu_video_pop`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`cedu_video_pop` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `play_time` INT(11) NULL DEFAULT NULL COMMENT '视频播放时间',
  `question_id` INT(11) NULL DEFAULT NULL COMMENT '题目外键',
  `cedu_courseware_content_id` INT(11) NOT NULL,
  `dic_question_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_cedu_video_pop_cedu_courseware_content1_idx` (`cedu_courseware_content_id` ASC),
  INDEX `fk_cedu_video_pop_dic_question1_idx` (`dic_question_id` ASC),
  CONSTRAINT `fk_cedu_video_pop_cedu_courseware_content1`
    FOREIGN KEY (`cedu_courseware_content_id`)
    REFERENCES `top_online`.`cedu_courseware_content` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cedu_video_pop_dic_question1`
    FOREIGN KEY (`dic_question_id`)
    REFERENCES `top_online`.`dic_question` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '继续教育视频弹出内容';


-- -----------------------------------------------------
-- Table `top_online`.`cedu_year`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`cedu_year` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL COMMENT '年度名称',
  `desc` VARCHAR(500) NULL COMMENT '年度报表',
  `total_time` INT(4) ZEROFILL UNSIGNED NOT NULL DEFAULT '24' COMMENT '总课时（默认为24课时）',
  `default` TINYINT(1) NOT NULL COMMENT '是否是默认年度',
  `dic_course_id` INT(11) NOT NULL COMMENT '课程表外键',
  PRIMARY KEY (`id`),
  INDEX `fk_cedu_year_dic_course1_idx` (`dic_course_id` ASC),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC),
  CONSTRAINT `fk_cedu_year_dic_course1`
    FOREIGN KEY (`dic_course_id`)
    REFERENCES `top_online`.`dic_course` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '继续教育年度';


-- -----------------------------------------------------
-- Table `top_online`.`dic_question_bank`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`dic_question_bank` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL COMMENT '题库名称题库名称',
  `count` INT(5) ZEROFILL UNSIGNED NULL COMMENT '题目个数',
  `desc` VARCHAR(500) NULL COMMENT '题库描述',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '题库';


-- -----------------------------------------------------
-- Table `top_online`.`dic_question_bank_item`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`dic_question_bank_item` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `question_id` INT(11) NULL DEFAULT NULL COMMENT '题目主键',
  `dic_question_bank_id` INT(11) NOT NULL,
  `dic_question_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`, `dic_question_id`),
  INDEX `fk_dic_question_bank_item_dic_question_bank1_idx` (`dic_question_bank_id` ASC),
  INDEX `fk_dic_question_bank_item_dic_question1_idx` (`dic_question_id` ASC),
  CONSTRAINT `fk_dic_question_bank_item_dic_question_bank1`
    FOREIGN KEY (`dic_question_bank_id`)
    REFERENCES `top_online`.`dic_question_bank` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_dic_question_bank_item_dic_question1`
    FOREIGN KEY (`dic_question_id`)
    REFERENCES `top_online`.`dic_question` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '题库题目';


-- -----------------------------------------------------
-- Table `top_online`.`dic_option`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`dic_option` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `content` VARCHAR(500) NOT NULL COMMENT '选项内容',
  `seq` INT(11) UNSIGNED NULL DEFAULT NULL COMMENT '选项序号',
  `answer` TINYINT(4) NOT NULL COMMENT '是否是正确答案',
  `dic_question_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_dic_option_dic_question1_idx` (`dic_question_id` ASC),
  CONSTRAINT `fk_dic_option_dic_question1`
    FOREIGN KEY (`dic_question_id`)
    REFERENCES `top_online`.`dic_question` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '题目选项';


-- -----------------------------------------------------
-- Table `top_online`.`dic_resolution`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`dic_resolution` (
  `dic_question_id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '试题表外键',
  `content` VARCHAR(500) NOT NULL COMMENT '解析内容',
  PRIMARY KEY (`dic_question_id`),
  INDEX `fk_dic_question_resolution_dic_question1_idx` (`dic_question_id` ASC),
  UNIQUE INDEX `dic_question_id_UNIQUE` (`dic_question_id` ASC),
  CONSTRAINT `fk_dic_question_resolution_dic_question1`
    FOREIGN KEY (`dic_question_id`)
    REFERENCES `top_online`.`dic_question` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '题目解析';


-- -----------------------------------------------------
-- Table `top_online`.`dic_video`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`dic_video` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `total_time` INT(5) ZEROFILL UNSIGNED NOT NULL COMMENT '总时长',
  `handouts` VARCHAR(2000) NULL COMMENT '讲义',
  `name` VARCHAR(100) NOT NULL COMMENT '视频名称',
  `desc` VARCHAR(500) NULL COMMENT '视频描述',
  `record_time` INT(5) ZEROFILL UNSIGNED NOT NULL COMMENT '录制时间(单位为妙)',
  `path` VARCHAR(50) NOT NULL COMMENT '文件名称',
  `dic_courseware_content_id` INT(11) NOT NULL COMMENT '课程内容表外键',
  `dic_teacher_id` INT(11) NOT NULL COMMENT '老师表外键',
  PRIMARY KEY (`id`),
  INDEX `fk_dic_video_dic_courseware_content1_idx` (`dic_courseware_content_id` ASC),
  INDEX `fk_dic_video_dic_teacher1_idx` (`dic_teacher_id` ASC),
  UNIQUE INDEX `path_UNIQUE` (`path` ASC),
  CONSTRAINT `fk_dic_video_dic_courseware_content1`
    FOREIGN KEY (`dic_courseware_content_id`)
    REFERENCES `top_online`.`dic_courseware_content` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_dic_video_dic_teacher1`
    FOREIGN KEY (`dic_teacher_id`)
    REFERENCES `top_online`.`dic_teacher` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '视频表';


-- -----------------------------------------------------
-- Table `top_online`.`exam_paper`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`exam_paper` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL COMMENT '试卷名称',
  `total_time` FLOAT UNSIGNED ZEROFILL NOT NULL COMMENT '总时长',
  `total_score` FLOAT UNSIGNED ZEROFILL NOT NULL COMMENT '总分数',
  `desc` VARCHAR(45) NULL DEFAULT NULL COMMENT '试卷描述',
  `evaluation_name` INT NULL COMMENT '评测名称（1：及格，2：良好，3：满分）',
  `evaluation_score` FLOAT NULL DEFAULT NULL COMMENT '评测分数',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '试卷';


-- -----------------------------------------------------
-- Table `top_online`.`exam_paper_role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`exam_paper_role` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL COMMENT '组名称',
  `desc` VARCHAR(500) NULL COMMENT '组描述',
  `seq` INT(5) NULL,
  `exam_paper_id` INT(11) NOT NULL COMMENT '试卷表外键',
  PRIMARY KEY (`id`),
  INDEX `fk_exam_paper_role_exam_paper1_idx` (`exam_paper_id` ASC),
  CONSTRAINT `fk_exam_paper_role_exam_paper1`
    FOREIGN KEY (`exam_paper_id`)
    REFERENCES `top_online`.`exam_paper` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '试卷内容组卷规则';


-- -----------------------------------------------------
-- Table `top_online`.`exam_paper_question`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`exam_paper_question` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `score` INT(11) UNSIGNED ZEROFILL NOT NULL COMMENT '分值',
  `limit_time` INT(11) ZEROFILL UNSIGNED NOT NULL COMMENT '限制时间',
  `seq` INT(11) NULL DEFAULT NULL COMMENT '序号',
  `exam_paper_role_id` INT(11) NOT NULL COMMENT '考试试卷',
  `dic_question_id` INT(11) NOT NULL COMMENT '题目表外键',
  PRIMARY KEY (`id`),
  INDEX `fk_exam_paper_question_exam_paper_role1_idx` (`exam_paper_role_id` ASC),
  INDEX `fk_exam_paper_question_dic_question1_idx` (`dic_question_id` ASC),
  CONSTRAINT `fk_exam_paper_question_exam_paper_role1`
    FOREIGN KEY (`exam_paper_role_id`)
    REFERENCES `top_online`.`exam_paper_role` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_exam_paper_question_dic_question1`
    FOREIGN KEY (`dic_question_id`)
    REFERENCES `top_online`.`dic_question` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '试卷题目';


-- -----------------------------------------------------
-- Table `top_online`.`his_cedu_record`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`his_cedu_record` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` INT(11) NOT NULL COMMENT '用户表外键',
  `year` INT(11) UNSIGNED NOT NULL COMMENT '年度',
  `region` VARCHAR(45) NOT NULL COMMENT '区域',
  `hours` FLOAT UNSIGNED ZEROFILL NOT NULL COMMENT '已完成课时',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '继续教育学习情况';


-- -----------------------------------------------------
-- Table `top_online`.`his_cedu_exam_print`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`his_cedu_exam_print` (
  `his_cedu_exam_id` INT(11) NOT NULL,
  `print_user_id` INT(11) NOT NULL COMMENT '打印人外键',
  PRIMARY KEY (`his_cedu_exam_id`),
  INDEX `fk_his_cedu_exam_print_his_cedu_exam1_idx` (`his_cedu_exam_id` ASC),
  CONSTRAINT `fk_his_cedu_exam_print_his_cedu_exam1`
    FOREIGN KEY (`his_cedu_exam_id`)
    REFERENCES `top_online`.`his_cedu_exam` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '继续教育考试打印明细';


-- -----------------------------------------------------
-- Table `top_online`.`his_cedu_record_item`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`his_cedu_record_item` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `type` INT(2) UNSIGNED NOT NULL COMMENT '学习类型（1：视频，2：题目，3：模拟考试）',
  `object_id` INT(11) NOT NULL COMMENT '对象外键，可能为（视频、题目、试卷的外键）',
  `begin_time` DATETIME NULL COMMENT '学习开始时间',
  `end_time` DATETIME NULL COMMENT '学习结束时间',
  `learn_time` INT(11) UNSIGNED ZEROFILL NOT NULL COMMENT '此次学习时长',
  `his_cedu_item_id` INT(11) NOT NULL COMMENT '用户继续教育学习情况表外键',
  `his_cedu_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_his_cedu_item_his_cedu1_idx` (`his_cedu_id` ASC),
  CONSTRAINT `fk_his_cedu_item_his_cedu1`
    FOREIGN KEY (`his_cedu_id`)
    REFERENCES `top_online`.`his_cedu_record` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '用户继续教育学习情况明细';


-- -----------------------------------------------------
-- Table `top_online`.`log_comment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`log_comment` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `type` INT(11) NULL DEFAULT NULL COMMENT '对象类型',
  `forgin_id` INT(11) NULL DEFAULT NULL COMMENT '对象主键',
  `content` VARCHAR(500) NULL DEFAULT NULL COMMENT '评论内容',
  `user_id` INT(11) NULL DEFAULT NULL COMMENT '评论人',
  `create_date` DATETIME NULL DEFAULT NULL COMMENT '评论时间',
  `p_id` INT(11) NULL DEFAULT NULL COMMENT '上级评论外键',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '对象评论';


-- -----------------------------------------------------
-- Table `top_online`.`log_hits`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`log_hits` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `type` INT(11) NULL COMMENT '对象类型',
  `forgin_id` INT(11) NULL DEFAULT NULL COMMENT '对象外键',
  `begin_date` DATETIME NULL DEFAULT NULL COMMENT '开始时间',
  `end_date` DATETIME NULL DEFAULT NULL COMMENT '结束时间',
  `user_id` INT(11) NULL DEFAULT NULL COMMENT '操作人外键',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '对象点击量';


-- -----------------------------------------------------
-- Table `top_online`.`log_star`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `top_online`.`log_star` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `type` INT(11) NULL COMMENT '对象类型',
  `forginn_id` INT(11) NULL DEFAULT NULL COMMENT '对象外键',
  `count` INT(2) NULL DEFAULT NULL COMMENT '星的个数',
  `appraiser_id` INT(11) NULL DEFAULT NULL COMMENT '评价人外键',
  `create_date` DATETIME NULL DEFAULT NULL COMMENT '评价时间',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '对象星级';


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
