-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2023 at 04:08 PM
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
-- Database: `mypro_bbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL,
  `uname` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `uname`, `pass`) VALUES
(2, 'admin', 'a123');

-- --------------------------------------------------------

--
-- Table structure for table `donor_registration`
--

CREATE TABLE `donor_registration` (
  `did` int(11) NOT NULL,
  `dname` varchar(50) DEFAULT NULL,
  `dfname` varchar(50) DEFAULT NULL,
  `daddress` varchar(250) DEFAULT NULL,
  `dcity` varchar(50) DEFAULT NULL,
  `dage` varchar(25) DEFAULT NULL,
  `dbgroup` varchar(20) DEFAULT NULL,
  `demail` varchar(200) DEFAULT NULL,
  `dmno` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donor_registration`
--

INSERT INTO `donor_registration` (`did`, `dname`, `dfname`, `daddress`, `dcity`, `dage`, `dbgroup`, `demail`, `dmno`) VALUES
(25, 'Nikesh Adhikari', 'Akash Yadav', 'Nepal', 'Rautahad', '25', 'AB+', 'nikesh6543@gmail.com', '+915432187676'),
(26, 'Theertha K Sunil ', 'Sunil Kalathingal ', 'India', 'Bangalore ', '20', 'O+', 'theerthaksunil01@gmail.com', '9778326876'),
(29, 'Yuvraj Singh ', 'Ram Pratap Singh Rajput ', 'Nepal', 'Jeetpur ', '22', 'AB+', 'yyuvrajssingh2001@gmail.com', '07461847573'),
(32, 'Niraj Chaudhary ', 'Pramod Chaudhary ', 'Nepal ', 'Kathmandu ', '20', 'O+', 'jayniraj249@gmail.com', '9264406874'),
(33, 'Khushi kadel ', 'Jayesh kadel ', 'India ', 'Banglore ', '19', 'A-', 'khushikadel3@gmail.com', '9096399983'),
(34, 'Shiv Ranjan Kumar Adhikari ', 'Nageshwar yadav ', 'Nepal ', 'Janakpur ', '21', 'A+', 'meshiv747@gmail.com', '8809797904'),
(35, 'Prabhesh Yadav', 'Dhaneshwor Yadav', 'Nepal', 'Janakpurdham', '21', 'B+', 'yprabes4h4@gmail.com', '8797488021'),
(36, 'Ramu barai', 'Shreenewash barai', 'Nepal', 'Nawalparasi', '22', 'B+', 'rembrma325@gmail.com', '7754095172'),
(37, 'Ab Maxwell', 'Glenn De Villiers', 'Nepal', 'Butwal', '21', 'A+', 'bryan468477@gmail.com', '9036459486'),
(38, 'sanjiv233@gmail.com', 'Anil Kumar Priyadarshy', 'Nepal', 'Bangaluru ', '24', 'B+', 'sanjiv233@gmail.com', '8810430525'),
(39, 'Bibek Kumar Shah', 'Ram Shrestha sah sudi ', 'Nepal', 'Janakpur ', '23', 'B-', 'shahbibekkumar63@gmail.com', '9631825118'),
(40, 'Roshan Jha', 'Arun Jha', 'Nepal', 'Janakpur', '23', 'O+', 'roshanzhajha@gmail.com', '8147118115'),
(41, 'Divay Prakash Yadav', 'Bhogendra Yadav', 'Nepal', 'Janakpur', '16', 'A+', 'divayyadav505@gmail.com', '09973591772'),
(42, 'Dhiraj Yadav', 'Naresh Yadav', 'Nepal', 'Janakpur', '21', 'O+', 'adhikaridhiraj555@gmail.com', '9809650086'),
(43, 'Ravan', 'Prabhakar ', 'India ', 'Andhra Pradesh ', '19', 'O+', 'Ravan@gmail.com', '6034562783'),
(44, 'Harish Yadav', 'Mahesh chander', 'India ', 'Bangalore ', '21', 'B+', 'harishyadav222002@gmail.com', '6005310492'),
(45, 'L.Chandini', 'L.Parandhama Naidu', 'India', 'Banglore', '18', 'O+', 'chandini0209@gmail.com', '9346649710'),
(46, 'Kaveesha Viduranga', 'Jayarathne', 'Sri Lanka ', 'Colombo ', '22', 'O+', 'jtkvaero@gmail.com', '8123558463'),
(47, 'Kaustubh Anand Naik ', 'Anand Naik ', 'India ', 'Kanakpura ', '20', 'A+', 'kaustubhnaik8316@gmail.com', '9322748094'),
(48, 'Abishek Ranjan ', 'Sanjeeb sah', 'India ', 'Bangalore ', '21', 'B+', 'sahabishek9988@gmail.com', '+919162173820'),
(49, 'Anant pathak', 'Ghanshyam pathak ', 'Nepal', 'Bhairahawa', '20', 'O-', 'anantpathak560@gmail.com', '917227388'),
(50, 'Honey Roy ', 'Bunny Roy ', 'India ', 'Kolkata ', '34', 'AB-', 'iamhoneyroy@gmail.com', '2885685522'),
(51, 'Akash Kumar Sinha', 'Awadhesh Kumar', 'India', 'patna', '21', 'B-', 'aksinha295@gmail.com ', '9135047023'),
(52, 'Mikhail Janli Purba', 'Darmas Jani Purba', 'Indonesia', 'Medan', '19', 'O-', 'janli.purba@gmail.com', '+919972800908'),
(53, 'Samim Khan', 'Kalamuddin Khan', 'Nepal', 'Bhairahawa', '21', 'A-', 'samimkhan1133557799@gmail.com', '8951818753'),
(54, 'Basant kumar Chaudhary ', 'Nabin kumar Chaudhary ', 'Nepal', 'Janakpur', '20', 'A-', 'Smileysaurabh7@gmail.com ', '9819849165'),
(55, 'Jay Prakash Sah', 'Ganga Sah', 'Nepal', 'Janakpur', '20', 'AB-', 'jayprakash98450@gmail.com', '+916366622321'),
(56, 'Shakil Ahsan ', 'Ali Miah ', 'Bangaldesh', 'Dhaka', '24', 'O-', 'shakilashanfast54321@gmail.com', '+918618517546'),
(57, 'Yogesh Aaryaveer', 'Sanjiv sah', 'Nepal', 'Birgunj', '22', 'B+', 'yogeshaaryaveer1234@gmail.com', '+918754678346');

