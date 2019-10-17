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
-- Database: `quizdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `1a`
--

CREATE TABLE `1a` (
  `aid` int(11) NOT NULL,
  `answer` text NOT NULL,
  `ans_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1a`
--

INSERT INTO `1a` (`aid`, `answer`, `ans_id`) VALUES
(1, '4', 1),
(2, '0', 1),
(3, '5', 1),
(4, '6', 1),
(5, '20', 2),
(6, '5', 2),
(7, '9', 2),
(8, '13', 2),
(9, '38', 3),
(10, '56', 3),
(11, '23', 3),
(12, '56', 3),
(13, '1', 4),
(14, '56', 4),
(15, '0', 4),
(16, '-9', 4),
(17, '9', 5),
(18, '560', 5),
(19, '89/5', 5),
(20, '38', 5);

-- --------------------------------------------------------

--
-- Table structure for table `1q`
--

CREATE TABLE `1q` (
  `que_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `ans_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1q`
--

INSERT INTO `1q` (`que_id`, `question`, `ans_id`) VALUES
(1, 'what is 2+2', 1),
(2, 'what is 2+3*6', 5),
(3, 'what is 40-2', 9),
(4, 'what is 5/5', 13),
(5, 'what is 90/2', 17);

-- --------------------------------------------------------

--
-- Table structure for table `2a`
--

