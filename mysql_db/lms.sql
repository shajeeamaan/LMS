-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2015 at 02:32 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `lib_book_category`
--

CREATE TABLE IF NOT EXISTS `lib_book_category` (
  `book_category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lib_book_category`
--

INSERT INTO `lib_book_category` (`book_category`) VALUES
('.net'),
('C++'),
('Database'),
('Java'),
('Vb'),
('Web');

-- --------------------------------------------------------

--
-- Table structure for table `lib_book_master`
--

CREATE TABLE IF NOT EXISTS `lib_book_master` (
  `book_title` varchar(10) NOT NULL,
  `book_author` varchar(10) NOT NULL,
  `book_publisher` varchar(10) NOT NULL,
  `book_publish_year` varchar(10) NOT NULL,
  `book_category` varchar(10) NOT NULL,
  `book_status` varchar(10) NOT NULL DEFAULT 'Available',
  `book_keyword` varchar(20) NOT NULL,
`book_id` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lib_book_master`
--

INSERT INTO `lib_book_master` (`book_title`, `book_author`, `book_publisher`, `book_publish_year`, `book_category`, `book_status`, `book_keyword`, `book_id`) VALUES
('dc', 'xc', 'xcz', 'xzc', 'Database', 'Available', 'xcz', 2),
('xdv', 'vzxvz', 'xzx', 'xzc', 'Database', 'Available', 'xzc', 3),
('sda', 'dd', 'dsf', 'sds', 'Web', 'Available', 'sdds', 4),
('xzc', 'zxc', 'xzc', 'xzcz', '.net', 'Available', 'xzc', 5);

-- --------------------------------------------------------

--
-- Table structure for table `lib_member_master`
--

CREATE TABLE IF NOT EXISTS `lib_member_master` (
`mem_id` int(11) NOT NULL,
  `mem_name` varchar(100) DEFAULT NULL,
  `mem_address` varchar(250) DEFAULT NULL,
  `mem_email_id` varchar(100) DEFAULT NULL,
  `mem_mobile_no` varchar(20) DEFAULT NULL,
  `mem_registered_date` date DEFAULT NULL,
  `mem_active` varchar(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lib_member_master`
--

INSERT INTO `lib_member_master` (`mem_id`, `mem_name`, `mem_address`, `mem_email_id`, `mem_mobile_no`, `mem_registered_date`, `mem_active`) VALUES
(1, 'sample 1', 'colombo', 'sample@yahoo.com', '1111', '2012-08-08', 'Y'),
(2, 'sample 2', 'Kandy', 'sample2@yahoo.com', '2222', NULL, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `lib_transaction`
--

CREATE TABLE IF NOT EXISTS `lib_transaction` (
`trn_id` int(10) unsigned NOT NULL,
  `trn_mem_id` int(10) unsigned NOT NULL,
  `trn_book_id` int(10) unsigned NOT NULL,
  `trn_issue_dt` datetime NOT NULL,
  `trn_receive_dt` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lib_transaction`
--

INSERT INTO `lib_transaction` (`trn_id`, `trn_mem_id`, `trn_book_id`, `trn_issue_dt`, `trn_receive_dt`) VALUES
(1, 1, 1, '2012-01-01 00:00:00', '2012-01-01 00:00:00'),
(2, 1, 2, '2012-09-08 23:42:11', '2012-09-09 10:22:58'),
(3, 2, 1, '2012-09-08 23:43:03', '2012-09-09 10:23:07'),
(4, 1, 1, '2012-09-09 10:23:21', NULL),
(5, 3, 6, '2012-09-09 11:35:26', '2012-09-09 11:36:20'),
(6, 2, 7, '2012-09-09 11:58:23', '2012-09-09 11:59:06'),
(7, 2, 2, '2015-10-08 20:42:47', '2015-10-08 20:43:02');

-- --------------------------------------------------------

--
-- Table structure for table `lib_user`
--

CREATE TABLE IF NOT EXISTS `lib_user` (
`user_no` int(10) NOT NULL,
  `user_name` varchar(10) NOT NULL,
  `user_password` varchar(10) NOT NULL,
  `user_type` varchar(5) NOT NULL,
  `user_active` varchar(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lib_user`
--

INSERT INTO `lib_user` (`user_no`, `user_name`, `user_password`, `user_type`, `user_active`) VALUES
(1, 'shajee', 'shajee', '', ''),
(2, 'hh', 'hh', 'User', 'YES'),
(3, 'heshan', '1995', 'Admin', 'YES'),
(4, 'Janak', 'janak1995', 'User', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_name` varchar(10) NOT NULL,
  `user_password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_name`, `user_password`) VALUES
('shajee', 'shajee');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lib_book_category`
--
ALTER TABLE `lib_book_category`
 ADD PRIMARY KEY (`book_category`);

--
-- Indexes for table `lib_book_master`
--
ALTER TABLE `lib_book_master`
 ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `lib_member_master`
--
ALTER TABLE `lib_member_master`
 ADD PRIMARY KEY (`mem_id`);

--
-- Indexes for table `lib_transaction`
--
ALTER TABLE `lib_transaction`
 ADD PRIMARY KEY (`trn_id`);

--
-- Indexes for table `lib_user`
--
ALTER TABLE `lib_user`
 ADD PRIMARY KEY (`user_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lib_book_master`
--
ALTER TABLE `lib_book_master`
MODIFY `book_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `lib_member_master`
--
ALTER TABLE `lib_member_master`
MODIFY `mem_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `lib_transaction`
--
ALTER TABLE `lib_transaction`
MODIFY `trn_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `lib_user`
--
ALTER TABLE `lib_user`
MODIFY `user_no` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
