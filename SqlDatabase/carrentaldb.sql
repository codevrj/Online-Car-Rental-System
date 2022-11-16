-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 26, 2021 at 04:56 PM
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
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2021-08-25 23:16:01');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

DROP TABLE IF EXISTS `tblbooking`;
CREATE TABLE IF NOT EXISTS `tblbooking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(4, 'www.deshan@gmail.com', 7, '2021-08-26', '2021-08-21', 'First rent car', 0, '2021-08-26 16:45:53');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

DROP TABLE IF EXISTS `tblbrands`;
CREATE TABLE IF NOT EXISTS `tblbrands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(8, 'TOYOTA', '2021-08-26 00:13:27', NULL),
(9, 'BMW', '2021-08-26 00:13:31', NULL),
(10, 'MAZDA', '2021-08-26 00:13:45', NULL),
(13, 'NISSAN', '2021-08-26 00:14:41', NULL),
(14, 'SUZUKI', '2021-08-26 00:14:53', NULL),
(15, 'LAND ROVER', '2021-08-26 00:15:30', NULL),
(16, 'HONDA', '2021-08-26 07:22:43', NULL),
(17, 'MERCEDES-BENZ', '2021-08-26 07:51:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

DROP TABLE IF EXISTS `tblcontactusinfo`;
CREATE TABLE IF NOT EXISTS `tblcontactusinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Matara																				', 'onlinerentacar@gmail.com', '944823155');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

DROP TABLE IF EXISTS `tblcontactusquery`;
CREATE TABLE IF NOT EXISTS `tblcontactusquery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

DROP TABLE IF EXISTS `tblpages`;
CREATE TABLE IF NOT EXISTS `tblpages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '										<h1 class=\"page-header\" style=\"font-family: Lato, sans-serif, serif; line-height: 1.4em; color: rgb(19, 19, 19); border-bottom-color: rgb(238, 238, 238);\">Review Our Terms of Use Before Booking A Rental</h1><div style=\"color: rgb(19, 19, 19); font-family: Lato, sans-serif, serif;\"><p style=\"margin-bottom: 10px;\"><span style=\"font-weight: 700;\">WHAT YOU SHOULD KNOW</span></p><p style=\"margin-bottom: 10px;\">Welcome to the Onlinecarrental.com web site (the \"Web Site\"). Please read our terms of service, together with the terms of service included on the order and confirmation pages of the Web Site (collectively, the \"Terms\") carefully before continuing on with your use of this Web Site. This website and information on it is controlled by our Corporation. Please see our Website privacy policy for further information. The Terms shall govern the use of the Web Site and apply to all Internet traffic visiting the Web Site. By accessing or using this Web Site, you agree to the Terms. The Terms are meant to protect all of our Web Site visitors and your use of this Web Site signifies your agreement with the Terms. IF YOU DO NOT AGREE WITH THE TERMS, DO NOT USE THIS WEB SITE. This site reserves the right, in its sole discretion, to modify, alter or otherwise update the Terms at any time. Such modifications shall be effective immediately upon posting. By using this Web Site after we have posted notice of such modifications, alterations or updates you agree to be bound by such revised Terms.</p><p style=\"margin-bottom: 10px;\">In accordance with our goals, this Web Site will permit you to link to many other web sites, that may or may not be affiliated with this Web Site and/or AutoRentals.com, and that may have terms of use that differ from, or contain terms in addition to, the terms specified here. Your access to such web sites through links provided on this Web Site is governed by the terms of use and policies of those sites, not this Web Site.</p><p style=\"margin-bottom: 10px;\"><br></p></div>\r\n										'),
(2, 'Privacy Policy', 'privacy', '<p style=\"margin-bottom: 10px; font-size: 14px; color: rgb(19, 19, 19); font-family: Lato, sans-serif, serif;\"><span style=\"font-weight: 700;\">PRIVACY</span></p><p style=\"margin-bottom: 10px; font-size: 14px; color: rgb(19, 19, 19); font-family: Lato, sans-serif, serif;\">Registration data and certain other information about you is subject to our Privacy Policy. For more information, please review our full Privacy Policy.</p>'),
(3, 'About Us ', 'aboutus', '																				<div><br></div><h3 style=\"text-align: center;\"><span style=\"font-family: verdana;\"><span style=\"font-size: small;\"><span style=\"color: rgb(0, 0, 0);\">MA-DSE-201-F-003&nbsp; &nbsp; A.S.I Viraj(Group Leader)&nbsp;&nbsp;</span></span></span></h3><h3 style=\"text-align: center;\"><div style=\"text-align: center;\"><span style=\"color: rgb(0, 0, 0); font-size: small; font-family: verdana;\">Contact No:</span><span style=\"color: rgb(0, 0, 0); font-size: small; font-family: verdana; font-weight: bold;\">+94714823155</span></div><span style=\"font-family: verdana;\"><div style=\"text-align: center;\"><span style=\"font-size: small; color: rgb(0, 0, 0);\">MA-DSE-201-F-002</span><span style=\"font-size: small; color: rgb(0, 0, 0);\">&nbsp; &nbsp; S.A.H.D.S Arachchige</span></div><span style=\"font-size: small;\"><div style=\"text-align: center;\"><span style=\"color: rgb(0, 0, 0);\">MA-DSE-201-F-060</span><span style=\"color: rgb(0, 0, 0);\">&nbsp; &nbsp; D.A.C Imalka</span></div></span><span style=\"font-size: small;\"><div style=\"text-align: center;\"><span style=\"color: rgb(0, 0, 0);\">MA-DSE-201-F-014</span><span style=\"color: rgb(0, 0, 0);\">&nbsp; &nbsp; P.H.G.N Chamod</span></div></span></span></h3>\r\n										\r\n										'),
(11, 'FAQs', 'faqs', '<div style=\"text-align: left;\"><span style=\"color: rgba(0, 0, 0, 0.87); font-family: Lato, sans-serif, serif; font-weight: 700; font-size: 1em;\">Same Day Reservations?</span></div>																				<div><div style=\"text-align: left;\"><span style=\"color: rgba(0, 0, 0, 0.87); font-family: Lato, sans-serif, serif; font-size: 14px; font-weight: 700;\"><br></span></div><div style=\"text-align: left;\"><span style=\"color: rgba(0, 0, 0, 0.87); font-family: Lato, sans-serif, serif; font-weight: 700;\">-</span><span style=\"color: rgb(19, 19, 19); font-family: Lato, sans-serif, serif; font-size: 1em;\">You can book a rental car reservation up to one hour in advance of your pick-up time. When searching our site, we will provide you with the available options based on the itinerary details you enter on our website. For example, if you place a request on our website at 11 a.m. the earliest you can pick up your rental car is noon the same day.</span></div><div style=\"text-align: left;\"><span style=\"color: rgb(19, 19, 19); font-family: Lato, sans-serif, serif; font-size: 1em;\"><br></span></div><div style=\"text-align: left;\"><span style=\"color: rgba(0, 0, 0, 0.87); font-family: Lato, sans-serif, serif; font-weight: 700;\">What kinds of cars can I rent?</span><br></div><div style=\"text-align: left;\"><span style=\"color: rgba(0, 0, 0, 0.87); font-family: Lato, sans-serif, serif; font-weight: 700;\"><br></span></div><div><p class=\"MsoNormal\" style=\"text-align: left; margin-bottom: 10px; color: rgb(19, 19, 19); font-family: Lato, sans-serif, serif; font-size: 14px;\">We offer the following car types:</p><ul style=\"margin-bottom: 10px; color: rgb(19, 19, 19); font-family: Lato, sans-serif, serif;\"><li style=\"text-align: left;\">Economy Cars</li><li style=\"text-align: left;\">Compact Cars</li><li style=\"text-align: left;\">Mid-size Cars</li><li style=\"text-align: left;\">Standard Cars</li><li style=\"text-align: left;\">Full-size (4 door) Cars</li><li style=\"text-align: left;\">Premium Cars</li><li style=\"text-align: left;\">Luxury Cars</li><li style=\"text-align: left;\">Convertibles</li><li style=\"text-align: left;\">SUVs</li><li style=\"text-align: left;\">Mini-van (7 passenger)</li><li style=\"text-align: left;\">Full-size Vans</li></ul><p style=\"text-align: left; margin-bottom: 10px; color: rgb(19, 19, 19); font-family: Lato, sans-serif, serif; font-size: 14px;\">Our web site includes a full description of each car type, including the typical number of passengers and pieces of luggage each will accommodate. Rental car companies carry a variety of makes and models for each car type listed above. As a result, the rental car companies are not able to guarantee the specific make or model you will receive at the rental counter. Requests for non-smoking vehicles should be made at the rental counter. Rental car companies are not able to guarantee the availability of a non-smoking vehicle.</p></div></div>\r\n										\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

DROP TABLE IF EXISTS `tblsubscribers`;
CREATE TABLE IF NOT EXISTS `tblsubscribers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(4, 'www.deshan@gmail.com', '2021-08-26 08:33:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

DROP TABLE IF EXISTS `tbltestimonial`;
CREATE TABLE IF NOT EXISTS `tbltestimonial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(3, 'www.deshan@gmail.com', 'Best price and easiest transaction. \r\nThis is one of best car rental site.', '2021-08-26 08:51:38', 1),
(4, 'www.imalka@gmail.com', ' The booking was easier to compare and shop between agencies.', '2021-08-26 08:58:19', 1),
(6, 'www.nipuna@gmail.com', 'Excellent service !', '2021-08-26 16:54:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

DROP TABLE IF EXISTS `tblusers`;
CREATE TABLE IF NOT EXISTS `tblusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(5, 'Hasindu Deshan', 'www.deshan@gmail.com', '202cb962ac59075b964b07152d234b70', '0711234567', NULL, NULL, NULL, NULL, '2021-08-26 08:50:19', NULL),
(6, 'Imalka', 'www.imalka@gmail.com', '250cf8b51c773f3f8dc8b4be867a9a02', '0711234887', NULL, NULL, NULL, NULL, '2021-08-26 08:57:04', NULL),
(7, 'Nipuna', 'www.nipuna@gmail.com', '202cb962ac59075b964b07152d234b70', '0711234566', NULL, NULL, NULL, NULL, '2021-08-26 11:07:24', '2021-08-26 11:10:13');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

DROP TABLE IF EXISTS `tblvehicles`;
CREATE TABLE IF NOT EXISTS `tblvehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(6, 'Land Cruiser Prado', 8, 'Toyota TRJ 150 Prado/ Auto Dual A/C, Sun Roof,  \r\nTV/ DVD/ Reverse Camera, Cruse control,                  \r\nHeight control\r\n\r\n  Engine Capacity - 2500cc / Petrol, 4x4', 10000, 'Petrol', 2020, 7, '1.jpg', '3.jpg', '4.jpg', '2.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-08-26 00:20:51', NULL),
(7, 'Range Rover', 15, 'Model - Toyota Double Cab Manual, A/C, DVD/CD, 5 Seater,  4x4\r\n Engine Capacity - 2750cc/ Diesel', 7500, 'Petrol', 2020, 5, '7.jpg', '5.jpg', '6.jpg', '9.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-08-26 00:24:45', NULL),
(8, 'Prius', 8, 'Rent a Car - Toyota Prius Hybrid 3rd Generation Car for Rent \r\nFully Loaded Package Well Maintained \r\nBest Fuel Efficiency ', 5500, 'Hybrid', 2019, 5, '10.jpg', '12.jpg', '13.jpg', '14.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-08-26 00:37:52', NULL),
(9, 'Axio', 8, 'Toyota Axio Hybrid face lifted model - G grade, Full option, DVD, back camera, \r\nduel multi function, push start,, beige interior, 8 air bags, remote key, \r\nautomatic head lamps, climate control AC, sensor locking system. full option.', 6000, 'Hybrid', 2020, 5, '19.jpg', '21.jpg', '22.jpg', '20.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-08-26 07:35:39', NULL),
(10, 'CR-V', 16, 'Class	Compact crossover SUV\r\nBody style	5-door SUV\r\nLayout	Front-engine, front-wheel-drive Front-engine, four-wheel-drive', 7000, 'Hybrid', 2021, 5, '15.jpg', '17.png', '16.jpg', '18.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-08-26 07:38:43', NULL),
(11, 'E-Class', 17, 'The E-Class have offered either rear-wheel drive or Mercedes\' 4Matic four-wheel drive system.\r\nBenz E-Class brings the best of the luxury segment.', 12000, 'Petrol', 2018, 5, '27.jpg', '24.jpg', '25.jpg', '26.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-08-26 07:55:25', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
