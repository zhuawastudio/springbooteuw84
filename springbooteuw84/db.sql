/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbooteuw84
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbooteuw84` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbooteuw84`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbooteuw84/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springbooteuw84/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springbooteuw84/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussshetuanhuodong` */

DROP TABLE IF EXISTS `discussshetuanhuodong`;

CREATE TABLE `discussshetuanhuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='社团活动评论表';

/*Data for the table `discussshetuanhuodong` */

insert  into `discussshetuanhuodong`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-05-18 20:06:11',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussshetuanhuodong`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (112,'2021-05-18 20:06:11',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussshetuanhuodong`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (113,'2021-05-18 20:06:11',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussshetuanhuodong`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (114,'2021-05-18 20:06:11',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussshetuanhuodong`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (115,'2021-05-18 20:06:11',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussshetuanhuodong`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (116,'2021-05-18 20:06:11',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussshetuanxinxi` */

DROP TABLE IF EXISTS `discussshetuanxinxi`;

CREATE TABLE `discussshetuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='社团信息评论表';

/*Data for the table `discussshetuanxinxi` */

insert  into `discussshetuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-05-18 20:06:11',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussshetuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (102,'2021-05-18 20:06:11',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussshetuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (103,'2021-05-18 20:06:11',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussshetuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (104,'2021-05-18 20:06:11',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussshetuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (105,'2021-05-18 20:06:11',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussshetuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (106,'2021-05-18 20:06:11',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussxinwenxinxi` */

DROP TABLE IF EXISTS `discussxinwenxinxi`;

CREATE TABLE `discussxinwenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='新闻信息评论表';

/*Data for the table `discussxinwenxinxi` */

insert  into `discussxinwenxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-05-18 20:06:11',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussxinwenxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (122,'2021-05-18 20:06:11',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussxinwenxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (123,'2021-05-18 20:06:11',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussxinwenxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (124,'2021-05-18 20:06:11',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussxinwenxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (125,'2021-05-18 20:06:11',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussxinwenxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (126,'2021-05-18 20:06:11',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `huodongbaoming` */

DROP TABLE IF EXISTS `huodongbaoming`;

CREATE TABLE `huodongbaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `baomingshijian` datetime NOT NULL COMMENT '报名时间',
  `baomingneirong` varchar(200) NOT NULL COMMENT '报名内容',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='活动报名';

/*Data for the table `huodongbaoming` */

insert  into `huodongbaoming`(`id`,`addtime`,`huodongmingcheng`,`huodongdidian`,`zhanghao`,`baomingshijian`,`baomingneirong`,`yonghuming`,`xingming`,`banji`,`zhuanye`,`shouji`,`sfsh`,`shhf`) values (61,'2021-05-18 20:06:11','活动名称1','活动地点1','账号1','2021-05-18 20:06:11','报名内容1','用户名1','姓名1','班级1','专业1','手机1','是','');
insert  into `huodongbaoming`(`id`,`addtime`,`huodongmingcheng`,`huodongdidian`,`zhanghao`,`baomingshijian`,`baomingneirong`,`yonghuming`,`xingming`,`banji`,`zhuanye`,`shouji`,`sfsh`,`shhf`) values (62,'2021-05-18 20:06:11','活动名称2','活动地点2','账号2','2021-05-18 20:06:11','报名内容2','用户名2','姓名2','班级2','专业2','手机2','是','');
insert  into `huodongbaoming`(`id`,`addtime`,`huodongmingcheng`,`huodongdidian`,`zhanghao`,`baomingshijian`,`baomingneirong`,`yonghuming`,`xingming`,`banji`,`zhuanye`,`shouji`,`sfsh`,`shhf`) values (63,'2021-05-18 20:06:11','活动名称3','活动地点3','账号3','2021-05-18 20:06:11','报名内容3','用户名3','姓名3','班级3','专业3','手机3','是','');
insert  into `huodongbaoming`(`id`,`addtime`,`huodongmingcheng`,`huodongdidian`,`zhanghao`,`baomingshijian`,`baomingneirong`,`yonghuming`,`xingming`,`banji`,`zhuanye`,`shouji`,`sfsh`,`shhf`) values (64,'2021-05-18 20:06:11','活动名称4','活动地点4','账号4','2021-05-18 20:06:11','报名内容4','用户名4','姓名4','班级4','专业4','手机4','是','');
insert  into `huodongbaoming`(`id`,`addtime`,`huodongmingcheng`,`huodongdidian`,`zhanghao`,`baomingshijian`,`baomingneirong`,`yonghuming`,`xingming`,`banji`,`zhuanye`,`shouji`,`sfsh`,`shhf`) values (65,'2021-05-18 20:06:11','活动名称5','活动地点5','账号5','2021-05-18 20:06:11','报名内容5','用户名5','姓名5','班级5','专业5','手机5','是','');
insert  into `huodongbaoming`(`id`,`addtime`,`huodongmingcheng`,`huodongdidian`,`zhanghao`,`baomingshijian`,`baomingneirong`,`yonghuming`,`xingming`,`banji`,`zhuanye`,`shouji`,`sfsh`,`shhf`) values (66,'2021-05-18 20:06:11','活动名称6','活动地点6','账号6','2021-05-18 20:06:11','报名内容6','用户名6','姓名6','班级6','专业6','手机6','是','');

/*Table structure for table `jiarushetuan` */

DROP TABLE IF EXISTS `jiarushetuan`;

CREATE TABLE `jiarushetuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `jiaruliyou` varchar(200) DEFAULT NULL COMMENT '加入理由',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='加入社团';

