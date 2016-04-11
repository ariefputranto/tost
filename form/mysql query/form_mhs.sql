-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 11, 2016 at 09:09 AM
-- Server version: 5.5.47-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tosta`
--

-- --------------------------------------------------------

--
-- Structure for view `form_mhs`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `form_mhs` AS select `t`.`nama` AS `nama`,`f`.`TTL` AS `TTL`,date_format(`f`.`TANGGAL_LAHIR`,'%e %M %Y') AS `TANGGAL_LAHIR`,`f`.`NOHP` AS `NOHP`,`f`.`ALAMAT` AS `ALAMAT`,`f`.`NAMAORTU` AS `NAMAORTU`,`f`.`PEKERJAAN_ORTU` AS `PEKERJAAN_ORTU`,`f`.`ALAMAT_ORTU` AS `ALAMAT_ORTU`,`f`.`MASA_STUDI` AS `MASA_STUDI`,`f`.`NRP` AS `NRP`,`f`.`STATUSMHS` AS `STATUSMHS`,`f`.`TAHAP` AS `TAHAP`,`f`.`KEPERLUAN` AS `KEPERLUAN` from (`tableMHS` `t` join `BUILD_FORMULIR_SURAT_KETERANGAN_MAHASISWA_1460283183_CORE` `f`) where (`t`.`nrp` = `f`.`NRP`);

--
-- VIEW  `form_mhs`
-- Data: None
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
