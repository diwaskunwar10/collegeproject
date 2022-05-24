-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2022 at 02:18 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cpassword` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `email`, `password`, `cpassword`, `image`) VALUES
('school for trial', 'trial123@gmail.com', '$2y$10$ww9HPYUAsAyRNzaquhG45OJ9FSky4zfBUT.CZRMJM8.vyW4MHNL8i', '$2y$10$ipLV7aLMESPFvFo0rX7boO8VaNrkbLoARMPNd3CoAhMwVhSZtp8dO', '../img/logo2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `id` int(11) NOT NULL,
  `regi` int(200) NOT NULL,
  `stdname` varchar(255) NOT NULL,
  `bookname` varchar(255) NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `issue` date NOT NULL,
  `returned` date NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`id`, `regi`, `stdname`, `bookname`, `isbn`, `issue`, `returned`, `time`) VALUES
(6, 123, 'student1', 'c programming', '192456', '2022-04-01', '0000-00-00', '2022-04-01 10:47:54');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `organization` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `title`, `description`, `organization`, `time`) VALUES
(45, 'dd', 'ff', '', '2022-04-01 11:57:16'),
(46, 'aa', 'bbcd', 'trial123@gmail.com', '2022-04-01 12:06:26'),
(47, 'bb', 'cc', 'trial123@gmail.com', '2022-04-01 12:05:59'),
(48, 'holiday', 'hurray', 'trial123@gmail.com', '2022-04-01 12:13:51');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `registration` varchar(255) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `enrollyear` date NOT NULL,
  `gender` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `org` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`registration`, `name`, `email`, `phone`, `course`, `address`, `dob`, `enrollyear`, `gender`, `image`, `org`, `password`) VALUES
('123', 'student1', 'student1@gmail.com', '9845687956', 'BCA', 'dhapasi', '2022-04-01', '2022-04-01', 'Male', '../img/19.jpg', 'trial123@gmail.com', ''),
('124', 'student2', 'student2@gmail.com', '9845687956', 'BCA', 'dhapasi', '2022-04-01', '2022-04-01', 'Female', '../img/1.jpg', 'trial123@gmail.com', ''),
('125', 'student3', 'student3@gmail.com', '9845687956', 'Bsc.CSIT', 'dhapasi', '2022-04-01', '2022-04-01', 'Male', '../img/18.jpg', 'trial123@gmail.com', ''),
('126', 'student4', 'student4@gmail.com', '9845687956', 'Bsc.CSIT', 'dhapasi', '2022-04-01', '2022-04-01', 'Female', '../img/5.jpg', 'trial123@gmail.com', ''),
('127', 'student5', 'student5@gmail.com', '9845687956', 'BIT', 'dhapasi', '2022-04-01', '2022-04-01', 'Male', '../img/16.jpg', 'trial123@gmail.com', ''),
('128', 'student6', 'student6@gmail.com', '9845687956', 'BIT', 'dhapasi', '2022-04-01', '2022-04-01', 'Female', '../img/4.jpg', 'trial123@gmail.com', ''),
('129', 'student7', 'student7@gmail.com', '9845687956', 'BIM', 'dhapasi', '2022-04-01', '2022-04-01', 'Male', '../img/14.jpg', 'trial123@gmail.com', ''),
('213', 'student8', 'student8@gmail.com', '9845687956', 'BIM', 'dhapasi', '2022-04-01', '2022-04-01', 'Female', '../img/6.jpg', 'trial123@gmail.com', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`registration`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `library`
--
ALTER TABLE `library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
