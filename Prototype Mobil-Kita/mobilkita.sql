/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.1.28-MariaDB : Database - mobilkita
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mobilkita` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `mobilkita`;

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `username` char(12) NOT NULL,
  `email` char(50) NOT NULL,
  `password` char(15) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`username`,`email`,`password`) values 
('imamd1','djoko.imam@gmail.com','imamdjoko'),
('imanlizardi','iman.lizardi@gmail.com','lizardiiman'),
('wgcrs','wegig.kris@gmail.com','kriswegig'),
('xsamudra','najmi.samudra@gmail.com','samudranajmi');

/*Table structure for table `mobil` */

DROP TABLE IF EXISTS `mobil`;

CREATE TABLE `mobil` (
  `nama` char(50) NOT NULL,
  `deskripsi` char(140) NOT NULL,
  `harga` longtext NOT NULL,
  `nama_showroom` char(50) NOT NULL,
  `kondisi` enum('baru','bekas') NOT NULL,
  `status` enum('tersedia','terjual') NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mobil` */

insert  into `mobil`(`nama`,`deskripsi`,`harga`,`nama_showroom`,`kondisi`,`status`,`date`) values 
('Tesla Model 3','Mobil ini dijual karena tidak dipakai','14000000000','Maju Masuk Satu Showroom','bekas','tersedia','2019-07-08'),
('BMW Roadster i8','Mobil ini dijual karena bekas kelindes kereta','790000000','Mundur Masuk R Showroom','baru','tersedia','2019-07-17'),
('Toyota Avanza','Mobil ini dijual dengan kelengkapan minus dusbook dan charger kw','80000000','Gass Pol Masuk 8 Showroom','baru','terjual','2019-07-24');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
