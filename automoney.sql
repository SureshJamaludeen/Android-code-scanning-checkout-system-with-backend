/*
SQLyog Ultimate v8.32 
MySQL - 5.5.20 : Database - automoney
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`automoney` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `automoney`;

/*Table structure for table `auto_goods` */

DROP TABLE IF EXISTS `auto_goods`;

CREATE TABLE `auto_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `gcount` int(11) DEFAULT '0',
  `gdesc` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `createtime` varchar(255) DEFAULT NULL,
  `isFail` int(1) DEFAULT '0' COMMENT '0不是失败商品  1是失败商品',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `auto_goods` */

insert  into `auto_goods`(`id`,`code`,`title`,`price`,`gcount`,`gdesc`,`status`,`createtime`,`isFail`) values (1,'6902083881405','娃哈哈矿泉水','2',1000,'杭州娃哈哈集团有限公司',1,'2020-04-01 12:34:48',0),(2,'6901035200608','阿尔山小留克咸菜','3',5,'内蒙古科尔沁万佳食品有限公司，刚刚好吃',1,'2020-04-01 12:37:45',0);

/*Table structure for table `auto_order` */

DROP TABLE IF EXISTS `auto_order`;

CREATE TABLE `auto_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `carInfo` longtext,
  `createtime` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `auto_order` */

insert  into `auto_order`(`id`,`uid`,`carInfo`,`createtime`,`status`) values (3,2,'{\"6920858251550\":{\"createtime\":\"2020-04-01 12:34:48\",\"id\":\"1\",\"isFail\":\"0\",\"title\":\"娃哈哈矿泉水\",\"price\":\"2\",\"status\":\"1\",\"gdesc\":\"杭州娃哈哈集团有限公司\",\"code\":\"6920858251550\",\"gcount\":\"1000\",\"crtNum\":\"1\"},\"6927494099003\":{\"createtime\":\"2020-04-01 12:37:45\",\"id\":\"2\",\"isFail\":\"0\",\"title\":\"阿尔山小留克咸菜\",\"price\":\"3\",\"status\":\"1\",\"gdesc\":\"内蒙古科尔沁万佳食品有限公司，刚刚好吃\",\"code\":\"6927494099003\",\"gcount\":\"5\",\"crtNum\":\"1\"}}','2020-04-02 21:12:05',1),(4,1,'{\"6927494099003\":{\"createtime\":\"2020-04-01 12:37:45\",\"id\":\"2\",\"isFail\":\"0\",\"title\":\"阿尔山小留克咸菜\",\"price\":\"3\",\"status\":\"1\",\"gdesc\":\"内蒙古科尔沁万佳食品有限公司，刚刚好吃\",\"code\":\"6927494099003\",\"gcount\":\"5\",\"crtNum\":\"3\"}}','2020-04-02 21:13:20',1),(5,1,'{\"6920858251550\":{\"createtime\":\"2020-04-01 12:34:48\",\"id\":\"1\",\"isFail\":\"0\",\"title\":\"娃哈哈矿泉水\",\"price\":\"2\",\"status\":\"1\",\"gdesc\":\"杭州娃哈哈集团有限公司\",\"code\":\"6920858251550\",\"gcount\":\"1000\",\"crtNum\":\"1\"},\"6927494099003\":{\"createtime\":\"2020-04-01 12:37:45\",\"id\":\"2\",\"isFail\":\"0\",\"title\":\"阿尔山小留克咸菜\",\"price\":\"3\",\"status\":\"1\",\"gdesc\":\"内蒙古科尔沁万佳食品有限公司，刚刚好吃\",\"code\":\"6927494099003\",\"gcount\":\"5\",\"crtNum\":\"1\"}}','2020-04-02 21:15:35',1),(7,1,'{\"6901035200608\":{\"createtime\":\"2020-04-01 12:37:45\",\"id\":\"2\",\"isFail\":\"0\",\"title\":\"阿尔山小留克咸菜\",\"price\":\"3\",\"status\":\"1\",\"gdesc\":\"内蒙古科尔沁万佳食品有限公司，刚刚好吃\",\"code\":\"6901035200608\",\"gcount\":\"5\",\"crtNum\":\"2\"},\"6902083881405\":{\"createtime\":\"2020-04-01 12:34:48\",\"id\":\"1\",\"isFail\":\"0\",\"title\":\"娃哈哈矿泉水\",\"price\":\"2\",\"status\":\"1\",\"gdesc\":\"杭州娃哈哈集团有限公司\",\"code\":\"6902083881405\",\"gcount\":\"1000\",\"crtNum\":\"3\"}}','2020-04-03 09:53:30',1);

/*Table structure for table `auto_user` */

DROP TABLE IF EXISTS `auto_user`;

CREATE TABLE `auto_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `truename` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT '1' COMMENT '1存在  0假删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `auto_user` */

insert  into `auto_user`(`id`,`username`,`password`,`truename`,`address`,`createtime`,`status`) values (1,'Fancy','111111','韩韩','长春市南关区龙泰富苑','2020-03-30 11:11:11',1),(2,'13578986811','111111','韩了个韩','长春市','2020-04-02 15:42:04',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
