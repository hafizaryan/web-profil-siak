-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2022 at 03:59 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projek`
--

-- --------------------------------------------------------

--
-- Table structure for table `sd`
--

CREATE TABLE `sd` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `npsn` varchar(12) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sd`
--

INSERT INTO `sd` (`id`, `nama`, `npsn`, `status`) VALUES
(1, 'SD NEGERI 01 SUAK LANJUT	', '10403574', 'Negeri'),
(2, 'SD NEGERI 02 KAMPUNG DALAM	', '10403579', 'Negeri'),
(3, 'SD NEGERI 03 KAMPUNG REMPAK	', '10403558', 'Negeri'),
(4, 'SD NEGERI 04 BUANTAN BESAR			', '10403549', 'Negeri'),
(5, 'SD ALAM SAHABAT QURAN SIAK		', '70002723', 'Swasta'),
(6, 'SD SAINS TAHFIZH ISLAMIC CENTER	', '10404934', 'Swasta'),
(7, 'SD IT AL-HUSNA		', '70006605', 'Swasta'),
(8, 'SD ISLAM TERPADU ELOK KASTIAH ZEIN		', '69968525', 'Swasta'),
(9, 'SD NEGERI 06 BELANTIK		', '10403395', 'Negeri');

-- --------------------------------------------------------

--
-- Table structure for table `sma`
--

CREATE TABLE `sma` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sma`
--

INSERT INTO `sma` (`id`, `nama`, `alamat`, `status`) VALUES
(1, 'MA AL-FALAH', 'Pencing Lestari Desa Belutu Garut', 'Negeri\r\n\r\n'),
(2, 'MA AL-IKHLAS', 'Jl. Suka Damai Dusun Libo Jaya Desa Sam-Sam', 'Negeri'),
(3, 'MA DARUL MUKMININ', 'Buatan II', 'Negeri'),
(4, 'SMA ISLAM DARUL HIKMAH', 'Jl. Sultan Syarif Hasyim', 'Swasta'),
(5, 'SMA PERSIAPAN NEGERI SIAK', 'Suak Lanjut-Siak Sri Indrapura', 'Negeri'),
(6, 'SMAN 1 SIAK', 'Jl. Hangtuah Kampung Rempak', 'Negeri'),
(7, 'SMAN 3 TUALANG', 'Jl. AMD Pinang Sebatang Timur', 'Negeri'),
(8, 'SMK MUTIARA', 'Jl. Yos Sudarso Minas', 'Swasta'),
(9, 'SMKN 1 MEMPURA', 'Jl. Pelajar Benteng Hulu\r\n\r\n', 'Swasta');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `fullname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `institution` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`fullname`, `username`, `institution`, `email`, `password`) VALUES
('AuliaKartikaDewi', 'tika', 'uin', 'aulia123@gmail.com', '09876543'),
('Mahfuzoh', 'fuzoh', 'uin', 'mahfuzoh0@gmail.com', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sd`
--
ALTER TABLE `sd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma`
--
ALTER TABLE `sma`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`fullname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sd`
--
ALTER TABLE `sd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sma`
--
ALTER TABLE `sma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
