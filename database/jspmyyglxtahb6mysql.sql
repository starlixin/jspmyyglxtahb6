/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50160
Source Host           : localhost:3306
Source Database       : jspmyyglxtahb6mysql

Target Server Type    : MYSQL
Target Server Version : 50160
File Encoding         : 65001

Date: 2020-05-13 12:28:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `allusers`
-- ----------------------------
DROP TABLE IF EXISTS `allusers`;
CREATE TABLE `allusers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `cx` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of allusers
-- ----------------------------
INSERT INTO `allusers` VALUES ('1', 'hsg', 'hsg', '超级管理员', '2020-05-10 02:39:18');
INSERT INTO `allusers` VALUES ('4', '999', '999', '普通管理员', '2020-05-10 21:53:18');

-- ----------------------------
-- Table structure for `chuangweixinxi`
-- ----------------------------
DROP TABLE IF EXISTS `chuangweixinxi`;
CREATE TABLE `chuangweixinxi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `mingcheng` varchar(50) DEFAULT NULL,
  `keshi` varchar(50) DEFAULT NULL,
  `fanghao` varchar(50) DEFAULT NULL,
  `chuanghao` varchar(50) DEFAULT NULL,
  `tupian` varchar(50) DEFAULT NULL,
  `zhuangtai` varchar(50) DEFAULT NULL,
  `jiage` varchar(50) DEFAULT NULL,
  `beizhu` varchar(255) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuangweixinxi
-- ----------------------------
INSERT INTO `chuangweixinxi` VALUES ('12', '标准房', '骨科', '20', '2001', '', '已住', '', '阿萨德按时大师', '2020-05-10 12:23:02');
INSERT INTO `chuangweixinxi` VALUES ('13', '单人房', '内科', '10', '1003', '', '已住', '', '电饭锅电饭锅大范甘迪发给', '2020-05-10 12:26:20');
INSERT INTO `chuangweixinxi` VALUES ('14', '单人床', '外科', '1-401', '2001', '', '未住', '', '阿萨德阿萨德阿萨德阿萨德', '2020-05-10 21:56:49');

-- ----------------------------
-- Table structure for `dx`
-- ----------------------------
DROP TABLE IF EXISTS `dx`;
CREATE TABLE `dx` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `leibie` varchar(50) DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dx
-- ----------------------------
INSERT INTO `dx` VALUES ('1', '系统公告', '<P>&nbsp;&nbsp;&nbsp; 欢迎大家登陆我站，我站主要是为广大朋友精心制作的一个系统，希望大家能够在我站获得一个好心情，谢谢！</P>\r\n<P>&nbsp;&nbsp;&nbsp; 自强不息，海纳百川，努力学习！</P>');
INSERT INTO `dx` VALUES ('2', '系统简介', '系统简介');
INSERT INTO `dx` VALUES ('3', '关于我们', '&nbsp;关于我们！！22大是大非斯蒂芬斯蒂芬<br />');
INSERT INTO `dx` VALUES ('4', '联系方式', '联系人：xxxxxxxx<br />  电话：0000-0000000<br />  手机：010000000000<br />  传真：0000-0000000<br />  邮件：xxxxxxxx@163.com<br />  地址：您公司的地址<br />  网址：http://www.xxxx.com<br />');
INSERT INTO `dx` VALUES ('5', '1?óú?ò??', '1?óú?ò??');

