/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmwo0qh
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmwo0qh` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmwo0qh`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmwo0qh/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmwo0qh/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmwo0qh/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `fenlei` */

DROP TABLE IF EXISTS `fenlei`;

CREATE TABLE `fenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='分类';

/*Data for the table `fenlei` */

insert  into `fenlei`(`id`,`addtime`,`fenlei`) values (21,'2021-03-09 17:26:54','历史'),(22,'2021-03-09 17:26:54','金融'),(23,'2021-03-09 17:26:54','分类3'),(24,'2021-03-09 17:26:54','分类4'),(25,'2021-03-09 17:26:54','分类5'),(26,'2021-03-09 17:26:54','分类6');

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
) ENGINE=InnoDB AUTO_INCREMENT=1615282515350 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (81,'2021-03-09 17:26:54',1,'用户名1','留言内容1','回复内容1'),(82,'2021-03-09 17:26:54',2,'用户名2','留言内容2','回复内容2'),(83,'2021-03-09 17:26:54',3,'用户名3','留言内容3','回复内容3'),(84,'2021-03-09 17:26:54',4,'用户名4','留言内容4','回复内容4'),(85,'2021-03-09 17:26:54',5,'用户名5','留言内容5','回复内容5'),(86,'2021-03-09 17:26:54',6,'用户名6','留言内容6','回复内容6'),(1615282515349,'2021-03-09 17:35:15',1615282462220,'1','asdasdasdas','');

/*Table structure for table `shucheng` */

DROP TABLE IF EXISTS `shucheng`;

CREATE TABLE `shucheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shujimingcheng` varchar(200) DEFAULT NULL COMMENT '书籍名称',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `zishu` varchar(200) DEFAULT NULL COMMENT '字数',
  `zhangjieshu` varchar(200) DEFAULT NULL COMMENT '章节数',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `shangjiariqi` date DEFAULT NULL COMMENT '上架日期',
  `shifouwanjie` varchar(200) DEFAULT NULL COMMENT '是否完结',
  `jianjie` longtext COMMENT '简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='书城';

/*Data for the table `shucheng` */

insert  into `shucheng`(`id`,`addtime`,`shujimingcheng`,`fengmian`,`fenlei`,`zishu`,`zhangjieshu`,`zuozhe`,`jiage`,`shangjiariqi`,`shifouwanjie`,`jianjie`) values (31,'2021-03-09 17:26:54','书籍名称1','http://localhost:8080/ssmwo0qh/upload/shucheng_fengmian1.jpg','分类1','字数1','章节数1','作者1','价格1','2021-03-09','否','<h1>简介1</h1><p>asdsadsad</p>'),(32,'2021-03-09 17:26:54','书籍名称2','http://localhost:8080/ssmwo0qh/upload/shucheng_fengmian2.jpg','分类2','字数2','章节数2','作者2','价格2','2021-03-09','否','简介2'),(33,'2021-03-09 17:26:54','书籍名称3','http://localhost:8080/ssmwo0qh/upload/shucheng_fengmian3.jpg','分类3','字数3','章节数3','作者3','价格3','2021-03-09','否','简介3'),(34,'2021-03-09 17:26:54','书籍名称4','http://localhost:8080/ssmwo0qh/upload/shucheng_fengmian4.jpg','分类4','字数4','章节数4','作者4','价格4','2021-03-09','否','简介4'),(35,'2021-03-09 17:26:54','书籍名称5','http://localhost:8080/ssmwo0qh/upload/shucheng_fengmian5.jpg','分类5','字数5','章节数5','作者5','价格5','2021-03-09','否','简介5'),(36,'2021-03-09 17:26:54','书籍名称6','http://localhost:8080/ssmwo0qh/upload/shucheng_fengmian6.jpg','分类6','字数6','章节数6','作者6','价格6','2021-03-09','否','简介6');

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
) ENGINE=InnoDB AUTO_INCREMENT=1615282476241 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1615282476240,'2021-03-09 17:34:35',1615282462220,32,'shucheng','书籍名称2','http://localhost:8080/ssmwo0qh/upload/shucheng_fengmian2.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','8f2zial345rqd7wu49elbpdhbj98nhes','2021-03-09 17:32:14','2021-03-09 18:35:33'),(2,1615282462220,'1','yonghu','用户','gi6l1hghrf4bl4kvmqg5lkf4tuxisvhh','2021-03-09 17:34:26','2021-03-09 18:34:27');

/*Table structure for table `tushudingdan` */

DROP TABLE IF EXISTS `tushudingdan`;

CREATE TABLE `tushudingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shujimingcheng` varchar(200) DEFAULT NULL COMMENT '书籍名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615282482824 DEFAULT CHARSET=utf8 COMMENT='图书订单';

/*Data for the table `tushudingdan` */

insert  into `tushudingdan`(`id`,`addtime`,`dingdanbianhao`,`shujimingcheng`,`fenlei`,`fengmian`,`jiage`,`zuozhe`,`yonghuzhanghao`,`yonghuxingming`,`yonghushouji`,`sfsh`,`shhf`,`ispay`,`userid`) values (41,'2021-03-09 17:26:54','订单编号1','书籍名称1','分类1','http://localhost:8080/ssmwo0qh/upload/tushudingdan_fengmian1.jpg','价格1','作者1','用户账号1','用户姓名1','用户手机1','是','','未支付',1),(42,'2021-03-09 17:26:54','订单编号2','书籍名称2','分类2','http://localhost:8080/ssmwo0qh/upload/tushudingdan_fengmian2.jpg','价格2','作者2','用户账号2','用户姓名2','用户手机2','是','','未支付',2),(43,'2021-03-09 17:26:54','订单编号3','书籍名称3','分类3','http://localhost:8080/ssmwo0qh/upload/tushudingdan_fengmian3.jpg','价格3','作者3','用户账号3','用户姓名3','用户手机3','是','','未支付',3),(44,'2021-03-09 17:26:54','订单编号4','书籍名称4','分类4','http://localhost:8080/ssmwo0qh/upload/tushudingdan_fengmian4.jpg','价格4','作者4','用户账号4','用户姓名4','用户手机4','是','','未支付',4),(45,'2021-03-09 17:26:54','订单编号5','书籍名称5','分类5','http://localhost:8080/ssmwo0qh/upload/tushudingdan_fengmian5.jpg','价格5','作者5','用户账号5','用户姓名5','用户手机5','是','','未支付',5),(46,'2021-03-09 17:26:54','订单编号6','书籍名称6','分类6','http://localhost:8080/ssmwo0qh/upload/tushudingdan_fengmian6.jpg','价格6','作者6','用户账号6','用户姓名6','用户手机6','是','','未支付',6),(1615282482823,'2021-03-09 17:34:41','1615282477673','书籍名称6','分类6','http://localhost:8080/ssmwo0qh/upload/shucheng_fengmian6.jpg','价格6','作者6','1','xxx用户','12456789101','是','111','已支付',1615282462220);

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-09 17:26:54');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615282462221 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`yonghuxingming`,`xingbie`,`nianling`,`touxiang`,`yonghushouji`,`shenfenzheng`) values (11,'2021-03-09 17:26:54','用户1','123456','用户姓名1','男','年龄1','http://localhost:8080/ssmwo0qh/upload/yonghu_touxiang1.jpg','13823888881','440300199101010001'),(12,'2021-03-09 17:26:54','用户2','123456','用户姓名2','男','年龄2','http://localhost:8080/ssmwo0qh/upload/yonghu_touxiang2.jpg','13823888882','440300199202020002'),(13,'2021-03-09 17:26:54','用户3','123456','用户姓名3','男','年龄3','http://localhost:8080/ssmwo0qh/upload/yonghu_touxiang3.jpg','13823888883','440300199303030003'),(14,'2021-03-09 17:26:54','用户4','123456','用户姓名4','男','年龄4','http://localhost:8080/ssmwo0qh/upload/yonghu_touxiang4.jpg','13823888884','440300199404040004'),(15,'2021-03-09 17:26:54','用户5','123456','用户姓名5','男','年龄5','http://localhost:8080/ssmwo0qh/upload/yonghu_touxiang5.jpg','13823888885','440300199505050005'),(16,'2021-03-09 17:26:54','用户6','123456','用户姓名6','男','年龄6','http://localhost:8080/ssmwo0qh/upload/yonghu_touxiang6.jpg','13823888886','440300199606060006'),(1615282462220,'2021-03-09 17:34:22','1','1','xxx用户','男','22','http://localhost:8080/ssmwo0qh/upload/1615282495490.png','12456789101','441411111111111');

/*Table structure for table `yueduzixun` */

DROP TABLE IF EXISTS `yueduzixun`;

CREATE TABLE `yueduzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `zixunleixing` varchar(200) DEFAULT NULL COMMENT '资讯类型',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `neirong` longtext COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='阅读资讯';