-- --------------------------------------------------------

--
-- Table structure for table `exchange_b`
--

CREATE TABLE `exchange_b` (
  `eid` int(11) NOT NULL,
  `ename` varchar(50) DEFAULT NULL,
  `efname` varchar(50) DEFAULT NULL,
  `eaddress` varchar(250) DEFAULT NULL,
  `ecity` varchar(50) DEFAULT NULL,
  `eage` varchar(25) DEFAULT NULL,
  `ebgroup` varchar(20) DEFAULT NULL,
  `emno` varchar(200) DEFAULT NULL,
  `eemail` varchar(50) DEFAULT NULL,
  `exbgroup` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exchange_b`
--

INSERT INTO `exchange_b` (`eid`, `ename`, `efname`, `eaddress`, `ecity`, `eage`, `ebgroup`, `emno`, `eemail`, `exbgroup`) VALUES
(40, 'Tatsat', 'Twetat', 'India', 'Odisha', '34', 'B+', '+9187564356', 'tatsat876@gmail.con', 'A-');

-- --------------------------------------------------------

--
-- Table structure for table `out_stock_b`
--

CREATE TABLE `out_stock_b` (
  `oid` int(11) NOT NULL,
  `obname` varchar(50) DEFAULT NULL,
  `oname` varchar(50) DEFAULT NULL,
  `omno` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `out_stock_b`
--

INSERT INTO `out_stock_b` (`oid`, `obname`, `oname`, `omno`) VALUES
(26, 'B+', 'Shibu Gupta', '+919874562345'),
(27, 'O+', 'Yogesh AaryaVeer', '+91665365672'),
(28, 'B+', 'Aishwarya Roy ', '9163263933'),
(29, 'AB+', 'Abishek Kumar Sah', '+918757572837'),
(30, 'A+', 'Arunabh Sharma', '+919905118794'),
(31, 'B+', 'Nitesh chaudhary', '9804832591'),
(32, 'AB+', 'Sayujaya Sharma', '+917873647385'),
(33, 'B+', 'Dj vikas ', '9380836212'),
(34, 'B+', 'Cheedella Yasasvi', '9490828558');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `donor_registration`
--
ALTER TABLE `donor_registration`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `exchange_b`
--
ALTER TABLE `exchange_b`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `out_stock_b`
--
ALTER TABLE `out_stock_b`
  ADD PRIMARY KEY (`oid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `donor_registration`
--
ALTER TABLE `donor_registration`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `exchange_b`
--
ALTER TABLE `exchange_b`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `out_stock_b`
--
ALTER TABLE `out_stock_b`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
