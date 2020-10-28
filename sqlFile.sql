-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 28, 2020 at 09:50 AM
-- Server version: 10.3.24-MariaDB-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electro_iot`
--

-- --------------------------------------------------------

--
-- Table structure for table `Boards`
--

CREATE TABLE `Boards` (
  `id` int(255) UNSIGNED NOT NULL,
  `board` varchar(255) DEFAULT NULL,
  `last_request` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Boards`
--

INSERT INTO `Boards` (`id`, `board`, `last_request`) VALUES
(20, '2', '2020-10-28 09:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `Outputs`
--

CREATE TABLE `Outputs` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `board` varchar(255) DEFAULT NULL,
  `gpio` int(6) DEFAULT NULL,
  `state` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Outputs`
--

INSERT INTO `Outputs` (`id`, `name`, `board`, `gpio`, `state`) VALUES
(24, 'Candy', '2', 16, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Boards`
--
ALTER TABLE `Boards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Outputs`
--
ALTER TABLE `Outputs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Boards`
--
ALTER TABLE `Boards`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `Outputs`
--
ALTER TABLE `Outputs`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