-- ----------------------------
-- Table structure for `keshixinxi`
-- ----------------------------
DROP TABLE IF EXISTS `keshixinxi`;
CREATE TABLE `keshixinxi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `keshi` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keshixinxi
-- ----------------------------
INSERT INTO `keshixinxi` VALUES ('1', '临床心理科', '2020-05-10 02:39:18');
INSERT INTO `keshixinxi` VALUES ('4', '中医科', '2020-05-10 02:39:18');
INSERT INTO `keshixinxi` VALUES ('5', '骨科', '2020-05-10 02:39:18');
INSERT INTO `keshixinxi` VALUES ('6', '耳鼻喉科', '2020-05-10 14:50:08');
INSERT INTO `keshixinxi` VALUES ('7', '内科', '2020-05-10 17:41:53');
INSERT INTO `keshixinxi` VALUES ('8', '外科', '2020-05-10 21:53:57');

-- ----------------------------
-- Table structure for `liuyanban`
-- ----------------------------
DROP TABLE IF EXISTS `liuyanban`;
CREATE TABLE `liuyanban` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `cheng` varchar(50) DEFAULT NULL,
  `xingbie` varchar(2) DEFAULT NULL,
  `QQ` varchar(50) DEFAULT NULL,
  `youxiang` varchar(50) DEFAULT NULL,
  `dianhua` varchar(50) DEFAULT NULL,
  `neirong` varchar(255) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `huifuneirong` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of liuyanban
-- ----------------------------
INSERT INTO `liuyanban` VALUES ('3', '666', '', '', '', '', '按时大声道阿萨德', '2020-05-10 21:57:28', '按实际开个和卡仕达阿萨德阿萨德');

-- ----------------------------
-- Table structure for `paibanbiao`
-- ----------------------------
DROP TABLE IF EXISTS `paibanbiao`;
CREATE TABLE `paibanbiao` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `bianhao` varchar(50) DEFAULT NULL,
  `yishengbianhao` varchar(50) DEFAULT NULL,
  `yishengxingming` varchar(50) DEFAULT NULL,
  `riqi` varchar(50) DEFAULT NULL,
  `xingqi` varchar(50) DEFAULT NULL,
  `shiduan` varchar(50) DEFAULT NULL,
  `shengyuhao` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paibanbiao
-- ----------------------------
INSERT INTO `paibanbiao` VALUES ('5', '04260311475482', '001', '陈智一', '2020-05-02', '二', '下午', '0', '2020-05-10 02:39:18');
INSERT INTO `paibanbiao` VALUES ('6', '04260311475471', '001', '陈智一', '2020-05-01', '五', '上午', '27', '2020-05-10 03:12:02');
INSERT INTO `paibanbiao` VALUES ('9', '03301742558424', '008', '蔡晓芳', '2020-04-07', '五', '上午', '19', '2020-05-10 17:43:05');
INSERT INTO `paibanbiao` VALUES ('10', '05102154566002', '006', '陈燕琪', '2020-05-11', '三', '上午', '29', '2020-05-10 21:55:06');

-- ----------------------------
-- Table structure for `pinglun`
-- ----------------------------
DROP TABLE IF EXISTS `pinglun`;
CREATE TABLE `pinglun` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `xinwenID` varchar(50) DEFAULT NULL,
  `pinglunneirong` varchar(255) DEFAULT NULL,
  `pinglunren` varchar(50) DEFAULT NULL,
  `pingfen` varchar(50) DEFAULT NULL,
  `biao` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pinglun
-- ----------------------------
INSERT INTO `pinglun` VALUES ('1', '7', '奥施康定阿萨德阿萨德', '666', '4', 'yishengxinxi', '2020-05-10 21:59:13');

-- ----------------------------
-- Table structure for `xinwentongzhi`
-- ----------------------------
DROP TABLE IF EXISTS `xinwentongzhi`;
CREATE TABLE `xinwentongzhi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `biaoti` varchar(255) DEFAULT NULL,
  `leibie` varchar(50) DEFAULT NULL,
  `neirong` longtext,
  `tianjiaren` varchar(50) DEFAULT NULL,
  `shouyetupian` varchar(50) DEFAULT NULL,
  `dianjilv` int(11) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xinwentongzhi