/*Data for the table `jiarushetuan` */

insert  into `jiarushetuan`(`id`,`addtime`,`shetuanmingcheng`,`zhanghao`,`jiaruliyou`,`shenqingriqi`,`yonghuming`,`xingming`,`banji`,`zhuanye`,`shouji`,`sfsh`,`shhf`) values (41,'2021-05-18 20:06:11','社团名称1','账号1','加入理由1','2021-05-18','用户名1','姓名1','班级1','专业1','手机1','是','');
insert  into `jiarushetuan`(`id`,`addtime`,`shetuanmingcheng`,`zhanghao`,`jiaruliyou`,`shenqingriqi`,`yonghuming`,`xingming`,`banji`,`zhuanye`,`shouji`,`sfsh`,`shhf`) values (42,'2021-05-18 20:06:11','社团名称2','账号2','加入理由2','2021-05-18','用户名2','姓名2','班级2','专业2','手机2','是','');
insert  into `jiarushetuan`(`id`,`addtime`,`shetuanmingcheng`,`zhanghao`,`jiaruliyou`,`shenqingriqi`,`yonghuming`,`xingming`,`banji`,`zhuanye`,`shouji`,`sfsh`,`shhf`) values (43,'2021-05-18 20:06:11','社团名称3','账号3','加入理由3','2021-05-18','用户名3','姓名3','班级3','专业3','手机3','是','');
insert  into `jiarushetuan`(`id`,`addtime`,`shetuanmingcheng`,`zhanghao`,`jiaruliyou`,`shenqingriqi`,`yonghuming`,`xingming`,`banji`,`zhuanye`,`shouji`,`sfsh`,`shhf`) values (44,'2021-05-18 20:06:11','社团名称4','账号4','加入理由4','2021-05-18','用户名4','姓名4','班级4','专业4','手机4','是','');
insert  into `jiarushetuan`(`id`,`addtime`,`shetuanmingcheng`,`zhanghao`,`jiaruliyou`,`shenqingriqi`,`yonghuming`,`xingming`,`banji`,`zhuanye`,`shouji`,`sfsh`,`shhf`) values (45,'2021-05-18 20:06:11','社团名称5','账号5','加入理由5','2021-05-18','用户名5','姓名5','班级5','专业5','手机5','是','');
insert  into `jiarushetuan`(`id`,`addtime`,`shetuanmingcheng`,`zhanghao`,`jiaruliyou`,`shenqingriqi`,`yonghuming`,`xingming`,`banji`,`zhuanye`,`shouji`,`sfsh`,`shhf`) values (46,'2021-05-18 20:06:11','社团名称6','账号6','加入理由6','2021-05-18','用户名6','姓名6','班级6','专业6','手机6','是','');

