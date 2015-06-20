-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: sql108.byetcluster.com
-- Generation Time: Jun 19, 2015 at 05:28 AM
-- Server version: 5.6.22-71.0
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `b13_16255428_bestseller`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admin_Info`
--

CREATE TABLE IF NOT EXISTS `Admin_Info` (
  `Username` varchar(30) NOT NULL COMMENT 'enter your email address',
  `Password` varchar(20) NOT NULL,
  `Privillages` varchar(30) NOT NULL,
  `Contact_Number` varchar(12) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Admin_Info`
--

INSERT INTO `Admin_Info` (`Username`, `Password`, `Privillages`, `Contact_Number`) VALUES
('mamnanisonia15@gmail.com', '123456', 'high', '9601145250'),
('rahulsalot@gmail.com', '12345678', 'medium', '9601917993'),
('deep@gmail.com', '1287', 'low', '9485214578');

-- --------------------------------------------------------

--
-- Table structure for table `Book_Info`
--

CREATE TABLE IF NOT EXISTS `Book_Info` (
  `ISBN` varchar(15) NOT NULL,
  `Book_Name` varchar(30) NOT NULL,
  `Author` varchar(20) NOT NULL,
  `Pub_ID` varchar(20) NOT NULL,
  `Current_Stock` int(3) NOT NULL,
  `Minimum_Stock` int(3) NOT NULL,
  `Discount` int(2) DEFAULT NULL,
  `Type` varchar(15) NOT NULL,
  `Rating` int(5) DEFAULT NULL,
  `Book_Img` varchar(100) NOT NULL,
  `University` varchar(50) NOT NULL,
  `Semester` int(2) NOT NULL,
  `College_ID` varchar(5) NOT NULL,
  `Course_ID` varchar(5) NOT NULL,
  `Subject` varchar(20) NOT NULL,
  `Price` int(5) NOT NULL,
  `Description` varchar(100) NOT NULL,
  PRIMARY KEY (`ISBN`),
  KEY `Pub_ID` (`Pub_ID`),
  KEY `College_ID` (`College_ID`),
  KEY `Course_ID` (`Course_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Book_Info`
--

INSERT INTO `Book_Info` (`ISBN`, `Book_Name`, `Author`, `Pub_ID`, `Current_Stock`, `Minimum_Stock`, `Discount`, `Type`, `Rating`, `Book_Img`, `University`, `Semester`, `College_ID`, `Course_ID`, `Subject`, `Price`, `Description`) VALUES
('124578', 'Big JAVA', 'John Devis', 'P001', 100, 70, 0, 'Reference', 3, 'https://java.png', 'DA-IICT', 1, 'C001', 'CO01', 'JAVA', 300, 'Very useful for Java Beginers'),
('123458', 'C++', 'Miki Arther', 'P002', 150, 100, 0, 'Main', 3, 'https://c++.png', 'Nirma', 2, 'C001', 'CO01', 'C++', 270, 'Very useful for C++ Beginers'),
('123765', 'DSS', 'Charley Johnson', 'P003', 80, 50, 30, 'Main', 3, 'https://datastructure.png', 'Gujarat', 2, 'C002', 'CO01', 'DSS', 480, 'Very useful for Interview Purpose'),
('128767', 'POM', 'Ramakant Desai', 'P002', 140, 60, 0, 'Main', 5, 'https://DBMS.png', 'GTU', 2, 'C002', 'CO01', 'POM', 500, 'Very useful for learning DBMS'),
('122456', 'PHP', 'Amitabh Mehta', 'P005', 130, 20, 0, 'Main', 6, 'https://Php.png', 'Maharastra', 1, 'C001', 'CO01', 'PHP', 999, 'Very useful for learning MATHS');

-- --------------------------------------------------------

--
-- Table structure for table `College_Info`
--

CREATE TABLE IF NOT EXISTS `College_Info` (
  `College_ID` varchar(5) NOT NULL,
  `College_Name` varchar(50) NOT NULL,
  `University_Name` varchar(50) NOT NULL,
  PRIMARY KEY (`College_ID`),
  UNIQUE KEY `College_Name` (`College_Name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `College_Info`
--

INSERT INTO `College_Info` (`College_ID`, `College_Name`, `University_Name`) VALUES
('C001', 'DAIICT', 'DAIICT'),
('C002', 'XICA', 'Gujarat University'),
('C003', 'Department of Computer Science', 'HNGU'),
('C004', 'HLICA', 'Ahmedabad University'),
('C005', 'RJT', 'Gujarat University');

-- --------------------------------------------------------

--
-- Table structure for table `Course_Info`
--

CREATE TABLE IF NOT EXISTS `Course_Info` (
  `College_ID` varchar(5) NOT NULL,
  `Course_ID` varchar(5) NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  PRIMARY KEY (`Course_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Course_Info`
--

INSERT INTO `Course_Info` (`College_ID`, `Course_ID`, `Course_Name`) VALUES
('C001', 'CO01', 'MSC-IT'),
('C001', 'CO02', 'BTECH'),
('C002', 'CO03', 'BCA'),
('C003', 'CO04', 'B.Com'),
('C002', 'CO05', 'MCA');

-- --------------------------------------------------------

--
-- Table structure for table `Invoice`
--

CREATE TABLE IF NOT EXISTS `Invoice` (
  `Inv_ID` varchar(5) NOT NULL,
  `User_Name` varchar(20) NOT NULL COMMENT 'Name of User',
  `ISBN` int(15) NOT NULL,
  `Quantity` int(2) NOT NULL,
  `Sub_Total` int(10) NOT NULL,
  `Total` int(10) NOT NULL COMMENT 'Sub Total+Delivery Charges',
  PRIMARY KEY (`Inv_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Invoice`
--

INSERT INTO `Invoice` (`Inv_ID`, `User_Name`, `ISBN`, `Quantity`, `Sub_Total`, `Total`) VALUES
('111', 'Deep Amin', 124578, 2, 500, 550),
('112', 'Rahul Salot', 123458, 3, 900, 950),
('113', 'Sonia Mamnani', 123765, 1, 1000, 1150),
('114', 'Sapan Soni', 128767, 1, 700, 770),
('115', 'Viraj Shah', 122456, 2, 600, 660);

-- --------------------------------------------------------

--
-- Table structure for table `Publisher_Info`
--

CREATE TABLE IF NOT EXISTS `Publisher_Info` (
  `Pub_ID` varchar(5) NOT NULL,
  `Pub_Name` varchar(20) NOT NULL,
  `Address_Line_1` varchar(20) NOT NULL,
  `Address_Line_2` varchar(20) NOT NULL,
  `City` varchar(10) NOT NULL,
  `State` varchar(10) NOT NULL,
  `Pin_Code` int(6) NOT NULL,
  `Contact_Number_1` varchar(12) NOT NULL,
  `Contact_Number_2` varchar(12) DEFAULT NULL,
  `Publisher_Logo` varchar(100) NOT NULL,
  PRIMARY KEY (`Pub_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Publisher_Info`
--

INSERT INTO `Publisher_Info` (`Pub_ID`, `Pub_Name`, `Address_Line_1`, `Address_Line_2`, `City`, `State`, `Pin_Code`, `Contact_Number_1`, `Contact_Number_2`, `Publisher_Logo`) VALUES
('P001', 'Kumar Publisher', 'PD-12B, Vishakha Enc', 'Near N.D. Market, Pi', 'New Delhi', 'Delhi', 110034, '2147483647', '2147483647', 'img1'),
('P002', 'Gami Prakashan', '25, Sharddhadeep Pla', 'Ankur Rd, Shashtrina', 'Ahmedabad', 'Gujarat', 380013, '2147483647', NULL, 'img2'),
('P003', 'Navneet Publication', 'Gurukul Rd, ', 'Memnagar', 'Ahmedabad,', 'Gujarat', 380052, '2147483647', NULL, 'img3'),
('P004', 'Darpan Publication', '17/18, Ground Floor,', 'Opposite T Havmor Re', 'Ahmedabad', 'Gujarat', 380009, '2147483647', NULL, 'img4'),
('P005', 'Atul Prakashan', 'B-325, Tirth Raj Com', 'Paldi Road, Ellisbri', 'Ahmedabad', 'Gujarat', 380006, '2147483647', NULL, 'img5');

-- --------------------------------------------------------

--
-- Table structure for table `Sem_Info`
--

CREATE TABLE IF NOT EXISTS `Sem_Info` (
  `Course_ID` varchar(5) NOT NULL,
  `Sem_Number` int(2) NOT NULL,
  `Sub_ID` varchar(10) NOT NULL,
  `Sub_Name` varchar(20) NOT NULL,
  PRIMARY KEY (`Course_ID`,`Sem_Number`,`Sub_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Sem_Info`
--

INSERT INTO `Sem_Info` (`Course_ID`, `Sem_Number`, `Sub_ID`, `Sub_Name`) VALUES
('CO01', 1, 'S01', 'JAVA'),
('CO01', 2, 'S02', 'POM'),
('CO01', 1, 'S02', 'CO'),
('CO01', 1, 'S03', 'PHP'),
('CO01', 2, 'S01', 'DSS'),
('CO01', 2, 'S03', 'C'),
('CO01', 2, 'S04', 'C++'),
('CO01', 3, 'S01', 'NETWORKING'),
('CO01', 3, 'S02', 'EC'),
('CO01', 4, 'S01', 'ALGO'),
('CO01', 4, 'S02', 'SEN'),
('CO02', 1, 'S01', '.NET'),
('CO02', 2, 'S01', 'CS');

-- --------------------------------------------------------

--
-- Table structure for table `User_Info`
--

CREATE TABLE IF NOT EXISTS `User_Info` (
  `User_Name` varchar(30) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Address_Line_1` varchar(20) NOT NULL,
  `Address_Line_2` varchar(20) NOT NULL,
  `City` varchar(10) NOT NULL,
  `State` varchar(10) NOT NULL,
  `Pin_Code` int(10) NOT NULL,
  `Contact_Number_1` varchar(12) NOT NULL,
  `Contact_Number_2` varchar(12) DEFAULT NULL,
  `DOB` datetime NOT NULL,
  PRIMARY KEY (`User_Name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User_Info`
--

INSERT INTO `User_Info` (`User_Name`, `Name`, `Password`, `Address_Line_1`, `Address_Line_2`, `City`, `State`, `Pin_Code`, `Contact_Number_1`, `Contact_Number_2`, `DOB`) VALUES
('RahulSolat@gmail.com', 'Rahul Salot', 'Rahul', 'Indraprashth Tower', 'Gurukul', 'Ahmedabad', 'Gujarat', 380045, '9638527415', '9632145677', '1993-09-18 00:00:00'),
('deep@gmail.com', 'Deep Amin', 'Deep', 'Mangalmurti', 'naranpura', 'Ahmedabad', 'Gujarat', 380013, '9874566321', '9632584556', '1994-05-07 00:00:00'),
('rahoool@gmail.com', 'rahoool', '741852', 'himalya mall', 'vastrapur', 'ahmedabad', 'gujarat', 382480, '7889654122', '9898452147', '1995-05-11 00:00:00'),
('sonio@yahoo.co.in', 'soniooo', '852741', 'gst crossing', 'new ranip', 'ahmedabad', 'gujarat', 382480, '9898464255', '9174582369', '1989-11-05 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
