-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2024 at 07:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `silo`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `roomname` varchar(30) NOT NULL,
  `checkin` date NOT NULL DEFAULT current_timestamp(),
  `checkout` date NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `roomname`, `checkin`, `checkout`, `name`, `phone`, `total_price`, `created_at`) VALUES
(12, 'Barley', '2024-03-10', '2024-03-17', 'VINCENT KIPKURU', '254702502952', 126000.00, '2024-03-19 19:23:10'),
(21, 'Barley', '2024-03-03', '2024-03-10', 'VINCENT KIPKURU', '254702502952', 63000.00, '2024-03-19 19:51:21'),
(22, 'Trench silo', '2024-03-21', '2024-03-23', 'ian njoroge', '254745598098', 16000.00, '2024-03-21 10:19:53'),
(23, 'Affordable silo', '2024-03-21', '2024-03-23', 'solo', '+254745598098', 3200.00, '2024-03-21 10:25:58'),
(24, 'Affordable silo', '2024-03-08', '2024-03-16', 'solo', '+254745598098', 12800.00, '2024-03-21 10:31:42'),
(25, 'Affordable silo', '2024-03-08', '2024-03-16', 'solo', '+254745598098', 12800.00, '2024-03-21 10:31:44'),
(26, 'Affordable silo', '2024-02-23', '0000-00-00', 'chep', '0712968217', 3513600.00, '2024-03-22 12:32:13'),
(27, 'Affordable silo', '2024-03-22', '0000-00-00', 'Yebei sharon', '254745598098', 0.00, '2024-03-25 21:43:36'),
(28, 'Affordable silo', '2024-03-22', '0000-00-00', 'Yebei sharon', '254745598098', 0.00, '2024-03-25 21:44:15'),
(29, 'Legumes', '2024-02-23', '0000-00-00', 'Yebei sharon', '254754545454', 144000.00, '2024-03-25 21:47:54'),
(30, 'Legumes', '2024-02-23', '2024-03-07', 'eric_g', '254745598098', 52000.00, '2024-03-28 08:34:14'),
(31, 'Back up silo', '2024-02-23', '0000-00-00', 'Ric_G', '+254745598098', 72000.00, '2024-03-28 08:40:17'),
(32, 'Back up silo', '2024-02-23', '0000-00-00', 'Yebei sharon', '254708822168', 72000.00, '2024-03-28 08:41:25'),
(33, 'Back up silo', '2024-02-23', '0000-00-00', 'eric', '254745598098', 36000.00, '2024-03-28 08:59:21'),
(34, 'Affordable silo', '2024-02-23', '2024-02-24', 'eric', '254745598098', 800.00, '2024-03-29 06:51:57');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `uid` int(20) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `upass` varchar(30) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `uemail` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`uid`, `uname`, `upass`, `fullname`, `uemail`) VALUES
(1, 'mamun', '1234', 'Abdullah Al Mamun', 'mamunwitchbug@gmail.com'),
(3, 'jinat', 'jinat', 'Jinat Afroj', 'afrojjinat@gmail.com'),
(6, 'admin', '1234', 'admin', 'admin@admin.com');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int(200) NOT NULL,
  `room_cat` text NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `name` text NOT NULL,
  `phone` int(100) NOT NULL,
  `book` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `room_cat`, `checkin`, `checkout`, `name`, `phone`, `book`) VALUES
