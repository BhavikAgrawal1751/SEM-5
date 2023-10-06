-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2023 at 07:28 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `program6`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `title` varchar(2048) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Album1', 1, '2023-09-07', '2023-09-07'),
(2, 'Album21', 1, '2023-09-07', '2023-09-07'),
(4, 'Album4', 1, '2023-09-07', '2023-09-07'),
(5, 'Album5', 1, '2023-09-07', '2023-09-07');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `title` varchar(512) NOT NULL,
  `photo` varchar(512) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `album_id`, `title`, `photo`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 'Album4 Photo1', 'bespoke_design.png', 1, '2023-09-07', '2023-09-07'),
(3, 1, 'Album1 Photo1', 'commercial_support.png', 1, '2023-09-07', '2023-09-07'),
(4, 2, 'Album2 Photo1', 'empowered-business-woman-office 1.png', 1, '2023-09-07', '2023-09-07'),
(5, 1, 'Album1 Photo2', 'fire_rating_advice.png', 1, '2023-09-07', '2023-09-07'),
(7, 4, 'Testing Photo', 'Component 26.png', 1, '2023-09-08', '2023-09-08'),
(8, 5, 'Testing Photo', 'Group 39486.png', 1, '2023-09-08', '2023-09-08'),
(9, 4, 'New Tesitng', 'modern-meeting-room 1.png', 1, '2023-09-08', '2023-09-08'),
(10, 2, 'Ok Testing', 'Project Management.png', 1, '2023-09-08', '2023-09-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
