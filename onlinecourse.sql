-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2024 at 12:06 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinecourse`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2022-01-31 16:21:18', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `courseCode` varchar(255) DEFAULT NULL,
  `courseName` varchar(255) DEFAULT NULL,
  `department` int(11) NOT NULL,
  `courseUnit` varchar(255) DEFAULT NULL,
  `noofSeats` int(11) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `courseCode`, `courseName`, `department`, `courseUnit`, `noofSeats`, `creationDate`, `updationDate`) VALUES
(1, 'CSE101', 'DISCRETE MATHEMATICS', 1, '5', 30, '2024-01-08 22:05:21', '09-01-2024 03:58:58 AM'),
(2, 'CSE201', 'STRUCTURED PROGRAMMING', 1, '3', 30, '2024-01-08 22:05:54', '09-01-2024 03:59:24 AM'),
(3, 'EEE101', 'FUNDAMENTAL OF EEE', 2, '7', 30, '2024-01-08 22:06:54', '09-01-2024 03:59:36 AM'),
(4, 'EEE201', 'ADVANCE EEE', 2, '5', 30, '2024-01-08 22:07:22', '09-01-2024 03:59:45 AM'),
(5, 'ENG101', 'BASIC ENGLISH', 3, '2', 25, '2024-01-08 22:07:50', '09-01-2024 03:59:56 AM'),
(6, 'ENG201', 'ENGLISH LANGUAGE A-Z', 3, '3', 25, '2024-01-08 22:09:12', '09-01-2024 04:00:06 AM'),
(7, 'BBA101', 'BASICS OF BBA', 4, '5', 40, '2024-01-08 22:09:41', '09-01-2024 04:00:18 AM'),
(8, 'BBA201', 'ADVANCE OF BBA', 4, '7', 40, '2024-01-08 22:09:58', '09-01-2024 04:00:27 AM'),
(9, 'CSE301', 'OBJECT ORIENTED PROGRAMMING', 1, '4', 40, '2024-01-08 22:19:37', NULL),
(10, 'CSE301', 'OBJECT ORIENTED PROGRAMMING', 1, '4', 40, '2024-01-08 22:21:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courseenrolls`
--

CREATE TABLE `courseenrolls` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` int(11) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `course` int(11) DEFAULT NULL,
  `enrollDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courseenrolls`
--

INSERT INTO `courseenrolls` (`id`, `studentRegno`, `pincode`, `session`, `department`, `level`, `semester`, `course`, `enrollDate`) VALUES
(1, '213002039', '420612', 1, 1, 1, 1, 1, '2024-01-08 22:51:20'),
(2, '213002039', '420612', 1, 1, 1, 1, 2, '2024-01-08 22:51:46'),
(3, '213002039', '420612', 1, 3, 1, 1, 5, '2024-01-08 22:52:03'),
(4, '213002001', '902353', 1, 3, 1, 1, 5, '2024-01-08 22:54:42'),
(5, '213002001', '902353', 1, 3, 1, 1, 6, '2024-01-08 22:54:56'),
(6, '213002001', '902353', 1, 4, 1, 1, 7, '2024-01-08 22:55:09');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`, `creationDate`) VALUES
(1, 'CSE', '2024-01-08 22:04:20'),
(2, 'EEE', '2024-01-08 22:04:23'),
(3, 'ENGLISH', '2024-01-08 22:04:29'),
(4, 'BBA', '2024-01-08 22:04:34');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `level` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `level`, `creationDate`) VALUES
(1, '1', '2024-01-06 18:00:07'),
(2, '2', '2024-01-06 18:00:15');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `newstitle` varchar(255) DEFAULT NULL,
  `newsDescription` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `newstitle`, `newsDescription`, `postingDate`) VALUES
