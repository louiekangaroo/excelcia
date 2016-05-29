-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.13-MariaDB


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema excelcia
--

CREATE DATABASE IF NOT EXISTS excelcia;
USE excelcia;

--
-- Definition of table `examquestion`
--

DROP TABLE IF EXISTS `examquestion`;
CREATE TABLE `examquestion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topicid` int(11) NOT NULL,
  `subjid` int(11) NOT NULL,
  `level` varchar(50) NOT NULL,
  `question` varchar(500) NOT NULL,
  `a` varchar(100) NOT NULL,
  `b` varchar(100) NOT NULL,
  `c` varchar(100) NOT NULL,
  `d` varchar(100) NOT NULL,
  `a_rational` varchar(500) NOT NULL,
  `b_rational` varchar(500) NOT NULL,
  `c_rational` varchar(500) NOT NULL,
  `d_rational` varchar(500) NOT NULL,
  `correct_ans` varchar(100) NOT NULL,
  `minutes` int(10) unsigned NOT NULL,
  `point` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examquestion`
--

/*!40000 ALTER TABLE `examquestion` DISABLE KEYS */;
INSERT INTO `examquestion` (`id`,`topicid`,`subjid`,`level`,`question`,`a`,`b`,`c`,`d`,`a_rational`,`b_rational`,`c_rational`,`d_rational`,`correct_ans`,`minutes`,`point`,`type`) VALUES 
 (1,1,3,'1','the machine that changed the world','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','c',1,1,'easy'),
 (2,2,2,'2','names whom contributed for the development of computers','a.) C.Babbage / T.Flowers / K. Warwick / Jeremy','b.) A. Turing / C.Babbage / Jeremy','c.) T.Flowers / A.Turing / K. Warwick / C. Babbage','d.) all of the above.','a.) C.Babbage / T.Flowers / K. Warwick / Jeremy','b.) A. Turing / C.Babbage / Jeremy','c.) T.Flowers / A.Turing / K. Warwick / C. Babbage','d.) all of the above.','c',1,1,'easy'),
 (3,3,1,'3','father of computer','a.) Charles Babbage','b.) Alan Turing','c.) Kevin Warwick','d.) none of the above','a.) Charles Babbage','b.) Alan Turing','c.) Kevin Warwick','d.) none of the above','a',1,1,'easy'),
 (4,1,3,'4','father of computer science','a.) Charles Babbage','b.) Alan Turing','c.) Kevin Warwick','d.) none of the above','a.) Charles Babbage','b.) Alan Turing','c.) Kevin Warwick','d.) none of the above','b',1,1,'easy'),
 (5,2,2,'5','he developed colossus.','a.) Charles Babbage','b.) Alan Turing','c.) Kevin Warwick','d.) none of the above','a.) Charles Babbage','b.) Alan Turing','c.) Kevin Warwick','d.) none of the above','d',2,1,'easy'),
 (6,3,1,'1','dr. artificial intelligent / robotics, that got a microhip implant, w/c intends to remotely control a robotic arm','a.) Charles Babbage','b.) Alan Turing','c.) Kevin Warwick','d.) none of the above','a.) Charles Babbage','b.) Alan Turing','c.) Kevin Warwick','d.) none of the above','c',2,1,'easy'),
 (7,1,3,'2','would be use to destroy computer/AI','a.) Electro-Magnetic-Interference','b.) Electro-Magnetic-Pulse','c.) Nuclear bom','d.) both A & B','a.) Electro-Magnetic-Interference','b.) Electro-Magnetic-Pulse','c.) Nuclear bom','d.) both A & B','d',2,1,'easy'),
 (8,2,2,'3','composed of electronic valves and wires (a machine that is as big enough to occupy the entire building floor)','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','c',2,1,'easy'),
 (9,3,1,'4','miniturized electronic component (a complex electronic part composed of several thousand of colossus circuits)','a.) integrated circuits','b.) silicon chips','c.) microchips','d.) all of the above','a.) integrated circuits','b.) silicon chips','c.) microchips','d.) all of the above','d',1,1,'easy'),
 (10,1,3,'5','a man made machine capable to automate human task','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','d',1,1,'moderate'),
 (11,2,2,'1','refers to the physical tangible computer itself (an element of a complete computer system)','a.) people ware','b.) software','c.) hardware','d.) all of the above','a.) people ware','b.) software','c.) hardware','d.) all of the above','c',1,1,'moderate'),
 (12,3,1,'2','refers to the programs/system/machine instructions that is made by programmers.','a.) people ware','b.) software','c.) hardware','d.) all of the above','a.) people ware','b.) software','c.) hardware','d.) all of the above','b',1,1,'moderate'),
 (13,1,3,'3','refers to user/coders/programmers/computer operators (an element of a complete computer system)','a.) people ware','b.) software','c.) hardware','d.) all of the above','a.) people ware','b.) software','c.) hardware','d.) all of the above','a',1,1,'moderate'),
 (14,2,2,'4','smallest unit of measurement use to measure; capacity to hold information or data, capacity to process, and etc.','a.) byte','b.) bit','c.) kilobyte','d. all of the above','a.) byte','b.) bit','c.) kilobyte','d. all of the above','b',3,1,'moderate'),
 (15,3,1,'5','if I have 3bytes how many characters do I have?','a.) 18','b.) 24','c.) 36','d.) none of the above','a.) 18','b.) 24','c.) 36','d.) none of the above','d',3,1,'moderate'),
 (16,1,3,'1','volatile memory of a computer','a.) RAM','b.) ROM','c.) BIOS','d.) CMOS','a.) RAM','b.) ROM','c.) BIOS','d.) CMOS','a',3,1,'moderate'),
 (17,2,2,'2','a memory type used to hold the configuration/settings of the computer (including system date & time)','a.) RAM','b.) ROM','c.) BIOS','d.) CMOS','a.) RAM','b.) ROM','c.) BIOS','d.) CMOS','b',4,1,'moderate'),
 (18,3,1,'3','a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks','a.) system','b.) program','c.) machine instructions','d.) all of the above','a.) system','b.) program','c.) machine instructions','d.) all of the above','a',4,1,'moderate'),
 (19,1,3,'4','a collection of commands written by a programmer to accomplish specific task','a.) system','b.) program','c.) machine instructions','d.) all of the above','a.) system','b.) program','c.) machine instructions','d.) all of the above','b',1,1,'moderate'),
 (20,2,2,'5','if i have 2 characters how many bytes do i have','a.) 8','b.) 16','c.) 2','d.) none of the above','a.) 8','b.) 16','c.) 2','d.) none of the above','c',1,1,'difficult'),
 (21,3,1,'1','keyboard is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','a',1,1,'difficult'),
 (22,1,3,'2','mouse is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','a',1,1,'difficult'),
 (23,2,2,'3','speaker is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','b',2,1,'difficult'),
 (24,3,1,'4','RFID tag reader is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','a',2,1,'difficult'),
 (25,1,3,'5','printer is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','b',2,1,'difficult'),
 (26,2,2,'1','momentary storage of a computer','a.) RAM','b.) ROM','c.) BIOS','d.) CMOS','a.) RAM','b.) ROM','c.) BIOS','d.) CMOS','a',2,1,'difficult'),
 (27,3,1,'2','the particular computer memory which contains the configuration/settings of a computer','a.) RAM','b.) ROM','c.) BIOS','d.) both b & c','a.) RAM','b.) ROM','c.) BIOS','d.) both b & c','d',1,1,'difficult'),
 (28,1,3,'3','if i have 24bits how many characters do i have.','a.) 24','b.) 12','c.) 3','d.) none of the above','a.) 24','b.) 12','c.) 3','d.) none of the above','c',1,1,'difficult'),
 (29,2,2,'4','this controls the basic i/o processing of a computer','a.) RAM','b.) ROM','c.) BIOS','d.) none of the above','a.) RAM','b.) ROM','c.) BIOS','d.) none of the above','c',1,1,'difficult'),
 (30,3,1,'5','raw facts, events or happening. this is processed in order to provide an information','a.) data','b.) information','c.) IS','d.) none of the above','a.) data','b.) information','c.) IS','d.) none of the above','a',1,1,'easy'),
 (31,1,3,'1','a collection of facts organized in such a way that they have additional value beyond the facts themselves.','a.) data','b.) information','c.) IS','d.) none of the above','a.) data','b.) information','c.) IS','d.) none of the above','b',1,1,'easy'),
 (32,2,2,'2','typically considered to be a set of interrelated elements or components that collect (input), manipulate(processes), and dissiminate(output) and information and provide a feedback mechanism to meet an objective.','a.) data','b.) information','c.) IS','d.) none of the above','a.) data','b.) information','c.) IS','d.) none of the above','c',3,1,'easy'),
 (33,3,1,'3','provides information and supports needed for effective decision making by managers','a.) MIS','b.) DSS','c.) ES','d.) none of the above','a.) MIS','b.) DSS','c.) ES','d.) none of the above','d',3,1,'easy'),
 (34,1,3,'4','automate office procedures and enhance office communications and productivity','a.) MIS','b.) DSS','c.) ES','d.) none of the above','a.) MIS','b.) DSS','c.) ES','d.) none of the above','d',3,1,'easy'),
 (35,2,2,'5','Provide critical information tailored to the information needs of executives.','a.) MIS','b.) DSS','c.) ESS','d.) none of the above','a.) MIS','b.) DSS','c.) ESS','d.) none of the above','c',4,1,'easy'),
 (36,3,1,'1','a SAD model of development that is linear and sequential.','a.) SCRUM','b.) AGILE','c.) WaterFall','d.) none of the above','a.) SCRUM','b.) AGILE','c.) WaterFall','d.) none of the above','c',4,1,'easy'),
 (37,1,3,'2','is a time boxed, iteractive approach to software development that builds software incrementally from the start of the project, instead of trying to deliver it all at once near the end.','a.) SCRUM','b.) AGILE','c.) WaterFall','d.) none of the above','a.) SCRUM','b.) AGILE','c.) WaterFall','d.) none of the above','b',1,1,'easy'),
 (38,2,2,'3','A shared collection of logically related data designed to meet the information needs of multiple users in organization.','a.) database','b.) document','c.) information','d.) none of the above','a.) database','b.) document','c.) information','d.) none of the above','a',1,1,'easy'),
 (39,3,1,'4','are computerized information systems that were developed to process large amounts of data for routine business transaction.','a.) ESS','b.) TPS','c.) MIS','d.) none of the above','a.) ESS','b.) TPS','c.) MIS','d.) none of the above','b',1,1,'moderate'),
 (40,1,3,'5','the one who studies the problems and needs of an organization to determine how people, data, processes, communications, and information technology can best accomplish improvements for the business.','a.) programmer','b.) encoder','c.) system analyst','d.) none of the above','a.) programmer','b.) encoder','c.) system analyst','d.) none of the above','c',1,1,'moderate'),
 (41,2,2,'1','Organized collection of people, procedures, software, databases, and devices used to record completed business transactions','a.) ESS','b.) MIS','c.) TPS','d.) none of the above','a.) ESS','b.) MIS','c.) TPS','d.) none of the above','d',2,1,'moderate'),
 (42,3,1,'2','Computer system takes on characteristics of human intelligence','a.) DSS','b.) MIS','c.) TPS','d.) all of the above','a.) DSS','b.) MIS','c.) TPS','d.) all of the above','d',2,1,'moderate'),
 (43,1,3,'3','a graphical representation of the \"flow\" of data through an information system, modelling its process aspects.','a.) System Flow','b.) Data Flow Diagram','c.) System Flowchart','d.) none of the above','a.) System Flow','b.) Data Flow Diagram','c.) System Flowchart','d.) none of the above','b',2,1,'moderate'),
 (44,2,2,'4','symbol used to represent data that the system stores.','a.) Process','b.) External Entity','c.) Data Flow','d.) None of the above','a.) Process','b.) External Entity','c.) Data Flow','d.) None of the above','d',2,1,'moderate'),
 (45,3,1,'5','performs some action on data, such as creates, modifies, stores, delete, etc. (either manual or supported by a computer)','a.) Process','b.) External Entity','c.) Data Flow','d.) None of the above','a.) Process','b.) External Entity','c.) Data Flow','d.) None of the above','b',1,1,'moderate'),
 (46,1,3,'1','a type of computer network which intends to connect one town to another town of a different region.','a.) LAN','b.) MAN','c.) WAN','d.) none of the above','a.) LAN','b.) MAN','c.) WAN','d.) none of the above','c',1,1,'moderate'),
 (47,2,2,'2','a computer program created intentionally to disrupt the normal operation of a computer','a.) System','b.) information System','c.) Virus','d.) none of the above','a.) System','b.) information System','c.) Virus','d.) none of the above','c',1,1,'moderate'),
 (48,3,1,'3','a problem solving technique that decomposes a system into its component pieces for the purpose of the studying how well those component parts work and interact to accomplish their purpose.','a.) system programming','b.) system designing','c.) system planning','d.) system analysis','a.) system programming','b.) system designing','c.) system planning','d.) system analysis','d',1,1,'moderate'),
 (49,1,3,'4','a conceptual model used in project management that describes the stages involved in an information system development project, from an initial feasibility study through maintenance of the completed application.','a.) SDLC','b.) Waterfall','c.) Agile','d.) SCRUM','a.) SDLC','b.) Waterfall','c.) Agile','d.) SCRUM','a',1,1,'difficult'),
 (50,2,2,'5','a collection of descriptions of the data objects or items in a data model for the benefit of programmers and others who need to refer to them','a.) Information','b.) Data dictionary','c.) Data Processing','d.) none of the above','a.) Information','b.) Data dictionary','c.) Data Processing','d.) none of the above','b',3,1,'difficult'),
 (51,3,1,'1','which is none element of a complete computer system','a.) people ware','b.) Hardware','c.) Anti Virus','d.) none of the above','a.) people ware','b.) Hardware','c.) Anti Virus','d.) none of the above','c',3,1,'difficult'),
 (52,1,3,'2','none basic hardware element','a.) external hard drive or flash drive','b.) Monitor/Display','c.) CPU / Central Processing Unit','d.) none of the above','a.) external hard drive or flash drive','b.) Monitor/Display','c.) CPU / Central Processing Unit','d.) none of the above','a',3,1,'difficult'),
 (53,2,2,'3','it is an electronic device that uses stored data and instruction to generate information','a.) calculator','b.) smartphone','c.) computer','d.) all of the above','a.) calculator','b.) smartphone','c.) computer','d.) all of the above','c',4,1,'difficult'),
 (54,3,1,'4','it refers to processed data','a.) input','b.) output','c.) data','d.) none of the above','a.) input','b.) output','c.) data','d.) none of the above','d',4,1,'difficult'),
 (55,1,3,'5','it is the unprocessed facts','a.) input','b.) output','c.) data','d.) none of the above','a.) input','b.) output','c.) data','d.) none of the above','c',1,1,'difficult'),
 (56,2,2,'1','an electronic machine that has memory and can manipulate data and it has arithmetic and logic function','a.) calculator','b.) smartphone','c.) computer ','d.) all of the above','a.) calculator','b.) smartphone','c.) computer ','d.) all of the above','c',1,1,'difficult'),
 (57,3,1,'2','a computing device popularized by chinese as their early calculator','a.) abacus','b.) smartphone','c.) napiers bone','d.) none of the above','a.) abacus','b.) smartphone','c.) napiers bone','d.) none of the above','a',1,1,'difficult'),
 (58,1,3,'3','basic components of computer system','a.) monitor / keyboard / cpu','b.) monitor / keyboard / cpu / mouse / avr','c.) monitor / keyboard / cpu / webcam / speaker / avr','d.) none of the above','a.) monitor / keyboard / cpu','b.) monitor / keyboard / cpu / mouse / avr','c.) monitor / keyboard / cpu / webcam / speaker / avr','d.) none of the above','d',1,1,'difficult'),
 (59,2,2,'4','basic computer hardware components','a.) monitor / keyboard / cpu','b.) monitor / keyboard / cpu / mouse / avr','c.) monitor / keyboard / cpu / webcam / speakers','d.) none of the above','a.) monitor / keyboard / cpu','b.) monitor / keyboard / cpu / mouse / avr','c.) monitor / keyboard / cpu / webcam / speakers','d.) none of the above','a',2,1,'easy'),
 (60,3,1,'5','this refers to the physical components of the computer','a.) people ware','b.) software','c.) hardware','d.) none of the above','a.) people ware','b.) software','c.) hardware','d.) none of the above','c',2,1,'easy'),
 (61,1,3,'1','this is considered to be the brain of a computer','a.) input/output device','b.) internal storage','c.) processor','d.) none of the above','a.) input/output device','b.) internal storage','c.) processor','d.) none of the above','c',2,1,'easy'),
 (62,2,2,'2','nonvolatile memory of a computer','a.) Read Only Memory (ROM)','b.) Random Access Memory (RAM)','c.) both A & B','d.) none of the above','a.) Read Only Memory (ROM)','b.) Random Access Memory (RAM)','c.) both A & B','d.) none of the above','a',2,1,'easy'),
 (63,3,1,'3','this is known to be the device which can accept instructions from computer user','a.) input device','b.) output device','c.) both A & B','d.) none of the above','a.) input device','b.) output device','c.) both A & B','d.) none of the above','a',1,1,'easy'),
 (64,1,3,'4','this is known to return data, that is, information back to the user','a.) input device','b.) output device','c.) both A & B','d.) none of the above','a.) input device','b.) output device','c.) both A & B','d.) none of the above','b',1,1,'easy'),
 (65,2,2,'5','this is known to be an optical storage which can hold 600MB to 720MB of data','a.) CD Disc','b.) DVD Disc','c.) Bluray','d.) none of the above','a.) CD Disc','b.) DVD Disc','c.) Bluray','d.) none of the above','a',1,1,'easy'),
 (66,3,1,'1','this refers to the set of instructions written in code that computers can understand and executed','a.) System','b.) software','c.) programs','d.) none / all of the above','a.) System','b.) software','c.) programs','d.) none / all of the above','b',1,1,'easy'),
 (67,1,3,'2','a software which contains programs that perform task needed for computer hardware to function efficiently. ','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a',1,1,'easy'),
 (68,2,2,'3','a software that is used to govern the proper operation of a computer','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a',3,1,'easy'),
 (69,3,1,'4','refers to any person involve in the software development and maintenance of the hardware','a.) hardware','b.) software','c.) peopleware','d.) none / all of the above','a.) hardware','b.) software','c.) peopleware','d.) none / all of the above','c',3,1,'easy'),
 (70,1,3,'5','is an interrelated set of components that function together to achieve an outcome','a.) program','b.) system','c.) module','d.) none of the above','a.) program','b.) system','c.) module','d.) none of the above','b',3,1,'easy');
/*!40000 ALTER TABLE `examquestion` ENABLE KEYS */;


--
-- Definition of table `personalinfo`
--

DROP TABLE IF EXISTS `personalinfo`;
CREATE TABLE `personalinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lname` varchar(100) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contactno` varchar(100) NOT NULL,
  `emailadd` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `usertype` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personalinfo`
--

/*!40000 ALTER TABLE `personalinfo` DISABLE KEYS */;
INSERT INTO `personalinfo` (`id`,`lname`,`mname`,`fname`,`address`,`contactno`,`emailadd`,`username`,`password`,`usertype`,`status`) VALUES 
 (1,'dean','salansang','alan','taytay','123','email@ko.com','alan','alan','admin','1'),
 (2,'manalastas','edd','edd','angono','321','email@edd.com','edd','edd','admin','1');
/*!40000 ALTER TABLE `personalinfo` ENABLE KEYS */;


--
-- Definition of table `reviewtopic`
--

DROP TABLE IF EXISTS `reviewtopic`;
CREATE TABLE `reviewtopic` (
  `id` int(11) NOT NULL,
  `topicname` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviewtopic`
