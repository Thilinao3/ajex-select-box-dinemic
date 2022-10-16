-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2017 at 06:47 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `country_state_city`
--

CREATE TABLE IF NOT EXISTS `country_state_city` (
  `id` int(11) NOT NULL,
  `country` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country_state_city`
--

INSERT INTO `country_state_city` (`id`, `country`, `state`, `city`) VALUES
(1, 'USA', 'New York', 'New York city'),
(2, 'USA', 'New York', 'Buffalo'),
(3, 'USA', 'New York', 'Albany'),
(4, 'USA', 'Alabama', 'Birmingham'),
(5, 'USA', 'Alabama', 'Montgomery'),
(6, 'USA', 'Alabama', 'Huntsville'),
(7, 'USA', 'California', 'Los Angeles'),
(8, 'USA', 'California', 'San Francisco'),
(9, 'USA', 'California', 'San Diego'),
(10, 'Canada', 'Ontario', 'Toronto'),
(11, 'Canada', 'Ontario', 'Ottawa'),
(12, 'Canada', 'British Columbia', 'Vancouver'),
(13, 'Canada', 'British Columbia', 'Victoria'),
(14, 'Australia', 'New South Wales', 'Sydney'),
(15, 'Australia', 'New South Wales', 'Newcastle'),
(16, 'Australia', 'Queensland', 'City of Brisbane'),
(17, 'Australia', 'Queensland', 'Gold Coast\r\n'),
(18, 'USA', 'New York', 'Rochester'),
(19, 'USA', 'New York', 'Yonkers'),
(20, 'USA', 'New York', 'Syracuse'),
(21, 'USA', 'New York', 'New Rochelle');

-- --------------------------------------------------------

--
-- Table structure for table `country_state_city_form_data`
--

CREATE TABLE IF NOT EXISTS `country_state_city_form_data` (
  `id` int(11) NOT NULL,
  `country` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL,
  `city` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country_state_city_form_data`
--

INSERT INTO `country_state_city_form_data` (`id`, `country`, `state`, `city`) VALUES
(1, 'USA', 'New York', 'New York city,Rochester,New Rochelle'),
(2, 'USA', 'New York', 'New York city,Albany,New Rochelle'),
(3, 'USA', 'New York', 'Buffalo,Albany,Yonkers'),
(4, 'USA', 'New York', 'New York city,Buffalo,Rochester,New Rochelle'),
(5, 'Canada', 'Ontario', 'Toronto,Ottawa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country_state_city`
--
ALTER TABLE `country_state_city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_state_city_form_data`
--
ALTER TABLE `country_state_city_form_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country_state_city`
--
ALTER TABLE `country_state_city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `country_state_city_form_data`
--
ALTER TABLE `country_state_city_form_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