CREATE TABLE `2a` (
  `aid` int(11) NOT NULL,
  `answer` text NOT NULL,
  `ans_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2a`
--

INSERT INTO `2a` (`aid`, `answer`, `ans_id`) VALUES
(1, '4', 1),
(2, '0', 1),
(3, '5', 1),
(4, '6', 1),
(5, '20', 2),
(6, '5', 2),
(7, '9', 2),
(8, '13', 2),
(9, '38', 3),
(10, '56', 3),
(11, '23', 3),
(12, '56', 3),
(13, '1', 4),
(14, '56', 4),
(15, '0', 4),
(16, '-9', 4),
(17, '9', 5),
(18, '560', 5),
(19, '89/5', 5),
(20, '38', 5);

-- --------------------------------------------------------

--
-- Table structure for table `2q`
--

CREATE TABLE `2q` (
  `que_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `ans_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2q`
--

INSERT INTO `2q` (`que_id`, `question`, `ans_id`) VALUES
(1, 'what is 2+2', 1),
(2, 'what is 2+3*6', 5),
(3, 'what is 40-2', 9),
(4, 'what is 5/5', 13),
(5, 'what is 90/9', 17);

-- --------------------------------------------------------

--
-- Table structure for table `3a`
--

CREATE TABLE `3a` (
  `aid` int(11) NOT NULL,
  `answer` text NOT NULL,
  `ans_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `3a`
--

INSERT INTO `3a` (`aid`, `answer`, `ans_id`) VALUES
(1, '4', 1),
(2, '0', 1),
(3, '5', 1),
(4, '6', 1),
(5, '20', 2),
(6, '5', 2),
(7, '9', 2),
(8, '13', 2),
(9, '38', 3),
(10, '56', 3),
(11, '23', 3),
(12, '56', 3),
(13, '1', 4),
(14, '56', 4),
(15, '0', 4),
(16, '-9', 4),
(17, '9', 5),
(18, '560', 5),
(19, '89/5', 5),
(20, '38', 5);

-- --------------------------------------------------------

--
-- Table structure for table `3q`
--

CREATE TABLE `3q` (
  `que_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `ans_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `3q`
--

INSERT INTO `3q` (`que_id`, `question`, `ans_id`) VALUES
(1, 'what is 2+2', 1),
(2, 'what is 2+3*6', 5),
(3, 'what is 40-2', 9),
(4, 'what is 5/5', 13),
(5, 'what is 90/9', 17);

-- --------------------------------------------------------

--
-- Table structure for table `4a`
--

CREATE TABLE `4a` (
  `aid` int(11) NOT NULL,
  `answer` text NOT NULL,
  `ans_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `4a`
--

INSERT INTO `4a` (`aid`, `answer`, `ans_id`) VALUES
(1, '4', 1),
(2, '0', 1),
(3, '5', 1),
(4, '6', 1),
(5, '20', 2),
(6, '5', 2),
(7, '9', 2),
(8, '13', 2),
(9, '38', 3),
(10, '56', 3),
(11, '23', 3),
(12, '56', 3),
(13, '1', 4),
(14, '56', 4),
(15, '0', 4),
(16, '-9', 4),
(17, '9', 5),
(18, '560', 5),
(19, '89/5', 5),
(20, '38', 5);

-- --------------------------------------------------------

--
-- Table structure for table `4q`
--

CREATE TABLE `4q` (
  `que_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `ans_is` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `4q`
--

INSERT INTO `4q` (`que_id`, `question`, `ans_is`) VALUES
(1, 'what is 2+2', 1),
(2, 'what is 2+3*6', 5),
(3, 'what is 40-2', 9),
(4, 'what is 5/5', 13),
(5, 'what is 90/9', 17);

-- --------------------------------------------------------

--
-- Table structure for table `5a`
--

CREATE TABLE `5a` (
  `aid` int(11) NOT NULL,
  `answer` text NOT NULL,
  `ans_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `5a`
--

INSERT INTO `5a` (`aid`, `answer`, `ans_id`) VALUES
(1, '4', 1),
(2, '0', 1),
(3, '5', 1),
(4, '6', 1),
(5, '20', 2),
(6, '5', 2),
(7, '9', 2),
(8, '13', 2),
(9, '38', 3),
(10, '56', 3),
(11, '23', 3),
(12, '56', 3),
(13, '1', 4),
(14, '56', 4),
(15, '0', 4),
(16, '-9', 4),
(17, '9', 5),
(18, '560', 5),
(19, '89/5', 5),
(20, '38', 5);

-- --------------------------------------------------------

--
-- Table structure for table `5q`
--

CREATE TABLE `5q` (
  `que_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `ans_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `5q`
--

INSERT INTO `5q` (`que_id`, `question`, `ans_id`) VALUES
(1, 'what is 2+2', 1),
(2, 'what is 2+3*6', 5),
(3, 'what is 40-2', 9),
(4, 'what is 5/5', 13),
(5, 'what is 90/9', 17);

-- --------------------------------------------------------

--
-- Table structure for table `6a`
--

CREATE TABLE `6a` (
  `aid` int(11) NOT NULL,
  `answer` text NOT NULL,
  `ans_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `6a`
--

INSERT INTO `6a` (`aid`, `answer`, `ans_id`) VALUES
(1, '4', 1),
(2, '0', 1),
(3, '5', 1),
(4, '6', 1),
(5, '20', 2),
(6, '5', 2),
(7, '9', 2),
(8, '13', 2),
(9, '38', 3),
(10, '56', 3),
(11, '23', 3),
(12, '56', 3),
(13, '1', 4),
(14, '56', 4),
(15, '0', 4),
(16, '-9', 4),
(17, '9', 5),
(18, '560', 5),
(19, '89/5', 5),
(20, '38', 5);

-- --------------------------------------------------------

--
-- Table structure for table `6q`
--

CREATE TABLE `6q` (
  `que_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `ans_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `6q`
--

INSERT INTO `6q` (`que_id`, `question`, `ans_id`) VALUES
(1, 'what is 2+2', 1),
(2, 'what is 2+3*6', 5),
(3, 'what is 40-2', 9),
(4, 'what is 5/5', 13),
(5, 'what is 90/9', 17);

-- --------------------------------------------------------

--
-- Table structure for table `7a`
--

CREATE TABLE `7a` (
  `aid` int(11) NOT NULL,
  `answer` text NOT NULL,
  `ans_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `7a`
--

INSERT INTO `7a` (`aid`, `answer`, `ans_id`) VALUES
(1, '4', 1),
(2, '0', 1),
(3, '5', 1),
(4, '6', 1),
(5, '20', 2),
(6, '5', 2),
(7, '9', 2),
(8, '13', 2),
(9, '38', 3),
(10, '56', 3),
(11, '23', 3),
(12, '56', 3),
(13, '1', 4),
(14, '56', 4),
(15, '0', 4),
(16, '-9', 4),
(17, '9', 5),
(18, '560', 5),
(19, '89/5', 5),
(20, '38', 5);

-- --------------------------------------------------------

--
-- Table structure for table `7q`
--

CREATE TABLE `7q` (
  `que_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `and_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `7q`
--

INSERT INTO `7q` (`que_id`, `question`, `and_id`) VALUES
(1, 'what is 2+2', 1),
(2, 'what is 2+3*6', 5),
(3, 'what is 40-2', 9),
(4, 'what is 5/5', 13),
(5, 'what is 90/9', 17);

-- --------------------------------------------------------

--
-- Table structure for table `8a`
--

CREATE TABLE `8a` (
  `aid` int(11) NOT NULL,
  `answer` text NOT NULL,
  `ans_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `8a`
--

INSERT INTO `8a` (`aid`, `answer`, `ans_id`) VALUES
(1, '4', 1),
(2, '0', 1),
(3, '5', 1),
(4, '6', 1),
(5, '20', 2),
(6, '5', 2),
(7, '9', 2),
(8, '13', 2),
(9, '38', 3),
(10, '56', 3),
(11, '23', 3),
(12, '56', 3),
(13, '1', 4),
(14, '56', 4),
(15, '0', 4),
(16, '-9', 4),
(17, '9', 5),
(18, '560', 5),
(19, '89/5', 5),
(20, '38', 5);

-- --------------------------------------------------------

--
-- Table structure for table `8q`
--

CREATE TABLE `8q` (
  `que_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `and_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `8q`
--

INSERT INTO `8q` (`que_id`, `question`, `and_id`) VALUES
(1, 'what is 2+2', 1),
(2, 'what is 2+3*6', 5),
(3, 'what is 40-2', 9),
(4, 'what is 5/5', 13),
(5, 'what is 90/9', 17);

-- --------------------------------------------------------

--
-- Table structure for table `table 5`
--

CREATE TABLE `table 5` (
  `COL 1` int(2) DEFAULT NULL,
  `COL 2` varchar(4) DEFAULT NULL,
  `COL 3` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table 5`
--

INSERT INTO `table 5` (`COL 1`, `COL 2`, `COL 3`) VALUES
(1, '4', 1),
(2, '0', 1),
(3, '5', 1),
(4, '6', 1),
(5, '20', 2),
(6, '5', 2),
(7, '9', 2),
(8, '13', 2),
(9, '38', 3),
(10, '56', 3),
(11, '23', 3),
(12, '56', 3),
(13, '1', 4),
(14, '56', 4),
(15, '0', 4),
(16, '-9', 4),
(17, '9', 5),
(18, '560', 5),
(19, '89/5', 5),
(20, '38', 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
