/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoshuoyuedupingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoshuoyuedupingtai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoshuoyuedupingtai`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/xiaoshuoyuedupingtai/upload/1642143344113.jpg'),(2,'轮播图2','http://localhost:8080/xiaoshuoyuedupingtai/upload/1642143359828.png'),(3,'轮播图3','http://localhost:8080/xiaoshuoyuedupingtai/upload/1642145817061.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,NULL,'2022-04-27 13:08:20'),(2,'sex_types','性别类型名称',2,'女',NULL,NULL,'2022-04-27 13:08:20'),(3,'shuji_types','书籍类型名称',1,'武侠',NULL,NULL,'2022-04-27 13:08:20'),(4,'shuji_types','书籍类型名称',2,'仙侠',NULL,NULL,'2022-04-27 13:08:20'),(5,'shuji_types','书籍类型名称',3,'都市',NULL,NULL,'2022-04-27 13:08:20'),(6,'shangxia_types','上下架名称',1,'上架',NULL,NULL,'2022-04-27 13:08:20'),(7,'shangxia_types','上下架名称',2,'下架',NULL,NULL,'2022-04-27 13:08:20'),(8,'forum_types','帖子类型名称',1,'帖子类型1',NULL,NULL,'2022-04-27 13:08:20'),(9,'forum_types','帖子类型名称',2,'帖子类型2',NULL,NULL,'2022-04-27 13:08:20'),(10,'forum_types','帖子类型名称',3,'帖子类型3',NULL,NULL,'2022-04-27 13:08:20'),(11,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-04-27 13:08:20'),(12,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-04-27 13:08:20'),(13,'gonggao_types','公告类型名称',1,'公告类型1',NULL,NULL,'2022-04-27 13:08:20'),(14,'gonggao_types','公告类型名称',2,'公告类型2',NULL,NULL,'2022-04-27 13:08:20'),(15,'shuji_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-04-27 13:08:20'),(16,'shuji_types','书籍类型名称',4,'玄幻',NULL,'','2022-04-27 13:08:20');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zuozhe_id` int(11) DEFAULT NULL COMMENT '作者',
  `users_id` int(11) DEFAULT NULL COMMENT '老师',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_types` int(11) DEFAULT NULL COMMENT '帖子类型',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`zuozhe_id`,`users_id`,`forum_content`,`super_ids`,`forum_types`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子1',NULL,NULL,6,'帖子内容1',NULL,1,1,'2022-04-27 13:08:20',NULL,'2022-04-27 13:08:20'),(2,NULL,NULL,NULL,6,'帖子回复1',1,NULL,2,'2022-04-27 13:08:20',NULL,'2022-04-27 13:08:20'),(3,'帖子2',1,NULL,NULL,'帖子内容2',NULL,3,1,'2022-04-27 13:08:20',NULL,'2022-04-27 13:08:20'),(4,'帖子2',2,NULL,NULL,'帖子2的内容',NULL,2,1,'2022-04-27 13:08:20',NULL,'2022-04-27 13:08:20'),(5,NULL,2,NULL,NULL,'自顶',4,NULL,2,'2022-04-27 13:08:20',NULL,'2022-04-27 13:08:20'),(6,'帖子3',NULL,NULL,6,'帖子3的内偶然',NULL,3,1,'2022-04-27 13:08:20',NULL,'2022-04-27 13:08:20'),(7,'后台测试发帖',NULL,1,NULL,'发帖内容1111',NULL,2,1,'2022-04-27 13:08:20',NULL,'2022-04-27 13:08:20'),(8,NULL,1,NULL,NULL,'评论12312',7,NULL,2,'2022-04-27 16:51:10',NULL,'2022-04-27 16:51:10'),(9,NULL,NULL,1,NULL,'123',7,NULL,2,'2022-04-27 16:54:55',NULL,'2022-04-27 16:54:55'),(10,NULL,NULL,NULL,6,'132',7,NULL,2,'2022-04-27 16:55:43',NULL,'2022-04-27 16:55:43');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','http://localhost:8080/xiaoshuoyuedupingtai/upload/1642143302812.jpg',1,'2022-04-27 13:08:20','<p>公告详情1111</p>','2022-04-27 13:08:20');

/*Table structure for table `shuji` */

DROP TABLE IF EXISTS `shuji`;

CREATE TABLE `shuji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zuozhe_id` int(11) DEFAULT NULL COMMENT '作者',
  `shuji_name` varchar(200) DEFAULT NULL COMMENT '书籍名称  Search111 ',
  `shuji_photo` varchar(200) DEFAULT NULL COMMENT '书籍封面',
  `shuji_types` int(11) DEFAULT NULL COMMENT '书籍类型 Search111',
  `shuji_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `shuji_content` text COMMENT '书籍简介 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='书籍';

/*Data for the table `shuji` */

insert  into `shuji`(`id`,`zuozhe_id`,`shuji_name`,`shuji_photo`,`shuji_types`,`shuji_clicknum`,`shangxia_types`,`shuji_content`,`insert_time`,`create_time`) values (1,1,'寒鸦','http://localhost:8080/xiaoshuoyuedupingtai/upload/1642143454496.jpg',3,16,1,'<p>寒鸦的书籍介绍</p>','2022-04-27 13:08:20','2022-04-27 13:08:20'),(2,2,'科幻世界','http://localhost:8080/xiaoshuoyuedupingtai/upload/1642144007836.jpg',2,8,1,'<p>科幻世界的书籍介绍</p>','2022-04-27 13:08:20','2022-04-27 13:08:20'),(3,1,'文城','http://localhost:8080/xiaoshuoyuedupingtai/upload/1642146036547.jpg',2,6,1,'<p>文城的详情</p>','2022-04-27 13:08:20','2022-04-27 13:08:20');

