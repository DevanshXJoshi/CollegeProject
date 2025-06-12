-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2025 at 07:37 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ticketing_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(100) NOT NULL,
  `destination_id` int(50) NOT NULL,
  `booking_date` varchar(30) NOT NULL,
  `journey_date` varchar(30) NOT NULL,
  `train_id` int(30) NOT NULL,
  `seat_numbers` varchar(150) NOT NULL,
  `passenger_id` int(50) NOT NULL,
  `number_of_seat` int(5) NOT NULL,
  `payment_status` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `note` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `destination_id`, `booking_date`, `journey_date`, `train_id`, `seat_numbers`, `passenger_id`, `number_of_seat`, `payment_status`, `status`, `note`) VALUES
(1, 11, '06-10-2018', '06-10-2018', 7, '1,2', 12, 2, 'pending', 'success', 'note'),
(4, 11, '06-10-2018', '06-10-2018', 7, '3,4', 12, 2, 'pending', 'success', 'note'),
(5, 16, '06-10-2018', '06-10-2018', 2, '41,42,43', 12, 3, 'pending', 'success', 'note'),
(6, 13, '06-10-2018', '06-10-2018', 7, '57,58,59,60', 12, 4, 'pending', 'success', 'note'),
(7, 15, '06-10-2018', '06-10-2018', 2, '21,22,23,24', 12, 4, 'pending', 'success', 'note'),
(8, 14, '06-10-2018', '06-10-2018', 2, '1', 12, 1, 'pending', 'success', 'note'),
(9, 14, '06-10-2018', '06-10-2018', 2, '2', 12, 1, 'pending', 'success', 'note'),
(10, 14, '06-10-2018', '06-10-2018', 2, '2', 12, 1, 'pending', 'success', 'note'),
(11, 14, '06-10-2018', '06-10-2018', 2, '2', 12, 1, 'pending', 'success', 'note'),
(12, 14, '06-10-2018', '06-10-2018', 2, '2', 12, 1, 'pending', 'success', 'note'),
(13, 12, '06-10-2018', '06-10-2018', 7, '6,7', 12, 2, 'pending', 'success', 'note'),
(14, 12, '06-10-2018', '06-10-2018', 7, '8,9,10', 12, 3, 'pending', 'success', 'note'),
(15, 12, '06-10-2018', '06-10-2018', 7, '8,9,10', 12, 3, 'pending', 'success', 'note'),
(16, 12, '06-10-2018', '06-10-2018', 7, '8,9,10', 12, 3, 'pending', 'success', 'note'),
(17, 16, '08-10-2018', '08-10-2018', 2, '41,42,43', 12, 3, 'pending', 'success', 'note'),
(18, 16, '10-10-2018', '10-10-2018', 2, '41,42,43', 12, 3, 'pending', 'success', 'note'),
(19, 15, '11-10-2018', '11-10-2018', 2, '21,22', 12, 2, 'pending', 'success', 'note'),
(20, 14, '11-10-2018', '11-10-2018', 2, '1', 12, 1, 'pending', 'success', 'note'),
(21, 27, '16-10-2018', '16-10-2018', 10, '1,2', 12, 2, 'pending', 'success', 'note'),
(22, 27, '11-10-2018', '11-10-2018', 10, '1', 12, 1, 'pending', 'success', 'note'),
(23, 27, '11-10-2018', '11-10-2018', 10, '2', 12, 1, 'pending', 'success', 'note'),
(24, 30, '11-10-2018', '11-10-2018', 8, '9', 12, 1, 'pending', 'success', 'note'),
(25, 15, '28-12-2024', '28-12-2024', 2, '21,22,23,24', 10, 4, 'pending', 'success', 'note'),
(26, 27, '28-12-2024', '28-12-2024', 10, '1', 10, 1, 'pending', 'success', 'note'),
(27, 34, '28-12-2024', '28-12-2024', 2, '60,61,62,63', 12, 4, 'pending', 'success', 'note'),
(28, 34, '28-12-2024', '28-12-2024', 2, '64,65,66', 12, 3, 'pending', 'success', 'note'),
(29, 34, '28-12-2024', '28-12-2024', 2, '64,65,66', 12, 3, 'pending', 'success', 'note'),
(30, 34, '28-12-2024', '28-12-2024', 2, '64,65,66', 12, 3, 'pending', 'success', 'note'),
(31, 34, '28-12-2024', '28-12-2024', 2, '64,65,66,67', 12, 4, 'pending', 'success', 'note'),
(32, 34, '28-12-2024', '28-12-2024', 2, '64,65', 12, 2, 'pending', 'success', 'note'),
(33, 14, '28-12-2024', '28-12-2024', 2, '1', 8, 1, 'pending', 'success', 'note'),
(34, 14, '28-12-2024', '28-12-2024', 2, '2', 8, 1, 'pending', 'success', 'note'),
(35, 23, '28-12-2024', '28-12-2024', 9, '21', 8, 1, 'pending', 'success', 'note'),
(36, 40, '28-12-2024', '28-12-2024', 2, '20', 8, 1, 'pending', 'success', 'note'),
(37, 41, '28-12-2024', '28-12-2024', 2, '40', 8, 1, 'pending', 'success', 'note'),
(38, 42, '28-12-2024', '28-12-2024', 2, '71', 8, 1, 'pending', 'success', 'note'),
(39, 43, '28-12-2024', '28-12-2024', 2, '120', 8, 1, 'pending', 'success', 'note'),
(40, 44, '28-12-2024', '28-12-2024', 2, '150', 8, 1, 'pending', 'success', 'note'),
(41, 36, '31-12-2025', '31-12-2025', 2, '101', 14, 1, 'pending', 'success', 'note'),
(42, 32, '04-01-2025', '04-01-2025', 3, '51', 8, 1, 'pending', 'success', 'note'),
(43, 46, '04-01-2025', '04-01-2025', 2, '11', 8, 1, 'pending', 'success', 'note'),
(44, 53, '04-01-2025', '04-01-2025', 2, '21', 8, 1, 'pending', 'success', 'note'),
(45, 32, '05-01-2025', '05-01-2025', 3, '51', 8, 1, 'pending', 'success', 'note'),
(46, 32, '05-01-2025', '05-01-2025', 3, '52', 8, 1, 'pending', 'success', 'note'),
(47, 32, '05-01-2025', '05-01-2025', 3, '52', 8, 1, 'pending', 'success', 'note'),
(48, 32, '05-01-2025', '05-01-2025', 3, '52', 8, 1, 'pending', 'success', 'note'),
(49, 32, '05-01-2025', '05-01-2025', 3, '52', 8, 1, 'pending', 'success', 'note'),
(50, 14, '05-01-2025', '05-01-2025', 2, '1', 8, 1, 'pending', 'success', 'note'),
(51, 36, '05-01-2025', '05-01-2025', 2, '101', 8, 1, 'pending', 'success', 'note'),
(52, 36, '05-01-2025', '05-01-2025', 2, '102', 8, 1, 'pending', 'success', 'note'),
(53, 54, '12-01-2025', '12-01-2025', 12, '0', 8, 1, 'pending', 'success', 'note'),
(54, 53, '05-02-2025', '05-02-2025', 2, '21', 8, 1, 'pending', 'success', 'note'),
(55, 44, '05-02-2025', '05-02-2025', 2, '150', 8, 1, 'pending', 'success', 'note'),
(56, 44, '05-02-2025', '05-02-2025', 2, '151', 8, 1, 'pending', 'success', 'note'),
(57, 44, '06-02-2025', '06-02-2025', 2, '150', 8, 1, 'pending', 'success', 'note'),
(58, 32, '06-02-2025', '06-02-2025', 3, '51', 8, 1, 'pending', 'success', 'note'),
(59, 58, '06-02-2025', '06-02-2025', 13, '0', 8, 1, 'pending', 'success', 'note'),
(60, 59, '07-02-2025', '07-02-2025', 4, '0', 8, 1, 'pending', 'success', 'note'),
(61, 59, '07-02-2025', '07-02-2025', 4, '1', 8, 1, 'pending', 'success', 'note'),
(62, 42, '07-02-2025', '07-02-2025', 2, '71', 8, 1, 'pending', 'success', 'note'),
(63, 59, '11-02-2025', '11-02-2025', 4, '0', 15, 1, 'pending', 'success', 'note'),
(64, 46, '07-02-2025', '07-02-2025', 2, '11', 15, 1, 'pending', 'success', 'note'),
(65, 59, '07-02-2025', '07-02-2025', 4, '1', 15, 1, 'pending', 'success', 'note'),
(66, 32, '07-02-2025', '07-02-2025', 3, '51', 15, 1, 'pending', 'success', 'note'),
(67, 36, '07-02-2025', '07-02-2025', 2, '101', 15, 1, 'pending', 'success', 'note'),
(68, 60, '07-02-2025', '07-02-2025', 9, '0', 8, 1, 'pending', 'success', 'note'),
(69, 60, '07-02-2025', '07-02-2025', 9, '1', 8, 1, 'pending', 'success', 'note'),
(70, 60, '07-02-2025', '07-02-2025', 9, '1', 8, 1, 'pending', 'success', 'note'),
(71, 60, '07-02-2025', '07-02-2025', 9, '1', 15, 1, 'pending', 'success', 'note'),
(72, 61, '07-02-2025', '07-02-2025', 16, '0', 15, 1, 'pending', 'success', 'note'),
(73, 62, '07-02-2025', '07-02-2025', 16, '21', 15, 1, 'pending', 'success', 'note'),
(74, 15, '10-02-2025', '10-02-2025', 2, '21', 15, 1, 'pending', 'success', 'note'),
(75, 63, '09-02-2025', '09-02-2025', 2, '0', 15, 1, 'pending', 'success', 'note'),
(76, 61, '09-02-2025', '09-02-2025', 16, '0', 15, 1, 'pending', 'success', 'note'),
(77, 32, '13-02-2025', '13-02-2025', 3, '51,52', 17, 2, 'pending', 'success', 'note'),
(78, 60, '17-02-2025', '17-02-2025', 9, '0', 15, 1, 'pending', 'success', 'note'),
(79, 60, '20-02-2025', '20-02-2025', 9, '0', 15, 1, 'pending', 'success', 'note'),
(80, 60, '02-03-2025', '02-03-2025', 9, '0', 15, 1, 'pending', 'success', 'note'),
(81, 65, '02-03-2025', '02-03-2025', 2, '0,1', 15, 2, 'pending', 'success', 'note'),
(82, 60, '02-03-2025', '02-03-2025', 9, '1', 18, 1, 'pending', 'success', 'note'),
(83, 14, '02-03-2025', '02-03-2025', 2, '1', 15, 1, 'pending', 'success', 'note');

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` int(100) NOT NULL,
  `station_from` int(20) NOT NULL,
  `station_to` int(20) NOT NULL,
  `train_id` int(20) NOT NULL,
  `time` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  `fare` varchar(5) NOT NULL,
  `last_activity` datetime NOT NULL,
  `last_modify_by` int(30) NOT NULL,
  `total_seat` int(5) NOT NULL,
  `seat_range` varchar(10) NOT NULL,
  `type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `station_from`, `station_to`, `train_id`, `time`, `status`, `fare`, `last_activity`, `last_modify_by`, `total_seat`, `seat_range`, `type`) VALUES