/*Table structure for table `jingfeixinxi` */

DROP TABLE IF EXISTS `jingfeixinxi`;

CREATE TABLE `jingfeixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `jingfeijine` int(11) NOT NULL COMMENT '经费金额',
  `shenqingliyou` longtext COMMENT '申请理由',
  `fujian` varchar(200) DEFAULT NULL COMMENT '附件',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `shezhangxingming` varchar(200) DEFAULT NULL COMMENT '社长姓名',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='经费信息';

/*Data for the table `jingfeixinxi` */

insert  into `jingfeixinxi`(`id`,`addtime`,`biaoti`,`jingfeijine`,`shenqingliyou`,`fujian`,`shenqingriqi`,`zhanghao`,`shezhangxingming`,`shetuanmingcheng`,`shouji`,`sfsh`,`shhf`,`ispay`) values (71,'2021-05-18 20:06:11','标题1',1,'申请理由1','','2021-05-18','账号1','社长姓名1','社团名称1','手机1','是','','未支付');
insert  into `jingfeixinxi`(`id`,`addtime`,`biaoti`,`jingfeijine`,`shenqingliyou`,`fujian`,`shenqingriqi`,`zhanghao`,`shezhangxingming`,`shetuanmingcheng`,`shouji`,`sfsh`,`shhf`,`ispay`) values (72,'2021-05-18 20:06:11','标题2',2,'申请理由2','','2021-05-18','账号2','社长姓名2','社团名称2','手机2','是','','未支付');
insert  into `jingfeixinxi`(`id`,`addtime`,`biaoti`,`jingfeijine`,`shenqingliyou`,`fujian`,`shenqingriqi`,`zhanghao`,`shezhangxingming`,`shetuanmingcheng`,`shouji`,`sfsh`,`shhf`,`ispay`) values (73,'2021-05-18 20:06:11','标题3',3,'申请理由3','','2021-05-18','账号3','社长姓名3','社团名称3','手机3','是','','未支付');
insert  into `jingfeixinxi`(`id`,`addtime`,`biaoti`,`jingfeijine`,`shenqingliyou`,`fujian`,`shenqingriqi`,`zhanghao`,`shezhangxingming`,`shetuanmingcheng`,`shouji`,`sfsh`,`shhf`,`ispay`) values (74,'2021-05-18 20:06:11','标题4',4,'申请理由4','','2021-05-18','账号4','社长姓名4','社团名称4','手机4','是','','未支付');
insert  into `jingfeixinxi`(`id`,`addtime`,`biaoti`,`jingfeijine`,`shenqingliyou`,`fujian`,`shenqingriqi`,`zhanghao`,`shezhangxingming`,`shetuanmingcheng`,`shouji`,`sfsh`,`shhf`,`ispay`) values (75,'2021-05-18 20:06:11','标题5',5,'申请理由5','','2021-05-18','账号5','社长姓名5','社团名称5','手机5','是','','未支付');
insert  into `jingfeixinxi`(`id`,`addtime`,`biaoti`,`jingfeijine`,`shenqingliyou`,`fujian`,`shenqingriqi`,`zhanghao`,`shezhangxingming`,`shetuanmingcheng`,`shouji`,`sfsh`,`shhf`,`ispay`) values (76,'2021-05-18 20:06:11','标题6',6,'申请理由6','','2021-05-18','账号6','社长姓名6','社团名称6','手机6','是','','未支付');

/*Table structure for table `shetuanhuodong` */

DROP TABLE IF EXISTS `shetuanhuodong`;

CREATE TABLE `shetuanhuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `huodongtupian` varchar(200) DEFAULT NULL COMMENT '活动图片',
  `kaishishijian` date DEFAULT NULL COMMENT '开始时间',
  `jieshushijian` date DEFAULT NULL COMMENT '结束时间',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `huodongxiangqing` longtext COMMENT '活动详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='社团活动';

