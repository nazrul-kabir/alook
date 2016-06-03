-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jun 03, 2016 at 10:51 PM
-- Server version: 5.5.49-cll
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `arkhairu_alook`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(5) NOT NULL AUTO_INCREMENT,
  `admin_full_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `admin_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `admin_password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `admin_phone` varchar(255) CHARACTER SET utf8 NOT NULL,
  `admin_address` text CHARACTER SET utf8 NOT NULL,
  `admin_zip` varchar(255) CHARACTER SET utf8 NOT NULL,
  `admin_city` varchar(255) CHARACTER SET utf8 NOT NULL,
  `admin_country` varchar(255) CHARACTER SET utf32 NOT NULL,
  `admin_status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'inactive',
  `admin_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `admin_updated_by` int(5) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_full_name`, `admin_email`, `admin_password`, `admin_phone`, `admin_address`, `admin_zip`, `admin_city`, `admin_country`, `admin_status`, `admin_updated_on`, `admin_updated_by`) VALUES
(1, 'ADMIN', 'admin@alooknet.com', '21232f297a57a5a74#alook#3894a0e4a801fc3', '01717940150', 'Nikunja', '1229', 'Dhaka', '20', 'active', '2016-05-02 15:30:55', 0);

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_title` varchar(255) NOT NULL,
  `banner_details` text NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `banner_status` enum('Active','Inactive') NOT NULL,
  `banner_created_on` datetime NOT NULL,
  `banner_created_by` int(11) NOT NULL,
  `banner_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `banner_updated_by` int(11) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `banner_title`, `banner_details`, `banner_image`, `banner_status`, `banner_created_on`, `banner_created_by`, `banner_updated_on`, `banner_updated_by`) VALUES
(1, 'Dunham-Bush Air Conditioner', 'Cassette Split Type Inverter', 'BI20160518121502.jpg', 'Active', '2016-05-18 12:15:02', 1, '2016-05-18 06:15:02', 0),
(2, 'Dunham-Bush Air Conditioner', 'Ceiling & Floor Mounter Split Type', 'BI20160518125730.jpg', 'Active', '2016-05-18 12:57:30', 1, '2016-05-18 06:57:30', 0),
(3, 'Dunham-Bush Air Conditioner', 'Wall Mounted Split Type', 'BI20160603224837.jpg', 'Active', '2016-06-03 22:48:37', 1, '2016-06-03 16:48:37', 0),
(4, 'Dunham-Bush Air Conditioner', 'Wall Mounted Split Type', 'BI20160603224859.jpg', 'Active', '2016-06-03 22:48:59', 1, '2016-06-03 16:48:59', 0),
(5, 'Dunham-Bush Air Conditioner', 'Ceiling & Floor Mountain Type', 'BI20160603225013.jpg', 'Active', '2016-06-03 22:50:13', 1, '2016-06-03 16:50:13', 0),
(6, 'Dunham-Bush Air Conditioner', 'Ceiling & Floor Mountain Type', 'BI20160603225032.jpg', 'Active', '2016-06-03 22:50:32', 1, '2016-06-03 16:50:32', 0);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(255) NOT NULL,
  `client_image` varchar(255) NOT NULL,
  `client_link` text NOT NULL,
  `client_details` text NOT NULL,
  `client_status` enum('Active','Inactive') NOT NULL,
  `client_created_by` int(11) NOT NULL,
  `client_created_on` datetime NOT NULL,
  `client_updated_by` int(11) NOT NULL,
  `client_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=224 ;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `client_name`, `client_image`, `client_link`, `client_details`, `client_status`, `client_created_by`, `client_created_on`, `client_updated_by`, `client_updated_on`) VALUES
(1, 'A & A Engineering Limited', '', '', '', 'Active', 1, '2016-05-10 00:01:18', 0, '2016-05-09 18:01:18'),
(2, 'A. Haque & Company', '', '', '', 'Active', 1, '2016-05-10 00:03:08', 0, '2016-05-09 18:03:08'),
(3, 'A.C. Corner 7', '', '', '', 'Active', 1, '2016-05-10 00:03:18', 0, '2016-05-09 18:03:18'),
(4, 'A.V.E Engineers & Consultants Ltd', '', '', '', 'Active', 1, '2016-05-10 00:03:26', 0, '2016-05-09 18:03:26'),
(5, 'ABBL', '', '', '', 'Active', 1, '2016-05-10 00:03:35', 0, '2016-05-09 18:03:35'),
(6, 'ACI Ltd', '', '', '', 'Active', 1, '2016-05-10 00:03:45', 0, '2016-05-09 18:03:45'),
(7, 'Acme Laboratories Ltd', '', '', '', 'Active', 1, '2016-05-10 00:03:55', 0, '2016-05-09 18:03:55'),
(8, 'Advanced Technology Computers Limited', '', '', '', 'Active', 1, '2016-05-10 00:04:27', 0, '2016-05-09 18:04:27'),
(9, 'Aftab Bahumukhi Farm Ltd', '', '', '', 'Active', 1, '2016-05-10 00:04:37', 0, '2016-05-09 18:04:37'),
(10, 'Ahmed Iqbal Hasan & Co.', '', '', '', 'Active', 1, '2016-05-10 00:04:49', 0, '2016-05-09 18:04:49'),
(11, 'Al- Amin Agency', '', '', '', 'Active', 1, '2016-05-10 00:04:56', 0, '2016-05-09 18:04:56'),
(12, 'Alcatel', '', '', '', 'Active', 1, '2016-05-10 00:05:05', 0, '2016-05-09 18:05:05'),
(13, 'Ambala Sweets', '', '', '', 'Active', 1, '2016-05-10 00:05:13', 0, '2016-05-09 18:05:13'),
(14, 'Ameen Center Baboshaiyee Samity', '', '', '', 'Active', 1, '2016-05-10 00:05:20', 0, '2016-05-09 18:05:20'),
(15, 'Amin Complex', '', '', '', 'Active', 1, '2016-05-10 00:05:27', 0, '2016-05-09 18:05:27'),
(16, 'Amir Trading Corporation', '', '', '', 'Active', 1, '2016-05-10 00:05:34', 0, '2016-05-09 18:05:34'),
(17, 'Apex Food Ltd', '', '', '', 'Active', 1, '2016-05-10 00:05:44', 0, '2016-05-09 18:05:44'),
(18, 'Arab Bangladesh Bank Ltd', '', '', '', 'Active', 1, '2016-05-10 00:05:50', 0, '2016-05-09 18:05:50'),
(19, 'ASKO Engineering Ltd', '', '', '', 'Active', 1, '2016-05-10 00:05:57', 0, '2016-05-09 18:05:57'),
(20, 'Associates Designer', '', '', '', 'Active', 1, '2016-05-10 00:06:04', 0, '2016-05-09 18:06:04'),
(21, 'Avanti Real State Co. Ltd', '', '', '', 'Active', 1, '2016-05-10 00:06:12', 0, '2016-05-09 18:06:12'),
(22, 'B.A.S.F', '', '', '', 'Active', 1, '2016-05-10 00:07:58', 0, '2016-05-09 18:07:58'),
(23, 'Bangladesh Bank Head Office', 'CI20160510005410.png', '', '', 'Active', 1, '2016-05-10 00:08:05', 1, '2016-05-09 18:54:10'),
(24, 'Bangladesh Biman Corporation', '', '', '', 'Active', 1, '2016-05-10 00:08:13', 0, '2016-05-09 18:08:13'),
(25, 'Bangladesh Diagnostic', '', '', '', 'Active', 1, '2016-05-10 00:08:20', 0, '2016-05-09 18:08:20'),
(26, 'Bangladesh House building Finance Corporation', '', '', '', 'Active', 1, '2016-05-10 00:08:30', 0, '2016-05-09 18:08:30'),
(27, 'Bangladesh Institute of Administration and Management (BIAM)', '', '', '', 'Active', 1, '2016-05-10 00:08:37', 0, '2016-05-09 18:08:37'),
(28, 'Bangladesh National Herbarium Project Bldg.', '', '', '', 'Active', 1, '2016-05-10 00:08:45', 0, '2016-05-09 18:08:45'),
(29, 'Bangladesh Sugar and Food Industries Corporation (BSFIC)', '', '', '', 'Active', 1, '2016-05-10 00:09:34', 0, '2016-05-09 18:09:34'),
(30, 'Bangladesh Telecommunication Company Limited', 'CI20160510005544.png', '', '', 'Active', 1, '2016-05-10 00:09:43', 1, '2016-05-09 18:55:44'),
(31, 'Bangladesh Tobacco Co.', '', '', '', 'Active', 1, '2016-05-10 00:09:51', 0, '2016-05-09 18:09:51'),
(32, 'Bank Asia Ltd.', '', '', '', 'Active', 1, '2016-05-10 00:09:59', 0, '2016-05-09 18:09:59'),
(33, 'Banque Indosuez', '', '', '', 'Active', 1, '2016-05-10 00:10:08', 0, '2016-05-09 18:10:08'),
(34, 'BARI', '', '', '', 'Active', 1, '2016-05-10 00:10:16', 0, '2016-05-09 18:10:16'),
(35, 'Beacon Travel International Ltd', '', '', '', 'Active', 1, '2016-05-10 00:10:23', 0, '2016-05-09 18:10:23'),
(36, 'Bengal Agencies', '', '', '', 'Active', 1, '2016-05-10 00:10:38', 0, '2016-05-09 18:10:38'),
(37, 'Bengal Design', '', '', '', 'Active', 1, '2016-05-10 00:10:45', 0, '2016-05-09 18:10:45'),
(38, 'Berger Paints (BD) Ltd', '', '', '', 'Active', 1, '2016-05-10 00:10:52', 0, '2016-05-09 18:10:52'),
(39, 'Beximco Engineering Ltd', '', '', '', 'Active', 1, '2016-05-10 00:11:00', 0, '2016-05-09 18:11:00'),
(40, 'Beximco Independent', '', '', '', 'Active', 1, '2016-05-10 00:11:08', 0, '2016-05-09 18:11:08'),
(41, 'Beximco Media Ltd', '', '', '', 'Active', 1, '2016-05-10 00:11:16', 0, '2016-05-09 18:11:16'),
(42, 'Beximco Media New Agency', '', '', '', 'Active', 1, '2016-05-10 00:11:24', 0, '2016-05-09 18:11:24'),
(43, 'Beximco Pharmaceuticals Ltd.', 'CI20160510005514.png', '', '', 'Active', 1, '2016-05-10 00:11:32', 1, '2016-05-09 18:55:14'),
(44, 'Beximco Press Building', '', '', '', 'Active', 1, '2016-05-10 00:11:42', 0, '2016-05-09 18:11:42'),
(45, 'Beximco Textile Ltd', '', '', '', 'Active', 1, '2016-05-10 00:11:49', 0, '2016-05-09 18:11:49'),
(46, 'Beximco Training Division', '', '', '', 'Active', 1, '2016-05-10 00:11:56', 0, '2016-05-09 18:11:56'),
(47, 'Biman Bangladesh Airlines', 'CI20160510005141.jpg', '', '', 'Active', 1, '2016-05-10 00:12:05', 1, '2016-05-09 18:51:41'),
(48, 'BIRDEM Hospital', '', '', '', 'Inactive', 1, '2016-05-10 00:12:13', 0, '2016-05-09 18:12:13'),
(49, 'BMA Bhatiary', '', '', '', 'Active', 1, '2016-05-10 00:12:21', 0, '2016-05-09 18:12:21'),
(50, 'BOC Bangladesh Limited', '', '', '', 'Active', 1, '2016-05-10 00:12:29', 0, '2016-05-09 18:12:29'),
(51, 'BPATC', '', '', '', 'Inactive', 1, '2016-05-10 00:12:43', 0, '2016-05-09 18:12:43'),
(52, 'British American Tobacco Bangladesh', 'CI20160510005305.png', '', '', 'Active', 1, '2016-05-10 00:12:56', 1, '2016-05-09 18:53:05'),
(53, 'Broadway Plaza', '', '', '', 'Active', 1, '2016-05-10 00:13:03', 0, '2016-05-09 18:13:03'),
(54, 'Building Technology & Ideas Ltd.', 'CI20160510005620.png', '', '', 'Active', 1, '2016-05-10 00:13:10', 1, '2016-05-09 18:56:20'),
(55, 'CAAB', '', '', '', 'Active', 1, '2016-05-10 00:13:18', 0, '2016-05-09 18:13:18'),
(56, 'CARE Bangladesh', '', '', '', 'Active', 1, '2016-05-10 00:13:33', 0, '2016-05-09 18:13:33'),
(57, 'Centre for the Rehabilitation of the Paralysed (CRP)', '', '', '', 'Active', 1, '2016-05-10 00:13:41', 0, '2016-05-09 18:13:41'),
(58, 'Chittagong port authority', '', '', '', 'Active', 1, '2016-05-10 00:13:48', 0, '2016-05-09 18:13:48'),
(59, 'Chittagong Tiles', '', '', '', 'Active', 1, '2016-05-10 00:14:06', 0, '2016-05-09 18:14:06'),
(60, 'CMH Chittagong Cantt.', '', '', '', 'Active', 1, '2016-05-10 00:14:13', 0, '2016-05-09 18:14:13'),
(61, 'Common Services Department Bangladesh Bank', '', '', '', 'Active', 1, '2016-05-10 00:14:41', 0, '2016-05-09 18:14:41'),
(62, 'Confidence Trade Ltd', '', '', '', 'Active', 1, '2016-05-10 00:14:48', 0, '2016-05-09 18:14:48'),
(63, 'Danish Condensed Milk (BD) Ltd.', '', '', '', 'Active', 1, '2016-05-10 00:14:56', 0, '2016-05-09 18:14:56'),
(64, 'Dental Care', '', '', '', 'Active', 1, '2016-05-10 00:15:06', 0, '2016-05-09 18:15:06'),
(65, 'Department of Fisheries', '', '', '', 'Active', 1, '2016-05-10 00:15:13', 0, '2016-05-09 18:15:13'),
(66, 'Dhaka Bank Ltd', '', '', '', 'Active', 1, '2016-05-10 00:15:20', 0, '2016-05-09 18:15:20'),
(67, 'DHS Motors Ltd', '', '', '', 'Active', 1, '2016-05-10 00:15:28', 0, '2016-05-09 18:15:28'),
(68, 'Domous Private Ltd Co', '', '', '', 'Active', 1, '2016-05-10 00:15:35', 0, '2016-05-09 18:15:35'),
(69, 'E.C.G', '', '', '', 'Active', 1, '2016-05-10 00:15:45', 0, '2016-05-09 18:15:45'),
(70, 'Eastern Bank Ltd', '', '', '', 'Active', 1, '2016-05-10 00:15:54', 0, '2016-05-09 18:15:54'),
(71, 'Eastern Housing Limited', 'CI20160510005722.png', '', '', 'Active', 1, '2016-05-10 00:16:03', 1, '2016-05-09 18:57:22'),
(72, 'Eastern Refinery', '', '', '', 'Active', 1, '2016-05-10 00:16:09', 0, '2016-05-09 18:16:09'),
(73, 'Engineering Linkers', '', '', '', 'Active', 1, '2016-05-10 00:16:16', 0, '2016-05-09 18:16:16'),
(74, 'Epic Design Ltd', '', '', '', 'Active', 1, '2016-05-10 00:16:24', 0, '2016-05-09 18:16:24'),
(75, 'Erba Limited', '', '', '', 'Active', 1, '2016-05-10 00:16:31', 0, '2016-05-09 18:16:31'),
(76, 'Essential Drugs Co. Ltd', '', '', '', 'Active', 1, '2016-05-10 00:16:39', 0, '2016-05-09 18:16:39'),
(77, 'Etafil Badam Factory', '', '', '', 'Active', 1, '2016-05-10 00:16:48', 0, '2016-05-09 18:16:48'),
(78, 'EUK Trade International', '', '', '', 'Active', 1, '2016-05-10 00:16:57', 0, '2016-05-09 18:16:57'),
(79, 'Fisons BD Ltd', '', '', '', 'Active', 1, '2016-05-10 00:17:05', 0, '2016-05-09 18:17:05'),
(80, 'Fuwang Ceramic Industry Ltd', '', '', '', 'Active', 1, '2016-05-10 00:17:11', 0, '2016-05-09 18:17:11'),
(81, 'Ganashastha Kendra', '', '', '', 'Inactive', 1, '2016-05-10 00:17:33', 0, '2016-05-09 18:17:33'),
(82, 'Genetic Design & Development Ltd', '', '', '', 'Active', 1, '2016-05-10 00:17:40', 0, '2016-05-09 18:17:40'),
(83, 'Genuine Jewelers (Pvt.) Ltd.', '', '', '', 'Active', 1, '2016-05-10 00:17:49', 0, '2016-05-09 18:17:49'),
(84, 'Grameen Phone', '', '', '', 'Inactive', 1, '2016-05-10 00:17:56', 0, '2016-05-09 18:17:56'),
(85, 'Grameen Shamograya', '', '', '', 'Active', 1, '2016-05-10 00:18:04', 0, '2016-05-09 18:18:04'),
(86, 'Grameenphone Celebration Point', '', '', '', 'Active', 1, '2016-05-10 00:18:11', 0, '2016-05-09 18:18:11'),
(87, 'Greentex Lable Ltd', '', '', '', 'Active', 1, '2016-05-10 00:18:19', 0, '2016-05-09 18:18:19'),
(88, 'Gulf Air (Travel Trade)', '', '', '', 'Inactive', 1, '2016-05-10 00:18:26', 0, '2016-05-09 18:18:26'),
(89, 'Gulshan Club Ltd', '', '', '', 'Active', 1, '2016-05-10 00:18:33', 0, '2016-05-09 18:18:33'),
(90, 'Gulshan Spining Mills', '', '', '', 'Active', 1, '2016-05-10 00:18:43', 0, '2016-05-09 18:18:43'),
(91, 'Heidelberg Cement Bangladesh Ltd', '', '', '', 'Active', 1, '2016-05-10 00:18:54', 0, '2016-05-09 18:18:54'),
(92, 'Honda Motors', '', '', '', 'Inactive', 1, '2016-05-10 00:19:01', 0, '2016-05-09 18:19:01'),
(93, 'Ibrahim Cardiac Hospital & Research Institute', '', '', '', 'Active', 1, '2016-05-10 00:19:08', 0, '2016-05-09 18:19:08'),
(94, 'ICBD Hospital S.B.', '', '', '', 'Active', 1, '2016-05-10 00:19:14', 0, '2016-05-09 18:19:14'),
(95, 'ICDDRB', '', '', '', 'Active', 1, '2016-05-10 00:19:22', 0, '2016-05-09 18:19:22'),
(96, 'ICMH', '', '', '', 'Active', 1, '2016-05-10 00:19:32', 0, '2016-05-09 18:19:32'),
(97, 'IDLC Finance Limited', 'CI20160510005638.png', '', '', 'Active', 1, '2016-05-10 00:19:40', 1, '2016-05-09 18:56:38'),
(98, 'IFIC Bank Limited', 'CI20160510005813.png', '', '', 'Active', 1, '2016-05-10 00:19:48', 1, '2016-05-09 18:58:13'),
(99, 'INDRA SISTEMAS', '', '', '', 'Active', 1, '2016-05-10 00:19:54', 0, '2016-05-09 18:19:54'),
(100, 'International Technical Consultants Ltd', '', '', '', 'Active', 1, '2016-05-10 00:20:03', 0, '2016-05-09 18:20:03'),
(101, 'Iqbal Tower (7th Floor)', '', '', '', 'Active', 1, '2016-05-10 00:20:11', 0, '2016-05-09 18:20:11'),
(102, 'J.C.M. Engineers', '', '', '', 'Active', 1, '2016-05-10 00:20:20', 0, '2016-05-09 18:20:20'),
(103, 'J.K Fashion', '', '', '', 'Active', 1, '2016-05-10 00:20:31', 0, '2016-05-09 18:20:31'),
(104, 'Jalalabad Gas Transmission & Distribution System Ltd (JGTDSL)', '', '', '', 'Active', 1, '2016-05-10 00:20:38', 0, '2016-05-09 18:20:38'),
(105, 'Jamuna Multipurpose Bridge Authority', '', '', '', 'Active', 1, '2016-05-10 00:20:46', 0, '2016-05-09 18:20:46'),
(106, 'Jamuna Television Ltd', '', '', '', 'Active', 1, '2016-05-10 00:20:53', 0, '2016-05-09 18:20:53'),
(107, 'Japan Garden City Ltd.', '', '', '', 'Active', 1, '2016-05-10 00:21:00', 0, '2016-05-09 18:21:00'),
(108, 'Jenis Packages Ltd', '', '', '', 'Active', 1, '2016-05-10 00:21:07', 0, '2016-05-09 18:21:07'),
(109, 'JICA', 'CI20160510005657.png', '', '', 'Active', 1, '2016-05-10 00:21:25', 1, '2016-05-09 18:56:57'),
(110, 'Jita Fashions', '', '', '', 'Active', 1, '2016-05-10 00:21:36', 0, '2016-05-09 18:21:36'),
(111, 'Karnaphuli Insurance Co. Ltd', '', '', '', 'Active', 1, '2016-05-10 00:21:43', 0, '2016-05-09 18:21:43'),
(112, 'KIB Complex Project', '', '', '', 'Active', 1, '2016-05-10 00:22:21', 0, '2016-05-09 18:22:21'),
(113, 'KICO International', '', '', '', 'Active', 1, '2016-05-10 00:22:52', 0, '2016-05-09 18:22:52'),
(114, 'Kuliar Char Cold Storage Ltd.', '', '', '', 'Active', 1, '2016-05-10 00:23:01', 0, '2016-05-09 18:23:01'),
(115, 'Kumudini Complex', '', '', '', 'Active', 1, '2016-05-10 00:23:09', 0, '2016-05-09 18:23:09'),
(116, 'Kusholi Nirmata Limited', '', '', '', 'Active', 1, '2016-05-10 00:23:17', 0, '2016-05-09 18:23:17'),
(117, 'Lia Sharee Fashion', '', '', '', 'Active', 1, '2016-05-10 00:23:23', 0, '2016-05-09 18:23:23'),
(118, 'Liberation War Museum (LWM)', '', '', '', 'Active', 1, '2016-05-10 00:24:06', 0, '2016-05-09 18:24:06'),
(119, 'Lucky Gold', '', '', '', 'Active', 1, '2016-05-10 00:24:13', 0, '2016-05-09 18:24:13'),
(120, 'M.S Trade Consort (Pvt.)  Ltd', '', '', '', 'Active', 1, '2016-05-10 00:24:23', 0, '2016-05-09 18:24:23'),
(121, 'M/S Banga Builders', '', '', '', 'Active', 1, '2016-05-10 00:25:13', 0, '2016-05-09 18:25:13'),
(122, 'M/S. Reliance Traders', '', '', '', 'Active', 1, '2016-05-10 00:25:22', 0, '2016-05-09 18:25:22'),
(123, 'M2K Technology & Trading Co.', '', '', '', 'Active', 1, '2016-05-10 00:25:30', 0, '2016-05-09 18:25:30'),
(124, 'Marcentile Insurance Co. Ltd', '', '', '', 'Active', 1, '2016-05-10 00:25:37', 0, '2016-05-09 18:25:37'),
(125, 'Marco Hunts Ltd', '', '', '', 'Active', 1, '2016-05-10 00:25:48', 0, '2016-05-09 18:25:48'),
(126, 'Maudud Ahmed & Associates', '', '', '', 'Inactive', 1, '2016-05-10 00:25:58', 0, '2016-05-09 18:25:58'),
(127, 'Meghna Milk Product Ltd', '', '', '', 'Inactive', 1, '2016-05-10 00:26:04', 0, '2016-05-09 18:26:04'),
(128, 'MES-A, Savar Cantonment', '', '', '', 'Inactive', 1, '2016-05-10 00:26:14', 0, '2016-05-09 18:26:14'),
(129, 'Moghbazar Telephone', '', '', '', 'Active', 1, '2016-05-10 00:26:21', 0, '2016-05-09 18:26:21'),
(130, 'Moon Enterprise', '', '', '', 'Active', 1, '2016-05-10 00:26:33', 0, '2016-05-09 18:26:33'),
(131, 'Motaleb Tower', '', '', '', 'Inactive', 1, '2016-05-10 00:26:43', 0, '2016-05-09 18:26:43'),
(132, 'Muktakantha News Station', '', '', '', 'Inactive', 1, '2016-05-10 00:26:53', 0, '2016-05-09 18:26:53'),
(133, 'Mutual Food Products Ltd', '', '', '', 'Active', 1, '2016-05-10 00:27:00', 0, '2016-05-09 18:27:00'),
(134, 'Nabo Udduge Ltd', '', '', '', 'Active', 1, '2016-05-10 00:27:08', 0, '2016-05-09 18:27:08'),
(135, 'Nandan Food & Beverage Ind. Ltd', '', '', '', 'Active', 1, '2016-05-10 00:27:20', 0, '2016-05-09 18:27:20'),
(136, 'National Bank Ltd', '', '', '', 'Inactive', 1, '2016-05-10 00:27:27', 0, '2016-05-09 18:27:27'),
(137, 'National Youth Centre', '', '', '', 'Inactive', 1, '2016-05-10 00:27:38', 0, '2016-05-09 18:27:38'),
(138, 'Navana Computers & Technologies Ltd.', '', '', '', 'Active', 1, '2016-05-10 00:27:46', 0, '2016-05-09 18:27:46'),
(139, 'Ninfas Foods Limited', '', '', '', 'Active', 1, '2016-05-10 00:28:07', 0, '2016-05-09 18:28:07'),
(140, 'Nirman International Ltd', '', '', '', 'Active', 1, '2016-05-10 00:28:18', 0, '2016-05-09 18:28:18'),
(141, 'Nissan Showroom Cum Office Complex', '', '', '', 'Inactive', 1, '2016-05-10 00:28:24', 0, '2016-05-09 18:28:24'),
(142, 'North South University', '', '', '', 'Active', 1, '2016-05-10 00:28:31', 0, '2016-05-09 18:28:31'),
(143, 'Northern General Insurance Ltd', '', '', '', 'Active', 1, '2016-05-10 00:28:37', 0, '2016-05-09 18:28:37'),
(144, 'NSI office', '', '', '', 'Active', 1, '2016-05-10 00:28:48', 0, '2016-05-09 18:28:48'),
(145, 'Novartis (Bangladesh) Limited', '', '', '', 'Inactive', 1, '2016-05-10 00:28:57', 0, '2016-05-09 18:28:57'),
(146, 'Oman Air', '', '', '', 'Active', 1, '2016-05-10 00:29:05', 0, '2016-05-09 18:29:05'),
(147, 'Omera Cylinders Limited', '', '', '', 'Active', 1, '2016-05-10 00:29:14', 0, '2016-05-09 18:29:14'),
(148, 'Orient Maritime Ltd', '', '', '', 'Active', 1, '2016-05-10 00:29:22', 0, '2016-05-09 18:29:22'),
(149, 'Orion Laboratories Ltd.', '', '', '', 'Active', 1, '2016-05-10 00:29:29', 0, '2016-05-09 18:29:29'),
(150, 'Overseas Marketing Corporation (Pvt.) Ltd.', '', '', '', 'Active', 1, '2016-05-10 00:29:36', 0, '2016-05-09 18:29:36'),
(151, 'Pacific Bangladesh Telecom Ltd.', '', '', '', 'Inactive', 1, '2016-05-10 00:29:49', 0, '2016-05-09 18:29:49'),
(152, 'Pacific Centre', '', '', '', 'Inactive', 1, '2016-05-10 00:29:58', 0, '2016-05-09 18:29:58'),
(153, 'Pacific Maintenance & Energy Conversion Trust', '', '', '', 'Active', 1, '2016-05-10 00:30:07', 0, '2016-05-09 18:30:07'),
(154, 'Padma Oil Co. Ltd', '', '', '', 'Active', 1, '2016-05-10 00:30:16', 0, '2016-05-09 18:30:16'),
(155, 'Paradise Corporation (Pvt.) Ltd', '', '', '', 'Inactive', 1, '2016-05-10 00:30:27', 0, '2016-05-09 18:30:27'),
(156, 'Paradox Engineering Services', '', '', '', 'Active', 1, '2016-05-10 00:30:35', 0, '2016-05-09 18:30:35'),
(157, 'Party House, Z.R Bhaban', '', '', '', 'Inactive', 1, '2016-05-10 00:30:44', 0, '2016-05-09 18:30:44'),
(158, 'Planners Tower', '', '', '', 'Active', 1, '2016-05-10 00:30:50', 0, '2016-05-09 18:30:50'),
(159, 'Pledge Harbor School and Sports Academy', '', '', '', 'Active', 1, '2016-05-10 00:30:58', 0, '2016-05-09 18:30:58'),
(160, 'Prime Bank Ltd', '', '', '', 'Active', 1, '2016-05-10 00:31:06', 0, '2016-05-09 18:31:06'),
(161, 'Progati Insurance Ltd', '', '', '', 'Active', 1, '2016-05-10 00:31:26', 0, '2016-05-09 18:31:26'),
(162, 'Provati Insurance Co. Ltd', '', '', '', 'Active', 1, '2016-05-10 00:31:35', 0, '2016-05-09 18:31:35'),
(163, 'Pubali Bank Ltd', '', '', '', 'Active', 1, '2016-05-10 00:31:43', 0, '2016-05-09 18:31:43'),
(164, 'Puraloy Prokaushali Ltd', '', '', '', 'Active', 1, '2016-05-10 00:32:59', 0, '2016-05-09 18:32:59'),
(165, 'PWD E/M Division-V', '', '', '', 'Active', 1, '2016-05-10 00:33:07', 0, '2016-05-09 18:33:07'),
(166, 'Rahimafrooz Batteries Limited', '', '', '', 'Active', 1, '2016-05-10 00:33:15', 0, '2016-05-09 18:33:15'),
(167, 'Raj Overseas', '', '', '', 'Active', 1, '2016-05-10 00:33:22', 0, '2016-05-09 18:33:22'),
(168, 'Rangs Electronics', '', '', '', 'Active', 1, '2016-05-10 00:33:30', 0, '2016-05-09 18:33:30'),
(169, 'Rangs Industries Ltd', '', '', '', 'Active', 1, '2016-05-10 00:33:39', 0, '2016-05-09 18:33:39'),
(170, 'Reliance Insurance Ltd', '', '', '', 'Active', 1, '2016-05-10 00:33:47', 0, '2016-05-09 18:33:47'),
(171, 'Rema Tea Co Ltd', '', '', '', 'Active', 1, '2016-05-10 00:34:00', 0, '2016-05-09 18:34:00'),
(172, 'Rosette Group Of Industries', '', '', '', 'Active', 1, '2016-05-10 00:34:07', 0, '2016-05-09 18:34:07'),
(173, 'Royal Park', '', '', '', 'Active', 1, '2016-05-10 00:34:14', 0, '2016-05-09 18:34:14'),
(174, 'S.S Shipping', '', '', '', 'Active', 1, '2016-05-10 00:34:26', 0, '2016-05-09 18:34:26'),
(175, 'Sajeeb Corporation', '', '', '', 'Active', 1, '2016-05-10 00:34:33', 0, '2016-05-09 18:34:33'),
(176, 'Sakura Restaurant & Bar', '', '', '', 'Active', 1, '2016-05-10 00:34:39', 0, '2016-05-09 18:34:39'),
(177, 'SAR & CO. Ltd', '', '', '', 'Active', 1, '2016-05-10 00:34:45', 0, '2016-05-09 18:34:45'),
(178, 'Sar & Company', '', '', '', 'Active', 1, '2016-05-10 00:34:59', 0, '2016-05-09 18:34:59'),
(179, 'Sari Fashion', '', '', '', 'Active', 1, '2016-05-10 00:35:08', 0, '2016-05-09 18:35:08'),
(180, 'Saudia Arlines', '', '', '', 'Active', 1, '2016-05-10 00:35:32', 0, '2016-05-09 18:35:32'),
(181, 'SGS Bangladesh Ltd.', '', '', '', 'Active', 1, '2016-05-10 00:35:46', 0, '2016-05-09 18:35:46'),
(182, 'Shahid Electric Works', '', '', '', 'Active', 1, '2016-05-10 00:35:54', 0, '2016-05-09 18:35:54'),
(183, 'Shanta Industries Ltd.', '', '', '', 'Active', 1, '2016-05-10 00:36:01', 0, '2016-05-09 18:36:01'),
(184, 'Shanta Washing Plant Ltd', '', '', '', 'Active', 1, '2016-05-10 00:36:10', 0, '2016-05-09 18:36:10'),
(185, 'Shinepukur Ceramics Ltd Factory', '', '', '', 'Active', 1, '2016-05-10 00:36:17', 0, '2016-05-09 18:36:17'),
(186, 'Sino Bangla Industry Ltd', '', '', '', 'Active', 1, '2016-05-10 00:38:58', 0, '2016-05-09 18:38:58'),
(187, 'Six Seasons Hotel Ltd', '', '', '', 'Active', 1, '2016-05-10 00:39:07', 0, '2016-05-09 18:39:07'),
(188, 'Social Marketing Company', '', '', '', 'Active', 1, '2016-05-10 00:39:24', 0, '2016-05-09 18:39:24'),
(189, 'Sonali Bank Ltd', '', '', '', 'Inactive', 1, '2016-05-10 00:39:41', 0, '2016-05-09 18:39:41'),
(190, 'South East Bank Ltd', '', '', '', 'Active', 1, '2016-05-10 00:39:52', 0, '2016-05-09 18:39:52'),
(191, 'Southern Garments Ltd', '', '', '', 'Active', 1, '2016-05-10 00:40:01', 0, '2016-05-09 18:40:01'),
(192, 'Square Pharmaceuticals Ltd', '', '', '', 'Active', 1, '2016-05-10 00:40:14', 0, '2016-05-09 18:40:14'),
(193, 'Square Toiletries Ltd', '', '', '', 'Active', 1, '2016-05-10 00:40:23', 0, '2016-05-09 18:40:23'),
(194, 'Standard Garments Ltd', '', '', '', 'Active', 1, '2016-05-10 00:40:30', 0, '2016-05-09 18:40:30'),
(195, 'Standard Group', '', '', '', 'Active', 1, '2016-05-10 00:40:39', 0, '2016-05-09 18:40:39'),
(196, 'Standard Sweets', '', '', '', 'Active', 1, '2016-05-10 00:40:48', 0, '2016-05-09 18:40:48'),
(197, 'Sthapti Sangshad Ltd', '', '', '', 'Active', 1, '2016-05-10 00:40:56', 0, '2016-05-09 18:40:56'),
(198, 'Summit Properties Ltd', '', '', '', 'Active', 1, '2016-05-10 00:41:06', 0, '2016-05-09 18:41:06'),
(199, 'Sun Pharmaceutical (Bangladesh) Ltd', '', '', '', 'Active', 1, '2016-05-10 00:41:13', 0, '2016-05-09 18:41:13'),
(200, 'Sundarban Hotel', '', '', '', 'Active', 1, '2016-05-10 00:41:21', 0, '2016-05-09 18:41:21'),
(201, 'Sunrise Pre-Cadet School & College', '', '', '', 'Active', 1, '2016-05-10 00:41:33', 0, '2016-05-09 18:41:33'),
(202, 'Superior Builders & Engineers Ltd', '', '', '', 'Active', 1, '2016-05-10 00:41:46', 0, '2016-05-09 18:41:46'),
(203, 'Tanshir Properties', '', '', '', 'Active', 1, '2016-05-10 00:43:00', 0, '2016-05-09 18:43:00'),
(204, 'Tanveer Polymer Industries Ltd.', '', '', '', 'Active', 1, '2016-05-10 00:43:08', 0, '2016-05-09 18:43:08'),
(205, 'Tech Velly Networks Ltd.', '', '', '', 'Active', 1, '2016-05-10 00:43:19', 0, '2016-05-09 18:43:19'),
(206, 'Telephone Shilpa Sangstha Ltd', '', '', '', 'Active', 1, '2016-05-10 00:43:27', 0, '2016-05-09 18:43:27'),
(207, 'The Civil Engineers Ltd', '', '', '', 'Active', 1, '2016-05-10 00:43:38', 0, '2016-05-09 18:43:38'),
(208, 'The Dental Care', '', '', '', 'Active', 1, '2016-05-10 00:43:46', 0, '2016-05-09 18:43:46'),
(209, 'The Divisional Engineer Computer Data network Project', '', '', '', 'Active', 1, '2016-05-10 00:43:53', 0, '2016-05-09 18:43:53'),
(210, 'The Ibn Sina Pharmaceutical Industry Ltd', '', '', '', 'Active', 1, '2016-05-10 00:43:59', 0, '2016-05-09 18:43:59'),
(211, 'The Institute of Chartered Accountants of Bangladesh', '', '', '', 'Active', 1, '2016-05-10 00:44:06', 0, '2016-05-09 18:44:06'),
(212, 'Therapeutics (Bangladesh) Ltd.', '', '', '', 'Active', 1, '2016-05-10 00:44:17', 0, '2016-05-09 18:44:17'),
(213, 'Three Star Hotel Sweet Dream', '', '', '', 'Active', 1, '2016-05-10 00:44:24', 0, '2016-05-09 18:44:24'),
(214, 'Toma Construction & Co. Ltd.', '', '', '', 'Active', 1, '2016-05-10 00:44:33', 0, '2016-05-09 18:44:33'),
(215, 'Tradeercan Ltd', '', '', '', 'Active', 1, '2016-05-10 00:44:44', 0, '2016-05-09 18:44:44'),
(216, 'Travel Trade Ltd (GSA Gurlf Air)', '', '', '', 'Active', 1, '2016-05-10 00:44:50', 0, '2016-05-09 18:44:50'),
(217, 'Unique Cement Industries Ltd', '', '', '', 'Active', 1, '2016-05-10 00:45:00', 0, '2016-05-09 18:45:00'),
(218, 'United Leasing Co. Ltd', '', '', '', 'Active', 1, '2016-05-10 00:45:07', 0, '2016-05-09 18:45:07'),
(219, 'United Leather Ltd.', '', '', '', 'Active', 1, '2016-05-10 00:45:16', 0, '2016-05-09 18:45:16'),
(220, 'United Mineral Water Pet Ind. Ltd', '', '', '', 'Active', 1, '2016-05-10 00:45:23', 0, '2016-05-09 18:45:23'),
(221, 'Universal Label Ltd', '', '', '', 'Active', 1, '2016-05-10 00:45:31', 1, '2016-05-09 18:47:38'),
(222, 'Z.H Siker Womens Medical College Hospital', '', '', '', 'Active', 1, '2016-05-10 00:46:21', 0, '2016-05-09 18:46:21'),
(223, 'Z.R Estate (Pvt.) Ltd', '', '', '', 'Active', 1, '2016-05-10 00:46:34', 0, '2016-05-09 18:46:34');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_name` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_message` text NOT NULL,
  `contact_subject` varchar(255) NOT NULL,
  `contact_created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(255) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=253 ;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'American Samoa'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Anguilla'),
