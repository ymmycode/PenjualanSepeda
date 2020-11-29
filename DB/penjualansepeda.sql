-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2020 at 07:24 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualansepeda`
--
CREATE DATABASE IF NOT EXISTS `penjualansepeda` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `penjualansepeda`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin`, `pass`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `bayar`
--

CREATE TABLE `bayar` (
  `id` int(11) NOT NULL,
  `idPesanan` varchar(255) NOT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `diskon` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bayar`
--

INSERT INTO `bayar` (`id`, `idPesanan`, `tanggal`, `harga`, `diskon`, `total`, `status`) VALUES
(5, '1', '28 Nov 2020', '1200000', '30', '840000.0', 'Full');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id` int(11) NOT NULL,
  `idPesanan` int(255) NOT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `noktp` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `notelp` varchar(255) DEFAULT NULL,
  `kodeSepeda` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id`, `idPesanan`, `tanggal`, `nama`, `noktp`, `alamat`, `notelp`, `kodeSepeda`) VALUES
(6, 1, '27 Nov 2020', 'fauzi', '123123123', 'jladfhkasjdfkj', '34249879832476', 'SPD-2');

-- --------------------------------------------------------

--
-- Table structure for table `sepeda`
--

CREATE TABLE `sepeda` (
  `id` int(11) NOT NULL,
  `kodeSepeda` varchar(255) DEFAULT NULL,
  `jenis` varchar(255) DEFAULT NULL,
  `merek` varchar(255) DEFAULT NULL,
  `warna` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sepeda`
--

INSERT INTO `sepeda` (`id`, `kodeSepeda`, `jenis`, `merek`, `warna`, `harga`) VALUES
(1, 'SPD-1', 'BMX', 'Polygon', 'Hitam', '500000'),
(2, 'SPD-2', 'Mountain Bike', 'Polygon', 'Pink', '1200000'),
(3, 'SPD-3', 'Kid Bike', 'Family', 'Kuning', '200000'),
(4, 'SPD-4', 'Hybrid Bike', 'Wimcycle', 'Silver', '700000');

-- --------------------------------------------------------

--
-- Table structure for table `statussepeda`
--

CREATE TABLE `statussepeda` (
  `id` int(11) NOT NULL,
  `kodeSepeda` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tglmasuk` varchar(255) DEFAULT NULL,
  `tglterjual` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `statussepeda`
--

INSERT INTO `statussepeda` (`id`, `kodeSepeda`, `status`, `tglmasuk`, `tglterjual`) VALUES
(1, 'SPD-1', 'Ready', '25 Nov 2020', NULL),
(2, 'SPD-2', 'Sold', '25 Nov 2020', '27 Nov 2020'),
(3, 'SPD-3', 'Ready', '25 Nov 2020', ''),
(4, 'SPD-4', 'Ready', '25 Nov 2020', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bayar`
--
ALTER TABLE `bayar`
  ADD PRIMARY KEY (`id`,`idPesanan`) USING BTREE;

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`,`idPesanan`) USING BTREE;

--
-- Indexes for table `sepeda`
--
ALTER TABLE `sepeda`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `statussepeda`
--
ALTER TABLE `statussepeda`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bayar`
--
ALTER TABLE `bayar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sepeda`
--
ALTER TABLE `sepeda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `statussepeda`
--
ALTER TABLE `statussepeda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
