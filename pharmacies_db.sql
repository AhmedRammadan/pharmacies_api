-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2019 at 11:38 PM
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
(19, 'pharmacy_nam554e', 'pharmacist_nam55e', 'phone_n', '2019-05-05 21:35:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
