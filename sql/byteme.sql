-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2020 at 05:32 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `byteme`
--

-- --------------------------------------------------------

--
-- Table structure for table `m@g.com`
--

CREATE TABLE `m@g.com` (
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `mobile` bigint(10) DEFAULT NULL,
  `landline` bigint(10) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `public` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m@g.com`
--

INSERT INTO `m@g.com` (`fname`, `lname`, `mobile`, `landline`, `email`, `public`) VALUES
('Rahul', 'Sharma', 987, 985, 'r@gmail.com', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `r@gmail.com`
--

CREATE TABLE `r@gmail.com` (
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `mobile` bigint(10) DEFAULT NULL,
  `landline` bigint(10) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `public` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `s@g.com`
--

CREATE TABLE `s@g.com` (
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `mobile` bigint(10) DEFAULT NULL,
  `landline` bigint(10) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `public` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s@g.com`
--

INSERT INTO `s@g.com` (`fname`, `lname`, `mobile`, `landline`, `email`, `public`) VALUES
('Mohit', 'Bhargava', 987987, 654654, 'm@g.com', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `_login`
--

CREATE TABLE `_login` (
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `dob` varchar(10) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `secquestion` varchar(100) NOT NULL,
  `secanswer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_login`
--

INSERT INTO `_login` (`fname`, `lname`, `dob`, `mobile`, `email`, `password`, `secquestion`, `secanswer`) VALUES
('Mohit', 'Bhargava', '12/03/1998', 9876942484, 'm@g.com', '4342b324522f1854e5bf538b5b79b53c', 'What is your nickname?', 'Prince'),
('Rahul', 'Sharma', '04/05/2020', 987, 'r@gmail.com', '1dc90e80c77fe245a82ea7ed30d1f849', 'Your best friends name?', 'kanish'),
('shivam', 'Mehta', '04/08/1998', 9876942484, 's@g.com', '7812e8b74f6837fba66f86fe86688a2b', 'Your best friends name?', 'Mohit');

-- --------------------------------------------------------

--
-- Table structure for table `_public`
--

CREATE TABLE `_public` (
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `mobile` bigint(10) DEFAULT NULL,
  `landline` bigint(10) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_public`
--

INSERT INTO `_public` (`fname`, `lname`, `mobile`, `landline`, `email`) VALUES
('Mohit', 'Bhargava', 987987, 987987, 'm@g.com'),
('Mohit', 'Bhargava', 987987, 654654, 'm@g.com');

-- --------------------------------------------------------

--
-- Table structure for table `_users`
--

CREATE TABLE `_users` (
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_users`
--

INSERT INTO `_users` (`email`) VALUES
('m@g.com'),
('r@gmail.com'),
('s@g.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m@g.com`
--
ALTER TABLE `m@g.com`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `r@gmail.com`
--
ALTER TABLE `r@gmail.com`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `s@g.com`
--
ALTER TABLE `s@g.com`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `_login`
--
ALTER TABLE `_login`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `_users`
--
ALTER TABLE `_users`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
