-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2019 at 10:21 AM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `androiddeft`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `password_hash` varchar(256) NOT NULL,
  `salt` varchar(256) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`user_id`, `username`, `full_name`, `password_hash`, `salt`, `created_date`) VALUES
(1, 'kim', 'kim', '$2y$10$ZprDEtwKbPwjFOMYMW1K4.67q1lBQ0qODUEHn0cqs7gH8kyVqO1SS', 'b6c636184db4a456f8d18331d4f5d3aaf896cdc2c82a975fe3abc75f881aa6c0', '2019-09-16 19:30:34'),
(2, 'kim', 'kim', '$2y$10$PZKtWLNr8DpZpp856rpJO.ANYZSjfICvKwHqwCibrYRd0KuWKl8Ky', 'd4dac9888fcb6e182aafda6d5702fe0a50f6801dc9e83165c5f76d604e377962', '2019-09-16 19:30:34'),
(3, 'kim', 'kim', '$2y$10$KdQJQBSobSJftmcelp8zt.DR7w7CAGZ7psXclcD6rCgS2nbk4u152', '0a4298e0dd4ef3dd631020ee28108b062d25b4d7d3db3e6ab838f6c2a21f419a', '2019-09-16 19:31:28'),
(4, 'kimeli', 'Peter Kimeli', '$2y$10$PFmQLMsUFLuBUaIjMBEHKOpN.nLTfCBhGFC44wRAcCM3eecLg.tUC', 'd91bbf208013b5cc4bb09f9e1d0fa4e7e9659b9a0a1d79a708430b8ac4a2c4d9', '2019-09-16 21:09:38'),
(5, 'kim', 'Peter', '$2y$10$tie2jUyCjItscfIeiiSsLuhm7alJBzbhghoL059/HqJFAH.U9Orfu', '1128873d0e89e5e53023bfe21845f98e4f996977c16959aa0d7c1d448e0ed1d2', '2019-09-16 21:10:40'),
(6, 'kim', 'Peter', '$2y$10$tDeA6TCi9UmRDxbcN1IQO.yyjY16482mcLYI4sgZRxH9DuSkS4Jye', '1c859462fd5235597572d7008ed043969b5ff7a9bd02c9202b7c86e4a9b157c6', '2019-09-16 21:11:21'),
(7, 'kim', 'kim', '$2y$10$z/V6jMWi11.DSycCxGb83ebP1XTgy0SKmDRvuE.QQXWI3LXaM48pC', '1d096fbd8765ffe6154a71296ce8ee6428ebcac47c9057e9db8f7c607be47c25', '2019-09-16 21:14:48'),
(8, 'kibet', 'John', '$2y$10$Qx/T8HOp4kQIgt./xKdCNO03O18Yt.J6WEZhDfJ4tus.WTsa.sFy2', '3cd72dda713425355669c0b00cc8e2e8c11256bbfaa61de94a440f35c0cda680', '2019-09-16 21:16:16'),
(9, 'kimelipeter20@gmail.com', 'Peter Kimeli Tanui', '$2y$10$ssA0Kbg50zwczJcBHsxaFuftzeYfw/qJV6QyI.0WAYQk2jd2vTWdy', '5d63b7c3561224dab9c7757f90c15c8e01b282e35e490c85960c520eefe2c101', '2019-09-16 21:19:51'),
(10, 'radio', 'Radio', '$2y$10$AjjRG6OxhLBEx586u/78ou/4UfwfWU2fgMSqWZAxLOD5njrPul8fC', '117c2013571a42864873a6015a89eb4f469d7768d240cc75af3103b34705f523', '2019-09-17 07:28:23'),
(11, 'radio', 'Radio', '$2y$10$aVvf3ejyk3YvBsqOJAKv0OxNsNEGa9tXWSx7/mLeGG0N8olx4/CUC', '46f93253fab52f963143620ff21cc0973af4a60541c9be25532be541d93afe65', '2019-09-17 07:28:23'),
(12, 'kevin', 'Kevin Kibet', '$2y$10$qaGzpd3R1ggrbrlFSuxfgOAJL9nkK5hS9CikuCVpYMOVWlzqElOZu', 'ce722b643f5de93d20e50809da5e2d7d1a8d8cca071c22790e0097c5b703c175', '2019-09-17 07:53:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
