/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboot35l3z
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot35l3z` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot35l3z`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot35l3z/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboot35l3z/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot35l3z/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `defaultuser` */

DROP TABLE IF EXISTS `defaultuser`;

CREATE TABLE `defaultuser` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(200) DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `picture` varchar(200) DEFAULT NULL COMMENT '照片',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='注册用户';

/*Data for the table `defaultuser` */

insert  into `defaultuser`(`id`,`addtime`,`username`,`mima`,`name`,`sex`,`age`,`phone`,`picture`,`email`) values (41,'2021-03-12 20:57:31','用户名1','123456','姓名1','男',1,'020-89819991','http://localhost:8080/springboot35l3z/upload/defaultuser_picture1.jpg','773890001@qq.com'),(42,'2021-03-12 20:57:31','用户名2','123456','姓名2','男',2,'020-89819992','http://localhost:8080/springboot35l3z/upload/defaultuser_picture2.jpg','773890002@qq.com'),(43,'2021-03-12 20:57:31','用户名3','123456','姓名3','男',3,'020-89819993','http://localhost:8080/springboot35l3z/upload/defaultuser_picture3.jpg','773890003@qq.com'),(44,'2021-03-12 20:57:31','用户名4','123456','姓名4','男',4,'020-89819994','http://localhost:8080/springboot35l3z/upload/defaultuser_picture4.jpg','773890004@qq.com'),(45,'2021-03-12 20:57:31','用户名5','123456','姓名5','男',5,'020-89819995','http://localhost:8080/springboot35l3z/upload/defaultuser_picture5.jpg','773890005@qq.com'),(46,'2021-03-12 20:57:31','用户名6','123456','姓名6','男',6,'020-89819996','http://localhost:8080/springboot35l3z/upload/defaultuser_picture6.jpg','773890006@qq.com');

/*Table structure for table `discussmeishijianshang` */

DROP TABLE IF EXISTS `discussmeishijianshang`;

CREATE TABLE `discussmeishijianshang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615554311897 DEFAULT CHARSET=utf8 COMMENT='美食鉴赏评论表';

/*Data for the table `discussmeishijianshang` */

insert  into `discussmeishijianshang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (61,'2021-03-12 20:57:31',1,1,'用户名1','评论内容1','回复内容1'),(62,'2021-03-12 20:57:31',2,2,'用户名2','评论内容2','回复内容2'),(63,'2021-03-12 20:57:31',3,3,'用户名3','评论内容3','回复内容3'),(64,'2021-03-12 20:57:31',4,4,'用户名4','评论内容4','回复内容4'),(65,'2021-03-12 20:57:31',5,5,'用户名5','评论内容5','回复内容5'),(66,'2021-03-12 20:57:31',6,6,'用户名6','评论内容6','回复内容6'),(1615553992916,'2021-03-12 20:59:52',26,1615553913009,'1','美食很香，而且价格便宜，值得购买',NULL),(1615554311896,'2021-03-12 21:05:11',22,1615554244165,'2','美食味道很香，价格便宜',NULL);

/*Table structure for table `meishijianshang` */

DROP TABLE IF EXISTS `meishijianshang`;

