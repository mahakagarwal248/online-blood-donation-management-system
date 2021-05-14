-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2021 at 07:49 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ddl`
--

-- --------------------------------------------------------

--
-- Table structure for table `city_tb`
--

CREATE TABLE `city_tb` (
  `cyid` int(2) NOT NULL,
  `cyname` text NOT NULL,
  `state` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city_tb`
--

INSERT INTO `city_tb` (`cyid`, `cyname`, `state`) VALUES
(1, 'Ambala', 1),
(2, 'Gurugram', 1),
(3, 'Faridabad', 1),
(4, 'Panipat', 1),
(5, 'Rohtak', 1),
(6, 'Ahmedabad', 2),
(7, 'Gandhinagar', 2),
(8, 'Surat', 2),
(9, 'Rajkot', 2),
(10, 'Vadodara', 2),
(11, 'Agra', 3),
(12, 'Bareilly', 3),
(13, 'Kanpur', 3),
(14, 'Lucknow', 3),
(15, 'Moradabad', 3),
(16, 'Aurangabad', 4),
(17, 'Mumbai', 4),
(18, 'Navi Mumbai', 4),
(19, 'Nagpur', 4),
(20, 'Pune', 4),
(21, 'Ajmer', 5),
(22, 'Kota', 5),
(23, 'Jaipur', 5),
(24, 'Pushkar', 5),
(25, 'Udaipur', 5),
(26, 'Bhopal', 6),
(27, 'Gwalior', 6),
(28, 'Indore', 6),
(29, 'Jabalpur', 6),
(30, 'Ujjain', 6),
(31, 'Khuzdar', 7),
(32, 'Gwadar', 7),
(33, 'Quetta', 7),
(34, 'Faisalbad', 8),
(35, 'Lahore', 8),
(36, 'Multan', 8),
(37, 'Hyderabad', 9),
(38, 'Karachi', 9),
(39, 'Sukkur', 9);

-- --------------------------------------------------------

--
-- Table structure for table `country_tb`
--

