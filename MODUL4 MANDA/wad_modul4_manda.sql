-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2022 at 02:27 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wad_modul4_manda`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `showroom_manda_table`
--

INSERT INTO `showroom_manda_table` (`id_mobil`, `nama_mobil`, `pemilik_mobil`, `merk_mobil`, `tanggal_beli`, `deskripsi`, `foto_mobil`, `status_pembayaran`) VALUES
(5, 'qwerty122', 'qwerty', 'ta', '2022-11-02', 'mobil', 'Architectural Illustration.png', 'on'),
(6, 'Trax', 'Manda', 'Chevrolet', '2022-01-22', 'Mobil merah', 'Chevrolet.jpg', 'lunas');

-- --------------------------------------------------------

--
-- Table structure for table `user_manda`
--

CREATE TABLE `user_manda` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `no` varchar(50) NOT NULL,
  `tema` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_manda`
--

INSERT INTO `user_manda` (`id`, `nama`, `email`, `password`, `no`, `tema`) VALUES
(1, 'asd', 'asd@das', 'asd', '123', ''),
(2, '123', 'asdasda@a', '123', '123', ''),
(3, 'dsa', 'asd@gmail.com', 'asd', '321', 'blue'),
(4, 'qwerty', 'qwerty@gmail.com', 'qwerty', '12345', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `showroom_manda_table`
--
ALTER TABLE `showroom_manda_table`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `user_manda`
--
ALTER TABLE `user_manda`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `showroom_manda_table`
--
ALTER TABLE `showroom_manda_table`
  MODIFY `id_mobil` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_manda`
--
ALTER TABLE `user_manda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