(8, 'Antarctica'),
(9, 'Antigua and Barbuda'),
(10, 'Argentina'),
(11, 'Armenia'),
(12, 'Armenia'),
(13, 'Aruba'),
(14, 'Australia'),
(15, 'Austria'),
(16, 'Azerbaijan'),
(17, 'Azerbaijan'),
(18, 'Bahamas'),
(19, 'Bahrain'),
(20, 'Bangladesh'),
(21, 'Barbados'),
(22, 'Belarus'),
(23, 'Belgium'),
(24, 'Belize'),
(25, 'Benin'),
(26, 'Bermuda'),
(27, 'Bhutan'),
(28, 'Bolivia'),
(29, 'Bosnia and Herzegovina'),
(30, 'Botswana'),
(31, 'Bouvet Island'),
(32, 'Brazil'),
(33, 'British Indian Ocean Territory'),
(34, 'Brunei Darussalam'),
(35, 'Bulgaria'),
(36, 'Burkina Faso'),
(37, 'Burundi'),
(38, 'Cambodia'),
(39, 'Cameroon'),
(40, 'Canada'),
(41, 'Cape Verde'),
(42, 'Cayman Islands'),
(43, 'Central African Republic'),
(44, 'Chad'),
(45, 'Chile'),
(46, 'China'),
(47, 'Christmas Island'),
(48, 'Cocos (Keeling) Islands'),
(49, 'Colombia'),
(50, 'Comoros'),
(51, 'Congo'),
(52, 'Congo, The Democratic Republic of The'),
(53, 'Cook Islands'),
(54, 'Costa Rica'),
(55, 'Cote D''ivoire'),
(56, 'Croatia'),
(57, 'Cuba'),
(58, 'Cyprus'),
(60, 'Czech Republic'),
(61, 'Denmark'),
(62, 'Djibouti'),
(63, 'Dominica'),
(64, 'Dominican Republic'),
(65, 'Easter Island'),
(66, 'Ecuador'),
(67, 'Egypt'),
(68, 'El Salvador'),
(69, 'Equatorial Guinea'),
(70, 'Eritrea'),
(71, 'Estonia'),
(72, 'Ethiopia'),
(73, 'Falkland Islands (Malvinas)'),
(74, 'Faroe Islands'),
(75, 'Fiji'),
(76, 'Finland'),
(77, 'France'),
(78, 'French Guiana'),
(79, 'French Polynesia'),
(80, 'French Southern Territories'),
(81, 'Gabon'),
(82, 'Gambia'),
(83, 'Georgia'),
(85, 'Germany'),
(86, 'Ghana'),
(87, 'Gibraltar'),
(88, 'Greece'),
(89, 'Greenland'),
(91, 'Grenada'),
(92, 'Guadeloupe'),
(93, 'Guam'),
(94, 'Guatemala'),
(95, 'Guinea'),
(96, 'Guinea-bissau'),
(97, 'Guyana'),
(98, 'Haiti'),
(99, 'Heard Island and Mcdonald Islands'),
(100, 'Honduras'),
(101, 'Hong Kong'),
(102, 'Hungary'),
(103, 'Iceland'),
(104, 'India'),
(105, 'Indonesia'),
(106, 'Indonesia'),
(107, 'Iran'),
(108, 'Iraq'),
(109, 'Ireland'),
(110, 'Israel'),
(111, 'Italy'),
(112, 'Jamaica'),
(113, 'Japan'),
(114, 'Jordan'),
(115, 'Kazakhstan'),
(116, 'Kazakhstan'),
(117, 'Kenya'),
(118, 'Kiribati'),
(119, 'Korea, North'),
(120, 'Korea, South'),
(121, 'Kosovo'),
(122, 'Kuwait'),
(123, 'Kyrgyzstan'),
(124, 'Laos'),
(125, 'Latvia'),
(126, 'Lebanon'),
(127, 'Lesotho'),
(128, 'Liberia'),
(129, 'Libyan Arab Jamahiriya'),
(130, 'Liechtenstein'),
(131, 'Lithuania'),
(132, 'Luxembourg'),
(133, 'Macau'),
(134, 'Macedonia'),
(135, 'Madagascar'),
(136, 'Malawi'),
(137, 'Malaysia'),
(138, 'Maldives'),
(139, 'Mali'),
(140, 'Malta'),
(141, 'Marshall Islands'),
(142, 'Martinique'),
(143, 'Mauritania'),
(144, 'Mauritius'),
(145, 'Mayotte'),
(146, 'Mexico'),
(147, 'Micronesia, Federated States of'),
(148, 'Moldova, Republic of'),
(149, 'Monaco'),
(150, 'Mongolia'),
(151, 'Montenegro'),
(152, 'Montserrat'),
(153, 'Morocco'),
(154, 'Mozambique'),
(155, 'Myanmar'),
(156, 'Namibia'),
(157, 'Nauru'),
(158, 'Nepal'),
(159, 'Netherlands'),
(160, 'Netherlands Antilles'),
(161, 'New Caledonia'),
(162, 'New Zealand'),
(163, 'Nicaragua'),
(164, 'Niger'),
(165, 'Nigeria'),
(166, 'Niue'),
(167, 'Norfolk Island'),
(168, 'Northern Mariana Islands'),
(169, 'Norway'),
(170, 'Oman'),
(171, 'Pakistan'),
(172, 'Palau'),
(173, 'Palestinian Territory'),
(174, 'Panama'),
(175, 'Papua New Guinea'),
(176, 'Paraguay'),
(177, 'Peru'),
(178, 'Philippines'),
(179, 'Pitcairn'),
(180, 'Poland'),
(181, 'Portugal'),
(182, 'Puerto Rico'),
(183, 'Qatar'),
(184, 'Reunion'),
(185, 'Romania'),
(186, 'Russia'),
(187, 'Russia'),
(188, 'Rwanda'),
(189, 'Saint Helena'),
(190, 'Saint Kitts and Nevis'),
(191, 'Saint Lucia'),
(192, 'Saint Pierre and Miquelon'),
(193, 'Saint Vincent and The Grenadines'),
(194, 'Samoa'),
(195, 'San Marino'),
(196, 'Sao Tome and Principe'),
(197, 'Saudi Arabia'),
(198, 'Senegal'),
(199, 'Serbia and Montenegro'),
(200, 'Seychelles'),
(201, 'Sierra Leone'),
(202, 'Singapore'),
(203, 'Slovakia'),
(204, 'Slovenia'),
(205, 'Solomon Islands'),
(206, 'Somalia'),
(207, 'South Africa'),
(208, 'South Georgia and The South Sandwich Islands'),
(209, 'Spain'),
(210, 'Sri Lanka'),
(211, 'Sudan'),
(212, 'Suriname'),
(213, 'Svalbard and Jan Mayen'),
(214, 'Swaziland'),
(215, 'Sweden'),
(216, 'Switzerland'),
(217, 'Syria'),
(218, 'Taiwan'),
(219, 'Tajikistan'),
(220, 'Tanzania, United Republic of'),
(221, 'Thailand'),
(222, 'Timor-leste'),
(223, 'Togo'),
(224, 'Tokelau'),
(225, 'Tonga'),
(226, 'Trinidad and Tobago'),
(227, 'Tunisia'),
(228, 'Turkey'),
(229, 'Turkey'),
(230, 'Turkmenistan'),
(231, 'Turks and Caicos Islands'),
(232, 'Tuvalu'),
(233, 'Uganda'),
(234, 'Ukraine'),
(235, 'United Arab Emirates'),
(236, 'United Kingdom'),
(237, 'United States'),
(238, 'United States Minor Outlying Islands'),
(239, 'Uruguay'),
(240, 'Uzbekistan'),
(241, 'Vanuatu'),
(242, 'Vatican City'),
(243, 'Venezuela'),
(244, 'Vietnam'),
(245, 'Virgin Islands, British'),
(246, 'Virgin Islands, U.S.'),
(247, 'Wallis and Futuna'),
(248, 'Western Sahara'),
(249, 'Yemen'),
(250, 'Yemen'),
(251, 'Zambia'),
(252, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE IF NOT EXISTS `equipment` (
  `equipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `equipment_name` varchar(255) NOT NULL,
  `equipment_details` text NOT NULL,
  `equipment_qty` varchar(255) NOT NULL,
  `equipment_created_on` datetime NOT NULL,
  `equipment_created_by` int(11) NOT NULL,
  `equipment_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `equipment_updated_by` int(11) NOT NULL,
  `equipment_status` enum('Active','Inactive') NOT NULL,
  PRIMARY KEY (`equipment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=95 ;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`equipment_id`, `equipment_name`, `equipment_details`, `equipment_qty`, `equipment_created_on`, `equipment_created_by`, `equipment_updated_on`, `equipment_updated_by`, `equipment_status`) VALUES
(1, 'Direct Measuring Air Flow Hood, Digital', '01-10000 CFM, ACEZ Industries Pte Ltd., KIMO DBM 700', '01 Set', '2016-05-09 23:46:33', 1, '2016-05-09 17:46:33', 0, 'Active'),
(2, 'Water Flow Meter, digital', '0-5000 USGPM, Danfoss, PFM 400, 20-1000 Kpa', '01 Set', '2016-05-09 23:47:29', 1, '2016-05-09 17:47:29', 0, 'Active'),
(3, 'Digital Tachometer', 'DT-22348, 0-99999 RPM', '01 Set', '2016-05-09 23:48:00', 1, '2016-05-09 17:48:00', 0, 'Active'),
(4, 'Anemometer / CFM Meter', '0.25 to 30 M/S 50 to 60000 Ft/Min, Air Flow, LCA 6000, Running, England', '01 Set', '2016-05-09 23:49:14', 1, '2016-05-09 17:53:05', 1, 'Active'),
(5, 'Digital Thermometer', 'Quartz Japan, A-Z-668-SHR, (-)50°C to (+)260°C', '10 Set', '2016-05-09 23:52:36', 1, '2016-05-09 17:52:36', 0, 'Active'),
(6, 'Digital Hygrometer', '20% to 100% RH', '10 Set', '2016-05-09 23:55:26', 1, '2016-05-09 17:55:26', 0, 'Active'),
(7, 'Sling Hygrometer', '20% to 100% RH', '02 Sets', '2016-05-09 23:56:11', 1, '2016-05-09 17:56:11', 0, 'Active'),
(8, 'Polyurethane Insulation Injected Machine', 'For pipe and other in Situ Insulation', '01 Set', '2016-05-09 23:57:11', 1, '2016-05-09 17:57:11', 0, 'Active'),
(9, 'Duct Fabricating Machine', 'Good condition', '01 Set', '2016-05-09 23:57:43', 1, '2016-05-09 17:57:43', 0, 'Active'),
(10, 'Lock Forma Machine', '5 ton / day, Running, Local', '02 Sets', '2016-05-09 23:58:38', 1, '2016-05-09 17:58:38', 0, 'Active'),
(11, 'Bender', '8 ton / day, Running, Local', '02 Sets', '2016-05-12 21:11:41', 1, '2016-05-12 15:11:41', 0, 'Active'),
(12, 'Sheet Cutter Machine', '5 ton / day, Running, Local', '02 Sets', '2016-05-12 21:13:28', 1, '2016-05-12 15:13:28', 0, 'Active'),
(13, 'Generator', 'Powerpac, Britain, WP01-3037/1, 48 kW, 86.6 Amp, Running', '02 Sets', '2016-05-12 21:14:36', 1, '2016-05-12 15:14:36', 0, 'Active'),
(14, 'Grinding Machine', 'King, 1400 RPM, Running, Japan', '02 Sets', '2016-05-12 21:15:51', 1, '2016-05-12 15:15:51', 0, 'Active'),
(15, 'Oxy-acetylene gas cylinder', 'Running', '04 Sets', '2016-05-12 21:18:00', 1, '2016-05-12 15:18:00', 0, 'Active'),
(16, 'HILTI', 'Running, Germany', '04 Sets', '2016-05-12 21:18:31', 1, '2016-05-12 15:18:31', 0, 'Active'),
(17, 'Clipon Meter', 'Kyoritsu, KEW Snap 2017, 100-600V, 0-200 OHM, Running , Japan', '10 Sets', '2016-05-12 21:19:40', 1, '2016-05-12 15:19:40', 0, 'Active'),
(18, 'Neon Tester, Earth Tester', 'Running, Japan', '10 Sets', '2016-05-12 21:20:14', 1, '2016-05-12 15:20:14', 0, 'Active'),
(19, 'Bench Drill Machine (Vertical)', 'ST-16A, 16 mm, 550W, 1Ph, Japan, Running', '10 Sets', '2016-05-12 21:21:17', 1, '2016-05-12 15:21:17', 0, 'Active'),
(20, 'Nitrogen gas cylinder', 'Running', '04 Sets', '2016-05-12 21:21:46', 1, '2016-05-12 15:21:46', 0, 'Active'),
(21, 'Electric welding machine', 'Running', '04 Sets', '2016-05-12 21:23:26', 1, '2016-05-12 15:23:26', 0, 'Active'),
(22, 'Sheet Cutter', 'Running, Local', '10 Sets', '2016-05-12 21:24:43', 1, '2016-05-12 15:24:43', 0, 'Active'),
(23, 'Wooden Mallet', 'Running, Local', '15 Nos', '2016-05-12 21:29:30', 1, '2016-05-12 15:29:30', 0, 'Active'),
(24, 'Hammer (2Lb - 5Lb)', 'Running, Local', '15 Nos', '2016-05-12 21:30:02', 1, '2016-05-12 15:30:02', 0, 'Active'),
(25, 'Chisel (Different Sizes)', 'Running, Local', '30 Nos', '2016-05-12 21:31:24', 1, '2016-05-12 15:31:24', 0, 'Active'),
(26, 'Angel Chanel', 'Running, Local', '06 Nos', '2016-05-12 21:31:48', 1, '2016-05-12 15:31:48', 0, 'Active'),
(27, 'Hand Drill', 'Bosch, D-70745, 800W, 1Ph, Germany, Running', '08 Nos', '2016-05-12 21:32:47', 1, '2016-05-12 15:32:47', 0, 'Active'),
(28, 'Screw driver flat + star', 'Jetech, Japan, Running', '60 Sets', '2016-05-12 21:33:40', 1, '2016-05-12 15:33:40', 0, 'Active'),
(29, 'Allen Key Set', 'jetech, 1.5-12, Japan, Running', '10 Sets', '2016-05-12 21:34:13', 1, '2016-05-12 15:34:13', 0, 'Active'),
(30, 'Chain Pully', 'HSZ, 3 Ton, China, Running', '03 Nos', '2016-05-12 21:34:44', 1, '2016-05-12 15:34:44', 0, 'Active'),
(31, 'Roller Machine', 'Running, Local', '01 Nos', '2016-05-12 21:35:11', 1, '2016-05-12 15:35:11', 0, 'Active'),
(32, 'Pipe Wrench (Different Sizes)', 'Running', '30 Nos', '2016-05-12 21:36:05', 1, '2016-05-12 15:36:05', 0, 'Active'),
(33, 'Set of Box wrench', 'Fukung, China, Running', '25 Nos', '2016-05-12 21:36:36', 1, '2016-05-12 15:36:36', 0, 'Active'),
(34, 'Set of Ring Wrench', 'Fukung, China, Running', '30 Nos', '2016-05-12 21:37:10', 1, '2016-05-12 15:37:10', 0, 'Active'),
(35, 'Set of Adjustable Wrench (2" - 24")', 'Fukung, China, Running', '50 Nos', '2016-05-12 21:38:09', 1, '2016-05-12 15:38:09', 0, 'Active'),
(36, 'Dhali Wrench', 'Fukung, China, Running', '50 Nos', '2016-05-12 21:38:54', 1, '2016-05-12 15:38:54', 0, 'Active'),
(37, 'Table vice', 'Running', '08 Nos', '2016-05-12 21:39:16', 1, '2016-05-12 15:39:16', 0, 'Active'),
(38, 'Ladder (Different Sizes)', 'Running', '10 Nos', '2016-05-12 21:39:48', 1, '2016-05-12 15:39:48', 0, 'Active'),
(39, 'Vacuum pump', 'Kinney, KT1500, 2 HP, USA, Running', '10 Nos', '2016-05-12 21:40:29', 1, '2016-05-12 16:15:18', 1, 'Active'),
(40, 'Hydraulic pump', 'Running', '02 Nos', '2016-05-12 21:40:53', 1, '2016-05-12 15:40:53', 0, 'Active'),
(41, 'Gauge Manifold', 'Think, Running', '30 Nos', '2016-05-12 21:41:32', 1, '2016-05-12 15:41:32', 0, 'Active'),
(42, 'Ratchet Wrench', 'Running', '10 Nos', '2016-05-12 21:41:54', 1, '2016-05-12 15:41:54', 0, 'Active'),
(43, 'Lighter', 'Running', '10 Nos', '2016-05-12 21:42:14', 1, '2016-05-12 15:42:14', 0, 'Active'),
(44, 'Nozzle (Different Sizes)', 'Running', '20 Nos', '2016-05-12 21:42:44', 1, '2016-05-12 15:42:44', 0, 'Active'),
(45, 'Electronic Leak Detector', 'Ritchie, USA, R-12, R-134a, Running', '08 Nos', '2016-05-12 21:43:32', 1, '2016-05-12 15:43:32', 0, 'Active'),
(46, 'Angle Cutter', '4 feet blade', '06 Nos', '2016-05-12 21:43:55', 1, '2016-05-12 15:43:55', 0, 'Active'),
(47, 'Thermo couple', 'Fluke, 50S K/J, USA, Good condition', '05 Nos', '2016-05-12 21:44:49', 1, '2016-05-12 15:44:49', 0, 'Active'),
(48, 'Noise meter', 'Al 320, 30-130 db, Good condition', '03 Nos', '2016-05-12 21:45:18', 1, '2016-05-12 15:45:18', 0, 'Active'),
(49, 'Hammer Drill m/c', 'GMBH-BOSCH', '09 Nos', '2016-05-12 21:45:57', 1, '2016-05-12 15:45:57', 0, 'Active'),
(50, 'Hand Drill Machine', 'Power Master', '04 Nos', '2016-05-12 21:47:11', 1, '2016-05-12 15:47:11', 0, 'Active'),
(51, 'Baby Drill Machine', 'Maktee, MT 602, 10mm, 450W', '03 Nos', '2016-05-12 21:47:51', 1, '2016-05-12 15:47:51', 0, 'Active'),
(52, 'Hacking Drill Machine', 'GCO14-2, BOSCH', '01 No', '2016-05-12 21:48:45', 1, '2016-05-12 15:48:45', 0, 'Active'),
(53, 'Cut Off Machine', 'GCC-14-2', '07 Nos', '2016-05-12 21:49:12', 1, '2016-05-12 15:49:12', 0, 'Active'),
(54, 'Angle grinder LS', 'G-307, 7"', '04 Nos', '2016-05-12 21:49:58', 1, '2016-05-12 15:49:58', 0, 'Active'),
(55, 'Angle grinder', 'G-704, 4"', '13 Nos', '2016-05-12 21:50:35', 1, '2016-05-12 15:50:35', 0, 'Active'),
(56, 'Gas Pipe Cutter', 'Running', '01 No', '2016-05-12 21:51:06', 1, '2016-05-12 15:51:06', 0, 'Active'),
(57, 'Pipe Threading Machines, Rigid', 'Beaver 80, Asada Corporation, 1140W', '01 No', '2016-05-12 21:52:07', 1, '2016-05-12 15:52:07', 0, 'Active'),
(58, 'Welding Machine', 'MH-135A', '03 Nos', '2016-05-12 21:52:41', 1, '2016-05-12 15:52:41', 0, 'Active'),
(59, 'BX 1 400 Amp (AC ARC)', 'Kaierda Electric Welding Co, Ltd., BX 1-400 Amp', '05 Nos', '2016-05-12 21:53:47', 1, '2016-05-12 15:53:47', 0, 'Active'),
(60, 'Pipe Threading Machines', 'Beaver 80, Asada Corporation', '01 No', '2016-05-12 21:54:44', 1, '2016-05-12 15:54:44', 0, 'Active'),
(61, 'BX 1 315 Amp', 'Kaierada Electric Welding Co. Ltd., BX 1-315 Amp', '01 No', '2016-05-12 21:56:58', 1, '2016-05-12 15:56:58', 0, 'Active'),
(62, 'AC 300', 'AC-300', '01 No', '2016-05-12 21:57:18', 1, '2016-05-12 15:57:18', 0, 'Active'),
(63, 'AC 300A', 'AC-300A', '01 No', '2016-05-12 21:57:41', 1, '2016-05-12 15:57:41', 0, 'Active'),
(64, 'OC 130', 'OC 130', '02 Nos', '2016-05-12 21:58:01', 1, '2016-05-12 15:58:01', 0, 'Active'),
(65, 'Hand Test Pump', 'Guofu, SY60, 6 Mpa', '01 No', '2016-05-12 21:58:55', 1, '2016-05-12 15:58:55', 0, 'Active'),
(66, 'Pipe Dies', 'REX 2R, 5/8"-1 1/2", 220W', '06 Nos', '2016-05-12 21:59:46', 1, '2016-05-12 15:59:46', 0, 'Active'),
(67, 'Pipe Dies (Ratchet type)', 'LAZO, ST2RC, 19, 25, 38mm', '04 Nos', '2016-05-12 22:00:36', 1, '2016-05-12 16:00:36', 0, 'Active'),
(68, 'Hydrolic Jack', 'MSC 5SR-2, 12 Ton', '03 Nos', '2016-05-12 22:03:40', 1, '2016-05-12 16:03:40', 0, 'Active'),
(69, 'Traveler', 'Akita, Japan, 5.0 Ton', '01 No', '2016-05-12 22:05:03', 1, '2016-05-12 16:05:03', 0, 'Active'),
(70, 'Adjustable Fan (Voltage 220-240)', '520 W', '01 No', '2016-05-12 22:06:13', 1, '2016-05-12 16:06:13', 0, 'Active'),
(71, 'Halogen Spotlight', '400 W', '05 Nos', '2016-05-12 22:07:05', 1, '2016-05-12 16:07:05', 0, 'Active'),
(72, 'Welding Sheild (Hand Type)', 'Black', '05 Nos', '2016-05-12 22:07:30', 1, '2016-05-12 16:07:30', 0, 'Active'),
(73, 'GI Sheet Cutter M/C (Makita 4327 M)', 'Makita, 4327 M, 40mm, 450W, 1Ph', '01 No', '2016-05-12 22:09:43', 1, '2016-05-12 16:09:43', 0, 'Active'),
(74, 'Wall Cutter M/C (GDM-12-34)', 'Bosch, PRC, GDM-12-34, 34mm, 1250W, 1Ph', '02 Nos', '2016-05-12 22:10:45', 1, '2016-05-12 16:10:45', 0, 'Active'),
(75, 'Concrete Cutting Disk', '4"', '20 Nos', '2016-05-12 22:11:17', 1, '2016-05-12 16:11:17', 0, 'Active'),
(76, 'Vacuum Pump', 'Ritchie, Yellow jacket, USA, Running', '02 Nos', '2016-05-12 22:15:01', 1, '2016-05-12 16:17:53', 1, 'Active'),
(77, 'Analog Digital Insulation Resistance, Earth Resistance Tester', '1010-T, 0-1000 M OHM, 1000V, China, Running', '02 Sets', '2016-05-12 22:19:44', 1, '2016-05-12 16:19:44', 0, 'Active'),
(78, 'Digital Insulation Resistance, Earth Resistance, magnetic Induction Tester', 'DY 30-1, China, Running', '01 Set', '2016-05-12 22:21:30', 1, '2016-05-12 16:21:30', 0, 'Active'),
(79, 'Hand Grinding (Small)', 'King, Japan, Running', '15 Sets', '2016-05-12 22:22:11', 1, '2016-05-12 16:22:11', 0, 'Active'),
(80, 'Hand Grinding (Big)', 'Bosch, GWS 20-180, 14-180mm, Brasil, Running', '03 Sets', '2016-05-12 22:23:04', 1, '2016-05-12 16:23:04', 0, 'Active'),
(81, 'Measuring Tape', 'Yikai, Running', '40 Sets', '2016-05-12 22:25:04', 1, '2016-05-12 16:25:04', 0, 'Active'),
(82, 'Fire Extinguishee', 'Guangdong, MT3, China, Running', '16 Sets', '2016-05-12 22:25:58', 1, '2016-05-12 16:25:58', 0, 'Active'),
(83, 'High Speed Cutter', 'Mosay, J1G-2L3-400, 0-450, 50mm dia', '10 Sets', '2016-05-12 22:26:56', 1, '2016-05-12 16:26:56', 0, 'Active'),
(84, 'Temperature Meter (LASER)', 'Raytek, MT, China, Running', '01 No', '2016-05-12 22:29:18', 1, '2016-05-12 16:29:18', 0, 'Active'),
(85, 'Digital Multimeter', 'Soar, 3020, 450V, Running', '10 Sets', '2016-05-12 22:30:34', 1, '2016-05-12 16:30:34', 0, 'Active'),
(86, 'Repeat Gun', 'SRC, R-702, China, Running', '15 Sets', '2016-05-12 22:31:20', 1, '2016-05-12 16:31:20', 0, 'Active'),
(87, 'Tester', 'Philips, 100-500V, Germany, Running', '10 Sets', '2016-05-12 22:33:56', 1, '2016-05-12 16:33:56', 0, 'Active'),
(88, 'Phase Indication Meter', 'Kyoritsu, 8031, Japan, Running', '01 Sets', '2016-05-12 22:34:45', 1, '2016-05-12 16:34:45', 0, 'Active'),
(89, 'Piler', 'HMBR, Running', '25 Sets', '2016-05-12 22:35:08', 1, '2016-05-12 16:35:08', 0, 'Active'),
(90, 'Cutting Piler', 'HMBR, Running', '20 Sets', '2016-05-12 22:35:40', 1, '2016-05-12 16:35:40', 0, 'Active'),
(91, 'Nose Piler', 'HMBR, Running', '20 Sets', '2016-05-12 22:36:10', 1, '2016-05-12 16:36:10', 0, 'Active'),
(92, 'Concrete Hammer Drill (18 X 400mm)', 'China, Running', '1 Pcs', '2016-05-12 22:36:57', 1, '2016-05-12 16:36:57', 0, 'Active'),
(93, 'Fork Lift (3 ton capacity)', 'Running', '1 Pcs', '2016-05-12 22:37:32', 1, '2016-05-12 16:37:32', 0, 'Active'),
(94, 'Stand by Generator (90 kB, 60 kB)', 'Running', '2 Pcs', '2016-05-12 22:38:21', 1, '2016-05-12 16:38:21', 0, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(255) NOT NULL,
  `news_image` varchar(255) NOT NULL,
  `news_valid_till` varchar(255) NOT NULL,
  `news_details` text NOT NULL,
  `news_status` enum('Active','Inactive') NOT NULL,
  `news_created_by` int(11) NOT NULL,
  `news_created_on` datetime NOT NULL,
  `news_updated_by` int(11) NOT NULL,
  `news_updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_title`, `news_image`, `news_valid_till`, `news_details`, `news_status`, `news_created_by`, `news_created_on`, `news_updated_by`, `news_updated_on`) VALUES
(1, 'General Metting', 'NI20160530231022.jpg', '07/31/2016', 'Dhaka. Mr. S. B. Ho explains Dunham-Bush strategies to Mr. A. Khaleque, Managing Director of Alook Refrigeration Co. Ltd.', 'Active', 1, '2016-05-30 23:10:22', 0, '0000-00-00 00:00:00'),
(2, 'Dhaka: adding mileage everyday.', 'NI20160530231155.jpg', '07/30/2016', '&lt;span style="font-family:''Times New Roman'',Times,serif;font-size:medium;"&gt;Dhaka: adding mileage everyday. Opens its business outlet as ''Alook Sajja'' delivering Air-conditioning, Electrical &amp;amp; Refrigeration services under the proprietorship of Mr. Abdul Khaleque. Assembled 1000 pieces of "National" Window Air-conditioner, 1500 pieces of "Panacool" Refrigerator.&lt;/span&gt;&lt;span style="font-family:''Times New Roman'',Times,serif;font-size:small;"&gt;&lt;/span&gt;', 'Active', 1, '2016-05-30 23:11:55', 1, '2016-05-30 17:13:15');

-- --------------------------------------------------------

--
-- Table structure for table `photo_gallery`
--

CREATE TABLE IF NOT EXISTS `photo_gallery` (
  `photo_gallery_id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_gallery_title` varchar(255) NOT NULL,
  `photo_gallery_image` varchar(255) NOT NULL,
  `photo_gallery_created_on` datetime NOT NULL,
  `photo_gallery_created_by` int(11) NOT NULL,
  `photo_gallery_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `photo_gallery_updated_by` int(11) NOT NULL,
  `photo_gallery_status` enum('Active','Inactive') NOT NULL,
  PRIMARY KEY (`photo_gallery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_title` varchar(255) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_details` text NOT NULL,
  `product_type_id` int(11) NOT NULL,
  `product_status` enum('Active','Inactive') NOT NULL,
  `product_created_on` datetime NOT NULL,
  `product_created_by` int(11) NOT NULL,
  `product_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_updated_by` int(11) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_title`, `product_category_id`, `product_image`, `product_details`, `product_type_id`, `product_status`, `product_created_on`, `product_created_by`, `product_updated_on`, `product_updated_by`) VALUES
(1, 'Dual-Stage Centrifugal Chiller', 1, 'PDI20160511100159.jpg', '&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;&lt;strong style="margin:0px;padding:0px;border:0px;"&gt;DCLC-D Series&lt;/strong&gt;&lt;/p&gt;&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;Cooling Capacity from&amp;nbsp;500 to 1500RT&amp;nbsp;(1759 to 5276kW). The DCLC-D Series features:-&lt;/p&gt;&lt;ul style="padding:0px;margin:0px;border:0px;color:#818181;font-family:Arial, Helvetica, sans-serif;line-height:14px;"&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Dual Stageand High Efficiency Compressors&lt;/li&gt;&lt;/ul&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Flooded Shell and Tube Evaporator and Condenser&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Advance Microprocessor Controller&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;4&amp;rdquo; TFT Colours Touch Screen Display&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Automatic Refrigerant Purifier&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Optional VFD&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Suitable forHigh Ambient&amp;nbsp;and&amp;nbsp;Thermal Energy Storage (TES)&amp;nbsp;Application&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;AHRI Certified&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;R134a&lt;/li&gt;', 2, 'Active', '2016-05-11 10:01:59', 1, '2016-05-11 04:01:59', 0),
(2, 'Magnetic Bearing Centrifugal Chiller', 1, 'PDI20160511100246.jpg', '&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;&lt;strong style="margin:0px;padding:0px;border:0px;"&gt;DCLC-M Series&lt;/strong&gt;&lt;/p&gt;&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;Cooling Capacity from&amp;nbsp;90 to 680RT&amp;nbsp;(316 to 2391kW). The DCLC-M Series features:-&lt;/p&gt;&lt;ul style="padding:0px;margin:0px;border:0px;color:#818181;font-family:Arial, Helvetica, sans-serif;line-height:14px;"&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;High EfficiencyMagnetic Bearing&amp;nbsp;Technology&lt;/li&gt;&lt;/ul&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Inverter Driven Dual-Stage Compressor&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Oil Free Operation with Less Maintenance&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Low Noise with Compact Foot Print&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Improved Performance and IPLV&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;AHRI Certified&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;R134a&lt;/li&gt;', 2, 'Active', '2016-05-11 10:02:46', 1, '2016-05-11 04:02:46', 0),
(3, 'Variable Speed Water Cooled Screw Chiller', 1, 'PDI20160511100326.jpg', '&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;&lt;strong&gt;WCFX-V Series&lt;/strong&gt;&lt;/p&gt;&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;Cooling Capacity from 467 - 2340 kW (130 &amp;ndash; 665 TR)&lt;/p&gt;&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;The WCFX-V Series features:&lt;/p&gt;&lt;ul style="padding:0px;margin:0px;border:0px;color:#818181;font-family:Arial, Helvetica, sans-serif;line-height:14px;"&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;High Efficiency Screw Chiller&lt;/li&gt;&lt;/ul&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Inverter Driven Compressor&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Suitable for Green Building Application&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Touch Screen Control Panel&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Reliable and Flexible Applications&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Environmentally Friendly&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Improved Performance and IPLV&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;AHRI Certified&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;R134A&lt;/li&gt;', 2, 'Active', '2016-05-11 10:03:26', 1, '2016-05-11 04:03:26', 0),
(4, 'Water Cooled Scroll Chiller', 1, 'PDI20160511100454.jpg', '&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;&lt;strong&gt;WCS Series&lt;/strong&gt;&lt;/p&gt;&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;Cooling Capacity from 42 - 218 kW (12 - 62 TR)&lt;/p&gt;&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;The WCS Series features:&lt;/p&gt;&lt;ul style="padding:0px;margin:0px;border:0px;color:#818181;font-family:Arial, Helvetica, sans-serif;line-height:14px;"&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Multiple Scroll Compressors&lt;/li&gt;&lt;/ul&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Dunham-Bush Patented Shell &amp;amp; Tube Evaporator and Condenser&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;High Efficiency and COP&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Microprocessor Based Controller&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;R407C / R22&lt;/li&gt;', 2, 'Active', '2016-05-11 10:04:54', 1, '2016-05-11 04:04:54', 0),
(5, 'Water Cooled Screw Chiller', 1, 'PDI20160511100535.jpg', '&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;&lt;strong&gt;WCFX-E Series&lt;/strong&gt;&lt;/p&gt;&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;Cooling Capacity from 211 - 3517 kW (60 - 1000 TR)&lt;/p&gt;&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;The WCFX-E Series features:&lt;/p&gt;&lt;ul style="padding:0px;margin:0px;border:0px;color:#818181;font-family:Arial, Helvetica, sans-serif;line-height:14px;"&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Improved Quiet, Reliable Series of Vertical Screw Compressors&lt;/li&gt;&lt;/ul&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Improved Flooded Shell &amp;amp; Tube Evaporator and Condenser&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;High Efficiency and COP&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Advanced Vision 2020i Controller&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;7.0" TFT Colours Touch Screen Display&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;PHE DX Subcooler&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;AHRI Certified&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;R134a&lt;/li&gt;', 2, 'Active', '2016-05-11 10:05:35', 1, '2016-05-11 04:05:35', 0),
(6, 'Centrifugal Chiller', 1, 'PDI20160511100611.jpg', '&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;&lt;strong style="margin:0px;padding:0px;border:0px;"&gt;DCLC Series&lt;/strong&gt;&lt;/p&gt;&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;Cooling Capacity from 1055 - 14068 kW (300 - 4000 TR) The DCLC Series features:&lt;/p&gt;&lt;ul style="padding:0px;margin:0px;border:0px;color:#818181;font-family:Arial, Helvetica, sans-serif;line-height:14px;"&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Single-Stage Positive-Pressure, Compact and High Efficiency Compressor&lt;/li&gt;&lt;/ul&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Improved Flooded Shell &amp;amp; Tube Evaporator and Condenser&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Advanced Microprocessor Controller&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;10.4" TFT Colours Touch Screen Display&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Automatic Refrigerant Purifier&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Optional VFD&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;AHRI Certified*&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;R134a&lt;/li&gt;&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;&lt;em&gt;*Up to 2000 TR&lt;/em&gt;&lt;/p&gt;', 2, 'Active', '2016-05-11 10:06:11', 1, '2016-05-11 04:06:11', 0),
(7, 'Variable Speed Air Cooled Screw Chiller', 2, 'PDI20160511100753.jpg', '&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;&lt;strong&gt;AVX-B Series&lt;/strong&gt;&lt;/p&gt;&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;Cooling Capacity from&amp;nbsp;115 to 470RT&amp;nbsp;(406 to 1656kW). The AVX-B Series features:-&lt;/p&gt;&lt;ul style="padding:0px;margin:0px;border:0px;color:#818181;font-family:Arial, Helvetica, sans-serif;line-height:14px;"&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;High Efficiency Screw Chiller&lt;/li&gt;&lt;/ul&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Inverter Driven Compressor&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Flooded Shell and Tube Evaporator&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Advanced Microprocessor Controller&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Unique Low Noise Control Design&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Suitable for Standard or High Ambient Application&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Environmentally Friendly&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;AHRI Certified&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;R134a&lt;/li&gt;', 2, 'Active', '2016-05-11 10:07:53', 1, '2016-05-11 04:07:53', 0),
(8, 'Air Cooled Screw Chiller (AVX-A Series)', 2, 'PDI20160511100841.jpg', '&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;&lt;strong&gt;AVX-A Series&lt;/strong&gt;&lt;/p&gt;&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;Cooling Capacity from&amp;nbsp;95 to 530RT&amp;nbsp;(334 to 1864kW). The AVX-A Series features:-&lt;/p&gt;&lt;ul style="padding:0px;margin:0px;border:0px;color:#818181;font-family:Arial, Helvetica, sans-serif;line-height:14px;"&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;High Efficiency Vertical&amp;nbsp;Screw Compressors&lt;/li&gt;&lt;/ul&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Flooded Shell and Tube Evaporator&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Advanced Microprocessor Controller&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Unique Low Noise Control Design&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Suitable for Standard or High Ambient Application&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Environmentally Friendly&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;AHRI Certified&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;R134a&lt;/li&gt;', 2, 'Active', '2016-05-11 10:08:41', 1, '2016-05-11 04:08:41', 0),
(9, 'Air Cooled Scroll Chiller (ACDS Series)', 2, 'PDI20160511100919.jpg', '&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;&lt;strong&gt;ACDS Series&lt;/strong&gt;&lt;/p&gt;&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;Cooling Capacity from 35 -633 kW (10 - 180 TR) The ACDS Series features:&lt;/p&gt;&lt;ul style="padding:0px;margin:0px;border:0px;color:#818181;font-family:Arial, Helvetica, sans-serif;line-height:14px;"&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Multiple Scroll Compressors&lt;/li&gt;&lt;/ul&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;High Efficiency Plate Heat Exchanger (PHE)&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;High Efficiency and COP&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Available in Modular Design&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;AHRI / ETL Certified *&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;R410a&lt;/li&gt;&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;&lt;em&gt;* 60Hz only&lt;/em&gt;&lt;/p&gt;', 2, 'Active', '2016-05-11 10:09:19', 1, '2016-05-11 04:09:19', 0),
(10, 'Air Cooled Screw Chiller (ACDX Series)', 2, 'PDI20160511100957.jpg', '&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;&lt;strong&gt;ACDX Series&lt;/strong&gt;&lt;/p&gt;&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;Cooling Capacity from 270 - 1156 kW (77 - 329 TR)* The ACDX Series features:&lt;/p&gt;&lt;ul style="padding:0px;margin:0px;border:0px;color:#818181;font-family:Arial, Helvetica, sans-serif;line-height:14px;"&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Silent Vertical Hermetic Screw Compressors&lt;/li&gt;&lt;/ul&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Unique Low Noise Control Design&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Improved Shell &amp;amp; Tube Evaporator&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Advanced Microprocessor Based Controller&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;R407C&lt;/li&gt;&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;&lt;em&gt;* 50Hz only&lt;/em&gt;&lt;/p&gt;', 2, 'Active', '2016-05-11 10:09:57', 1, '2016-05-11 04:09:57', 0),
(11, 'Air Cooled Screw Chiller (AFVX-B Series)', 2, 'PDI20160511101503.jpg', '&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;&lt;strong&gt;AFVX-B Series&lt;/strong&gt;&lt;/p&gt;&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;Cooling Capacity from 352 - 1830 kW (100 - 520 TR)&lt;/p&gt;&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;The AFVX-B Series features:&lt;/p&gt;&lt;ul style="padding:0px;margin:0px;border:0px;color:#818181;font-family:Arial, Helvetica, sans-serif;line-height:14px;"&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Improved Quiet, Reliable Series of Vertical Screw Compressors&lt;/li&gt;&lt;/ul&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Improved Flooded Shell &amp;amp; Tube Evaporator&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;High Efficiency and COP&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Advanced Vision 2020i Controller&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;PHE DX Subcooler&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Unique Low Noise Control Design&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;R134a&lt;/li&gt;', 2, 'Active', '2016-05-11 10:15:03', 1, '2016-05-11 04:15:03', 0),
(12, 'Air Cooled Screw Chiller (AFVX-E Series)', 2, 'PDI20160511101540.jpg', '&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;&lt;strong&gt;AFVX-E Series&lt;/strong&gt;&lt;/p&gt;&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;Cooling Capacity from 299 - 1692 kW (85 -481 TR)&lt;/p&gt;&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;The AFVX-E Series features:&lt;/p&gt;&lt;ul style="padding:0px;margin:0px;border:0px;color:#818181;font-family:Arial, Helvetica, sans-serif;line-height:14px;"&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Improved Quiet, Reliable Series of Vertical Screw Compressors&lt;/li&gt;&lt;/ul&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Improved Flooded Shell &amp;amp; Tube Evaporator&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;High Efficiency and COP&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Advanced Vision 2020i Controller&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;PHE DX Subcooler&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Unique Low Noise Control Design&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Suitable for High AmbientApplication&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;R134a&lt;/li&gt;', 2, 'Active', '2016-05-11 10:15:40', 1, '2016-05-11 04:15:40', 0),
(13, 'Water - Water Scroll Heat Pump', 3, 'PDI20160511102155.jpg', '&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;&lt;strong&gt;WCS-HP&lt;/strong&gt;&lt;strong&gt;&amp;nbsp;Series&lt;/strong&gt;&lt;strong&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;Capacity from 39 - 246 kW (11 - 70 TR) The WCS-HP Series features:&lt;/p&gt;&lt;ul style="padding:0px;margin:0px;border:0px;color:#818181;font-family:Arial, Helvetica, sans-serif;line-height:14px;"&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Multiple Scroll Compressors&lt;/li&gt;&lt;/ul&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Dunham-Bush Patented Shell &amp;amp; Tube Evaporator and Condenser&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;High Efficiency and COP&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;Microprocessor Based Controller&lt;/li&gt;&lt;li style="line-height:16px;margin:0px;padding:0px;border:0px;"&gt;R407C / R134a&lt;/li&gt;', 2, 'Active', '2016-05-11 10:21:55', 1, '2016-05-11 04:21:55', 0),
(14, 'Water - Water Screw Heat Pump', 3, 'PDI20160511102318.jpg', '&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;&lt;strong&gt;WCFXE-HP&lt;/strong&gt;&lt;strong&gt;&amp;nbsp;Series&lt;/strong&gt;&lt;strong&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;Capacity from 194 - 2061 kW (55 - 586 TR),&amp;nbsp;Heating Capacity from 238 - 2504 kW&lt;/p&gt;&lt;h3 style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;The WCFXE-HP &lt;span style="font-family:''Times New Roman'', Times, serif;"&gt;Series&lt;/span&gt; features:&lt;/h3&gt;&lt;ul&gt;&lt;li&gt;&lt;span style="line-height:16px;"&gt;Improved Flooded Shell &amp;amp; Tube Evaporator and Condenser&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style="line-height:16px;"&gt;Improved Quiet, Reliable Series of Vertical Screw Compressors&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style="line-height:16px;"&gt;High Efficiency and COP&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style="line-height:16px;"&gt;Advanced Vision 2020i Controller&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style="line-height:16px;"&gt;7.0" TFT Colours Touch Screen Display&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style="line-height:16px;"&gt;PHE DX Subcooler&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style="line-height:16px;"&gt;R134a&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;', 2, 'Active', '2016-05-11 10:23:18', 1, '2016-05-11 18:04:41', 1),
(15, 'Air - Water Scroll Heat Pump', 3, 'PDI20160511102349.jpg', '&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;&lt;strong&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;&lt;strong&gt;ACS&lt;/strong&gt;&lt;strong&gt;-HP Series&lt;/strong&gt;&lt;strong&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;Capacity from 35 - 246 kW (10 - 70 TR)&lt;/p&gt;&lt;p style="margin-bottom:15px;line-height:20px;color:#777777;font-family:Arial, Helvetica, sans-serif;"&gt;The ACS-HP Series features:&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style="line-height:16px;color:#818181;"&gt;Multiple Scroll Compressors&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style="color:#818181;line-height:16px;"&gt;Dunham-Bush Patented Shell &amp;amp; Tube Evaporator&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style="line-height:16px;"&gt;High Efficiency and COP&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style="line-height:16px;"&gt;R407C&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;', 2, 'Active', '2016-05-11 10:23:49', 1, '2016-05-11 18:01:24', 1),
(16, 'Air Cooled Vertical Hermetic Screw Heat Pump', 3, 'PDI20160511102426.jpg', '&lt;p&gt;&lt;em&gt;ACDX-HP Series&lt;/em&gt;&lt;br /&gt;&lt;br /&gt;Cooling Capacity from 230-1780 kW (65 - 506 TR), Heating Capacity from 247 - 2024 kW&lt;/p&gt;&lt;p&gt;The ACDX-HP series features:&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Sliend vertical Hermetic Screw Compressors&lt;/li&gt;&lt;li&gt;Unique Low Noise Control Design&lt;/li&gt;&lt;li&gt;Improved Shell &amp;amp; Tube Evaporator&lt;/li&gt;&lt;li&gt;Advances Microprocessor Based Controller&lt;/li&gt;&lt;li&gt;R134a&lt;/li&gt;&lt;/ul&gt;&lt;br /&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', 1, 'Active', '2016-05-11 10:24:26', 1, '2016-05-15 06:04:58', 1),
(17, 'Ceiling Hung', 4, 'PDI20160518102705.jpg', '&lt;p&gt;&lt;strong&gt;WCP &amp;amp; WCPS-CH Series&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Cooling Capacity from 5 - 85 kW (18 - 290 MBH) The WCP &amp;amp; WCPS-CH Series features:&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Quiet &amp;amp; High Efficiency Rotary / Scroll Compressors&lt;/li&gt;&lt;li&gt;Dunham-Bush Patented Shell &amp;amp; Tube Condenser&lt;/li&gt;&lt;li&gt;Low Profile for High Ceiling Mounting&lt;/li&gt;&lt;li&gt;R407C / R22&lt;/li&gt;&lt;/ul&gt;', 2, 'Active', '2016-05-18 10:27:05', 1, '2016-05-18 04:27:05', 0),
(18, 'Free Blow', 4, 'PDI20160518102829.jpg', '&lt;p&gt;&lt;strong&gt;WCPS-FB Series&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Cooling Capacity from 20 - 64 kW (68 - 220 MBH) The WCPS-FB Series features:&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Quiet &amp;amp; High Efficiency Scroll Compressors&lt;/li&gt;&lt;li&gt;Dunham-Bush Patented Shell &amp;amp; Tube Condenser&lt;/li&gt;&lt;li&gt;Rigid and Compact Design with Decorative Grille&lt;/li&gt;&lt;li&gt;R407C / R22&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br /&gt;&lt;/p&gt;&lt;div class="k-paste-container"&gt;Quiet &amp;amp; High Efficiency Scroll Compressors&lt;p&gt;&lt;/p&gt;&lt;/div&gt;&lt;div class="k-paste-container"&gt;Dunham-Bush Patented Shell &amp;amp; Tube Condenser&lt;/div&gt;&lt;div class="k-paste-container"&gt;Rigid and Compact Design with Decorative Grille&lt;/div&gt;&lt;div class="k-paste-container"&gt;R407C / R22&lt;/div&gt;&lt;p&gt;&lt;br /&gt;&lt;/p&gt;', 2, 'Active', '2016-05-18 10:28:29', 1, '2016-05-18 04:28:29', 0),
(19, 'Floor Stand Ducted', 4, 'PDI20160518103015.jpg', '&lt;p&gt;&lt;strong&gt;WCPS-FB Series&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Cooling Capacity from 18 -447 kW (80 - 1520 MBH) The WCPS-B Series features:&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Quiet &amp;amp; High Efficiency Scroll Compressors&lt;/li&gt;&lt;li&gt;Dunham-Bush Patented Shell &amp;amp; Tube Condenser&lt;/li&gt;&lt;li&gt;Rigid and Compact Design&lt;/li&gt;&lt;li&gt;R407C / R22&lt;/li&gt;&lt;/ul&gt;&lt;br /&gt;&lt;br /&gt;&lt;br /&gt;', 2, 'Active', '2016-05-18 10:30:15', 1, '2016-05-18 04:30:15', 0),
(20, 'Variable Speed Rooftop Units', 5, 'PDI20160518103352.jpg', '&lt;p&gt;&lt;strong&gt;ACPSG Series&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Cooling Capacity from 169 to 921MBH (50 to 270kW). The ACPSG Series features:&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Quiet &amp;amp; High Efficiency Inverter Scroll Compressors&lt;/li&gt;&lt;li&gt;Rigid and Custom Build Design Outdoor Application&lt;/li&gt;&lt;li&gt;Suitable for High Ambient Application&lt;/li&gt;&lt;li&gt;Optional Economizer Section, Heat-Pump and Heaters&lt;/li&gt;&lt;li&gt;R410A&lt;/li&gt;&lt;/ul&gt;&lt;br /&gt;&lt;br /&gt;&lt;br /&gt;&lt;br /&gt;&lt;p&gt;&lt;br /&gt;&lt;/p&gt;&lt;p style="margin-bottom:8.05pt;line-height:10.75pt;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;"&gt;&lt;br /&gt;&lt;/p&gt;', 2, 'Active', '2016-05-18 10:33:52', 1, '2016-05-18 04:33:52', 0),
(21, 'Variable Refrigerant Flow (VRF)', 5, 'PDI20160518103610.jpg', '&lt;p&gt;&lt;strong&gt;DBV III Inverter System&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Cooling Capacity from 2 &amp;ndash; 72 HP&lt;br /&gt;The DBV III Inverter System VRF features:&lt;/p&gt;&lt;ul&gt;&lt;li&gt;High Efficiency Inverter Scroll Compressor&lt;/li&gt;&lt;li&gt;180⁰ Sine Wave Inverter Technology&lt;/li&gt;&lt;li&gt;Low Noise with High Efficiency Fan&lt;/li&gt;&lt;li&gt;High Performance Heat Exchangers&lt;/li&gt;&lt;li&gt;Environmental Friendly R410A Refrigerant&lt;/li&gt;&lt;/ul&gt;&lt;br /&gt;&lt;br /&gt;&lt;br /&gt;&lt;br /&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;/strong&gt;&lt;/p&gt;', 2, 'Active', '2016-05-18 10:36:10', 1, '2016-05-18 04:36:10', 0),
(22, 'Air Cooled Split Systems', 5, 'PDI20160518103845.jpg', '&lt;p&gt;&lt;strong&gt;ACCS Series&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Cooling Capacity from 18 - 398 kW (60 - 1360 MBH)&lt;/p&gt;&lt;p&gt;The ACCS Series features:&lt;br /&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Quiet &amp;amp; High Efficiency Scroll Cornpressors&lt;/li&gt;&lt;li&gt;Versatile Applications&lt;/li&gt;&lt;li&gt;Rigid Compact Casing&lt;/li&gt;&lt;li&gt;Available in Heat Pump Series&lt;/li&gt;&lt;li&gt;R407C / R22&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;VEB / EB / HEB Series, DX&lt;/p&gt;&lt;p&gt;Cooling Capacity from 18 - 398 kW (60 - 1360 MBH)&lt;/p&gt;&lt;p&gt;The VEB / EB / HEB Series features:&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Belt Driven Motor / Drive Package&lt;/li&gt;&lt;li&gt;Galvanized &amp;amp; Coated Steel Construction&lt;/li&gt;&lt;li&gt;Optional Heaters (Hot Water &amp;amp; Electrical)&lt;/li&gt;&lt;/ul&gt;&lt;div class="k-paste-container"&gt;Belt Driven Motor / Drive Package&lt;/div&gt;&lt;div class="k-paste-container"&gt;Galvanized &amp;amp; Coated Steel Construction&lt;/div&gt;&lt;div class="k-paste-container"&gt;Optional Heaters (Hot Water &amp;amp; Electrical)&lt;/div&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', 2, 'Active', '2016-05-18 10:38:45', 1, '2016-05-18 04:49:59', 1),
(23, 'Rooftop Units', 5, 'PDI20160518105201.jpg', '&lt;p&gt;&lt;strong&gt;ACPSB-P / ACPSE-P Series&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Cooling Capacity from 127 - 542 kW (36 - 154 TR) The ACPSB-P /ACPSE-P Series features:&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Quiet &amp;amp; High Efficiency Scroll Compressors&lt;/li&gt;&lt;li&gt;Rigid and Custom Build Design for Outdoor Application&lt;/li&gt;&lt;li&gt;Optional Economizer Section, Heat-Pump &amp;amp; Heaters&lt;/li&gt;&lt;li&gt;R410A / R407C / R22&lt;/li&gt;&lt;/ul&gt;', 2, 'Active', '2016-05-18 10:52:01', 1, '2016-05-18 04:52:01', 0),
(24, 'Rooftop Units (High Ambient)', 5, 'PDI20160518105420.jpg', '&lt;p&gt;&lt;strong&gt;ACPSD-P Series (High Ambient)&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Cooling Capacity from 14 - 146 kW (4 -42 TR) The ACPSD-P Series features:&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Quiet &amp;amp; High Efficiency Scroll Compressors&lt;/li&gt;&lt;li&gt;Rigid and Custom Build Design for Outdoor Application&lt;/li&gt;&lt;li&gt;Operate Up to 125&amp;deg;F (52&amp;deg;C) AmbientAir&lt;/li&gt;&lt;li&gt;Optional Economizer Section, Heat-Pump &amp;amp; Heaters&lt;/li&gt;&lt;li&gt;R407C / R22&lt;/li&gt;&lt;/ul&gt;', 2, 'Active', '2016-05-18 10:54:20', 1, '2016-05-18 04:54:20', 0),
(25, 'Centrifugal Condenser Fan', 5, 'PDI20160518105602.jpg', '&lt;p&gt;ACPS-C Series&lt;/p&gt;&lt;p&gt;(Air Cooled Self Contained Units)&lt;/p&gt;&lt;p&gt;Cooling Capacity from 18 - 117 kW (60 -400 MBH) The ACPS-C Series features&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Quiet &amp;amp; High Efficiency Scroll Compressors&lt;/li&gt;&lt;li&gt;Rigid and Versatile Design for IndoorApplication&lt;/li&gt;&lt;li&gt;High Static Centrifugal Condenser Fan&lt;/li&gt;&lt;li&gt;R407C / R22&lt;/li&gt;&lt;/ul&gt;', 2, 'Active', '2016-05-18 10:56:02', 1, '2016-05-18 04:56:02', 0),
(26, 'Central Station Air Handling Units eCS3 Series', 6, 'PDI20160518110111.jpg', '&lt;p&gt;eCS3 Series&lt;br /&gt;&lt;br /&gt;&lt;br /&gt;Air Volume from 1700 - 21000 m3/h (1000 - 12300 CFM). The eCS3 Series features:&lt;/p&gt;&lt;ul&gt;&lt;li&gt;8 Models with nominal air volume from 1000 to 12300 CFM (1700 to 21000 m3/hr)&lt;/li&gt;&lt;li&gt;Economical Values with competitive pricing for superior performance, flexibility and reliability&lt;/li&gt;&lt;li&gt;Simplified New Structural Design with extruded aluminum frame profile for rigid construction and installation ease&lt;/li&gt;&lt;li&gt;Double-Skinned Panel with smooth inner surfaces for easy and effective cleaning to reduce dirt and bacteria accumulation&lt;/li&gt;&lt;li&gt;Modular Central Station Construction suitable for both commercial and industrial application&lt;/li&gt;&lt;li&gt;Wide Choice of Accessories from mixing box to humidifier to heat recovery wheel to meet various required air conditions application needs&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;', 2, 'Active', '2016-05-18 11:01:11', 1, '2016-05-18 05:01:11', 0),
(27, 'Central Station Air Handling Units', 6, 'PDI20160518110248.jpg', '&lt;p&gt;&lt;strong&gt;CS3 Series&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Air Volume from 2835 - 95663 m3/h (1667 - 56250 CFM) The CS3 Seies features:&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Modular Industrial Design, Rugged Construction&lt;/li&gt;&lt;li&gt;Extruded Aluminum Profile with Strong Nylon Corners&lt;/li&gt;&lt;li&gt;Double Skin Construction with Injected Polyurethane Foams Insulation&lt;/li&gt;&lt;li&gt;Available for Multizone System Application&lt;/li&gt;&lt;li&gt;AHRI / ETL Certified *&lt;/li&gt;&lt;/ul&gt;* 60Hz only&lt;p&gt;&lt;strong&gt;&lt;/strong&gt;&lt;/p&gt;', 2, 'Active', '2016-05-18 11:02:48', 1, '2016-05-18 05:02:48', 0),
(28, 'Chilled Water Air Handling Units', 6, 'PDI20160518110415.jpg', '&lt;p&gt;&lt;strong&gt;VCB/ HCB Series&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Air Volume from 1274 - 31775 m3/h (750 - 18700 CFM) The VCB / HCB Series features:&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Constructed of Heavy Gauge Steel Sheet&lt;/li&gt;&lt;li&gt;Epoxy Powder Coated Paint Casing&lt;/li&gt;&lt;li&gt;Low Noise Blowers&lt;/li&gt;&lt;li&gt;Optional Hot Water Coils, Heater &amp;amp; Hydrophilic Fins&lt;/li&gt;&lt;/ul&gt;', 2, 'Active', '2016-05-18 11:04:15', 1, '2016-05-18 05:10:17', 1),
(29, 'Horizontal Blower Units', 6, 'PDI20160518110531.jpg', '&lt;p&gt;&lt;strong&gt;CC Series&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Air Volume from 1359 - 6796 m3/h (800 -4000 CFM) The CC Series features:&lt;/p&gt;&lt;ul&gt;&lt;li&gt;High StaticApplication&lt;/li&gt;&lt;li&gt;Epoxy Powder Coated Paint Casing&lt;/li&gt;&lt;li&gt;Low Noise Blowers&lt;/li&gt;&lt;li&gt;Belt Driven with Adjustable Pulley&lt;/li&gt;&lt;/ul&gt;', 2, 'Active', '2016-05-18 11:05:31', 1, '2016-05-18 05:05:31', 0),
(30, 'CR-HB / CRH Fan Coil Units', 6, 'PDI20160518110724.jpg', '&lt;p&gt;&lt;strong&gt;CR-CC / CB / CE / WM Series&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Air Volume from 176 -3398 m3/h (100 -2000 CFM) The Series features:&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Low to High StaticApplication&lt;/li&gt;&lt;li&gt;Low Noise Blowers&lt;/li&gt;&lt;li&gt;Plenum Box for Return Air&lt;/li&gt;&lt;li&gt;Available for Ceiling Exposed, Floor Standing, Cassette &amp;amp; Wall Mounted Type&lt;/li&gt;&lt;/ul&gt;', 2, 'Active', '2016-05-18 11:07:24', 1, '2016-05-18 05:07:24', 0),
(31, 'High Efficiency EC Motor Fan Coil Units', 6, 'PDI20160518110900.jpg', '&lt;p&gt;&lt;strong&gt;CR-CD Series&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Air Volume from 357 - 2390 m3/h (210 - 1407 CFM) The CR-CD Series features:&lt;/p&gt;&lt;ul&gt;&lt;li&gt;High Efficiency EC Fan Motor&lt;/li&gt;&lt;li&gt;Low to Medium Static Application&lt;/li&gt;&lt;li&gt;Low Noise Blowers&lt;/li&gt;&lt;li&gt;Plenum Box for Return Air&lt;/li&gt;&lt;/ul&gt;&lt;br /&gt;&lt;br /&gt;&lt;br /&gt;&lt;p&gt;&lt;strong&gt;&lt;/strong&gt;&lt;/p&gt;', 2, 'Active', '2016-05-18 11:09:00', 1, '2016-05-18 05:09:00', 0),
(32, 'Heating Terminal Products', 7, 'PDI20160531010355.jpg', '&lt;p&gt;&lt;strong&gt;The Dunham-Bush Heating Division provides a large range of top grade heating products that include:&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Door Curtains&lt;/li&gt;&lt;li&gt;Fan Convectors&lt;/li&gt;&lt;li&gt;Fan Coil Units&lt;/li&gt;&lt;li&gt;LST Radiators&lt;/li&gt;&lt;li&gt;Perimeter Heating&lt;/li&gt;&lt;li&gt;Radiant Heating&lt;/li&gt;&lt;li&gt;Unit Heaters&lt;/li&gt;&lt;li&gt;Heat Exchangers&lt;/li&gt;&lt;/ul&gt;', 2, 'Active', '2016-05-18 11:11:46', 1, '2016-05-30 19:03:55', 1),
(33, 'DB-Aire ll Series', 8, 'PDI20160518111426.jpg', '&lt;p&gt;&lt;strong&gt;DB-Aire ll Series&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Cooling Capacity from 7 - 91 kW (2 -26 TR) The DB-Aire II Series features:&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Quiet &amp;amp; High Efficiency Scroll Compressors&lt;/li&gt;&lt;li&gt;Advanced Microprocessor Controller&lt;/li&gt;&lt;li&gt;4.3" TFT Colour Touch Screen Display&lt;/li&gt;&lt;li&gt;Compact Design &amp;amp; Foot Print with Attractive Outlook&lt;/li&gt;&lt;li&gt;Available in Chilled Water, Direct Expansion or Dual Coil System&lt;/li&gt;&lt;li&gt;Up and Downflow Configurations&lt;/li&gt;&lt;li&gt;Suitable for High Ambient Temperature Operation&lt;/li&gt;&lt;li&gt;Optional VFD Blower Motor, Hot Gas Reheat &amp;amp; EEV&lt;/li&gt;&lt;li&gt;R407C / R410A&lt;/li&gt;&lt;/ul&gt;', 2, 'Active', '2016-05-18 11:14:26', 1, '2016-05-18 05:14:26', 0),
(34, 'ICE-CEL', 8, 'PDI20160518111532.jpg', '&lt;p&gt;Dunham-Bush Patented Ice Thermal Storage Systems,&amp;nbsp;ICE-CEL features:&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Modular and High Efficiency Tanks from 422 - 844 kWh&lt;/li&gt;&lt;li&gt;Only -3.5&amp;deg;C Brine Required in Freezing Mode&lt;/li&gt;&lt;li&gt;Fiberglass Double Wall Tanks&lt;/li&gt;&lt;li&gt;Full Poly Ethylene (High Density) Heat Exchanger for Durability and Efficiency&lt;/li&gt;&lt;/ul&gt;', 2, 'Active', '2016-05-18 11:15:32', 1, '2016-05-18 05:15:32', 0),
(35, 'NETVISOR', 8, 'PDI20160518111702.jpg', '&lt;p&gt;Dunham-Bush Netvisor provides designers and owners a one source responsibility for fully integrated systems:&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Dunham-Bush Chillers&lt;/li&gt;&lt;li&gt;Dunham-Bush ICE-CEL Tanks&lt;/li&gt;&lt;li&gt;Plate Heat Exchangers / Pumps / Valves / Cooling Towers&lt;/li&gt;&lt;li&gt;All Controls and Interlocks&lt;/li&gt;&lt;li&gt;Local or remote monitoring is provided via Bacnet, Lonworks, Modbus or&amp;nbsp;Internet Protocol.&lt;/li&gt;&lt;/ul&gt;&lt;br /&gt;&lt;br /&gt;&lt;p&gt;&lt;/p&gt;', 2, 'Active', '2016-05-18 11:17:02', 1, '2016-05-18 05:17:02', 0),
(36, 'Ice Rink Chiller', 8, 'PDI20160518111808.jpg', '&lt;p&gt;&lt;strong&gt;Industrial Low Temp Machine&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Customized Design Chiller&lt;/li&gt;&lt;li&gt;Manufactured Based on Requirement/ Specification&lt;/li&gt;&lt;li&gt;R507&lt;/li&gt;&lt;/ul&gt;&lt;br /&gt;&lt;br /&gt;&lt;p&gt;&lt;strong&gt;&lt;/strong&gt;&lt;/p&gt;', 2, 'Active', '2016-05-18 11:18:08', 1, '2016-05-18 05:18:08', 0),
(37, 'ARC Electric Water Heater', 8, 'PDI20160518114135.jpg', '&lt;p&gt;&lt;span style="color:#555555;font-family:Arial, ''Microsoft YaHei'', 宋体;line-height:24px;"&gt;10L-12L Instant Flue Type Gas Water Heater1.low water pressure starting2.flaem failure asfety.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style="color:#555555;font-family:Arial, ''Microsoft YaHei'', 宋体;line-height:24px;"&gt;*More details will be uploaded soon.&lt;/span&gt;&lt;/p&gt;', 3, 'Active', '2016-05-18 11:41:35', 1, '2016-05-18 05:41:35', 0),
(38, 'ARC Gas Water Heater', 1, 'PDI20160518114242.jpg', '&lt;p&gt;&lt;span style="color:#555555;font-family:Arial, ''Microsoft YaHei'', 宋体;font-size:16px;line-height:24px;text-align:justify;"&gt;10L-12L Instant Flue Type Gas Water Heater&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style="color:#555555;font-family:Arial, ''Microsoft YaHei'', 宋体;font-size:16px;line-height:24px;text-align:justify;"&gt;1.low water pressure starting&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style="color:#555555;font-family:Arial, ''Microsoft YaHei'', 宋体;font-size:16px;line-height:24px;text-align:justify;"&gt;2.flaem failure asfety.&lt;/span&gt;&lt;/p&gt;', 3, 'Active', '2016-05-18 11:42:42', 1, '2016-05-18 05:42:42', 0),
(39, 'Wall Mounted Split Type', 8, 'PDI20160531111720.jpg', '&lt;p&gt;&lt;em&gt;WM04HS&lt;/em&gt;&lt;/p&gt;\r\n&lt;table class="table table-bordered table-responsive k-table"&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;p&gt;Cooling Capacity&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;/td&gt;\r\n&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Btu/h&lt;/span&gt;&lt;/td&gt;\r\n&lt;td&gt;12000&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;strong&gt;ELECTRICAL DATA&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n&lt;td&gt;&lt;/td&gt;\r\n&lt;td&gt;&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Voltage/Frequency/Phase&lt;/span&gt;&lt;/td&gt;\r\n&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;V/Hz/Ph&lt;/span&gt;&lt;/td&gt;\r\n&lt;td&gt;220-240/50/1&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Power input&lt;/span&gt;&lt;/td&gt;\r\n&lt;td&gt;W&lt;/td&gt;\r\n&lt;td&gt;1300&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Rated Current&lt;/span&gt;&lt;/td&gt;\r\n&lt;td&gt;A&lt;/td&gt;\r\n&lt;td&gt;5.8&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;&lt;/td&gt;\r\n&lt;td&gt;&lt;/td&gt;\r\n&lt;td&gt;&lt;br /&gt;\r\n&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;strong&gt;INDOOR UNIT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n&lt;td&gt;&lt;/td&gt;\r\n&lt;td&gt;&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Air Flow (Hi/Mi/Lo)&lt;/span&gt;&amp;nbsp; &amp;nbsp;&lt;/td&gt;\r\n&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;m&lt;sup&gt;3&lt;/sup&gt;/h&lt;/span&gt;&lt;/td&gt;\r\n&lt;td&gt;560/520/480&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Noise Level (Hi?Mi/Lo)&lt;/span&gt;&lt;/td&gt;\r\n&lt;td&gt;dB(A)&lt;/td&gt;\r\n&lt;td&gt;39/33/30&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Coil material&lt;/span&gt;&lt;/td&gt;\r\n&lt;td&gt;&lt;/td&gt;\r\n&lt;td&gt;Copper&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Fin material&lt;/span&gt;&lt;/td&gt;\r\n&lt;td&gt;&lt;/td&gt;\r\n&lt;td&gt;Almunium&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Controller&lt;/span&gt;&lt;/td&gt;\r\n&lt;td&gt;&lt;/td&gt;\r\n&lt;td&gt;Remote&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Dimension (WxHxD)&lt;/span&gt;&lt;/td&gt;\r\n&lt;td&gt;mm&lt;/td&gt;\r\n&lt;td&gt;810x280x210&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Net weight&lt;/span&gt;&lt;/td&gt;\r\n&lt;td&gt;kg&lt;/td&gt;\r\n&lt;td&gt;9&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;&lt;/td&gt;\r\n&lt;td&gt;&lt;/td&gt;\r\n&lt;td&gt;&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;&lt;strong&gt;OUTDOOR UNIT&lt;/strong&gt;&lt;/td&gt;\r\n&lt;td&gt;&lt;/td&gt;\r\n&lt;td&gt;&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;Compressor Type&lt;/td&gt;\r\n&lt;td&gt;&lt;/td&gt;\r\n&lt;td&gt;Rotary&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;Dimenson(WxHxD)&lt;/td&gt;\r\n&lt;td&gt;mm&lt;/td&gt;\r\n&lt;td&gt;780x545x240&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;Net weight&lt;/td&gt;\r\n&lt;td&gt;kg&lt;/td&gt;\r\n&lt;td&gt;33&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;&lt;/td&gt;\r\n&lt;td&gt;&lt;/td&gt;\r\n&lt;td&gt;&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;"&gt;&lt;strong&gt;REFRIGERANT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n&lt;td&gt;&lt;/td&gt;\r\n&lt;td&gt;R-22&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:''Calibri'',''sans-serif'';"&gt;&lt;strong&gt;PIPING CONNECTION&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n&lt;td&gt;&lt;/td&gt;\r\n&lt;td&gt;&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:''Calibri'',''sans-serif'';"&gt;Liquid Side&lt;/span&gt;&lt;/td&gt;\r\n&lt;td&gt;mm(inch)&lt;/td&gt;\r\n&lt;td&gt;6.35(1/4")&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:''Calibri'',''sans-serif'';"&gt;Gas Side&lt;/span&gt;&lt;/td&gt;\r\n&lt;td&gt;mm(inch)&lt;/td&gt;\r\n&lt;td&gt;12.7(1/2")&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;/tbody&gt;&lt;/table&gt;', 1, 'Active', '2016-05-31 11:17:20', 1, '2016-05-31 05:23:53', 1),
(40, 'Wall Mounted Split Type', 0, 'PDI20160531114424.jpg', '&lt;p&gt;&lt;em&gt;WM08HS&lt;/em&gt;&lt;/p&gt; &lt;table class="table table-bordered table-responsive k-table"&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;p&gt;Cooling Capacity&lt;br /&gt; &lt;/p&gt; &lt;/td&gt; &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;Btu/h&lt;/span&gt;&lt;/td&gt; &lt;td&gt;24000&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;&lt;strong&gt;ELECTRICAL DATA&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;Voltage/Frequency/Phase&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;V/Hz/Ph&lt;/span&gt;&lt;/td&gt; &lt;td&gt;220-240/50/1&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;Power input&lt;/span&gt;&lt;/td&gt; &lt;td&gt;W&lt;/td&gt; &lt;td&gt;2695&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;Rated Current&lt;/span&gt;&lt;/td&gt; &lt;td&gt;A&lt;/td&gt; &lt;td&gt;13.5&lt;/td&gt; &lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;&lt;strong&gt;INDOOR UNIT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;Air Flow (Hi/Mi/Lo)&lt;/span&gt;&amp;nbsp; &amp;nbsp;&lt;/td&gt; &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;m&lt;sup&gt;3&lt;/sup&gt;/h&lt;/span&gt;&lt;/td&gt; &lt;td&gt;1050/950/850&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span \\""="" sans-serif;font-size:14.6667px;line-height:16.8667px;\\\\\\"="\\" style="font-family:Calibri,;"&gt;Noise Level (Hi?Mi/Lo)&lt;/span&gt;&lt;/td&gt; &lt;td&gt;dB(A)&lt;/td&gt; &lt;td&gt;48/45/42&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span \\""="" sans-serif;font-size:14.6667px;line-height:16.8667px;\\\\\\"="\\" style="font-family:Calibri,;"&gt;Coil material&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;Copper&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span \\""="" sans-serif;font-size:14.6667px;line-height:16.8667px;\\\\\\"="\\" style="font-family:Calibri,;"&gt;Fin material&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;Almunium&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span \\""="" sans-serif;font-size:14.6667px;line-height:16.8667px;\\\\\\"="\\" style="font-family:Calibri,;"&gt;Controller&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;Remote&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;Dimension (WxHxD)&lt;/span&gt;&lt;/td&gt; &lt;td&gt;mm&lt;/td&gt; &lt;td&gt;1050x330x245&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;Net weight&lt;/span&gt;&lt;/td&gt; &lt;td&gt;kg&lt;/td&gt; &lt;td&gt;17&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;strong&gt;OUTDOOR UNIT&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;Compressor Type&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;Rotary&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;Dimenson(WxHxD)&lt;/td&gt; &lt;td&gt;mm&lt;/td&gt; &lt;td&gt;845x700x315&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;Net weight&lt;/td&gt; &lt;td&gt;kg&lt;/td&gt; &lt;td&gt;50&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span \\""="" sans-serif;font-size:14.6667px;\\\\\\"="\\" style="font-family:Calibri,;"&gt;&lt;strong&gt;REFRIGERANT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;R-22&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;&lt;strong&gt;PIPING CONNECTION&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;Liquid Side&lt;/span&gt;&lt;/td&gt; &lt;td&gt;mm(inch)&lt;/td&gt; &lt;td&gt;9.53(3/8")&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;Gas Side&lt;/span&gt;&lt;/td&gt; &lt;td&gt;mm(inch)&lt;/td&gt; &lt;td&gt;16.0(5/8")&lt;/td&gt; &lt;/tr&gt; &lt;/tbody&gt;&lt;/table&gt;', 1, 'Active', '2016-05-31 11:44:24', 1, '2016-05-31 05:59:35', 1);
INSERT INTO `product` (`product_id`, `product_title`, `product_category_id`, `product_image`, `product_details`, `product_type_id`, `product_status`, `product_created_on`, `product_created_by`, `product_updated_on`, `product_updated_by`) VALUES
(41, 'Wall Mounted Split Type', 0, 'PDI20160531115251.jpg', '&lt;p&gt;&lt;em&gt;AS18C+WM06HS&lt;/em&gt;&lt;/p&gt; &lt;table class="table table-bordered table-responsive k-table"&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;p&gt;Cooling Capacity&lt;br /&gt; &lt;/p&gt; &lt;p&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;/span&gt;&lt;/p&gt; &lt;/td&gt; &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Btu/h&lt;/span&gt;&lt;/td&gt; &lt;td&gt;18000&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;strong&gt;ELECTRICAL DATA&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Voltage/Frequency/Phase&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;V/Hz/Ph&lt;/span&gt;&lt;/td&gt; &lt;td&gt;220-240/50/1&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Power input&lt;/span&gt;&lt;/td&gt; &lt;td&gt;W&lt;/td&gt; &lt;td&gt;2189&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Rated Current&lt;/span&gt;&lt;/td&gt; &lt;td&gt;A&lt;/td&gt; &lt;td&gt;10.2&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;br /&gt; &lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;strong&gt;INDOOR UNIT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Air Flow (Hi/Mi/Lo)&lt;/span&gt;&amp;nbsp; &amp;nbsp;&lt;/td&gt; &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;m&lt;sup&gt;3&lt;/sup&gt;/h&lt;/span&gt;&lt;/td&gt; &lt;td&gt;750/660/660&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Noise Level (Hi?Mi/Lo)&lt;/span&gt;&lt;/td&gt; &lt;td&gt;dB(A)&lt;/td&gt; &lt;td&gt;45/42/39&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Coil material&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;Copper&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Fin material&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;Almunium&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Controller&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;Remote&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Dimension (WxHxD)&lt;/span&gt;&lt;/td&gt; &lt;td&gt;mm&lt;/td&gt; &lt;td&gt;895x285x240&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Net weight&lt;/span&gt;&lt;/td&gt; &lt;td&gt;kg&lt;/td&gt; &lt;td&gt;13.5&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;strong&gt;OUTDOOR UNIT&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;Compressor Type&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;Rotary&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;Dimenson(WxHxD)&lt;/td&gt; &lt;td&gt;mm&lt;/td&gt; &lt;td&gt;780x545x240&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;Net weight&lt;/td&gt; &lt;td&gt;kg&lt;/td&gt; &lt;td&gt;34&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;"&gt;&lt;strong&gt;REFRIGERANT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;R-22&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:''Calibri'',''sans-serif'';"&gt;&lt;strong&gt;PIPING CONNECTION&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:''Calibri'',''sans-serif'';"&gt;Liquid Side&lt;/span&gt;&lt;/td&gt; &lt;td&gt;mm(inch)&lt;/td&gt; &lt;td&gt;6.35(1/4")&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:''Calibri'',''sans-serif'';"&gt;Gas Side&lt;/span&gt;&lt;/td&gt; &lt;td&gt;mm(inch)&lt;/td&gt; &lt;td&gt;12.7(1/2")&lt;/td&gt; &lt;/tr&gt; &lt;/tbody&gt;&lt;/table&gt;', 1, 'Active', '2016-05-31 11:48:41', 1, '2016-05-31 05:52:51', 1),
(42, 'Wall Mounted Split Type', 0, 'PDI20160531115957.jpg', '&lt;p&gt;&lt;em&gt;AS24C&lt;/em&gt;&lt;/p&gt;\r\n &lt;table class="table table-bordered table-responsive k-table"&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;p&gt;Cooling Capacity&lt;br /&gt;\r\n &lt;/p&gt;\r\n &lt;/td&gt;\r\n &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;Btu/h&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;24000&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;&lt;strong&gt;ELECTRICAL DATA&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;Voltage/Frequency/Phase&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;V/Hz/Ph&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;220-240/50/1&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;Power input&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;W&lt;/td&gt;\r\n &lt;td&gt;2695&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;Rated Current&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;A&lt;/td&gt;\r\n &lt;td&gt;13.5&lt;/td&gt;\r\n &lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;&lt;strong&gt;INDOOR UNIT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;Air Flow (Hi/Mi/Lo)&lt;/span&gt;&amp;nbsp; &amp;nbsp;&lt;/td&gt;\r\n &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;m&lt;sup&gt;3&lt;/sup&gt;/h&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;1050/950/850&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span \\""="" sans-serif;font-size:14.6667px;line-height:16.8667px;\\\\\\"="\\" style="font-family:Calibri,;"&gt;Noise Level (Hi?Mi/Lo)&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;dB(A)&lt;/td&gt;\r\n &lt;td&gt;48/45/42&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span \\""="" sans-serif;font-size:14.6667px;line-height:16.8667px;\\\\\\"="\\" style="font-family:Calibri,;"&gt;Coil material&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Copper&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span \\""="" sans-serif;font-size:14.6667px;line-height:16.8667px;\\\\\\"="\\" style="font-family:Calibri,;"&gt;Fin material&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Almunium&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span \\""="" sans-serif;font-size:14.6667px;line-height:16.8667px;\\\\\\"="\\" style="font-family:Calibri,;"&gt;Controller&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Remote&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;Dimension (WxHxD)&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;mm&lt;/td&gt;\r\n &lt;td&gt;1050x330x245&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;Net weight&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;kg&lt;/td&gt;\r\n &lt;td&gt;17&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;strong&gt;OUTDOOR UNIT&lt;/strong&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;Compressor Type&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Rotary&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;Dimenson(WxHxD)&lt;/td&gt;\r\n &lt;td&gt;mm&lt;/td&gt;\r\n &lt;td&gt;845x700x315&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;Net weight&lt;/td&gt;\r\n &lt;td&gt;kg&lt;/td&gt;\r\n &lt;td&gt;50&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span \\""="" sans-serif;font-size:14.6667px;\\\\\\"="\\" style="font-family:Calibri,;"&gt;&lt;strong&gt;REFRIGERANT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;R-22&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;&lt;strong&gt;PIPING CONNECTION&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;Liquid Side&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;mm(inch)&lt;/td&gt;\r\n &lt;td&gt;9.53(3/8")&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;Gas Side&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;mm(inch)&lt;/td&gt;\r\n &lt;td&gt;16.0(5/8")&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;/tbody&gt;&lt;/table&gt;', 1, 'Active', '2016-05-31 11:59:57', 1, '2016-05-31 05:59:57', 0),
(43, 'Wall Mounted Split Type', 0, 'PDI20160531120542.jpg', '&lt;p&gt;&lt;em&gt;AS18C&lt;/em&gt;&lt;/p&gt;\r\n &lt;table class="table table-bordered table-responsive k-table"&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;p&gt;Cooling Capacity&lt;br /&gt;\r\n &lt;/p&gt;\r\n &lt;p&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;/span&gt;&lt;/p&gt;\r\n &lt;/td&gt;\r\n &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Btu/h&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;18000&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;strong&gt;ELECTRICAL DATA&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Voltage/Frequency/Phase&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;V/Hz/Ph&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;220-240/50/1&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Power input&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;W&lt;/td&gt;\r\n &lt;td&gt;2189&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Rated Current&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;A&lt;/td&gt;\r\n &lt;td&gt;10.2&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;br /&gt;\r\n &lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;strong&gt;INDOOR UNIT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Air Flow (Hi/Mi/Lo)&lt;/span&gt;&amp;nbsp; &amp;nbsp;&lt;/td&gt;\r\n &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;m&lt;sup&gt;3&lt;/sup&gt;/h&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;750/660/660&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Noise Level (Hi?Mi/Lo)&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;dB(A)&lt;/td&gt;\r\n &lt;td&gt;45/42/39&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Coil material&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Copper&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Fin material&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Almunium&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Controller&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Remote&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Dimension (WxHxD)&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;mm&lt;/td&gt;\r\n &lt;td&gt;895x285x240&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Net weight&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;kg&lt;/td&gt;\r\n &lt;td&gt;13.5&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;strong&gt;OUTDOOR UNIT&lt;/strong&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;Compressor Type&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Rotary&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;Dimenson(WxHxD)&lt;/td&gt;\r\n &lt;td&gt;mm&lt;/td&gt;\r\n &lt;td&gt;780x545x240&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;Net weight&lt;/td&gt;\r\n &lt;td&gt;kg&lt;/td&gt;\r\n &lt;td&gt;34&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;"&gt;&lt;strong&gt;REFRIGERANT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;R-22&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:''Calibri'',''sans-serif'';"&gt;&lt;strong&gt;PIPING CONNECTION&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:''Calibri'',''sans-serif'';"&gt;Liquid Side&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;mm(inch)&lt;/td&gt;\r\n &lt;td&gt;6.35(1/4")&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:''Calibri'',''sans-serif'';"&gt;Gas Side&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;mm(inch)&lt;/td&gt;\r\n &lt;td&gt;12.7(1/2")&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;/tbody&gt;&lt;/table&gt;', 1, 'Active', '2016-05-31 12:05:42', 1, '2016-05-31 06:05:42', 0),
(44, 'Ceiling & Floor Mounter Split Type', 0, 'PDI20160603184326.jpg', '&lt;p&gt;&lt;em&gt;CFE10/CFE14&lt;/em&gt;&lt;/p&gt;\r\n &lt;table class="table table-bordered table-responsive k-table"&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;p&gt;Cooling Capacity&lt;br /&gt;\r\n &lt;/p&gt;\r\n &lt;p&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;/span&gt;&lt;/p&gt;\r\n &lt;/td&gt;\r\n &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Btu/h&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;30000&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;strong&gt;ELECTRICAL DATA&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Voltage/Frequency/Phase&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;V/Hz/Ph&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;220-240/50/1&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Power input&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;W&lt;/td&gt;\r\n &lt;td&gt;3375&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Rated Current&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;A&lt;/td&gt;\r\n &lt;td&gt;16.1&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;br /&gt;\r\n &lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;strong&gt;INDOOR UNIT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Air Flow (Hi/Mi/Lo)&lt;/span&gt;&amp;nbsp; &amp;nbsp;&lt;/td&gt;\r\n &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;m&lt;sup&gt;3&lt;/sup&gt;/h&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;1170/1100/1000&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Noise Level (Hi?Mi/Lo)&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;dB(A)&lt;/td&gt;\r\n &lt;td&gt;49/46/43&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Coil material&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Copper&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Fin material&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Almunium&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Controller&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Remote&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Dimension (WxHxD)&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;mm&lt;/td&gt;\r\n &lt;td&gt;895x285x240&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Net weight&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;kg&lt;/td&gt;\r\n &lt;td&gt;13.5&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;strong&gt;OUTDOOR UNIT&lt;/strong&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;Compressor Type&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Rotary&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;Dimenson(WxHxD)&lt;/td&gt;\r\n &lt;td&gt;mm&lt;/td&gt;\r\n &lt;td&gt;1200x200x655&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;Net weight&lt;/td&gt;\r\n &lt;td&gt;kg&lt;/td&gt;\r\n &lt;td&gt;30&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;"&gt;&lt;strong&gt;REFRIGERANT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;R-22&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:''Calibri'',''sans-serif'';"&gt;&lt;strong&gt;PIPING CONNECTION&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:''Calibri'',''sans-serif'';"&gt;Liquid Side&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;mm(inch)&lt;/td&gt;\r\n &lt;td&gt;9.53(3/8")&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:''Calibri'',''sans-serif'';"&gt;Gas Side&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;mm(inch)&lt;/td&gt;\r\n &lt;td&gt;16.0(5/8")&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;/tbody&gt;&lt;/table&gt;', 1, 'Active', '2016-06-03 18:43:26', 1, '2016-06-03 12:43:26', 0),
(45, 'Ceiling & Floor Mounter Split Type', 0, 'PDI20160603184853.jpg', '&lt;p&gt;&lt;em&gt;CFE16/CFE18&lt;/em&gt;&lt;/p&gt;\r\n &lt;table class="table table-bordered table-responsive k-table"&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;p&gt;Cooling Capacity&lt;br /&gt;\r\n &lt;/p&gt;\r\n &lt;p&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;/span&gt;&lt;/p&gt;\r\n &lt;/td&gt;\r\n &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Btu/h&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;48000&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;strong&gt;ELECTRICAL DATA&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Voltage/Frequency/Phase&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;V/Hz/Ph&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;380-415/50/3&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Power input&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;W&lt;/td&gt;\r\n &lt;td&gt;4800&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Rated Current&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;A&lt;/td&gt;\r\n &lt;td&gt;8.3&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;br /&gt;\r\n &lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;strong&gt;INDOOR UNIT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Air Flow (Hi/Mi/Lo)&lt;/span&gt;&amp;nbsp; &amp;nbsp;&lt;/td&gt;\r\n &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;m&lt;sup&gt;3&lt;/sup&gt;/h&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;1900/1700/1600&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Noise Level (Hi?Mi/Lo)&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;dB(A)&lt;/td&gt;\r\n &lt;td&gt;47/46/44&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Coil material&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Copper&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Fin material&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Almunium&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Controller&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Remote&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Dimension (WxHxD)&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;mm&lt;/td&gt;\r\n &lt;td&gt;1275x200x655&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Net weight&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;kg&lt;/td&gt;\r\n &lt;td&gt;35&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;strong&gt;OUTDOOR UNIT&lt;/strong&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;Compressor Type&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Remote&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;Dimenson(WxHxD)&lt;/td&gt;\r\n &lt;td&gt;mm&lt;/td&gt;\r\n &lt;td&gt;1670x235x675&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;Net weight&lt;/td&gt;\r\n &lt;td&gt;kg&lt;/td&gt;\r\n &lt;td&gt;52&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;"&gt;&lt;strong&gt;REFRIGERANT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;R-22&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:''Calibri'',''sans-serif'';"&gt;&lt;strong&gt;PIPING CONNECTION&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:''Calibri'',''sans-serif'';"&gt;Liquid Side&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;mm(inch)&lt;/td&gt;\r\n &lt;td&gt;12.7(1/2")&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:''Calibri'',''sans-serif'';"&gt;Gas Side&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;mm(inch)&lt;/td&gt;\r\n &lt;td&gt;19.0(3/4")&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;/tbody&gt;&lt;/table&gt;', 1, 'Active', '2016-06-03 18:48:53', 1, '2016-06-03 12:48:53', 0),
(46, 'Ceiling & Floor Mounter Split Type', 0, 'PDI20160603185044.jpg', '&lt;p&gt;&lt;em&gt;AS30C/AS36C/AS48C&lt;/em&gt;&lt;/p&gt;\r\n &lt;table class="table table-bordered table-responsive k-table"&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;p&gt;Cooling Capacity&lt;br /&gt;\r\n &lt;/p&gt;\r\n &lt;p&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;/span&gt;&lt;/p&gt;\r\n &lt;/td&gt;\r\n &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Btu/h&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;30000&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;strong&gt;ELECTRICAL DATA&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Voltage/Frequency/Phase&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;V/Hz/Ph&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;220-240/50/1&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Power input&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;W&lt;/td&gt;\r\n &lt;td&gt;3375&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Rated Current&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;A&lt;/td&gt;\r\n &lt;td&gt;16.1&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;br /&gt;\r\n &lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;strong&gt;INDOOR UNIT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Air Flow (Hi/Mi/Lo)&lt;/span&gt;&amp;nbsp; &amp;nbsp;&lt;/td&gt;\r\n &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;m&lt;sup&gt;3&lt;/sup&gt;/h&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;1170/1100/1000&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Noise Level (Hi?Mi/Lo)&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;dB(A)&lt;/td&gt;\r\n &lt;td&gt;49/46/43&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Coil material&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Copper&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Fin material&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Almunium&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Controller&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Remote&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Dimension (WxHxD)&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;mm&lt;/td&gt;\r\n &lt;td&gt;895x285x240&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Net weight&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;kg&lt;/td&gt;\r\n &lt;td&gt;13.5&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;strong&gt;OUTDOOR UNIT&lt;/strong&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;Compressor Type&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Rotary&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;Dimenson(WxHxD)&lt;/td&gt;\r\n &lt;td&gt;mm&lt;/td&gt;\r\n &lt;td&gt;1200x200x655&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;Net weight&lt;/td&gt;\r\n &lt;td&gt;kg&lt;/td&gt;\r\n &lt;td&gt;30&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;"&gt;&lt;strong&gt;REFRIGERANT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;R-22&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:''Calibri'',''sans-serif'';"&gt;&lt;strong&gt;PIPING CONNECTION&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:''Calibri'',''sans-serif'';"&gt;Liquid Side&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;mm(inch)&lt;/td&gt;\r\n &lt;td&gt;9.53(3/8")&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:''Calibri'',''sans-serif'';"&gt;Gas Side&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;mm(inch)&lt;/td&gt;\r\n &lt;td&gt;16.0(5/8")&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;/tbody&gt;&lt;/table&gt;', 1, 'Active', '2016-06-03 18:50:44', 1, '2016-06-03 12:52:08', 1),
(47, 'Ceiling & Floor Mounter Split Type', 0, 'PDI20160603190113.jpg', '&lt;p&gt;&lt;em&gt;AS60C&lt;/em&gt;&lt;/p&gt;\r\n &lt;table class="table table-bordered table-responsive k-table"&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;p&gt;Cooling Capacity&lt;br /&gt;\r\n &lt;/p&gt;\r\n &lt;p&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;/span&gt;&lt;/p&gt;\r\n &lt;/td&gt;\r\n &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Btu/h&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;60000&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;strong&gt;ELECTRICAL DATA&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Voltage/Frequency/Phase&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;V/Hz/Ph&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;380-415/50/3&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Power input&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;W&lt;/td&gt;\r\n &lt;td&gt;5400&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Rated Current&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;A&lt;/td&gt;\r\n &lt;td&gt;9.4&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;br /&gt;\r\n &lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;strong&gt;INDOOR UNIT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Air Flow (Hi/Mi/Lo)&lt;/span&gt;&amp;nbsp; &amp;nbsp;&lt;/td&gt;\r\n &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;m&lt;sup&gt;3&lt;/sup&gt;/h&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;1900/1700/1600&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Noise Level (Hi?Mi/Lo)&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;dB(A)&lt;/td&gt;\r\n &lt;td&gt;47/46/44&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Coil material&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Copper&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Fin material&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Almunium&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Controller&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Remote&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Dimension (WxHxD)&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;mm&lt;/td&gt;\r\n &lt;td&gt;1670x235x675&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Net weight&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;kg&lt;/td&gt;\r\n &lt;td&gt;52&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;strong&gt;OUTDOOR UNIT&lt;/strong&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;Compressor Type&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Scroll&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;Dimenson(WxHxD)&lt;/td&gt;\r\n &lt;td&gt;mm&lt;/td&gt;\r\n &lt;td&gt;940x1245x340&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;Net weight&lt;/td&gt;\r\n &lt;td&gt;kg&lt;/td&gt;\r\n &lt;td&gt;107&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;"&gt;&lt;strong&gt;REFRIGERANT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;R-22&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:''Calibri'',''sans-serif'';"&gt;&lt;strong&gt;PIPING CONNECTION&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:''Calibri'',''sans-serif'';"&gt;Liquid Side&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;mm(inch)&lt;/td&gt;\r\n &lt;td&gt;12.7(1/2")&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:''Calibri'',''sans-serif'';"&gt;Gas Side&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;mm(inch)&lt;/td&gt;\r\n &lt;td&gt;19.0(3/4")&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;/tbody&gt;&lt;/table&gt;', 1, 'Active', '2016-06-03 19:01:13', 1, '2016-06-03 13:01:13', 0),
(48, 'Cassette Split Type', 0, 'PDI20160603191004.jpg', '&lt;p&gt;&lt;em&gt;CS08&lt;/em&gt;&lt;/p&gt;\r\n &lt;table class="table table-bordered table-responsive k-table"&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;p&gt;Cooling Capacity&lt;br /&gt;\r\n &lt;/p&gt;\r\n &lt;p&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;/span&gt;&lt;/p&gt;\r\n &lt;/td&gt;\r\n &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Btu/h&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;24000&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;strong&gt;ELECTRICAL DATA&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Voltage/Frequency/Phase&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;V/Hz/Ph&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;220-240/50/1&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Power input&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;W&lt;/td&gt;\r\n &lt;td&gt;2600&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Rated Current&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;A&lt;/td&gt;\r\n &lt;td&gt;12.1&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;br /&gt;\r\n &lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;strong&gt;INDOOR UNIT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Air Flow (Hi/Mi/Lo)&lt;/span&gt;&amp;nbsp; &amp;nbsp;&lt;/td&gt;\r\n &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;m&lt;sup&gt;3&lt;/sup&gt;/h&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;1220/1010/820&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Noise Level (Hi?Mi/Lo)&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;dB(A)&lt;/td&gt;\r\n &lt;td&gt;44/40.5/439&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Coil material&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Copper&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Fin material&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Almunium&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Controller&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Remote&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Dimension (WxHxD)&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;mm&lt;/td&gt;\r\n &lt;td&gt;840x220x840&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Net weight&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;kg&lt;/td&gt;\r\n &lt;td&gt;29&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;strong&gt;OUTDOOR UNIT&lt;/strong&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;Compressor Type&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Rotary&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;Dimenson(WxHxD)&lt;/td&gt;\r\n &lt;td&gt;mm&lt;/td&gt;\r\n &lt;td&gt;845x700x315&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;Net weight&lt;/td&gt;\r\n &lt;td&gt;kg&lt;/td&gt;\r\n &lt;td&gt;58&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;"&gt;&lt;strong&gt;REFRIGERANT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;R-22&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:''Calibri'',''sans-serif'';"&gt;&lt;strong&gt;PIPING CONNECTION&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:''Calibri'',''sans-serif'';"&gt;Liquid Side&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;mm(inch)&lt;/td&gt;\r\n &lt;td&gt;9.53(3/8")&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:''Calibri'',''sans-serif'';"&gt;Gas Side&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;mm(inch)&lt;/td&gt;\r\n &lt;td&gt;16.0(5/8")&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;/tbody&gt;&lt;/table&gt;', 1, 'Active', '2016-06-03 19:10:04', 1, '2016-06-03 13:10:04', 0);
INSERT INTO `product` (`product_id`, `product_title`, `product_category_id`, `product_image`, `product_details`, `product_type_id`, `product_status`, `product_created_on`, `product_created_by`, `product_updated_on`, `product_updated_by`) VALUES
(49, 'Cassette Split Type', 0, 'PDI20160603191452.jpg', '&lt;p&gt;&lt;em&gt;AS24C/AS36C/AS48C&lt;/em&gt;&lt;/p&gt; &lt;table class="table table-bordered table-responsive k-table"&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;p&gt;Cooling Capacity&lt;br /&gt; &lt;/p&gt; &lt;/td&gt; &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;Btu/h&lt;/span&gt;&lt;/td&gt; &lt;td&gt;24000&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;&lt;strong&gt;ELECTRICAL DATA&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;Voltage/Frequency/Phase&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;V/Hz/Ph&lt;/span&gt;&lt;/td&gt; &lt;td&gt;220-240/50/1&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;Power input&lt;/span&gt;&lt;/td&gt; &lt;td&gt;W&lt;/td&gt; &lt;td&gt;2695&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;Rated Current&lt;/span&gt;&lt;/td&gt; &lt;td&gt;A&lt;/td&gt; &lt;td&gt;13.5&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;&lt;strong&gt;INDOOR UNIT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;Air Flow (Hi/Mi/Lo)&lt;/span&gt;&amp;nbsp; &amp;nbsp;&lt;/td&gt; &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;m&lt;sup&gt;3&lt;/sup&gt;/h&lt;/span&gt;&lt;/td&gt; &lt;td&gt;1050/950/850&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span \\""="" sans-serif;font-size:14.6667px;line-height:16.8667px;\\\\\\"="\\" style="font-family:Calibri,;"&gt;Noise Level (Hi?Mi/Lo)&lt;/span&gt;&lt;/td&gt; &lt;td&gt;dB(A)&lt;/td&gt; &lt;td&gt;48/45/42&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span \\""="" sans-serif;font-size:14.6667px;line-height:16.8667px;\\\\\\"="\\" style="font-family:Calibri,;"&gt;Coil material&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;Copper&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span \\""="" sans-serif;font-size:14.6667px;line-height:16.8667px;\\\\\\"="\\" style="font-family:Calibri,;"&gt;Fin material&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;Almunium&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span \\""="" sans-serif;font-size:14.6667px;line-height:16.8667px;\\\\\\"="\\" style="font-family:Calibri,;"&gt;Controller&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;Remote&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;Dimension (WxHxD)&lt;/span&gt;&lt;/td&gt; &lt;td&gt;mm&lt;/td&gt; &lt;td&gt;1050x330x245&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;Net weight&lt;/span&gt;&lt;/td&gt; &lt;td&gt;kg&lt;/td&gt; &lt;td&gt;17&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;strong&gt;OUTDOOR UNIT&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;Compressor Type&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;Rotary&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;Dimenson(WxHxD)&lt;/td&gt; &lt;td&gt;mm&lt;/td&gt; &lt;td&gt;845x700x315&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;Net weight&lt;/td&gt; &lt;td&gt;kg&lt;/td&gt; &lt;td&gt;50&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span \\""="" sans-serif;font-size:14.6667px;\\\\\\"="\\" style="font-family:Calibri,;"&gt;&lt;strong&gt;REFRIGERANT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;R-22&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;&lt;strong&gt;PIPING CONNECTION&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;Liquid Side&lt;/span&gt;&lt;/td&gt; &lt;td&gt;mm(inch)&lt;/td&gt; &lt;td&gt;9.53(3/8")&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;font-family:\\\\\\''Calibri\\\\\\'',\\\\\\''sans-serif\\\\\\'';"&gt;Gas Side&lt;/span&gt;&lt;/td&gt; &lt;td&gt;mm(inch)&lt;/td&gt; &lt;td&gt;16.0(5/8")&lt;/td&gt; &lt;/tr&gt; &lt;/tbody&gt;&lt;/table&gt;', 1, 'Active', '2016-06-03 19:14:52', 1, '2016-06-03 13:15:18', 1),
(50, 'Floor Standing Type', 0, 'PDI20160603191926.jpg', '&lt;p&gt;&lt;em&gt;AC42C/VE08-FB&lt;/em&gt;&lt;/p&gt;\r\n &lt;table class="table table-bordered table-responsive k-table"&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;p&gt;Cooling Capacity&lt;br /&gt;\r\n &lt;/p&gt;\r\n &lt;p&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;/span&gt;&lt;/p&gt;\r\n &lt;/td&gt;\r\n &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Btu/h&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;24000&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;strong&gt;ELECTRICAL DATA&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Voltage/Frequency/Phase&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;V/Hz/Ph&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;220-240/50/1&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Power input&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;W&lt;/td&gt;\r\n &lt;td&gt;2895&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Rated Current&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;A&lt;/td&gt;\r\n &lt;td&gt;14.5&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;br /&gt;\r\n &lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;strong&gt;INDOOR UNIT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Air Flow (Hi/Mi/Lo)&lt;/span&gt;&amp;nbsp; &amp;nbsp;&lt;/td&gt;\r\n &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;m&lt;sup&gt;3&lt;/sup&gt;/h&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;1050&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Noise Level (Hi?Mi/Lo)&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;dB(A)&lt;/td&gt;\r\n &lt;td&gt;8&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Coil material&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Copper&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Fin material&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Almunium&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Controller&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Remote&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Dimension (WxHxD)&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;mm&lt;/td&gt;\r\n &lt;td&gt;483x165x254&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Net weight&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;kg&lt;/td&gt;\r\n &lt;td&gt;38&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;strong&gt;OUTDOOR UNIT&lt;/strong&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;Compressor Type&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Rotary&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;Dimenson(WxHxD)&lt;/td&gt;\r\n &lt;td&gt;mm&lt;/td&gt;\r\n &lt;td&gt;845x700x315&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;Net weight&lt;/td&gt;\r\n &lt;td&gt;kg&lt;/td&gt;\r\n &lt;td&gt;50&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;"&gt;&lt;strong&gt;REFRIGERANT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;R-22&lt;/td&gt;\r\n &lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 1, 'Active', '2016-06-03 19:19:26', 1, '2016-06-03 13:19:26', 0),
(51, 'Floor Standing Type', 0, 'PDI20160603192201.jpg', '&lt;p&gt;&lt;em&gt;VEB10-FB&lt;/em&gt;&lt;/p&gt; &lt;table class="table table-bordered table-responsive k-table"&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;p&gt;Cooling Capacity&lt;br /&gt; &lt;/p&gt; &lt;p&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;/span&gt;&lt;/p&gt; &lt;/td&gt; &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Btu/h&lt;/span&gt;&lt;/td&gt; &lt;td&gt;30000&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;strong&gt;ELECTRICAL DATA&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Voltage/Frequency/Phase&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;V/Hz/Ph&lt;/span&gt;&lt;/td&gt; &lt;td&gt;220-240/50/1&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Power input&lt;/span&gt;&lt;/td&gt; &lt;td&gt;W&lt;/td&gt; &lt;td&gt;3654&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Rated Current&lt;/span&gt;&lt;/td&gt; &lt;td&gt;A&lt;/td&gt; &lt;td&gt;17&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;br /&gt; &lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;strong&gt;INDOOR UNIT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Air Flow (Hi/Mi/Lo)&lt;/span&gt;&amp;nbsp; &amp;nbsp;&lt;/td&gt; &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;m&lt;sup&gt;3&lt;/sup&gt;/h&lt;/span&gt;&lt;/td&gt; &lt;td&gt;1170&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Noise Level (Hi?Mi/Lo)&lt;/span&gt;&lt;/td&gt; &lt;td&gt;dB(A)&lt;/td&gt; &lt;td&gt;48&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Coil material&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;Copper&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Fin material&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;Almunium&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Controller&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;Remote&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Dimension (WxHxD)&lt;/span&gt;&lt;/td&gt; &lt;td&gt;mm&lt;/td&gt; &lt;td&gt;609x1880x254&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Net weight&lt;/span&gt;&lt;/td&gt; &lt;td&gt;kg&lt;/td&gt; &lt;td&gt;42&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;strong&gt;OUTDOOR UNIT&lt;/strong&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;Compressor Type&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;Rotary&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;Dimenson(WxHxD)&lt;/td&gt; &lt;td&gt;mm&lt;/td&gt; &lt;td&gt;845x700x315&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;Net weight&lt;/td&gt; &lt;td&gt;kg&lt;/td&gt; &lt;td&gt;58&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;"&gt;&lt;strong&gt;REFRIGERANT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt; &lt;td&gt;&lt;/td&gt; &lt;td&gt;R-22&lt;/td&gt; &lt;/tr&gt; &lt;/tbody&gt;&lt;/table&gt;', 1, 'Active', '2016-06-03 19:22:01', 1, '2016-06-03 13:22:52', 1),
(52, 'Floor Standing Type', 0, 'PDI20160603192333.jpg', '&lt;p&gt;&lt;em&gt;AS30&lt;/em&gt;&lt;/p&gt;\r\n &lt;table class="table table-bordered table-responsive k-table"&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;p&gt;Cooling Capacity&lt;br /&gt;\r\n &lt;/p&gt;\r\n &lt;p&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;/span&gt;&lt;/p&gt;\r\n &lt;/td&gt;\r\n &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Btu/h&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;30000&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;strong&gt;ELECTRICAL DATA&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Voltage/Frequency/Phase&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;V/Hz/Ph&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;220-240/50/1&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Power input&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;W&lt;/td&gt;\r\n &lt;td&gt;3654&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Rated Current&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;A&lt;/td&gt;\r\n &lt;td&gt;17&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;br /&gt;\r\n &lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;&lt;strong&gt;INDOOR UNIT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Air Flow (Hi/Mi/Lo)&lt;/span&gt;&amp;nbsp; &amp;nbsp;&lt;/td&gt;\r\n &lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;m&lt;sup&gt;3&lt;/sup&gt;/h&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;1170&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Noise Level (Hi?Mi/Lo)&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;dB(A)&lt;/td&gt;\r\n &lt;td&gt;48&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Coil material&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Copper&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Fin material&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Almunium&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;line-height:16.8667px;"&gt;Controller&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Remote&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Dimension (WxHxD)&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;mm&lt;/td&gt;\r\n &lt;td&gt;609x1880x254&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-size:11.0pt;line-height:115%;font-family:''Calibri'',''sans-serif'';"&gt;Net weight&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;kg&lt;/td&gt;\r\n &lt;td&gt;42&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;strong&gt;OUTDOOR UNIT&lt;/strong&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;Compressor Type&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;Rotary&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;Dimenson(WxHxD)&lt;/td&gt;\r\n &lt;td&gt;mm&lt;/td&gt;\r\n &lt;td&gt;845x700x315&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;Net weight&lt;/td&gt;\r\n &lt;td&gt;kg&lt;/td&gt;\r\n &lt;td&gt;58&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;tr&gt;&lt;td&gt;&lt;span style="font-family:Calibri, sans-serif;font-size:14.6667px;"&gt;&lt;strong&gt;REFRIGERANT&lt;/strong&gt;&lt;/span&gt;&lt;/td&gt;\r\n &lt;td&gt;&lt;/td&gt;\r\n &lt;td&gt;R-22&lt;/td&gt;\r\n &lt;/tr&gt;\r\n &lt;/tbody&gt;&lt;/table&gt;', 1, 'Active', '2016-06-03 19:23:33', 1, '2016-06-03 13:23:33', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE IF NOT EXISTS `product_category` (
  `pc_id` int(11) NOT NULL AUTO_INCREMENT,
  `pc_name` varchar(255) NOT NULL,
  `pc_status` enum('Active','Inactive') NOT NULL,
  `pc_created_by` int(11) NOT NULL,
  `pc_created_on` datetime NOT NULL,
  `pc_updated_by` int(11) NOT NULL,
  `pc_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`pc_id`, `pc_name`, `pc_status`, `pc_created_by`, `pc_created_on`, `pc_updated_by`, `pc_updated_on`) VALUES
(1, 'Water Cooled Chillers', 'Active', 1, '2016-05-11 09:59:29', 0, '2016-05-11 03:59:29'),
(2, 'Air Cooled Chillers', 'Active', 1, '2016-05-11 09:59:39', 0, '2016-05-11 03:59:39'),
(3, 'Heat Pump Chillers Water-Water & Air Water', 'Active', 1, '2016-05-11 09:59:49', 0, '2016-05-11 03:59:49'),
(4, 'Water Cooled Packaged Units', 'Active', 1, '2016-05-11 09:59:58', 0, '2016-05-11 03:59:58'),
(5, 'Air Cooled Packaged Units', 'Active', 1, '2016-05-11 10:00:06', 0, '2016-05-11 04:00:06'),
(6, 'Airside Products', 'Active', 1, '2016-05-11 10:00:15', 0, '2016-05-11 04:00:15'),
(7, 'Heating Terminal Products', 'Active', 1, '2016-05-18 10:13:18', 0, '2016-05-18 04:13:18'),
(8, 'Speciality Products', 'Active', 1, '2016-05-18 10:13:40', 0, '2016-05-18 04:13:40');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE IF NOT EXISTS `product_type` (
  `product_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_type_name` varchar(255) NOT NULL,
  `product_type_status` enum('Active','Inactive') NOT NULL,
  PRIMARY KEY (`product_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`product_type_id`, `product_type_name`, `product_type_status`) VALUES
(1, 'DOMESTIC', 'Active'),
(2, 'INDUSTRIAL', 'Active'),
(3, 'ALOOK''S LOCAL PRODUCT', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(255) NOT NULL,
  `project_image` varchar(255) NOT NULL,
  `project_details` text NOT NULL,
  `project_type` enum('Inhand','Completed','Maintainance') NOT NULL,
  `project_progress` int(11) NOT NULL,
  `project_date` varchar(255) NOT NULL,
  `project_status` enum('Active','Inactive') NOT NULL,
  `project_created_on` datetime NOT NULL,
  `project_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `project_created_by` int(11) NOT NULL,
  `project_updated_by` int(11) NOT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `project_name`, `project_image`, `project_details`, `project_type`, `project_progress`, `project_date`, `project_status`, `project_created_on`, `project_updated_on`, `project_created_by`, `project_updated_by`) VALUES
(1, 'Supply, Installation, Testing, Commissioning & Maintenance of 120TR Central Air-conditioning System at Bangladesh Institute of Administration & Management (BIAM), Dhaka', '', '120 TR (2 x 60 TR), Air Cooled Reciprocating Chiller, R-22', 'Completed', 0, '01/11/1997', 'Active', '2016-05-09 23:46:55', '2016-05-09 17:46:55', 1, 0),
(2, 'Supply, Installation, Testing, Commissioning of Split type Air-conditioner (145 TR) for multipurpose Hall and Auditorium of BPATC, Savar, Dhaka', '', 'As per work order. Total 145 TR', 'Completed', 0, '05/04/1997', 'Active', '2016-05-09 23:48:11', '2016-05-09 17:48:11', 1, 0),
(3, 'Supply, Installation, Testing, Commissioning & Maintenance of 200TR Central Air-conditioning System at Cardiac Centre of BIRDEM Hospital, Shahbag,  Dhaka	200 TR (2 x 100 TR), Water Cooled Screw Chiller, R-134a	22.02.1999', '', '200 TR (2 x 100 TR), Water Cooled Screw Chiller, R-134a', 'Completed', 0, '02/22/1999', 'Active', '2016-05-09 23:49:14', '2016-05-09 17:49:14', 1, 0),
(4, 'Supply, Installation, Testing, Commissioning & Maintenance of 300TR Central Air-conditioning System at ICMH, Matuail, Dhaka', '', '300 TR (2 x 150 TR), Gas Fired Absorption Chiller', 'Completed', 0, '03/19/1997', 'Active', '2016-05-09 23:49:43', '2016-05-09 17:49:43', 1, 0),
(5, 'Improvement of Central Air-conditioning System of Passenger Terminal Building at Zia International Airport, Kurmitola, Dhaka (S. H:- Procurement & Installation of Air Handling Unit)', '', '72751 CFM (Model : AHDAF 240HL - 1, AHDAF 180HL - 1, AHDAF 150HL - 1, AHDAF 120HL - 1, AHDAF 64HL - 1, AHDFS 64HL - 1, AHDFS 40HL - 2)', 'Completed', 0, '05/14/2000', 'Active', '2016-05-09 23:50:19', '2016-05-09 17:50:19', 1, 0),
(6, 'Renovation & Upgradation of Central Air-conditioning System of Passenger Terminal Building of Zia International Airport, Kurmitola, Dhaka [Sub-head : Supply, Installation, Testing & Commissioning of Central Air-conditioning System 140 TR for Newly Constru', '', '140 TR (2 x 70 TR), Air Cooled Reciprocating Chiller, R-22', 'Completed', 0, '06/04/2000', 'Active', '2016-05-09 23:50:59', '2016-05-09 17:50:59', 1, 0),
(7, 'Supply & Installation  Testing, Commissioning of 80 TR Central Air-Conditioning System for Shanta Industries Ltd., DEPZ, Ganakbari, Savar, Dhaka', '', '80 TR (1 x 80 TR), Air Cooled Screw Chiller, R-22', 'Completed', 0, '08/05/2000', 'Active', '2016-05-09 23:51:28', '2016-05-09 17:51:28', 1, 0),
(8, 'Supply, Installation, Testing, Commissioning of 270TR Central Air-conditioning System of Holland Centre at Pragati Swarani, Middle Badda, Dhaka', '', '270 TR (1 x 270 TR), Water Cooled Screw Chiller, R-22', 'Completed', 0, '01/15/2002', 'Active', '2016-05-09 23:52:05', '2016-05-09 17:52:05', 1, 0),
(9, 'Supply, Installation, Testing, Commissioning of 300TR Central Air-conditioning System of Shezan Point, 2, Indira Road, Farmgate, Dhaka', '', '300 TR (2 x 150 TR), Air Cooled Screw Chiller, R-22', 'Completed', 0, '01/15/2002', 'Active', '2016-05-09 23:52:43', '2016-05-09 17:52:43', 1, 0),
(10, 'Supply, Installation, Testing, Commissioning of 669 TR Central Air-conditioning System of ACME Tower (Phase-I), Dhaka', '', '669 TR ( 3 x 223 TR) , Water Cooled Screw Chiller, R-22', 'Completed', 0, '05/02/2002', 'Active', '2016-05-09 23:53:13', '2016-05-09 17:53:13', 1, 0),
(11, 'Supply, Installation, Testing, Commissioning of 188 TR Ducted split type Air-conditioning System of Standard Group at Mohakhali, Dhaka', '', '188 TR (45 x 4.16 TR),  Ducted split type Air-conditioning, CR16-CBD', 'Completed', 0, '11/12/2002', 'Active', '2016-05-09 23:53:51', '2016-05-09 17:53:51', 1, 0),
(12, 'Supply, Installation, Testing, Commissioning of 223 TR Central Air-conditioning System of ACME Tower (Phase-II), Dhaka.', '', '223 TR (1 x 223 TR), Water Cooled Screw Chiller, R-22', 'Completed', 0, '12/30/2002', 'Active', '2016-05-09 23:54:45', '2016-05-09 17:54:45', 1, 0),
(13, 'Supply, Installation, Testing, Commissioning of 162 TR Centrel Air-conditioning System of Genetic Plaza of Genetic Design & Development Ltd. at Dhanmondi, R/A, Dhaka', '', '162 TR (2 x 81 TR), Packaged  type Air-conditioning, ACPS', 'Completed', 0, '03/16/2003', 'Active', '2016-05-09 23:55:17', '2016-05-09 17:55:17', 1, 0),
(14, 'Supply, Installation, Testing & Commissioning of Central Air-conditioning System at Planners Tower, 30 Bipanan C/A, Sonargaon Road, Dhaka', '', '200 TR Ducted type Air-conditioning, ACCS 160 / HEB 160', 'Completed', 0, '03/29/2003', 'Active', '2016-05-09 23:55:54', '2016-05-09 17:55:54', 1, 0),
(15, 'Supply, Installation, Testing, Commissioning of Central Air-conditioning System of Construction of 1st, 2nd and Mezzanine Floors on the Extended Portion of Passenger Terminal Building at ZIA International Airport, Kurmitola, Dhaka', '', '900 TR ( 2 x 450 TR), Water Cooled Screw Chiller, R-134a', 'Completed', 0, '06/15/2003', 'Active', '2016-05-09 23:56:31', '2016-05-09 17:56:31', 1, 0),
(16, 'Supply, Installation, Testing, Commissioning of Central Air-conditioning System of Jamuna Television at Kuril Baridhara, Dhaka', '', '311.4 TR (2 x 155.7 TR), Water Cooled Screw Chiller, R-134a', 'Completed', 0, '09/11/2003', 'Active', '2016-05-09 23:57:06', '2016-05-09 17:57:06', 1, 0),
(17, 'Supply, Installation, Testing & Commissioning of 150 TR Capacity Air-conditioning System at Nissan Showroom cum office complex, Tejgaon, Dhaka', '', '150 TR (12.5 TR x 3 = 37.5 TR + 9 TR x 12 = 108 TR) Ducted type Air-conditioning', 'Completed', 0, '09/14/2003', 'Active', '2016-05-09 23:57:32', '2016-05-09 17:57:32', 1, 0),
(18, 'Supply, Installation, Testing, Commissioning of Air-conditioning  System of Centre for the Rehabilitation of the Paralysed(CRP) for 13-storiated Hospital Building Complex at Section -14, Mirpur, Dhaka', '', '200 TR  Air-conditioning system ( ACCS220 / AHFS32, ACCS125 / AHFS12, CR12CBD, CR10CBD etc.)', 'Completed', 0, '02/15/2004', 'Active', '2016-05-09 23:57:57', '2016-05-09 17:57:57', 1, 0),
(19, 'Supply and installation of Dunham-Bush Ducted split  type Air-conditioner system for Southeast Bank Ltd. at Eunoos Trade Center, Ground & 1st Floor, 52-53 Dilkusah C/A, Dhaka (Turn-key Basis)', '', '120 TR (9.375 TR x 12), Ducted type Air-conditioning, ACCS-125 + HEB-125', 'Completed', 0, '12/06/2004', 'Active', '2016-05-09 23:58:47', '2016-05-09 17:58:47', 1, 0),
(20, 'Supply, Installation, Testing & commissioning of Central Air-conditioning system for Chinshilpa Bhaban, of Bangladesh Sugar and Food Industries Corporation (BSFIC) at 3 Dilkusah C/A, Dhaka-1000', '', '350 TR (1 x 350 TR), Water Cooled Screw Chiller, R-22', 'Completed', 0, '02/16/2005', 'Active', '2016-05-09 23:59:10', '2016-05-09 17:59:10', 1, 0),
(21, 'Supply, Installation, Testing & commissioning of 3 sets of 150 TR Screw type Air-cooled water chiller Central Air-conditioning system and other necessary accessories for the Grand Plaza Project, 227 Boro Mogh Bazar, Dhaka', '', '450 TR (3 x 150 TR), Air Cooled Screw Chiller , R-134a', 'Completed', 0, '12/26/2005', 'Active', '2016-05-09 23:59:38', '2016-05-09 17:59:38', 1, 0),
(22, 'Supply, Installation, Testing & commissioning of  3 x 300 TR Screw water chillers with related equipments and accessories on turnkey job basis at Bangladesh Bank, Rangpur', '', '900 TR (3 x 300 TR), Water  Cooled Screw Chiller , R-134a', 'Completed', 0, '06/29/2006', 'Active', '2016-05-10 00:00:18', '2016-05-09 18:00:18', 1, 0),
(23, 'O&M of Boarding Bridge at Zia International Airport, Kurmitola, Dhaka during the year 2006-2007 (S. H: Replacement of ducted rooftop packaged type Air conditioning unit of Boarding Bridge No. 2,3,4&5)', '', '20.23 TR (4 x 5.058 TR) Air cooled packaged, ACPS68P', 'Completed', 0, '11/11/2007', 'Active', '2016-05-10 00:00:43', '2016-05-09 18:00:43', 1, 0),
(24, 'Extension & Modernization of Passenger Terminal Building and Construction of 1st Floor of Osmani International Airport, Sylhet (S. H: Supply, Installation, testing & commissioning of Air conditioning and Mechanical Ventilation System)', '', '428.13 TR (Air cooled packaged 68.33 TR = ACPS285P - 43.33 + ACPS300P - 25 TR & Ducted Split 359.80 TR = ACCS125/HEB125 - 103.13 + ACCS380/VEB380 - 116.67 TR + ACCS250/VEB250 - 37.50 TR + ACCS125/VEB125 - 37.50 TR + ACCS285/VEB285 - 65 TR)', 'Completed', 0, '11/26/2007', 'Active', '2016-05-10 00:01:11', '2016-05-09 18:01:11', 1, 0),
(25, 'Supply, Installation, Testing, Commissioning, Balancing and Maintenance of Precession Type Central Air-Condition & Ventilation System for Grameenphone Switch site located at Savar (Polashbari, Ashulia)', '', '400 TR ( 2 x 200 TR), Air Cooled Screw Chiller, R-134a with Precision unit', 'Completed', 0, '03/17/2008', 'Active', '2016-05-10 00:01:53', '2016-05-09 18:01:53', 1, 0),
(26, 'Supply and installation of Precision type Air-conditioners with necessary electrical works including 3 (three) years free servicing & maintenance with spare parts 1 (one) year of warranty period for Data Centre at 6th floor of Sonali Bank Limited, Head Of', '', '67.52 kW (16.88 kW x 4) DBTAD-05/DBRC-06', 'Completed', 0, '05/09/2010', 'Active', '2016-05-10 00:02:23', '2016-05-09 18:02:23', 1, 0),
(27, 'Supply and Installation of Air Conditioner for Dutch Bangla Bank Ltd.', '', '139.6 TR (69.8 TR x 2), Air Cooled Scroll Chiller. R-22', 'Completed', 0, '07/13/2010', 'Active', '2016-05-10 00:03:26', '2016-05-09 18:03:26', 1, 0),
(28, 'Supply, installation, Testing & Commissioning of 980 (Nine Hundred Eighty) Ton Capacity Central Air Conditioning HVAC System of "Tokyo Square" for "Japan Garden City" Project at Mohammadpur, Dhaka', '', '980 TR (180 TR x 5), Air Cooled Screw Chiller. R-134a', 'Completed', 0, '03/16/2011', 'Active', '2016-05-10 00:03:53', '2016-05-09 18:03:53', 1, 0),
(29, 'Brand New Machinery for Centrel Air-conditioning consisting of Water Cooled Screw Chiller for ACME Tower, Dhaka', '', '223 TR (1 x 223 TR), Water Cooled Screw Chiller, R-22', 'Completed', 0, '04/18/2011', 'Active', '2016-05-10 00:04:27', '2016-05-09 18:04:27', 1, 0),
(30, 'Development of Central Air-conditioning system of Passenger Terminal Building-2 of Hazrat Sahajalal International Airport (including consultancy service and civil works) (S.H: Providing and fixing of Air Handling Unit)', '', '86400 CFM ( AHDAF180 - 17500 X 1 + AHDAF120 - 11900 CFM x 1 + AHDAF040 - 4000 x 2 + AHDAF080 - 7500 x 1 + AHDAF210 - 21500 CFM x 1 + AHDAF150 - 14000 x 1 + AHDAF064 - 6000 CFM x 1)', 'Completed', 0, '09/12/2011', 'Active', '2016-05-10 00:05:17', '2016-05-09 18:05:17', 1, 0),
(31, 'Development of Electric supply system i.e. related works  (S.H:- Providing & Installation of Air-condition Machine at Domestic Arrival Lounge & Double height area at T/B at Osmani International Airport, Sylhet).', '', '781.8 MBH (130.3 MBH x 6 = ACCS145/VEB145D) &  600000 BTH/HR ( 60000 BTU/HR x 10 = AS60C+CFE18)', 'Completed', 0, '11/22/2011', 'Active', '2016-05-10 00:05:43', '2016-05-09 18:05:43', 1, 0),
(32, 'Supply and Commissioning of HVAC System at Pledge Harbor School and Sports Academy, Mawna, Gazipur', '', '465.2 TR (288 TR = 144 TR x 2, Water Cooled Screw Chiller & 177.2 TR x 1, Air Cooled Screw Chiller), R-22', 'Completed', 0, '06/17/2012', 'Active', '2016-05-10 00:06:15', '2016-05-09 18:06:15', 1, 0),
(33, 'Supply, Installation, Testing and Commissioning of Precision type Air conditioning units (18 nos. 8 ton each) for BTCL''s different soft-switch & Media Gate Way sites under the Project Title "Replacement of Old Digital Telephone System of Dhaka City (17100', '', '144 TR (8 TR x 18) DBTAD09/DBRC10', 'Completed', 0, '10/21/2012', 'Active', '2016-05-10 00:06:50', '2016-05-09 18:06:50', 1, 0),
(34, 'Supply, installation, Testing, Commissioning and Balancing of HVAC System for IFIC Bank Head Office Building at 61, Purana Paltan, Dhaka-1000', '', '831.72 TR (207.93 TR x 4), Air Cooled Screw Chiller. R-134a', 'Completed', 0, '12/06/2012', 'Active', '2016-05-10 00:07:16', '2016-05-09 18:07:16', 1, 0),
(35, 'Ductable Air-Conditioning Units for Scholastica Ltd at Dhaka Tribune, FR Tower, Panthopath, Dhaka', '', '155.5 Ton (Ducted Split - 125 Ton = 5 Ton x 25, AC60C+HEB60) & (Split Type = 30.5 Ton -  2 Ton x 4, 2.5 Ton x 1, 1.5 Ton x 10, 1 Ton x 5)', 'Completed', 0, '12/17/2012', 'Active', '2016-05-10 00:07:40', '2016-05-09 18:07:40', 1, 0),
(36, 'Conversion of BSMMU into Centre of Exellence (2nd phase) at Shahbag, Dhaka (Sub-Head: Supply, Installation, Testing & Commissioning of Central Air conditioning System for 10th floor under construction of Vertical Extension of Hospital Building (Cabin Bloc', '', '316.06 TR (158.03 TR x 2), Air Cooled Screw Chiller. R-134a', 'Completed', 0, '04/21/2013', 'Active', '2016-05-10 00:08:04', '2016-05-09 18:08:04', 1, 0),
(37, 'Procurement of Major Spare Parts for different capacities of Package & Split Type Air Condition Machine (Total - 550 Ton) at Osmani Int''l Airport, Sylhet (S.H: Providing & installation of compressor & other accessories with related works)', '', 'As per work order', 'Completed', 0, '05/08/2013', 'Active', '2016-05-10 00:08:30', '2016-05-09 18:08:30', 1, 0),
(38, 'Supply, Installation, Trial Run / Testing & Commissioning of Air Condition for KIB Complex at krishi Khamar Sarak, Farmgate, Dhaka-1215', '', '167.3 TR (83.65 TR x 2), Air Cooled Screw Chiller. R-134a, VRF System 140 TR (24 TR x 2, 21 TR x 2, 17.5 TR x 2, 15 TR x 1), Ducted Split 145 TR and Split Type 45 TR', 'Completed', 0, '05/20/2013', 'Active', '2016-05-10 00:09:05', '2016-05-09 18:09:05', 1, 0),
(39, 'Development & Renovation of Air-Conditioning System of TB-1 at HSIA (S.H:- Replacement & Commissioning work of Compressor Motor of Dunham-Bush 450 Ton Capacity Chiller Unit No. 1)', '', 'As per work order', 'Completed', 0, '06/03/2014', 'Active', '2016-05-10 00:09:51', '2016-05-09 18:09:51', 1, 0),
(40, 'Supply, Installation, Testing, Commissioning and Balancing of Central Air Conditioning System for Civil Aviation Authority of Bangladesh at Hazrat Shahjalal Airport, Kurmitola, Dhaka', '', '814.23 TR (271.41 TR x 3), Air Cooled Screw Chiller. R-134a', 'Inhand', 10, '12/31/2015', 'Active', '2016-05-10 00:10:43', '2016-05-09 18:10:43', 1, 0),
(41, 'Construction of 5-storied Convention Centre with 13-storied foundation including 2-basement floor at BSMMU Complex at Shahbag, Dhaha (Sub-Head:- S4upply, Installation, Testing & Commissioning of Central Air-conditioning System (HVAC), VRF and Split type A', '', 'Chiller -  793.89 TR (264.63 TR x 3), Air Cooled Screw Chiller. R-134a. VRF System - 134.55 TR, Split - 32 TR', 'Inhand', 60, '10/26/2014', 'Active', '2016-05-10 00:11:24', '2016-05-09 18:11:24', 1, 0),
(42, 'Supply, Installation, Testing & Commissioning of Heating, Ventilation & Air Conditioning System (HVAC) System for Liberation War Museum (LWM) at West Agargaon, Sher-E-Bangla Nagar, Dhaka', '', '513.12 TR (171.04 TR x 3), Air Cooled Screw Chiller. R-134a', 'Inhand', 90, '07/05/2014', 'Active', '2016-05-10 00:13:20', '2016-05-09 18:13:20', 1, 0),
(43, 'Supply, Installation, Testing and Commissioning of 525 Ton Capacity Central Air-conditioning System for Eastern Housing Project at 59/B, Kamal Ataturk Avenue, Banani, Dhaka', '', '545.31 TR (181.77 TR x 3), Air Cooled Screwl Chiller. R-134a', 'Inhand', 90, '09/25/2013', 'Active', '2016-05-10 00:13:53', '2016-05-09 18:13:53', 1, 0),
(44, 'Upgradation & Renovation of Tongi Upazila Health Complex from 30 beds to 250 beds at Gazipur District (Sub Head: Construction of Hospital Building - 7 storied building with 8-storied foundation including internal sanitation, sub-station, water reservoir, ', '', 'As per work order', 'Inhand', 95, '03/18/2015', 'Active', '2016-05-10 00:14:28', '2016-05-09 18:14:28', 1, 0),
(45, 'Supply, installation, Testing & Commissioning of HVAC System at 9th Floor (Community Center, Children Play Area, Game Zone and Food Code) of "Tokyo Square" a Shopping Complex for our "Japan Garden City" project at Mohammadpur, Dhaka', '', '17 TR (FCU - 2 TR x 1 = 2 TR & AHU - 7.5 TR x 2 = 15 TR)', 'Inhand', 90, '06/11/2015', 'Active', '2016-05-10 00:15:19', '2016-05-09 18:15:19', 1, 0),
(46, 'Providing & Installation of Compressor i/c A.C Duct & Installation & A.C for Domestic terminal & Public Concourse Hall at Osmani Int’l Airport, Sylhet – providing & Installation of different types of A.C Compressor Blower & condenser motor with related wo', '', 'As per work order', 'Inhand', 60, '06/29/2015', 'Active', '2016-05-10 00:15:58', '2016-05-09 18:15:58', 1, 0),
(47, 'O&M of passenger Terminal Buidling-1 Central Air Conditioning System at Hazrat Shahjalal International Airport, Dhaka during the year 2014-2015 (S.H:- De-scaling of evaporator & Condenser shell by mechanical & chemical process for Dunham-Bush Chiller at T', '', 'As per work order', 'Inhand', 65, '06/14/2015', 'Active', '2016-05-10 00:16:27', '2016-05-09 18:16:27', 1, 0),
(48, 'Supplying, Installation, testing & Commissioning of Addiltional Items (Duct and pipe works with materials and equipments) for 525 Ton capacity Central Air-conditioning System (Ground, 2nd, 3rd/4th, 7th, 8th, 11th & 12th Floor) for Eastern Housing Project ', '', 'As per work order', 'Inhand', 95, '04/08/2015', 'Active', '2016-05-10 00:40:47', '2016-05-09 18:40:47', 1, 0),
(49, 'Supplying, Installation, Leak Testing of Pipe and Accessories inbetween BMS system and HVAC system for Eastern Housing Project at 59/B, Kamal Ataturk Avenue, Banani, Dhaka', '', 'As per work order', 'Inhand', 95, '02/24/2015', 'Active', '2016-05-10 00:41:25', '2016-05-09 18:41:25', 1, 0),
(50, 'O&M Passenger Terminal Building-1 (1st floor, 2nd floor & Mezzannine floor) Central Air conditioning & Ventilation System at Hazrat Shahjalal International Airport, Kurmitola, Dhaka during the year 2013-2016 (S.H :- Annual Operation & Maintenance of 2 x 4', '', '2 x 450 TR = 900 TR, Water Cooled Screw Chiller, R-134a', 'Maintainance', 0, '', 'Active', '2016-05-10 00:42:33', '2016-05-09 18:42:33', 1, 0),
(51, 'Operation and maintenance of 5x223 TR = 1115 TR Central Air-conditioning System of ACME Tower, Dhaka for 3 years.', '', '1115 TR (5 x 223 TR), Water Cooled Screw Chiller, R-22', 'Maintainance', 0, '', 'Active', '2016-05-10 00:43:06', '2016-05-09 18:43:06', 1, 0),
(52, 'RMO of E/M works services at Osmani International Airport during the year 2010-2011 (S.H :- Yearly Repair & Maintenance of Air-condition machine - 24 months operation & maintenance of Air-conditioning machine at Passenger Terminal Building)"', '', '428.13 TR (Air cooled packaged 68.33 TR = ACPS285P - 43.33 + ACPS300P - 25 TR & Ducted Split 359.79 TR = ACCS125/HEB125 - 103.13 + ACCS380/VEB380 - 116.67 TR + ACCS250/VEB250 - 37.50 TR + ACCS125/VEB125 - 37.50 TR + ACCS285/VEB285 - 65 TR)', 'Maintainance', 0, '', 'Active', '2016-05-10 00:43:21', '2016-05-09 18:43:21', 1, 0),
(53, 'Operation and maintenance of 80 Ton Central Air-conditioning systems at Shanta Industries Limited D.E.P.Z. Savar, Dhaka.', '', '80 TR (1 x 80 TR), Air Cooled Screw Chiller, R-22.', 'Maintainance', 0, '', 'Active', '2016-05-10 00:43:35', '2016-05-09 18:43:35', 1, 0),
(54, 'Annual Operation & Maintenance including Servicing 3 x 100 tons capacity chillers based air-conditioning & ventilation system equipments of Ibrahim Cardiac Hospital & Research Institute, Shahbag, Dhaka', '', '300 TR (3 x 100 TR), Water Cooled Screw Chiller, R-134a', 'Maintainance', 0, '', 'Active', '2016-05-10 00:43:48', '2016-05-09 18:43:48', 1, 0),
(55, 'Maintenance of Dunham-Bush Brand 2 x 180 tons Air Cooled. Chiller Six Seasons Hotel Ltd', '', '360 TR (2 x 180 TR), Air Cooled Chiller', 'Maintainance', 0, '', 'Active', '2016-05-10 00:44:06', '2016-05-09 18:44:06', 1, 0),
(56, 'Operation, maintenance and troubleshooting of Central Air-conditioning System 2 x 150 Tons capacity Chiller of Shezan Point at Farmgate, Dhaka', '', '300 TR (2 x 150 TR), Air Cooled Screw Chiller, R-22.', 'Maintainance', 0, '', 'Active', '2016-05-10 00:44:18', '2016-05-09 18:44:18', 1, 0),
(57, 'Maintenance of 270TR Central Air-conditioning System of Holland Centre at Pragati Swarani, Middle Badda, Dhaka.', '', '270 TR (1 x 270 TR), Water Cooled Screw Chiller, R-22', 'Maintainance', 0, '', 'Active', '2016-05-10 00:44:42', '2016-05-09 18:44:42', 1, 0),
(58, 'Maintenance of 2 x 170 Tons capacity Air Cooled Chiller at Ameen Center Baboshaiyee Samity, Chittagong', '', '2 x 170 TR = 340 TR Air Cooled Chiller', 'Maintainance', 0, '', 'Active', '2016-05-10 00:44:54', '2016-05-09 18:44:54', 1, 0),
(59, 'Maintenance of 100TR capacity Dunham-Bush Chiller at Ibn Sina Pharmaceuticals Industry Ltd., Factory at Shafipur, Gazipur', '', '100 TR, Air Cooled Screw Chiller, R-22', 'Maintainance', 0, '', 'Active', '2016-05-10 00:45:08', '2016-05-09 18:45:08', 1, 0),
(60, 'Maintenance Services of Precision Air Condition System (PAC) unit at Sonali Bank Ltd., Head Office (6th Floor), Motijheel C/A, Dhaka', '', '67.52 kW (16.88 kW x 4) DBTAD-05/DBRC-06', 'Maintainance', 0, '', 'Active', '2016-05-10 00:45:22', '2016-05-09 18:45:22', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE IF NOT EXISTS `subscribe` (
  `sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_email` varchar(255) NOT NULL,
  `sub_created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`sub_id`, `sub_email`, `sub_created_on`) VALUES
(1, 'sasas@gmail.com', '2016-05-29 19:50:30');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
