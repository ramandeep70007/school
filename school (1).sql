-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2023 at 10:35 AM
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
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `isPersent` enum('0','1') DEFAULT '1',
  `Comment` varchar(255) DEFAULT NULL,
  `section` enum('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','s','T','U','V','W','X','Y','Z') DEFAULT NULL,
  `class` enum('1','2','3','4','5','6','7','8','9','10','11','12') DEFAULT NULL,
  `coursesId` int(11) DEFAULT NULL,
  `institutionId` int(11) DEFAULT NULL,
  `subCoursesId` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `isDelete` tinyint(1) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `user_id`, `isPersent`, `Comment`, `section`, `class`, `coursesId`, `institutionId`, `subCoursesId`, `date`, `isDelete`, `createdAt`, `updatedAt`) VALUES
(1, 1, '1', 'today i am absent', 'A', '3', 2, 1, 1, '2023-05-03', 0, '2023-05-03 07:31:30', '2023-05-03 07:31:30'),
(2, 1, '1', 'today i am absent', 'B', '3', 2, 1, 1, '2023-05-03', 0, '2023-05-03 08:19:54', '2023-05-03 08:19:54'),
(3, 25, '1', 'today i am absent', 'B', '3', 2, 1, 1, '2023-05-03', 0, '2023-05-03 09:02:57', '2023-05-03 09:02:57'),
(4, 1, '1', 'today i am absent', 'B', '3', 1, 1, 1, '2023-05-03', 0, '2023-05-03 09:46:20', '2023-05-03 09:46:20'),
(5, 25, '1', 'today i am absent', 'A', '3', 1, 1, 2, '2023-05-03', 0, '2023-05-03 19:50:03', '2023-05-03 19:50:03'),
(6, 25, '1', 'today i am absent', 'A', '1', 3, 1, 4, '2023-05-03', 0, '2023-05-03 19:59:16', '2023-05-03 19:59:16'),
(7, 25, '1', 'today i am absent', 'A', '1', 3, 1, 4, '2023-05-04', 0, '2023-05-03 19:59:25', '2023-05-03 19:59:25'),
(8, 25, '1', 'today i am absent', 'A', '1', 3, 1, 4, '2023-05-06', 0, '2023-05-03 19:59:50', '2023-05-03 19:59:50'),
(9, 25, '1', 'today i am absent', 'A', '1', 3, 1, 4, '2023-05-24', 0, '2023-05-03 20:02:24', '2023-05-03 20:02:24'),
(10, 25, '1', NULL, 'A', '1', 3, 1, 4, '2023-01-24', 0, '2023-05-03 20:04:10', '2023-05-03 20:04:10'),
(11, 25, '1', NULL, 'D', '4', 3, 1, 4, '2023-05-23', 0, '2023-05-03 20:06:07', '2023-05-03 20:06:07'),
(12, 25, '1', NULL, 'D', '4', 3, 1, 4, '2023-05-29', 0, '2023-05-03 20:07:22', '2023-05-03 20:07:22'),
(13, 25, '1', NULL, 'A', '1', 3, 1, 4, '2023-01-21', 0, '2023-05-03 20:09:44', '2023-05-03 20:09:44'),
(14, 25, '1', NULL, 'D', '4', 3, 1, 4, '2023-05-29', 0, '2023-05-03 20:10:47', '2023-05-03 20:10:47'),
(15, 25, '1', NULL, 'D', '4', 3, 1, 4, '2023-05-29', 0, '2023-05-03 20:11:33', '2023-05-03 20:11:33'),
(16, 25, '1', NULL, 'F', '6', 4, 1, 6, '2023-05-04', 0, '2023-05-03 20:12:46', '2023-05-03 20:12:46'),
(17, 1, '1', NULL, 'A', '1', 1, 1, 1, '2023-05-04', 0, '2023-05-04 04:41:38', '2023-05-04 04:41:38'),
(18, 3, '1', NULL, 'A', '1', 1, 1, 1, '2023-05-04', 0, '2023-05-04 05:02:26', '2023-05-04 05:02:26'),
(19, 25, '1', NULL, 'A', '1', 1, 1, 1, '2023-05-04', 0, '2023-05-04 13:07:53', '2023-05-04 13:07:53'),
(20, 4, '1', NULL, 'G', '7', 3, 1, 7, '2023-05-05', 0, '2023-05-05 04:52:22', '2023-05-05 04:52:22'),
(21, 3, '1', NULL, 'D', '4', 3, 1, 4, '2023-05-05', 0, '2023-05-05 05:02:22', '2023-05-05 05:02:22'),
(22, 3, '1', NULL, 'A', '1', 1, 1, 1, '2023-05-05', 0, '2023-05-05 12:14:29', '2023-05-05 12:14:29'),
(23, 3, '1', NULL, 'A', '1', 1, 1, 1, '2023-05-05', 0, '2023-05-05 12:16:14', '2023-05-05 12:16:14'),
(24, 3, '1', NULL, 'A', '1', 1, 1, 1, '2023-01-21', 0, '2023-05-05 12:19:35', '2023-05-05 12:19:35'),
(25, 3, '1', 'today i am absent', 'A', '3', 1, 1, 1, '2023-05-03', 0, '2023-05-05 12:23:47', '2023-05-05 12:23:47'),
(26, 3, '1', 'today i am absent', 'A', '3', 1, 1, 1, '2023-05-29', 0, '2023-05-05 12:25:11', '2023-05-05 12:25:11'),
(27, 3, '1', NULL, 'D', '4', 3, 1, 4, '2023-05-07', 0, '2023-05-07 01:50:19', '2023-05-07 01:50:19'),
(28, 25, '1', 'today i am absent', 'A', '3', 1, 1, 1, '2023-05-03', 0, '2023-05-08 09:30:22', '2023-05-08 09:30:22'),
(29, 25, '1', 'today i am absent', 'A', '3', 1, 1, 1, '2023-05-26', 0, '2023-05-08 09:30:35', '2023-05-08 09:30:35');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `Institute` int(11) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `startTime` time DEFAULT NULL,
  `endTime` time DEFAULT NULL,
  `isDelete` tinyint(1) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `Institute`, `course`, `startTime`, `endTime`, `isDelete`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'Hindi 4', '09:22:20', '09:22:20', 0, '2023-05-01 15:06:23', '2023-05-03 18:46:03'),