-- ----------------------------
INSERT INTO `xinwentongzhi` VALUES ('52', '安徽省给大家爱干净', '就医指南', '及噶删掉噶的阿萨德按时按时大大阿萨德', 'hsg', 'upload/1556219141989.jpg', '7', '2020-05-10 03:05:43');
INSERT INTO `xinwentongzhi` VALUES ('54', '就医指南阿克苏较好的卡仕达看', '就医指南', '&nbsp; &nbsp; 按手机客户端Khas的阿萨德阿萨德阿萨德阿萨德', 'hsg', 'upload/1585561300892.jpg', '6', '2020-05-10 17:41:42');
INSERT INTO `xinwentongzhi` VALUES ('55', '奥斯卡的机会安居客时代和啊2222', '就医指南', '阿萨德阿萨德阿萨德阿萨德阿萨德阿萨德', 'hsg', 'upload/1589118827187.jpg', '3', '2020-05-10 21:53:48');

-- ----------------------------
-- Table structure for `yaopinleibie`
-- ----------------------------
DROP TABLE IF EXISTS `yaopinleibie`;
CREATE TABLE `yaopinleibie` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `leibie` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yaopinleibie
-- ----------------------------
INSERT INTO `yaopinleibie` VALUES ('7', '甲类', '2020-05-10 13:37:34');
INSERT INTO `yaopinleibie` VALUES ('8', '乙类', '2020-05-10 13:37:45');
INSERT INTO `yaopinleibie` VALUES ('9', '丙类', '2020-05-10 13:13:59');
INSERT INTO `yaopinleibie` VALUES ('10', 'A类别', '2020-05-10 21:55:13');

-- ----------------------------
-- Table structure for `yaopinxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `yaopinxinxi`;
CREATE TABLE `yaopinxinxi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `yaopinbianhao` varchar(50) DEFAULT NULL,
  `yaopinmingcheng` varchar(50) DEFAULT NULL,
  `leibie` varchar(50) DEFAULT NULL,
  `gongyingshang` varchar(50) DEFAULT NULL,
  `shengchanriqi` varchar(50) DEFAULT NULL,
  `youxiaoqi` varchar(50) DEFAULT NULL,
  `zhuyaochengfen` varchar(255) DEFAULT NULL,
  `guige` varchar(50) DEFAULT NULL,
  `danwei` varchar(50) DEFAULT NULL,
  `jiage` varchar(50) DEFAULT NULL,
  `rukujiage` varchar(50) DEFAULT NULL,
  `tupian` varchar(50) DEFAULT NULL,
  `kucun` varchar(50) DEFAULT NULL,
  `beizhu` varchar(255) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yaopinxinxi
-- ----------------------------
INSERT INTO `yaopinxinxi` VALUES ('1', '0001', 'A药品', '乙类', '中国医药集团总公司', '2019-02-14', '2年', '黄金时代狂欢节奥斯卡的氨基酸等会卡机', '0.5mg', 'mg', '100', '60', 'upload/1580269832720.jpg', '500', '', '2020-05-10 22:11:38');
INSERT INTO `yaopinxinxi` VALUES ('2', '0003', 'B药品', '甲类', '南京医药股份有限公司', '2019-02-19', '2年', '健康的风华高科倒海翻江概况个', '0.5mg', 'mg', '250', '180', 'upload/1580269822005.jpg', '520', '阿萨德阿萨德', '2020-05-10 22:12:22');
INSERT INTO `yaopinxinxi` VALUES ('3', '0002', 'BB药品', '乙类', '广州医药有限公司', '2018-11-13', '2年', '加考试的科技计划 会尽快的设计费', '0.5mg', 'mg', '200', '120', 'upload/1580269812559.jpg', '527', '', '2020-05-10 23:02:35');
INSERT INTO `yaopinxinxi` VALUES ('5', '0004', '感冒药', '丙类', 'AA药品有限公司', '2020-01-15', '2年', '没收到回复就考试都会放假', '0.5mg', 'mg', '100', '90', 'upload/1580274892094.jpg', '98', '阿萨德阿萨德阿萨德阿达', '2020-05-10 13:15:01');
INSERT INTO `yaopinxinxi` VALUES ('6', '0888', '柴桂颗粒', 'A类别', '', '2020-05-12', '2年', '阿萨德阿萨德阿萨德阿萨德', '0.5g', 'mm', '33', '', 'upload/1589118939641.jpg', '500', '阿萨德阿萨德阿萨德阿萨德', '2020-05-10 21:55:45');

