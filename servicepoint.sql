-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2020 at 04:25 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `servicepoint`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `user_id` int(50) NOT NULL,
  `user_name` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `user_email` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `user_password` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `user_phoneno` varchar(50) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`user_id`, `user_name`, `user_email`, `user_password`, `user_phoneno`) VALUES
(1, 'Demo2', 'demo2@gmail.com', '1111', '01727546726'),
(2, 'Moshiuzzaman Shatil', 'shatil4135@gmail.com', '4135', '01727546726');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `user_email` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `user_password` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `user_type` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `account_status` varchar(50) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `user_id`, `user_email`, `user_password`, `user_type`, `account_status`) VALUES
(2, 1, 'admin@admin.com', '1234', 'admin', 'active'),
(4, 2, 'shatil4135@gmail.com', '4135', 'manager', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `user_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
