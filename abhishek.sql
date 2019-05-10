-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2019 at 03:46 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abhishek`
--

-- --------------------------------------------------------

--
-- Table structure for table `selectchapter`
--

CREATE TABLE `selectchapter` (
  `subjectid` int(11) NOT NULL,
  `chapterid` int(11) NOT NULL,
  `chaptername` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `selectchapter`
--

INSERT INTO `selectchapter` (`subjectid`, `chapterid`, `chaptername`) VALUES
(1, 1, 'numerical'),
(1, 2, 'calcultion'),
(2, 3, 'english gramer'),
(2, 4, 'english '),
(7, 5, 'numerical'),
(7, 6, 'calcultion'),
(8, 7, 'english gramer'),
(8, 8, 'english');

-- --------------------------------------------------------

--
-- Table structure for table `selectclass`
--

CREATE TABLE `selectclass` (
  `classid` int(11) NOT NULL,
  `classname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `selectclass`
--

INSERT INTO `selectclass` (`classid`, `classname`) VALUES
(10, '10th class'),
(12, '12th class');

-- --------------------------------------------------------

--
-- Table structure for table `selectquiz`
--

CREATE TABLE `selectquiz` (
  `chapterid` int(11) NOT NULL,
  `quizid` int(11) NOT NULL,
  `quizname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `selectquiz`
--

INSERT INTO `selectquiz` (`chapterid`, `quizid`, `quizname`) VALUES
(1, 1, 'quiz1'),
(2, 2, 'quiz2'),
(3, 3, 'quiz3'),
(4, 4, 'quiz4'),
(5, 5, 'quiz5'),
(6, 6, 'quiz6'),
(7, 7, 'quiz7'),
(8, 8, 'quiz8');

-- --------------------------------------------------------

--
-- Table structure for table `selectsubject`
--

CREATE TABLE `selectsubject` (
  `classid` int(11) NOT NULL,
  `subjectid` int(11) NOT NULL,
  `subname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `selectsubject`
--

INSERT INTO `selectsubject` (`classid`, `subjectid`, `subname`) VALUES
(10, 1, 'Math'),
(10, 2, 'science'),
(12, 7, 'Math'),
(12, 8, 'science');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` text NOT NULL,
  `board` text NOT NULL,
  `class` int(11) NOT NULL,
  `email` text NOT NULL,
  `mobileno` bigint(20) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `board`, `class`, `email`, `mobileno`, `password`) VALUES
('alok kumar', 'Bihar Board', 10, '17bcs031@smvdu.ac.in', 1234567890, 'asdffdsa'),
('asdfasdf', 'Bihar Board', 10, 'fsdgsdf@gmail.com', 6005226614, 'fdsaasdf'),
('abhishek agrawal', 'Bihar Board', 10, '17bcs0098@smvdu.ac.in', 8764243860, 'qwertyuiop'),
('abhishek', 'rbse', 10, 'mf3010golu@gmail.com', 8764243862, 'admin'),
('asdfasdf', 'Bihar Board', 10, 'fsdgsdf@gmail.com', 9413064642, 'asdffdsa'),
('asdfasdf', 'Bihar Board', 10, 'fsdgsdf@gmail.com', 9413443887, 'asdffdsa'),
('danish mushtaq', 'CBSE', 12, '17bcs020@smvdu.ac.in', 9682652008, 'halvai123'),
('abhishek agrawal', 'Bihar Board', 10, '17bcs003@smvdu.ac.in', 9876543211, 'asdffdsa'),
('guddu kumar', 'Bihar Board', 10, 'abhishek@gmail.com', 9906310655, 'asdffdsa'),
('keshav gupta ', 'U.P.Board', 12, '17bcs029@gmail.com', 9906314548, 'asdffdsa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`mobileno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `mobileno` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9906314549;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