/*Data for the table `shetuanhuodong` */

insert  into `shetuanhuodong`(`id`,`addtime`,`huodongmingcheng`,`shetuanmingcheng`,`huodongtupian`,`kaishishijian`,`jieshushijian`,`huodongdidian`,`zhanghao`,`shouji`,`huodongxiangqing`) values (51,'2021-05-18 20:06:11','活动名称1','社团名称1','http://localhost:8080/springbooteuw84/upload/shetuanhuodong_huodongtupian1.jpg','2021-05-18','2021-05-18','活动地点1','账号1','手机1','活动详情1');
insert  into `shetuanhuodong`(`id`,`addtime`,`huodongmingcheng`,`shetuanmingcheng`,`huodongtupian`,`kaishishijian`,`jieshushijian`,`huodongdidian`,`zhanghao`,`shouji`,`huodongxiangqing`) values (52,'2021-05-18 20:06:11','活动名称2','社团名称2','http://localhost:8080/springbooteuw84/upload/shetuanhuodong_huodongtupian2.jpg','2021-05-18','2021-05-18','活动地点2','账号2','手机2','活动详情2');
insert  into `shetuanhuodong`(`id`,`addtime`,`huodongmingcheng`,`shetuanmingcheng`,`huodongtupian`,`kaishishijian`,`jieshushijian`,`huodongdidian`,`zhanghao`,`shouji`,`huodongxiangqing`) values (53,'2021-05-18 20:06:11','活动名称3','社团名称3','http://localhost:8080/springbooteuw84/upload/shetuanhuodong_huodongtupian3.jpg','2021-05-18','2021-05-18','活动地点3','账号3','手机3','活动详情3');
insert  into `shetuanhuodong`(`id`,`addtime`,`huodongmingcheng`,`shetuanmingcheng`,`huodongtupian`,`kaishishijian`,`jieshushijian`,`huodongdidian`,`zhanghao`,`shouji`,`huodongxiangqing`) values (54,'2021-05-18 20:06:11','活动名称4','社团名称4','http://localhost:8080/springbooteuw84/upload/shetuanhuodong_huodongtupian4.jpg','2021-05-18','2021-05-18','活动地点4','账号4','手机4','活动详情4');
insert  into `shetuanhuodong`(`id`,`addtime`,`huodongmingcheng`,`shetuanmingcheng`,`huodongtupian`,`kaishishijian`,`jieshushijian`,`huodongdidian`,`zhanghao`,`shouji`,`huodongxiangqing`) values (55,'2021-05-18 20:06:11','活动名称5','社团名称5','http://localhost:8080/springbooteuw84/upload/shetuanhuodong_huodongtupian5.jpg','2021-05-18','2021-05-18','活动地点5','账号5','手机5','活动详情5');
insert  into `shetuanhuodong`(`id`,`addtime`,`huodongmingcheng`,`shetuanmingcheng`,`huodongtupian`,`kaishishijian`,`jieshushijian`,`huodongdidian`,`zhanghao`,`shouji`,`huodongxiangqing`) values (56,'2021-05-18 20:06:11','活动名称6','社团名称6','http://localhost:8080/springbooteuw84/upload/shetuanhuodong_huodongtupian6.jpg','2021-05-18','2021-05-18','活动地点6','账号6','手机6','活动详情6');

/*Table structure for table `shetuanxinxi` */

DROP TABLE IF EXISTS `shetuanxinxi`;