/*Table structure for table `shuji_collection` */

DROP TABLE IF EXISTS `shuji_collection`;

CREATE TABLE `shuji_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shuji_id` int(11) DEFAULT NULL COMMENT '书籍',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shuji_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='书籍收藏';

/*Data for the table `shuji_collection` */

insert  into `shuji_collection`(`id`,`shuji_id`,`yonghu_id`,`shuji_collection_types`,`insert_time`,`create_time`) values (1,2,2,1,'2022-04-27 13:08:20','2022-04-27 13:08:20'),(3,3,1,1,'2022-04-27 16:54:10','2022-04-27 16:54:10');

/*Table structure for table `shuji_liuyan` */

DROP TABLE IF EXISTS `shuji_liuyan`;

CREATE TABLE `shuji_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shuji_id` int(11) DEFAULT NULL COMMENT '书籍',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shuji_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='书籍留言';

/*Data for the table `shuji_liuyan` */

insert  into `shuji_liuyan`(`id`,`shuji_id`,`yonghu_id`,`shuji_liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (3,3,1,'留言内容12','回复212','2022-04-27 13:08:20','2022-04-27 16:55:29','2022-04-27 13:08:20');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','9qgy6vv2e4fjlli931esup7858my7rnx','2022-01-14 14:25:13','2022-04-27 17:55:36'),(6,1,'a1','yonghu','用户','vmkcj1bsvkk3zway7ol47sn0ifh1x2w9','2022-04-27 16:45:39','2022-04-27 17:54:25'),(7,1,'a1','zuozhe','作者','05i8h1nm1ijhiko2grx5ge7zegjubhwv','2022-04-27 16:54:49','2022-04-27 17:54:49');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-04-27 13:08:20');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','张1','17703786901','410224199610232001','http://localhost:8080/xiaoshuoyuedupingtai/upload/1642144438161.jpg',1,'11@qq.com','2022-04-27 13:08:20'),(2,'a2','123456','张2','17703786902','410224199610232002','http://localhost:8080/xiaoshuoyuedupingtai/upload/1642145674326.jpg',2,'22@qq.com','2022-04-27 13:08:20');

/*Table structure for table `zhangjie` */

DROP TABLE IF EXISTS `zhangjie`;

CREATE TABLE `zhangjie` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shuji_id` int(11) DEFAULT NULL COMMENT '书籍',
  `zhangjie_name` varchar(200) DEFAULT NULL COMMENT '章节名称  Search111 ',
  `zhangjie_content` text COMMENT '章节内容 ',
  `paixu` int(11) DEFAULT NULL COMMENT '排序',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='章节';

/*Data for the table `zhangjie` */

insert  into `zhangjie`(`id`,`shuji_id`,`zhangjie_name`,`zhangjie_content`,`paixu`,`insert_time`,`create_time`) values (1,2,'第一章','<p>第一章的内容详情</p>',1,'2022-04-27 13:08:20','2022-04-27 13:08:20'),(2,2,'第二章','<p>第二章的内容详情</p>',2,'2022-04-27 13:08:20','2022-04-27 13:08:20'),(3,1,'第一章','<p>第一章的书籍详情内容</p>',1,'2022-04-27 13:08:20','2022-04-27 13:08:20'),(4,1,'第二章','<p>第二章的书籍详情内容</p>',2,'2022-04-27 13:08:20','2022-04-27 13:08:20'),(5,1,'第三章','<p>第三章的书籍详情内容</p>',3,'2022-04-27 13:08:20','2022-04-27 13:08:20'),(6,1,'第四章','<p>第四章的书籍详情内容</p>',4,'2022-04-27 13:08:20','2022-04-27 13:08:20'),(7,1,'第五章','<p>第五章的书籍详情内容</p>',5,'2022-04-27 13:08:20','2022-04-27 13:08:20'),(8,3,'第一章','<p>第一章的内容介绍</p>',1,'2022-04-27 13:08:20','2022-04-27 13:08:20'),(9,3,'第二章','<p>第二章的内容介绍</p>',2,'2022-04-27 13:08:20','2022-04-27 13:08:20');

/*Table structure for table `zuozhe` */

DROP TABLE IF EXISTS `zuozhe`;

CREATE TABLE `zuozhe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `zuozhe_name` varchar(200) DEFAULT NULL COMMENT '作者姓名 Search111 ',
  `zuozhe_phone` varchar(200) DEFAULT NULL COMMENT '作者手机号 Search111 ',
  `zuozhe_id_number` varchar(200) DEFAULT NULL COMMENT '作者身份证号 Search111 ',
  `zuozhe_photo` varchar(200) DEFAULT NULL COMMENT '作者头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='作者';

/*Data for the table `zuozhe` */

insert  into `zuozhe`(`id`,`username`,`password`,`zuozhe_name`,`zuozhe_phone`,`zuozhe_id_number`,`zuozhe_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','张1','17703786901','410224199610232001','http://localhost:8080/xiaoshuoyuedupingtai/upload/1651048853716.webp',1,'11@qq.com','2022-04-27 13:08:20'),(2,'a2','123456','张2','17703786902','410224199610232002','http://localhost:8080/xiaoshuoyuedupingtai/upload/1651048843266.jpg',2,'22@qq.com','2022-04-27 13:08:20');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
