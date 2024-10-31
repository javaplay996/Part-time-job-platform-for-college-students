/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jspm6z539
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jspm6z539` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jspm6z539`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspm6z539/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/jspm6z539/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/jspm6z539/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `daxuesheng` */

DROP TABLE IF EXISTS `daxuesheng`;

CREATE TABLE `daxuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='大学生';

/*Data for the table `daxuesheng` */

insert  into `daxuesheng`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`,`sfsh`,`shhf`) values (11,'2021-05-07 22:42:45','大学生1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/jspm6z539/upload/daxuesheng_zhaopian1.jpg','是','');
insert  into `daxuesheng`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`,`sfsh`,`shhf`) values (12,'2021-05-07 22:42:45','大学生2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/jspm6z539/upload/daxuesheng_zhaopian2.jpg','是','');
insert  into `daxuesheng`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`,`sfsh`,`shhf`) values (13,'2021-05-07 22:42:45','大学生3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/jspm6z539/upload/daxuesheng_zhaopian3.jpg','是','');
insert  into `daxuesheng`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`,`sfsh`,`shhf`) values (14,'2021-05-07 22:42:45','大学生4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/jspm6z539/upload/daxuesheng_zhaopian4.jpg','是','');
insert  into `daxuesheng`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`,`sfsh`,`shhf`) values (15,'2021-05-07 22:42:45','大学生5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/jspm6z539/upload/daxuesheng_zhaopian5.jpg','是','');
insert  into `daxuesheng`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`,`sfsh`,`shhf`) values (16,'2021-05-07 22:42:45','大学生6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/jspm6z539/upload/daxuesheng_zhaopian6.jpg','是','');

/*Table structure for table `discussqiye` */

DROP TABLE IF EXISTS `discussqiye`;

CREATE TABLE `discussqiye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='企业评论表';

/*Data for the table `discussqiye` */