CREATE TABLE `shetuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shetuanmingcheng` varchar(200) NOT NULL COMMENT '社团名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shetuanrenshu` varchar(200) DEFAULT NULL COMMENT '社团人数',
  `chuangjianshijian` date DEFAULT NULL COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `shezhangxingming` varchar(200) DEFAULT NULL COMMENT '社长姓名',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shetuanjianjie` longtext COMMENT '社团简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='社团信息';

/*Data for the table `shetuanxinxi` */

insert  into `shetuanxinxi`(`id`,`addtime`,`shetuanmingcheng`,`tupian`,`shetuanrenshu`,`chuangjianshijian`,`zhanghao`,`shezhangxingming`,`youxiang`,`shouji`,`shetuanjianjie`) values (31,'2021-05-18 20:06:11','社团名称1','http://localhost:8080/springbooteuw84/upload/shetuanxinxi_tupian1.jpg','社团人数1','2021-05-18','账号1','社长姓名1','邮箱1','手机1','社团简介1');
insert  into `shetuanxinxi`(`id`,`addtime`,`shetuanmingcheng`,`tupian`,`shetuanrenshu`,`chuangjianshijian`,`zhanghao`,`shezhangxingming`,`youxiang`,`shouji`,`shetuanjianjie`) values (32,'2021-05-18 20:06:11','社团名称2','http://localhost:8080/springbooteuw84/upload/shetuanxinxi_tupian2.jpg','社团人数2','2021-05-18','账号2','社长姓名2','邮箱2','手机2','社团简介2');
insert  into `shetuanxinxi`(`id`,`addtime`,`shetuanmingcheng`,`tupian`,`shetuanrenshu`,`chuangjianshijian`,`zhanghao`,`shezhangxingming`,`youxiang`,`shouji`,`shetuanjianjie`) values (33,'2021-05-18 20:06:11','社团名称3','http://localhost:8080/springbooteuw84/upload/shetuanxinxi_tupian3.jpg','社团人数3','2021-05-18','账号3','社长姓名3','邮箱3','手机3','社团简介3');
insert  into `shetuanxinxi`(`id`,`addtime`,`shetuanmingcheng`,`tupian`,`shetuanrenshu`,`chuangjianshijian`,`zhanghao`,`shezhangxingming`,`youxiang`,`shouji`,`shetuanjianjie`) values (34,'2021-05-18 20:06:11','社团名称4','http://localhost:8080/springbooteuw84/upload/shetuanxinxi_tupian4.jpg','社团人数4','2021-05-18','账号4','社长姓名4','邮箱4','手机4','社团简介4');
insert  into `shetuanxinxi`(`id`,`addtime`,`shetuanmingcheng`,`tupian`,`shetuanrenshu`,`chuangjianshijian`,`zhanghao`,`shezhangxingming`,`youxiang`,`shouji`,`shetuanjianjie`) values (35,'2021-05-18 20:06:11','社团名称5','http://localhost:8080/springbooteuw84/upload/shetuanxinxi_tupian5.jpg','社团人数5','2021-05-18','账号5','社长姓名5','邮箱5','手机5','社团简介5');
insert  into `shetuanxinxi`(`id`,`addtime`,`shetuanmingcheng`,`tupian`,`shetuanrenshu`,`chuangjianshijian`,`zhanghao`,`shezhangxingming`,`youxiang`,`shouji`,`shetuanjianjie`) values (36,'2021-05-18 20:06:11','社团名称6','http://localhost:8080/springbooteuw84/upload/shetuanxinxi_tupian6.jpg','社团人数6','2021-05-18','账号6','社长姓名6','邮箱6','手机6','社团简介6');

/*Table structure for table `shezhang` */

DROP TABLE IF EXISTS `shezhang`;

CREATE TABLE `shezhang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shezhangxingming` varchar(200) NOT NULL COMMENT '社长姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='社长';

/*Data for the table `shezhang` */

insert  into `shezhang`(`id`,`addtime`,`zhanghao`,`mima`,`shezhangxingming`,`touxiang`,`xingbie`,`shetuanmingcheng`,`shouji`,`youxiang`) values (21,'2021-05-18 20:06:11','1','1','社长姓名1','http://localhost:8080/springbooteuw84/upload/shezhang_touxiang1.jpg','男','社团名称1','13823888881','773890001@qq.com');
insert  into `shezhang`(`id`,`addtime`,`zhanghao`,`mima`,`shezhangxingming`,`touxiang`,`xingbie`,`shetuanmingcheng`,`shouji`,`youxiang`) values (22,'2021-05-18 20:06:11','社长2','123456','社长姓名2','http://localhost:8080/springbooteuw84/upload/shezhang_touxiang2.jpg','男','社团名称2','13823888882','773890002@qq.com');
insert  into `shezhang`(`id`,`addtime`,`zhanghao`,`mima`,`shezhangxingming`,`touxiang`,`xingbie`,`shetuanmingcheng`,`shouji`,`youxiang`) values (23,'2021-05-18 20:06:11','社长3','123456','社长姓名3','http://localhost:8080/springbooteuw84/upload/shezhang_touxiang3.jpg','男','社团名称3','13823888883','773890003@qq.com');
insert  into `shezhang`(`id`,`addtime`,`zhanghao`,`mima`,`shezhangxingming`,`touxiang`,`xingbie`,`shetuanmingcheng`,`shouji`,`youxiang`) values (24,'2021-05-18 20:06:11','社长4','123456','社长姓名4','http://localhost:8080/springbooteuw84/upload/shezhang_touxiang4.jpg','男','社团名称4','13823888884','773890004@qq.com');
insert  into `shezhang`(`id`,`addtime`,`zhanghao`,`mima`,`shezhangxingming`,`touxiang`,`xingbie`,`shetuanmingcheng`,`shouji`,`youxiang`) values (25,'2021-05-18 20:06:11','社长5','123456','社长姓名5','http://localhost:8080/springbooteuw84/upload/shezhang_touxiang5.jpg','男','社团名称5','13823888885','773890005@qq.com');
insert  into `shezhang`(`id`,`addtime`,`zhanghao`,`mima`,`shezhangxingming`,`touxiang`,`xingbie`,`shetuanmingcheng`,`shouji`,`youxiang`) values (26,'2021-05-18 20:06:11','社长6','123456','社长姓名6','http://localhost:8080/springbooteuw84/upload/shezhang_touxiang6.jpg','男','社团名称6','13823888886','773890006@qq.com');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','13wqj47naq4uw3to6yapbkxin0yyter8','2021-05-18 20:08:07','2021-05-18 21:08:08');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,11,'1','yonghu','用户','385gcpse0in7ncdn0ph8l9c8a7dkdqi7','2021-05-18 20:08:22','2021-05-18 21:08:23');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,21,'1','shezhang','社长','kya5dhr68dj14qsfpg3irnf5hcqbo44z','2021-05-18 20:08:32','2021-05-18 21:08:33');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-18 20:06:11');

/*Table structure for table `xinwenxinxi` */

DROP TABLE IF EXISTS `xinwenxinxi`;

CREATE TABLE `xinwenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinwenbiaoti` varchar(200) NOT NULL COMMENT '新闻标题',
  `leibie` varchar(200) NOT NULL COMMENT '类别',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='新闻信息';

/*Data for the table `xinwenxinxi` */

insert  into `xinwenxinxi`(`id`,`addtime`,`xinwenbiaoti`,`leibie`,`tupian`,`neirong`,`faburiqi`,`zhanghao`,`shetuanmingcheng`,`clicknum`) values (81,'2021-05-18 20:06:11','新闻标题1','类别1','http://localhost:8080/springbooteuw84/upload/xinwenxinxi_tupian1.jpg','内容1','2021-05-18','账号1','社团名称1',1);
insert  into `xinwenxinxi`(`id`,`addtime`,`xinwenbiaoti`,`leibie`,`tupian`,`neirong`,`faburiqi`,`zhanghao`,`shetuanmingcheng`,`clicknum`) values (82,'2021-05-18 20:06:11','新闻标题2','类别2','http://localhost:8080/springbooteuw84/upload/xinwenxinxi_tupian2.jpg','内容2','2021-05-18','账号2','社团名称2',2);
insert  into `xinwenxinxi`(`id`,`addtime`,`xinwenbiaoti`,`leibie`,`tupian`,`neirong`,`faburiqi`,`zhanghao`,`shetuanmingcheng`,`clicknum`) values (83,'2021-05-18 20:06:11','新闻标题3','类别3','http://localhost:8080/springbooteuw84/upload/xinwenxinxi_tupian3.jpg','内容3','2021-05-18','账号3','社团名称3',3);
insert  into `xinwenxinxi`(`id`,`addtime`,`xinwenbiaoti`,`leibie`,`tupian`,`neirong`,`faburiqi`,`zhanghao`,`shetuanmingcheng`,`clicknum`) values (84,'2021-05-18 20:06:11','新闻标题4','类别4','http://localhost:8080/springbooteuw84/upload/xinwenxinxi_tupian4.jpg','内容4','2021-05-18','账号4','社团名称4',4);
insert  into `xinwenxinxi`(`id`,`addtime`,`xinwenbiaoti`,`leibie`,`tupian`,`neirong`,`faburiqi`,`zhanghao`,`shetuanmingcheng`,`clicknum`) values (85,'2021-05-18 20:06:11','新闻标题5','类别5','http://localhost:8080/springbooteuw84/upload/xinwenxinxi_tupian5.jpg','内容5','2021-05-18','账号5','社团名称5',5);
insert  into `xinwenxinxi`(`id`,`addtime`,`xinwenbiaoti`,`leibie`,`tupian`,`neirong`,`faburiqi`,`zhanghao`,`shetuanmingcheng`,`clicknum`) values (86,'2021-05-18 20:06:11','新闻标题6','类别6','http://localhost:8080/springbooteuw84/upload/xinwenxinxi_tupian6.jpg','内容6','2021-05-18','账号6','社团名称6',6);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`banji`,`zhuanye`,`shouji`,`youxiang`) values (11,'2021-05-18 20:06:11','1','1','姓名1','http://localhost:8080/springbooteuw84/upload/yonghu_touxiang1.jpg','男','班级1','专业1','13823888881','773890001@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`banji`,`zhuanye`,`shouji`,`youxiang`) values (12,'2021-05-18 20:06:11','用户2','123456','姓名2','http://localhost:8080/springbooteuw84/upload/yonghu_touxiang2.jpg','男','班级2','专业2','13823888882','773890002@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`banji`,`zhuanye`,`shouji`,`youxiang`) values (13,'2021-05-18 20:06:11','用户3','123456','姓名3','http://localhost:8080/springbooteuw84/upload/yonghu_touxiang3.jpg','男','班级3','专业3','13823888883','773890003@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`banji`,`zhuanye`,`shouji`,`youxiang`) values (14,'2021-05-18 20:06:11','用户4','123456','姓名4','http://localhost:8080/springbooteuw84/upload/yonghu_touxiang4.jpg','男','班级4','专业4','13823888884','773890004@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`banji`,`zhuanye`,`shouji`,`youxiang`) values (15,'2021-05-18 20:06:11','用户5','123456','姓名5','http://localhost:8080/springbooteuw84/upload/yonghu_touxiang5.jpg','男','班级5','专业5','13823888885','773890005@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`banji`,`zhuanye`,`shouji`,`youxiang`) values (16,'2021-05-18 20:06:11','用户6','123456','姓名6','http://localhost:8080/springbooteuw84/upload/yonghu_touxiang6.jpg','男','班级6','专业6','13823888886','773890006@qq.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
