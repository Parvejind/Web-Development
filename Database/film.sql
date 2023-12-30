-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2020 at 04:10 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lco_films`
--
DROP DATABASE IF EXISTS lco_films;
CREATE DATABASE lco_films;
USE lco_films;
-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `actor_id` smallint(5) UNSIGNED NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `address_id` smallint(5) UNSIGNED NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`actor_id`, `first_name`, `last_name`, `address_id`, `last_update`) VALUES
(1, 'PENELOPE', 'GUINESS', 1, '2020-07-30 12:37:51'),
(2, 'NICK', 'WAHLBERG', 4, '2020-07-30 12:37:51'),
(3, 'ED', 'CHASE', 2, '2020-07-30 12:37:51'),
(4, 'JENNIFER', 'DAVIS', 3, '2020-07-30 12:37:51'),
(5, 'JOHNNY', 'LOLLOBRIGIDA', 5, '2020-07-30 12:37:51'),
(6, 'BETTE', 'NICHOLSON', 7, '2020-07-30 12:37:51'),
(7, 'GRACE', 'MOSTEL', 6, '2020-07-30 12:37:51'),
(8, 'MATTHEW', 'JOHANSSON', 8, '2020-07-30 12:37:51'),
(9, 'JOE', 'SWANK', 10, '2020-07-30 12:37:51'),
(10, 'CHRISTIAN', 'GABLE', 9, '2020-07-30 12:37:51'),
(11, 'ZERO', 'CAGE', 11, '2020-07-30 12:37:51'),
(12, 'KARL', 'BERRY', 13, '2020-07-30 12:37:51'),
(13, 'UMA', 'WOOD', 110, '2020-07-30 12:37:51'),
(14, 'VIVIEN', 'BERGEN', 25, '2020-07-30 12:37:51'),
(15, 'CUBA', 'OLIVIER', 40, '2020-07-30 12:37:51'),
(16, 'FRED', 'COSTNER', 65, '2020-07-30 12:37:51'),
(17, 'HELEN', 'VOIGHT', 77, '2020-07-30 12:37:51'),
(18, 'DAN', 'TORN', 414, '2020-07-30 12:37:51'),
(19, 'BOB', 'FAWCETT', 125, '2020-07-30 12:37:51'),
(20, 'LUCILLE', 'TRACY', 80, '2020-07-30 12:37:51'),
(21, 'KIRSTEN', 'PALTROW', 99, '2020-07-30 12:37:51'),
(22, 'ELVIS', 'MARX', 44, '2020-07-30 12:37:51'),
(23, 'SANDRA', 'KILMER', 33, '2020-07-30 12:39:05'),
(24, 'CAMERON', 'STREEP', 63, '2020-07-30 12:37:51'),
(25, 'KEVIN', 'BLOOM', 67, '2020-07-30 12:39:44'),
(26, 'RIP', 'CRAWFORD', 46, '2020-07-30 12:37:51'),
(27, 'JULIA', 'MCQUEEN', 47, '2020-07-30 12:37:51'),
(28, 'WOODY', 'HOFFMAN', 57, '2020-07-30 12:37:51'),
(29, 'ALEC', 'WAYNE', 74, '2020-07-30 12:37:51'),
(30, 'SANDRA', 'PECK', 75, '2020-07-30 12:37:51'),

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`film_id`),
  ADD KEY `idx_title` (`title`),
  ADD KEY `idx_fk_language_id` (`language_id`),
  ADD KEY `idx_fk_original_language_id` (`original_language_id`);

--
-- Indexes for table `film_actor`
--
ALTER TABLE `film_actor`
  ADD PRIMARY KEY (`actor_id`,`film_id`),
  ADD KEY `idx_fk_film_id` (`film_id`);

--
-- Indexes for table `film_category`
--
ALTER TABLE `film_category`
  ADD PRIMARY KEY (`film_id`,`category_id`),
  ADD KEY `fk_film_category_category` (`category_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`language_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actor`
--
ALTER TABLE `actor`
  MODIFY `actor_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=606;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=601;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `film_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `language_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actor`
--
ALTER TABLE `actor`
  ADD CONSTRAINT `fk_actor_address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON UPDATE CASCADE;

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `fk_address_city` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`) ON UPDATE CASCADE;

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `fk_city_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`) ON UPDATE CASCADE;

--
-- Constraints for table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `fk_film_language` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_film_language_original` FOREIGN KEY (`original_language_id`) REFERENCES `language` (`language_id`) ON UPDATE CASCADE;

--
-- Constraints for table `film_actor`
--
ALTER TABLE `film_actor`
  ADD CONSTRAINT `fk_film_actor_actor` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`actor_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_film_actor_film` FOREIGN KEY (`film_id`) REFERENCES `film` (`film_id`) ON UPDATE CASCADE;

--
-- Constraints for table `film_category`
--
ALTER TABLE `film_category`
  ADD CONSTRAINT `fk_film_category_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_film_category_film` FOREIGN KEY (`film_id`) REFERENCES `film` (`film_id`) ON UPDATE CASCADE;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;