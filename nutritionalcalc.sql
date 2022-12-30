-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2022 at 06:57 PM
-- Server version: 8.0.31
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nutritionalcalc`
--

-- --------------------------------------------------------

--
-- Table structure for table `mybread`
--

CREATE TABLE `mybread` (
  `bread_id` int NOT NULL,
  `BreadName` varchar(255) NOT NULL,
  `servingSize` float DEFAULT NULL,
  `calories` float DEFAULT NULL,
  `fatsTotal` float DEFAULT NULL,
  `fatsSat` float DEFAULT NULL,
  `fatsTrans` float DEFAULT NULL,
  `chol` float DEFAULT NULL,
  `sodium` float DEFAULT NULL,
  `carbs` float DEFAULT NULL,
  `fiber` float DEFAULT NULL,
  `sugar` float DEFAULT NULL,
  `proteins` float DEFAULT NULL,
  `vitaminA` float DEFAULT NULL,
  `vitaminC` float DEFAULT NULL,
  `dvCalc` float DEFAULT NULL,
  `dvIron` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `mybread`
--

INSERT INTO `mybread` (`bread_id`, `BreadName`, `servingSize`, `calories`, `fatsTotal`, `fatsSat`, `fatsTrans`, `chol`, `sodium`, `carbs`, `fiber`, `sugar`, `proteins`, `vitaminA`, `vitaminC`, `dvCalc`, `dvIron`) VALUES
(1, 'Artisan Flatbread', 78, 220, 4, 1, 0, 0, 360, 40, 1, 2, 7, 0, 0, 0, 15),
(2, 'Artisan Italian Bread', 65, 160, 2, 1, 0, 0, 350, 34, 0, 2, 7, 0, 8, 0, 10),
(3, 'Hearty Multigrain bread', 71, 190, 2, 0, 0, 0, 310, 36, 3, 3, 7, 0, 0, 0, 8),
(4, 'Italian Herbs And Cheese', 76, 200, 4, 2, 0, 10, 550, 36, 0.5, 2, 9, 4, 8, 6, 10),
(5, 'Jalepeno Cheddar Bread', 76, 190, 4, 2, 0, 10, 470, 34, 0.5, 2, 9, 4, 10, 6, 10);

-- --------------------------------------------------------

--
-- Table structure for table `mycheese`
--

CREATE TABLE `mycheese` (
  `cheese_id` int NOT NULL,
  `CheeseName` varchar(255) DEFAULT NULL,
  `servingSize` float DEFAULT NULL,
  `calories` float DEFAULT NULL,
  `fatsTotal` float DEFAULT NULL,
  `fatsSat` float DEFAULT NULL,
  `fatsTrans` float DEFAULT NULL,
  `chol` float DEFAULT NULL,
  `sodium` float DEFAULT NULL,
  `carbs` float DEFAULT NULL,
  `fiber` float DEFAULT NULL,
  `sugar` float DEFAULT NULL,
  `proteins` float DEFAULT NULL,
  `vitaminA` float DEFAULT NULL,
  `vitaminC` float DEFAULT NULL,
  `dvCalc` float DEFAULT NULL,
  `dvIron` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `mycheese`
--

INSERT INTO `mycheese` (`cheese_id`, `CheeseName`, `servingSize`, `calories`, `fatsTotal`, `fatsSat`, `fatsTrans`, `chol`, `sodium`, `carbs`, `fiber`, `sugar`, `proteins`, `vitaminA`, `vitaminC`, `dvCalc`, `dvIron`) VALUES
(1, 'American', 11, 40, 4, 2, 0, 10, 210, 1, 0, 0, 2, 4, 0, 4, 0),
(2, 'BelGioioso Fresh Mozzarella', 17, 40, 3, 2, 0, 10, 55, 0, 0, 0, 3, 0, 0, 5, 0),
(3, 'Monterey Cheddar, Shredded', 14, 50, 5, 3, 0, 15, 90, 0, 0, 0, 3, 6, 0, 8, 0),
(4, 'Mozzarella, Shredded', 14, 45, 4, 2, 0, 10, 85, 1, 0, 0, 3, 0, 0, 6, 0),
(5, 'Parmesean, Grated', 1, 5, 0, 0, 0, 0, 25, 0, 0, 0, 1, 0, 0, 2, 0),
(6, 'Pepperjack', 14, 50, 4, 3, 0, 15, 140, 0, 0, 0, 3, 4, 4, 10, 0),
(7, 'Provolone', 14, 50, 4, 2, 0, 10, 125, 0, 0, 0, 4, 4, 0, 8, 0),
(8, 'Swiss', 14, 50, 5, 3, 0, 15, 30, 0, 0, 0, 4, 4, 0, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `myherbs`
--

CREATE TABLE `myherbs` (
  `herb_id` int NOT NULL,
  `HerbsName` varchar(255) NOT NULL,
  `servingSize` float DEFAULT NULL,
  `calories` float DEFAULT NULL,
  `fatsTotal` float DEFAULT NULL,
  `fatsSat` float DEFAULT NULL,
  `fatsTrans` float DEFAULT NULL,
  `chol` float DEFAULT NULL,
  `sodium` float DEFAULT NULL,
  `carbs` float DEFAULT NULL,
  `fiber` float DEFAULT NULL,
  `sugar` float DEFAULT NULL,
  `proteins` float DEFAULT NULL,
  `vitaminA` float DEFAULT NULL,
  `vitaminC` float DEFAULT NULL,
  `dvCalc` float DEFAULT NULL,
  `dvIron` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `myherbs`
--

INSERT INTO `myherbs` (`herb_id`, `HerbsName`, `servingSize`, `calories`, `fatsTotal`, `fatsSat`, `fatsTrans`, `chol`, `sodium`, `carbs`, `fiber`, `sugar`, `proteins`, `vitaminA`, `vitaminC`, `dvCalc`, `dvIron`) VALUES
(1, 'Avocado, Sliced', 28, 45, 4, 1, 0, 0, 0, 2, 2, 0, 1, 2, 4, 0, 0),
(2, 'Avocado, Smashed', 35, 70, 6, 1, 0, 0, 130, 3, 2, 0, 1, 0, 0, 0, 0),
(3, 'Banana Peppers (3 rings)', 4, 0, 0, 0, 0, 0, 65, 0, 0, 0, 0, 0, 6, 0, 0),
(4, 'Cucumbers (3 slices)', 14, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(5, 'Green Chilies', 14, 0, 0, 0, 0, 0, 55, 1, 0, 0, 0, 0, 6, 0, 2),
(6, 'Green Peppers', 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0),
(7, 'Jalepeno Peppers (3 rings)', 4, 0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 2, 0, 0),
(8, 'Lettuce', 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0),
(9, 'Olives, Black (3 rings)', 3, 0, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 'Onions', 7, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(11, 'Pickles (3 chips)', 10, 0, 0, 0, 0, 0, 115, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 'Spinach, Baby', 7, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 15, 2, 0, 2),
(13, 'Sweet Peppers', 14, 15, 0, 0, 0, 0, 170, 3, 0, 3, 0, 0, 6, 0, 0),
(14, 'Tomatoes (3 wheels)', 35, 5, 0, 0, 0, 0, 0, 1, 0, 1, 0, 10, 4, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `myprotein`
--

CREATE TABLE `myprotein` (
  `protein_id` int NOT NULL,
  `ProteinName` varchar(255) DEFAULT NULL,
  `servingSize` float DEFAULT NULL,
  `calories` float DEFAULT NULL,
  `fatsTotal` float DEFAULT NULL,
  `fatsSat` float DEFAULT NULL,
  `fatsTrans` float DEFAULT NULL,
  `chol` float DEFAULT NULL,
  `sodium` float DEFAULT NULL,
  `carbs` float DEFAULT NULL,
  `fiber` float DEFAULT NULL,
  `sugar` float DEFAULT NULL,
  `proteins` float DEFAULT NULL,
  `vitaminA` float DEFAULT NULL,
  `vitaminC` float DEFAULT NULL,
  `dvCalc` float DEFAULT NULL,
  `dvIron` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `myprotein`
--

INSERT INTO `myprotein` (`protein_id`, `ProteinName`, `servingSize`, `calories`, `fatsTotal`, `fatsSat`, `fatsTrans`, `chol`, `sodium`, `carbs`, `fiber`, `sugar`, `proteins`, `vitaminA`, `vitaminC`, `dvCalc`, `dvIron`) VALUES
(1, 'Bacon (2 Strips)', 15, 80, 6, 3, 0, 15, 170, 1, 0, 1, 5, 0, 0, 0, 2),
(2, 'Black Forest Ham', 57, 70, 2, 1, 0, 30, 490, 2, 0, 1, 10, 0, 0, 0, 2),
(3, 'Chicken Patty', 71, 80, 3, 1, 0, 45, 300, 2, 0, 1, 13, 0, 0, 0, 2),
(4, 'Cold cut combo meats', 64, 110, 8, 1, 0, 45, 620, 1, 0, 1, 9, 0, 0, 4, 4),
(5, 'Egg patty (regular)', 85, 180, 15, 4, 0, 240, 220, 2, 0, 0, 10, 10, 0, 2, 6),
(6, 'Egg patty (white)', 85, 90, 4, 1, 0, 0, 290, 3, 0, 1, 9, 0, 0, 0, 0),
(7, 'Grilled Chicken', 71, 80, 2, 2, 0, 50, 210, 1, 0, 1, 16, 2, 4, 0, 2),
(8, 'Grilled Chicken Buffalo', 99, 90, 2, 1, 0, 50, 900, 2, 0, 1, 17, 15, 4, 0, 4),
(9, 'Grilled Chicken, Teriyaki Glazed', 85, 100, 2, 1, 0, 50, 400, 5, 0, 2, 16, 2, 4, 0, 2),
(10, 'Italian B.M.T. Meats', 64, 180, 14, 5, 0, 50, 800, 3, 0, 1, 11, 0, 8, 2, 4),
(11, 'Meatballs', 139, 230, 15, 6, 1, 40, 700, 13, 3, 5, 12, 10, 10, 4, 10),
(12, 'Oven Roasted Turkey', 57, 60, 1, 1, 0, 25, 480, 0, 0, 0, 11, 0, 0, 0, 10),
(13, 'Pastrami', 57, 130, 11, 3, 0, 35, 470, 1, 0, 1, 9, 2, 0, 0, 8),
(14, 'Pepperoni (3 slices)', 18, 80, 7, 3, 0, 20, 290, 1, 0, 0, 3, 0, 4, 0, 2),
(15, 'Roast Beed', 71, 90, 3, 1, 0, 40, 420, 2, 0, 2, 14, 0, 0, 0, 8),
(16, 'Rotisserie Style Chicken', 71, 90, 4, 1, 0, 50, 400, 0, 0, 0, 15, 0, 0, 0, 2),
(17, 'Spicy Italian Meats', 59, 250, 22, 8, 0, 60, 930, 2, 0, 0, 11, 0, 15, 2, 6),
(18, 'Steak (no cheese)', 71, 110, 5, 2, 0, 55, 450, 2, 0, 1, 17, 0, 0, 0, 6),
(19, 'Subway Club Meats', 78, 90, 3, 3, 0, 40, 560, 3, 0, 1, 15, 0, 0, 0, 6),
(20, 'Tuna', 74, 250, 23, 2, 0, 40, 310, 0, 0, 0, 12, 0, 0, 0, 2),
(21, 'Veggie Patty', 85, 170, 9, 1, 0, 0, 320, 17, 8, 2, 6, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mysauces`
--

