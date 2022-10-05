-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 05, 2022 at 08:43 AM
-- Server version: 10.5.16-MariaDB-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u1109267_fishapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_data`
--

CREATE TABLE `all_data` (
  `id` int(11) NOT NULL,
  `fisherman_id` varchar(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `stat` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fisherman_data`
--

CREATE TABLE `fisherman_data` (
  `id` int(11) NOT NULL,
  `fisherman_gateway` varchar(5) NOT NULL,
  `fisherman_id` varchar(11) NOT NULL,
  `fisherman_name` varchar(50) NOT NULL,
  `delete_stat` tinyint(11) NOT NULL,
  `last_record` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fisherman_data`
--

INSERT INTO `fisherman_data` (`id`, `fisherman_gateway`, `fisherman_id`, `fisherman_name`, `delete_stat`, `last_record`) VALUES
(1, '00001', '00001-00001', 'Suhandri', 0, 0),
(2, '00001', '00001-00002', 'Sucahyo', 0, 0),
(3, '00001', '00001-00003', 'ricardo', 0, 0),
(4, '00002', '00002-00001', 'Suhandro', 0, 0),
(5, '00002', '00002-00002', 'albert', 0, 0),
(6, '00003', '00003-00001', 'Asep Abdullah', 0, 0),
(7, '00003', '00003-00002', 'Jhonny', 0, 0),
(8, '00003', '00003-00003', 'Richardo', 0, 0),
(9, '00003', '00003-00004', 'Richard', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gateway_data`
--

CREATE TABLE `gateway_data` (
  `id` int(11) NOT NULL,
  `gateway_id` varchar(5) NOT NULL,
  `gateway_name` varchar(50) NOT NULL,
  `api_key` varchar(32) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `delete_stat` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gateway_data`
--

INSERT INTO `gateway_data` (`id`, `gateway_id`, `gateway_name`, `api_key`, `latitude`, `longitude`, `delete_stat`) VALUES
(1, '00001', 'PT Selayar Abadi Sentosa', 'db01206b76954ab7b510bb908464fd6d', -2.705, 107.6, 0),
(2, '00002', 'PT Ikan Laut Melimpah', '2e78d4cdb8f842eb924c95fb68963ff5', 3.765, 98.75, 0),
(3, '00003', 'PT Ikan Laut Banyak', '1f713079b37a4fa28c0a1782a991933f', 5.565, 126.6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`) VALUES
(1, 'admin', '$2y$10$hsG3rjXjnVL0FNqDEnsvlOoiIED44CFd8vvJWV65jmcMvYPAjbu52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_data`
--
ALTER TABLE `all_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fisherman_id` (`fisherman_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `fisherman_data`
--
ALTER TABLE `fisherman_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fisherman_id` (`fisherman_id`);

--
-- Indexes for table `gateway_data`
--
ALTER TABLE `gateway_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `api_key_2` (`api_key`),
  ADD UNIQUE KEY `gateway_id_2` (`gateway_id`),
  ADD KEY `gateway_id` (`gateway_id`),
  ADD KEY `api_key` (`api_key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_data`
--
ALTER TABLE `all_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