/*Data for the table `yueduzixun` */

insert  into `yueduzixun`(`id`,`addtime`,`biaoti`,`fengmian`,`zixunleixing`,`faburen`,`fabushijian`,`neirong`) values (61,'2021-03-09 17:26:54','标题1','http://localhost:8080/ssmwo0qh/upload/yueduzixun_fengmian1.jpg','资讯类型1','发布人1','2021-03-09','<h1>内容1</h1>'),(62,'2021-03-09 17:26:54','标题2','http://localhost:8080/ssmwo0qh/upload/yueduzixun_fengmian2.jpg','资讯类型2','发布人2','2021-03-09','内容2'),(63,'2021-03-09 17:26:54','标题3','http://localhost:8080/ssmwo0qh/upload/yueduzixun_fengmian3.jpg','资讯类型3','发布人3','2021-03-09','内容3'),(64,'2021-03-09 17:26:54','标题4','http://localhost:8080/ssmwo0qh/upload/yueduzixun_fengmian4.jpg','资讯类型4','发布人4','2021-03-09','内容4'),(65,'2021-03-09 17:26:54','标题5','http://localhost:8080/ssmwo0qh/upload/yueduzixun_fengmian5.jpg','资讯类型5','发布人5','2021-03-09','内容5'),(66,'2021-03-09 17:26:54','标题6','http://localhost:8080/ssmwo0qh/upload/yueduzixun_fengmian6.jpg','资讯类型6','发布人6','2021-03-09','内容6');