CREATE TABLE `mysauces` (
  `sauce_id` int NOT NULL,
  `SaucesName` varchar(255) NOT NULL,
  `servingSize` float DEFAULT NULL,
  `calories` float DEFAULT NULL,
  `fatsTotal` float DEFAULT NULL,
  `fatsSat` float DEFAULT NULL,
  `fatsTrans` float DEFAULT NULL,
  `chol` float DEFAULT NULL,
  `sodium` float DEFAULT NULL,
  `carbs` float DEFAULT NULL,
  `fiber` float DEFAULT NULL,
  `sugar` float DEFAULT NULL,
  `proteins` float DEFAULT NULL,
  `vitaminA` float DEFAULT NULL,
  `vitaminC` float DEFAULT NULL,
  `dvCalc` float DEFAULT NULL,
  `dvIron` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `mysauces`
--

INSERT INTO `mysauces` (`sauce_id`, `SaucesName`, `servingSize`, `calories`, `fatsTotal`, `fatsSat`, `fatsTrans`, `chol`, `sodium`, `carbs`, `fiber`, `sugar`, `proteins`, `vitaminA`, `vitaminC`, `dvCalc`, `dvIron`) VALUES
(1, 'Baja Chipolte Southwest Sauce', 14, 70, 7, 1, 0, 5, 125, 1, 0, 1, 0, 0, 0, 0, 0),
(2, 'Barbecue Sauce', 14, 25, 0, 0, 0, 0, 115, 6, 0, 5, 0, 0, 0, 0, 0),
(3, 'Franks Red Hot Buffalo Sauce', 14, 5, 0, 0, 0, 0, 350, 1, 0, 0, 0, 6, 0, 0, 0),
(4, 'Ceasar', 14, 80, 9, 2, 0, 5, 130, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'Creamy Sriracha', 14, 40, 4, 1, 0, 5, 240, 2, 0, 1, 0, 4, 2, 0, 0),
(6, 'Giardiniera', 28, 80, 9, 2, 0, 0, 340, 1, 0, 1, 0, 0, 0, 0, 0),
(7, 'Honey Mustard', 14, 20, 0, 0, 0, 0, 80, 4, 0, 4, 0, 0, 0, 0, 0),
(8, 'Hot Pepper Relish', 14, 0, 0, 0, 0, 0, 170, 1, 0, 0, 0, 0, 15, 0, 0),
(9, 'Lite Mayonnaise', 14, 50, 5, 1, 0, 5, 90, 1, 0, 0, 0, 0, 0, 0, 0),
(10, 'Mayonnaise', 14, 100, 11, 2, 0, 10, 65, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 'Mustard Yellow', 14, 10, 1, 0, 0, 0, 170, 1, 0, 0, 1, 0, 0, 0, 0),
(12, 'MVP Parmesean Vinaigrette', 17, 70, 8, 1, 0, 0, 180, 1, 0, 1, 0, 0, 0, 0, 0),
(13, 'Oil', 5, 45, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 'Oil & Vinegar', 9, 45, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 'Peppercorn Ranch Sauce', 14, 80, 8, 2, 0, 5, 100, 1, 0, 1, 0, 0, 0, 0, 0),
(16, 'Red Wine Vinegar', 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 'Sweet Onion Teriyaki Sauce', 18, 35, 0, 0, 0, 0, 160, 8, 0, 9, 7, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `myseasoning`
--

CREATE TABLE `myseasoning` (
  `seasoning_id` int NOT NULL,
  `SeasoningName` varchar(255) NOT NULL,
  `servingSize` float DEFAULT NULL,
  `calories` float DEFAULT NULL,
  `fatsTotal` float DEFAULT NULL,
  `fatsSat` float DEFAULT NULL,
  `fatsTrans` float DEFAULT NULL,
  `chol` float DEFAULT NULL,
  `sodium` float DEFAULT NULL,
  `carbs` float DEFAULT NULL,
  `fiber` float DEFAULT NULL,
  `sugar` float DEFAULT NULL,
  `proteins` float DEFAULT NULL,
  `vitaminA` float DEFAULT NULL,
  `vitaminC` float DEFAULT NULL,
  `dvCalc` float DEFAULT NULL,
  `dvIron` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `myseasoning`
--

INSERT INTO `myseasoning` (`seasoning_id`, `SeasoningName`, `servingSize`, `calories`, `fatsTotal`, `fatsSat`, `fatsTrans`, `chol`, `sodium`, `carbs`, `fiber`, `sugar`, `proteins`, `vitaminA`, `vitaminC`, `dvCalc`, `dvIron`) VALUES
(1, 'Pepper, Black', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'Oregano', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'Salt', 0, 0, 0, 0, 0, 0, 160, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `options_sandwich_bread`
--

CREATE TABLE `options_sandwich_bread` (
  `options_id` int NOT NULL,
  `sandwich_id` int NOT NULL,
  `bread_id` int NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `selection` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `options_sandwich_bread`
--

INSERT INTO `options_sandwich_bread` (`options_id`, `sandwich_id`, `bread_id`, `last_updated`, `selection`) VALUES
(1, 1, 1, '2022-12-07 21:54:19', 0),
(2, 1, 3, '2022-12-07 21:54:19', 0),
(3, 1, 2, '2022-12-07 22:50:25', 0),
(4, 1, 4, '2022-12-07 22:50:25', 0),
(5, 2, 1, '2022-12-07 22:59:59', 0),
(6, 2, 2, '2022-12-07 22:59:59', 0),
(7, 2, 3, '2022-12-07 22:59:59', 0),
(8, 2, 4, '2022-12-07 22:59:59', 0),
(9, 3, 1, '2022-12-08 00:04:14', 0),
(10, 3, 2, '2022-12-08 00:04:14', 0),
(11, 3, 3, '2022-12-08 00:04:14', 0),
(12, 3, 4, '2022-12-08 00:04:14', 0),
(13, 3, 5, '2022-12-08 00:04:14', 0),
(14, 1, 5, '2022-12-08 05:33:44', 0);

-- --------------------------------------------------------

--
-- Table structure for table `options_sandwich_cheese`
--

CREATE TABLE `options_sandwich_cheese` (
  `options_id` int NOT NULL,
  `sandwich_id` int NOT NULL,
  `cheese_id` int NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `selection` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `options_sandwich_cheese`
--

INSERT INTO `options_sandwich_cheese` (`options_id`, `sandwich_id`, `cheese_id`, `last_updated`, `selection`) VALUES
(1, 1, 1, '2022-12-08 00:27:16', 0),
(2, 1, 6, '2022-12-08 00:27:16', 0),
(3, 1, 7, '2022-12-08 00:27:16', 0),
(4, 1, 3, '2022-12-08 00:27:16', 0),
(5, 1, 8, '2022-12-08 00:27:16', 0),
(6, 2, 1, '2022-12-08 03:50:25', 0),
(7, 2, 6, '2022-12-08 03:50:25', 0),
(8, 2, 7, '2022-12-08 03:50:25', 0),
(9, 2, 3, '2022-12-08 03:50:25', 0),
(10, 2, 5, '2022-12-08 03:50:25', 0),
(11, 3, 1, '2022-12-08 03:52:05', 0),
(12, 3, 6, '2022-12-08 03:52:05', 0),
(13, 3, 7, '2022-12-08 03:52:05', 0),
(14, 3, 3, '2022-12-08 03:52:05', 0),
(15, 3, 2, '2022-12-08 03:52:05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `options_sandwich_herb`
--

CREATE TABLE `options_sandwich_herb` (
  `options_id` int NOT NULL,
  `sandwich_id` int NOT NULL,
  `herb_id` int NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `selection` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `options_sandwich_herb`
--

INSERT INTO `options_sandwich_herb` (`options_id`, `sandwich_id`, `herb_id`, `last_updated`, `selection`) VALUES
(1, 1, 8, '2022-12-08 04:21:33', 0),
(2, 1, 12, '2022-12-08 04:21:33', 0),
(3, 1, 14, '2022-12-08 04:21:33', 0),
(4, 1, 4, '2022-12-08 04:21:33', 0),
(5, 1, 11, '2022-12-08 04:21:33', 0),
(6, 1, 6, '2022-12-08 04:21:33', 0),
(7, 1, 3, '2022-12-08 04:21:33', 0),
(8, 1, 9, '2022-12-08 04:21:33', 0),
(9, 1, 10, '2022-12-08 04:21:33', 0),
(10, 1, 7, '2022-12-08 04:21:33', 0),
(11, 2, 8, '2022-12-08 05:08:08', 0),
(12, 2, 12, '2022-12-08 05:08:08', 0),
(13, 2, 14, '2022-12-08 05:08:08', 0),
(14, 2, 4, '2022-12-08 05:08:08', 0),
(15, 2, 11, '2022-12-08 05:08:08', 0),
(16, 2, 6, '2022-12-08 05:08:08', 0),
(17, 2, 3, '2022-12-08 05:08:08', 0),
(18, 2, 9, '2022-12-08 05:08:08', 0),
(19, 2, 10, '2022-12-08 05:08:08', 0),
(20, 2, 7, '2022-12-08 05:08:08', 0),
(21, 3, 8, '2022-12-08 05:09:06', 0),
(22, 3, 12, '2022-12-08 05:09:06', 0),
(23, 3, 14, '2022-12-08 05:09:06', 0),
(24, 3, 4, '2022-12-08 05:09:06', 0),
(25, 3, 11, '2022-12-08 05:09:06', 0),
(26, 3, 6, '2022-12-08 05:09:06', 0),
(27, 3, 3, '2022-12-08 05:09:06', 0),
(28, 3, 9, '2022-12-08 05:09:06', 0),
(29, 3, 10, '2022-12-08 05:09:06', 0),
(30, 3, 7, '2022-12-08 05:09:06', 0);

-- --------------------------------------------------------

--
-- Table structure for table `options_sandwich_protein`
--

CREATE TABLE `options_sandwich_protein` (
  `options_id` int NOT NULL,
  `sandwich_id` int NOT NULL,
  `protein_id` int NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `selection` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `options_sandwich_protein`
--

INSERT INTO `options_sandwich_protein` (`options_id`, `sandwich_id`, `protein_id`, `last_updated`, `selection`) VALUES
(1, 1, 1, '2022-12-08 04:08:56', 0),
(2, 1, 3, '2022-12-08 04:08:56', 0),
(3, 1, 7, '2022-12-08 04:08:56', 0),
(4, 1, 8, '2022-12-08 04:08:56', 0),
(5, 1, 9, '2022-12-08 04:08:56', 0),
(6, 1, 16, '2022-12-08 04:08:56', 0),
(7, 2, 11, '2022-12-08 04:11:13', 0),
(8, 3, 21, '2022-12-08 04:17:13', 0),
(9, 3, 5, '2022-12-08 04:17:13', 0),
(10, 3, 6, '2022-12-08 04:17:13', 0);

-- --------------------------------------------------------

--
-- Table structure for table `options_sandwich_sauce`
--

CREATE TABLE `options_sandwich_sauce` (
  `options_id` int NOT NULL,
  `sandwich_id` int NOT NULL,
  `sauce_id` int NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `selection` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `options_sandwich_sauce`
--

INSERT INTO `options_sandwich_sauce` (`options_id`, `sandwich_id`, `sauce_id`, `last_updated`, `selection`) VALUES
(1, 1, 13, '2022-12-08 05:24:10', 0),
(2, 1, 10, '2022-12-08 05:24:10', 0),
(3, 1, 16, '2022-12-08 05:24:10', 0),
(4, 1, 9, '2022-12-08 05:24:10', 0),
(5, 1, 11, '2022-12-08 05:24:10', 0),
(6, 1, 7, '2022-12-08 05:24:10', 0),
(7, 1, 3, '2022-12-08 05:24:10', 0),
(8, 1, 17, '2022-12-08 05:24:10', 0),
(9, 1, 15, '2022-12-08 05:24:10', 0),
(10, 1, 1, '2022-12-08 05:24:10', 0),
(11, 1, 12, '2022-12-08 05:24:10', 0),
(12, 2, 13, '2022-12-08 05:26:08', 0),
(13, 2, 10, '2022-12-08 05:26:08', 0),
(14, 2, 16, '2022-12-08 05:26:08', 0),
(15, 2, 9, '2022-12-08 05:26:08', 0),
(16, 2, 11, '2022-12-08 05:26:08', 0),
(17, 2, 7, '2022-12-08 05:26:08', 0),
(18, 2, 3, '2022-12-08 05:26:08', 0),
(19, 2, 17, '2022-12-08 05:26:08', 0),
(20, 2, 15, '2022-12-08 05:26:08', 0),
(21, 2, 1, '2022-12-08 05:26:08', 0),
(22, 2, 12, '2022-12-08 05:26:08', 0),
(23, 3, 13, '2022-12-08 05:28:20', 0),
(24, 3, 10, '2022-12-08 05:28:20', 0),
(25, 3, 16, '2022-12-08 05:28:20', 0),
(26, 3, 9, '2022-12-08 05:28:20', 0),
(27, 3, 11, '2022-12-08 05:28:20', 0),
(28, 3, 7, '2022-12-08 05:28:20', 0),
(29, 3, 3, '2022-12-08 05:28:20', 0),
(30, 3, 17, '2022-12-08 05:28:20', 0),
(31, 3, 15, '2022-12-08 05:28:20', 0),
(32, 3, 1, '2022-12-08 05:28:20', 0),
(33, 3, 12, '2022-12-08 05:28:20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `options_sandwich_seasoning`
--

CREATE TABLE `options_sandwich_seasoning` (
  `options_id` int NOT NULL,
  `sandwich_id` int NOT NULL,
  `seasoning_id` int NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `selection` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `options_sandwich_seasoning`
--

INSERT INTO `options_sandwich_seasoning` (`options_id`, `sandwich_id`, `seasoning_id`, `last_updated`, `selection`) VALUES
(1, 1, 1, '2022-12-08 05:30:59', 0),
(2, 1, 2, '2022-12-08 05:30:59', 0),
(3, 1, 3, '2022-12-08 05:30:59', 0),
(4, 2, 1, '2022-12-08 05:30:59', 0),
(5, 2, 2, '2022-12-08 05:30:59', 0),
(6, 2, 3, '2022-12-08 05:30:59', 0),
(7, 3, 1, '2022-12-08 05:30:59', 0),
(8, 3, 2, '2022-12-08 05:30:59', 0),
(9, 3, 3, '2022-12-08 05:30:59', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sandwiches`
--

CREATE TABLE `sandwiches` (
  `sandwich_id` int NOT NULL,
  `sandwich_name` varchar(255) NOT NULL,
  `last_updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `selection` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sandwiches`
--

INSERT INTO `sandwiches` (`sandwich_id`, `sandwich_name`, `last_updated`, `selection`) VALUES
(1, 'Chicken Bacon Ranch', '2022-12-07 21:45:11', 0),
(2, 'Meatball Marinara Sub', '2022-12-08 04:01:55', 0),
(3, 'Veggie Delite', '2022-12-08 04:01:55', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mybread`
--
ALTER TABLE `mybread`
  ADD PRIMARY KEY (`bread_id`);

--
-- Indexes for table `mycheese`
--
ALTER TABLE `mycheese`
  ADD PRIMARY KEY (`cheese_id`);

--
-- Indexes for table `myherbs`
--
ALTER TABLE `myherbs`
  ADD PRIMARY KEY (`herb_id`);

--
-- Indexes for table `myprotein`
--
ALTER TABLE `myprotein`
  ADD PRIMARY KEY (`protein_id`);

--
-- Indexes for table `mysauces`
--
ALTER TABLE `mysauces`
  ADD PRIMARY KEY (`sauce_id`);

--
-- Indexes for table `myseasoning`
--
ALTER TABLE `myseasoning`
  ADD PRIMARY KEY (`seasoning_id`);

--
-- Indexes for table `options_sandwich_bread`
--
ALTER TABLE `options_sandwich_bread`
  ADD PRIMARY KEY (`options_id`),
  ADD KEY `sandwich_id` (`sandwich_id`),
  ADD KEY `bread_id` (`bread_id`);

--
-- Indexes for table `options_sandwich_cheese`
--
ALTER TABLE `options_sandwich_cheese`
  ADD PRIMARY KEY (`options_id`),
  ADD KEY `cheese_id` (`cheese_id`,`sandwich_id`),
  ADD KEY `sandwich_id` (`sandwich_id`);

--
-- Indexes for table `options_sandwich_herb`
--
ALTER TABLE `options_sandwich_herb`
  ADD PRIMARY KEY (`options_id`),
  ADD KEY `herb_id` (`herb_id`,`sandwich_id`),
  ADD KEY `sandwich_id` (`sandwich_id`);

--
-- Indexes for table `options_sandwich_protein`
--
ALTER TABLE `options_sandwich_protein`
  ADD PRIMARY KEY (`options_id`),
  ADD KEY `sandwich_id` (`sandwich_id`),
  ADD KEY `protein_id` (`protein_id`);

--
-- Indexes for table `options_sandwich_sauce`
--
ALTER TABLE `options_sandwich_sauce`
  ADD PRIMARY KEY (`options_id`),
  ADD KEY `sandwich_id` (`sandwich_id`,`sauce_id`),
  ADD KEY `sauce_id` (`sauce_id`);

--
-- Indexes for table `options_sandwich_seasoning`
--
ALTER TABLE `options_sandwich_seasoning`
  ADD PRIMARY KEY (`options_id`),
  ADD KEY `seasoning_id` (`seasoning_id`,`sandwich_id`),
  ADD KEY `sandwich_id` (`sandwich_id`);

--
-- Indexes for table `sandwiches`
--
ALTER TABLE `sandwiches`
  ADD PRIMARY KEY (`sandwich_id`),
  ADD UNIQUE KEY `sandwich_id` (`sandwich_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mycheese`
--
ALTER TABLE `mycheese`
  MODIFY `cheese_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `myherbs`
--
ALTER TABLE `myherbs`
  MODIFY `herb_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `myprotein`
--
ALTER TABLE `myprotein`
  MODIFY `protein_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `mysauces`
--
ALTER TABLE `mysauces`
  MODIFY `sauce_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `myseasoning`
--
ALTER TABLE `myseasoning`
  MODIFY `seasoning_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `options_sandwich_bread`
--
ALTER TABLE `options_sandwich_bread`
  MODIFY `options_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `options_sandwich_cheese`
--
ALTER TABLE `options_sandwich_cheese`
  MODIFY `options_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `options_sandwich_herb`
--
ALTER TABLE `options_sandwich_herb`
  MODIFY `options_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `options_sandwich_protein`
--
ALTER TABLE `options_sandwich_protein`
  MODIFY `options_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `options_sandwich_sauce`
--
ALTER TABLE `options_sandwich_sauce`
  MODIFY `options_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `options_sandwich_seasoning`
--
ALTER TABLE `options_sandwich_seasoning`
  MODIFY `options_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `options_sandwich_bread`
--
ALTER TABLE `options_sandwich_bread`
  ADD CONSTRAINT `options_sandwich_bread_ibfk_1` FOREIGN KEY (`sandwich_id`) REFERENCES `sandwiches` (`sandwich_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `options_sandwich_bread_ibfk_2` FOREIGN KEY (`bread_id`) REFERENCES `mybread` (`bread_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `options_sandwich_cheese`
--
ALTER TABLE `options_sandwich_cheese`
  ADD CONSTRAINT `options_sandwich_cheese_ibfk_1` FOREIGN KEY (`sandwich_id`) REFERENCES `sandwiches` (`sandwich_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `options_sandwich_cheese_ibfk_2` FOREIGN KEY (`cheese_id`) REFERENCES `mycheese` (`cheese_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `options_sandwich_herb`
--
ALTER TABLE `options_sandwich_herb`
  ADD CONSTRAINT `options_sandwich_herb_ibfk_1` FOREIGN KEY (`sandwich_id`) REFERENCES `sandwiches` (`sandwich_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `options_sandwich_herb_ibfk_2` FOREIGN KEY (`herb_id`) REFERENCES `myherbs` (`herb_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `options_sandwich_protein`
--
ALTER TABLE `options_sandwich_protein`
  ADD CONSTRAINT `options_sandwich_protein_ibfk_1` FOREIGN KEY (`sandwich_id`) REFERENCES `sandwiches` (`sandwich_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `options_sandwich_protein_ibfk_2` FOREIGN KEY (`protein_id`) REFERENCES `myprotein` (`protein_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `options_sandwich_sauce`
--
ALTER TABLE `options_sandwich_sauce`
  ADD CONSTRAINT `options_sandwich_sauce_ibfk_1` FOREIGN KEY (`sandwich_id`) REFERENCES `sandwiches` (`sandwich_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `options_sandwich_sauce_ibfk_2` FOREIGN KEY (`sauce_id`) REFERENCES `mysauces` (`sauce_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `options_sandwich_seasoning`
--
ALTER TABLE `options_sandwich_seasoning`
  ADD CONSTRAINT `options_sandwich_seasoning_ibfk_1` FOREIGN KEY (`sandwich_id`) REFERENCES `sandwiches` (`sandwich_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `options_sandwich_seasoning_ibfk_2` FOREIGN KEY (`seasoning_id`) REFERENCES `myseasoning` (`seasoning_id`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