(23, 'Fabric', '0000-00-00', '0000-00-00', '', 0, 'false'),
(24, 'Bunker silos', '0000-00-00', '0000-00-00', '', 0, 'false'),
(25, 'Bag silos', '0000-00-00', '0000-00-00', '', 0, 'false'),
(26, 'Cement silos', '0000-00-00', '0000-00-00', '', 0, 'false'),
(27, 'Tower silos', '0000-00-00', '0000-00-00', '', 0, 'false'),
(28, 'Trench silo', '2017-05-19', '2017-05-22', 'Jinat Afroj', 1524587558, 'true'),
(38, 'Rice', '0000-00-00', '0000-00-00', '', 0, 'false'),
(39, 'Rice', '0000-00-00', '0000-00-00', '', 0, 'false'),
(40, 'Rice', '0000-00-00', '0000-00-00', '', 0, 'false'),
(41, 'Rice', '0000-00-00', '0000-00-00', '', 0, 'false'),
(42, 'Special Silo', '0000-00-00', '0000-00-00', '', 0, 'false'),
(43, 'Special Silo', '0000-00-00', '0000-00-00', '', 0, 'false'),
(44, 'Special Silo', '0000-00-00', '0000-00-00', '', 0, 'false'),
(45, 'Special Silo', '0000-00-00', '0000-00-00', '', 0, 'false'),
(46, 'Special Silo', '0000-00-00', '0000-00-00', '', 0, 'false'),
(47, 'Special Silo', '0000-00-00', '0000-00-00', '', 0, 'false'),
(48, 'Special Silo', '0000-00-00', '0000-00-00', '', 0, 'false'),
(49, 'Millet', '0000-00-00', '0000-00-00', '', 0, 'false'),
(50, 'Millet', '0000-00-00', '0000-00-00', '', 0, 'false'),
(51, 'Millet', '0000-00-00', '0000-00-00', '', 0, 'false');

-- --------------------------------------------------------

--
-- Table structure for table `room_category`
--

CREATE TABLE `room_category` (
  `roomname` text NOT NULL,
  `room_qnty` int(11) NOT NULL,
  `available` int(11) NOT NULL,
  `booked` int(11) NOT NULL,
  `no_bed` int(11) NOT NULL,
  `bedtype` text NOT NULL,
  `facility` text NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_category`
--

INSERT INTO `room_category` (`roomname`, `room_qnty`, `available`, `booked`, `no_bed`, `bedtype`, `facility`, `price`) VALUES
('Affordable silo', 0, 0, 0, 7, '', 'Pesticides are applied to the grains ', 800),
('Back up silo', 0, 0, 0, 7, '', 'Pesticides are applied to the grains , Good air conditioners to provide Rice storage humidity.', 1000),
('Barley', 5, 5, 0, 4, 'single', 'Coolant System , Pesticides', 1500),
('Legumes', 0, 0, 0, 7, '', 'Good conditions for legumes , Robust air conditioners', 2000),
('Millet', 3, 3, 0, 3, '', 'This facility has a 24hr suvillience , Pesticides are applied to the grains , Good air conditioners to provide Rice storage humidity.', 3500),
('Rice', 4, 4, 0, 6, '', 'This facility has a 24hr suvillience , Pesticides are applied to the grains , Good air conditioners to provide Rice storage humidity.', 4000),
('sorghum', 5, 5, 0, 5, 'double', 'an aeration system is fitted to manipulate the internal temperature.', 2200),
('special maize', 0, 0, 0, 5, '', 'Pesticides are applied to the grains , Good air conditioners to provide Rice storage humidity.', 4000),
('Special Silo', 7, 7, 0, 6, '', 'This facility is known for its outstanding services\r\ninclude:\r\npesticides applied \r\nair conditioners available', 3000),
('Trench silo', 0, 0, 0, 5, '', 'Pesticides are applied to the grains , Good air conditioners to provide Rice storage humidity.', 4000),
('Underground silo', 0, 0, 0, 7, '', 'Pesticides are applied to the grains , Good air conditioners to provide Rice storage humidity.', 2000),
('wheat', 5, 5, 0, 2, 'double', 'Pesticides, insects are controlled at loading to prevent them creating moisture.', 3500);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `reset_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `reset_token`) VALUES
(1, 'yeb', '123', 'yeb@gmail.com', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `room_category`
--
ALTER TABLE `room_category`
  ADD PRIMARY KEY (`roomname`(100));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `uid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
