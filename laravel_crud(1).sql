-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2022 at 02:51 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `city`, `state_id`) VALUES
(1, 'vadodara', 1),
(2, 'rajkot', 1),
(3, 'Surat', 1),
(4, 'ludhiana', 2),
(5, 'Amritsar', 2),
(6, 'Jaipur', 3),
(7, 'Udaipur', 3),
(8, 'London City', 5),
(9, 'Mumbai', 4),
(10, 'Glasgow City', 6),
(11, 'Aberdeen City', 6),
(12, 'Belfast', 7),
(13, 'Derry City and Strabane', 7),
(14, 'Calgary', 8),
(15, 'Camrose', 8),
(16, 'Vancouver', 9),
(17, 'Victoria', 9);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country`) VALUES
(1, 'India'),
(2, 'United Kingdom'),
(3, 'Canada');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `education` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `education`) VALUES
(1, 'Engineering'),
(2, 'MBA'),
(3, 'B.COM');

-- --------------------------------------------------------

--
-- Table structure for table `education_list`
--

CREATE TABLE `education_list` (
  `id` int(11) NOT NULL,
  `info_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `education_list`
--

INSERT INTO `education_list` (`id`, `info_id`, `name`) VALUES
(1, 24, 'B.COM'),
(2, 24, 'Engineering'),
(7, 25, 'MBA'),
(23, 26, 'MBA'),
(24, 27, 'MBA'),
(25, 27, 'B.COM'),
(26, 27, 'MBA'),
(27, 27, 'B.COM'),
(28, 28, 'B.COM'),
(29, 28, 'Engineering'),
(30, 28, 'MBA'),
(31, 30, 'Engineering'),
(32, 30, 'MBA');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `gender` enum('0','1') NOT NULL,
  `education` varchar(1000) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `name`, `email`, `phone`, `country`, `state`, `city`, `gender`, `education`, `password`, `created_at`, `updated_at`) VALUES
(29, 'ram', 'jeel@gmail.com', '7419638550', '1', '1', '2', '0', 'Engineering,B.COM', '123456', '2022-10-20 15:30:46', '2022-10-20 15:30:46'),
(30, 'jeel', 'jeel@gmail.com', '7419638550', '3', '8', '14', '0', 'Engineering', '123456', '2022-10-20 16:33:32', '2022-10-20 16:33:32'),
(31, 'keval', 'alex@zithas.com', '7894561230', '1', '2', '4', '1', 'B.COM', '123456', '2022-10-20 17:02:49', '2022-10-20 17:02:49');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `state`, `country_id`) VALUES
(1, 'gujarat', 1),
(2, 'punjab', 1),
(3, 'rajsthan', 1),
(4, 'Maharastra', 1),
(5, 'London', 2),
(6, 'Scotland', 2),
(7, 'Northern Ireland', 2),
(8, 'Alberta', 3),
(9, 'British Columbia', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_list`
--
ALTER TABLE `education_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `education_list`
--
ALTER TABLE `education_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
