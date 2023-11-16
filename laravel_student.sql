-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 01, 2023 at 10:34 AM
-- Server version: 5.7.42-0ubuntu0.18.04.1
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_student`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `password`, `birth`, `country`, `created_at`, `updated_at`) VALUES
(1, 'shiva', 'shiva@123', '0', NULL, NULL, NULL),
(3, 'sama', 'sam#@123', '0', NULL, '2023-06-09 05:31:12', '2023-06-20 04:23:39'),
(5, 'jyoti', 'jyoti#@123', '0', NULL, '2023-06-09 05:31:52', '2023-06-09 05:31:52'),
(8, 'shivani', '23454', '0', NULL, '2023-06-10 05:00:21', '2023-06-10 05:00:21'),
(10, 'shivi', '23456', '0', NULL, '2023-06-10 05:08:57', '2023-06-10 05:08:57'),
(12, 'prity', '12345', '0', NULL, '2023-06-10 05:11:53', '2023-06-10 05:11:53'),
(13, 'prity', '12345', '0', NULL, '2023-06-10 05:16:00', '2023-06-10 05:16:00'),
(16, 'jams', '12345', '0', NULL, '2023-06-10 05:55:48', '2023-06-10 05:55:48'),
(18, 'jaya', '45678', '0', NULL, '2023-06-10 06:00:06', '2023-06-10 06:00:06'),
(19, 'kumar', '12345', '0', NULL, '2023-06-10 06:16:17', '2023-06-10 06:16:17'),
(20, 'sona', '23456', '0', NULL, '2023-06-10 06:43:49', '2023-06-10 06:43:49'),
(21, 'sona', '12345', '0', NULL, '2023-06-10 06:44:39', '2023-06-10 06:44:39'),
(22, 'sonu', '23456', '0', NULL, '2023-06-10 06:50:08', '2023-06-10 06:50:08'),
(23, 'tintin', '34567', '0', NULL, '2023-06-10 06:52:04', '2023-06-10 06:52:04'),
(24, 'tina', '12345', '0', NULL, '2023-06-10 07:07:05', '2023-06-10 07:07:05'),
(25, 'alia', 'alia2', '0', NULL, '2023-06-10 07:10:58', '2023-06-10 07:10:58'),
(26, 'alia', 'alia2', '0', NULL, '2023-06-10 07:11:02', '2023-06-10 07:11:02'),
(27, 'anjani', '12344', '0', NULL, '2023-06-10 07:11:52', '2023-06-10 07:49:53'),
(28, 'babu', '56789', '0', NULL, '2023-06-10 07:15:08', '2023-06-10 07:15:08'),
(31, 'deepak', '456@#', '0', NULL, NULL, NULL),
(32, 'Jai Singha', '123456', '0', 'usa', '2023-06-13 03:01:06', '2023-06-13 04:28:57'),
(33, 'sima', 'sima@123', NULL, 'japan', '2023-06-19 02:27:22', '2023-06-19 02:27:22'),
(34, 'sima', 'sima123', '2023-06-07T18:30:00.000Z', 'india', '2023-06-19 02:40:06', '2023-06-19 02:40:06'),
(35, 'rehu', 'rehu123', '2023-06-15T18:30:00.000Z', 'india', '2023-06-19 02:44:32', '2023-06-19 02:44:32'),
(36, 'sima', '12345', '2023-06-15T18:30:00.000Z', 'nepal', '2023-06-19 02:46:46', '2023-06-19 02:46:46');

-- --------------------------------------------------------

--
-- Table structure for table `contact_countries`
--

CREATE TABLE `contact_countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_emails`
--

CREATE TABLE `contact_emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_emails`
--

INSERT INTO `contact_emails` (`id`, `email`, `contact_id`, `created_at`, `updated_at`) VALUES
(1, 'prity@gmail.com', 13, '2023-06-10 05:16:00', '2023-06-10 05:16:00'),
(2, 'leena345@gmail.com', 14, '2023-06-10 05:46:44', '2023-06-10 05:46:44'),
(3, 'leena345@gmail.com', 15, '2023-06-10 05:48:23', '2023-06-10 05:48:23'),
(4, 'jams@gmail.com', 16, '2023-06-10 05:55:48', '2023-06-10 05:55:48'),
(5, 'jams', 17, '2023-06-10 05:57:07', '2023-06-10 05:57:07'),
(6, 'jaya@gmail.com', 18, '2023-06-10 06:00:06', '2023-06-10 06:00:06'),
(7, 'jaya345@gmail.com', 18, '2023-06-10 06:00:06', '2023-06-10 06:00:06'),
(8, 'kumar@gmail.com', 19, '2023-06-10 06:16:17', '2023-06-10 06:16:17'),
(9, 'sonu@gmail.com', 22, '2023-06-10 06:50:08', '2023-06-10 06:50:08'),
(10, 'tintin@gmail.com', 23, '2023-06-10 06:52:04', '2023-06-10 06:52:04'),
(11, 'somi@gmail.com', 23, '2023-06-10 06:52:04', '2023-06-10 06:52:04'),
(12, 'tina@gmail.com', 24, '2023-06-10 07:07:05', '2023-06-10 07:07:05'),
(13, 'alia@gmail.com', 25, '2023-06-10 07:10:58', '2023-06-10 07:10:58'),
(14, 'alia@gmail.com', 26, '2023-06-10 07:11:02', '2023-06-10 07:11:02'),
(16, 'babu34@gmail.com', 28, '2023-06-10 07:15:08', '2023-06-10 07:15:08'),
(19, 'anjani@gmail.com', 27, '2023-06-10 08:14:29', '2023-06-10 08:14:29'),
(20, 'babuji@gmail.com', 29, '2023-06-10 08:15:02', '2023-06-10 08:15:02'),
(21, 'komal@gmail.com', 30, '2023-06-10 08:16:20', '2023-06-10 08:16:20'),
(24, 'jai@gmail.com', 32, '2023-06-13 04:28:57', '2023-06-13 04:28:57'),
(25, 'jai@yahoo.com', 32, '2023-06-13 04:28:57', '2023-06-13 04:28:57'),
(26, 'sima@gmail.com', 33, '2023-06-19 02:27:22', '2023-06-19 02:27:22'),
(27, 'sima@gmail.com', 34, '2023-06-19 02:40:06', '2023-06-19 02:40:06'),
(28, 'rehu@gmail.com', 35, '2023-06-19 02:44:32', '2023-06-19 02:44:32'),
(29, 'sima@gmail.com', 36, '2023-06-19 02:46:46', '2023-06-19 02:46:46');

-- --------------------------------------------------------

--
-- Table structure for table `contact_phones`
--

CREATE TABLE `contact_phones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_phones`
--

INSERT INTO `contact_phones` (`id`, `number`, `contact_id`, `created_at`, `updated_at`) VALUES
(1, '3456789789', 19, '2023-06-10 06:16:17', '2023-06-10 06:16:17'),
(2, '6789678989', 22, '2023-06-10 06:50:08', '2023-06-10 06:50:08'),
(3, '7903369356', 23, '2023-06-10 06:52:04', '2023-06-10 06:52:04'),
(4, '4574567685', 23, '2023-06-10 06:52:04', '2023-06-10 06:52:04'),
(5, '67878905689', 24, '2023-06-10 07:07:05', '2023-06-10 07:07:05'),
(6, '8978967834', 30, '2023-06-10 07:17:18', '2023-06-10 07:17:18'),
(7, '9865412365', 32, '2023-06-13 03:01:06', '2023-06-13 03:01:06'),
(8, '1265478984', 32, '2023-06-13 03:01:06', '2023-06-13 03:01:06'),
(9, '2354798899', 33, '2023-06-19 02:27:22', '2023-06-19 02:27:22'),
(10, '78978987758', 34, '2023-06-19 02:40:06', '2023-06-19 02:40:06'),
(11, '67678897899', 35, '2023-06-19 02:44:32', '2023-06-19 02:44:32'),
(12, '6786797899', 36, '2023-06-19 02:46:46', '2023-06-19 02:46:46');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_05_080002_create_students_table', 1),
(6, '2023_06_05_080342_create_profiles_table', 1),
(7, '2023_06_06_130611_create_student_skills_table', 2),
(8, '2023_06_07_063306_create_teachers_table', 3),
(9, '2023_06_07_115450_create_teacher_departments_table', 4),
(10, '2023_06_09_102144_create_contacts_table', 5),
(11, '2023_06_10_070702_create_contact_emails_table', 6),
(12, '2023_06_10_104748_create_contact_phones_table', 7),
(13, '2023_06_13_060509_create_contact_countries_table', 8),
(14, '2023_06_14_074358_create_student_genders_table', 9),
(15, '2023_06_14_075351_create_student_genders_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `branch`, `age`, `contact_number`, `gender`, `created_at`, `updated_at`) VALUES
(4, 'dsa', 'dsad@das.com', 'dsa', '54', '9866522365', NULL, '2023-06-06 02:13:46', '2023-06-06 02:13:46'),
(5, 'shivani', 'shivani456@gmail.com', 'computer-science', '22', '6765437899', NULL, '2023-06-06 02:32:23', '2023-06-06 02:32:23'),
(6, 'jams cot', 'jams456@gmail.com', 'cs', '24', '7864567929', NULL, '2023-06-06 06:07:52', '2023-06-06 06:31:28'),
(7, 'peter', 'peter123@gmail.com', 'cs', '19', '9056784589', NULL, '2023-06-06 07:18:36', '2023-06-06 07:18:36'),
(8, 'sam', 'sam789@gmail.com', 'BCA', '18', '7896544399', NULL, '2023-06-06 07:19:35', '2023-06-06 07:19:35'),
(12, 'chandan', 'chandan345@gmail.com', 'computer science', '22', '4567895699', NULL, '2023-06-08 00:41:13', '2023-06-08 00:41:13'),
(20, 'Prosanta', 'pat@gmail.com', 'CSE', '65', '1234569878', 'male', '2023-06-14 05:07:38', '2023-06-14 05:07:38'),
(21, 'jksdalkj', 'djksla@sdjlk.com', 'CSE', '33', '1234567899', 'female', '2023-06-14 05:08:39', '2023-06-14 05:16:43');

-- --------------------------------------------------------

--
-- Table structure for table `student_skills`
--

CREATE TABLE `student_skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `skill` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_skills`
--

INSERT INTO `student_skills` (`id`, `skill`, `student_id`, `created_at`, `updated_at`) VALUES
(1, 'php', 10, '2023-06-06 08:27:20', '2023-06-06 08:27:20'),
(2, 'java', 10, '2023-06-06 08:27:20', '2023-06-06 08:27:20'),
(3, 'laravel', 10, '2023-06-06 08:27:20', '2023-06-06 08:27:20'),
(10, 'java', 11, '2023-06-08 00:38:52', '2023-06-08 00:38:52'),
(11, 'html', 11, '2023-06-08 00:38:52', '2023-06-08 00:38:52'),
(12, 'css', 11, '2023-06-08 00:38:52', '2023-06-08 00:38:52'),
(13, 'java', 12, '2023-06-08 00:41:13', '2023-06-08 00:41:13'),
(14, 'database', 12, '2023-06-08 00:41:13', '2023-06-08 00:41:13'),
(15, 'html', 12, '2023-06-08 00:41:13', '2023-06-08 00:41:13'),
(16, 'java', 13, '2023-06-08 00:41:22', '2023-06-08 00:41:22'),
(17, 'database', 13, '2023-06-08 00:41:22', '2023-06-08 00:41:22'),
(18, 'html', 13, '2023-06-08 00:41:22', '2023-06-08 00:41:22'),
(19, 'java', 14, '2023-06-08 00:42:58', '2023-06-08 00:42:58'),
(20, 'database', 14, '2023-06-08 00:42:58', '2023-06-08 00:42:58'),
(21, 'html', 14, '2023-06-08 00:42:58', '2023-06-08 00:42:58'),
(22, 'java', 15, '2023-06-14 02:49:13', '2023-06-14 02:49:13'),
(23, 'php', 15, '2023-06-14 02:49:13', '2023-06-14 02:49:13'),
(24, 'java', 16, '2023-06-14 02:49:32', '2023-06-14 02:49:32'),
(25, 'php', 16, '2023-06-14 02:49:32', '2023-06-14 02:49:32'),
(26, 'php', 17, '2023-06-14 02:53:59', '2023-06-14 02:53:59'),
(27, 'java', 17, '2023-06-14 02:53:59', '2023-06-14 02:53:59'),
(28, 'php', 18, '2023-06-14 02:59:22', '2023-06-14 02:59:22'),
(29, 'java', 18, '2023-06-14 02:59:22', '2023-06-14 02:59:22'),
(30, 'java', 21, '2023-06-14 05:16:49', '2023-06-14 05:16:49');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `email`, `contact_number`, `state`, `school_name`, `created_at`, `updated_at`) VALUES
(2, 'neha', 'neha234@gmail.com', '4678923499', 'jharkhand', 'DPS', '2023-06-07 01:47:12', '2023-06-07 06:18:59'),
(3, 'jyoti', 'jyoti123@gmail.com', '1234567899', 'kolkata', 'ichapur girls high school', NULL, NULL),
(6, 'jams cott', 'jams345@gmail.com', '4567893949', 'kolkata', 'high School', '2023-06-07 06:52:55', '2023-06-07 06:52:55'),
(7, 'jams cott', 'jams345@gmail.com', '4567893949', 'kolkata', 'high School', '2023-06-07 06:53:56', '2023-06-07 06:53:56'),
(8, 'jams cott', 'jams345@gmail.com', '4567893949', 'kolkata', 'high School', '2023-06-07 06:54:08', '2023-06-07 06:54:08'),
(9, 'rt', 'asd@gmail.com', '2243578990', 'bhh', 'cfdf', '2023-06-07 06:59:35', '2023-06-07 06:59:35'),
(10, 'das', 'ads@da.com', '9830529971', 'aw', 'd', '2023-06-07 07:11:12', '2023-06-07 07:11:12'),
(17, 'anjani', 'anjani123@gmail.com', '5675897999', 'up', 'DPS', '2023-06-07 07:17:29', '2023-06-07 07:55:05'),
(18, 'sam', 'sam234@gmail.com', '3456789399', 'up', 'HT', '2023-06-07 08:11:10', '2023-06-07 08:11:10'),
(19, 'rohan', 'rohan123@gmail.com', '5678939999', 'bihar', 'DPS', '2023-06-08 00:46:02', '2023-06-08 00:46:02'),
(20, 'swati', 'swati456@gmail.com', '4567893999', 'AP', 'high school', '2023-06-08 00:50:23', '2023-06-08 00:50:23'),
(21, 'ankit', 'ankit@gmail.com', '4538797989', 'kolkata', 'DAV', '2023-06-08 01:05:17', '2023-06-08 01:05:17'),
(22, 'chiku', 'chiku@gmail.com', '4564567899', 'bihar', 'DAV', '2023-06-14 00:14:46', '2023-06-14 00:14:46'),
(23, 'neval', 'newal34@gmail.com', '2546245862', 'bihar', 'DAV', '2023-06-14 05:15:03', '2023-06-14 05:15:24');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_departments`
--

