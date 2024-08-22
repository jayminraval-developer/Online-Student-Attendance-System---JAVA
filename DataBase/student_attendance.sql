-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 05, 2023 at 04:13 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `uname` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `email`, `uname`, `password`) VALUES
(6, 'Deep Darji', 'chaudharykaushik18403@gmail.com', 'Kaushik123', '9586');

INSERT INTO `admin` (`id`, `admin_name`, `email`, `uname`, `password`) VALUES
(7, 'Jaymin Raval', 'jayminraval@gmail.com', 'Jaymin123', '7046');


-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

DROP TABLE IF EXISTS `inquiry`;
CREATE TABLE IF NOT EXISTS `inquiry` (
  `inquiry_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `message` varchar(400) DEFAULT NULL,
  `uname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`inquiry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`inquiry_id`, `name`, `mobile`, `email`, `message`, `uname`) VALUES
(1, 'jaymin', '954544551223', 'hdhhd@1234', 'We will check and solve or update your issue', 'jaymin@123'),
(2, 'Raval Jaymin', '704329246', 'jaymin123@gmail.com', 'We will check and solve or update your issue', 'jaymin@123'),
(3, 'Deep Darji', '9998306006', 'sxdc', 'We will check and solve or update your issue', 'jaymin@123'),
(4, 'Deep Darji', '95486156015', 'darjideeps27@gmail.com', 'We will check and solve or update your issue', 'deep123'),
(5, 'Darshan Jani', '7589658965', '	janidarshan11@gmail.com', 'Exam will be comes but Advance Java Technology Syllabus  are not completed, so sir i request to arrange extra lecture and possible to complete this ', 'darshan123'),
(7, 'Jaymin Mukeshbhai Raval', '7046294585', 'jayminraval@gmail.com', 'We will check and solve or update your issue', 'jaymin123'),
(8, 'Jaysinh rajput', '8544145879', 'jaysinh123@gmail.com', 'not regulars lecture take', 'jaysinh123');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `stud_name` varchar(100) DEFAULT NULL,
  `college_name` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `address` varchar(400) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `uname` varchar(45) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=1145 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `stud_name`, `college_name`, `mobile`, `address`, `email`, `uname`, `password`, `status`) VALUES
(1126, 'JAYMIN MUKESHBHAI RAVAL', 'DCS HNGU PATAN', '7046294543', 'Vill - Basu Ta-Vadgam Dist - B.k', 'darjideep27@gmail.com', 'jaymin123', '1111', 1),
(1127, 'YASH PARESHBHAI DARJI', 'DCS HNGU PATAN', '7043292546', 'Vill - jagana Ta-Palanpur dist- B.k', 'darjiyash27@gmail.com', 'yash123', 'bznbapSE7B', 0),
(1128, 'ARYAN PARESHBHAI DARJI', 'DCS HNGU PATAN', '9998306006', 'Vill jagana  Ta- Palanpur  DIst - B.K', 'darjiaryan12@gmail.com', 'aryan123', 'bQAnbPD@zq', 1),
(1129, 'MEET BHARATBHAI DARJI', 'DCS HNGU PATAN', '9998316006', 'At- Basu Ta - Vadgam Dist- B.k', 'darjimeet27@gmail.com', 'meet123', 'bPZa4nQvfz', 0),
(1130, 'NEEL PRAKASHBHAI DARJI', 'DCS HNGU PATAN', '7436067591', 'Rajkavada, Patan', 'darjineel2002@gmail.com', 'neel123', '1111', 0),
(1131, 'SAHAJ MAKBULBHAI MANSURI', 'DCS HNGU PATAN', '999831655', 'Megal, Ta-Vadgam, Dist-B.K', 'sahajmansuri@gmail.com', 'sahaj123', '1111', 1),
(1132, 'AKIB MOHAMMADBHAI MEMON', 'DCS HNGU PATAN', '9985412123', 'Siddhpur, Behind Hirapanna Complex ', 'akibmemon@gmail.com', 'akib123', '1111', 1),
(1133, 'YASH RAMESHBHAI MODI', 'DCS HNGU PATAN', '7046553417', 'Near Palikabazar, Patan', 'yashmodi28@gmail.com', 'yash123', '1111', 1),
(1134, 'ALISHA JAYESHKUMAR PATEL', 'DCS HNGU PATAN', '8563214569', 'Unjha', 'alishaptl33@gmail.com', 'alisha123', '1111', 0),
(1135, 'ARYAN BHARATKUMAR PATEL', 'DCS HNGU PATAN', '9966258745', 'PATAN', 'aryanpatel11@gmail.com', 'aryan123', '1111', 0),
(1136, 'ASHISH ARJANBHAI DOD', 'DCS HNGU PATAN', '7563258963', 'DEESA', 'ashishdod123@gmail.com', 'ashish123', '1111', 1),
(1137, 'AYUSHIBEN RAMESHBHAI PATEL', 'DCS HNGU PATAN', '8545632145', 'KIMBUVA,PATAN', 'ayushi34@gmail.com', 'ayushi123', '1111', 1),
(1138, 'BHAVI GANPATBHAI PATEL', 'DCS HNGU PATAN', '9563265741', 'UNJHA, Near arts collage', 'bhavipatel65@gmail.com', 'bhavi123', '1111', 0),
(1139, 'DARSHANKUMAR DINESHBHAI JANI', 'DCS HNGU PATAN', '8858969875', 'At - Dhanera ,banaskantha', 'janidarshan11@gmail.com', 'darshan123', '1111', 1),
(1140, 'DARSHIT ASHOKBHAI CHAUHAN', 'DCS HNGU PATAN', '7557568569', 'ahmedabad', 'darshit66@gmail.com', 'darshit123', '1111', 1),
(1141, 'DEEP SURESHBHAI PATEL', 'DCS HNGU PATAN', '9696562536', 'UNJHA,Near - Umiya mata temple', 'deeppatel55@gmail.com', 'deep12345', '11111', 0),
(1142, 'DEV JIGNESHBHAI RAMI', 'DCS HNGU PATAN', '8574124245', 'PATAN , Near Ranki vav', 'devrami99@gmail.com', 'dev123', '1111', 1),
(1143, 'OM MAHESHKUMAR PATEL', 'DCS HNGU PATAN', '7412588947', 'PATAN, Near TB Cross Road', 'ompatel22@gmail.com', 'om123', '1111', 1),
(1144, 'JAYSINH BALVANTSINH RAJPUT', 'DCS HNGU PATAN', '8586654569', 'At Siddhpur', 'jaysinh123@gmail.com', 'jaysinh123', '1111', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

DROP TABLE IF EXISTS `student_attendance`;
CREATE TABLE IF NOT EXISTS `student_attendance` (
  `student_id` int(11) DEFAULT NULL,
  `attendance` varchar(100) DEFAULT NULL,
  `system_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_attendance`
--

INSERT INTO `student_attendance` (`student_id`, `attendance`, `system_date`) VALUES
(1126, 'present', '2022-05-25'),
(1126, 'absent', '2022-05-27'),
(1126, 'present', '2022-05-28'),
(1126, 'present', '2022-05-29'),
(1127, 'present', '2022-05-29'),
(1128, 'present', '2022-05-29'),
(1126, 'absent', '2022-05-31'),
(1127, 'absent', '2022-05-31'),
(1128, 'absent', '2022-05-31'),
(1129, 'absent', '2022-05-31'),
(1127, 'present', '2022-06-01'),
(1128, 'absent', '2022-06-01'),
(1129, 'present', '2022-06-01'),
(1126, 'present', '2022-06-23'),
(1128, 'present', '2022-06-23'),
(1129, 'present', '2022-06-23'),
(1130, 'absent', '2022-06-23'),
(1131, 'absent', '2022-06-23'),
(1126, 'present', '2022-06-24'),
(1129, 'present', '2022-06-24'),
(1130, 'present', '2022-06-24'),
(1131, 'present', '2022-06-24'),
(1126, 'present', '2022-06-26'),
(1128, 'present', '2022-06-26'),
(1130, 'present', '2022-06-26'),
(1131, 'present', '2022-06-26'),
(1132, 'absent', '2022-06-26'),
(1133, 'present', '2022-06-26'),
(1136, 'absent', '2022-06-26'),
(1137, 'present', '2022-06-26'),
(1139, 'present', '2022-06-26'),
(1140, 'present', '2022-06-26'),
(1142, 'present', '2022-06-26'),
(1143, 'absent', '2022-06-26'),
(1126, 'present', '2022-06-29'),
(1128, 'present', '2022-06-29'),
(1130, 'present', '2022-06-29'),
(1131, 'present', '2022-06-29'),
(1132, 'absent', '2022-06-29'),
(1133, 'absent', '2022-06-29'),
(1136, 'absent', '2022-06-29'),
(1137, 'present', '2022-06-29'),
(1139, 'present', '2022-06-29'),
(1140, 'absent', '2022-06-29'),
(1142, 'present', '2022-06-29'),
(1143, 'present', '2022-06-29'),
(1144, 'present', '2022-06-29');

-- --------------------------------------------------------

--
-- Table structure for table `student_feedback`
--

DROP TABLE IF EXISTS `student_feedback`;
CREATE TABLE IF NOT EXISTS `student_feedback` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `feedback` varchar(400) DEFAULT NULL,
  `uname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_feedback`
--

INSERT INTO `student_feedback` (`fid`, `full_name`, `mobile`, `feedback`, `uname`) VALUES
(1, 'jaymin Raval', '9586332561', 'its good facility provide', 'jaymin@123'),
(2, 'Patel Om Maheshkumar', '7412588947', 'This software provide good functionality and features so easy to check attendance....', 'om123'),
(3, 'Darshit Ashokbhai Chauhan', '7557568569', 'Nice facility and easy to use.', 'darshit123'),
(4, 'Ayushi Rameshbhai Patel', '8563214569', 'This software use easy and provide more functionality like student are communicate with faculty easily and students wants to send advance leave report so easily send it and after send report faculty are approve or reject so check status easily', 'ayushi123'),
(5, 'Sahaj Mansuri', '7566258965', 'its provide wonderful facility instead of running system work mannually. ', 'sahaj123'),
(6, '', '', '', 'jaymin123');

-- --------------------------------------------------------

--
-- Table structure for table `student_leave`
--

DROP TABLE IF EXISTS `student_leave`;
CREATE TABLE IF NOT EXISTS `student_leave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `leave_reasone` varchar(400) DEFAULT NULL,
  `no_of_days` int(11) DEFAULT NULL,
  `leave_status` varchar(45) DEFAULT NULL,
  `leave_apply_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_leave`
--

INSERT INTO `student_leave` (`id`, `name`, `leave_reasone`, `no_of_days`, `leave_status`, `leave_apply_date`) VALUES
(1, 'Meet', 'wedffc', 1, 'Approved', '2022-05-29'),
(2, 'Jaymin', 'Brothers merraige', 5, 'Leave Rejected', '2022-05-29'),
(3, 'Jaymin', 'merraige ', 4, 'Approved', '2022-05-31'),
(4, 'Jaymin', 'go to home', 2, 'Pending', '2022-06-01'),
(5, 'Jaymin', 'ertyuikl', 3, 'Leave Rejected', '2022-06-22'),
(6, 'sahaj', 'go to merrage', 3, 'Leave Rejected', '2022-06-23'),
(7, 'SAHAJ MAKBULBHAI MANSURI', 'i am ill so not come to collage in next two days and i request you please approve my leave.', 2, 'Approved', '2022-06-26'),
(8, 'JAYMIN MUKESHBHAI RAVAL', 'I am going to Ahmedabad for playing cricket tournament so not come in collage next 3 days so please approve my leave.', 3, 'Pending', '2022-06-26'),
(9, 'JAYMIN MUKESHBHAI RAVAL', 'werthj', 2, 'Leave Rejected', '2022-06-27'),
(10, 'JAYMIN MUKESHBHAI RAVAL', 'my wedding', 5, 'Approved', '2022-06-29');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
