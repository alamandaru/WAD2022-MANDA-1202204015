-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Nov 22, 2022 at 03:56 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `modul3`
--

-- --------------------------------------------------------

--
-- Table structure for table `showroom_manda_table`
--

CREATE TABLE `showroom_manda_table` (
  `id_mobil` int(255) NOT NULL,
  `nama_mobil` varchar(255) NOT NULL,
  `pemilik_mobil` varchar(255) NOT NULL,
  `merk_mobil` varchar(255) NOT NULL,
  `tanggal_beli` date NOT NULL,
  `deskripsi` text NOT NULL,
  `foto_mobil` varchar(255) NOT NULL,
  `status_pembayaran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `showroom_manda_table`
--

INSERT INTO `showroom_manda_table` (`id_mobil`, `nama_mobil`, `pemilik_mobil`, `merk_mobil`, `tanggal_beli`, `deskripsi`, `foto_mobil`, `status_pembayaran`) VALUES
(6, '320i Dynamic', 'Maemunah', 'BMW', '2022-11-16', 'Mobil bagus dan masih baru', 'mobil', 'lunas'),
(8, 'Wuling a', 'Regita', 'Wuling', '0000-00-00', 'Bagus', 'Wuling', 'Lunas'),
(9, 'Wuling a', 'Regita', 'Wuling', '0000-00-00', 'Bagus', 'Wuling', 'Lunas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `showroom_manda_table`
--
ALTER TABLE `showroom_manda_table`
  ADD PRIMARY KEY (`id_mobil`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `showroom_manda_table`
--
ALTER TABLE `showroom_manda_table`
  MODIFY `id_mobil` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