CREATE TABLE `teacher_departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_departments`
--

INSERT INTO `teacher_departments` (`id`, `department`, `teacher_id`, `created_at`, `updated_at`) VALUES
(1, 'CSE', 15, '2023-06-07 07:15:38', '2023-06-07 07:15:38'),
(2, 'ME', 15, '2023-06-07 07:15:38', '2023-06-07 07:15:38'),
(3, 'english', 19, '2023-06-08 00:46:02', '2023-06-08 00:46:02'),
(4, 'computer', 19, '2023-06-08 00:46:02', '2023-06-08 00:46:02'),
(13, 'php', 21, '2023-06-08 01:06:28', '2023-06-08 01:06:28'),
(14, 'computer', 21, '2023-06-08 01:06:28', '2023-06-08 01:06:28'),
(15, 'science', 21, '2023-06-08 01:06:28', '2023-06-08 01:06:28'),
(16, 'Science', 22, '2023-06-14 00:14:46', '2023-06-14 00:14:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_countries`
--
ALTER TABLE `contact_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_emails`
--
ALTER TABLE `contact_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_phones`
--
ALTER TABLE `contact_phones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_skills`
--
ALTER TABLE `student_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_departments`
--
ALTER TABLE `teacher_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `contact_countries`
--
ALTER TABLE `contact_countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contact_emails`
--
ALTER TABLE `contact_emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `contact_phones`
--
ALTER TABLE `contact_phones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `student_skills`
--
ALTER TABLE `student_skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `teacher_departments`
--
ALTER TABLE `teacher_departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
