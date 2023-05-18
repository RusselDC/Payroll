-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2022 at 02:02 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payroll`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmpID` int(11) NOT NULL,
  `EmpName` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Position` varchar(50) NOT NULL,
  `HoursWorked` int(11) NOT NULL DEFAULT 0,
  `HourlyRate` double NOT NULL DEFAULT 0,
  `Taxes` double NOT NULL DEFAULT 0,
  `Allowance` int(11) NOT NULL DEFAULT 0,
  `Deductions` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmpID`, `EmpName`, `Address`, `Contact`, `Email`, `Position`, `HoursWorked`, `HourlyRate`, `Taxes`, `Allowance`, `Deductions`) VALUES
(3, 'Dela Cruz, Russel DC.', 'San Nicolas, Hagonoy, Bulacan', '09215774058', 'Delacruzrsus12@gmail.com', 'Sr. Software Engineer', 120, 1000, 12325, 3200, 1123),
(12, 'Dela Cruz, Juan S.', 'San Juan, Makati', '09215553040', 'JuanDC@gmail.com', 'Sr. Web Developer', 160, 950, 3750, 2300, 34234);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(6) NOT NULL,
  `Password` varchar(6) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`UserID`, `Username`, `Password`, `Email`) VALUES
(1, 'Admin', 'Admin1', 'Admin12@gmail.com'),
(2, 'Russel', 'Russel', 'Delacruzruss12@gmai.com'),
(3, 'Admin2', 'Admin1', 'Delacruzruss12@gmail.com'),
(5, 'Juan12', 'Juan12', 'Delacruzruss12@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmpID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EmpID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
