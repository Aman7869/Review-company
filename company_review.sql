-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2024 at 07:10 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company_review`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company`
--

CREATE TABLE `tbl_company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(200) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `founded_on` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `company_logo` varchar(200) DEFAULT NULL,
  `create_ts` timestamp(6) NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_company`
--

INSERT INTO `tbl_company` (`id`, `company_name`, `location`, `founded_on`, `city`, `company_logo`, `create_ts`) VALUES
(8, 'IBM2', 'Indore', '2024-07-12', 'Mhow', '1722155346959596153973_company.png', '2024-07-28 08:29:09.000000'),
(9, 'TATA Consultancy Services', 'Mumbai, Maharashtra, India', '2007-04-01', 'Mumbai', '1722157661740383291000_images.png', '2024-07-28 09:07:42.000000'),
(10, 'HCL Technologies', 'Noida, Uttar Pradesh, India', '2001-02-09', 'Noida', '1722157896781412399343_images(1).png', '2024-07-28 09:11:37.000000'),
(13, 'Tech Mahindra Ltd', 'India, USA, UK, Germany', '2024-07-04', 'Indore', '1722180430352294673372_julian-hochgesang-pVikeJwYOFA-unsplash.jpg', '2024-07-28 15:27:11.000000'),
(14, 'Wipro', 'Bengaluru, Karnataka', '2024-07-03', 'Mumbai', '1722222846229200155076_wipro-logo-new-og-502x263.png', '2024-07-29 03:14:07.000000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company_reviews`
--

CREATE TABLE `tbl_company_reviews` (
  `id` int(11) NOT NULL,
  `cid` int(50) NOT NULL,
  `full_name` varchar(200) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `review_content` varchar(200) DEFAULT NULL,
  `rating` int(200) DEFAULT NULL,
  `create_ts` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_company_reviews`
--

INSERT INTO `tbl_company_reviews` (`id`, `cid`, `full_name`, `subject`, `review_content`, `rating`, `create_ts`) VALUES
(4, 10, 'Aman Kaithwas', 'subject', 'Review content', 4, '2024-07-28 13:20:07.199039'),
(5, 8, 'Testing', 'Hello', 'xxvxcv', 2, '2024-07-28 13:20:07.199039'),
(6, 8, 'Aman Kaithwas', 'This is the subject', 'This company is good', 4, '2024-07-28 13:20:07.199039'),
(7, 8, 'Ayush', 'This is subject', 'This is the test review', 5, '2024-07-28 13:20:07.199039'),
(8, 8, 'Aman Test', 'Hello', 'dfdsf', 5, '2024-07-28 13:20:07.199039'),
(9, 8, 'Nimay', 'Subject', 'This is for the testing', 3, '2024-07-28 15:25:22.000000'),
(11, 9, 'Aman', 'Tcs review', 'Tata Consultancy Services has an overall rating of 3.7 out of 5, based on over 1,50,512 reviews left anonymously by employees. 66% of employees would recommend working at Tata Consultancy Services to ', 4, '2024-07-28 16:40:47.000000'),
(12, 9, 'Ayush', 'Review', 'I have been in TCS from past 3 years. Even though my journey has been great till now, I\'ve seen people struggle in their projects because of politics, their own inabilities and bad leadership', 5, '2024-07-28 16:41:31.000000'),
(13, 14, 'Aman', 'Review for wipro', 'Wipro was divided into two different firms in 2016: Wipro Limited, a publicly listed corporation, and Wipro Enterprise, a privately owned company. The corporation employs a total of 1.97 million indiv', 4, '2024-07-29 03:16:06.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_company`
--
ALTER TABLE `tbl_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_company_reviews`
--
ALTER TABLE `tbl_company_reviews`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_company`
--
ALTER TABLE `tbl_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_company_reviews`
--
ALTER TABLE `tbl_company_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
