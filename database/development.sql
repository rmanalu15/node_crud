/*
SQLyog Community v13.1.9 (64 bit)
MySQL - 10.4.22-MariaDB : Database - development
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`development` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `development`;

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `nomor_na` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `guar_na` varchar(255) DEFAULT NULL,
  `arga_na` int(11) DEFAULT NULL,
  PRIMARY KEY (`nomor_na`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `products` */

insert  into `products`(`nomor_na`,`guar_na`,`arga_na`) values 
(1,'Baju Kaos',150000),
(2,'Celana Pendek',250000),
(10,'Sampoerna Mild',32000),
(11,'Good Day Merah',1500),
(12,'Susu Putih',1500),
(13,'Gudang Garam Filter',22000),
(14,'Sepatu Santai',550000);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
