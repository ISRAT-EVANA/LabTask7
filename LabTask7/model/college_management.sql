-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2021 at 08:12 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `eId` int(10) NOT NULL,
  `path` varchar(300) NOT NULL,
  `uploadDate` datetime NOT NULL,
  `id` int(10) NOT NULL,
  `fileName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`eId`, `path`, `uploadDate`, `id`, `fileName`) VALUES
(2, '../assets/assignment/task1.zip', '2021-08-10 06:59:07', 1, 'task1.zip'),
(2, '../assets/assignment/task2.zip', '2021-08-17 06:59:07', 2, 'task2.zip'),
(2, '../assets/assignment/task3.zip', '2021-08-16 03:02:48', 3, 'task3.zip');

-- --------------------------------------------------------

--
-- Table structure for table `enrolledcourse`
--

CREATE TABLE `enrolledcourse` (
  `id` int(10) NOT NULL,
  `sId` int(10) NOT NULL,
  `cName` varchar(30) NOT NULL,
  `ct1` int(5) DEFAULT NULL,
  `ct2` int(5) DEFAULT NULL,
  `ct3` int(5) DEFAULT NULL,
  `performance` int(5) DEFAULT NULL,
  `attendence` int(5) DEFAULT NULL,
  `midterm` int(5) DEFAULT NULL,
  `finalterm` int(5) DEFAULT NULL,
  `day` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enrolledcourse`
--

INSERT INTO `enrolledcourse` (`id`, `sId`, `cName`, `ct1`, `ct2`, `ct3`, `performance`, `attendence`, `midterm`, `finalterm`, `day`) VALUES
(1, 1, 'Engineering Ethics', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sunday'),
(2, 1, 'Object oriented Programming-2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sunday'),
(3, 1, 'Research Methodology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'monday'),
(4, 1, 'Computer networks', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tuesday'),
(5, 1, 'Web technologies', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'wednesday'),
(6, 1, 'Programming language-2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'thursday'),
(7, 2, 'Object oriented Programming', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sunday'),
(8, 2, 'Research Methodology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'monday'),
(9, 2, 'Engineering Ethics', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tuesday'),
(10, 2, 'Web technologies', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tuesday'),
(11, 2, 'Computer networks', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'wednesday'),
(12, 2, 'Programming language-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'thursday');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `eId` int(10) NOT NULL,
  `path` varchar(300) NOT NULL,
  `uploadDate` datetime NOT NULL,
  `name` varchar(50) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`eId`, `path`, `uploadDate`, `name`, `id`) VALUES
(2, '../assets/notes/Lesson 1.1 - Introducing Java.pdf', '2021-08-10 09:44:30', 'Lesson 1.1 - Introducing Java.pdf', 1),
(2, '../assets/notes/Lesson 1.2 - Java Environment Setup.pdf', '2021-08-09 10:44:30', 'Lesson 1.2 - Java Environment Setup.pdf', 2),
(2, '../assets/notes/Lesson 2.2 - Class and Object.pdf', '2021-05-12 05:49:35', 'Lesson 2.2 - Class and Object.pdf', 3),
(2, '../assets/notes/Lesson 3.1 - Variable Types.pdf', '2021-08-16 04:49:35', 'Lesson 3.1 - Variable Types.pdf', 4);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(10) NOT NULL,
  `eId` int(10) NOT NULL,
  `fileName` varchar(50) NOT NULL,
  `path` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` int(15) NOT NULL,
  `address` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `image` varchar(300) DEFAULT NULL,
  `gender` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `password`, `email`, `phone`, `address`, `dob`, `image`, `gender`) VALUES
(1, 'Israt', 'Evana', '12345', 'isratevana@gmail.com', 1756545656, 'Noakhali, Bangladesh', '2011-08-01', 'idfgdffdvfdvf', 'female'),
(2, 'Fardin Ahsan', 'Imran', '12345', 'fardinahsan@gmail.com', 1788370756, 'Sylhet, Bangladesh', '2021-08-11', '../assets/images/fb1.jpg', 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrolledcourse`
--
ALTER TABLE `enrolledcourse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `enrolledcourse`
--
ALTER TABLE `enrolledcourse`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
