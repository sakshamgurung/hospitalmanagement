-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 29, 2019 at 08:29 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitalmanagerworkingcopy5`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `uname` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  KEY `uname` (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`uname`, `fname`, `mname`, `lname`) VALUES
('auname3', 'a3', 'a3', 'a3'),
('auname4', 'Shyam', 'K.', 'Baniya');

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

DROP TABLE IF EXISTS `admin_login`;
CREATE TABLE IF NOT EXISTS `admin_login` (
  `uname` varchar(20) NOT NULL,
  `password` char(128) NOT NULL,
  `email` varchar(20) NOT NULL,
  PRIMARY KEY (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`uname`, `password`, `email`) VALUES
('auname3', '$2y$10$VAoKEYz/sW2Y5BFyGeoBUubnRXvMwFzHu/fDkXG.mTUmHH3iznuEm', 'auname3@gmail.com'),
('auname4', '$2y$10$KC0rt35S1RtEaxWYwuY2ju/bbOBepScsXYcgP72/peHgJoBHcqP2u', 'auname4@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `attend_info`
--

DROP TABLE IF EXISTS `attend_info`;
CREATE TABLE IF NOT EXISTS `attend_info` (
  `doc_id` int(10) NOT NULL,
  `pt_id` int(10) NOT NULL,
  `report_no` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `doc_id` (`doc_id`),
  KEY `pt_id` (`pt_id`),
  KEY `report_no` (`report_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attend_info`
--

INSERT INTO `attend_info` (`doc_id`, `pt_id`, `report_no`, `date`) VALUES
(12, 5, 1, '2018-08-07 17:44:43'),
(12, 5, 3, '2018-08-08 11:39:34'),
(12, 5, 4, '2018-08-08 11:44:32'),
(12, 5, 5, '2018-08-08 12:54:56'),
(12, 5, 6, '2018-08-08 13:02:34'),
(12, 5, 7, '2018-08-08 13:09:51'),
(12, 4, 8, '2018-08-08 13:12:44'),
(12, 9, 9, '2018-08-08 14:21:33'),
(12, 5, 10, '2018-08-08 17:41:27'),
(12, 5, 11, '2018-08-08 17:51:53'),
(12, 5, 12, '2018-08-09 07:46:43'),
(14, 11, 13, '2018-08-10 01:07:15'),
(14, 11, 14, '2018-08-10 01:08:15'),
(14, 11, 15, '2018-08-10 01:09:07'),
(14, 15, 16, '2018-08-10 01:30:40'),
(12, 16, 17, '2018-08-11 06:56:21');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `dept_id` int(10) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(20) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`) VALUES
(1, 'administration'),
(2, 'receptionist'),
(3, 'child'),
(4, 'woman'),
(5, 'skin'),
(6, 'ent'),
(7, 'emergency');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `doc_id` int(10) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  PRIMARY KEY (`doc_id`),
  KEY `uname` (`uname`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doc_id`, `uname`, `fname`, `mname`, `lname`, `dob`) VALUES
(12, 'duname5', 'd5', 'd5', 'd5', '1990-01-06'),
(13, 'duname6', 'd6', 'd6', 'd6', '1980-02-03'),
(14, 'duname7', 'Krishna', 'Bahadur', 'Sapkota', '1980-02-03'),
(15, 'duname8', 'Mohan', 'Bahadur', 'Nepal', '1980-02-03');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_contact`
--

DROP TABLE IF EXISTS `doctor_contact`;
CREATE TABLE IF NOT EXISTS `doctor_contact` (
  `uname` varchar(20) NOT NULL,
  `doc_id` int(10) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `city` varchar(10) NOT NULL,
  `ward` int(11) NOT NULL,
  `district` varchar(20) NOT NULL,
  KEY `uname` (`uname`),
  KEY `doc_id` (`doc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_contact`
--

INSERT INTO `doctor_contact` (`uname`, `doc_id`, `phone`, `city`, `ward`, `district`) VALUES
('duname5', 12, '6666666', 'p', 6, 'k'),
('duname6', 13, '98567325366', 'Hetauda', 12, 'Makawanpur'),
('duname7', 14, '9832457344', 'Waling', 11, 'Sanja'),
('duname8', 15, '001-4444444', 'pokhara', 2, 'kaski');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_login`
--

DROP TABLE IF EXISTS `doctor_login`;
CREATE TABLE IF NOT EXISTS `doctor_login` (
  `uname` varchar(20) NOT NULL,
  `password` char(128) NOT NULL,
  `email` varchar(20) NOT NULL,
  PRIMARY KEY (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_login`
--

INSERT INTO `doctor_login` (`uname`, `password`, `email`) VALUES
('duname5', '$2y$10$Cs5VY8E36mVgPEgDOI7crO9aWw7UypSoA.OzBuXpeYn1P4ndfuOpS', 'duname5@gmail.com'),
('duname6', '$2y$10$n5kS594VYKmCXipy8Hn2D.UealPOabXGaIJfyMs4UvaGIuZA5rOBy', 'duname6@gmail.com'),
('duname7', '$2y$10$Wxl.m.pazcnv375JkA9G.eAurBMXHqQZv5fAJCHv099pMI9gRS5G6', 'duname7@gmail.com'),
('duname8', '$2y$10$JIxfnWD0bFJyaJ9jVkVTSOoAHC94AEIYIEYRZbeR.zoLpA4FJLI2y', 'duname8@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_official_info`
--

DROP TABLE IF EXISTS `doctor_official_info`;
CREATE TABLE IF NOT EXISTS `doctor_official_info` (
  `doc_id` int(10) NOT NULL,
  `dept_id` int(10) DEFAULT NULL,
  `post` varchar(20) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `doc_lvl` varchar(20) NOT NULL,
  `doc_specialist` varchar(20) NOT NULL,
  KEY `doc_id` (`doc_id`),
  KEY `dept_id` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_official_info`
--

INSERT INTO `doctor_official_info` (`doc_id`, `dept_id`, `post`, `qualification`, `doc_lvl`, `doc_specialist`) VALUES
(12, NULL, 'doctor', 'MD', 'junior', 'ent'),
(13, NULL, 'doctor', 'MBBS', 'Junior', 'ent'),
(14, NULL, 'doctor', 'MD', 'senior', 'Woman health'),
(15, NULL, 'doctor', 'MD', 'senior', 'Heart');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `pt_id` int(10) NOT NULL AUTO_INCREMENT,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `blood_grp` varchar(5) DEFAULT NULL,
  `problem` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `sex` char(1) NOT NULL,
  `ward_no` varchar(20) DEFAULT NULL,
  `room_no` varchar(10) DEFAULT NULL,
  `bed_no` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`pt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pt_id`, `fname`, `mname`, `lname`, `dob`, `blood_grp`, `problem`, `status`, `sex`, `ward_no`, `room_no`, `bed_no`) VALUES
(1, 'p1', 'p1', 'p1', '2000-01-06', NULL, 'ent', 'normal', 'm', '111', '11', '1'),
(2, 'p2', 'p2', 'p2', '2000-01-02', NULL, 'child', 'normal', 'f', '222', '22', '2'),
(3, 'p3', 'p3', 'p3', '2000-03-03', NULL, 'skin', 'emergency', 'f', '333', '33', '3'),
(4, 'p4', 'p4', 'p4', '1998-01-02', 'B', 'skin', 'Not good', 'm', '', '0', '0'),
(5, 'p5', 'p5', 'p5', '2000-01-06', 'aaa', 'heart', 'Good', 'm', '6', '6', '6'),
(7, 'p6', 'p6', 'p6', '2000-01-03', NULL, 'ent', 'normal', 'm', '', '0', '0'),
(8, 'ram', 'bahadur', 'baral', '2000-01-06', NULL, 'skin', 'normal', 'm', '123', '342', '34'),
(9, 'Ram', 'Bahadur', 'Kumar', '1980-02-03', 'A', 'throat', 'Good', 'm', '', '0', '0'),
(10, 'Sita', 'Kumari', 'Thapa', '1990-02-06', NULL, 'ENT', 'emergency', 'f', '', '0', '0'),
(11, 'Maya', 'Kumari', 'Pun', '1980-12-05', 'AB', 'Headache', 'Good', 'f', '', '0', '0'),
(12, 'Min', 'Kumari', 'yadav', '1960-01-02', NULL, 'Woman health', 'normal', 'f', '', '0', '0'),
(13, 'Sitay', 'Kumari', 'Rama', '1980-02-03', NULL, 'Woman health', 'emergency', 'f', '12', '4', '56'),
(14, 'Hari', 'Maya', 'Basnet', '1980-02-03', NULL, 'Woman health', 'emergency', 'f', '', '0', '0'),
(15, 'sitag', 'Kumari', 'Nepal', '1980-02-03', '', 'Woman health', 'emergency', 'f', '', '0', '0'),
(16, 'Suman', 'Bahadur', 'Thapa', '1980-02-03', 'B', 'skin', 'Good', 'm', '', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `patient_contact`
--

DROP TABLE IF EXISTS `patient_contact`;
CREATE TABLE IF NOT EXISTS `patient_contact` (
  `pt_id` int(10) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `ward` int(11) NOT NULL,
  `district` varchar(20) NOT NULL,
  KEY `pt_id` (`pt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_contact`
--

INSERT INTO `patient_contact` (`pt_id`, `phone`, `city`, `ward`, `district`) VALUES
(1, '111111', 'p', 1, 'k'),
(2, '22222', 'p', 2, 'k'),
(3, '333333', 'p', 3, 'k'),
(4, '4444444', 'p', 4, 'k'),
(5, '666666', 'p', 5, 'k'),
(7, '66666', 'p', 6, 'k'),
(8, '06134234', 'pokhara', 12, 'kaski'),
(9, '091343244', 'lekhnath', 23, 'kaski'),
(10, '98122375486', 'Pokhara', 12, 'Kaski'),
(11, '061-232424', 'baglung', 12, 'Baglung'),
(12, '23-1143232', 'Kapilbastu', 12, 'Lumbini'),
(13, '1342-45465', 'Kapilbastu', 3, 'Lumbini'),
(14, '01-4444444', 'kathmandu', 1, 'bagmati'),
(15, '01-4444444', 'lekhnath', 12, 'kaski'),
(16, '061-2222226', 'pokhara', 1, 'kaski');

-- --------------------------------------------------------

--
-- Table structure for table `patient_doctor_assignment`
--

DROP TABLE IF EXISTS `patient_doctor_assignment`;
CREATE TABLE IF NOT EXISTS `patient_doctor_assignment` (
  `staff_id` int(10) NOT NULL,
  `pt_id` int(10) NOT NULL,
  `doc_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `staff_id` (`staff_id`),
  KEY `pt_id` (`pt_id`),
  KEY `report_no` (`doc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_doctor_assignment`
--

INSERT INTO `patient_doctor_assignment` (`staff_id`, `pt_id`, `doc_id`, `date`) VALUES
(0, 7, 9, '2018-08-06 14:36:33'),
(5, 8, 11, '2018-08-07 08:49:11'),
(5, 5, 12, '2018-08-07 16:24:13'),
(5, 4, 12, '2018-08-07 16:24:13'),
(5, 3, 12, '2018-08-07 16:24:13'),
(5, 9, 12, '2018-08-08 14:18:37'),
(5, 10, 12, '2018-08-10 00:01:45'),
(5, 11, 14, '2018-08-10 00:16:04'),
(5, 12, 14, '2018-08-10 00:58:17'),
(5, 13, 14, '2018-08-10 00:59:14'),
(5, 14, 14, '2018-08-10 01:03:59'),
(5, 15, 14, '2018-08-10 01:28:51'),
(5, 16, 12, '2018-08-11 05:14:08');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
CREATE TABLE IF NOT EXISTS `report` (
  `report_no` int(10) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sugar_lvl` varchar(10) DEFAULT NULL,
  `bp` varchar(10) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `health_note` text,
  `medicine` text,
  PRIMARY KEY (`report_no`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`report_no`, `date`, `sugar_lvl`, `bp`, `weight`, `health_note`, `medicine`) VALUES
(1, '2018-08-08 05:45:27', '6', '80/90', 75, 'Critical Condition of blood pressure', 'PX 900 Rhino'),
(3, '2018-08-08 11:39:34', '3', '80/120', 78, 'Heart problem due to thick blood', 'HeartL 900'),
(4, '2018-08-08 11:44:32', '2', '100/100', 60, 'Heart Attack due to alcoholconsumption', 'PX800'),
(5, '2018-08-08 12:54:56', '3', '80/120', 50, 'Ear filled by water', 'PX444'),
(6, '2018-08-08 13:02:34', '1', '80/90', 90, 'Ear wax', '900Pxx'),
(7, '2018-08-08 13:09:51', '3.3', '100/100', 88, 'Good', 'TXT800'),
(8, '2018-08-08 13:12:44', '7.7', '80/90', 70, 'Minor illergy', 'Trex600'),
(9, '2018-08-08 14:21:33', '4', '80/90', 80, 'Smoking is injurious to health', 'Apple10'),
(10, '2018-08-08 17:41:27', '6', '90/120', 80, 'Due Cold and illergy', 'SET888'),
(11, '2018-08-08 17:51:53', '3.3', '80/90', 75, 'Improving headache', 'Plenty of water'),
(12, '2018-08-09 07:46:43', '1', '80/120', 244, 'Colestrol', 'asdfsa'),
(13, '2018-08-10 01:07:15', '3', '80/90', 75, 'Due to age', 'PX 900 REG'),
(14, '2018-08-10 01:08:15', '3.3', '80/120', 88, 'Hormon problem', 'TX6777'),
(15, '2018-08-10 01:09:07', '3', '90/120', 88, 'Minor fever', 'TCP/IP900'),
(16, '2018-08-10 01:30:40', '3.3', '90/120', 80, 'due to age', 'PTX900'),
(17, '2018-08-11 06:56:21', '6', '80/120', 100, 'Allergy and dust', 'TI 900');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `staff_id` int(10) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  PRIMARY KEY (`staff_id`),
  KEY `uname` (`uname`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `uname`, `fname`, `mname`, `lname`, `dob`) VALUES
(1, 'uname1', 's1', 's1', 's1', '2000-01-03'),
(2, 'uname2', 's2', 's2', 's2', '2000-01-03'),
(3, 'uname3', 's3', 's3', 's3', '2000-01-03'),
(4, 'uname4', 's4', 's4', 's4', '2000-01-03'),
(5, 'uname5', 's7', 's7', 's7', '2000-01-03'),
(6, 'name5', 'Hari', 'bahadur', 'Nepal', '2000-01-03'),
(7, 'uname10', 'Man', 'Mohan', 'Yadav', '1980-02-03');

-- --------------------------------------------------------

--
-- Table structure for table `staff_contact`
--

DROP TABLE IF EXISTS `staff_contact`;
CREATE TABLE IF NOT EXISTS `staff_contact` (
  `uname` varchar(20) NOT NULL,
  `staff_id` int(10) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `ward` int(11) NOT NULL,
  `district` varchar(20) NOT NULL,
  KEY `uname` (`uname`),
  KEY `staff_id` (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_contact`
--

INSERT INTO `staff_contact` (`uname`, `staff_id`, `phone`, `city`, `ward`, `district`) VALUES
('uname1', 1, '111111', 'p', 1, 'k'),
('uname2', 2, '222222', 'p', 2, 'k'),
('uname3', 3, '333333', 'p', 3, 'k'),
('uname4', 4, '44444444', 'p', 4, 'k'),
('uname5', 5, '7777777', 'p', 7, 'k'),
('name5', 6, '01-4444444', 'kathmandu', 2, 'bagmati'),
('uname10', 7, '061-22225555', 'Kapilbastu', 12, 'Lumbini');

-- --------------------------------------------------------

--
-- Table structure for table `staff_login`
--

DROP TABLE IF EXISTS `staff_login`;
CREATE TABLE IF NOT EXISTS `staff_login` (
  `uname` varchar(20) NOT NULL,
  `password` char(128) NOT NULL,
  `email` varchar(20) NOT NULL,
  PRIMARY KEY (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_login`
--

INSERT INTO `staff_login` (`uname`, `password`, `email`) VALUES
('name5', '$2y$10$gckBwUBX5QezeNDbgI5zGeoTYxtne7A7nF6bQzWkpOG..fNmPgFWG', 'uname3@gmail.com'),
('uname1', 'password', 'uname1@gmail.com'),
('uname10', '$2y$10$hQWHCvkj8OsOWiRXAlMuPuVARkR3HDnbzqACv7KtO0Al5lA/Doa/6', 'uname10@gmail.com'),
('uname2', 'password', 'uname2@gmail.com'),
('uname3', 'password', 'uname3@gmail.com'),
('uname4', '$2y$10$F71snj4kFOOanpebXY7yV.Na609WbE0YP8RjkNUSzz.uZDLVUqvnG', 'uname4@gmail.com'),
('uname5', '$2y$10$XsyoNUN6czvwZS9ODnUczOVSUVwip3HBlmwHvfq2THXlrUx6XfiZW', 'uname5@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `staff_official_info`
--

DROP TABLE IF EXISTS `staff_official_info`;
CREATE TABLE IF NOT EXISTS `staff_official_info` (
  `staff_id` int(10) NOT NULL,
  `dept_id` int(10) DEFAULT NULL,
  `post` varchar(20) NOT NULL,
  `qualification` text NOT NULL,
  KEY `staff_id` (`staff_id`),
  KEY `dept_id` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_official_info`
--

INSERT INTO `staff_official_info` (`staff_id`, `dept_id`, `post`, `qualification`) VALUES
(1, NULL, 'receptionist', 'ba'),
(2, NULL, 'receptionist', 'ba'),
(3, NULL, 'receptionist', '+2'),
(4, NULL, 'receptionist', 'BSC'),
(5, NULL, 'receptionist', 'BSC'),
(6, NULL, 'receptionist', 'SLC'),
(7, NULL, 'receptionist', 'BSC');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `patient_contact`
--
ALTER TABLE `patient_contact`
  ADD CONSTRAINT `patient_contact_ibfk_1` FOREIGN KEY (`pt_id`) REFERENCES `patient` (`pt_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
