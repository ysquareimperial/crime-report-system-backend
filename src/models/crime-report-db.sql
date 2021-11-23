-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2021 at 04:43 PM
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
  `email` varchar(200) NOT NULL,
  `incidentDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `horrificincident`
--

INSERT INTO `horrificincident` (`id`, `incidentName`, `incidentAddress`, `incidentDescription`, `incidentImage`, `email`, `incidentDate`) VALUES
(10, 'Car Accident', 'Zaria, Rd, Kano', 'Accident occurred in Zaria Road, Kano ', '', 'ysquare.theimperial@gmail.com', '0000-00-00'),
(11, 'Fire Outbreak', 'Abuja', 'Caused by cooking gas', '', 'mustpha@gmai.com', '0000-00-00'),
(12, 'Fire Outbreak', 'Sokoto', 'Fire Fire Fire', '', 'mustpha@gmai.com', '2021-11-04');

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
(22, 'Musa', 'Kano', '09018661696', '2021-11-02', 'Tall black guy.', '', 'ysquare.theimperial@gmail.com'),
(23, 'Kabiru', 'Abuja', '191919191', '2021-11-02', 'Tall fat guy', '', 'mustpha@gmai.com');

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
  `description` varchar(500) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `missingvehicle`
--

INSERT INTO `missingvehicle` (`id`, `vehicleName`, `vehicleModel`, `vehiclePlateNo`, `lastSeen`, `description`, `email`) VALUES
(8, 'Honda ', 'Accord 2020', 'AH-34R-11', '2021-11-10', 'Black Honda Accord', 'ysquare.theimperial@gmail.com'),
(9, 'Mercedes', 'C300 2020', 'WE-122D-1DD', '2021-11-01', 'Black C300', 'mustpha@gmai.com');

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
  `password` varchar(100) NOT NULL,
  `role` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `phone`, `email`, `address`, `nin`, `password`, `role`) VALUES
(15, 'Yasir Ado Hassan', '09018661696', 'ysquare.theimperial@gmail.com', 'Kano', 2147483647, '123', ''),
(17, 'Mohammed Almustapha Zakari', '07012345678', 'mustpha@gmai.com', 'Abuja', 2147483647, '123', 'admin');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `missingperson`
--
ALTER TABLE `missingperson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `missingvehicle`
--
ALTER TABLE `missingvehicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
