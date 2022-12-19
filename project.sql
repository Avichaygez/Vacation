-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2022 at 03:49 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `followedvacations`
--

CREATE TABLE `followedvacations` (
  `user_id` int(11) NOT NULL,
  `vacation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `followedvacations`
--

INSERT INTO `followedvacations` (`user_id`, `vacation_id`) VALUES
(10, 713),
(10, 755);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `role` varchar(10) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `role`, `first_name`, `last_name`, `user_name`, `password`) VALUES
(1, 'user', 'Shlomi', 'Gez', 'ShlomiGez', '102030'),
(4, 'user', 'gili', 'Gez', 'Giligez', '987654321'),
(6, 'user', 'moshe', 'gez', 'MosheGez', '123123'),
(10, 'user', 'asd', 'asd', 'asdasd', 'asdasd'),
(11, 'admin', 'avichay', 'gez', 'AvichayGez', '123123'),
(54, 'user', 'aa', 'aa', 'aa', 'aa'),
(55, 'user', 'zzz', 'zzz', 'zzz', 'zzz'),
(56, 'user', 'aaaa', 'aaaaa', 'asdasdasdasd', 'asdasd'),
(57, 'user', 'zzz', 'zzz', 'asdasdaaasd', 'asdasd');

-- --------------------------------------------------------

--
-- Table structure for table `vacation`
--

CREATE TABLE `vacation` (
  `id` int(11) NOT NULL,
  `description` varchar(150) NOT NULL,
  `destination` varchar(20) NOT NULL,
  `image` varchar(30) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `price` int(11) NOT NULL,
  `followers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vacation`
--

INSERT INTO `vacation` (`id`, `description`, `destination`, `image`, `start_date`, `end_date`, `price`, `followers`) VALUES
(713, 'wqeqweqwe', 'qweqweqweqw', 'jerusalem.jpg', '2022-12-14', '2022-12-22', 123123, 1),
(715, 'asdasd', 'asdas', 'venezia.jpg', '2022-12-14', '2022-12-29', 123123123, 0),
(755, 'asdasd', 'asdasd', 'Bangkok.jpg', '2022-12-17', '2022-12-23', 11111, 1),
(756, 'aaaa', 'aaaaa', 'Bangkok.jpg', '2022-12-23', '2022-12-30', 1313, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `followedvacations`
--
ALTER TABLE `followedvacations`
  ADD PRIMARY KEY (`user_id`,`vacation_id`),
  ADD KEY `vacation_id` (`vacation_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vacation`
--
ALTER TABLE `vacation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `vacation`
--
ALTER TABLE `vacation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=758;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `followedvacations`
--
ALTER TABLE `followedvacations`
  ADD CONSTRAINT `followedvacations_ibfk_1` FOREIGN KEY (`vacation_id`) REFERENCES `vacation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `followedvacations_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