CREATE TABLE `meishijianshang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `meishimingcheng` varchar(200) DEFAULT NULL COMMENT '美食名称',
  `meishileibie` varchar(200) DEFAULT NULL COMMENT '美食类别',
  `meishijieshao` longtext COMMENT '美食介绍',
  `shangpusuozaidi` varchar(200) DEFAULT NULL COMMENT '商铺所在地',
  `tuijianzhishu` varchar(200) DEFAULT NULL COMMENT '推荐指数',
  `meishizhaopian` varchar(200) DEFAULT NULL COMMENT '美食照片',
  `shangpinjiage` varchar(200) DEFAULT NULL COMMENT '商品价格',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615554447073 DEFAULT CHARSET=utf8 COMMENT='美食鉴赏';

/*Data for the table `meishijianshang` */

insert  into `meishijianshang`(`id`,`addtime`,`fabushijian`,`meishimingcheng`,`meishileibie`,`meishijieshao`,`shangpusuozaidi`,`tuijianzhishu`,`meishizhaopian`,`shangpinjiage`,`yonghuming`,`xingming`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (22,'2021-03-12 20:57:31','2021-03-12','美食名称2','美食类别2','美食介绍2','商铺所在地2','1星','http://localhost:8080/springboot35l3z/upload/meishijianshang_meishizhaopian2.jpg','商品价格2','用户名2','姓名2',11,9,'2021-03-12 21:05:22',6),(23,'2021-03-12 20:57:31','2021-03-12','美食名称3','美食类别3','美食介绍3','商铺所在地3','1星','http://localhost:8080/springboot35l3z/upload/meishijianshang_meishizhaopian3.jpg','商品价格3','用户名3','姓名3',3,3,'2021-03-12 20:57:31',3),(24,'2021-03-12 20:57:31','2021-03-12','美食名称4','美食类别4','美食介绍4','商铺所在地4','1星','http://localhost:8080/springboot35l3z/upload/meishijianshang_meishizhaopian4.jpg','商品价格4','用户名4','姓名4',4,4,'2021-03-12 20:57:31',4),(25,'2021-03-12 20:57:31','2021-03-12','美食名称5','美食类别5','美食介绍5','商铺所在地5','1星','http://localhost:8080/springboot35l3z/upload/meishijianshang_meishizhaopian5.jpg','商品价格5','用户名5','姓名5',5,5,'2021-03-12 20:57:31',5),(26,'2021-03-12 20:57:31','2021-03-12','美食名称6','美食类别6','美食介绍6','商铺所在地6','1星','http://localhost:8080/springboot35l3z/upload/meishijianshang_meishizhaopian6.jpg','商品价格6','用户名6','姓名6',20,20,'2021-03-12 21:04:16',12),(1615554199290,'2021-03-12 21:03:18','2021-03-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0),(1615554447072,'2021-03-12 21:07:26','2021-03-13','手抓饼','面食','物美价廉','湖南大学西门右侧50处，煎饼果子铺','5星',NULL,'5元一份','2','2',0,0,NULL,0);

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
) ENGINE=InnoDB AUTO_INCREMENT=1615554272620 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1615553944597,'2021-03-12 20:59:04',1615553913009,26,'meishijianshang','美食名称6','http://localhost:8080/springboot35l3z/upload/meishijianshang_meishizhaopian6.jpg'),(1615554272619,'2021-03-12 21:04:31',1615554244165,22,'meishijianshang','美食名称2','http://localhost:8080/springboot35l3z/upload/meishijianshang_meishizhaopian2.jpg');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1615553913009,'1','yonghu','用户','yct1wx4l0un5453rvdrq54x85islwcac','2021-03-12 20:58:40','2021-03-12 21:58:41'),(2,1,'abo','users','管理员','1u7ipiz7neoc19axmn56akbfa41fg91k','2021-03-12 21:01:48','2021-03-12 22:01:49'),(3,1615554244165,'2','yonghu','用户','mi044sb5fc8s8oi2a95ey2le80lvtb3u','2021-03-12 21:04:08','2021-03-12 22:04:16');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','123456','管理员','2021-03-12 20:57:31');

/*Table structure for table `wodehaoyou` */

DROP TABLE IF EXISTS `wodehaoyou`;

CREATE TABLE `wodehaoyou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `tianjiashijian` datetime DEFAULT NULL COMMENT '添加时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='我的好友';

/*Data for the table `wodehaoyou` */

insert  into `wodehaoyou`(`id`,`addtime`,`yonghuming`,`xingming`,`tianjiashijian`,`userid`) values (31,'2021-03-12 20:57:31','用户名1','姓名1','2021-03-12 20:57:31',1),(32,'2021-03-12 20:57:31','用户名2','姓名2','2021-03-12 20:57:31',2),(33,'2021-03-12 20:57:31','用户名3','姓名3','2021-03-12 20:57:31',3),(34,'2021-03-12 20:57:31','用户名4','姓名4','2021-03-12 20:57:31',4),(35,'2021-03-12 20:57:31','用户名5','姓名5','2021-03-12 20:57:31',5),(36,'2021-03-12 20:57:31','用户名6','姓名6','2021-03-12 20:57:31',6);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) NOT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1615554244166 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (11,'2021-03-12 20:57:31','用户1','123456','姓名1','手机1','邮箱1','身份证1','http://localhost:8080/springboot35l3z/upload/yonghu_zhaopian1.jpg'),(13,'2021-03-12 20:57:31','用户3','123456','姓名3','手机3','邮箱3','身份证3','http://localhost:8080/springboot35l3z/upload/yonghu_zhaopian3.jpg'),(14,'2021-03-12 20:57:31','用户4','123456','姓名4','手机4','邮箱4','身份证4','http://localhost:8080/springboot35l3z/upload/yonghu_zhaopian4.jpg'),(15,'2021-03-12 20:57:31','用户5','123456','姓名5','手机5','邮箱5','身份证5','http://localhost:8080/springboot35l3z/upload/yonghu_zhaopian5.jpg'),(16,'2021-03-12 20:57:31','用户6','123456','姓名6','手机6','邮箱6','身份证6','http://localhost:8080/springboot35l3z/upload/yonghu_zhaopian6.jpg'),(1615553913009,'2021-03-12 20:58:33','1','1','1','13866666666','1441255@qq.com','666666666666666666','http://localhost:8080/springboot35l3z/upload/1615554028102.jpg'),(1615554244165,'2021-03-12 21:04:04','2','123456','2','178199999999','361278936@qq.com','666666666666666666','http://localhost:8080/springboot35l3z/upload/1615554348777.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
