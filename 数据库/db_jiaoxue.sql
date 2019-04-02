/*
MySQL Data Transfer
Source Host: localhost
Source Database: db_jiaoxue
Target Host: localhost
Target Database: db_jiaoxue
Date: 2016/7/1 12:45:23
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL,
  `userName` varchar(50) default NULL,
  `userPw` varchar(50) default NULL,
  PRIMARY KEY  (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for t_doc
-- ----------------------------
CREATE TABLE `t_doc` (
  `id` int(11) NOT NULL,
  `mingcheng` varchar(50) default NULL,
  `fujian` varchar(50) default NULL,
  `fujianYuanshiming` varchar(50) default NULL,
  `type` varchar(50) default NULL,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for t_gonggao
-- ----------------------------
CREATE TABLE `t_gonggao` (
  `gonggao_id` int(11) NOT NULL,
  `gonggao_title` varchar(50) default NULL,
  `gonggao_content` text,
  `gonggao_data` varchar(50) default NULL,
  `gonggao_fabuzhe` varchar(255) default NULL,
  `gonggao_del` varchar(50) default NULL,
  `gonggao_one1` varchar(50) default NULL,
  `gonggao_one2` varchar(50) default NULL,
  `gonggao_one3` varchar(50) default NULL,
  `gonggao_one4` varchar(50) default NULL,
  `gonggao_one5` datetime default NULL,
  `gonggao_one6` datetime default NULL,
  `gonggao_one7` int(11) default NULL,
  `gonggao_one8` int(11) default NULL,
  PRIMARY KEY  (`gonggao_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for t_liuyan
-- ----------------------------
CREATE TABLE `t_liuyan` (
  `liuyan_id` int(11) NOT NULL,
  `liuyan_title` varchar(50) default NULL,
  `liuyan_content` text,
  `liuyan_date` varchar(50) default NULL,
  `liuyan_user` varchar(50) default NULL,
  PRIMARY KEY  (`liuyan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for t_picnews
-- ----------------------------
CREATE TABLE `t_picnews` (
  `picNews_id` int(11) NOT NULL,
  `picNews_title` varchar(50) default NULL,
  `picNews_content` text,
  `fujian` text,
  `fujian_yuanshiming` varchar(50) default NULL,
  `picNews_date` varchar(50) default NULL,
  `picNews_one1` varchar(50) default NULL,
  `picNews_one2` varchar(50) default NULL,
  `picNews_one3` varchar(50) default NULL,
  `picNews_one4` varchar(50) default NULL,
  `picNews_one5` datetime default NULL,
  `picNews_one6` datetime default NULL,
  `picNews_one7` int(11) default NULL,
  `picNews_one8` int(11) default NULL,
  PRIMARY KEY  (`picNews_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for t_stu
-- ----------------------------
CREATE TABLE `t_stu` (
  `stu_id` int(11) NOT NULL,
  `stu_xuehao` varchar(50) default NULL,
  `stu_realname` varchar(50) default NULL,
  `stu_sex` varchar(50) default NULL,
  `stu_age` varchar(50) default NULL,
  `stu_card` varchar(50) default NULL,
  `stu_banji` varchar(50) default NULL,
  `login_name` varchar(50) default NULL,
  `login_pw` varchar(50) default NULL,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for t_tea
-- ----------------------------
CREATE TABLE `t_tea` (
  `tea_id` int(11) NOT NULL,
  `tea_bianhao` varchar(50) default NULL,
  `tea_realname` varchar(50) default NULL,
  `tea_sex` varchar(50) default NULL,
  `tea_age` varchar(50) default NULL,
  `login_name` varchar(50) default NULL,
  `login_pw` varchar(50) default NULL,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`tea_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', 'admin');
INSERT INTO `t_admin` VALUES ('2', 'a', 'a');
INSERT INTO `t_doc` VALUES ('1', 'struts2作业', '/upload/1467348140287.docx', 'struts2的Action参数详细说明.docx', 'zuoye', 'no');
INSERT INTO `t_doc` VALUES ('2', '最新教案', '/upload/1467348174884.docx', '测试1.docx', 'jiaocheng', 'no');
INSERT INTO `t_gonggao` VALUES ('1', '系统功能', '<p>公告通知说明</p>', '2016-7-1 11:38:42', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_gonggao` VALUES ('2', '网站公告', '网站公告网站公告网站公告网站公告网站公告网站公告网站公告网站公告网站公告', '2016-7-1 11:39:02', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_gonggao` VALUES ('3', '最新公告', '最新公告最新公告最新公告最新公告最新公告最新公告最新公告最新公告最新公告最新公告', '2016-7-1 11:39:18', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_gonggao` VALUES ('4', '各种公告', '各种公告各种公告各种公告各种公告各种公告各种公告', '2016-7-1 11:39:29', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_liuyan` VALUES ('1', '如何学好各种技术呢', '如何学好各种技术呢', '2016-7-1 12:43:33', null);
INSERT INTO `t_picnews` VALUES ('1', '成功之路', '<p>成功之路！！！！！！！！！！</p>', '/upload/1467344561915.jpg', '1374343192998.jpg', '2016-7-1 11:42:59', null, null, null, null, null, null, null, null);
INSERT INTO `t_picnews` VALUES ('2', '尊师重德', '<p>真实的故事</p>', '/upload/1467344797534.jpg', '555.jpg', '2016-7-1 11:47:03', null, null, null, null, null, null, null, null);
INSERT INTO `t_stu` VALUES ('1', '2002', '王慧', '男', '19', null, '三年二班', 'wanghui', 'wanghui', 'no');
INSERT INTO `t_tea` VALUES ('1', '1001', '刘三宝', '男', '36', 'liu', 'liu', 'no');