CREATE TABLE `country_tb` (
  `cid` int(11) NOT NULL,
  `cname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country_tb`
--

INSERT INTO `country_tb` (`cid`, `cname`) VALUES
(1, 'India'),
(2, 'Pakistan');

-- --------------------------------------------------------

--
-- Table structure for table `donor_info`
--

CREATE TABLE `donor_info` (
  `fullname` varchar(25) NOT NULL,
  `gender` enum('male','female','other') NOT NULL,
  `dob` date NOT NULL,
  `ano` bigint(13) NOT NULL,
  `mno` bigint(10) NOT NULL,
  `eid` varchar(30) NOT NULL,
  `country` varchar(25) NOT NULL,
  `state` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  `bloodgroup` enum('A+','A-','B+','B-','O+','O-','AB+','AB-') NOT NULL,
  `ldd` date NOT NULL,
  `afd` enum('at','dh','nh') NOT NULL,
  `diabetes` varchar(10) NOT NULL,
  `pregnant` varchar(10) NOT NULL,
  `abortion` varchar(10) NOT NULL,
  `child` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donor_info`
--

INSERT INTO `donor_info` (`fullname`, `gender`, `dob`, `ano`, `mno`, `eid`, `country`, `state`, `city`, `bloodgroup`, `ldd`, `afd`, `diabetes`, `pregnant`, `abortion`, `child`) VALUES
('mahak agarwal', 'female', '2001-04-23', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '3', 'Bareilly', 'O+', '0000-00-00', 'dh', 'no', 'no', 'no', 'no'),
('', '', '0000-00-00', 0, 0, '', '', '', '', '', '0000-00-00', '', '', '', '', ''),
('', '', '0000-00-00', 0, 0, '', '', '', '', '', '0000-00-00', '', '', '', '', ''),
('mahak agarwal', 'female', '2021-05-12', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '3', 'Lucknow', 'B+', '0000-00-00', 'nh', 'no', 'no', 'no', 'no'),
('mahak agarwal', 'female', '2021-04-28', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '3', 'Bareilly', 'B+', '0000-00-00', 'dh', 'no', 'no', 'no', 'no'),
('mahak ', 'female', '2021-05-06', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '3', 'Bareilly', 'AB+', '0000-00-00', 'at', 'no', 'no', 'no', 'no'),
('mahak ', 'female', '2021-05-06', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '3', 'Bareilly', 'AB+', '0000-00-00', 'at', 'no', 'no', 'no', 'no'),
('mahak ', 'female', '2021-05-06', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '3', 'Bareilly', 'AB+', '0000-00-00', 'at', 'no', 'no', 'no', 'no'),
('mahak ', 'female', '2021-05-06', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '3', 'Bareilly', 'AB+', '0000-00-00', 'at', 'no', 'no', 'no', 'no'),
('mahak ', 'female', '2021-05-06', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '3', 'Bareilly', 'AB+', '0000-00-00', 'at', 'no', 'no', 'no', 'no'),
('mahak ', 'female', '2021-05-06', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '3', 'Bareilly', 'AB+', '0000-00-00', 'at', 'no', 'no', 'no', 'no'),
('mahak ', 'female', '2021-05-06', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '3', 'Bareilly', 'AB+', '0000-00-00', 'at', 'no', 'no', 'no', 'no'),
('mahak ', 'female', '2021-05-06', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '3', 'Bareilly', 'AB+', '0000-00-00', 'at', 'no', 'no', 'no', 'no'),
('mahak ', 'female', '2021-05-06', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '3', 'Bareilly', 'AB+', '0000-00-00', 'at', 'no', 'no', 'no', 'no'),
('mahak ', 'female', '2021-05-06', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '3', 'Bareilly', 'AB+', '0000-00-00', 'at', 'no', 'no', 'no', 'no'),
('mahak ', 'female', '2021-05-06', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '3', 'Bareilly', 'AB+', '0000-00-00', 'at', 'no', 'no', 'no', 'no'),
('mahak ', 'female', '2001-04-06', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '3', 'Kanpur', 'AB+', '0000-00-00', 'at', 'no', 'no', 'no', 'no'),
('mahak ', 'female', '2001-04-06', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '3', 'Kanpur', 'AB+', '0000-00-00', 'at', 'no', 'no', 'no', 'no'),
('mahak ', 'female', '2001-04-06', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '3', 'Kanpur', 'AB+', '0000-00-00', 'at', 'no', 'no', 'no', 'no'),
('mahak ', 'female', '2001-04-06', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '3', 'Kanpur', 'AB+', '0000-00-00', 'at', 'no', 'no', 'no', 'no'),
('mahak ', 'female', '2001-04-06', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '3', 'Kanpur', 'AB+', '0000-00-00', 'at', 'no', 'no', 'no', 'no'),
('mahak ', 'female', '2001-04-06', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '3', 'Kanpur', 'AB+', '0000-00-00', 'at', 'no', 'no', 'no', 'no'),
('mahak ', 'female', '2001-04-06', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '3', 'Kanpur', 'AB+', '0000-00-00', 'at', 'no', 'no', 'no', 'no'),
('mahak ', 'female', '2001-04-06', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '3', 'Kanpur', 'AB+', '0000-00-00', 'at', 'no', 'no', 'no', 'no'),
('mahak ', 'female', '2021-05-06', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '3', 'Bareilly', 'AB+', '0000-00-00', 'at', 'no', 'no', 'no', 'no'),
('mahak ', 'female', '2021-05-06', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '3', 'Bareilly', 'AB+', '0000-00-00', 'at', 'no', 'no', 'no', 'no'),
('mahak ', 'female', '2021-05-06', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '3', 'Bareilly', 'AB+', '0000-00-00', 'at', 'no', 'no', 'no', 'no'),
('mahak ', 'female', '2021-05-06', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '3', 'Bareilly', 'AB+', '0000-00-00', 'at', 'no', 'no', 'no', 'no'),
('mahak ', 'female', '2021-05-06', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '3', 'Bareilly', 'AB+', '0000-00-00', 'at', 'no', 'no', 'no', 'no'),
('mahak ', 'female', '2021-05-06', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '3', 'Bareilly', 'AB+', '0000-00-00', 'at', 'no', 'no', 'no', 'no'),
('mahak ', 'female', '2001-04-25', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '2', 'Surat', 'AB+', '0000-00-00', 'at', 'no', 'no', 'no', 'no'),
('mahak ', 'female', '2001-04-25', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '2', 'Surat', 'AB+', '0000-00-00', 'at', 'no', 'no', 'no', 'no'),
('mahak ', 'female', '2001-04-25', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '2', 'Surat', 'AB+', '0000-00-00', 'at', 'no', 'no', 'no', 'no'),
('mahak agarwal', 'female', '2001-04-06', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '3', 'Bareilly', 'B+', '0000-00-00', 'nh', 'no', 'no', 'no', 'no'),
('mahak agarwal', 'female', '2001-04-06', 305866098313, 918941027873, 'mahakagarwal248@gmail.com', '1', '3', 'Bareilly', 'B+', '0000-00-00', 'nh', 'no', 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `state_tb`
--

CREATE TABLE `state_tb` (
  `sid` int(2) NOT NULL,
  `sname` text NOT NULL,
  `country` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state_tb`
--

INSERT INTO `state_tb` (`sid`, `sname`, `country`) VALUES
(1, 'Haryana', 1),
(2, 'Gujrat', 1),
(3, 'Uttar Pradesh', 1),
(4, 'Maharashtra', 1),
(5, 'Rajsthan', 1),
(6, 'Madhya Pradesh', 1),
(7, 'Baluchistan', 2),
(8, 'Punjab', 2),
(9, 'Sindh', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country_tb`
--
ALTER TABLE `country_tb`
  ADD UNIQUE KEY `cid` (`cid`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