(1, 'Conducting Classes Online from 01 January 2024', 'This is for the information for all Faculty Members, Administrative Staff, and Students of Green University of Bangladesh that the classes scheduled from 01 to 10 January 2024 will be conducted online. However, the Fall 2023 examinations will be held in person at the campus. A separate notice regarding the examination schedule will be circulated by the Office of the Controller of Examinations.\r\n\r\nAll concerned have been requested to take necessary steps accordingly.', '2024-01-08 22:48:29'),
(2, 'Final Examinations, Fall 2023', 'This is to notify all students, faculty members and related administrative officers that the Final Examinations of Fall 2023 for all the academic programs of Green University of Bangladesh will be held in-person in the campus from 15 January to 27 January, 2024.\r\n\r\nStudents are advised to download their admit cards from student portal https://studentportal.green.edu.bd/ clearing all the dues to attend the Final Examinations. A digital copy of admit card will be available online from 10 January, 2024. Students are instructed to bring a printed copy of the admit card to appear at the examinations. Without accounts clearance the admit card cannot be downloaded. Students are not allowed to get entry into the examination hall without admit card and student ID card.\r\n', '2024-01-08 22:50:31');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `semester`, `creationDate`, `updationDate`) VALUES
(1, 'F24', '2024-01-08 22:04:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `session` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `session`, `creationDate`) VALUES
(1, '2024', '2024-01-08 22:03:58');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentRegno` varchar(255) NOT NULL,
  `studentPhoto` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `studentName` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `cgpa` decimal(10,2) DEFAULT NULL,
  `creationdate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentRegno`, `studentPhoto`, `password`, `studentName`, `pincode`, `session`, `department`, `semester`, `cgpa`, `creationdate`, `updationDate`, `department_id`) VALUES
('213002001', '1690859777566.jpeg', 'a8f06e42d38d1ab011f52e665ae1e892', 'RAPRU', '902353', NULL, '3', NULL, 3.59, '2024-01-08 22:39:43', NULL, NULL),
('213002028', NULL, '567b85d7b3da2b4e2f7ec385e6634380', 'MD ARAFAT', '753078', NULL, '1', NULL, NULL, '2024-01-08 22:38:59', NULL, NULL),
('213002039', '1620601529288.jpeg', '08c69ad7fa85673e117d5be41ef15a57', 'MD SAIFUL ISLAM RIMON', '420612', NULL, '1', NULL, 2.80, '2024-01-08 22:10:44', NULL, NULL),
('213002144', NULL, '44d66c99e27772bd3f2654d0d3260fed', 'MD SAYDUR', '156052', NULL, '2', NULL, NULL, '2024-01-08 22:39:25', NULL, NULL),
('213002145', NULL, '170cc8a8c28a7d1fa80a74cab39626df', 'MD RAYHAN', '278444', NULL, '4', NULL, NULL, '2024-01-08 22:40:22', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `studentRegno`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, '213002039', 0x3a3a3100000000000000000000000000, '2024-01-08 22:50:48', '09-01-2024 04:22:51 AM', 1),
(2, '213002001', 0x3a3a3100000000000000000000000000, '2024-01-08 22:53:00', '09-01-2024 04:25:20 AM', 1),
(3, '213002039', 0x3a3a3100000000000000000000000000, '2024-01-08 22:57:19', NULL, 1),
(4, '213002039', 0x3a3a3100000000000000000000000000, '2024-01-08 22:59:00', '09-01-2024 04:30:30 AM', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course` (`course`),
  ADD KEY `studentRegno` (`studentRegno`),
  ADD KEY `department` (`department`),
  ADD KEY `session` (`session`),
  ADD KEY `level` (`level`),
  ADD KEY `semester` (`semester`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentRegno`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `department` (`department`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  ADD CONSTRAINT `courseenrolls_ibfk_1` FOREIGN KEY (`course`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `courseenrolls_ibfk_2` FOREIGN KEY (`studentRegno`) REFERENCES `students` (`StudentRegno`),
  ADD CONSTRAINT `courseenrolls_ibfk_3` FOREIGN KEY (`department`) REFERENCES `department` (`id`),
  ADD CONSTRAINT `courseenrolls_ibfk_4` FOREIGN KEY (`session`) REFERENCES `session` (`id`),
  ADD CONSTRAINT `courseenrolls_ibfk_5` FOREIGN KEY (`level`) REFERENCES `level` (`id`),
  ADD CONSTRAINT `courseenrolls_ibfk_6` FOREIGN KEY (`semester`) REFERENCES `semester` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