/*Table structure for table `zhangjiexinxi` */

DROP TABLE IF EXISTS `zhangjiexinxi`;

CREATE TABLE `zhangjiexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shujimingcheng` varchar(200) DEFAULT NULL COMMENT '书籍名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `zhangjie` varchar(200) DEFAULT NULL COMMENT '章节',
  `neirong` longtext COMMENT '内容',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615282552932 DEFAULT CHARSET=utf8 COMMENT='章节信息';

/*Data for the table `zhangjiexinxi` */

insert  into `zhangjiexinxi`(`id`,`addtime`,`dingdanbianhao`,`shujimingcheng`,`fenlei`,`fengmian`,`zhangjie`,`neirong`,`yonghuzhanghao`,`yonghuxingming`,`fabushijian`,`userid`) values (51,'2021-03-09 17:26:54','订单编号1','书籍名称1','分类1','http://localhost:8080/ssmwo0qh/upload/zhangjiexinxi_fengmian1.jpg','章节1','内容1','用户账号1','用户姓名1','2021-03-09 17:26:54',1),(52,'2021-03-09 17:26:54','订单编号2','书籍名称2','分类2','http://localhost:8080/ssmwo0qh/upload/zhangjiexinxi_fengmian2.jpg','章节2','内容2','用户账号2','用户姓名2','2021-03-09 17:26:54',2),(53,'2021-03-09 17:26:54','订单编号3','书籍名称3','分类3','http://localhost:8080/ssmwo0qh/upload/zhangjiexinxi_fengmian3.jpg','章节3','内容3','用户账号3','用户姓名3','2021-03-09 17:26:54',3),(54,'2021-03-09 17:26:54','订单编号4','书籍名称4','分类4','http://localhost:8080/ssmwo0qh/upload/zhangjiexinxi_fengmian4.jpg','章节4','内容4','用户账号4','用户姓名4','2021-03-09 17:26:54',4),(55,'2021-03-09 17:26:54','订单编号5','书籍名称5','分类5','http://localhost:8080/ssmwo0qh/upload/zhangjiexinxi_fengmian5.jpg','章节5','内容5','用户账号5','用户姓名5','2021-03-09 17:26:54',5),(56,'2021-03-09 17:26:54','订单编号6','书籍名称6','分类6','http://localhost:8080/ssmwo0qh/upload/zhangjiexinxi_fengmian6.jpg','章节6','内容6','用户账号6','用户姓名6','2021-03-09 17:26:54',6),(1615282396837,'2021-03-09 17:33:16','订单编号1','书籍名称1','分类1','http://localhost:8080/ssmwo0qh/upload/tushudingdan_fengmian1.jpg','第一章','<h1>asdasdas</h1><p>dsadsa</p>','用户账号1','用户姓名1','2021-03-11 00:00:00',1),(1615282552931,'2021-03-09 17:35:52','1615282477673','书籍名称6','分类6','http://localhost:8080/ssmwo0qh/upload/shucheng_fengmian6.jpg','第2章','<h1>asdasd</h1><p>asdsadas</p>','1','xxx用户','2021-03-12 00:00:00',1615282462220);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
