/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.27 : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `test`;

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `from_id` int(10) NOT NULL,
  `to_id` int(10) NOT NULL,
  `subject` varchar(40) DEFAULT '',
  `content` varchar(255) DEFAULT '',
  `create_time` datetime NOT NULL,
  `status` int(3) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

/*Data for the table `message` */

insert  into `message`(`id`,`from_id`,`to_id`,`subject`,`content`,`create_time`,`status`) values (17,21,23,'你好','111','2019-12-11 13:34:34',1),(18,23,21,'你好','11','2019-12-11 13:59:01',1),(19,23,21,'你好','11','2019-12-11 13:59:42',1),(20,23,21,'555555555555','5555555','2019-12-11 14:00:13',1),(21,23,21,'你好','4444','2019-12-11 14:02:10',1),(23,25,23,'shshs','ywywwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww','2019-12-11 14:04:42',1),(24,26,27,'你好','niij','2019-12-11 14:10:26',1);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(40) DEFAULT NULL COMMENT 'æ˜µç§°',
  `username` varchar(30) NOT NULL COMMENT 'ç”¨æˆ·å',
  `password` varchar(30) NOT NULL DEFAULT '123456' COMMENT 'å¯†ç ',
  `email` varchar(50) DEFAULT NULL COMMENT 'ç”µå­é‚®ç®±ï¼Œç”¨äºŽæ‰¾å›žå¯†ç ',
  `create_time` datetime NOT NULL COMMENT 'æ³¨å†Œæ—¶é—´',
  `last_login_time` datetime DEFAULT NULL COMMENT 'æœ€åŽä¸€æ¬¡ç™»å½•æ—¶é—´',
  `status` int(3) NOT NULL DEFAULT '1' COMMENT 'è´¦å·çŠ¶æ€',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`nickname`,`username`,`password`,`email`,`create_time`,`last_login_time`,`status`) values (26,'单校长','单昕','123','651669361@qq.com','2019-12-11 14:07:04',NULL,1),(27,'sias','西亚斯','123','1@qq.com','2019-12-11 14:07:46',NULL,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
