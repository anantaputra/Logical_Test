/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.14-MariaDB : Database - logical_test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`logical_test` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `logical_test`;

/*Table structure for table `tb_mahasiswa` */

DROP TABLE IF EXISTS `tb_mahasiswa`;

CREATE TABLE `tb_mahasiswa` (
  `mhs_id` int(10) NOT NULL,
  `mhs_nim` varchar(20) DEFAULT NULL,
  `mhs_nama` varchar(50) DEFAULT NULL,
  `mhs_angkatan` year(4) DEFAULT NULL,
  PRIMARY KEY (`mhs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_mahasiswa` */

insert  into `tb_mahasiswa`(`mhs_id`,`mhs_nim`,`mhs_nama`,`mhs_angkatan`) values 
(1,'20180001','Jono',2018),
(2,'20180002','Taufik',2018),
(3,'20180003','Maria',2018),
(4,'20190001','Sari',2019),
(5,'20190002','Bambang',2019);

/*Table structure for table `tb_mahasiswa_nilai` */

DROP TABLE IF EXISTS `tb_mahasiswa_nilai`;

CREATE TABLE `tb_mahasiswa_nilai` (
  `mhs_nilai_id` int(10) NOT NULL,
  `mhs_id` int(10) DEFAULT NULL,
  `mk_id` int(10) DEFAULT NULL,
  `nilai` int(10) DEFAULT NULL,
  PRIMARY KEY (`mhs_nilai_id`),
  KEY `fk_nilai_mahasiswa` (`mhs_id`),
  KEY `fk_nilai_matakuliah` (`mk_id`),
  CONSTRAINT `fk_nilai_mahasiswa` FOREIGN KEY (`mhs_id`) REFERENCES `tb_mahasiswa` (`mhs_id`),
  CONSTRAINT `fk_nilai_matakuliah` FOREIGN KEY (`mk_id`) REFERENCES `tb_matakuliah` (`mk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_mahasiswa_nilai` */

insert  into `tb_mahasiswa_nilai`(`mhs_nilai_id`,`mhs_id`,`mk_id`,`nilai`) values 
(1,1,1,70),
(2,1,2,76),
(3,2,1,82),
(4,2,2,74),
(5,4,1,78),
(6,4,2,80),
(7,5,1,60);

/*Table structure for table `tb_matakuliah` */

DROP TABLE IF EXISTS `tb_matakuliah`;

CREATE TABLE `tb_matakuliah` (
  `mk_id` int(10) NOT NULL,
  `mk_kode` varchar(10) DEFAULT NULL,
  `mk_sks` int(10) DEFAULT NULL,
  `mk_nama` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`mk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_matakuliah` */

insert  into `tb_matakuliah`(`mk_id`,`mk_kode`,`mk_sks`,`mk_nama`) values 
(1,'MK202',3,'OOP'),
(2,'MK303',2,'Basis Data');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
