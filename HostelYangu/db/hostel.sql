-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2019 at 02:36 PM
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
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `price` varchar(100) NOT NULL,
  `room_no` int(10) DEFAULT NULL,
  `id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `capacity` int(10) NOT NULL,
  `location` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`id`, `name`, `capacity`, `location`) VALUES
(797, 'Batian', 152, 'Found in Dedan Kimathi University'),
(1234, 'Tamaal Complex', 200, 'Around Dedan Kimathi'),
(3052, 'Catholic Ladies Host', 384, 'Found around Dedan Kimathi University'),
(6788, 'Embassy Hostel', 200, '2 Km away from Dedan Kimathi Universsity.Along mweiga Road'),
(7865, 'Classic Hostel', 400, 'Found in Nyeri Town');

-- --------------------------------------------------------

--
-- Table structure for table `hostels`
--

CREATE TABLE `hostels` (
  `hostel_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `capacity` int(10) NOT NULL,
  `location` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mpesa`
--

CREATE TABLE `mpesa` (
  `resultCode` varchar(100) NOT NULL,
  `merchantRequestID` varchar(1000) NOT NULL,
  `mpesaReceiptNumber` varchar(1000) NOT NULL,
  `amount` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mpesa_payments`
--

CREATE TABLE `mpesa_payments` (
  `id_number` int(5) NOT NULL,
  `TransactionType` varchar(40) DEFAULT NULL,
  `TransID` varchar(40) DEFAULT NULL,
  `TransTime` varchar(40) DEFAULT NULL,
  `TransAmount` double DEFAULT NULL,
  `BusinessShortCode` varchar(15) DEFAULT NULL,
  `BillRefNumber` varchar(40) DEFAULT NULL,
  `MSISDN` varchar(40) DEFAULT NULL,
  `FirstName` varchar(40) DEFAULT NULL,
  `MiddleName` varchar(40) DEFAULT NULL,
  `LastName` varchar(40) DEFAULT NULL,
  `OrgAccountBalance` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_no` int(10) NOT NULL,
  `room_name` varchar(20) NOT NULL,
  `room_details` varchar(1000) NOT NULL,
  `price` int(10) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'available',
  `hostel_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_no`, `room_name`, `room_details`, `price`, `status`, `hostel_id`) VALUES
(0, '1B', '5000', 6000, 'occupied', 1234),
(1, '1A', 'Self Contained and capacity is 2', 4000, 'available', 1234),
(2, '2B', 'Bed Sitter and capacity is 4', 4000, 'available', 3052),
(3, ' 2A', '2 bed room', 6000, 'occupied', 1234),
(4, '3A', 'yyyry', 3000, 'available', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `id_no` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone_no`, `email`, `id_no`, `password`) VALUES
(1, 'Felix Maina', '0701456782', '33456789', 'felix@gmail.com', '12345678'),
(2, 'Caro Maina', '0712345678', '12355778', 'caro@gmaol.com', '12345678'),
(3, 'amos rono', '0706918505', '34046117', 'amosrono@gmail.com', '34046117'),
(4, 'mimi', '078954327', '12345678', 'mimi@user@gmail.com', '12345'),
(5, 'kimz nett', '072345678', '09876543', 'nett@mail.com', '12345'),
(6, 'carolle nganga', '12346u88', 'carollenganga254@gma', '', '1wer567'),
(7, 'carolle nganga', '087543122', 'carollenganga254@gma', '1234556', '123455'),
(8, 'carolle nganga', '087543122', 'carollenganga254@gma', '1234556', '123455'),
(9, 'Rose Jebet', '0789q23455', 'jim@gmail.com', '32456789', '12345678'),
(10, 'Test User', '0712345678', 'testuseregmail.com', '12345678', '12345678'),
(11, 'Waatangi Kimani', '0712365424', 'kimaniuser@gmail.com', '12345678', '123456789'),
(12, 'vsgsg', '1234556', 'ggg@gmail.com', '1233334', '1223334'),
(13, 'hsjjsj', '8383844', 'fsfsf@gmail.com', '134445', '12344'),
(14, 'Test use', '0789456789', 'testuser@yahoo.com', '12345678', '12345678'),
(15, 'user user', 'user', 'user@gmail.com', '12334444', '122334'),
(16, 'Meshack Kimutai', '0718908494', '12345678', 'meshack@gmail.com', '12345678'),
(17, 'John Lenyangapuo', '0725157234', '34563215', 'john@gmail.com', '1234ttt'),
(18, 'daisy onchiri', '789654321', '0789654', 'daisy@gmail.com', '123456'),
(19, 'daisy onchiri', '789654321', '0789654', 'daisy@gmail.com', '123456'),
(20, 'daisy onchiri', '789654321', '0789654', 'daisy@gmail.com', '123456'),
(21, 'daisy onchiri', '789654321', '0789654', 'daisy@gmail.com', '123456'),
(22, 'daisy onchiri', '789654321', '0789654', 'daisy@gmail.com', '123456'),
(23, 'daisy onchiri', '789654321', '0789654', 'daisy@gmail.com', '123456'),
(24, 'Cheptoo Jeptoo', '0700583441', '39550012', 'jeptoo2000@gmail.com', '133334');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD KEY `room_no` (`room_no`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostels`
--
ALTER TABLE `hostels`
  ADD PRIMARY KEY (`hostel_id`);

--
-- Indexes for table `mpesa`
--
ALTER TABLE `mpesa`
  ADD PRIMARY KEY (`resultCode`);

--
-- Indexes for table `mpesa_payments`
--
ALTER TABLE `mpesa_payments`
  ADD PRIMARY KEY (`id_number`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_no`),
  ADD KEY `hostel_id` (`hostel_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mpesa_payments`
--
ALTER TABLE `mpesa_payments`
  MODIFY `id_number` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `id` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `room_no` FOREIGN KEY (`room_no`) REFERENCES `rooms` (`room_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `hostel_id` FOREIGN KEY (`hostel_id`) REFERENCES `hostel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
