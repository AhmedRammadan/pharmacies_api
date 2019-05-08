-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2019 at 12:10 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacies_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pharmaceutical`
--

CREATE TABLE `pharmaceutical` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `price` varchar(32) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `barcode` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `pharmacy_name` varchar(32) NOT NULL,
  `pharmacist_name` varchar(32) NOT NULL,
  `phone_numbre` varchar(32) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `pharmacy_name`, `pharmacist_name`, `phone_numbre`, `created`) VALUES
(8, 'pharmacy_nam554e', 'pharmacist_nam55e', 'phone_n', '2019-05-05 20:23:39'),
(9, 'pharmacy_nam554e', 'pharmacist_nam55e', 'phone_n', '2019-05-05 20:23:40'),
(10, 'pharmacy_nam554e', 'pharmacist_nam55e', 'phone_n', '2019-05-05 20:23:44'),
(11, 'pharmacy_nam554e', 'pharmacist_nam55e', 'phone_n', '2019-05-05 20:23:45'),
(12, 'ahmed ramadan', 'pharmacist_nam55e', '123456789', '2019-05-05 20:23:46'),
(13, 'pharmacy_nam554e', 'pharmacist_nam55e', 'phone_n', '2019-05-05 20:23:47'),
(14, 'pharmacy_nam554e', 'pharmacist_nam55e', 'phone_n', '2019-05-05 20:23:47'),
(15, 'pharmacy_nam554e', 'pharmacist_nam55e', 'phone_n', '2019-05-05 20:23:48'),
(16, 'pharmacy_nam554e', 'pharmacist_nam55e', 'phone_n', '2019-05-05 20:23:49'),
(17, 'pharmacy_nam554e', 'pharmacist_nam55e', 'phone_n', '0000-00-00 00:00:00'),
(18, 'pharmacy_nam554e', 'pharmacist_nam55e', 'phone_n', '0000-00-00 00:00:00'),
(19, 'pharmacy_nam554e', 'pharmacist_nam55e', 'phone_n', '2019-05-05 21:35:43'),
(20, 'pharmacy_name', 'pharmacist_name', 'phone_numbre', '2019-05-06 07:16:45'),
(21, 'ahmed ramadan', 'ramadan', '123456789', '2019-05-06 07:17:12'),
(22, 'ahmed ramadan', 'ramadan', '123456789', '2019-05-06 07:19:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmaceutical`
--
ALTER TABLE `pharmaceutical`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pharmaceutical`
--
ALTER TABLE `pharmaceutical`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