--

/*!40000 ALTER TABLE `reviewtopic` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviewtopic` ENABLE KEYS */;


--
-- Definition of table `studentsession`
--

DROP TABLE IF EXISTS `studentsession`;
CREATE TABLE `studentsession` (
  `id` int(11) NOT NULL,
  `studentid` int(11) NOT NULL,
  `questionid` int(11) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `datetimecreated` datetime NOT NULL,
  `datetimeanswered` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentsession`
--

/*!40000 ALTER TABLE `studentsession` DISABLE KEYS */;
/*!40000 ALTER TABLE `studentsession` ENABLE KEYS */;


--
-- Definition of table `studentsessionsummary`
--

DROP TABLE IF EXISTS `studentsessionsummary`;
CREATE TABLE `studentsessionsummary` (
  `id` int(11) NOT NULL,
  `testsessionid` varchar(50) NOT NULL,
  `studentid` int(11) NOT NULL,
  `topicid` int(11) NOT NULL,
  `unitid` int(11) NOT NULL,
  `totalpoints` int(11) NOT NULL,
  `studentpoints` int(11) NOT NULL,
  `totaltime` time NOT NULL,
  `studenttime` time NOT NULL,
  `remarks` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentsessionsummary`
--

/*!40000 ALTER TABLE `studentsessionsummary` DISABLE KEYS */;
/*!40000 ALTER TABLE `studentsessionsummary` ENABLE KEYS */;


--
-- Definition of table `studyunits`
--

DROP TABLE IF EXISTS `studyunits`;
CREATE TABLE `studyunits` (
  `id` int(11) NOT NULL,
  `topicid` int(11) NOT NULL,
  `studyname` varchar(100) NOT NULL,
  `FK_examquestion_reviewtopic` varchar(100) NOT NULL,
  `isparent` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studyunits`
--

/*!40000 ALTER TABLE `studyunits` DISABLE KEYS */;
/*!40000 ALTER TABLE `studyunits` ENABLE KEYS */;


--
-- Definition of table `testbuffer`
--

DROP TABLE IF EXISTS `testbuffer`;
CREATE TABLE `testbuffer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'just a record id',
  `testsessionid` varchar(50) NOT NULL,
  `datetimecreated` datetime NOT NULL,
  `testtype` varchar(15) NOT NULL COMMENT 'pre-test | post-test | short-quiz | long-quiz | major-exam',
  `topicid` int(11) NOT NULL COMMENT 'topic id as defined on examquestion',
  `subjid` int(11) NOT NULL COMMENT 'subject id as defined on examquestion',
  `level` varchar(50) NOT NULL COMMENT 'day or sub topic as defined on examquestion and as shown on student grade report',
  `question` varchar(500) NOT NULL COMMENT 'the actual question from examquestion table',
  `a` varchar(100) NOT NULL COMMENT 'choice a',
  `b` varchar(100) NOT NULL COMMENT 'choice b',
  `c` varchar(100) NOT NULL COMMENT 'choice c',
  `d` varchar(100) NOT NULL COMMENT 'choice d',
  `a_rational` varchar(500) NOT NULL COMMENT 'rationale for choice a',
  `b_rational` varchar(500) NOT NULL COMMENT 'rationale for choice b',
  `c_rational` varchar(500) NOT NULL COMMENT 'rationale for choice c',
  `d_rational` varchar(500) NOT NULL COMMENT 'rationale for choice d',
  `correct_ans` varchar(100) NOT NULL COMMENT 'correct answer as defined on examquestion',
  `ansreceived` varchar(1) NOT NULL COMMENT 'received answer submitted by exam taker',
  `minutes` int(10) unsigned NOT NULL COMMENT 'time duration for this question',
  `point` int(11) NOT NULL COMMENT 'points to be given for this question',
  `type` varchar(100) NOT NULL COMMENT 'easy | moderate | difficult',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testbuffer`
--

/*!40000 ALTER TABLE `testbuffer` DISABLE KEYS */;
/*!40000 ALTER TABLE `testbuffer` ENABLE KEYS */;


--
-- Definition of table `testhistory`
--

DROP TABLE IF EXISTS `testhistory`;
CREATE TABLE `testhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'just a record id',
  `testsessionid` varchar(50) NOT NULL,
  `datetimecreated` datetime NOT NULL,
  `testtype` varchar(15) NOT NULL COMMENT 'pre-test | post-test | short-quiz | long-quiz | major-exam',
  `topicid` int(11) NOT NULL COMMENT 'topic id as defined on examquestion',
  `subjid` int(11) NOT NULL COMMENT 'subject id as defined on examquestion',
  `level` varchar(50) NOT NULL COMMENT 'day or sub topic as defined on examquestion and as shown on student grade report',
  `question` varchar(500) NOT NULL COMMENT 'the actual question from examquestion table',
  `a` varchar(100) NOT NULL COMMENT 'choice a',
  `b` varchar(100) NOT NULL COMMENT 'choice b',
  `c` varchar(100) NOT NULL COMMENT 'choice c',
  `d` varchar(100) NOT NULL COMMENT 'choice d',
  `a_rational` varchar(500) NOT NULL COMMENT 'rationale for choice a',
  `b_rational` varchar(500) NOT NULL COMMENT 'rationale for choice b',
  `c_rational` varchar(500) NOT NULL COMMENT 'rationale for choice c',
  `d_rational` varchar(500) NOT NULL COMMENT 'rationale for choice d',
  `correct_ans` varchar(100) NOT NULL COMMENT 'correct answer as defined on examquestion',
  `ansreceived` varchar(1) NOT NULL COMMENT 'received answer submitted by exam taker',
  `minutes` int(10) unsigned NOT NULL COMMENT 'time duration for this question',
  `point` int(11) NOT NULL COMMENT 'points to be given for this question',
  `type` varchar(100) NOT NULL COMMENT 'easy | moderate | difficult',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testhistory`
--

/*!40000 ALTER TABLE `testhistory` DISABLE KEYS */;
INSERT INTO `testhistory` (`id`,`testsessionid`,`datetimecreated`,`testtype`,`topicid`,`subjid`,`level`,`question`,`a`,`b`,`c`,`d`,`a_rational`,`b_rational`,`c_rational`,`d_rational`,`correct_ans`,`ansreceived`,`minutes`,`point`,`type`) VALUES 
 (1,'1-pre-test-2','0000-00-00 00:00:00','',0,0,'','','','','','','','','','','','',0,0,'');
/*!40000 ALTER TABLE `testhistory` ENABLE KEYS */;


--
-- Definition of table `topic_config`
--

DROP TABLE IF EXISTS `topic_config`;
CREATE TABLE `topic_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `topicID` int(10) unsigned NOT NULL,
  `testtype` varchar(45) NOT NULL,
  `itemseasy` int(10) unsigned NOT NULL,
  `itemsmoderate` int(10) unsigned NOT NULL,
  `itemsdifficult` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='topic configuration to be defined by the teacher or admin';

--
-- Dumping data for table `topic_config`
--

/*!40000 ALTER TABLE `topic_config` DISABLE KEYS */;
INSERT INTO `topic_config` (`id`,`topicID`,`testtype`,`itemseasy`,`itemsmoderate`,`itemsdifficult`) VALUES 
 (1,1,'pre-test',3,4,3),
 (2,2,'post-test',4,3,3),
 (3,3,'pre-test',5,5,5),
 (4,2,'pre-test',15,5,10),
 (5,1,'post-test',10,10,10);
/*!40000 ALTER TABLE `topic_config` ENABLE KEYS */;


--
-- Definition of table `userlogs`
--

DROP TABLE IF EXISTS `userlogs`;
CREATE TABLE `userlogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loguserid` int(11) NOT NULL,
  `logdate` date NOT NULL,
  `logdesc` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlogs`
--

/*!40000 ALTER TABLE `userlogs` DISABLE KEYS */;
INSERT INTO `userlogs` (`id`,`loguserid`,`logdate`,`logdesc`) VALUES 
 (1,0,'2016-05-28','Good Login'),
 (2,0,'2016-05-28','Good Login'),
 (3,0,'2016-05-28','Good Login');
/*!40000 ALTER TABLE `userlogs` ENABLE KEYS */;


--
-- Definition of procedure `getLogin`
--

DROP PROCEDURE IF EXISTS `getLogin`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getLogin`(IN `username` VARCHAR(200), IN `pswrd` VARCHAR(200))
BEGIN
select * from personalinfo where username = lcase(username) and password = lcase(pswrd);
    END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `getReviewtopic`
--

DROP PROCEDURE IF EXISTS `getReviewtopic`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getReviewtopic`()
BEGIN
select id,topicname,description from reviewtopic;
    END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `getStudyunits`
--

DROP PROCEDURE IF EXISTS `getStudyunits`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getStudyunits`(IN `rid` INT)
BEGIN
select id,reviewid,studyname,description,isparent,parentid from studyunits where reviewid = rid;
    END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `getSubStudyunits`
--

DROP PROCEDURE IF EXISTS `getSubStudyunits`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */ $$
CREATE DEFINER=`pela`@`%` PROCEDURE `getSubStudyunits`(IN `pid` INT)
BEGIN
select id,reviewid,studyname,description,isparent,parentid from studyunits where parentid = pid;
    END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
