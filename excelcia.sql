-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2016 at 07:59 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `excelcia`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getLogin` (IN `username` VARCHAR(200), IN `pswrd` VARCHAR(200))  BEGIN
select * from personalinfo where username = lcase(username) and password = lcase(pswrd);
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getReviewtopic` ()  BEGIN
select id,topicname,description from reviewtopic;
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getStudyunits` (IN `rid` INT)  BEGIN
select id,reviewid,studyname,description,isparent,parentid from studyunits where reviewid = rid;
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getSubStudyunits` (IN `pid` INT(1))  BEGIN
select id,reviewid,studyname,description,isparent,parentid from studyunits where parentid = pid;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `examquestion`
--

CREATE TABLE `examquestion` (
  `id` int(11) NOT NULL,
  `topicid` int(11) NOT NULL,
  `subjid` int(11) NOT NULL,
  `level` varchar(11) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `a` varchar(500) NOT NULL,
  `b` varchar(500) NOT NULL,
  `c` varchar(500) NOT NULL,
  `d` varchar(500) NOT NULL,
  `a_rational` varchar(500) NOT NULL,
  `b_rational` varchar(500) NOT NULL,
  `c_rational` varchar(500) NOT NULL,
  `d_rational` varchar(500) NOT NULL,
  `correct_ans` varchar(10) NOT NULL,
  `minutes` varchar(20) NOT NULL,
  `point` int(2) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `examresulthistory`
--

CREATE TABLE `examresulthistory` (
  `id` int(11) DEFAULT NULL,
  `studentid` int(11) DEFAULT NULL,
  `examid` int(11) DEFAULT NULL,
  `studyid` int(11) DEFAULT NULL,
  `answer` varchar(5) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `pt` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `personalinfo`
--

CREATE TABLE `personalinfo` (
  `id` int(11) NOT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `contactno` varchar(50) DEFAULT NULL,
  `emailadd` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `usertype` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personalinfo`
--

INSERT INTO `personalinfo` (`id`, `lname`, `mname`, `fname`, `address`, `contactno`, `emailadd`, `username`, `password`, `usertype`, `status`) VALUES
(1, 'Llagas', 'Gatela', 'Louie', '075 San Juan Darangan Binangonan Rizal', '5511223', 'louie@gmail.com', 'louie', 'louie', 'teacher', 1),
(2, 'Manalastas', 'Angeles', 'Edd Cristian', 'Blooming', '2288221', 'ed.ca@gmail.com', 'edd', 'edd', 'student', 1),
(3, 'Aviso', 'Petalvero', 'Jefferson', 'Villa Gloria Angono Rizal', '8782212', 'foxy@gmail.com', 'jeff', 'jeff', 'student', 1),
(4, 'Dean', NULL, 'Alan', 'Taytay Rizal', '3223377', 'curamba.dean@gmail.com', 'alan', 'alan', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reviewmaterials`
--

CREATE TABLE `reviewmaterials` (
  `id` int(11) NOT NULL,
  `studyid` int(11) NOT NULL,
  `reviewid` int(11) NOT NULL,
  `attachment` varchar(500) NOT NULL,
  `filetype` varchar(100) NOT NULL,
  `extname` varchar(100) NOT NULL,
  `dateupload` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reviewresult`
--

CREATE TABLE `reviewresult` (
  `id` int(11) DEFAULT NULL,
  `reviewid` int(11) DEFAULT NULL,
  `rating` decimal(18,2) DEFAULT NULL,
  `datetimestarted` datetime DEFAULT NULL,
  `datetimeend` datetime DEFAULT NULL,
  `examresultlogid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reviewsession`
--

CREATE TABLE `reviewsession` (
  `id` int(11) NOT NULL,
  `sessionName` varchar(200) NOT NULL,
  `decription` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reviewtopic`
--

CREATE TABLE `reviewtopic` (
  `id` int(11) NOT NULL,
  `topicName` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviewtopic`
--

INSERT INTO `reviewtopic` (`id`, `topicName`, `description`) VALUES
(1, 'Part I', 'Internal Audit''s Role in Governance,Risk, and Control'),
(2, 'Part II', 'Conducting the Internal Audit Engagement');

-- --------------------------------------------------------

--
-- Table structure for table `studyunits`
--

CREATE TABLE `studyunits` (
  `id` int(11) NOT NULL,
  `reviewid` int(11) NOT NULL,
  `studyname` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL,
  `isparent` tinyint(1) NOT NULL,
  `parentid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studyunits`
--

INSERT INTO `studyunits` (`id`, `reviewid`, `studyname`, `description`, `isparent`, `parentid`) VALUES
(1, 1, 'Study Unit 1', 'Standards and Proficiency', 1, 0),
(2, 1, 'Study Unit 2', 'Charter, Independence and Objectivity', 1, 0),
(3, 1, 'Subunit 1', 'International Professional Practices Framework (IPPF)', 0, 1),
(4, 1, 'Subunit 2', 'Attribute Standards', 0, 1),
(5, 1, 'Subunit 1', 'Charter', 0, 2),
(6, 1, 'Subunit 2', 'Independence', 0, 2),
(7, 2, 'Study Unit 1', 'Engagement Information', 1, 0),
(8, 2, 'Study Unit 2', 'Communication Results and Monitoring Progress ', 1, 0),
(9, 2, 'Subunit 1', 'Indentifying Information', 0, 7),
(10, 2, 'Subunit 2', 'Analysis and Evaluation', 0, 7),
(11, 2, 'Subunit 1 ', 'Legal Consideration', 0, 8),
(12, 2, 'Subunit 2', 'Communication Criteria', 0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `userlogs`
--

CREATE TABLE `userlogs` (
  `id` int(11) NOT NULL,
  `loguser` varchar(15) NOT NULL,
  `logdate` datetime NOT NULL,
  `logdesc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlogs`
--

INSERT INTO `userlogs` (`id`, `loguser`, `logdate`, `logdesc`) VALUES
(1, 'alan/Dean, Alan', '2016-05-11 13:06:41', 'Good Login'),
(2, 'alan/Dean, Alan', '2016-05-11 13:06:47', 'Good Login'),
(3, 'alan/Dean, Alan', '2016-05-11 13:10:45', 'Good Login'),
(4, 'alan/Dean, Alan', '2016-05-12 07:00:19', 'Good Login'),
(5, 'alan/Dean, Alan', '2016-05-12 20:23:49', 'Good Login'),
(6, 'alan/Dean, Alan', '2016-05-12 20:40:13', 'Good Login'),
(7, 'jeff/Aviso, Jef', '2016-05-12 20:55:58', 'Good Login');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `examquestion`
--
ALTER TABLE `examquestion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personalinfo`
--
ALTER TABLE `personalinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviewsession`
--
ALTER TABLE `reviewsession`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviewtopic`
--
ALTER TABLE `reviewtopic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studyunits`
--
ALTER TABLE `studyunits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlogs`
--
ALTER TABLE `userlogs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `examquestion`
--
ALTER TABLE `examquestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `personalinfo`
--
ALTER TABLE `personalinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `reviewsession`
--
ALTER TABLE `reviewsession`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reviewtopic`
--
ALTER TABLE `reviewtopic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `studyunits`
--
ALTER TABLE `studyunits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `userlogs`
--
ALTER TABLE `userlogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
