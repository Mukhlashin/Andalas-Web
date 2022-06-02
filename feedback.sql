-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2022 at 11:50 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tasanesia_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Abdullah Mukhlashin', 'abdullahmukhlashiin@gmail.com', 'Testing testing', 'thing just got more interesting', '2022-01-27 02:43:29', '2022-01-27 02:43:29'),
(2, 'Abdullah Mukhlashin', 'abdullahmukhlashiin@gmail.com', 'Testing testing', 'thing just got more interesting', '2022-01-27 02:46:27', '2022-01-27 02:46:27'),
(3, 'Abdullah Mukhlashin', 'abdullahmukhlashiin@gmail.com', 'Testing testing', 'things just got more interesting', '2022-01-27 02:46:56', '2022-01-27 02:46:56'),
(4, 'Abdullah Mukhlashin', 'abdullahmukhlashiin@gmail.com', 'Testing testing', 'things just got more interesting', '2022-01-27 02:47:09', '2022-01-27 02:47:09'),
(5, 'Naver Edward', 'nverwad@gmail.com', 'Product timeline', 'i think the timeline is kinda stuffed up, and thats not a good thing. ya better fixit asap', '2022-01-27 02:48:24', '2022-01-27 02:48:24'),
(6, 'Abdullah Mukhlashin', 'abdullahmukhlashiin@gmail.com', 'Testing', 'Anu', '2022-02-19 22:07:33', '2022-02-19 22:07:33'),
(7, 'Abdullah Mukhlashin', 'abdullahmukhlashiin@gmail.com', 'Testing testing', 'asdasd', '2022-02-20 23:48:00', '2022-02-20 23:48:00'),
(8, 'Abdullah Mukhlashin', 'abdullahmukhlashiin@gmail.com', 'Testing testing', 'asdasd', '2022-02-20 23:54:49', '2022-02-20 23:54:49'),
(9, 'Abdullah Mukhlashin', 'abdullahmukhlashiin@gmail.com', '22222', 'asdd', '2022-02-20 23:55:25', '2022-02-20 23:55:25'),
(10, 'member', 'member@tasanesia.com', 'Product timeline', 'asdasddddddddd', '2022-02-21 00:10:22', '2022-02-21 00:10:22'),
(11, 'member', 'member@tasanesia.com', '22222', 'sssssssssss', '2022-02-21 00:10:53', '2022-02-21 00:10:53'),
(12, 'member', 'member@tasanesia.com', 'Testing', 'aaaaaaa', '2022-02-21 00:19:16', '2022-02-21 00:19:16'),
(13, 'member', 'member@tasanesia.com', 'Product timeline', 'sasdcczxcxcz', '2022-02-21 00:21:36', '2022-02-21 00:21:36'),
(14, 'member', 'member@tasanesia.com', 'vvvv', 'dasdsddxxc', '2022-02-21 00:23:00', '2022-02-21 00:23:00'),
(15, 'member', 'member@tasanesia.com', '22222', 'ghjghjgbjfghfg', '2022-02-21 00:23:40', '2022-02-21 00:23:40'),
(16, 'member', 'member@tasanesia.com', 'Sabjek', 'gggfgfgff', '2022-02-21 00:33:41', '2022-02-21 00:33:41'),
(17, 'member', 'member@tasanesia.com', 'lolooo', 'opopopopo', '2022-02-21 00:42:03', '2022-02-21 00:42:03'),
(18, 'Abdullah Mukhlashin', 'abdullahmukhlashiin@gmail.com', 'asdasd', 'ggggfgfgf', '2022-02-21 00:51:42', '2022-02-21 00:51:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
