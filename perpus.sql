/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.1.37 : Database - perpus
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`perpus` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `perpus`;

/*Table structure for table `anggota` */

DROP TABLE IF EXISTS `anggota`;

CREATE TABLE `anggota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) NOT NULL,
  `nim` int(20) NOT NULL,
  `ttl` varchar(100) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `hp` varchar(200) DEFAULT NULL,
  `ket` varchar(200) DEFAULT NULL,
  `nonaktif` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `anggota` */

insert  into `anggota`(`id`,`nama`,`nim`,`ttl`,`jk`,`alamat`,`hp`,`ket`,`nonaktif`) values (1,'e',12356,'f','Laki-laki','fds','3','f','Y'),(2,'vb',2,'2','Laki-laki','e','2','d','Y');

/*Table structure for table `buku` */

DROP TABLE IF EXISTS `buku`;

CREATE TABLE `buku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(20) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `penulis` varchar(20) NOT NULL,
  `penerbit` varchar(200) DEFAULT NULL,
  `tahun` varchar(200) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `rak` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `buku` */

insert  into `buku`(`id`,`kode`,`judul`,`penulis`,`penerbit`,`tahun`,`jumlah`,`stock`,`rak`) values (1,'BK01','Basisdata','Citra','Gramedia','2017',10,6,'1');

/*Table structure for table `denda` */

DROP TABLE IF EXISTS `denda`;

