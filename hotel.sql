-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2021 at 03:48 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_id` bigint(20) NOT NULL,
  `book_id` bigint(20) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `gst` int(10) DEFAULT NULL,
  `st` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_id`, `book_id`, `amount`, `bill_date`, `gst`, `st`) VALUES
(1, 1, 770500.00, '2020-12-25', 0, 0),
(2, 2, 500.00, '2020-12-25', 0, 0),
(3, 3, 1600.00, '2020-12-25', 0, 0),
(4, 4, 63000.00, '2020-12-25', 0, 0),
(5, 5, 10500.00, '2020-12-25', 0, 0),
(6, 6, 8000.00, '2020-12-25', 0, 0),
(7, 7, 10500.00, '2020-12-25', 23, 5),
(8, 8, 11500.00, '2020-12-25', 23, 5),
(9, 10, -3400.00, '2020-12-29', 23, 5);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `book_id` bigint(20) NOT NULL,
  `room_id` bigint(20) DEFAULT NULL,
  `cust_id` bigint(20) DEFAULT NULL,
  `doo` date DEFAULT NULL,
  `dol` date DEFAULT NULL,
  `advance` float(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`book_id`, `room_id`, `cust_id`, `doo`, `dol`, `advance`) VALUES
(1, 1, 1, '2020-02-20', '2020-12-25', 2000.00),
(2, 2, 1, '2020-12-23', '2020-12-25', 4500.00),
(3, 4, 1, '2020-12-23', '2020-12-25', 3400.00),
(4, 1, 1, '2020-11-29', '2020-12-25', 2000.00),
(5, 1, 1, '2020-12-20', '2020-12-25', 2000.00),
(6, 1, 1, '2020-12-20', '2020-12-25', 4500.00),
(7, 1, 1, '2020-12-19', '2020-12-25', 4500.00),
(8, 1, 1, '2020-12-20', '2020-12-25', 4500.00),
(9, 1, 1, '2020-12-20', NULL, 2500.00),
(10, 2, 2, '2020-12-29', '2020-12-29', 3400.00);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` bigint(20) NOT NULL,
  `name` char(50) DEFAULT NULL,
  `address` char(100) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `email` char(80) DEFAULT NULL,
  `id_proof` char(20) DEFAULT NULL,
  `id_proof_no` char(25) DEFAULT NULL,
  `males` int(2) DEFAULT NULL,
  `females` int(2) DEFAULT NULL,
  `children` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `address`, `phone`, `email`, `id_proof`, `id_proof_no`, `males`, `females`, `children`) VALUES
(3, 'abhshek', 'PALASPE', '5654745', 'ABHI@', '124358798758', '2153465476087958', 4, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) NOT NULL,
  `room_no` int(4) DEFAULT NULL,
  `room_type` char(20) DEFAULT NULL,
  `room_rent` float(10,2) DEFAULT NULL,
  `room_bed` char(20) DEFAULT NULL,
  `status` char(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room_no`, `room_type`, `room_rent`, `room_bed`, `status`) VALUES
(1, 1, 'AC', 2500.00, 'Single Bed', 'occupied'),
(2, 2, 'AC', 2500.00, 'Single Bed', 'free'),
(3, 3, 'AC', 2500.00, 'Single Bed', 'free'),
(4, 4, 'AC', 2500.00, 'Single Bed', 'free'),
(6, 5, 'AC', 3500.00, 'Double Bed', 'free'),
(7, 6, 'AC', 3500.00, 'Double Bed', 'free'),
(8, 7, 'AC', 3500.00, 'Double Bed', 'free'),
(9, 8, 'Delux', 4500.00, 'Double Bed', 'free'),
(10, 9, 'Delux', 4500.00, 'Double Bed', 'free'),
(11, 10, 'Delux', 4500.00, 'Double Bed', 'free'),
(12, 10, 'Super Delux', 5500.00, 'Double Bed', 'free'),
(13, 11, 'Super Delux', 5500.00, 'Double Bed', 'free'),
(14, 11, 'Queen Delight', 6500.00, 'Double Bed', 'free'),
(15, 12, 'Queen Delight', 6500.00, 'Double Bed', 'free'),
(16, 13, 'King Special', 7500.00, 'Double Bed', 'free'),
(17, 14, 'King Special', 7500.00, 'Double Bed', 'free'),
(18, 15, 'Super Rich Special', 9500.00, 'Double Bed', 'free'),
(19, 16, 'Super Rich Special', 8500.00, 'Single Bed', 'free'),
(20, 17, 'Delux', 4000.00, 'Single Bed', 'free'),
(21, 18, 'Super Delux', 4500.00, 'Single Bed', 'free'),
(22, 19, 'Super Delux', 4500.00, 'Single Bed', 'free'),
(23, 20, 'AC', 2650.00, 'SINGLE', 'free'),
(24, 23, 'Non-AC', NULL, NULL, NULL),
(25, 24, 'Non-AC', NULL, NULL, NULL),
(26, 25, ' AC', 3500.00, 'SINGLE', 'free');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(10) NOT NULL,
  `field_name` char(30) DEFAULT NULL,
  `value` char(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `field_name`, `value`) VALUES
(1, 'hotel_name', 'Hotel Leela'),
(2, 'address', 'SurajMal Vihar, Delhi -92'),
(7, 'phone', '011-4353534,4654545,456567556'),
(4, 'email', 'leela_delhi@gmail.com'),
(5, 'gst', '23'),
(6, 'st', '8');

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `book_id` bigint(20) NOT NULL DEFAULT 0,
  `doo` date DEFAULT NULL,
  `dol` date DEFAULT NULL,
  `advance` float(10,2) DEFAULT NULL,
  `name` char(50) DEFAULT NULL,
  `address` char(100) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `email` char(80) DEFAULT NULL,
  `room_no` int(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp`
--

INSERT INTO `temp` (`book_id`, `doo`, `dol`, `advance`, `name`, `address`, `phone`, `email`, `room_no`) VALUES
(1, '2020-02-20', '2020-12-25', 2000.00, 'rakesh kumar', 'CF-4 BRIJ VIHAR', '98718168101', 'RAKESH@GMAIL.COM', 1),
(2, '2020-12-23', '2020-12-25', 4500.00, 'rakesh kumar', 'CF-4 BRIJ VIHAR', '98718168101', 'RAKESH@GMAIL.COM', 2),
(3, '2020-12-23', '2020-12-25', 3400.00, 'rakesh kumar', 'CF-4 BRIJ VIHAR', '98718168101', 'RAKESH@GMAIL.COM', 4),
(4, '2020-11-29', '2020-12-25', 2000.00, 'rakesh kumar', 'CF-4 BRIJ VIHAR', '98718168101', 'RAKESH@GMAIL.COM', 1),
(5, '2020-12-20', '2020-12-25', 2000.00, 'rakesh kumar', 'CF-4 BRIJ VIHAR', '98718168101', 'RAKESH@GMAIL.COM', 1),
(6, '2020-12-20', '2020-12-25', 4500.00, 'rakesh kumar', 'CF-4 BRIJ VIHAR', '98718168101', 'RAKESH@GMAIL.COM', 1),
(7, '2020-12-19', '2020-12-25', 4500.00, 'rakesh kumar', 'CF-4 BRIJ VIHAR', '98718168101', 'RAKESH@GMAIL.COM', 1),
(8, '2020-12-20', '2020-12-25', 4500.00, 'rakesh kumar', 'CF-4 BRIJ VIHAR', '98718168101', 'RAKESH@GMAIL.COM', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `book_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
