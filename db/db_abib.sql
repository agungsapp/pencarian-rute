-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2022 at 04:00 PM
-- Server version: 5.7.21-log
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_abib`
--

-- --------------------------------------------------------

--
-- Table structure for table `graph`
--

CREATE TABLE `graph` (
  `id` int(11) NOT NULL,
  `start` int(2) DEFAULT NULL,
  `end` int(2) DEFAULT NULL,
  `distance` decimal(10,2) DEFAULT NULL,
  `time` int(10) DEFAULT NULL,
  `diinsertPada` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `diupadtePada` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `graph`
--

INSERT INTO `graph` (`id`, `start`, `end`, `distance`, `time`, `diinsertPada`, `diupadtePada`) VALUES
(80, 406, 407, '1.64', 1411, '2021-08-12 11:40:48', '2021-08-13 13:20:03'),
(81, 407, 408, '0.36', 4, '2021-08-12 11:41:10', '2021-08-13 13:21:14'),
(82, 408, 410, '1.58', 5, '2021-08-12 11:41:19', '2021-08-13 13:21:17'),
(83, 410, 409, '0.73', 4, '2021-08-12 11:41:34', '2021-08-13 13:21:27'),
(85, 406, 411, '0.47', 111, '2021-08-12 11:43:10', '2021-08-13 13:19:39'),
(86, 411, 412, '1.08', 1, '2021-08-12 11:43:18', '2021-08-13 13:21:09'),
(89, 408, 412, '0.70', 66, '2021-08-12 11:50:59', '2021-08-13 13:21:20'),
(90, 406, 410, '3.24', 12, '2021-08-13 13:17:52', NULL),
(92, 427, 437, '15.68', 110, '2022-05-31 00:57:51', '2022-11-09 09:28:40'),
(116, 408, 411, '11.83', 99, '2022-06-27 02:07:11', NULL),
(117, 432, 433, '11.64', 70, '2022-06-27 02:07:32', NULL),
(118, 406, 409, '7.33', 46, '2022-06-27 02:07:47', NULL),
(121, 411, 407, '13.99', 106, '2022-11-09 09:33:10', NULL),
(122, 440, 406, '1765.15', 20426, '2022-11-09 09:34:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `node`
--

CREATE TABLE `node` (
  `id` int(2) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` enum('object','-') DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  `desc` text,
  `picture` text,
  `inserted_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `node`
--

INSERT INTO `node` (`id`, `name`, `type`, `lat`, `lng`, `desc`, `picture`, `inserted_at`, `updated_at`) VALUES
(406, 'RUMAH A7', '-', '-3.9483756384382076', '122.46889475098959', '-', '-', '2021-08-06 14:32:17', '2022-05-30 02:32:41'),
(407, 'RUMAH A3', '-', '-4.116872167656936', '122.50597360841903', '-', '-', '2021-08-06 14:32:24', '2022-05-30 02:32:59'),
(408, 'RUMAH A4', '-', '-4.028518586437627', '122.48743417970434', '-', '-', '2021-08-06 14:32:32', '2022-05-30 02:33:03'),
(409, 'RUMAH A5', '-', '-3.950430683161244', '122.53481271974408', '-', '-', '2021-08-06 14:32:39', '2022-05-30 02:33:07'),
(410, 'RUMAH A6', '-', '-4.108653640305292', '122.42975595704081', '-', '-', '2021-08-06 14:32:54', '2022-05-30 02:33:11'),
(411, 'RUMAH A1', '-', '-4.066874820456491', '122.3830640625211', '-', '-', '2021-08-06 14:34:28', '2022-05-30 02:42:33'),
(412, 'RUMAH A2', '-', '-4.045642129681951', '122.41258981935255', '-', '-', '2021-08-06 14:34:37', '2022-05-30 02:32:54'),
(425, 'Petshop A1', 'object', '-4.076731136673146', '122.44623544923837', 'Petshop A1', '738dd8829ebdb8e64e04c6ecf9cfbe34.jpg', '2022-05-30 01:51:31', '2022-05-30 02:09:35'),
(426, 'Petshop B1', 'object', '-4.039745250279694', '122.444862158212', 'Petshop B1', '7eb86f2604802757967063d8020db29f.jpg', '2022-05-30 02:00:09', '2022-05-30 02:57:28'),
(427, 'Petshop C1', 'object', '-4.05892332876472', '122.51627329103161', 'Petshop C1', 'b0b55fd34aea5491a0a62dcace07bd79.jpg', '2022-05-30 02:02:34', '2022-05-30 02:09:53'),
(428, 'Petshop D1', 'object', '-3.9959079433147338', '122.47713449708277', 'Petshop D1', 'a6a5a32265e38ca74f9b3de4c5a909f1.jpg', '2022-05-30 02:13:05', NULL),
(429, 'Petshop E1', 'object', '-4.037690429219694', '122.59867075196786', 'Petshop E1', '2880aa21ce6c7e833a94f45432081453.jpg', '2022-05-30 02:13:24', NULL),
(431, 'Petshop F1', 'object', '-4.086319793048517', '122.55541208498033', 'Petshop F1', '259e08021bb80f51a3e79b3c0a6779ad.jpg', '2022-05-30 02:28:52', NULL),
(432, 'RUMAH A8', '-', '-3.961390835594827', '122.40572336427448', '-', '-', '2022-05-30 02:33:34', NULL),
(433, 'RUMAH A9', '-', '-4.073039045382828', '122.49155405274308', '-', '-', '2022-05-30 02:33:51', NULL),
(435, 'Petshop G1', 'object', '-4.0048125867597975', '122.55403879395396', 'Petshop G1', 'c178d859033956926ec97d14127f8682.jpg', '2022-05-30 02:35:20', NULL),
(436, 'Petshop H1', 'object', '-3.9294625665650074', '122.4366224121211', 'Petshop H1', 'd80b51a4b7ac83c1418e472b53448e8b.jpg', '2022-05-30 02:35:49', NULL),
(437, 'Petshop I1', 'object', '-4.011662246560562', '122.37757089844462', 'Petshop I1', '90ceac58b9947a63939b550b878628ea.jpg', '2022-05-30 02:36:12', NULL),
(440, 'Lokasi Saya Sekarang', '-', '-6.237204021039801', '106.62025274602308', '-', '-', '2022-05-31 07:34:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `inserted_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `rule` varchar(10) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `inserted_at`, `updated_at`, `rule`) VALUES
(2, 'admin', 'admin', '2021-08-05 10:23:01', '2022-11-09 06:49:50', 'admin'),
(3, 'user', 'user', '2022-05-28 14:00:11', '2022-11-09 06:49:54', 'user'),
(4, 'kris', 'kris', '2022-11-09 06:07:35', '2022-11-09 06:50:01', 'user'),
(5, 'ruth', 'ruth', '2022-11-09 06:54:41', NULL, 'admin'),
(6, 'satu', 'satu', '2022-11-09 09:17:52', NULL, 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `graph`
--
ALTER TABLE `graph`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `start` (`start`,`end`) USING BTREE,
  ADD KEY `simpulMulai` (`start`) USING BTREE,
  ADD KEY `simpulAkhir` (`end`) USING BTREE;

--
-- Indexes for table `node`
--
ALTER TABLE `node`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `graph`
--
ALTER TABLE `graph`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `node`
--
ALTER TABLE `node`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `graph`
--
ALTER TABLE `graph`
  ADD CONSTRAINT `graph_ibfk_1` FOREIGN KEY (`start`) REFERENCES `node` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `graph_ibfk_2` FOREIGN KEY (`end`) REFERENCES `node` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