-- ----------------------------
-- Table structure for `yishengxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `yishengxinxi`;
CREATE TABLE `yishengxinxi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `yishengbianhao` varchar(50) DEFAULT NULL,
  `mima` varchar(50) DEFAULT NULL,
  `yishengxingming` varchar(50) DEFAULT NULL,
  `xingbie` varchar(50) DEFAULT NULL,
  `zhaopian` varchar(50) DEFAULT NULL,
  `keshi` varchar(50) DEFAULT NULL,
  `zhicheng` varchar(50) DEFAULT NULL,
  `biyeyuanxiao` varchar(50) DEFAULT NULL,
  `yiling` varchar(50) DEFAULT NULL,
  `yishengjianjie` varchar(255) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yishengxinxi
-- ----------------------------
INSERT INTO `yishengxinxi` VALUES ('1', '018', '001', '洪小铃', '女', 'upload/1556219427869.jpg', '外科', '副主任医师', '复旦大学', '8年', '按时大大阿萨德阿萨德', '2020-05-10 02:39:18');
INSERT INTO `yishengxinxi` VALUES ('2', '024', '001', '胡歌', '男', 'upload/1556219402752.jpg', '外科', '主任医师', '华中科技大学', '15年', 'ok', '2020-05-10 02:39:18');
INSERT INTO `yishengxinxi` VALUES ('3', '003', '001', '詹姆斯', '男', 'upload/1556219388717.jpg', '内科', '教授医师', '北京大学', '15年', '没问题', '2020-05-10 02:39:18');
INSERT INTO `yishengxinxi` VALUES ('4', '017', '001', '穆铁柱', '男', 'upload/1556219373983.jpg', '临床心理科', '副教授', '南京大学', '15年', '没问题', '2020-05-10 02:39:18');
INSERT INTO `yishengxinxi` VALUES ('5', '001', '001', '陈智一', '男', 'upload/1556219357054.jpg', '中医科', '医师', '吉林大学', '5年', '阿萨德阿萨德阿斯达四大阿萨德', '2020-05-10 02:39:18');
INSERT INTO `yishengxinxi` VALUES ('6', '008', '008', '蔡晓芳', '女', 'upload/1585561344940.jpg', '内科', '主任医师', '清华医科大学', '6年', '奥斯卡经典和卡仕达卡仕达阿萨德阿萨德阿萨德阿萨德', '2020-05-10 17:42:46');
INSERT INTO `yishengxinxi` VALUES ('7', '006', '006', '陈燕琪', '女', 'upload/1589118876638.jpg', '外科', '主任医师', '中山大学', '5年', '按时大声道阿萨德阿萨德', '2020-05-10 21:54:39');

-- ----------------------------
-- Table structure for `yonghuzhuce`
-- ----------------------------
DROP TABLE IF EXISTS `yonghuzhuce`;
CREATE TABLE `yonghuzhuce` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `yonghuming` varchar(50) DEFAULT NULL,
  `mima` varchar(50) DEFAULT NULL,
  `xingming` varchar(50) DEFAULT NULL,
  `xingbie` varchar(2) DEFAULT NULL,
  `chushengnianyue` varchar(50) DEFAULT NULL,
  `QQ` varchar(50) DEFAULT NULL,
  `youxiang` varchar(50) DEFAULT NULL,
  `dianhua` varchar(50) DEFAULT NULL,
  `shenfenzheng` varchar(50) DEFAULT NULL,
  `touxiang` varchar(50) DEFAULT NULL,
  `dizhi` varchar(255) DEFAULT NULL,
  `beizhu` varchar(255) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `issh` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yonghuzhuce