CREATE TABLE `denda` (
  `id_denda` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(20) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id_denda`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `denda` */

insert  into `denda`(`id_denda`,`kategori`,`jumlah`,`aktif`) values (1,'Umum','550','Y'),(2,'Umum','550','Y');

/*Table structure for table `p_anggota` */

DROP TABLE IF EXISTS `p_anggota`;

CREATE TABLE `p_anggota` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_nama` varchar(100) NOT NULL,
  `a_ttl` varchar(100) DEFAULT NULL,
  `a_jk` varchar(25) DEFAULT NULL,
  `a_alamat` varchar(100) DEFAULT NULL,
  `a_hp` varchar(20) DEFAULT NULL,
  `a_ket` text,
  `a_tgl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `a_nonaktif` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`a_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `p_anggota` */

insert  into `p_anggota`(`a_id`,`a_nama`,`a_ttl`,`a_jk`,`a_alamat`,`a_hp`,`a_ket`,`a_tgl`,`a_nonaktif`) values (1,'Faiz El Muhammadi','Kisaran, 10 Januari 1990','Laki-laki','Kisaran','085263616901','Mahasiwa ','2013-06-12 02:32:43','N'),(2,'Wahyu Eka M','Banyumas, 20 Mei 2000','Perempuan','Purwokerto','08145600098','Mahasiswa','2019-06-28 23:58:05','N'),(3,'Rafiq Arifin','Tangerang, 11 November 1997','Laki-laki','Tangerang selatan','081548020998','Mahasiswa','2019-06-30 17:45:42','N'),(4,'ABC','A','Laki-laki','Purwokerto','123','mhs','2019-07-02 09:20:58','N');

/*Table structure for table `p_buku` */

DROP TABLE IF EXISTS `p_buku`;

CREATE TABLE `p_buku` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_kode` varchar(20) NOT NULL,
  `b_judul` varchar(100) NOT NULL,
  `b_penulis` varchar(100) DEFAULT NULL,
  `b_penerbit` varchar(100) DEFAULT NULL,
  `b_tahun` int(11) DEFAULT NULL,
  `b_jumlah` int(11) NOT NULL DEFAULT '0',
  `b_stock` int(11) NOT NULL DEFAULT '0',
  `b_rak` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `p_buku` */

insert  into `p_buku`(`b_id`,`b_kode`,`b_judul`,`b_penulis`,`b_penerbit`,`b_tahun`,`b_jumlah`,`b_stock`,`b_rak`) values (1,'BK100','Pemrograman Web 1','Suendri','PHPBeGo Foundation',2013,20,19,'4'),(2,'BK101','Pemrograman Web 2','Suendri','PHPBeGo Foundation',2013,25,25,'4'),(7,'BK020','Pemrograman Web','Ahmad','Vicky',2018,15,15,'4'),(6,'BK010','Basis data','Annisa','Reza',2016,10,10,'2'),(5,'BK007','Algoritma dan Pemrograman','Annisa','gramedia',2016,15,15,'8');

/*Table structure for table `p_denda` */

DROP TABLE IF EXISTS `p_denda`;

CREATE TABLE `p_denda` (
  `d_ID` int(11) NOT NULL AUTO_INCREMENT,
  `d_kategori` varchar(50) NOT NULL,
  `d_juml` int(11) NOT NULL,
  `d_aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`d_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `p_denda` */

insert  into `p_denda`(`d_ID`,`d_kategori`,`d_juml`,`d_aktif`) values (1,'Umum',550,'Y');

/*Table structure for table `p_transaksi` */

DROP TABLE IF EXISTS `p_transaksi`;

CREATE TABLE `p_transaksi` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_idanggota` int(11) NOT NULL,
  `t_kdbuku` varchar(20) NOT NULL,
  `t_jumlah` int(11) NOT NULL,
  `t_jnsDenda` varchar(20) NOT NULL,
  `t_tgl1` date NOT NULL,
  `t_tgl2` date NOT NULL,
  `t_tgl3` date NOT NULL,
  `t_kembali` enum('Y','N') NOT NULL DEFAULT 'N',
  `t_jmlDenda` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`t_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `p_transaksi` */

insert  into `p_transaksi`(`t_id`,`t_idanggota`,`t_kdbuku`,`t_jumlah`,`t_jnsDenda`,`t_tgl1`,`t_tgl2`,`t_tgl3`,`t_kembali`,`t_jmlDenda`) values (1,1,'BK100',2,'1','2013-06-16','2013-06-16','2013-06-17','Y',550),(2,1,'BK101',5,'1','2013-06-17','2013-06-17','2013-06-17','Y',0),(3,1,'BK100',1,'1','2013-06-17','2013-06-17','2019-07-02','N',1213300),(4,1,'BK100',2,'1','2019-06-28','2019-06-05','0000-00-00','N',0),(5,2,'BK007',2,'1','2019-06-28','2019-06-29','2019-07-02','Y',1650);

/*Table structure for table `p_user` */

DROP TABLE IF EXISTS `p_user`;

CREATE TABLE `p_user` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_uname` varchar(20) NOT NULL,
  `p_password` varchar(100) NOT NULL,
  `p_level` int(11) NOT NULL,
  `p_nonaktif` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`p_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `p_user` */

insert  into `p_user`(`p_id`,`p_uname`,`p_password`,`p_level`,`p_nonaktif`) values (1,'admin','admin',1,'N'),(2,'operator','operator',2,'N'),(3,'mulat','123',3,'N');

/*Table structure for table `transaksi` */

DROP TABLE IF EXISTS `transaksi`;

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idanggota` int(11) NOT NULL,
  `kdbuku` varchar(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tgl1` date NOT NULL,
  `tgl2` date NOT NULL,
  `tgl3` date NOT NULL,
  `kembali` enum('Y','N') NOT NULL DEFAULT 'N',
  `jmlDenda` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `transaksi` */

insert  into `transaksi`(`id`,`idanggota`,`kdbuku`,`jumlah`,`tgl1`,`tgl2`,`tgl3`,`kembali`,`jmlDenda`) values (1,0,'BK01',2,'2019-07-07','2019-07-14','0000-00-00','N',0),(2,0,'BK01',2,'2019-07-07','2019-07-08','0000-00-00','N',0);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` int(11) NOT NULL,
  `nonaktif` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`uname`,`password`,`level`,`nonaktif`) values (1,'admin','admin',1,'N'),(2,'operator','operator',2,'N');

/* Function  structure for function  `jumlahbuku` */

/*!50003 DROP FUNCTION IF EXISTS `jumlahbuku` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `jumlahbuku`(buku VARCHAR(5)) RETURNS int(11)
BEGIN
          DECLARE jumlah INT;
          SELECT COUNT(*) INTO jumlah FROM buku
          WHERE id_buku=buku;
          RETURN jumlah;
      END */$$
DELIMITER ;

/* Procedure structure for procedure `buku` */

/*!50003 DROP PROCEDURE IF EXISTS  `buku` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `buku`()
BEGIN
SELECT "mulat";
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
