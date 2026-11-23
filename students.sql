-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2026 at 03:38 PM
-- Server version: 10.11.19-MariaDB
-- PHP Version: 8.5.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `fullname` varchar(150) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `registrationdate1` date DEFAULT curdate(),
  `registrationdate2` time DEFAULT curtime(),
  `registrationdate3` datetime DEFAULT current_timestamp()
) ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `fullname`, `email`, `age`, `registrationdate1`, `registrationdate2`, `registrationdate3`) VALUES
(2, 'testi1', 'hhadichaito60@gmail.com', 25, '2026-11-23', '16:36:32', '2026-11-23 16:36:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `email` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