-- ----------------------------
INSERT INTO `yonghuzhuce` VALUES ('1', '555', '555', '何升高', '男', '2012-07-08', '429489354', 'gsgs@163.com', '13186835580', '52353253262', 'upload/1333961148718.jpg', '龙港龙翔路1170号', 'mfgmfgmfg', '2020-05-10 02:39:18', '是');
INSERT INTO `yonghuzhuce` VALUES ('3', '888', '888', '王宝顺', '男', '2020-03-10', '123456', '123456@qq.com', '18856958564', '330329298952659845', 'upload/1585561227016.jpg', '浙江省温州市鹿城区', 'asd asd ', '2020-05-10 17:40:31', '是');
INSERT INTO `yonghuzhuce` VALUES ('4', '666', '666', '何升高', '男', '2020-04-27', '123456', '4562@qq.com', '18815026265', '330327198501020300', 'upload/1589118781680.jpg', '解放路73号', '稍等斯蒂芬斯蒂芬斯蒂芬', '2020-05-10 21:53:06', '是');

-- ----------------------------
-- Table structure for `youqinglianjie`
-- ----------------------------
DROP TABLE IF EXISTS `youqinglianjie`;
CREATE TABLE `youqinglianjie` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `wangzhanmingcheng` varchar(255) DEFAULT NULL,
  `wangzhi` varchar(255) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of youqinglianjie
-- ----------------------------
INSERT INTO `youqinglianjie` VALUES ('1', '百度', 'http://www.baidu.com', 'upload/baidu.jpg', '2020-05-10 02:39:18');
INSERT INTO `youqinglianjie` VALUES ('2', '谷歌', 'http://www.google.cn', 'upload/google.jpg', '2020-05-10 02:39:18');
INSERT INTO `youqinglianjie` VALUES ('3', '新浪', 'http://www.sina.com', 'upload/sina.jpg', '2020-05-10 02:39:18');
INSERT INTO `youqinglianjie` VALUES ('4', '雅虎', 'http://www.yahoo.cn', 'upload/yahoo.jpg', '2020-05-10 02:39:18');
INSERT INTO `youqinglianjie` VALUES ('5', '腾讯', 'http://www.qq.com', 'upload/qq.jpg', '2020-05-10 02:39:18');

-- ----------------------------
-- Table structure for `yuyueyisheng`
-- ----------------------------
DROP TABLE IF EXISTS `yuyueyisheng`;
CREATE TABLE `yuyueyisheng` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `yuyuehao` varchar(50) DEFAULT NULL,
  `bianhao` varchar(50) DEFAULT NULL,
  `yishengbianhao` varchar(50) DEFAULT NULL,
  `yishengxingming` varchar(50) DEFAULT NULL,
  `riqi` varchar(50) DEFAULT NULL,
  `xingqi` varchar(50) DEFAULT NULL,
  `shiduan` varchar(50) DEFAULT NULL,
  `yuyueshijian` varchar(50) DEFAULT NULL,
  `yonghuming` varchar(50) DEFAULT NULL,
  `xingming` varchar(50) DEFAULT NULL,
  `shenfenzheng` varchar(50) DEFAULT NULL,
  `shouji` varchar(50) DEFAULT NULL,
  `zhuangtai` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yuyueyisheng
-- ----------------------------
INSERT INTO `yuyueyisheng` VALUES ('1', '1', '03301742558424', '008', '蔡晓芳', '2020-04-07', '五', '上午', '', '888', '王宝顺', '330329298952659845', '18856958564', '已取号', '2020-05-10 17:44:10');
INSERT INTO `yuyueyisheng` VALUES ('2', '1', '05102154566002', '006', '陈燕琪', '2020-05-11', '三', '上午', '', '666', '何升高', '330327198501020300', '18815026265', '已取号', '2020-05-10 21:57:45');
