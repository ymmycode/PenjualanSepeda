-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2022 at 06:38 PM
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
  `sisa` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bayar`
--

INSERT INTO `bayar` (`id`, `idPesanan`, `tanggal`, `harga`, `diskon`, `total`, `sisa`, `status`) VALUES
(8, '1', '16 Juli 2022', '400000', 'Tidak Ada', '400000', '100000', 'DP'),
(9, '2', '16 Juli 2022', '800000', 'Tidak Ada', '800000', '400000', 'DP'),
(10, '3', '16 Juli 2022', '600000', 'Tidak Ada', '600000', '0', 'Full'),
(11, '4', NULL, NULL, NULL, NULL, NULL, ''),
(12, '5', '16 Juli 2022', '250000', 'Tidak Ada', '250000', '0', 'Full'),
(13, '6', NULL, NULL, NULL, NULL, NULL, '');

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
(9, 1, '16 Juli 2022', 'Agung', '2342342523453', 'Jl. Potlot', '09324758', 'SPD-10'),
(10, 2, '16 Juli 2022', 'Surya', '2342362476', 'Jl. Potlot', '230498575434', 'SPD-11'),
(11, 3, '16 Juli 2022', 'Surya Agung', '098345879', 'Jl. Potlot', '43534783568', 'SPD-12'),
(12, 4, '16 Juli 2022', 'Fauzi', '345345345', 'Jl. Sup', '3456456457', 'SPD-1'),
(13, 5, '16 Juli 2022', 'Amin', '234624764574567', 'Jl. Duren Tiga', '4574563425', 'SPD-15'),
(14, 6, '16 Juli 2022', 'Afif', '2345246345645', 'Jl. Pomo', '90834573450', 'SPD-13');

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
(9, 'SPD-1', 'Mountain', 'Polygon', 'Hitam', '2500000'),
(10, 'SPD-10', 'BMX', 'Wimcycle', 'Red', '400000'),
(11, 'SPD-11', 'Mountain', 'United', 'Blue', '800000'),
(12, 'SPD-12', 'Family', 'Pacific', 'Hitam', '600000'),
(13, 'SPD-13', 'BMX', 'Polygon', 'Purple', '800000'),
(14, 'SPD-14', 'Kid', 'Family', 'Pink', '500000'),
(15, 'SPD-15', 'Kid', 'Family', 'Kuning', '250000');

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
(9, 'SPD-1', 'Sold', '16 Juli 2022', '16 Jul 2022'),
(10, 'SPD-10', 'Sold', '16 Juli 2022', '16 Jul 2022'),
(11, 'SPD-11', 'Sold', '16 Juli 2022', '16 Jul 2022'),
(12, 'SPD-12', 'Sold', '16 Juli 2022', '16 Jul 2022'),
(13, 'SPD-13', 'Sold', '16 Juli 2022', '16 Juli 2022'),
(14, 'SPD-14', 'Ready', '16 Juli 2022', NULL),
(15, 'SPD-15', 'Sold', '16 Juli 2022', '16 Juli 2022');

-- --------------------------------------------------------

--
-- Table structure for table `stokvendor`
--

CREATE TABLE `stokvendor` (
  `id` int(11) NOT NULL,
  `kodeSepeda` varchar(255) DEFAULT NULL,
  `vendor` varchar(255) DEFAULT NULL,
  `tglBeli` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stokvendor`
--

INSERT INTO `stokvendor` (`id`, `kodeSepeda`, `vendor`, `tglBeli`) VALUES
(3, 'SPD-1', 'DuniaSepeda', '16 Juli 2022'),
(4, 'SPD-10', 'DuniaSepeda', '16 Juli 2022'),
(5, 'SPD-11', 'DuniaSepeda', '16 Juli 2022'),
(6, 'SPD-12', 'DuniaSepeda', '16 Juli 2022'),
(7, 'SPD-13', 'DuniaSepeda', '16 Juli 2022'),
(8, 'SPD-14', 'DuniaSepeda', '16 Juli 2022'),
(9, 'SPD-15', 'DuniaSepeda', '16 Juli 2022');

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
-- Indexes for table `stokvendor`
--
ALTER TABLE `stokvendor`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sepeda`
--
ALTER TABLE `sepeda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `statussepeda`
--
ALTER TABLE `statussepeda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `stokvendor`
--
ALTER TABLE `stokvendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
