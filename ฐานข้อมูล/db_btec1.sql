-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2018 at 03:15 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_btec1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `a_id` int(10) NOT NULL,
  `a_username` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `a_password` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`a_id`, `a_username`, `a_password`) VALUES
(1, 'net', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tb_manu`
--

CREATE TABLE `tb_manu` (
  `s_id` int(10) NOT NULL,
  `s_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `s_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `s_class` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_manu`
--

INSERT INTO `tb_manu` (`s_id`, `s_code`, `s_name`, `s_class`) VALUES
(1, '00001', 'got7', '20'),
(2, '00002', 'exo', '19'),
(3, '00003', 'bts', '22');

-- --------------------------------------------------------

--
-- Table structure for table `tb_student`
--

CREATE TABLE `tb_student` (
  `s_id` int(10) NOT NULL,
  `s_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `s_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `s_class` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `s_blast` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_student`
--

INSERT INTO `tb_student` (`s_id`, `s_code`, `s_name`, `s_class`, `s_blast`) VALUES
(4, '01', 'แก้วน้ำ got7', '23', 'blast'),
(5, '02', 'เข็มกลัด got7', '23', 'ชิ้น'),
(6, '03', 'เคสมือถือ got7', '34', 'ชิ้น');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `tb_manu`
--
ALTER TABLE `tb_manu`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `tb_student`
--
ALTER TABLE `tb_student`
  ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `a_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_manu`
--
ALTER TABLE `tb_manu`
  MODIFY `s_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_student`
--
ALTER TABLE `tb_student`
  MODIFY `s_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