insert  into `discussqiye`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (141,'2021-05-07 22:42:46',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussqiye`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (142,'2021-05-07 22:42:46',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussqiye`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (143,'2021-05-07 22:42:46',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussqiye`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (144,'2021-05-07 22:42:46',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussqiye`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (145,'2021-05-07 22:42:46',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussqiye`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (146,'2021-05-07 22:42:46',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `jianzhixinxi` */

DROP TABLE IF EXISTS `jianzhixinxi`;

CREATE TABLE `jianzhixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gangweimingcheng` varchar(200) NOT NULL COMMENT '岗位名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gangweijieshao` longtext COMMENT '岗位介绍',
  `gangweiyaoqiu` longtext COMMENT '岗位要求',
  `gangweigongzi` int(11) NOT NULL COMMENT '岗位工资',
  `jianzhileixing` varchar(200) NOT NULL COMMENT '兼职类型',
  `gongzuodidian` varchar(200) DEFAULT NULL COMMENT '工作地点',
  `gongzuoshijian` varchar(200) DEFAULT NULL COMMENT '工作时间',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='兼职信息';

/*Data for the table `jianzhixinxi` */

insert  into `jianzhixinxi`(`id`,`addtime`,`gangweimingcheng`,`tupian`,`gangweijieshao`,`gangweiyaoqiu`,`gangweigongzi`,`jianzhileixing`,`gongzuodidian`,`gongzuoshijian`,`qiyezhanghao`,`qiyemingcheng`,`fuzeren`,`lianxifangshi`,`thumbsupnum`,`crazilynum`) values (41,'2021-05-07 22:42:45','岗位名称1','http://localhost:8080/jspm6z539/upload/jianzhixinxi_tupian1.jpg','岗位介绍1','岗位要求1',1,'日结兼职','工作地点1','工作时间1','企业账号1','企业名称1','负责人1','联系方式1',1,1);
insert  into `jianzhixinxi`(`id`,`addtime`,`gangweimingcheng`,`tupian`,`gangweijieshao`,`gangweiyaoqiu`,`gangweigongzi`,`jianzhileixing`,`gongzuodidian`,`gongzuoshijian`,`qiyezhanghao`,`qiyemingcheng`,`fuzeren`,`lianxifangshi`,`thumbsupnum`,`crazilynum`) values (42,'2021-05-07 22:42:45','岗位名称2','http://localhost:8080/jspm6z539/upload/jianzhixinxi_tupian2.jpg','岗位介绍2','岗位要求2',2,'日结兼职','工作地点2','工作时间2','企业账号2','企业名称2','负责人2','联系方式2',2,2);
insert  into `jianzhixinxi`(`id`,`addtime`,`gangweimingcheng`,`tupian`,`gangweijieshao`,`gangweiyaoqiu`,`gangweigongzi`,`jianzhileixing`,`gongzuodidian`,`gongzuoshijian`,`qiyezhanghao`,`qiyemingcheng`,`fuzeren`,`lianxifangshi`,`thumbsupnum`,`crazilynum`) values (43,'2021-05-07 22:42:45','岗位名称3','http://localhost:8080/jspm6z539/upload/jianzhixinxi_tupian3.jpg','岗位介绍3','岗位要求3',3,'日结兼职','工作地点3','工作时间3','企业账号3','企业名称3','负责人3','联系方式3',3,3);
insert  into `jianzhixinxi`(`id`,`addtime`,`gangweimingcheng`,`tupian`,`gangweijieshao`,`gangweiyaoqiu`,`gangweigongzi`,`jianzhileixing`,`gongzuodidian`,`gongzuoshijian`,`qiyezhanghao`,`qiyemingcheng`,`fuzeren`,`lianxifangshi`,`thumbsupnum`,`crazilynum`) values (44,'2021-05-07 22:42:45','岗位名称4','http://localhost:8080/jspm6z539/upload/jianzhixinxi_tupian4.jpg','岗位介绍4','岗位要求4',4,'日结兼职','工作地点4','工作时间4','企业账号4','企业名称4','负责人4','联系方式4',4,4);
insert  into `jianzhixinxi`(`id`,`addtime`,`gangweimingcheng`,`tupian`,`gangweijieshao`,`gangweiyaoqiu`,`gangweigongzi`,`jianzhileixing`,`gongzuodidian`,`gongzuoshijian`,`qiyezhanghao`,`qiyemingcheng`,`fuzeren`,`lianxifangshi`,`thumbsupnum`,`crazilynum`) values (45,'2021-05-07 22:42:45','岗位名称5','http://localhost:8080/jspm6z539/upload/jianzhixinxi_tupian5.jpg','岗位介绍5','岗位要求5',5,'日结兼职','工作地点5','工作时间5','企业账号5','企业名称5','负责人5','联系方式5',5,5);
insert  into `jianzhixinxi`(`id`,`addtime`,`gangweimingcheng`,`tupian`,`gangweijieshao`,`gangweiyaoqiu`,`gangweigongzi`,`jianzhileixing`,`gongzuodidian`,`gongzuoshijian`,`qiyezhanghao`,`qiyemingcheng`,`fuzeren`,`lianxifangshi`,`thumbsupnum`,`crazilynum`) values (46,'2021-05-07 22:42:45','岗位名称6','http://localhost:8080/jspm6z539/upload/jianzhixinxi_tupian6.jpg','岗位介绍6','岗位要求6',6,'日结兼职','工作地点6','工作时间6','企业账号6','企业名称6','负责人6','联系方式6',6,6);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (131,'2021-05-07 22:42:45',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (132,'2021-05-07 22:42:45',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (133,'2021-05-07 22:42:45',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (134,'2021-05-07 22:42:45',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (135,'2021-05-07 22:42:45',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (136,'2021-05-07 22:42:45',6,'用户名6','留言内容6','回复内容6');

/*Table structure for table `qiandingheyue` */

DROP TABLE IF EXISTS `qiandingheyue`;

CREATE TABLE `qiandingheyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `jianjie` longtext COMMENT '简介',
  `neirong` longtext COMMENT '内容',
  `qiandingriqi` date DEFAULT NULL COMMENT '签订日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='签订合约';

/*Data for the table `qiandingheyue` */

insert  into `qiandingheyue`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`qiandingriqi`,`zhanghao`,`xingming`,`qiyezhanghao`,`qiyemingcheng`,`sfsh`,`shhf`) values (71,'2021-05-07 22:42:45','标题1','简介1','内容1','2021-05-07','账号1','姓名1','企业账号1','企业名称1','是','');
insert  into `qiandingheyue`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`qiandingriqi`,`zhanghao`,`xingming`,`qiyezhanghao`,`qiyemingcheng`,`sfsh`,`shhf`) values (72,'2021-05-07 22:42:45','标题2','简介2','内容2','2021-05-07','账号2','姓名2','企业账号2','企业名称2','是','');
insert  into `qiandingheyue`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`qiandingriqi`,`zhanghao`,`xingming`,`qiyezhanghao`,`qiyemingcheng`,`sfsh`,`shhf`) values (73,'2021-05-07 22:42:45','标题3','简介3','内容3','2021-05-07','账号3','姓名3','企业账号3','企业名称3','是','');
insert  into `qiandingheyue`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`qiandingriqi`,`zhanghao`,`xingming`,`qiyezhanghao`,`qiyemingcheng`,`sfsh`,`shhf`) values (74,'2021-05-07 22:42:45','标题4','简介4','内容4','2021-05-07','账号4','姓名4','企业账号4','企业名称4','是','');
insert  into `qiandingheyue`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`qiandingriqi`,`zhanghao`,`xingming`,`qiyezhanghao`,`qiyemingcheng`,`sfsh`,`shhf`) values (75,'2021-05-07 22:42:45','标题5','简介5','内容5','2021-05-07','账号5','姓名5','企业账号5','企业名称5','是','');
insert  into `qiandingheyue`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`qiandingriqi`,`zhanghao`,`xingming`,`qiyezhanghao`,`qiyemingcheng`,`sfsh`,`shhf`) values (76,'2021-05-07 22:42:45','标题6','简介6','内容6','2021-05-07','账号6','姓名6','企业账号6','企业名称6','是','');

/*Table structure for table `qiuzhijianli` */

DROP TABLE IF EXISTS `qiuzhijianli`;

CREATE TABLE `qiuzhijianli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `xueli` varchar(200) DEFAULT NULL COMMENT '学历',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `chushengriqi` date DEFAULT NULL COMMENT '出生日期',
  `qiuzhigangwei` varchar(200) DEFAULT NULL COMMENT '求职岗位',
  `gongzuodidian` varchar(200) DEFAULT NULL COMMENT '工作地点',
  `qiwangxinzi` int(11) DEFAULT NULL COMMENT '期望薪资',
  `jiaoyubeijing` varchar(200) DEFAULT NULL COMMENT '教育背景',
  `huojiangzhengshu` varchar(200) DEFAULT NULL COMMENT '获奖证书',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='求职简历';

/*Data for the table `qiuzhijianli` */

insert  into `qiuzhijianli`(`id`,`addtime`,`zhanghao`,`xingming`,`zhaopian`,`xueli`,`zhuanye`,`xingbie`,`chushengriqi`,`qiuzhigangwei`,`gongzuodidian`,`qiwangxinzi`,`jiaoyubeijing`,`huojiangzhengshu`,`sfsh`,`shhf`) values (31,'2021-05-07 22:42:45','账号1','姓名1','http://localhost:8080/jspm6z539/upload/qiuzhijianli_zhaopian1.jpg','学历1','专业1','男','2021-05-07','求职岗位1','工作地点1',1,'教育背景1','获奖证书1','是','');
insert  into `qiuzhijianli`(`id`,`addtime`,`zhanghao`,`xingming`,`zhaopian`,`xueli`,`zhuanye`,`xingbie`,`chushengriqi`,`qiuzhigangwei`,`gongzuodidian`,`qiwangxinzi`,`jiaoyubeijing`,`huojiangzhengshu`,`sfsh`,`shhf`) values (32,'2021-05-07 22:42:45','账号2','姓名2','http://localhost:8080/jspm6z539/upload/qiuzhijianli_zhaopian2.jpg','学历2','专业2','男','2021-05-07','求职岗位2','工作地点2',2,'教育背景2','获奖证书2','是','');
insert  into `qiuzhijianli`(`id`,`addtime`,`zhanghao`,`xingming`,`zhaopian`,`xueli`,`zhuanye`,`xingbie`,`chushengriqi`,`qiuzhigangwei`,`gongzuodidian`,`qiwangxinzi`,`jiaoyubeijing`,`huojiangzhengshu`,`sfsh`,`shhf`) values (33,'2021-05-07 22:42:45','账号3','姓名3','http://localhost:8080/jspm6z539/upload/qiuzhijianli_zhaopian3.jpg','学历3','专业3','男','2021-05-07','求职岗位3','工作地点3',3,'教育背景3','获奖证书3','是','');
insert  into `qiuzhijianli`(`id`,`addtime`,`zhanghao`,`xingming`,`zhaopian`,`xueli`,`zhuanye`,`xingbie`,`chushengriqi`,`qiuzhigangwei`,`gongzuodidian`,`qiwangxinzi`,`jiaoyubeijing`,`huojiangzhengshu`,`sfsh`,`shhf`) values (34,'2021-05-07 22:42:45','账号4','姓名4','http://localhost:8080/jspm6z539/upload/qiuzhijianli_zhaopian4.jpg','学历4','专业4','男','2021-05-07','求职岗位4','工作地点4',4,'教育背景4','获奖证书4','是','');
insert  into `qiuzhijianli`(`id`,`addtime`,`zhanghao`,`xingming`,`zhaopian`,`xueli`,`zhuanye`,`xingbie`,`chushengriqi`,`qiuzhigangwei`,`gongzuodidian`,`qiwangxinzi`,`jiaoyubeijing`,`huojiangzhengshu`,`sfsh`,`shhf`) values (35,'2021-05-07 22:42:45','账号5','姓名5','http://localhost:8080/jspm6z539/upload/qiuzhijianli_zhaopian5.jpg','学历5','专业5','男','2021-05-07','求职岗位5','工作地点5',5,'教育背景5','获奖证书5','是','');
insert  into `qiuzhijianli`(`id`,`addtime`,`zhanghao`,`xingming`,`zhaopian`,`xueli`,`zhuanye`,`xingbie`,`chushengriqi`,`qiuzhigangwei`,`gongzuodidian`,`qiwangxinzi`,`jiaoyubeijing`,`huojiangzhengshu`,`sfsh`,`shhf`) values (36,'2021-05-07 22:42:45','账号6','姓名6','http://localhost:8080/jspm6z539/upload/qiuzhijianli_zhaopian6.jpg','学历6','专业6','男','2021-05-07','求职岗位6','工作地点6',6,'教育背景6','获奖证书6','是','');

/*Table structure for table `qiye` */

DROP TABLE IF EXISTS `qiye`;

CREATE TABLE `qiye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) NOT NULL COMMENT '企业账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `qiyemingcheng` varchar(200) NOT NULL COMMENT '企业名称',
  `qiyedizhi` varchar(200) DEFAULT NULL COMMENT '企业地址',
  `qiyeguimo` varchar(200) DEFAULT NULL COMMENT '企业规模',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `qiyetupian` varchar(200) DEFAULT NULL COMMENT '企业图片',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `wenjian` varchar(200) DEFAULT NULL COMMENT '文件',
  `qiyejianjie` longtext COMMENT '企业简介',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qiyezhanghao` (`qiyezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='企业';

/*Data for the table `qiye` */

insert  into `qiye`(`id`,`addtime`,`qiyezhanghao`,`mima`,`qiyemingcheng`,`qiyedizhi`,`qiyeguimo`,`fuzeren`,`lianxifangshi`,`qiyetupian`,`youxiang`,`wenjian`,`qiyejianjie`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`) values (21,'2021-05-07 22:42:45','企业1','123456','企业名称1','企业地址1','企业规模1','负责人1','13823888881','http://localhost:8080/jspm6z539/upload/qiye_qiyetupian1.jpg','773890001@qq.com','','企业简介1','是','',1,1);
insert  into `qiye`(`id`,`addtime`,`qiyezhanghao`,`mima`,`qiyemingcheng`,`qiyedizhi`,`qiyeguimo`,`fuzeren`,`lianxifangshi`,`qiyetupian`,`youxiang`,`wenjian`,`qiyejianjie`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`) values (22,'2021-05-07 22:42:45','企业2','123456','企业名称2','企业地址2','企业规模2','负责人2','13823888882','http://localhost:8080/jspm6z539/upload/qiye_qiyetupian2.jpg','773890002@qq.com','','企业简介2','是','',2,2);
insert  into `qiye`(`id`,`addtime`,`qiyezhanghao`,`mima`,`qiyemingcheng`,`qiyedizhi`,`qiyeguimo`,`fuzeren`,`lianxifangshi`,`qiyetupian`,`youxiang`,`wenjian`,`qiyejianjie`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`) values (23,'2021-05-07 22:42:45','企业3','123456','企业名称3','企业地址3','企业规模3','负责人3','13823888883','http://localhost:8080/jspm6z539/upload/qiye_qiyetupian3.jpg','773890003@qq.com','','企业简介3','是','',3,3);
insert  into `qiye`(`id`,`addtime`,`qiyezhanghao`,`mima`,`qiyemingcheng`,`qiyedizhi`,`qiyeguimo`,`fuzeren`,`lianxifangshi`,`qiyetupian`,`youxiang`,`wenjian`,`qiyejianjie`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`) values (24,'2021-05-07 22:42:45','企业4','123456','企业名称4','企业地址4','企业规模4','负责人4','13823888884','http://localhost:8080/jspm6z539/upload/qiye_qiyetupian4.jpg','773890004@qq.com','','企业简介4','是','',4,4);
insert  into `qiye`(`id`,`addtime`,`qiyezhanghao`,`mima`,`qiyemingcheng`,`qiyedizhi`,`qiyeguimo`,`fuzeren`,`lianxifangshi`,`qiyetupian`,`youxiang`,`wenjian`,`qiyejianjie`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`) values (25,'2021-05-07 22:42:45','企业5','123456','企业名称5','企业地址5','企业规模5','负责人5','13823888885','http://localhost:8080/jspm6z539/upload/qiye_qiyetupian5.jpg','773890005@qq.com','','企业简介5','是','',5,5);
insert  into `qiye`(`id`,`addtime`,`qiyezhanghao`,`mima`,`qiyemingcheng`,`qiyedizhi`,`qiyeguimo`,`fuzeren`,`lianxifangshi`,`qiyetupian`,`youxiang`,`wenjian`,`qiyejianjie`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`) values (26,'2021-05-07 22:42:45','企业6','123456','企业名称6','企业地址6','企业规模6','负责人6','13823888886','http://localhost:8080/jspm6z539/upload/qiye_qiyetupian6.jpg','773890006@qq.com','','企业简介6','是','',6,6);

/*Table structure for table `qiyefalvyuanzhu` */

DROP TABLE IF EXISTS `qiyefalvyuanzhu`;

CREATE TABLE `qiyefalvyuanzhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) NOT NULL COMMENT '编号',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `shenqingneirong` longtext COMMENT '申请内容',
  `tijiaoziliao` varchar(200) DEFAULT NULL COMMENT '提交资料',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `shenqingren` varchar(200) DEFAULT NULL COMMENT '申请人',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='企业法律援助';

/*Data for the table `qiyefalvyuanzhu` */

insert  into `qiyefalvyuanzhu`(`id`,`addtime`,`bianhao`,`mingcheng`,`shenqingneirong`,`tijiaoziliao`,`shenqingriqi`,`shenqingren`,`qiyezhanghao`,`qiyemingcheng`) values (91,'2021-05-07 22:42:45','编号1','名称1','申请内容1','','2021-05-07','申请人1','企业账号1','企业名称1');
insert  into `qiyefalvyuanzhu`(`id`,`addtime`,`bianhao`,`mingcheng`,`shenqingneirong`,`tijiaoziliao`,`shenqingriqi`,`shenqingren`,`qiyezhanghao`,`qiyemingcheng`) values (92,'2021-05-07 22:42:45','编号2','名称2','申请内容2','','2021-05-07','申请人2','企业账号2','企业名称2');
insert  into `qiyefalvyuanzhu`(`id`,`addtime`,`bianhao`,`mingcheng`,`shenqingneirong`,`tijiaoziliao`,`shenqingriqi`,`shenqingren`,`qiyezhanghao`,`qiyemingcheng`) values (93,'2021-05-07 22:42:45','编号3','名称3','申请内容3','','2021-05-07','申请人3','企业账号3','企业名称3');
insert  into `qiyefalvyuanzhu`(`id`,`addtime`,`bianhao`,`mingcheng`,`shenqingneirong`,`tijiaoziliao`,`shenqingriqi`,`shenqingren`,`qiyezhanghao`,`qiyemingcheng`) values (94,'2021-05-07 22:42:45','编号4','名称4','申请内容4','','2021-05-07','申请人4','企业账号4','企业名称4');
insert  into `qiyefalvyuanzhu`(`id`,`addtime`,`bianhao`,`mingcheng`,`shenqingneirong`,`tijiaoziliao`,`shenqingriqi`,`shenqingren`,`qiyezhanghao`,`qiyemingcheng`) values (95,'2021-05-07 22:42:45','编号5','名称5','申请内容5','','2021-05-07','申请人5','企业账号5','企业名称5');
insert  into `qiyefalvyuanzhu`(`id`,`addtime`,`bianhao`,`mingcheng`,`shenqingneirong`,`tijiaoziliao`,`shenqingriqi`,`shenqingren`,`qiyezhanghao`,`qiyemingcheng`) values (96,'2021-05-07 22:42:45','编号6','名称6','申请内容6','','2021-05-07','申请人6','企业账号6','企业名称6');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','kgppsz0tpaekb9pl2v0kmp8wok7v6s7t','2021-05-07 22:44:17','2021-05-07 23:44:18');

/*Table structure for table `toudijianli` */

DROP TABLE IF EXISTS `toudijianli`;

CREATE TABLE `toudijianli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `chushengriqi` date DEFAULT NULL COMMENT '出生日期',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `qiuzhigangwei` varchar(200) DEFAULT NULL COMMENT '求职岗位',
  `qiwangxinzi` varchar(200) DEFAULT NULL COMMENT '期望薪资',
  `jiaoyubeijing` varchar(200) DEFAULT NULL COMMENT '教育背景',
  `huojiangzhengshu` varchar(200) DEFAULT NULL COMMENT '获奖证书',
  `biyexuexiao` varchar(200) DEFAULT NULL COMMENT '毕业学校',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='投递简历';

/*Data for the table `toudijianli` */

insert  into `toudijianli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`xingbie`,`zhaopian`,`chushengriqi`,`qiyezhanghao`,`qiyemingcheng`,`qiuzhigangwei`,`qiwangxinzi`,`jiaoyubeijing`,`huojiangzhengshu`,`biyexuexiao`,`sfsh`,`shhf`) values (51,'2021-05-07 22:42:45','账号1','姓名1','手机1','身份证1','性别1','http://localhost:8080/jspm6z539/upload/toudijianli_zhaopian1.jpg','2021-05-07','企业账号1','企业名称1','求职岗位1','期望薪资1','教育背景1','获奖证书1','毕业学校1','是','');
insert  into `toudijianli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`xingbie`,`zhaopian`,`chushengriqi`,`qiyezhanghao`,`qiyemingcheng`,`qiuzhigangwei`,`qiwangxinzi`,`jiaoyubeijing`,`huojiangzhengshu`,`biyexuexiao`,`sfsh`,`shhf`) values (52,'2021-05-07 22:42:45','账号2','姓名2','手机2','身份证2','性别2','http://localhost:8080/jspm6z539/upload/toudijianli_zhaopian2.jpg','2021-05-07','企业账号2','企业名称2','求职岗位2','期望薪资2','教育背景2','获奖证书2','毕业学校2','是','');
insert  into `toudijianli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`xingbie`,`zhaopian`,`chushengriqi`,`qiyezhanghao`,`qiyemingcheng`,`qiuzhigangwei`,`qiwangxinzi`,`jiaoyubeijing`,`huojiangzhengshu`,`biyexuexiao`,`sfsh`,`shhf`) values (53,'2021-05-07 22:42:45','账号3','姓名3','手机3','身份证3','性别3','http://localhost:8080/jspm6z539/upload/toudijianli_zhaopian3.jpg','2021-05-07','企业账号3','企业名称3','求职岗位3','期望薪资3','教育背景3','获奖证书3','毕业学校3','是','');
insert  into `toudijianli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`xingbie`,`zhaopian`,`chushengriqi`,`qiyezhanghao`,`qiyemingcheng`,`qiuzhigangwei`,`qiwangxinzi`,`jiaoyubeijing`,`huojiangzhengshu`,`biyexuexiao`,`sfsh`,`shhf`) values (54,'2021-05-07 22:42:45','账号4','姓名4','手机4','身份证4','性别4','http://localhost:8080/jspm6z539/upload/toudijianli_zhaopian4.jpg','2021-05-07','企业账号4','企业名称4','求职岗位4','期望薪资4','教育背景4','获奖证书4','毕业学校4','是','');
insert  into `toudijianli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`xingbie`,`zhaopian`,`chushengriqi`,`qiyezhanghao`,`qiyemingcheng`,`qiuzhigangwei`,`qiwangxinzi`,`jiaoyubeijing`,`huojiangzhengshu`,`biyexuexiao`,`sfsh`,`shhf`) values (55,'2021-05-07 22:42:45','账号5','姓名5','手机5','身份证5','性别5','http://localhost:8080/jspm6z539/upload/toudijianli_zhaopian5.jpg','2021-05-07','企业账号5','企业名称5','求职岗位5','期望薪资5','教育背景5','获奖证书5','毕业学校5','是','');
insert  into `toudijianli`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`xingbie`,`zhaopian`,`chushengriqi`,`qiyezhanghao`,`qiyemingcheng`,`qiuzhigangwei`,`qiwangxinzi`,`jiaoyubeijing`,`huojiangzhengshu`,`biyexuexiao`,`sfsh`,`shhf`) values (56,'2021-05-07 22:42:45','账号6','姓名6','手机6','身份证6','性别6','http://localhost:8080/jspm6z539/upload/toudijianli_zhaopian6.jpg','2021-05-07','企业账号6','企业名称6','求职岗位6','期望薪资6','教育背景6','获奖证书6','毕业学校6','是','');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-07 22:42:46');

/*Table structure for table `xinyongdengjipingding` */

DROP TABLE IF EXISTS `xinyongdengjipingding`;

CREATE TABLE `xinyongdengjipingding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `qiyedengji` varchar(200) DEFAULT NULL COMMENT '企业等级',
  `pingdingliyou` longtext COMMENT '评定理由',
  `pingdingshijian` date DEFAULT NULL COMMENT '评定时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='信用等级评定';

/*Data for the table `xinyongdengjipingding` */

insert  into `xinyongdengjipingding`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`qiyemingcheng`,`qiyedengji`,`pingdingliyou`,`pingdingshijian`) values (101,'2021-05-07 22:42:45','账号1','姓名1','手机1','企业名称1','1星','评定理由1','2021-05-07');
insert  into `xinyongdengjipingding`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`qiyemingcheng`,`qiyedengji`,`pingdingliyou`,`pingdingshijian`) values (102,'2021-05-07 22:42:45','账号2','姓名2','手机2','企业名称2','1星','评定理由2','2021-05-07');
insert  into `xinyongdengjipingding`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`qiyemingcheng`,`qiyedengji`,`pingdingliyou`,`pingdingshijian`) values (103,'2021-05-07 22:42:45','账号3','姓名3','手机3','企业名称3','1星','评定理由3','2021-05-07');
insert  into `xinyongdengjipingding`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`qiyemingcheng`,`qiyedengji`,`pingdingliyou`,`pingdingshijian`) values (104,'2021-05-07 22:42:45','账号4','姓名4','手机4','企业名称4','1星','评定理由4','2021-05-07');
insert  into `xinyongdengjipingding`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`qiyemingcheng`,`qiyedengji`,`pingdingliyou`,`pingdingshijian`) values (105,'2021-05-07 22:42:45','账号5','姓名5','手机5','企业名称5','1星','评定理由5','2021-05-07');
insert  into `xinyongdengjipingding`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`qiyemingcheng`,`qiyedengji`,`pingdingliyou`,`pingdingshijian`) values (106,'2021-05-07 22:42:45','账号6','姓名6','手机6','企业名称6','1星','评定理由6','2021-05-07');

/*Table structure for table `xueshengfalvyuanzhu` */

DROP TABLE IF EXISTS `xueshengfalvyuanzhu`;

CREATE TABLE `xueshengfalvyuanzhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) NOT NULL COMMENT '编号',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `shenqingneirong` longtext COMMENT '申请内容',
  `tijiaoziliao` varchar(200) DEFAULT NULL COMMENT '提交资料',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `shenqingren` varchar(200) DEFAULT NULL COMMENT '申请人',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='学生法律援助';

/*Data for the table `xueshengfalvyuanzhu` */

insert  into `xueshengfalvyuanzhu`(`id`,`addtime`,`bianhao`,`mingcheng`,`shenqingneirong`,`tijiaoziliao`,`shenqingriqi`,`shenqingren`,`zhanghao`,`xingming`) values (81,'2021-05-07 22:42:45','编号1','名称1','申请内容1','','2021-05-07','申请人1','账号1','姓名1');
insert  into `xueshengfalvyuanzhu`(`id`,`addtime`,`bianhao`,`mingcheng`,`shenqingneirong`,`tijiaoziliao`,`shenqingriqi`,`shenqingren`,`zhanghao`,`xingming`) values (82,'2021-05-07 22:42:45','编号2','名称2','申请内容2','','2021-05-07','申请人2','账号2','姓名2');
insert  into `xueshengfalvyuanzhu`(`id`,`addtime`,`bianhao`,`mingcheng`,`shenqingneirong`,`tijiaoziliao`,`shenqingriqi`,`shenqingren`,`zhanghao`,`xingming`) values (83,'2021-05-07 22:42:45','编号3','名称3','申请内容3','','2021-05-07','申请人3','账号3','姓名3');
insert  into `xueshengfalvyuanzhu`(`id`,`addtime`,`bianhao`,`mingcheng`,`shenqingneirong`,`tijiaoziliao`,`shenqingriqi`,`shenqingren`,`zhanghao`,`xingming`) values (84,'2021-05-07 22:42:45','编号4','名称4','申请内容4','','2021-05-07','申请人4','账号4','姓名4');
insert  into `xueshengfalvyuanzhu`(`id`,`addtime`,`bianhao`,`mingcheng`,`shenqingneirong`,`tijiaoziliao`,`shenqingriqi`,`shenqingren`,`zhanghao`,`xingming`) values (85,'2021-05-07 22:42:45','编号5','名称5','申请内容5','','2021-05-07','申请人5','账号5','姓名5');
insert  into `xueshengfalvyuanzhu`(`id`,`addtime`,`bianhao`,`mingcheng`,`shenqingneirong`,`tijiaoziliao`,`shenqingriqi`,`shenqingren`,`zhanghao`,`xingming`) values (86,'2021-05-07 22:42:45','编号6','名称6','申请内容6','','2021-05-07','申请人6','账号6','姓名6');

/*Table structure for table `xueshengliuyan` */

DROP TABLE IF EXISTS `xueshengliuyan`;

CREATE TABLE `xueshengliuyan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `liuyan` varchar(200) DEFAULT NULL COMMENT '留言',
  `liuyanshijian` datetime DEFAULT NULL COMMENT '留言时间',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='学生留言';

/*Data for the table `xueshengliuyan` */

insert  into `xueshengliuyan`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`liuyan`,`liuyanshijian`,`qiyezhanghao`,`qiyemingcheng`,`sfsh`,`shhf`) values (61,'2021-05-07 22:42:45','账号1','姓名1','手机1','留言1','2021-05-07 22:42:45','企业账号1','企业名称1','是','');
insert  into `xueshengliuyan`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`liuyan`,`liuyanshijian`,`qiyezhanghao`,`qiyemingcheng`,`sfsh`,`shhf`) values (62,'2021-05-07 22:42:45','账号2','姓名2','手机2','留言2','2021-05-07 22:42:45','企业账号2','企业名称2','是','');
insert  into `xueshengliuyan`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`liuyan`,`liuyanshijian`,`qiyezhanghao`,`qiyemingcheng`,`sfsh`,`shhf`) values (63,'2021-05-07 22:42:45','账号3','姓名3','手机3','留言3','2021-05-07 22:42:45','企业账号3','企业名称3','是','');
insert  into `xueshengliuyan`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`liuyan`,`liuyanshijian`,`qiyezhanghao`,`qiyemingcheng`,`sfsh`,`shhf`) values (64,'2021-05-07 22:42:45','账号4','姓名4','手机4','留言4','2021-05-07 22:42:45','企业账号4','企业名称4','是','');
insert  into `xueshengliuyan`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`liuyan`,`liuyanshijian`,`qiyezhanghao`,`qiyemingcheng`,`sfsh`,`shhf`) values (65,'2021-05-07 22:42:45','账号5','姓名5','手机5','留言5','2021-05-07 22:42:45','企业账号5','企业名称5','是','');
insert  into `xueshengliuyan`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`liuyan`,`liuyanshijian`,`qiyezhanghao`,`qiyemingcheng`,`sfsh`,`shhf`) values (66,'2021-05-07 22:42:45','账号6','姓名6','手机6','留言6','2021-05-07 22:42:45','企业账号6','企业名称6','是','');

/*Table structure for table `zhiqiantixing` */

DROP TABLE IF EXISTS `zhiqiantixing`;

CREATE TABLE `zhiqiantixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `jianjie` longtext COMMENT '简介',
  `neirong` longtext COMMENT '内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='职前提醒';

/*Data for the table `zhiqiantixing` */

insert  into `zhiqiantixing`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`qiyezhanghao`,`qiyemingcheng`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (111,'2021-05-07 22:42:45','标题1','简介1','内容1','2021-05-07','http://localhost:8080/jspm6z539/upload/zhiqiantixing_fengmian1.jpg','企业账号1','企业名称1','账号1','姓名1','是','');
insert  into `zhiqiantixing`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`qiyezhanghao`,`qiyemingcheng`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (112,'2021-05-07 22:42:45','标题2','简介2','内容2','2021-05-07','http://localhost:8080/jspm6z539/upload/zhiqiantixing_fengmian2.jpg','企业账号2','企业名称2','账号2','姓名2','是','');
insert  into `zhiqiantixing`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`qiyezhanghao`,`qiyemingcheng`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (113,'2021-05-07 22:42:45','标题3','简介3','内容3','2021-05-07','http://localhost:8080/jspm6z539/upload/zhiqiantixing_fengmian3.jpg','企业账号3','企业名称3','账号3','姓名3','是','');
insert  into `zhiqiantixing`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`qiyezhanghao`,`qiyemingcheng`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (114,'2021-05-07 22:42:45','标题4','简介4','内容4','2021-05-07','http://localhost:8080/jspm6z539/upload/zhiqiantixing_fengmian4.jpg','企业账号4','企业名称4','账号4','姓名4','是','');
insert  into `zhiqiantixing`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`qiyezhanghao`,`qiyemingcheng`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (115,'2021-05-07 22:42:45','标题5','简介5','内容5','2021-05-07','http://localhost:8080/jspm6z539/upload/zhiqiantixing_fengmian5.jpg','企业账号5','企业名称5','账号5','姓名5','是','');
insert  into `zhiqiantixing`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`qiyezhanghao`,`qiyemingcheng`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (116,'2021-05-07 22:42:45','标题6','简介6','内容6','2021-05-07','http://localhost:8080/jspm6z539/upload/zhiqiantixing_fengmian6.jpg','企业账号6','企业名称6','账号6','姓名6','是','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
