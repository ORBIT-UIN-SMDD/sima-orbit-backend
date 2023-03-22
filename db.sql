-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 10, 2023 at 05:34 AM
-- Server version: 5.7.33
-- PHP Version: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backend-starter`
--

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE `todo` (
  `id_todo` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`id_todo`, `title`, `description`, `deadline`, `created_at`, `id_user`) VALUES
(6, 'title', ' testing testing lorem', NULL, '2022-05-22 07:27:03', 32),
(7, 'title', ' testing testing lorem', NULL, '2022-05-22 07:27:03', 32),
(8, 'title', ' testing testing lorem', NULL, '2022-05-22 07:27:04', 32),
(9, 'title', ' testing testing lorem', NULL, '2022-05-22 07:27:05', 32);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `picture` varchar(200) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `picture`, `createdAt`, `updatedAt`) VALUES
(32, 'Fajri Rinaldi Chan', 'fajri@farindev.my.id', '$2a$10$amDMqaYQZWbxlGxUr8k1k.LoCZVjDv6GrzwGFELIikSxQ/8f1eq0C', NULL, NULL, '2022-05-22 03:36:20', '2022-12-26 05:41:13'),
(33, 'master', 'master@farindev.my.id', '$2a$10$FviWM79Qlno4B1aFor/8VON2rji9fVt3l8jUohuvP1HVojUMrrCdO', NULL, NULL, '2022-05-22 05:07:15', '2022-12-26 05:41:13'),
(34, 'master', 'master1@farindev.my.id', '$2a$10$oW/0Zum5vxoKN7EeA7hvduVShIb.5E3tWtsAcWAkI2RuVvzVG0a/a', NULL, NULL, '2022-05-22 06:53:08', '2022-12-26 05:41:13'),
(35, 'master', 'master2@farindev.my.id', '$2a$10$8zB7j/iBg0U/AHsoXv6Vkeuo6YtFuu.wXbNniamRHdCPyzz4lGLpa', NULL, NULL, '2022-05-22 06:54:17', '2022-12-26 05:41:13'),
(36, 'inan', 'testtest@gmail.com', '$2a$10$PAQJRCATtJ/vtGiZZJIgC.dkSePzFP4sN3e0wAbBilqgXjfZheBsC', NULL, NULL, '2022-12-26 06:53:15', '2022-12-26 06:53:15'),
(37, 'inan', 'testtest@gmail.com', '$2a$10$2.2Z3R8WlOEGA6jrMRS5Ae88xSalWv/JM7l.RKRHSnAtppRuVhVPS', NULL, NULL, '2022-12-26 06:54:38', '2022-12-26 06:54:38'),
(38, 'inan', 'testtest@gmail.com', '$2a$10$H3nwH.6Dq0dXlDy3vjdpEu0TVfV3zRaOwp1YjUX9erLoNZXu3ofda', NULL, NULL, '2022-12-26 06:54:57', '2022-12-26 06:54:57'),
(39, 'inan1', 'testtest1@gmail.com', '$2a$10$ebWXNWx1r8YO83tzQkW49OcXPAvDvA0zLgryfWUg4XXe9uXCRok9u', NULL, NULL, '2022-12-26 13:14:47', '2022-12-26 13:14:47'),
(40, 'inan2', 'testtest2@gmail.com', '$2a$10$ta.zrho3czt/XnlGBYD1t.aqK0dw5RL2z3zW1nZjhw2lbuaU9zSjK', NULL, NULL, '2022-12-26 13:19:11', '2022-12-26 13:19:11'),
(41, 'inan190', 'testtest24@gmail.com', '$2a$10$4u7vBW7LUjPa9mKYOAK1Au2YrFLeLX75ywrOZxOT8lTDwVlDBqmz2', 'ikascb', 'inan.jpg', '2022-12-26 13:28:46', '2022-12-27 21:06:05'),
(43, 'Fajri', 'inan@inan.com', '$2a$10$zQ.O4FoHlKECd8TTKi3/een3Ojt/34VQ4fYemaEMAQs6KYLVrOtue', NULL, NULL, '2023-01-03 01:13:08', '2023-01-03 01:13:08'),
(44, 'fajri', 'inan@ggmail.com', '$2a$10$pMFxnH7HSP4bwzrcAG2w9uh6d.TCZNuwI/XPsvJ6/5JE9R6zQugHe', NULL, NULL, '2023-01-04 01:06:20', '2023-01-04 01:06:20'),
(45, 'ianna', 'inan@inan1.com', '$2a$10$Z2Rs3jmzmsuoCDKIr8SBkeX90xVdp0XfyFC5JKDu5mvvG/A4Q.sIu', NULL, NULL, '2023-01-04 14:46:23', '2023-01-04 14:46:23'),
(46, 'inan', 'inan@inan2.com', '$2a$10$9KQ1BVAmEp0N26Nza/6c8uaOV.HR9C0cwq6rpraSExhYsuGHX0Qzy', NULL, NULL, '2023-01-04 14:51:52', '2023-01-04 14:51:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`id_todo`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `todo`
--
ALTER TABLE `todo`
  MODIFY `id_todo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `todo`
--
ALTER TABLE `todo`
  ADD CONSTRAINT `todo_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