(11, 1, 2, 7, '40:30Am', 'active', '40', '2018-09-05 00:00:00', 0, 5, '1-5', 'up'),
(12, 1, 3, 7, '40:30Am', 'active', '240', '2018-09-05 00:00:00', 0, 50, '6-56', 'up'),
(13, 1, 4, 7, '40:30Am', 'active', '280', '2018-09-05 00:00:00', 0, 5, '57-61', 'up'),
(14, 1, 2, 2, '1:20AM', 'active', '40', '2018-09-05 00:00:00', 0, 20, '1-20', 'up'),
(15, 1, 3, 2, '1:20AM', 'active', '240', '2018-09-05 00:00:00', 0, 20, '21-40', 'up'),
(16, 1, 4, 2, '1:20AM', 'active', '280', '2018-09-05 00:00:00', 0, 10, '41-50', 'up'),
(17, 4, 1, 7, '2:50 AM', 'active', '240', '2018-09-05 00:00:00', 0, 20, '1-20', 'up'),
(18, 4, 3, 7, '2:50 AM', 'active', '40', '2018-09-05 00:00:00', 0, 50, '21-50', 'up'),
(23, 6, 4, 9, '10:5AM', 'active', '480', '2018-09-05 00:00:00', 0, 30, '21-50', 'up'),
(25, 6, 2, 9, '10:5AM', 'active', '350', '2018-09-05 00:00:00', 0, 20, '21-50', 'up'),
(27, 7, 1, 10, '10:5AM', 'active', '480', '2018-09-05 00:00:00', 0, 3, '1-3', 'up'),
(28, 7, 3, 10, '10:5AM', 'active', '350', '2018-09-05 00:00:00', 0, 4, '4-8', 'up'),
(29, 7, 4, 10, '10:5AM', 'active', '900', '2018-09-05 00:00:00', 0, 2, '9-10', 'up'),
(30, 7, 1, 8, '6AM', 'active', '480', '2018-09-05 00:00:00', 0, 2, '9-10', 'up'),
(31, 1, 1, 3, '11:00 AM', 'active', '200', '2024-12-15 00:00:00', 0, 50, '1-50', 'up'),
(32, 1, 2, 3, '9:00 AM', 'active', '150', '2024-12-15 00:00:00', 0, 10, '51-60', 'up'),
(33, 7, 1, 2, '11:00 AM', 'active', '100', '2024-12-15 00:00:00', 0, 5, '1-5', 'up'),
(34, 6, 3, 2, '1:00 PM', 'active', '100', '2024-12-15 00:00:00', 0, 20, '60-80', 'up'),
(35, 2, 4, 2, '8:00 AM', 'active', '120', '2024-12-15 00:00:00', 0, 30, '70-100', 'up'),
(36, 2, 3, 2, '10:00 AM', 'active', '100', '2024-12-15 00:00:00', 0, 20, '101-120', 'up'),
(37, 2, 6, 2, '5:00 AM', 'active', '80', '2024-12-15 00:00:00', 0, 20, '130-150', 'up'),
(38, 2, 1, 2, '4:00 PM', 'active', '50', '2024-12-15 00:00:00', 0, 10, '1-20', 'up'),
(39, 2, 7, 2, '7:00 PM', 'active', '50', '2024-12-15 00:00:00', 0, 40, '40-80', 'up'),
(40, 3, 2, 2, '1:00 PM', 'active', '100', '2024-12-15 00:00:00', 0, 20, '20-40', 'up'),
(41, 3, 4, 2, '8:00 AM', 'active', '80', '2024-12-15 00:00:00', 0, 30, '40-70', 'up'),
(42, 3, 6, 2, '6:00 AM', 'active', '150', '2024-12-15 00:00:00', 0, 40, '71-101', 'up'),
(43, 3, 1, 2, '8:00 PM', 'active', '120', '2024-12-15 00:00:00', 0, 20, '120-140', 'up'),
(44, 3, 7, 2, '3:00 PM', 'active', '100', '2024-12-15 00:00:00', 0, 10, '150-160', 'up'),
(45, 7, 2, 9, '1:00 PM', 'active', '80', '2024-12-15 00:00:00', 0, 50, '1-50', 'up'),
(46, 8, 2, 2, '9:00 AM', 'active', '10', '2024-12-15 00:00:00', 0, 10, '11-20', 'up'),
(47, 14, 4, 2, '11:00 AM', 'active', '80', '2024-12-15 00:00:00', 0, 100, '0-100', 'up'),
(48, 13, 7, 2, '8:00 AM', 'active', '60', '2024-12-15 00:00:00', 0, 20, '0-20', 'up'),
(49, 48, 11, 8, '7:00 AM', 'active', '10', '2024-12-15 00:00:00', 0, 20, '11-30', 'up'),
(50, 45, 13, 2, '10:00 AM', 'active', '30', '2024-12-15 00:00:00', 0, 20, '1-20', 'up'),
(51, 54, 1, 2, '11:00 PM', 'active', '200', '2024-12-15 00:00:00', 0, 20, '1-20', 'up'),
(52, 13, 1, 12, '3:00 PM', 'active', '30', '2024-12-15 00:00:00', 0, 50, '50-100', 'up'),
(53, 13, 1, 2, '10:00 AM', 'active', '30', '2024-12-15 00:00:00', 0, 20, '21-40', 'up'),
(54, 2, 1, 12, '8;00 AM', 'active', '30', '2024-12-15 00:00:00', 0, 20, '0-20', 'up'),
(56, 10, 8, 8, '8:00 AM', 'active', '30', '2024-12-15 00:00:00', 0, 30, '0-30', 'up'),
(57, 10, 2, 8, '9:00 AM', 'active', '40', '2024-12-15 00:00:00', 0, 30, '31-60', 'up'),
(58, 72, 8, 13, '8:00 AM', 'active', '5', '2024-12-15 00:00:00', 0, 100, '0-100', 'up'),
(59, 73, 8, 4, '8:00 AM', 'active', '5', '2024-12-15 00:00:00', 0, 20, '0-20', 'up'),
(60, 8, 72, 9, '8:00 AM', 'active', '5', '2024-12-15 00:00:00', 0, 20, '0-20', 'up'),
(61, 74, 8, 16, '8:00 AM', 'active', '5', '2024-12-15 00:00:00', 0, 20, '0-20', 'up'),
(62, 74, 72, 16, '10:00 AM', 'active', '10', '2024-12-15 00:00:00', 0, 20, '21-40', 'up'),
(63, 74, 8, 2, '8:00 AM', 'active', '5', '2024-12-15 00:00:00', 0, 20, '0-20', 'up'),
(64, 75, 2, 2, '8:00 AM', 'active', '15', '2024-12-15 00:00:00', 0, 2, '0-2', 'up'),
(65, 76, 2, 2, '11:00 PM', 'active', '10', '2024-12-15 00:00:00', 0, 100, '0-100', 'up');

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `id` int(10) NOT NULL,
  `code` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `total_seat` int(5) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'intercity'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`id`, `code`, `name`, `total_seat`, `type`) VALUES