(2, 1, 'English', '09:22:20', '09:22:20', 0, '2023-05-01 19:11:48', '2023-05-01 19:11:48'),
(3, 1, 'Hindi', '09:22:20', '17:22:20', 0, '2023-05-03 18:27:16', '2023-05-03 18:27:16'),
(4, 1, 'English 4', '09:22:20', '09:22:20', 0, '2023-05-03 18:27:28', '2023-05-03 18:29:56');

-- --------------------------------------------------------

--
-- Table structure for table `customusers`
--

CREATE TABLE `customusers` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `isDelete` tinyint(1) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emailveryfis`
--

CREATE TABLE `emailveryfis` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `otp` bigint(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emailveryfis`
--

INSERT INTO `emailveryfis` (`id`, `email`, `otp`, `createdAt`, `updatedAt`) VALUES
(1, 'prince11march1998@gmail.com', 778729, '2023-04-27 08:06:29', '2023-04-27 08:06:29'),
(2, 'princekumar870923@gmail.com', 668680, '2023-04-27 08:30:30', '2023-04-27 08:30:30'),
(3, 'princekumar25feb@gmail.com', 648813, '2023-04-27 08:31:41', '2023-04-27 08:31:41'),
(4, 'vairochansah2000@gmail.com', 104960, '2023-04-27 10:45:40', '2023-05-01 15:03:43'),
(5, 'hawkcolt9720@gmail.com', 590417, '2023-04-27 14:10:15', '2023-04-27 14:10:15');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `institutes`
--

CREATE TABLE `institutes` (
  `institute_id` int(11) NOT NULL,
  `InstituteName` varchar(255) DEFAULT NULL,
  `InstituteLogo` varchar(1000) DEFAULT NULL,
  `isDelete` tinyint(1) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `institutes`
--

INSERT INTO `institutes` (`institute_id`, `InstituteName`, `InstituteLogo`, `isDelete`, `createdAt`, `updatedAt`) VALUES
(1, 'Knowledge for justice', 'http://65.2.30.68:8000/profile/file1683024487091.png', 0, '2023-05-02 05:31:05', '2023-05-02 11:00:37');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_05_11_071810_create_customusers_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `token` varchar(1000) DEFAULT NULL,
  `isDelete` tinyint(1) DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `email`, `password`, `fname`, `lname`, `username`, `phone`, `token`, `isDelete`, `created_at`, `updated_at`) VALUES
