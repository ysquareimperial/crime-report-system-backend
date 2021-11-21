-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2021 at 05:42 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crime-report-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `horrificincident`
--

CREATE TABLE `horrificincident` (
  `id` int(11) NOT NULL,
  `incidentName` varchar(200) NOT NULL,
  `incidentAddress` varchar(200) NOT NULL,
  `incidentDescription` varchar(500) NOT NULL,
  `incidentImage` varchar(500) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `horrificincident`
--

INSERT INTO `horrificincident` (`id`, `incidentName`, `incidentAddress`, `incidentDescription`, `incidentImage`, `email`) VALUES
(4, 'Accident', 'Sokoto', 'rtyhuj', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `missingperson`
--

CREATE TABLE `missingperson` (
  `id` int(11) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `lastSeen` date NOT NULL,
  `description` varchar(500) NOT NULL,
  `personImage` varchar(500) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `missingperson`
--

INSERT INTO `missingperson` (`id`, `fullName`, `address`, `phone`, `lastSeen`, `description`, `personImage`, `email`) VALUES
(2, 'Yasir', 'Sokoto', '134', '2021-09-29', 'he was lost yesterday', '', ''),
(5, 'Muhd', 'Abuja', '12345678', '2021-10-06', 'get lost on his to the club', '', ''),
(6, '', '', '', '0000-00-00', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `missingvehicle`
--

CREATE TABLE `missingvehicle` (
  `id` int(11) NOT NULL,
  `vehicleName` varchar(100) NOT NULL,
  `vehicleModel` varchar(100) NOT NULL,
  `vehiclePlateNo` varchar(100) NOT NULL,
  `lastSeen` date NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `missingvehicle`
--

INSERT INTO `missingvehicle` (`id`, `vehicleName`, `vehicleModel`, `vehiclePlateNo`, `lastSeen`, `description`) VALUES
(2, 'Honda', 'Accord', '1020', '2021-10-05', 'Black');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `nin` int(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `phone`, `email`, `address`, `nin`, `password`) VALUES
(5, 'Yasir', '+234901866', 'ysquare.theimperial@hotmail.com', 'Sokoto', 2147483647, '123'),
(14, '', '', '', '', 0, ''),
(15, 'Yasir Ado', '234901866', 'ysquare.theimperial@hotmail.com1', 'Kano State', 2147483647, '123'),
(16, 'now', '12345', 'now@gmail.com', 'adress me', 123456789, '123'),
(17, 'ne', '111', 'ne@gmail.com', 'ne.me', 12121, '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `horrificincident`
--
ALTER TABLE `horrificincident`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `missingperson`
--
ALTER TABLE `missingperson`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `missingvehicle`
--
ALTER TABLE `missingvehicle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `horrificincident`
--
ALTER TABLE `horrificincident`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `missingperson`
--
ALTER TABLE `missingperson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `missingvehicle`
--
ALTER TABLE `missingvehicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