(2, 'AIC', 'Air India', 270, 'Business-Class '),
(3, 'AXB', 'Air India Express', 200, 'Economy-Class'),
(4, '6E-IGO', 'IndiGo', 200, 'Premium-Class'),
(8, 'AKJ', 'Akasa Air', 150, 'First-Class'),
(9, 'SG', 'SpiceJet', 80, 'First-Class'),
(10, 'G8-GOW', 'Go First Airline', 100, 'Economy-Class'),
(15, 'AIC-F', 'Air India', 200, 'First-Class'),
(16, 'IGO-F', 'IndiGo', 150, 'First-Class');

-- --------------------------------------------------------

--
-- Table structure for table `stations`
--

CREATE TABLE `stations` (
  `id` int(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(70) NOT NULL,
  `contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `stations`
--

INSERT INTO `stations` (`id`, `name`, `address`, `contact`) VALUES
(1, 'Mumbai', 'Mumbai, India', '0281'),
(2, 'Ahmedabad', 'Ahmedabad, India', '0282'),
(3, 'Delhi', 'Delhi, India', '0285'),
(4, 'Bengaluru', 'Bengaluru, India', '0267'),
(6, 'Hyderabad', 'Hyderabad, India', '0235'),
(7, 'Pune', 'Pune, India', '0345'),
(8, 'Rajkot', 'Rajkot, India', '0286'),
(9, 'Surat', 'Surat, India', '0453'),
(10, 'Chennai', 'Chennai, India', '0687'),
(11, 'Bhopal', 'Bhopal, India', '0459'),
(13, 'Agra', 'Agra, India', '0135'),
(15, 'Amritsar', 'Amritsar, India', '0987'),
(16, 'Ayodhya', 'Ayodhya, India', '0675'),
(17, 'Bareilly', 'Bareilly, India', '0342'),
(18, 'Chandigarh', 'Chandigarh, India', '0546'),
(19, 'Coimbatore', 'Coimbatore, India', '0784'),
(20, 'Dehradun', 'Dehradun, India', '0236'),
(21, 'Dharamshala', 'Dharamshala, India', '0794'),
(22, 'Diu', 'Diu, India', '0156'),
(23, 'Goa', 'Goa, India', '0178'),
(24, 'Gorakhpur', 'Gorakhpur, India', '0658'),
(25, 'Guwahati', 'Guwahati, India', '0167'),
(26, 'Hirasar', 'Hirasar, India', '0238'),
(27, 'Indore', 'Indore, India', '0439'),
(28, 'Jabalpur', 'Jabalpur, India', '0539'),
(29, 'Jaipur', 'Jaipur, India', '0769'),
(30, 'Jammu', 'Jammu, India', '0735'),
(31, 'Jodhpur', 'Jodhpur, India', '0782'),
(32, 'Kannur', 'Kannur, India', '0278'),
(33, 'Kanpur', 'Kanpur, India', '0429'),
(34, 'Kochi', 'Kochi, India', '0824'),
(35, 'Kolhapur', 'Kolhapur, India', '0924'),
(36, 'Kolkata', 'Kolkata, India', '0378'),
(37, 'Lucknow', 'Lucknow, India', '0856'),
(38, 'Madurai', 'Madurai, India', '0489'),
(39, 'Nagpur', 'Nagpur, India', '0189'),
(40, 'Nashik', 'Nashik, India', '0612'),
(41, 'Patna', 'Patna, India', '0145'),
(42, 'Raipur', 'Raipur, India', '0712'),
(43, 'Ranchi', 'Ranchi, India', '0834'),
(44, 'Shirdi', 'Shirdi, India', '0867'),
(45, 'Srinagar', 'Srinagar, India', '0412'),
(46, 'Thiruvananthapuram', 'Thiruvananthapuram, India', '0131'),
(47, 'Tirupati', 'Tirupati, India', '0179'),
(48, 'Udaipur', 'Udaipur, India', '0479'),
(49, 'Vadodara', 'Vadodara, India', '0839'),
(50, 'Varanasi', 'Varanasi, India', '0739'),
(51, 'Vijayawada', 'Vijayawada, India', '0183'),
(52, 'Visakhapatnam', 'Visakhapatnam, India', '0312'),
(53, 'Dubai', 'Dubai, UAE', '0387'),
(54, 'Tokyo', 'Tokyo, Japan', '0729'),
(55, 'Florida', 'Florida, US', '0512'),
(56, 'Denver', 'Denver, US', '0812'),
(57, 'Atlanta', 'Atlanta, US', '0624'),
(58, 'Chicago', 'Chicago, US', '0831'),
(59, 'Shanghai', 'Shanghai, China', '0249'),
(60, 'Anchorage', 'Anchorage, USA', '0614'),
(61, 'Incheon', 'Incheon, Korea', '0212'),
(62, 'Louisville', 'Louisville, USA', '0231'),
(63, 'Miami', 'Miami, USA', '0731'),
(64, 'Doha', 'Doha, Qatar', '0173'),
(65, 'Los Angeles', 'Los Angeles, USA', '0828'),
(66, 'Taipei', 'Taipei, Taiwan', '0191'),
(67, 'Cincinnati', 'Cincinnati, USA', '0841'),
(68, 'Paris', 'Paris, France', '0912'),
(69, 'Singapore', 'Singapore', '0911'),
(70, 'Istanbul', 'Istanbul, Turkey', '0913'),
(71, 'Shenzhen', 'Shenzhen, China', '0914'),
(72, 'Jamanagar', 'Jamnagar, Gujarat', '0543'),
(73, 'Dwarka', 'Dwarka, India', '0315'),
(74, 'Junagadh', 'Junagadh, India', '0517'),
(75, 'prayagraj', 'Up, India', '0564'),
(76, 'Bhuj', 'Bhuj, Gujarat', '0832');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `address` varchar(200) NOT NULL,
  `password` varchar(150) NOT NULL,
  `rule` varchar(10) NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT current_timestamp(),
  `last_activity` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `password`, `rule`, `reg_date`, `last_activity`) VALUES
(6, 'Himanshu Parmar', 'hp@gmail.com', '7043811361', 'Rajkot, Gujarat, India', 'hp@123', 'admin', '2018-09-17 15:53:29', '2018-09-17 15:53:29'),
(7, 'Ankit Nakum', 'ankit@gmail.com', '9978411361', 'Bhanvad, Gujarat, India', 'ankit@123', 'admin', '2018-09-17 16:07:40', '2018-09-17 16:07:40'),
(15, 'Himanshu Parmar', 'parmar@gmail.com', '9586009132', 'Rajkot, Gujarat, India', 'ap@123', 'passenger', '2025-02-06 17:55:09', '2025-02-06 17:55:09'),
(17, 'ishita', 'ishita@gmail.com', '2435612345', 'Rajkot, India', '1234', 'passenger', '2025-02-08 11:33:04', '2025-02-08 11:33:04'),
(18, 'aaa', 'a@gmail.com', '1234567890', ' z cn XChsvcshcvsc', '123456', 'passenger', '2025-03-01 11:45:39', '2025-03-01 11:45:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stations`
--
ALTER TABLE `stations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `stations`
--
ALTER TABLE `stations`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