(1, 'prince11march1998@gmail.com', '$2b$10$u7sEHymL2/UlgbN8jtlFhOpezU34oF/xc6GVz.2ncvDuSkpJxs3z.', 'prince11', 'kumar11', 'Prince kumar', 9693161773, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InByaW5jZTExbWFyY2gxOTk4QGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiJDJiJDEwJHU3c0VIeW1MMi9VbGdiTjhqdGxGaE9wZXpVMzRvRi94YzZHVnouMm5jdkR1U2twSnhzM3ouIiwiZm5hbWUiOiJwcmluY2UxMSIsImxuYW1lIjoia3VtYXIxMSIsInBob25lIjo5NjkzMTYxNzczLCJpYXQiOjE2ODMyOTAxNjd9.zPpsyD2Aqi2Hvstu13Y0UsHZAyZMOlotxHWFF4N2_M0', 0, '2023-04-27 07:50:29', '2023-05-05 12:36:07'),
(3, 'princekumar870923@gmail.com', '$2b$10$iVoNA5Bl/ldqgaIF2vdJwO1H88z.vKnk945dUYqhQtlQ7kT55otLa', 'prince11', 'kumar11', 'Prince kumar', 9693161773, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InByaW5jZWt1bWFyODcwOTIzQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiJDJiJDEwJGlWb05BNUJsL2xkcWdhSUYydmRKd08xSDg4ei52S25rOTQ1ZFVZcWhRdGxRN2tUNTVvdExhIiwiZm5hbWUiOiJwcmluY2UxMSIsImxuYW1lIjoia3VtYXIxMSIsInBob25lIjo5NjkzMTYxNzczLCJpYXQiOjE2ODM2OTk3MjZ9.MQxqX4p8816rWLB-AtNrRxjJLtRYyyUM0fFhoeD3ldU', 0, '2023-04-27 08:31:14', '2023-05-10 06:22:06'),
(4, 'princekumar25feb@gmail.com', '$2b$10$a9pWXL7Av5HwBBQ0epSIc.5c6vLpAt0BCv9hgfss1daShSDlLtezu', 'prince11', 'kumar11', 'Prince kumar', 9693161773, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InByaW5jZWt1bWFyMjVmZWJAZ21haWwuY29tIiwicGFzc3dvcmQiOiIkMmIkMTAkYTlwV1hMN0F2NUh3QkJRMGVwU0ljLjVjNnZMcEF0MEJDdjloZ2ZzczFkYVNoU0RsTHRlenUiLCJmbmFtZSI6InByaW5jZTExIiwibG5hbWUiOiJrdW1hcjExIiwicGhvbmUiOjk2OTMxNjE3NzMsImlhdCI6MTY4MzI2MjAzNH0.nqSFJHL5G7fpnArKfuMjhNGu0SJzGdInpyvPMN_aAF0', 0, '2023-04-27 08:32:19', '2023-05-05 04:47:14'),
(5, 'vairochansah2000@gmail.com', '$2b$10$D5WDhaw.jA3hs/172Pr.B.yFyjrEgPtqp40ls0kqH7JgavIJeV3GC', 'Vairochan', 'Sah', 'Vairochan', 7088937765, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InZhaXJvY2hhbnNhaDIwMDBAZ21haWwuY29tIiwicGFzc3dvcmQiOiIkMmIkMTAkRDVXRGhhdy5qQTNocy8xNzJQci5CLnlGeWpyRWdQdHFwNDBsczBrcUg3SmdhdklKZVYzR0MiLCJmbmFtZSI6IlZhaXJvY2hhbiIsImxuYW1lIjoiU2FoIiwicGhvbmUiOjcwODg5Mzc3NjUsImlhdCI6MTY4Mjk1MzM4N30.cXtLE_1XS2-nMQEaRmc0K_5zT9ToNRmm5MAO07dwC_8', 1, '2023-04-27 10:46:05', '2023-05-01 15:03:07'),
(25, 'hawkcolt9720@gmail.com', '$2b$10$uTxzMp6uVk5sBj/uVVPwQOWbLmRS1LB1HDNw33XF0IZ0fx3GLeLaa', 'test', 'Sah', 'Vairochan', 7088937765, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Imhhd2tjb2x0OTcyMEBnbWFpbC5jb20iLCJwYXNzd29yZCI6IiQyYiQxMCR1VHh6TXA2dVZrNXNCai91VlZQd1FPV2JMbVJTMUxCMUhETnczM1hGMElaMGZ4M0dMZUxhYSIsImZuYW1lIjoidGVzdCIsImxuYW1lIjoiU2FoIiwicGhvbmUiOjcwODg5Mzc3NjUsImlhdCI6MTY4MzQyNjg4Mn0.FyedmDKv8WxdLPzjHUrqAPMhVJHH25y2dM2GKt3JaNc', 0, '2023-04-27 14:10:51', '2023-05-07 02:34:42'),
(145, 'ramandeep@takniik.com', '$2y$10$u6BPUW.1HawtD7aCK4e2Q.zmsPtI0T7SDdhYTyDl5p6jXl5ObkXSa', 'raman', 'arora', 'raman70007', 9041498988, NULL, 0, '2023-05-11 08:13:24', '2023-05-11 08:13:24'),
(147, 'raman70007@gmail.com', '$2y$10$5QkCIFckaa5P335G8tOslurNaSD/rHAJfbVpGHcc6Z6c3gZ.CLJgm', 'raman', 'singh', 'raman70007', 8360298198, NULL, 0, '2023-05-11 08:15:09', '2023-05-11 08:15:09'),
(148, 'fatehunleash@gmail.com', '$2y$10$fN7vcCKhvAViaoXSEWLEDuo.Hw5TC/ICUbFpumYD/343BYvaUJUoe', 'rr', 'ss', 'ramandeep', 9041498988, NULL, 0, '2023-05-11 08:31:29', '2023-05-11 08:31:29');

-- --------------------------------------------------------

--
-- Table structure for table `studentdetails`
--

CREATE TABLE `studentdetails` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `profilePhoto` varchar(1000) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `Additional` varchar(255) DEFAULT NULL,
  `zipCode` bigint(20) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `institutionId` int(11) DEFAULT NULL,
  `coursesId` int(11) DEFAULT NULL,
  `subCoursesId` int(11) DEFAULT NULL,
  `class` enum('1','2','3','4','5','6','7','8','9','10','11','12') DEFAULT NULL,
  `section` enum('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','s','T','U','V','W','X','Y','Z') DEFAULT NULL,
  `teacherId` int(11) DEFAULT NULL,
  `role` enum('Admin','Teacher','Student') NOT NULL,
  `isDelete` tinyint(1) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `studentdetails`
--

INSERT INTO `studentdetails` (`id`, `user_id`, `email`, `name`, `profilePhoto`, `address`, `Additional`, `zipCode`, `state`, `country`, `phone`, `institutionId`, `coursesId`, `subCoursesId`, `class`, `section`, `teacherId`, `role`, `isDelete`, `createdAt`, `updatedAt`) VALUES
(1, 3, 'princekumar870923@gmail.com', 'prince Student', 'dfghj', NULL, NULL, NULL, NULL, NULL, 9693161773, 1, NULL, NULL, '1', 'A', 4, 'Student', 0, '2023-05-09 17:56:12', '2023-05-09 17:56:12'),
(2, 1, 'prince11march1998@gmail.com', 'prince Admin', 'dfghj', NULL, NULL, NULL, NULL, NULL, 9693161773, 1, NULL, NULL, '1', 'A', NULL, 'Admin', 0, '2023-05-10 06:26:59', '2023-05-10 06:26:59'),
(3, 4, 'princekumar25feb@gmail.com', 'prince Teacher', 'dfghj', NULL, NULL, NULL, NULL, NULL, 9693161773, 1, NULL, NULL, '1', 'A', NULL, 'Teacher', 0, '2023-05-10 06:28:09', '2023-05-10 06:28:09');

-- --------------------------------------------------------

--
-- Table structure for table `subcourses`
--

CREATE TABLE `subcourses` (
  `subcourses_id` int(11) NOT NULL,
  `InstituteId` int(11) DEFAULT NULL,
  `courseId` int(11) DEFAULT NULL,
  `subcourses` varchar(255) DEFAULT NULL,
  `startTime` time DEFAULT NULL,
  `endTime` time DEFAULT NULL,
  `isDelete` tinyint(1) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcourses`
--

INSERT INTO `subcourses` (`subcourses_id`, `InstituteId`, `courseId`, `subcourses`, `startTime`, `endTime`, `isDelete`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, 'prince', '09:22:20', '23:22:20', 0, '2023-05-01 15:07:22', '2023-05-01 15:07:22'),
(2, 1, 1, 'prince kumar', '01:02:20', '05:22:20', 0, '2023-05-01 15:07:37', '2023-05-03 19:46:32'),
(3, 1, 1, 'Hindi 3', '09:22:20', '00:22:20', 0, '2023-05-01 15:19:14', '2023-05-01 19:30:58'),
(4, 1, 3, 'prince kumar', '01:02:20', '17:22:20', 0, '2023-05-03 18:27:48', '2023-05-03 19:56:38'),
(5, 1, 4, 'Englsih 1', '09:22:20', '09:22:20', 0, '2023-05-03 18:28:01', '2023-05-03 18:28:01'),
(6, 1, 4, 'prince kumar', '01:02:20', '09:22:20', 0, '2023-05-03 18:28:04', '2023-05-03 20:12:29'),
(7, 1, 3, 'Hindi 2', '09:22:20', '10:30:20', 0, '2023-05-03 18:28:12', '2023-05-03 18:28:12');

-- --------------------------------------------------------

--
-- Table structure for table `usercourses`
--

CREATE TABLE `usercourses` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `Institute_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `isDelete` tinyint(1) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usercourses`
--

INSERT INTO `usercourses` (`id`, `course_id`, `Institute_id`, `user_id`, `teacher_id`, `isDelete`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, 3, 1, 0, '2023-05-10 06:20:36', '2023-05-10 06:20:36'),
(2, 2, 1, 3, 1, 0, '2023-05-10 06:20:36', '2023-05-10 06:20:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usersubcourses`
--

CREATE TABLE `usersubcourses` (
  `id` int(11) NOT NULL,
  `subcourses_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `Institute_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `teacher_Id` int(11) DEFAULT NULL,
  `isDelete` tinyint(1) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usersubcourses`
--

INSERT INTO `usersubcourses` (`id`, `subcourses_id`, `course_id`, `Institute_id`, `user_id`, `teacher_Id`, `isDelete`, `createdAt`, `updatedAt`) VALUES
(1, 1, 2, 1, 3, 1, 0, '2023-05-10 06:21:03', '2023-05-10 06:21:03'),
(2, 2, 2, 1, 3, 1, 0, '2023-05-10 06:21:03', '2023-05-10 06:21:03'),
(3, 1, 1, 1, 3, 1, 0, '2023-05-10 06:21:14', '2023-05-10 06:21:14'),
(4, 2, 1, 1, 3, 1, 0, '2023-05-10 06:21:14', '2023-05-10 06:21:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `customusers`
--
ALTER TABLE `customusers`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `customusers_email_unique` (`email`);

--
-- Indexes for table `emailveryfis`
--
ALTER TABLE `emailveryfis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `institutes`
--
ALTER TABLE `institutes`
  ADD PRIMARY KEY (`institute_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `studentdetails`
--
ALTER TABLE `studentdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcourses`
--
ALTER TABLE `subcourses`
  ADD PRIMARY KEY (`subcourses_id`);

--
-- Indexes for table `usercourses`
--
ALTER TABLE `usercourses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `usersubcourses`
--
ALTER TABLE `usersubcourses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customusers`
--
ALTER TABLE `customusers`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emailveryfis`
--
ALTER TABLE `emailveryfis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `institutes`
--
ALTER TABLE `institutes`
  MODIFY `institute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studentdetails`
--
ALTER TABLE `studentdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subcourses`
--
ALTER TABLE `subcourses`
  MODIFY `subcourses_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `usercourses`
--
ALTER TABLE `usercourses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usersubcourses`
--
ALTER TABLE `usersubcourses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
