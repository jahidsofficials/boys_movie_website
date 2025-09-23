-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 23, 2025 at 04:25 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `imdb` decimal(3,1) DEFAULT NULL,
  `date` year DEFAULT NULL,
  `sposter` varchar(255) DEFAULT NULL,
  `bposter` varchar(255) DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `type` enum('movie','series') NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `trailer` varchar(255) DEFAULT NULL,
  `low` varchar(255) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `high` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `name`, `imdb`, `date`, `sposter`, `bposter`, `genre`, `type`, `url`, `trailer`, `low`, `medium`, `high`, `created_at`, `updated_at`) VALUES
(1, 'The Boys', 9.3, '2022', 'the boys.jpg', 'the boys1.jpg', 'Action', 'series', 'the boys', 'john wick.webm', 'theboys.webm', 'the boys 720ph.mp4', 'the boys 1080ph.mp4', '2025-09-20 12:07:28', '2025-09-20 12:07:28'),
(2, 'Money Heist', 9.9, '2020', 'money heist.jpg', 'money heist1.jpg', 'Action', 'series', 'money heist', 'money heist trailer.mp4', 'money heist 480ph.mp4', 'money heist 720ph.mp4', 'money heist 1080ph.mp4', '2025-09-20 12:07:28', '2025-09-20 12:07:28'),
(3, 'John Wick', 9.8, '2022', 'Jhon Wick.jpg', 'jhon wick1.webp', 'Action', 'movie', 'jhon wick', 'john wick trailer.mp4', 'Jhon Wick 480ph.mp4', 'Jhon Wick 720ph.mp4', 'Jhon Wick 1080ph.mp4', '2025-09-20 12:07:28', '2025-09-20 12:07:28'),
(4, 'Ant Man', 8.9, '2017', 'ant man.jpg', 'ant man1.jpg', 'Action', 'movie', 'ant man', 'john wick trailer.mp4', 'ant man 480ph.mp4', 'ant man 720ph.mp4', 'ant man 1080ph.mp4', '2025-09-20 12:07:28', '2025-09-20 12:07:28'),
(5, 'Avengers', 9.9, '2012', 'avengers.jpg', 'avengers1.jpg', 'Action', 'movie', 'avengers', 'john wick trailer.mp4', 'avengers 480ph.mp4', 'avengers 720ph.mp4', 'avengers 1080ph.mp4', '2025-09-20 12:07:28', '2025-09-20 12:07:28'),
(6, 'Moon Knight', 7.3, '2022', 'moon knight.jpg', 'moon knight1.webp', 'Action', 'series', 'moon knight', 'john wick trailer.mp4', 'moon knight 480ph.mp4', 'moon knight 720ph.mp4', 'moon knight 1080ph.mp4', '2025-09-20 12:07:28', '2025-09-20 12:07:28'),
(7, 'Kota Factory', 9.6, '2020', 'kota factory.jpg', 'kota factory1.webp', 'Action', 'series', 'kota factory', 'john wick trailer.mp4', 'kota factory 480ph.mp4', 'kota factory 720ph.mp4', 'kota factory 1080ph.mp4', '2025-09-20 12:07:28', '2025-09-20 12:07:28'),
(8, 'Collage Romance', 7.9, '2021', 'collage romance.jpg', 'collage romance1.jpg', 'Action', 'series', 'collage romance', 'john wick trailer.mp4', 'collage romance 480ph.mp4', 'collage romance 720ph.mp4', 'collage romance 1080ph.mp4', '2025-09-20 12:07:28', '2025-09-20 12:07:28'),
(9, 'Thor Love Of Thunder', 8.8, '2022', 'thor love of thunder.jpg', 'thor love of thunder1.avif', 'Action', 'movie', 'thor love of thunder', 'john wick trailer.mp4', 'thor love of thunder 480ph.mp4', 'thor love of thunder 720ph.mp4', 'thor love of thunder 1080ph.mp4', '2025-09-20 12:07:28', '2025-09-20 12:07:28'),
(10, 'Uncharted', 9.8, '2022', 'uncharted.webp', 'uncharted1.jpg', 'Action', 'movie', 'uncharted', 'john wick trailer.mp4', 'uncharted 480ph.mp4', 'uncharted 720ph.mp4', 'uncharted 1080ph.mp4', '2025-09-20 12:07:28', '2025-09-20 12:07:28'),
(11, 'Eesho', 8.2, '2022', 'eesho.jpeg', 'eesho1.jpg', 'Action', 'movie', 'eesho', 'john wick trailer.mp4', 'eesho 480ph.mp4', 'eesho 720ph.mp4', 'eesho 1080ph.mp4', '2025-09-20 12:07:28', '2025-09-20 12:07:28'),
(12, 'Top Gun', 8.0, '2022', 'topgun.jpg', 'topgun1.jpg', 'Action', 'movie', 'topgun', 'john wick trailer.mp4', 'topgun 480ph.mp4', 'topgun 720ph.mp4', 'topgun 1080ph.mp4', '2025-09-20 12:07:28', '2025-09-20 12:07:28'),
(13, 'Jurassic World', 8.0, '2022', 'jurassic world.jpg', 'jurassic world1.jpg', 'Action', 'movie', 'jurassic world', 'john wick trailer.mp4', 'jurassic world 480ph.mp4', 'jurassic world 720ph.mp4', 'jurassic world 1080ph.mp4', '2025-09-20 12:07:28', '2025-09-20 12:07:28'),
(14, 'Eternals', 9.0, '2022', 'eternals.jpg', 'eternals1.webp', 'Action', 'movie', 'eternals', 'john wick trailer.mp4', 'eternals 480ph.mp4', 'eternals 720ph.mp4', 'eternals 1080ph.mp4', '2025-09-20 12:07:28', '2025-09-20 12:07:28'),
(15, 'Spider Man', 9.9, '2020', 'spiderman.jpg', 'spiderman1.jpg', 'Action', 'movie', 'spiderman', 'john wick trailer.mp4', 'spiderman 480ph.mp4', 'spiderman 720ph.mp4', 'spiderman 1080ph.mp4', '2025-09-20 12:07:28', '2025-09-20 12:07:28');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `timestamps` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `role`, `timestamps`) VALUES
(1, 'admin@example.com', 'admin123', 'admin', '2025-09-20 12:08:21'),
(2, 'user1@example.com', 'user123', 'user', '2025-09-20 12:08:21'),
(3, 'user2@example.com', 'user123', 'user', '2025-09-20 12:08:21'),
(4, 'user3@example.com', 'user123', 'user', '2025-09-20 12:08:21'),
(5, 'user4@example.com', 'user123', 'user', '2025-09-20 12:08:21');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
