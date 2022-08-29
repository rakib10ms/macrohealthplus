-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2022 at 07:26 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mhp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cns_cn_eights`
--

CREATE TABLE `cns_cn_eights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cns_cn_eights`
--

INSERT INTO `cns_cn_eights` (`id`, `name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'Neck muscle weakness', 0, NULL, NULL, '2022-03-09 23:28:26', '2022-03-10 00:10:55');

-- --------------------------------------------------------

--
-- Table structure for table `cns_cn_fives`
--

CREATE TABLE `cns_cn_fives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cns_cn_fives`
--

INSERT INTO `cns_cn_fives` (`id`, `name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Dry mouth', 0, NULL, NULL, '2022-03-09 22:24:53', '2022-03-09 22:57:38'),
(2, 'Facial asymmetry', 0, NULL, NULL, '2022-03-09 22:25:03', '2022-03-09 22:57:27'),
(3, 'Difficulty in keeping fluid in month', 0, NULL, NULL, '2022-03-09 22:25:13', '2022-03-09 22:57:15'),
(4, 'Difficulty in speaking', 0, NULL, NULL, '2022-03-09 22:25:22', '2022-03-09 22:57:04'),
(5, 'Dry eyes', 0, NULL, NULL, '2022-03-09 22:57:47', '2022-03-09 22:57:47'),
(6, 'Loss of wrinkle in forehead', 0, NULL, NULL, '2022-03-09 22:57:55', '2022-03-09 22:57:55');

-- --------------------------------------------------------

--
-- Table structure for table `cns_cn_fours`
--

CREATE TABLE `cns_cn_fours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cns_cn_fours`
--

INSERT INTO `cns_cn_fours` (`id`, `name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Loss of pain and temperature sensation over face, but retention of touch and proprioception', 0, NULL, NULL, '2022-03-09 22:48:56', '2022-03-09 22:48:56'),
(2, 'Sudden severe shooting pain in face (elderly-trigeminal neuralgia, young women- MS)', 0, NULL, NULL, '2022-03-09 22:49:05', '2022-03-09 22:49:05'),
(3, 'Difficult to eat', 0, NULL, NULL, '2022-03-09 22:49:13', '2022-03-09 22:49:13'),
(4, 'Difficult to talk', 0, NULL, NULL, '2022-03-09 22:49:22', '2022-03-09 22:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `cns_cn_nines`
--

CREATE TABLE `cns_cn_nines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cns_cn_nines`
--

INSERT INTO `cns_cn_nines` (`id`, `name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Difficult to swallow', 0, NULL, NULL, '2022-03-10 00:14:55', '2022-03-10 00:14:55'),
(2, 'Sensation of choking', 0, NULL, NULL, '2022-03-10 00:15:03', '2022-03-10 00:15:03');

-- --------------------------------------------------------

--
-- Table structure for table `cns_cn_ones`
--

CREATE TABLE `cns_cn_ones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cns_cn_ones`
--

INSERT INTO `cns_cn_ones` (`id`, `name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Anosmia', 0, NULL, NULL, '2022-02-26 00:21:41', '2022-03-03 04:12:17'),
(2, 'Loss of taste', 0, NULL, NULL, '2022-03-03 04:12:30', '2022-03-03 04:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `cns_cn_sevens`
--

CREATE TABLE `cns_cn_sevens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cns_cn_sevens`
--

INSERT INTO `cns_cn_sevens` (`id`, `name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Difficulty in swallowing dry food', 0, NULL, NULL, '2022-03-09 23:27:52', '2022-03-10 00:07:31'),
(2, 'Sudden shooting pain radiate from side of neck to ear', 0, NULL, NULL, '2022-03-10 00:07:40', '2022-03-10 00:07:40'),
(3, 'Difficult to swallow liquid, solid and Hoarseness (unilateral vagus palsy)', 0, NULL, NULL, '2022-03-10 00:07:49', '2022-03-10 00:07:49');

-- --------------------------------------------------------

--
-- Table structure for table `cns_cn_sixes`
--

CREATE TABLE `cns_cn_sixes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cns_cn_sixes`
--

INSERT INTO `cns_cn_sixes` (`id`, `name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Loss of hearing', 0, NULL, NULL, '2022-03-09 23:01:12', '2022-03-09 23:01:12'),
(2, 'Loss of balance', 0, NULL, NULL, '2022-03-09 23:01:20', '2022-03-09 23:01:20'),
(3, 'Vertigo', 0, NULL, NULL, '2022-03-09 23:01:29', '2022-03-09 23:01:29');

-- --------------------------------------------------------

--
-- Table structure for table `cns_cn_tens`
--

CREATE TABLE `cns_cn_tens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cns_cn_threes`
--

CREATE TABLE `cns_cn_threes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cns_cn_threes`
--

INSERT INTO `cns_cn_threes` (`id`, `name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Double vision-side by side', 0, NULL, NULL, '2022-03-09 22:15:56', '2022-03-09 22:15:56'),
(2, 'Double vision-above other', 0, NULL, NULL, '2022-03-09 22:16:04', '2022-03-09 22:16:04'),
(3, 'Titled Head', 0, NULL, NULL, '2022-03-09 22:16:12', '2022-03-09 22:16:12'),
(4, 'Dropping of eye lid-ptosis', 0, NULL, NULL, '2022-03-09 22:16:20', '2022-03-09 22:16:20'),
(5, 'Dilated pupil - unreactive to direct ligh', 0, NULL, NULL, '2022-03-09 22:16:28', '2022-03-09 22:16:28'),
(6, 'Divergent Strabismus (eye down and out)', 0, NULL, NULL, '2022-03-09 22:16:38', '2022-03-09 22:16:38');

-- --------------------------------------------------------

--
-- Table structure for table `cns_cn_twos`
--

CREATE TABLE `cns_cn_twos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cns_cn_twos`
--

INSERT INTO `cns_cn_twos` (`id`, `name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Visual acuity reduced', 0, NULL, NULL, '2022-03-08 23:30:31', '2022-03-08 23:30:31'),
(2, 'Loss of vision in one eye', 0, NULL, NULL, '2022-03-08 23:30:40', '2022-03-08 23:30:40'),
(3, 'Visual Aura', 0, NULL, NULL, '2022-03-08 23:30:47', '2022-03-08 23:30:47'),
(4, 'Photophobia', 0, NULL, NULL, '2022-03-08 23:30:56', '2022-03-08 23:30:56'),
(5, 'Hemianobia', 0, NULL, NULL, '2022-03-08 23:31:03', '2022-03-08 23:31:03'),
(6, 'Flashing of light', 0, NULL, NULL, '2022-03-08 23:31:11', '2022-03-08 23:31:11'),
(7, 'Zig zag lines', 0, NULL, NULL, '2022-03-08 23:31:20', '2022-03-08 23:31:20'),
(8, 'DIstortion of vision', 0, NULL, NULL, '2022-03-08 23:31:30', '2022-03-08 23:31:30');

-- --------------------------------------------------------

--
-- Table structure for table `cns_drooping_corners`
--

CREATE TABLE `cns_drooping_corners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `droopingcorner_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cns_ear_palates`
--

CREATE TABLE `cns_ear_palates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `earpalate_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cns_finger_nose_tests`
--

CREATE TABLE `cns_finger_nose_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `FingerNoseTest_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cns_finger_nose_tests`
--

INSERT INTO `cns_finger_nose_tests` (`id`, `FingerNoseTest_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Normal', 0, NULL, NULL, '2022-03-14 03:02:34', '2022-03-14 03:02:34'),
(2, 'Intension tremor', 0, NULL, NULL, '2022-03-14 03:02:43', '2022-03-14 03:02:43'),
(3, 'Past Pointing', 0, NULL, NULL, '2022-03-14 03:02:54', '2022-03-14 03:02:54');

-- --------------------------------------------------------

--
-- Table structure for table `cns_gas_reflexes`
--

CREATE TABLE `cns_gas_reflexes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gasreflex_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cns_hallpikes`
--

CREATE TABLE `cns_hallpikes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hallpike_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cns_hallpikes`
--

INSERT INTO `cns_hallpikes` (`id`, `hallpike_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Negative', 1, 'single', 0, NULL, NULL, '2022-03-10 01:05:50', '2022-03-10 01:05:50'),
(2, 'Positive Transient', 1, 'multiple', 0, NULL, NULL, '2022-03-10 01:06:01', '2022-03-10 01:06:01'),
(3, 'Positive Persistent', 1, 'single', 0, NULL, NULL, '2022-03-10 01:06:11', '2022-03-10 01:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `cns_jaw_jerks`
--

CREATE TABLE `cns_jaw_jerks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jawjerk_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cns_jaw_jerks`
--

INSERT INTO `cns_jaw_jerks` (`id`, `jawjerk_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Normal', 1, 'single', 0, NULL, NULL, '2022-03-08 03:56:39', '2022-03-08 03:56:39'),
(2, 'Exacerbated (Pseudobulber Palsy)', 1, 'multiple', 0, NULL, NULL, '2022-03-08 03:56:52', '2022-03-08 03:56:52'),
(3, 'Tardive orofacial dyskinesias', 1, 'single', 0, NULL, NULL, '2022-03-08 03:57:04', '2022-03-08 03:57:04');

-- --------------------------------------------------------

--
-- Table structure for table `cns_jerk_c1_c8_s`
--

CREATE TABLE `cns_jerk_c1_c8_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `JerkC1C8_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cns_jerk_c1_c8_s`
--

INSERT INTO `cns_jerk_c1_c8_s` (`id`, `JerkC1C8_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '0', 1, NULL, NULL, '2022-03-14 03:00:19', '2022-03-14 03:00:36'),
(2, '++', 1, NULL, NULL, '2022-03-14 03:00:25', '2022-03-14 03:00:39'),
(3, '+++', 1, NULL, NULL, '2022-03-14 03:00:30', '2022-03-14 03:00:43'),
(4, '++++', 0, NULL, NULL, '2022-03-14 03:00:54', '2022-03-14 03:00:54'),
(5, '+++', 0, NULL, NULL, '2022-03-14 03:00:59', '2022-03-14 03:00:59'),
(6, '++', 0, NULL, NULL, '2022-03-14 03:01:03', '2022-03-14 03:01:03'),
(7, '+', 0, NULL, NULL, '2022-03-14 03:01:08', '2022-03-14 03:01:08'),
(8, '0', 0, NULL, NULL, '2022-03-14 03:01:11', '2022-03-14 03:01:11');

-- --------------------------------------------------------

--
-- Table structure for table `cns_left_values`
--

CREATE TABLE `cns_left_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `LeftValue_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cns_left_values`
--

INSERT INTO `cns_left_values` (`id`, `LeftValue_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '5/5', 0, NULL, NULL, '2022-03-12 22:39:54', '2022-03-14 03:47:35'),
(2, '4+/5', 0, NULL, NULL, '2022-03-14 03:47:44', '2022-03-14 03:47:44'),
(3, '4/5', 0, NULL, NULL, '2022-03-14 03:47:50', '2022-03-14 03:47:50'),
(4, '4-/5', 0, NULL, NULL, '2022-03-14 03:47:57', '2022-03-14 03:47:57'),
(5, '3/5', 0, NULL, NULL, '2022-03-14 03:48:10', '2022-03-14 03:48:10'),
(6, '2/5', 0, NULL, NULL, '2022-03-14 03:48:16', '2022-03-14 03:48:16'),
(7, '1/5', 0, NULL, NULL, '2022-03-14 03:48:23', '2022-03-14 03:48:23');

-- --------------------------------------------------------

--
-- Table structure for table `cns_looking_ups`
--

CREATE TABLE `cns_looking_ups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lookingup_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cns_looking_ups`
--

INSERT INTO `cns_looking_ups` (`id`, `lookingup_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'All the muscles on same side loss- LMNL', 1, 'single', 0, NULL, NULL, '2022-03-08 04:02:53', '2022-03-08 04:02:53'),
(2, 'Forehead loss of wrinkle- UMNL', 1, 'multiple', 0, NULL, NULL, '2022-03-08 04:03:04', '2022-03-08 04:03:04');

-- --------------------------------------------------------

--
-- Table structure for table `cns_neck_movements`
--

CREATE TABLE `cns_neck_movements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `neckmovement_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cns_neck_movements`
--

INSERT INTO `cns_neck_movements` (`id`, `neckmovement_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Weaker Left', 1, 'single', 0, NULL, NULL, '2022-03-08 04:21:33', '2022-03-08 04:21:33'),
(2, 'Weaker Right', 1, 'multiple', 0, NULL, NULL, '2022-03-08 04:21:46', '2022-03-08 04:21:46'),
(3, 'Normal', 1, 'single', 0, NULL, NULL, '2022-03-08 04:21:58', '2022-03-08 04:21:58');

-- --------------------------------------------------------

--
-- Table structure for table `cns_picture_upper_limb_dermatomes`
--

CREATE TABLE `cns_picture_upper_limb_dermatomes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `PULimbDermatomes_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cns_picture_upper_limb_dermatomes`
--

INSERT INTO `cns_picture_upper_limb_dermatomes` (`id`, `PULimbDermatomes_name`, `image`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Normal', '26508chest-anatomy-artwork-D65NNP.jpg', 0, '2022-03-14 23:25:49', '2022-03-14 23:25:49'),
(2, 'Abnormal', '65554f0251029-800px-wm.jpg', 0, '2022-03-14 23:26:01', '2022-03-14 23:26:01');

-- --------------------------------------------------------

--
-- Table structure for table `cns_pinnes_tests`
--

CREATE TABLE `cns_pinnes_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pinnestest_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cns_powers`
--

CREATE TABLE `cns_powers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Power_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cns_powers`
--

INSERT INTO `cns_powers` (`id`, `Power_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '0- Completely pralaysis (no movement)', 0, NULL, NULL, '2022-03-14 02:58:46', '2022-03-14 02:58:46'),
(2, '1- Fliker of contraction possible', 0, NULL, NULL, '2022-03-14 02:58:55', '2022-03-14 02:58:55'),
(3, '2- Movement is possible when gravity is excluded', 0, NULL, NULL, '2022-03-14 02:59:04', '2022-03-14 02:59:04'),
(4, '3- Movement is possible against gravity but not if any further resistance added', 0, NULL, NULL, '2022-03-14 02:59:16', '2022-03-14 02:59:16'),
(5, '4- Minus: Slight movement against resistance', 0, NULL, NULL, '2022-03-14 02:59:25', '2022-03-14 02:59:25'),
(6, '5- Normal Power', 0, NULL, NULL, '2022-03-14 02:59:40', '2022-03-14 02:59:40');

-- --------------------------------------------------------

--
-- Table structure for table `cns_right_values`
--

CREATE TABLE `cns_right_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `RightValue_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cns_right_values`
--

INSERT INTO `cns_right_values` (`id`, `RightValue_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '5/5', 0, NULL, NULL, '2022-03-14 03:49:17', '2022-03-14 03:49:17'),
(2, '4/5', 0, NULL, NULL, '2022-03-14 03:49:22', '2022-03-14 03:49:22'),
(3, '4+/5', 0, NULL, NULL, '2022-03-14 03:49:30', '2022-03-14 03:49:30'),
(4, '4-/5', 0, NULL, NULL, '2022-03-14 03:49:36', '2022-03-14 03:49:36'),
(5, '3/5', 0, NULL, NULL, '2022-03-14 03:49:41', '2022-03-14 03:49:41'),
(6, '2/5', 0, NULL, NULL, '2022-03-14 03:49:46', '2022-03-14 03:49:46'),
(7, '1/5', 0, NULL, NULL, '2022-03-14 03:49:52', '2022-03-14 03:49:52');

-- --------------------------------------------------------

--
-- Table structure for table `cns_sensations`
--

CREATE TABLE `cns_sensations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sensation_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cns_sensories`
--

CREATE TABLE `cns_sensories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sensory_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cns_shrug_shoulders`
--

CREATE TABLE `cns_shrug_shoulders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shrugshoulder_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cns_tasciculations`
--

CREATE TABLE `cns_tasciculations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tasciculation_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cns_the_radial_nerves`
--

CREATE TABLE `cns_the_radial_nerves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `TheRadialNerve_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cns_tongues`
--

CREATE TABLE `cns_tongues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tongue_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cns_upper_limbs`
--

CREATE TABLE `cns_upper_limbs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `UpperLimb_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cns_uvulas`
--

CREATE TABLE `cns_uvulas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uvula_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cns_whisper_tests`
--

CREATE TABLE `cns_whisper_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `whispertest_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doc_specialists`
--

CREATE TABLE `doc_specialists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `specialists_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doc_time_limits`
--

CREATE TABLE `doc_time_limits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_limits_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doc_time_slots`
--

CREATE TABLE `doc_time_slots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `startTime` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endTime` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ent_examinations`
--

CREATE TABLE `ent_examinations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhe_affects`
--

CREATE TABLE `mhe_affects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `affect_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhe_appearances`
--

CREATE TABLE `mhe_appearances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `appearance_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhe_appropritenesses`
--

CREATE TABLE `mhe_appropritenesses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `appropriteness_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhe_attitude_towards_examinations`
--

CREATE TABLE `mhe_attitude_towards_examinations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attitude_towards_examination_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhe_attitute_towards`
--

CREATE TABLE `mhe_attitute_towards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attitute_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhe_behaviours`
--

CREATE TABLE `mhe_behaviours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `behaviour_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhe_moods`
--

CREATE TABLE `mhe_moods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mood_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhe_perceptuals`
--

CREATE TABLE `mhe_perceptuals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `perceptual_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhe_speeches`
--

CREATE TABLE `mhe_speeches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `speech_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_abdomens`
--

CREATE TABLE `mhp_abdomens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `abdomen_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_advice_suggestions`
--

CREATE TABLE `mhp_advice_suggestions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `advice_suggestions_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_allergies`
--

CREATE TABLE `mhp_allergies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_all_body_part_front_backs`
--

CREATE TABLE `mhp_all_body_part_front_backs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `AllBodyPartFrontBack_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_anterior_views`
--

CREATE TABLE `mhp_anterior_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `AnteriorView_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_anterior_view_knees`
--

CREATE TABLE `mhp_anterior_view_knees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_apex_beats`
--

CREATE TABLE `mhp_apex_beats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `apex_beat_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_appointments`
--

CREATE TABLE `mhp_appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctors_id` int(11) DEFAULT NULL,
  `patients_id` int(11) DEFAULT NULL,
  `appointment_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appointment_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appointment_message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appointment_date_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appointment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appointment_confirmation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_appointment_lengths`
--

CREATE TABLE `mhp_appointment_lengths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `appointment_lengths_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_appointment_schedulers`
--

CREATE TABLE `mhp_appointment_schedulers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctors_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StartTime` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EndTime` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mediaType_online` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_appointment_schedulers`
--

INSERT INTO `mhp_appointment_schedulers` (`id`, `doctors_id`, `patient_id`, `patient_name`, `patient_mobile`, `notes`, `status_color`, `status_name`, `StartTime`, `EndTime`, `Subject`, `mediaType_online`, `media`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 'Rakib Hossain null Rakib Hossain', NULL, NULL, '#8961ed', NULL, '2022-04-19T18:30:00.000Z', '2022-04-19T18:45:00.000Z', NULL, NULL, NULL, 0, NULL, NULL, '2022-04-19 23:12:23', '2022-04-19 23:12:23'),
(2, '1', '1', 'Rakib Hossain null Rakib Hossain', NULL, NULL, '#8961ed', NULL, '2022-04-22T18:15:00.000Z', '2022-04-22T18:30:00.000Z', NULL, NULL, NULL, 0, NULL, NULL, '2022-04-20 02:14:56', '2022-04-20 02:14:56');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_appointment_types`
--

CREATE TABLE `mhp_appointment_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `appointment_types_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_areolars`
--

CREATE TABLE `mhp_areolars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Areolar_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_arrangements`
--

CREATE TABLE `mhp_arrangements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Arrangements_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_at90_flextion_palpations`
--

CREATE TABLE `mhp_at90_flextion_palpations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_at_full_flextion_palpations`
--

CREATE TABLE `mhp_at_full_flextion_palpations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_auto_fills`
--

CREATE TABLE `mhp_auto_fills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `autoFill_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `autoFill_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `autoFill_history` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_auto_fills`
--

INSERT INTO `mhp_auto_fills` (`id`, `autoFill_name`, `autoFill_text`, `autoFill_history`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'AutoFill test', 'Lorem Ipsum doloor sit', 'History Text Lorem Ipsum doloor sit', 0, '2022-04-11 03:01:40', '2022-04-11 03:01:40'),
(2, 'AutoFill test2', 'Test1', 'History Text Lorem Ipsum doloor sit', 0, '2022-04-11 03:01:52', '2022-04-11 03:01:52');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_banks`
--

CREATE TABLE `mhp_banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_bartholin_glandes`
--

CREATE TABLE `mhp_bartholin_glandes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_batch_nos`
--

CREATE TABLE `mhp_batch_nos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_billings`
--

CREATE TABLE `mhp_billings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `procedure_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_details_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_details_sub_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_billing_providers`
--

CREATE TABLE `mhp_billing_providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_birth_sexes`
--

CREATE TABLE `mhp_birth_sexes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `birth_sex_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_birth_sexes`
--

INSERT INTO `mhp_birth_sexes` (`id`, `birth_sex_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Male', 0, NULL, NULL, '2022-04-19 01:26:31', '2022-04-19 01:26:31');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_branches`
--

CREATE TABLE `mhp_branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_breast_lumps`
--

CREATE TABLE `mhp_breast_lumps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_breast_nipple_discharges`
--

CREATE TABLE `mhp_breast_nipple_discharges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_breast_pains`
--

CREATE TABLE `mhp_breast_pains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_bruits`
--

CREATE TABLE `mhp_bruits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bruit_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_cardiovasculars`
--

CREATE TABLE `mhp_cardiovasculars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brachial_Right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brachial_left` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dorsalis_pedis_Right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dorsalis_pedis_left` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `femoral_Right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `femoral_left` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_ajr` tinyint(1) NOT NULL DEFAULT 0,
  `is_calf_tenderness` tinyint(1) NOT NULL DEFAULT 0,
  `is_pacemaker_box` tinyint(1) NOT NULL DEFAULT 0,
  `is_radio_factory_delay` tinyint(1) NOT NULL DEFAULT 0,
  `is_trendelenburg_test` tinyint(1) NOT NULL DEFAULT 0,
  `is_varicose_veins` tinyint(1) NOT NULL DEFAULT 0,
  `jvp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popliteal_Right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popliteal_left` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `posterior_tibialis_Right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `posterior_tibialis_left` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `radial_Right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `radial_left` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carotid_bruit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apex_beat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intercostal_space` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heart_sound` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `murmur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `volume` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `radiations` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_cardiovascular_histories`
--

CREATE TABLE `mhp_cardiovascular_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cardiovascular_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `history_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_cardiovascular_others`
--

CREATE TABLE `mhp_cardiovascular_others` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cardiovascular_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_cards`
--

CREATE TABLE `mhp_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `card_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_carotids`
--

CREATE TABLE `mhp_carotids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `carotid_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_caruncles`
--

CREATE TABLE `mhp_caruncles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Caruncle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_cervixes`
--

CREATE TABLE `mhp_cervixes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_cities`
--

CREATE TABLE `mhp_cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `city_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_cities`
--

INSERT INTO `mhp_cities` (`id`, `country_id`, `city_name`, `city_postal_code`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dhaka', NULL, 0, NULL, NULL, '2022-04-19 01:26:00', '2022-04-19 01:26:00');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_clinical_indications`
--

CREATE TABLE `mhp_clinical_indications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `clinical_indications_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_cns_cn1s`
--

CREATE TABLE `mhp_cns_cn1s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cns_part1_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cn1_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_cns_cn2s`
--

CREATE TABLE `mhp_cns_cn2s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cns_part1_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cn2_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_cns_cn3s`
--

CREATE TABLE `mhp_cns_cn3s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cns_part1_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cn3_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_cns_cn4s`
--

CREATE TABLE `mhp_cns_cn4s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cns_part1_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cn4_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_cns_cn5s`
--

CREATE TABLE `mhp_cns_cn5s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cns_part1_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cn5_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_cns_cn6s`
--

CREATE TABLE `mhp_cns_cn6s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cns_part1_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cn6_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_cns_cn7s`
--

CREATE TABLE `mhp_cns_cn7s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cns_part1_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cn7_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_cns_cn8s`
--

CREATE TABLE `mhp_cns_cn8s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cns_part1_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cn8_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_cns_part1s`
--

CREATE TABLE `mhp_cns_part1s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `olfactory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visualAcuity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visualAcuityDetail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visualField` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `papillary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pupil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `light` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eyeMovement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sensory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `force_to_shut_open_mouth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jaw` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drooping_corner_of_mouth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lookingUp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `on_shutting_eye` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shrug_the_shoulder_trapezius` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `neckMovement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whisper_test` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wever_test` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rinner_test` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hallpike_manoeuvre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uvula` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `posterior_third_of_tongue_sensation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tongue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diviation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_cns_part2s`
--

CREATE TABLE `mhp_cns_part2s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biceps_jesk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `triceps_jesk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brachioradialis_jesk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finger` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finger_nose_test` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dysdiadochokinesis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temparature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vibration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proprioception` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Pin_Prick_Testing` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Light_Touch_Testing` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Picture_upper_limb_dermatomes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Picture_upper_limb_dermatomes_details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `The_Radial_Nerve` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `The_Ulnar_Nerve` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `The_Median_Nerve` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shoulder_left1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shoulder_left2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `elbow_left1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `elbow_left2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wrist_left1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wrist_left2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fingerFlexion_left` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fingerExtension_left` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fingerAbduction_left` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fingerAdduction_left` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shoulder_right1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shoulder_right2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `elbow_right1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `elbow_right2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wrist_right1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wrist_right2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fingerFlexion_right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fingerExtension_right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fingerAbduction_right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fingerAdduction_right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shoulder_reflexes1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shoulder_reflexes2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `elbow_reflexes1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `elbow_reflexes2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wrist_reflexes1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wrist_reflexes2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fingerFlexion_reflexes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fingerExtension_reflexes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fingerAbduction_reflexes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fingerAdduction_reflexes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_cns_upper_limbs`
--

CREATE TABLE `mhp_cns_upper_limbs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cns_part2_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upperlimb_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_cns_visual_fields`
--

CREATE TABLE `mhp_cns_visual_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cns_part1_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visualField_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_colors`
--

CREATE TABLE `mhp_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Color_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_color_visions`
--

CREATE TABLE `mhp_color_visions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ColorVision_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_common_histories`
--

CREATE TABLE `mhp_common_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `history_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `examination_id` int(11) DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_contact_vias`
--

CREATE TABLE `mhp_contact_vias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_via_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_continuouses`
--

CREATE TABLE `mhp_continuouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Continuous_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_coughs`
--

CREATE TABLE `mhp_coughs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cough_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_countries`
--

CREATE TABLE `mhp_countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_countries`
--

INSERT INTO `mhp_countries` (`id`, `country_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Bangladesh', 0, NULL, NULL, '2022-04-19 01:25:53', '2022-04-19 01:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_cover_tests`
--

CREATE TABLE `mhp_cover_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `CoverTest_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_cripatation_boths`
--

CREATE TABLE `mhp_cripatation_boths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `CripatationBoth_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_cripatation_lefts`
--

CREATE TABLE `mhp_cripatation_lefts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `CripatationLeft_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_cripatation_rights`
--

CREATE TABLE `mhp_cripatation_rights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `CripatationRight_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_current_smoking_histories`
--

CREATE TABLE `mhp_current_smoking_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `current_smoking_histories_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_custom_medicines`
--

CREATE TABLE `mhp_custom_medicines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custom_medicine_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `strength` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicine_category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `repeats` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restriction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_custom_restrictions`
--

CREATE TABLE `mhp_custom_restrictions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restriction_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_c_d_discs`
--

CREATE TABLE `mhp_c_d_discs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `CDDisc_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_c_s_t_s`
--

CREATE TABLE `mhp_c_s_t_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_daily_messages`
--

CREATE TABLE `mhp_daily_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `priority` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_current_patient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_to_patient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_deafnesses`
--

CREATE TABLE `mhp_deafnesses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Deafness_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_dehydrations`
--

CREATE TABLE `mhp_dehydrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dehydration_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_diagnoses`
--

CREATE TABLE `mhp_diagnoses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `diagnosis_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_diagnosis_actions`
--

CREATE TABLE `mhp_diagnosis_actions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `diagnosis_action_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_diagnosis_procedures`
--

CREATE TABLE `mhp_diagnosis_procedures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `DiagnosisProcedure_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DiagnosisProcedure_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DiagnosisProcedure_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_diagnosis_procedures`
--

INSERT INTO `mhp_diagnosis_procedures` (`id`, `DiagnosisProcedure_type`, `DiagnosisProcedure_code`, `DiagnosisProcedure_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Diagnosis', 'diagnosis 101', 'Diagnosis1', 0, '2022-04-11 02:59:57', '2022-04-18 02:06:40'),
(2, 'Procedure', 'Procedure 101', 'Procedure1', 0, '2022-04-11 03:00:10', '2022-04-11 03:00:10'),
(3, 'ResonForVisit', 'Resaon101', 'Doctor checkup', 0, '2022-04-11 03:00:22', '2022-04-11 03:00:22');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_diagnosis_procedure_actions`
--

CREATE TABLE `mhp_diagnosis_procedure_actions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `DiagnosisProcedureActions_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DiagnosisProcedureActions_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_diagnosis_procedure_actions`
--

INSERT INTO `mhp_diagnosis_procedure_actions` (`id`, `DiagnosisProcedureActions_type`, `DiagnosisProcedureActions_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Diagnosis', 'Diagnosis Action', 0, '2022-04-11 03:01:07', '2022-04-11 03:01:07'),
(2, 'Procedure', 'Procedure Action1', 0, '2022-04-11 03:01:12', '2022-04-11 03:01:12'),
(3, 'ResonForVisit', 'Emergency reason', 0, '2022-04-11 03:01:17', '2022-04-11 03:01:17');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_diagnosis_procedure_fors`
--

CREATE TABLE `mhp_diagnosis_procedure_fors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `DiagnosisProcedureFor_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DiagnosisProcedureFor_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_diagnosis_procedure_fors`
--

INSERT INTO `mhp_diagnosis_procedure_fors` (`id`, `DiagnosisProcedureFor_type`, `DiagnosisProcedureFor_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Diagnosis', 'Diagnosis For', 0, '2022-04-11 03:00:43', '2022-04-11 03:00:43'),
(2, 'Procedure', 'ProcedureFor', 0, '2022-04-11 03:00:51', '2022-04-11 03:00:51'),
(3, 'ResonForVisit', 'Reson for Visit', 0, '2022-04-11 03:00:58', '2022-04-11 03:00:58');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_diarrhoeas`
--

CREATE TABLE `mhp_diarrhoeas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Diarrhoea_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_digitals`
--

CREATE TABLE `mhp_digitals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `digital_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_dilates`
--

CREATE TABLE `mhp_dilates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Dilate_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_distal_interphalangeal_joints`
--

CREATE TABLE `mhp_distal_interphalangeal_joints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `DistalInterphalangealJoint_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_doctors`
--

CREATE TABLE `mhp_doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dr_identity_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_family_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_given_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_preferred_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_address_line_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_address_line_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_bmdc_reg_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_email` int(11) DEFAULT NULL,
  `dr_is_referred` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_birth_sex_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_city_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_home_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_work_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_mobile_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_contact_via_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_images` int(11) NOT NULL DEFAULT 0,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_doctors_academics`
--

CREATE TABLE `mhp_doctors_academics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctors_master_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `degree_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passing_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scan_copy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scan_copy_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_doctors_certificates`
--

CREATE TABLE `mhp_doctors_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctors_master_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scan_copy_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scan_copy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_of_course` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_doctors_certificates`
--

INSERT INTO `mhp_doctors_certificates` (`id`, `doctors_master_id`, `certificate_title`, `certificate_name`, `provider_id`, `country_id`, `city_id`, `scan_copy_title`, `scan_copy`, `details_of_course`, `created_at`, `updated_at`) VALUES
(1, '1', 'Mre Screen', 'Arthodology', '3', '1', '1', 'Arthodology', '', 'This is a mre course', '2022-04-19 23:39:49', '2022-04-19 23:39:49'),
(2, '1', 'check1', 'asdasd', '2', '1', '1', 'asdasd', '67640istockphoto-175264754-612x612.jpg', 'asdasdasdas', '2022-04-20 22:08:29', '2022-04-20 22:43:11');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_doctors_departments`
--

CREATE TABLE `mhp_doctors_departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `departments_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_doctors_license_trainings`
--

CREATE TABLE `mhp_doctors_license_trainings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctors_master_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `training_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issuing_organization` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issue_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credential_identity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credential_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificates_copy_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificates_copy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_doctors_license_trainings`
--

INSERT INTO `mhp_doctors_license_trainings` (`id`, `doctors_master_id`, `training_name`, `issuing_organization`, `issue_date`, `expire_date`, `credential_identity`, `credential_url`, `certificates_copy_title`, `certificates_copy`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '1', 'Scheduler', 'Scheduler', '2022-04-20', '2022-04-20', '5424532', 'dasda', 'sdasdas', '21045images.jpg', 0, NULL, NULL, '2022-04-19 23:39:49', '2022-04-20 22:52:07'),
(2, '1', 'test1', 'adfasdasd', '2022-04-21', '2022-04-21', '52542', 'c cdxdssd', 'fsdfsdf', '', 0, NULL, NULL, '2022-04-20 22:18:05', '2022-04-20 22:18:05');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_doctors_masters`
--

CREATE TABLE `mhp_doctors_masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dr_identity_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialists_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_family_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_given_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_preferred_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_about` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_experience_years` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_address_line_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_address_line_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_bmdc_reg_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_is_referred` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_birth_sex_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_city_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_home_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_work_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_mobile_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_contact_via_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_doctors_masters`
--

INSERT INTO `mhp_doctors_masters` (`id`, `dr_identity_no`, `title`, `department_id`, `specialists_id`, `department_name`, `dr_family_name`, `dr_given_name`, `dr_middle_name`, `dr_last_name`, `dr_preferred_name`, `dr_about`, `work_experience_years`, `dr_address_line_1`, `dr_address_line_2`, `dr_bmdc_reg_no`, `dr_email`, `dr_is_referred`, `dr_dob`, `dr_birth_sex_id`, `dr_city_id`, `dr_postal_code`, `dr_home_phone`, `dr_work_phone`, `dr_mobile_phone`, `dr_contact_via_id`, `dr_provider_id`, `dr_images`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '111111111111111111', 'null', 'null', 'null', NULL, 'Minar Sandy', 'Minar Sandy', 'Minar Sandy', 'null', 'Minar Sandy', 'Contracted \"Dr\" or \"Dr.\", it is used as a designation for a person who has obtained a doctorate (commonly a PhD). In many parts of the world it is also used by medical practitioners, regardless of whether they hold a doctoral-level degree.', '10', 'Dhaka', 'Dhaka', '64646asdas', 'minar@gmail.com', NULL, '2022-04-13', '1', '1', '455', '98689+8', '5786786786', '6786786786', 'null', '2', '22206istockphoto-1327024466-170667a.jpg', '0', NULL, NULL, '2022-04-13 00:55:26', '2022-04-20 23:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_doctors_work_experiences`
--

CREATE TABLE `mhp_doctors_work_experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctors_master_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_experience_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employment_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_present` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificates_copy_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificates_copy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_doctors_work_experiences`
--

INSERT INTO `mhp_doctors_work_experiences` (`id`, `doctors_master_id`, `work_experience_title`, `employment_title`, `company`, `location`, `start_date`, `end_date`, `is_present`, `certificates_copy_title`, `certificates_copy`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '1', 'MBBS Doctor', 'Permanent', 'Salman Hospital', 'UK', '2022-04-20', 'null', 'Yes', 'sdasdas', '89594istockphoto-1312641893-170667a.jpg', 0, NULL, NULL, '2022-04-19 23:39:50', '2022-04-20 22:50:42'),
(2, '1', 'dsas', 'dsfsdf', 'sdfdsf', 'sdfsdf', '2022-04-21', '2022-04-23', 'No', 'sdfsdbbncvncn', '', 0, NULL, NULL, '2022-04-20 22:22:28', '2022-04-20 22:22:28'),
(3, '1', 'dsas', 'dsfsdf', 'sdfdsf', 'sdfsdf', '2022-04-21', '2022-04-23', 'No', 'sdfsdbbncvncn', '', 0, NULL, NULL, '2022-04-20 22:22:30', '2022-04-20 22:22:30');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_doctor_chambers`
--

CREATE TABLE `mhp_doctor_chambers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chamber_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `all_month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1=true,0=false',
  `day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slot_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slot_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_doctor_chambers`
--

INSERT INTO `mhp_doctor_chambers` (`id`, `doctor_id`, `chamber_id`, `year`, `month`, `all_month`, `day`, `slot_from`, `slot_to`, `type`, `delete_status`, `created_at`, `updated_at`) VALUES
(10, '1', '2', '2022-04-16T09:28:05.269Z', 'february', '1', 'sunday', '2020-01-01T01:00:00.000Z', '2020-01-01T01:00:00.000Z', 'morning', 0, '2022-04-16 03:28:49', '2022-04-16 03:28:49'),
(11, '1', '2', '2022-04-16T09:28:05.269Z', 'april', '1', 'tuesday', '1899-12-31T12:36:40.000Z', '1899-12-31T09:06:40.000Z', 'evening', 0, '2022-04-16 03:28:50', '2022-04-16 03:28:50'),
(18, '1', '3', '2022-04-17T07:05:11.513Z', 'april', '1', 'saturday', '1899-12-31T14:06:40.000Z', '1899-12-31T15:07:40.000Z', 'night', 0, '2022-04-17 01:06:08', '2022-04-17 01:06:08'),
(19, '1', '3', '2022-04-17T07:14:40.765Z', 'january', '1', 'saturday', '1899-12-31T01:06:40.000Z', '1899-12-31T02:06:40.000Z', 'morning', 0, '2022-04-17 01:15:57', '2022-04-17 01:15:57'),
(20, '1', '2', '2022-04-17T07:14:40.765Z', 'january', '1', 'sunday', '1899-12-31T11:07:40.000Z', '1899-12-31T11:07:40.000Z', 'evening', 0, '2022-04-17 01:15:57', '2022-04-17 01:15:57'),
(21, '1', '2', '2022-04-17T07:14:40.765Z', 'january', '1', 'sunday', '2022-04-17T11:07:40.000Z', '2022-04-17T11:07:40.000Z', 'evening', 0, '2022-04-17 01:15:57', '2022-04-17 01:15:57');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_doctor_fees`
--

CREATE TABLE `mhp_doctor_fees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctorfee_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee_name` int(11) DEFAULT NULL,
  `item_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_doctor_fee_names`
--

CREATE TABLE `mhp_doctor_fee_names` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_dorsum_of_hands`
--

CREATE TABLE `mhp_dorsum_of_hands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_dose_names`
--

CREATE TABLE `mhp_dose_names` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dose_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_double_visions`
--

CREATE TABLE `mhp_double_visions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `DoubleVision_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_drug_generic_names`
--

CREATE TABLE `mhp_drug_generic_names` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_drug_names`
--

CREATE TABLE `mhp_drug_names` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `src_primary_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `strength` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `macrohealth_sg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mims_sg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mims_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drug_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drug_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rpts` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restriction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bpp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generic_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_types` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_favourite` int(11) NOT NULL DEFAULT 0,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_drug_units`
--

CREATE TABLE `mhp_drug_units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `drug_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_dry_retinoscopies`
--

CREATE TABLE `mhp_dry_retinoscopies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `DryRetinoscopy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_durations`
--

CREATE TABLE `mhp_durations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Duration_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_dysphagias`
--

CREATE TABLE `mhp_dysphagias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Dysphagia_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_dyspneas`
--

CREATE TABLE `mhp_dyspneas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dyspnea_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_dyspnea_classes`
--

CREATE TABLE `mhp_dyspnea_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dyspneaClass_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_ears`
--

CREATE TABLE `mhp_ears` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Ear_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_ear_canals`
--

CREATE TABLE `mhp_ear_canals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `canal_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canal_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_ear_discharges`
--

CREATE TABLE `mhp_ear_discharges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `EarDischarge_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_ear_lesions`
--

CREATE TABLE `mhp_ear_lesions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `earLesion_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_employees`
--

CREATE TABLE `mhp_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `identity_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialists_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `given_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferred_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bmdc_reg_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_referred` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_sex_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_via_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_employee_academics`
--

CREATE TABLE `mhp_employee_academics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `degree_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passing_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scan_copy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scan_copy_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_employee_certificates`
--

CREATE TABLE `mhp_employee_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scan_copy_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scan_copy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_of_course` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_employee_licences`
--

CREATE TABLE `mhp_employee_licences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `training_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issuing_organization` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issue_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credential_identity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credential_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificates_copy_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificates_copy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_employee_works_and_experienses`
--

CREATE TABLE `mhp_employee_works_and_experienses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_experience_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employment_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_present` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificates_copy_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificates_copy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_enterior_chambers`
--

CREATE TABLE `mhp_enterior_chambers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `EnteriorChamber_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_entrance_tests`
--

CREATE TABLE `mhp_entrance_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `EntranceTest_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_ent_examinations`
--

CREATE TABLE `mhp_ent_examinations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ear_his_side` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `earDischarge_his_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deafness_his_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tinnitus_his_side` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `face_his_side` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `earLesion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `earLesionPart` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `earlessionleftMMX` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `earlessionRightMMX` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `earCanal_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `earCanal_side` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discharge_side` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_side` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lymph_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wax_side` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `glueEar_side` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `glueEar_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mastoid_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tympanic_side` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tympanic_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `renne_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weber_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `louderDeafer_side` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sensorinural_side` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conduct_side` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `louder_side` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inflamed_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uvula_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tonsil_side` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ulser_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tongue_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tongueLesion_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nose_side` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nose_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nasalSeptal_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mucosa_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `turbinates_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `polip_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `polipAnterior_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clearDischarge_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bleedingAnterior_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bleedingPosterior_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foreign_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_ent_examin_ear_lesions`
--

CREATE TABLE `mhp_ent_examin_ear_lesions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mhp_ent_examin_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ear_lesions_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_ent_examin_ent_others`
--

CREATE TABLE `mhp_ent_examin_ent_others` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mhp_ent_examin_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ent_others_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_ent_others`
--

CREATE TABLE `mhp_ent_others` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `EntOthers_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_epigastrics`
--

CREATE TABLE `mhp_epigastrics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Epigastric_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_ethnicities`
--

CREATE TABLE `mhp_ethnicities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ethnicity_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_examinations`
--

CREATE TABLE `mhp_examinations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `examination_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `examination_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `examination_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_examination_headings`
--

CREATE TABLE `mhp_examination_headings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `examinationHeading_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_exam_history_mappings`
--

CREATE TABLE `mhp_exam_history_mappings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `examination_name_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `history_name_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selection_parameter_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selection_criteria_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `multiple_extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `single_selection` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `multiple_selection` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_exam_hist_extensions`
--

CREATE TABLE `mhp_exam_hist_extensions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `examination_name_id` int(11) DEFAULT NULL,
  `history_name_id` int(11) DEFAULT NULL,
  `extension_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_exam_hist_select_params`
--

CREATE TABLE `mhp_exam_hist_select_params` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `selection_parameter_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selection_parameter_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_exmanination_lists`
--

CREATE TABLE `mhp_exmanination_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exmaninationlist_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_external_observations`
--

CREATE TABLE `mhp_external_observations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ExternalObservation_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_eyemovements`
--

CREATE TABLE `mhp_eyemovements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `eyemovements_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_eye_exami_part1s`
--

CREATE TABLE `mhp_eye_exami_part1s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `distance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `near` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flashes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floaters` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `red` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sore` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itchy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `watery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discharge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headache` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `normal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `murcusGunn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rapd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `neuroOpthal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doubleVision` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flare` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ghosting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `haloes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caruncle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `convergence` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visualAcuityDistance_left` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visualAcuityDistance_right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visualAcuityNear_left` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visualAcuityNear_right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sizeRight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sizeLeft` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shape` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lesion1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lesion2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lesion3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anteriorChamber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swollenEyeLid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_eye_exami_part2s`
--

CREATE TABLE `mhp_eye_exami_part2s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enteranceTest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visualAcuity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coverTest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `convergence` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Pupils` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accomodation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dryRetinoscopy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maddox_wing_fcc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maddox_wing_bPlus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `worth_4_Dot_midline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `worth_4_Dot_side` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penGrip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penGripSide` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colorVision` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stereopsis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suppression` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `neuroOpthal2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dem1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dem2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dem3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perla` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rapd2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_eye_part1_external_observations`
--

CREATE TABLE `mhp_eye_part1_external_observations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eye_exmi_part1_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `externalObservation_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_eye_part1_phoria_ones`
--

CREATE TABLE `mhp_eye_part1_phoria_ones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eye_exmi_part1_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoria_one_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_eye_part1_phoria_twos`
--

CREATE TABLE `mhp_eye_part1_phoria_twos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eye_exmi_part1_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoria_two_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_eye_part1_pursuits`
--

CREATE TABLE `mhp_eye_part1_pursuits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eye_exmi_part1_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pursuits_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_eye_part1_worth4_dots`
--

CREATE TABLE `mhp_eye_part1_worth4_dots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eye_exmi_part1_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `worth4_dots_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_e_o_m_accomodations`
--

CREATE TABLE `mhp_e_o_m_accomodations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `EOMAccomodation_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_e_o_m_convergences`
--

CREATE TABLE `mhp_e_o_m_convergences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `EOMConvergence_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_fingers`
--

CREATE TABLE `mhp_fingers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_flexon_tendons`
--

CREATE TABLE `mhp_flexon_tendons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_flexor_digitorum_profundus_tests`
--

CREATE TABLE `mhp_flexor_digitorum_profundus_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_flexor_digitorum_superficialis_tests`
--

CREATE TABLE `mhp_flexor_digitorum_superficialis_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_flextion0to150_examinations`
--

CREATE TABLE `mhp_flextion0to150_examinations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_flores`
--

CREATE TABLE `mhp_flores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Flore_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_food_names`
--

CREATE TABLE `mhp_food_names` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_frequencies`
--

CREATE TABLE `mhp_frequencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Frequency_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_frequency_names`
--

CREATE TABLE `mhp_frequency_names` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `frequency_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_frontal_lobes`
--

CREATE TABLE `mhp_frontal_lobes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `FrontalLobe_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_fundoscopies`
--

CREATE TABLE `mhp_fundoscopies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fundoscopy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_gait_limpings`
--

CREATE TABLE `mhp_gait_limpings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_generals`
--

CREATE TABLE `mhp_generals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pulse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `respiratoryRate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `o2saturation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sitting_left` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sitting_right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `standing_left` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `standing_right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lying_left` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lying_right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BMI` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waist_measurement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hip_measurement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WHR` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Anaemic` tinyint(1) NOT NULL DEFAULT 0,
  `Jaundiced` tinyint(1) NOT NULL DEFAULT 0,
  `Cyanosis` tinyint(1) NOT NULL DEFAULT 0,
  `Skin` tinyint(1) NOT NULL DEFAULT 0,
  `capillary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dehydration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `radioFD` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nailSign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_general_histories`
--

CREATE TABLE `mhp_general_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `general_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `history_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_genito_urinaries`
--

CREATE TABLE `mhp_genito_urinaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `renalMass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tenderness` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `renalBruit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aboveMargin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noUpperBorder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `translucent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `separation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rectalExamination` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hydrocele` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testicularSwelling` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testicularMass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testicularTenderness` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `retractedTestis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `undescendedTestis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penialWart` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pearly` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inguinal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phimosis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paraphimosis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scrotal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leucocytes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nitrites` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bilirubin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ketones` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urobiliongen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `glucose` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specificGravity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ph` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_genito_urinary_histories`
--

CREATE TABLE `mhp_genito_urinary_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genito_urinary_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `history_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_gestros`
--

CREATE TABLE `mhp_gestros` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hand_finger` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tongue_mouth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gynaecomastia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Parotid_Glands_Enlarged` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Left_superclavicular_node` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `radiation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pattern` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frequency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `score` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vomiting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dysphagia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diarrhoea` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `constipation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `habits` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stoolType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PRBleed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bruit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `murphy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noneTender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noMasses` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tenderness` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `umbillical` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `incisional` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inguinal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `femoral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perRectal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sigmoidoscopy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guaiac` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_gestro_abdomens`
--

CREATE TABLE `mhp_gestro_abdomens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gestro_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abdomen_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_gestro_histories`
--

CREATE TABLE `mhp_gestro_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gestro_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `history_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_ghoostings`
--

CREATE TABLE `mhp_ghoostings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Ghoosting_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_given_bies`
--

CREATE TABLE `mhp_given_bies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_great_doc_auto_fills`
--

CREATE TABLE `mhp_great_doc_auto_fills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `auto_fill_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auto_fill_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auto_fill_history` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_great_doc_diagnoses`
--

CREATE TABLE `mhp_great_doc_diagnoses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `diagnosis_action_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diagnosis_for_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diagnosis_further_details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diagnosis_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diagnosis_provitional_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_great_doc_diagnoses`
--

INSERT INTO `mhp_great_doc_diagnoses` (`id`, `diagnosis_action_name`, `diagnosis_for_name`, `diagnosis_further_details`, `diagnosis_name`, `diagnosis_provitional_status`, `patient_id`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Diagnosis Action', 'Diagnosis For', 'v', 'Diagnosis1', '1', NULL, 0, '2022-04-11 03:05:57', '2022-04-11 03:05:57'),
(2, 'Diagnosis Action', 'Diagnosis For', 'xcvxc', 'Diagnosis1', '1', NULL, 0, '2022-04-11 03:05:58', '2022-04-11 03:05:58');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_great_doc_procedures`
--

CREATE TABLE `mhp_great_doc_procedures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `procedure_action_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `procedure_for_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `procedure_further_details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `procedure_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_great_doc_resons`
--

CREATE TABLE `mhp_great_doc_resons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reson_for_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reson_further_details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reson_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_great_doc_reviews`
--

CREATE TABLE `mhp_great_doc_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `review_name_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_limit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_other` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reminder_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_great_doc_reviews`
--

INSERT INTO `mhp_great_doc_reviews` (`id`, `review_name_id`, `review_limit`, `review_type`, `review_date`, `review_other`, `reminder_status`, `created_at`, `updated_at`) VALUES
(1, 'item.id', '30', 'days', '2022-04-18', 'check', '1', '2022-04-18 03:32:45', '2022-04-18 03:32:45'),
(2, 'item.id', '20', 'weeks', '2022-04-18', 'check another', '1', '2022-04-18 03:36:16', '2022-04-18 03:36:16'),
(3, 'item.id', '30', 'days', '2022-04-18', 'other details added', '1', '2022-04-18 03:41:05', '2022-04-18 03:41:05'),
(4, '2', '7', 'weeks', '2022-04-18', 'nvbnbvnvbn', '1', '2022-04-18 03:49:59', '2022-04-18 03:49:59');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_haloes`
--

CREATE TABLE `mhp_haloes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Haloes_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_hand_and_fingers`
--

CREATE TABLE `mhp_hand_and_fingers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `handandfinger_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_heart_sounds`
--

CREATE TABLE `mhp_heart_sounds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heartSound_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_hernias`
--

CREATE TABLE `mhp_hernias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hernias_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_hernias_femorals`
--

CREATE TABLE `mhp_hernias_femorals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `herniasfemoral_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_hernias_inguinals`
--

CREATE TABLE `mhp_hernias_inguinals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `herniasinguinal_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_histories`
--

CREATE TABLE `mhp_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `history_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `history_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_history_examination_statuses`
--

CREATE TABLE `mhp_history_examination_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `history_exam_status_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_immunisation_routes`
--

CREATE TABLE `mhp_immunisation_routes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_immunisation_sites`
--

CREATE TABLE `mhp_immunisation_sites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_ingerdient_children`
--

CREATE TABLE `mhp_ingerdient_children` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custom_medicine_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ingredient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ingredient_strength` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ingredient_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_ingredients`
--

CREATE TABLE `mhp_ingredients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ingredient_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_inspections`
--

CREATE TABLE `mhp_inspections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Inspection_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_inspection_looks`
--

CREATE TABLE `mhp_inspection_looks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_inspection_look_hip_pelvis`
--

CREATE TABLE `mhp_inspection_look_hip_pelvis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_inspection_male_females`
--

CREATE TABLE `mhp_inspection_male_females` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_intercostal_spaces`
--

CREATE TABLE `mhp_intercostal_spaces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `intercostal_space_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_intermittents`
--

CREATE TABLE `mhp_intermittents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Intermittent_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_invoices`
--

CREATE TABLE `mhp_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issued_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_bill_amount` int(11) DEFAULT NULL,
  `payment_amount` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_l1_l2_hip_flexions`
--

CREATE TABLE `mhp_l1_l2_hip_flexions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_l1_l2_sensations`
--

CREATE TABLE `mhp_l1_l2_sensations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_l3_to_l5_powers`
--

CREATE TABLE `mhp_l3_to_l5_powers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_l3_to_l5_sensations`
--

CREATE TABLE `mhp_l3_to_l5_sensations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_lateral_view_knees`
--

CREATE TABLE `mhp_lateral_view_knees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_left_supraclavicular_nodes`
--

CREATE TABLE `mhp_left_supraclavicular_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `leftsupraclavicularnode_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_lesions`
--

CREATE TABLE `mhp_lesions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Lesion_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_lesion_middles`
--

CREATE TABLE `mhp_lesion_middles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `LesionMiddle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_lesion_rights`
--

CREATE TABLE `mhp_lesion_rights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `LesionRight_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_level_of_spine_of_scapulas`
--

CREATE TABLE `mhp_level_of_spine_of_scapulas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `LevelOfSpineOfScapula_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_lightreflexes`
--

CREATE TABLE `mhp_lightreflexes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lightreflex_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_lumber_lordoses`
--

CREATE TABLE `mhp_lumber_lordoses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `LumberLordosis_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_lying_on_couches`
--

CREATE TABLE `mhp_lying_on_couches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_l_u_q_s`
--

CREATE TABLE `mhp_l_u_q_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `LUQ_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_maddox_wings`
--

CREATE TABLE `mhp_maddox_wings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `MaddoxWing_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_main_body_parts`
--

CREATE TABLE `mhp_main_body_parts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `MainBodyPart_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_margin_condyle_tibials`
--

CREATE TABLE `mhp_margin_condyle_tibials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_mastoids`
--

CREATE TABLE `mhp_mastoids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mastoid_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_media_types`
--

CREATE TABLE `mhp_media_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `media_type_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_media_type_onlines`
--

CREATE TABLE `mhp_media_type_onlines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_medical_histories`
--

CREATE TABLE `mhp_medical_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `medicalhistory_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_medicine_categories`
--

CREATE TABLE `mhp_medicine_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `medicinecategory_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_mental_affects`
--

CREATE TABLE `mhp_mental_affects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mental_health_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `affect_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_mental_appearances`
--

CREATE TABLE `mhp_mental_appearances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mental_health_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appearance_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_mental_attitudetowardsexaminations`
--

CREATE TABLE `mhp_mental_attitudetowardsexaminations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mental_health_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attitudetowardsexamination_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_mental_behaviours`
--

CREATE TABLE `mhp_mental_behaviours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mental_health_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `behaviour_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_mental_healths`
--

CREATE TABLE `mhp_mental_healths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_mental_histories`
--

CREATE TABLE `mhp_mental_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mental_health_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `history_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_mental_moods`
--

CREATE TABLE `mhp_mental_moods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mental_health_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mood_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_mental_perceptual_disturbances`
--

CREATE TABLE `mhp_mental_perceptual_disturbances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mental_health_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perceptual_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_mental_psq9_ques1sts`
--

CREATE TABLE `mhp_mental_psq9_ques1sts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mental_health_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `psq9question_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_value_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_score` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_mental_psq9_ques2nds`
--

CREATE TABLE `mhp_mental_psq9_ques2nds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mental_health_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `psq9question_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_value_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_score` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_mental_speeches`
--

CREATE TABLE `mhp_mental_speeches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mental_health_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `speeche_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_metacarpophalangeal_joints`
--

CREATE TABLE `mhp_metacarpophalangeal_joints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `MetacarpophalangealJoint_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_metacarpophalangeal_joint_palpations`
--

CREATE TABLE `mhp_metacarpophalangeal_joint_palpations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_mid_line_crossings`
--

CREATE TABLE `mhp_mid_line_crossings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `MidLineCrossing_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_miscarriages`
--

CREATE TABLE `mhp_miscarriages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_motors`
--

CREATE TABLE `mhp_motors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `motor_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_movements`
--

CREATE TABLE `mhp_movements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Movement_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_move_hip_pelvis`
--

CREATE TABLE `mhp_move_hip_pelvis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_murmurs`
--

CREATE TABLE `mhp_murmurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `murmur_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_nails`
--

CREATE TABLE `mhp_nails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_nail_signs`
--

CREATE TABLE `mhp_nail_signs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nailSign_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_neurologicals`
--

CREATE TABLE `mhp_neurologicals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intermittent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `continuous` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_neurological_frontal_lobes`
--

CREATE TABLE `mhp_neurological_frontal_lobes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `neurological_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frontal_lobes_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_neurological_histories`
--

CREATE TABLE `mhp_neurological_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `neurological_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `neurological_histories_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_neurological_occipital_lobes`
--

CREATE TABLE `mhp_neurological_occipital_lobes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `neurological_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occipital_lobes_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_neurological_parietal_lobes`
--

CREATE TABLE `mhp_neurological_parietal_lobes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `neurological_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parietal_lobes_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_neurological_speeches`
--

CREATE TABLE `mhp_neurological_speeches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `neurological_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `neurological_speeches_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_neurological_temporal_lobes`
--

CREATE TABLE `mhp_neurological_temporal_lobes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `neurological_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temporal_lobes_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_neuro_opthalmologies`
--

CREATE TABLE `mhp_neuro_opthalmologies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NeuroOpthalmology_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_neuro_opthals`
--

CREATE TABLE `mhp_neuro_opthals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NeuroOpthal_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_non_tender_tendernesses`
--

CREATE TABLE `mhp_non_tender_tendernesses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nontendertenderness_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_noses`
--

CREATE TABLE `mhp_noses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nose_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_no_masses_masses`
--

CREATE TABLE `mhp_no_masses_masses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomassesmass_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_occipital_lobes`
--

CREATE TABLE `mhp_occipital_lobes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `OccipitalLobe_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_occupational_hazards`
--

CREATE TABLE `mhp_occupational_hazards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `occupational_hazards_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_occupations`
--

CREATE TABLE `mhp_occupations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `occupation_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_ol_factories`
--

CREATE TABLE `mhp_ol_factories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `olfactory_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_on_shutting_eyes`
--

CREATE TABLE `mhp_on_shutting_eyes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `onshuttingeye_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_others`
--

CREATE TABLE `mhp_others` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `others_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_others_names`
--

CREATE TABLE `mhp_others_names` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `others_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_painful_arcs`
--

CREATE TABLE `mhp_painful_arcs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_pain_along_anteriors`
--

CREATE TABLE `mhp_pain_along_anteriors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_pain_into_knees`
--

CREATE TABLE `mhp_pain_into_knees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `PainIntoKnee_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_pain_over_posteriors`
--

CREATE TABLE `mhp_pain_over_posteriors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_palpations`
--

CREATE TABLE `mhp_palpations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Palpation_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_papillaryoedemas`
--

CREATE TABLE `mhp_papillaryoedemas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `papillaryoedema_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_parietal_lobes`
--

CREATE TABLE `mhp_parietal_lobes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ParietalLobe_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_past_alcohol_consumptions`
--

CREATE TABLE `mhp_past_alcohol_consumptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alcohol_consumption_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_patients`
--

CREATE TABLE `mhp_patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_hn_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_title_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_nid` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_bcid` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptn_blood_group_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_first_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_middle_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_last_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_preferred_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_contact_via` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_home_phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_work_phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_mobile_phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_head_of_family` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_emergency_contact` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_dob` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_passport` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_birth_sex_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_individual_health_identifier_no` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_religion_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_usual_provider_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_ethnicity_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_parent_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_address1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_address2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_usual_visit_type_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_usual_account` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_deceased_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_next_of_kin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_medical_record_no` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_city_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_state_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_safety_net_no` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_postal_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_health_inc_fund` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_health_inc_no` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_expire_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_medical_no` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_occupation_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_hcc_no` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_general_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_appointment_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_patients`
--

INSERT INTO `mhp_patients` (`id`, `patient_hn_number`, `patient_title_id`, `patient_nid`, `patient_bcid`, `ptn_blood_group_id`, `patient_first_name`, `patient_middle_name`, `patient_last_name`, `patient_preferred_name`, `patient_contact_via`, `patient_home_phone`, `patient_work_phone`, `patient_mobile_phone`, `patient_head_of_family`, `patient_emergency_contact`, `patient_dob`, `patient_passport`, `patient_status`, `patient_email`, `patient_birth_sex_id`, `patient_individual_health_identifier_no`, `patient_religion_id`, `patient_usual_provider_id`, `patient_ethnicity_id`, `patient_parent_id`, `patient_address1`, `patient_address2`, `patient_usual_visit_type_id`, `patient_usual_account`, `patient_deceased_date`, `patient_next_of_kin`, `patient_medical_record_no`, `patient_city_id`, `patient_state_id`, `patient_safety_net_no`, `patient_postal_code`, `patient_health_inc_fund`, `patient_health_inc_no`, `patient_expire_date`, `patient_medical_no`, `patient_occupation_id`, `patient_hcc_no`, `patient_images`, `patient_general_notes`, `patient_appointment_notes`, `media`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '1111', NULL, NULL, NULL, NULL, 'Rakib Hossain', NULL, 'Rakib Hossain', 'Rakib Hossain', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '0', NULL, NULL, '2022-04-15 23:31:59', '2022-04-19 23:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_patients_allergies`
--

CREATE TABLE `mhp_patients_allergies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allergy_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_checkup` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_patients_family_social_history_alcohols`
--

CREATE TABLE `mhp_patients_family_social_history_alcohols` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patients_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_drinker` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `days_per_week` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `standard_drinks_per_day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `past_alc_consumption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_started` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_stopped` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_patients_family_social_history_tobaccos`
--

CREATE TABLE `mhp_patients_family_social_history_tobaccos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patients_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_smoking_history` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_started` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tobacco_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tobacco_year_started` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tobacco_year_stopped` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_fresho_leaf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount_per_day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_cessation_advice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `advice_suggestion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments_tobacco` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_patients_occupation_details`
--

CREATE TABLE `mhp_patients_occupation_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patients_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation_details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_commented` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_ceased` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupational_hazards_exposer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_patients_vital_signs`
--

CREATE TABLE `mhp_patients_vital_signs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_check_up_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `units_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_patterns`
--

CREATE TABLE `mhp_patterns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Pattern_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_payments`
--

CREATE TABLE `mhp_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `digital_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_pelvic_masses`
--

CREATE TABLE `mhp_pelvic_masses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_pembertons`
--

CREATE TABLE `mhp_pembertons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembertons_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_pen_grips`
--

CREATE TABLE `mhp_pen_grips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `PenGrip_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_pen_grip_rights`
--

CREATE TABLE `mhp_pen_grip_rights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `PenGripRight_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_per_rectals`
--

CREATE TABLE `mhp_per_rectals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `perrectal_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_phoria_ones`
--

CREATE TABLE `mhp_phoria_ones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `PhoriaOne_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_phoria_twos`
--

CREATE TABLE `mhp_phoria_twos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `PhoriaTwo_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_posteriors`
--

CREATE TABLE `mhp_posteriors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `posterior_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_posterior_view_knees`
--

CREATE TABLE `mhp_posterior_view_knees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_postures`
--

CREATE TABLE `mhp_postures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Posture_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_posture_thoracos`
--

CREATE TABLE `mhp_posture_thoracos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_procedures`
--

CREATE TABLE `mhp_procedures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `procedure_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_procedure_fees`
--

CREATE TABLE `mhp_procedure_fees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `procedure_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subProcedure_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee_name` int(11) DEFAULT NULL,
  `item_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_proximal_interphalangeal_joints`
--

CREATE TABLE `mhp_proximal_interphalangeal_joints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ProximalInterphalangealJoint_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_proximal_interphalangeal_palpations`
--

CREATE TABLE `mhp_proximal_interphalangeal_palpations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_pupils`
--

CREATE TABLE `mhp_pupils` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pupil_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_pupils_eyes`
--

CREATE TABLE `mhp_pupils_eyes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `PupilsEye_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_pursuits`
--

CREATE TABLE `mhp_pursuits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Pursuits_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_p_h_q9_questionnaires`
--

CREATE TABLE `mhp_p_h_q9_questionnaires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `PHQ9Questionnaire_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_p_h_q9_questionnaire_values`
--

CREATE TABLE `mhp_p_h_q9_questionnaire_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `PHQ9QuestionnaireValue_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PHQ9QuestionnaireValue_value` int(11) DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_p_r_bleeds`
--

CREATE TABLE `mhp_p_r_bleeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `PRBleed_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_p_v_bleedings`
--

CREATE TABLE `mhp_p_v_bleedings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_p_v_discharges`
--

CREATE TABLE `mhp_p_v_discharges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_questionnaires`
--

CREATE TABLE `mhp_questionnaires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `questionnaire_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `questionnaire_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_radiations`
--

CREATE TABLE `mhp_radiations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Radiation_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_radiologies`
--

CREATE TABLE `mhp_radiologies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `center_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `center_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symptom_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clinical_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_test_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_radiologies`
--

INSERT INTO `mhp_radiologies` (`id`, `center_date`, `center_id`, `test_date`, `test_id`, `symptom_name`, `clinical_id`, `test_name`, `additional_test_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(3, '2022-04-16T04:30:54.000Z', NULL, '2022-03-08T18:00:00.000Z', NULL, 'pregnent', NULL, 'edfasfe', 'sf', 0, '2022-04-15 22:31:13', '2022-04-15 22:31:13'),
(4, '2022-04-16T04:31:48.000Z', NULL, NULL, NULL, '', NULL, '1', '2', 0, '2022-04-15 22:31:54', '2022-04-15 22:31:54');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_radiology_centers`
--

CREATE TABLE `mhp_radiology_centers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `radiology_center_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_radiology_test_names`
--

CREATE TABLE `mhp_radiology_test_names` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `radiology_test_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_radio_femoral_delays`
--

CREATE TABLE `mhp_radio_femoral_delays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_reactions`
--

CREATE TABLE `mhp_reactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reaction_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_rediations`
--

CREATE TABLE `mhp_rediations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rediation_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_referral_follow_ups`
--

CREATE TABLE `mhp_referral_follow_ups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_religions`
--

CREATE TABLE `mhp_religions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `religion_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_religions`
--

INSERT INTO `mhp_religions` (`id`, `religion_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Christian', 0, NULL, NULL, '2022-04-19 01:26:23', '2022-04-19 01:26:23');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_renal_masses`
--

CREATE TABLE `mhp_renal_masses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `renalmass_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_renne_tests`
--

CREATE TABLE `mhp_renne_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `RenneTest_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_resisted_movements`
--

CREATE TABLE `mhp_resisted_movements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_respiratories`
--

CREATE TABLE `mhp_respiratories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cough` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dyspneaName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dyspneaClass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symptoms` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicalHistory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abnormalBreathing` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vocal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breathSound` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chestExpansion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `criptationLeft` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `criptationRight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `criptationBoth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `criptationCondition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wheezingLeft` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wheezingRight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wheezingBoth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wheezingCondition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vocalResonance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Pembortons_sign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sleep_Apnoea_Risk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PFR_1st` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FEV1_1st` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FVC_1st` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Predicted_1st_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Predicted_1st_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Predicted_1st_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Percentage_Predicted_1st_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Percentage_Predicted_1st_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Percentage_Predicted_1st_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Percentage_FEV1orFVC_1st` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PFR_2st` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FEV1_2st` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FVC_2st` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Predicted_2st_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Predicted_2st_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Predicted_2st_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Percentage_Predicted_2st_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Percentage_Predicted_2st_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Percentage_Predicted_2st_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Percentage_FEV1orFVC_2st` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Res_Rate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Peak_Flow` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Insipiration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Expiration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Stop_Bang_Questionaria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_respiratory_examination_lists`
--

CREATE TABLE `mhp_respiratory_examination_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `respiratory_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `examination_list_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_respiratory_histories`
--

CREATE TABLE `mhp_respiratory_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `respiratory_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `history_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_respiratory_questionnaires`
--

CREATE TABLE `mhp_respiratory_questionnaires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `respiratory_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `questionnaire_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_review_names`
--

CREATE TABLE `mhp_review_names` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `review_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_review_names`
--

INSERT INTO `mhp_review_names` (`id`, `review_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Weekly Treatment', 0, '2022-04-18 01:57:48', '2022-04-18 02:08:12'),
(2, 'Need to checkup', 0, '2022-04-18 02:00:33', '2022-04-18 02:07:51');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_right_lumbers`
--

CREATE TABLE `mhp_right_lumbers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `RightLumber_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_route_names`
--

CREATE TABLE `mhp_route_names` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `route_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_rxes`
--

CREATE TABLE `mhp_rxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drug_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drug_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drug_generic_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dose` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frequency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `food` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `others` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabs_inistraction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Complex_instruction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_instruction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drugsTimeLimit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prescribedAs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `general_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pbs_listing` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `repeats` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `further_details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iSAllergyCheck` tinyint(1) NOT NULL DEFAULT 0,
  `is_FVDose` tinyint(1) NOT NULL DEFAULT 0,
  `is_Regulation` tinyint(1) NOT NULL DEFAULT 0,
  `is_print_brand_name` tinyint(1) NOT NULL DEFAULT 0,
  `is_print_generic_name` tinyint(1) NOT NULL DEFAULT 0,
  `is_urgent_supply` tinyint(1) NOT NULL DEFAULT 0,
  `is_allow_brand_substitution` tinyint(1) NOT NULL DEFAULT 0,
  `is_save_dose` tinyint(1) NOT NULL DEFAULT 0,
  `is_condition_status_right` tinyint(1) NOT NULL DEFAULT 0,
  `is_condition_status_left` tinyint(1) NOT NULL DEFAULT 0,
  `is_condition_status_bilateral` tinyint(1) NOT NULL DEFAULT 0,
  `is_condition_status_acute` tinyint(1) NOT NULL DEFAULT 0,
  `is_condition_status_chronic` tinyint(1) NOT NULL DEFAULT 0,
  `is_condition_status_mild` tinyint(1) NOT NULL DEFAULT 0,
  `is_condition_status_moderate` tinyint(1) NOT NULL DEFAULT 0,
  `is_condition_status_severe` tinyint(1) NOT NULL DEFAULT 0,
  `is_add_to_past_history` tinyint(1) NOT NULL DEFAULT 0,
  `is_add_to_reason_for_visit` tinyint(1) NOT NULL DEFAULT 0,
  `is_mark_as_confidential` tinyint(1) NOT NULL DEFAULT 0,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_r_u_q_s`
--

CREATE TABLE `mhp_r_u_q_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `RUQ_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_s1_to_s4_tests`
--

CREATE TABLE `mhp_s1_to_s4_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_saccades`
--

CREATE TABLE `mhp_saccades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Saccades_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_scores`
--

CREATE TABLE `mhp_scores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Score_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_selection_criterias`
--

CREATE TABLE `mhp_selection_criterias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `selection_criteria_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `examination_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_shapes`
--

CREATE TABLE `mhp_shapes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Shape_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_shape_and_contours`
--

CREATE TABLE `mhp_shape_and_contours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ShapeAndContour_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_shoulder_movements`
--

CREATE TABLE `mhp_shoulder_movements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_sigmoidoscopies`
--

CREATE TABLE `mhp_sigmoidoscopies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sigmoidoscopy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_sigmoidoscopy_guaiac_tests`
--

CREATE TABLE `mhp_sigmoidoscopy_guaiac_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sigmoidoscopyguaiactest_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_sites`
--

CREATE TABLE `mhp_sites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_skins`
--

CREATE TABLE `mhp_skins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `skin_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_skin_examinations`
--

CREATE TABLE `mhp_skin_examinations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acute` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chronic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stable` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `growing` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `neck` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scapula` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upperBack` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lowerBack` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chestUpper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chestLower` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forearm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finger` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interdigital` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `areolar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mammary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abdomen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `umbilical` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inguinal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buttock` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perineal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thigh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `knee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foot` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interdigitalSpace` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shape` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `palpation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temparature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arrangements` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_skin_exami_histories`
--

CREATE TABLE `mhp_skin_exami_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skin_exami_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `history_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_skin_exami_types`
--

CREATE TABLE `mhp_skin_exami_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skin_exami_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_skin_exmi_images`
--

CREATE TABLE `mhp_skin_exmi_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skin_exami_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bodyPart_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_skin_exmi_symtoms`
--

CREATE TABLE `mhp_skin_exmi_symtoms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skin_exami_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bodyPart_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symptom_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_skin_shapes`
--

CREATE TABLE `mhp_skin_shapes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `SkinShape_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_skin_symptoms`
--

CREATE TABLE `mhp_skin_symptoms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_skin_types`
--

CREATE TABLE `mhp_skin_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_sleep_apnoea_risks`
--

CREATE TABLE `mhp_sleep_apnoea_risks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sleepapnoearisk_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_speech_nurologies`
--

CREATE TABLE `mhp_speech_nurologies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `SpeechNurologies_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_spines`
--

CREATE TABLE `mhp_spines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Spine_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_stance_swat_knees`
--

CREATE TABLE `mhp_stance_swat_knees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_states`
--

CREATE TABLE `mhp_states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_statuses`
--

CREATE TABLE `mhp_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_stool_types`
--

CREATE TABLE `mhp_stool_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `StoolType_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_sub_body_parts`
--

CREATE TABLE `mhp_sub_body_parts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `SubBodyPart_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MainBodyPart_id` int(11) DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_sudden_anaesthesias`
--

CREATE TABLE `mhp_sudden_anaesthesias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `SuddenAnaesthesia_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_swollen_eye_lids`
--

CREATE TABLE `mhp_swollen_eye_lids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `SwollenEyeLid_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_symptom_anatomies`
--

CREATE TABLE `mhp_symptom_anatomies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `main_body_part_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_body_part_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `side_selection_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symptom_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_temparatures`
--

CREATE TABLE `mhp_temparatures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Temparature_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_temporal_lobes`
--

CREATE TABLE `mhp_temporal_lobes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `TemporalLobe_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_tenderness_over_facet_l_r_b_thoracos`
--

CREATE TABLE `mhp_tenderness_over_facet_l_r_b_thoracos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_tenderness_over_facet_thoracos`
--

CREATE TABLE `mhp_tenderness_over_facet_thoracos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_tenders`
--

CREATE TABLE `mhp_tenders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_tender_over_spinus_process_ats`
--

CREATE TABLE `mhp_tender_over_spinus_process_ats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `TenderOverSpinusProcessAt_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_tender_over_spinus_thoracos`
--

CREATE TABLE `mhp_tender_over_spinus_thoracos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_tender_tenerness_over_l1_to_l6_thoracos`
--

CREATE TABLE `mhp_tender_tenerness_over_l1_to_l6_thoracos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_tenerness_over_facet_joins`
--

CREATE TABLE `mhp_tenerness_over_facet_joins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `TenernessOverFacetJoin_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_test_hip_pelvis`
--

CREATE TABLE `mhp_test_hip_pelvis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_test_types`
--

CREATE TABLE `mhp_test_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `test_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_thoracic_kyphoses`
--

CREATE TABLE `mhp_thoracic_kyphoses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ThoracicKyphosis_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_throats`
--

CREATE TABLE `mhp_throats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `throat_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_time_setups`
--

CREATE TABLE `mhp_time_setups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_titles`
--

CREATE TABLE `mhp_titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_tobacco_cost_amounts`
--

CREATE TABLE `mhp_tobacco_cost_amounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tobacco_cost_amounts_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_tobacco_types`
--

CREATE TABLE `mhp_tobacco_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tobacco_types_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_tongues`
--

CREATE TABLE `mhp_tongues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tongue_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_tongue_lesions`
--

CREATE TABLE `mhp_tongue_lesions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tongueLesion_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_tongue_mouths`
--

CREATE TABLE `mhp_tongue_mouths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tonguemouth_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_tonsils`
--

CREATE TABLE `mhp_tonsils` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tonsil_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_tunnings`
--

CREATE TABLE `mhp_tunnings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tunning_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_tympanic_membranes`
--

CREATE TABLE `mhp_tympanic_membranes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tympanic_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_ulsers`
--

CREATE TABLE `mhp_ulsers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Ulser_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_urine_analyses`
--

CREATE TABLE `mhp_urine_analyses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `urineanalysis_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_user_self_registrations`
--

CREATE TABLE `mhp_user_self_registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `preferred_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_user_types`
--

CREATE TABLE `mhp_user_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_usual_accounts`
--

CREATE TABLE `mhp_usual_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usual_account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_usual_locations`
--

CREATE TABLE `mhp_usual_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usual_location_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_usual_locations`
--

INSERT INTO `mhp_usual_locations` (`id`, `usual_location_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 0, NULL, NULL, '2022-04-19 01:26:05', '2022-04-19 01:26:05');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_usual_providers`
--

CREATE TABLE `mhp_usual_providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usual_provider_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_usual_providers`
--

INSERT INTO `mhp_usual_providers` (`id`, `usual_provider_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Chittagong Hospital', 0, NULL, NULL, '2022-04-12 22:38:47', '2022-04-12 22:38:47'),
(2, 'Comilla Hospital', 0, NULL, NULL, '2022-04-12 22:38:55', '2022-04-12 22:38:55'),
(3, 'Square Hospital', 0, NULL, NULL, '2022-04-12 22:39:02', '2022-04-12 22:39:02');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_visit_types`
--

CREATE TABLE `mhp_visit_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visit_type_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_visualacuities`
--

CREATE TABLE `mhp_visualacuities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visualacuity_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_visualfields`
--

CREATE TABLE `mhp_visualfields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visualfield_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_visual_acuity_eyes`
--

CREATE TABLE `mhp_visual_acuity_eyes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `VisualAcuityEye_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_vital_signs`
--

CREATE TABLE `mhp_vital_signs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `units_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_vital_sign_units`
--

CREATE TABLE `mhp_vital_sign_units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vitalunit_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_volumes`
--

CREATE TABLE `mhp_volumes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `volume_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_volume_womens`
--

CREATE TABLE `mhp_volume_womens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_vomitings`
--

CREATE TABLE `mhp_vomitings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Vomiting_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_vulvals`
--

CREATE TABLE `mhp_vulvals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_vulvas`
--

CREATE TABLE `mhp_vulvas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_walk_on_heels`
--

CREATE TABLE `mhp_walk_on_heels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_weber_tests`
--

CREATE TABLE `mhp_weber_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `weberTest_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_wheezing_boths`
--

CREATE TABLE `mhp_wheezing_boths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `WheezingBoth_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_wheezing_lefts`
--

CREATE TABLE `mhp_wheezing_lefts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `WheezingLeft_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_wheezing_rights`
--

CREATE TABLE `mhp_wheezing_rights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `WheezingRight_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_winged_scapulas`
--

CREATE TABLE `mhp_winged_scapulas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `WingedScapula_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_women_health_examis`
--

CREATE TABLE `mhp_women_health_examis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LMP_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LSCS_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pregnant_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastCervicalScreen_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `periodType_input` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `periodDays_input` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `periodCycle_input` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `periodYears_input` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `volume_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PVBleeding_vale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PVDischarge_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vulval_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miscarriage_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breastLump_side_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breast_pain_ternary_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breast_abscess_ternary_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pelvic_mass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forniceal_tenderness_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bulky_uterus_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breast_ternery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `peau_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redness_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nipple_inversion_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibleVeins_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teethering_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hot_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `axillary_nodes_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skin_dimpling_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asymetric_elevation_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supraclavicular_node_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swelling_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lump_cm_for_nipple_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lump_o_clock` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bartholin_glandes_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forniceal_mass_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anteverted_uterus_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uterine_tenderness_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `retroverted_uterus_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LMP_input` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LLO_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LUI_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RLO_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LLI_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RLI_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RUO_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MUI_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_women_health_exami_breast_lumps`
--

CREATE TABLE `mhp_women_health_exami_breast_lumps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `women_health_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breast_lumps_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_women_health_exami_breast_nipple_discharges`
--

CREATE TABLE `mhp_women_health_exami_breast_nipple_discharges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `women_health_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breast_nipple_discharges_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_women_health_exami_cervixes`
--

CREATE TABLE `mhp_women_health_exami_cervixes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `women_health_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cervixes_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_women_health_exami_csts`
--

CREATE TABLE `mhp_women_health_exami_csts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `women_health_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `csts_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_women_health_exami_gynecologies`
--

CREATE TABLE `mhp_women_health_exami_gynecologies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `women_health_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gynecologies_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_women_health_exami_obstetrics`
--

CREATE TABLE `mhp_women_health_exami_obstetrics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `women_health_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `obstetrics_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_women_health_exami_vulvas`
--

CREATE TABLE `mhp_women_health_exami_vulvas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `women_health_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vulvas_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_worth4_dots`
--

CREATE TABLE `mhp_worth4_dots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Worth4Dot_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_wrists`
--

CREATE TABLE `mhp_wrists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Wrist_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_wrist_palpations`
--

CREATE TABLE `mhp_wrist_palpations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(377, '2022_04_05_070439_create_ent_examinations_table', 10),
(416, '2014_10_12_000000_create_users_table', 11),
(417, '2014_10_12_100000_create_password_resets_table', 11),
(418, '2014_10_12_200000_add_two_factor_columns_to_users_table', 11),
(419, '2019_08_19_000000_create_failed_jobs_table', 11),
(420, '2019_12_14_000001_create_personal_access_tokens_table', 11),
(421, '2020_11_15_100619_create_sessions_table', 11),
(422, '2020_11_15_133901_create_admins_table', 11),
(423, '2021_11_04_061340_create_mhp_occupations_table', 11),
(424, '2021_11_04_080707_create_mhp_ethnicities_table', 11),
(425, '2021_11_04_081240_create_mhp_usual_locations_table', 11),
(426, '2021_11_04_081607_create_mhp_statuses_table', 11),
(427, '2021_11_04_084725_create_mhp_titles_table', 11),
(428, '2021_11_04_085245_create_mhp_cities_table', 11),
(429, '2021_11_04_100538_create_mhp_countries_table', 11),
(430, '2021_11_04_101531_create_mhp_visit_types_table', 11),
(431, '2021_11_04_102122_create_mhp_religions_table', 11),
(432, '2021_11_04_105155_create_mhp_birth_sexes_table', 11),
(433, '2021_11_04_110235_create_mhp_patients_table', 11),
(434, '2021_11_06_090052_create_mhp_doctors_table', 11),
(435, '2021_11_06_104827_create_mhp_appointments_table', 11),
(436, '2021_11_06_112349_create_mhp_daily_messages_table', 11),
(437, '2021_11_06_124557_create_mhp_referral_follow_ups_table', 11),
(438, '2021_11_14_090406_create_mhp_test_types_table', 11),
(439, '2021_11_24_092831_create_mhp_contact_vias_table', 11),
(440, '2021_11_24_093135_create_mhp_states_table', 11),
(441, '2021_11_24_093220_create_mhp_usual_providers_table', 11),
(442, '2021_11_24_093243_create_mhp_usual_accounts_table', 11),
(443, '2021_11_25_114857_create_mhp_doctors_masters_table', 11),
(444, '2021_11_25_115005_create_mhp_doctors_academics_table', 11),
(445, '2021_11_25_115120_create_mhp_doctors_license_trainings_table', 11),
(446, '2021_11_25_115207_create_mhp_doctors_work_experiences_table', 11),
(447, '2021_11_28_054703_create_mhp_time_setups_table', 11),
(448, '2021_11_29_083216_create_mhp_appointment_schedulers_table', 11),
(449, '2021_12_05_044038_create_mhp_reactions_table', 11),
(450, '2021_12_05_115114_create_mhp_diagnoses_table', 11),
(451, '2021_12_07_050253_create_mhp_patients_family_social_history_alcohols_table', 11),
(452, '2021_12_07_081025_create_mhp_diagnosis_actions_table', 11),
(453, '2021_12_07_130655_create_mhp_patients_occupation_details_table', 11),
(454, '2021_12_07_132819_create_mhp_patients_family_social_history_tobaccos_table', 11),
(455, '2021_12_08_053301_create_mhp_drug_names_table', 11),
(456, '2021_12_08_085012_create_mhp_drug_units_table', 11),
(457, '2021_12_08_094655_create_mhp_past_alcohol_consumptions_table', 11),
(458, '2021_12_08_114345_create_mhp_route_names_table', 11),
(459, '2021_12_09_042324_create_mhp_occupational_hazards_table', 11),
(460, '2021_12_09_042611_create_mhp_current_smoking_histories_table', 11),
(461, '2021_12_09_042702_create_mhp_tobacco_types_table', 11),
(462, '2021_12_09_042804_create_mhp_tobacco_cost_amounts_table', 11),
(463, '2021_12_09_042909_create_mhp_advice_suggestions_table', 11),
(464, '2021_12_09_045304_create_mhp_dose_names_table', 11),
(465, '2021_12_09_055036_create_mhp_frequency_names_table', 11),
(466, '2021_12_09_062534_create_mhp_food_names_table', 11),
(467, '2021_12_09_073823_create_mhp_others_names_table', 11),
(468, '2021_12_12_112033_create_mhp_appointment_lengths_table', 11),
(469, '2021_12_12_112142_create_mhp_appointment_types_table', 11),
(470, '2021_12_23_054515_create_mhp_user_self_registrations_table', 11),
(471, '2021_12_26_111011_create_mhp_doctors_departments_table', 11),
(472, '2021_12_28_052525_create_doc_specialists_table', 11),
(473, '2021_12_29_093113_create_doc_time_slots_table', 11),
(474, '2021_12_29_093241_create_doc_time_limits_table', 11),
(475, '2022_01_03_062443_create_ptn_blood_groups_table', 11),
(476, '2022_01_08_121630_create_mhp_examinations_table', 11),
(477, '2022_01_09_052448_create_mhp_histories_table', 11),
(478, '2022_01_10_060502_create_mhp_exam_hist_select_params_table', 11),
(479, '2022_01_10_104555_create_mhp_exam_hist_extensions_table', 11),
(480, '2022_01_11_093031_create_mhp_carotids_table', 11),
(481, '2022_01_11_112747_create_mhp_exam_history_mappings_table', 11),
(482, '2022_01_13_044812_create_mhp_selection_criterias_table', 11),
(483, '2022_01_13_063652_create_mhp_ear_canals_table', 11),
(484, '2022_01_15_071048_create_mhp_apex_beats_table', 11),
(485, '2022_01_15_100514_create_mhp_intercostal_spaces_table', 11),
(486, '2022_01_17_045902_create_mhp_history_examination_statuses_table', 11),
(487, '2022_01_17_051410_create_mhp_ear_lesions_table', 11),
(488, '2022_01_17_091016_create_mhp_tympanic_membranes_table', 11),
(489, '2022_01_18_043910_create_mhp_mastoids_table', 11),
(490, '2022_01_18_065824_create_mhp_posteriors_table', 11),
(491, '2022_01_18_070317_create_mhp_doctors_certificates_table', 11),
(492, '2022_01_18_100148_create_mhp_tunnings_table', 11),
(493, '2022_01_18_112602_create_mhp_weber_tests_table', 11),
(494, '2022_01_19_055510_create_mhp_throats_table', 11),
(495, '2022_01_19_061713_create_mhp_tongues_table', 11),
(496, '2022_01_19_065614_create_mhp_tonsils_table', 11),
(497, '2022_01_19_105355_create_mhp_noses_table', 11),
(498, '2022_01_20_092923_create_mhp_tongue_lesions_table', 11),
(499, '2022_01_22_061852_create_mhp_ol_factories_table', 11),
(500, '2022_01_23_062752_create_mhp_fundoscopies_table', 11),
(501, '2022_01_23_095603_create_mhp_visualacuities_table', 11),
(502, '2022_01_23_111047_create_mhp_visualfields_table', 11),
(503, '2022_01_23_112536_create_mhp_papillaryoedemas_table', 11),
(504, '2022_01_24_060127_create_mhp_pupils_table', 11),
(505, '2022_01_24_061741_create_mhp_lightreflexes_table', 11),
(506, '2022_01_24_070811_create_mhp_eyemovements_table', 11),
(507, '2022_01_24_090437_create_cns_sensories_table', 11),
(508, '2022_01_24_094137_create_cns_jaw_jerks_table', 11),
(509, '2022_01_24_104118_create_cns_looking_ups_table', 11),
(510, '2022_01_24_114801_create_cns_drooping_corners_table', 11),
(511, '2022_01_25_052636_create_cns_ear_palates_table', 11),
(512, '2022_01_25_081723_create_mhp_user_types_table', 11),
(513, '2022_01_25_101619_create_mhe_appearances_table', 11),
(514, '2022_01_25_103132_create_cns_whisper_tests_table', 11),
(515, '2022_01_25_113931_create_cns_pinnes_tests_table', 11),
(516, '2022_01_25_115449_create_mhe_behaviours_table', 11),
(517, '2022_01_25_123708_create_cns_hallpikes_table', 11),
(518, '2022_01_26_063052_create_cns_uvulas_table', 11),
(519, '2022_01_26_090735_create_cns_gas_reflexes_table', 11),
(520, '2022_01_26_094514_create_cns_neck_movements_table', 11),
(521, '2022_01_26_102451_create_cns_shrug_shoulders_table', 11),
(522, '2022_01_26_110500_create_cns_tasciculations_table', 11),
(523, '2022_01_27_050026_create_mhe_attitude_towards_examinations_table', 11),
(524, '2022_01_30_052316_create_mhp_vital_sign_units_table', 11),
(525, '2022_01_30_064425_create_mhp_vital_signs_table', 11),
(526, '2022_01_30_091013_create_cns_sensations_table', 11),
(527, '2022_01_30_100502_create_mhe_moods_table', 11),
(528, '2022_01_30_102322_create_mhe_affects_table', 11),
(529, '2022_01_30_104148_create_mhe_appropritenesses_table', 11),
(530, '2022_01_30_111937_create_mhe_attitute_towards_table', 11),
(531, '2022_01_30_114833_create_mhe_speeches_table', 11),
(532, '2022_01_31_045338_create_cns_tongues_table', 11),
(533, '2022_01_31_072244_create_mhe_perceptuals_table', 11),
(534, '2022_01_31_085024_create_mhp_patients_vital_signs_table', 11),
(535, '2022_01_31_090707_create_mre_chest_shapes_table', 11),
(536, '2022_01_31_093215_create_mre_percussions_table', 11),
(537, '2022_01_31_100748_create_mre_breath_sounds_table', 11),
(538, '2022_01_31_102426_create_mre_abnormal_breathings_table', 11),
(539, '2022_01_31_104418_create_mre_vocal_fremituses_table', 11),
(540, '2022_01_31_112932_create_mre_chest_expansions_table', 11),
(541, '2022_01_31_114545_create_mre_wheerings_table', 11),
(542, '2022_01_31_115733_create_mre_vocal_resonances_table', 11),
(543, '2022_02_01_103047_create_mre_symptoms_table', 11),
(544, '2022_02_05_054520_create_mhp_employees_table', 11),
(545, '2022_02_05_054940_create_mhp_employee_academics_table', 11),
(546, '2022_02_05_055253_create_mhp_employee_certificates_table', 11),
(547, '2022_02_05_055552_create_mhp_employee_licences_table', 11),
(548, '2022_02_05_060424_create_mhp_employee_works_and_experienses_table', 11),
(549, '2022_02_06_054138_create_mhp_allergies_table', 11),
(550, '2022_02_06_094331_create_mhp_patients_allergies_table', 11),
(551, '2022_02_09_044200_create_mhp_drug_generic_names_table', 11),
(552, '2022_02_12_074444_create_mhp_rxes_table', 11),
(553, '2022_02_12_123638_create_mhp_media_type_onlines_table', 11),
(554, '2022_02_15_112903_create_mhp_examination_headings_table', 11),
(555, '2022_02_16_042749_create_mhp_common_histories_table', 11),
(556, '2022_02_19_102416_create_mre_crepitations_table', 11),
(557, '2022_02_19_123953_create_mhp_heart_sounds_table', 11),
(558, '2022_02_20_063812_create_mhp_volumes_table', 11),
(559, '2022_02_20_070035_create_mhp_rediations_table', 11),
(560, '2022_02_20_071254_create_mhp_murmurs_table', 11),
(561, '2022_02_20_094143_create_mhp_others_table', 11),
(562, '2022_02_20_102041_create_mhp_pembertons_table', 11),
(563, '2022_02_22_071507_create_cns_cn_ones_table', 11),
(564, '2022_02_22_104041_create_cns_cn_twos_table', 11),
(565, '2022_02_22_105338_create_cns_cn_threes_table', 11),
(566, '2022_02_22_110620_create_cns_cn_fours_table', 11),
(567, '2022_02_22_113027_create_cns_cn_fives_table', 11),
(568, '2022_02_22_115153_create_cns_cn_sixes_table', 11),
(569, '2022_02_22_120352_create_cns_cn_sevens_table', 11),
(570, '2022_02_22_121159_create_cns_cn_eights_table', 11),
(571, '2022_02_22_123248_create_cns_cn_nines_table', 11),
(572, '2022_02_22_124329_create_cns_cn_tens_table', 11),
(573, '2022_02_27_100529_create_mhp_cardiovasculars_table', 11),
(574, '2022_02_28_060855_create_mhp_coughs_table', 11),
(575, '2022_02_28_065100_create_mhp_dyspneas_table', 11),
(576, '2022_02_28_073349_create_mhp_cardiovascular_others_table', 11),
(577, '2022_02_28_084707_create_mhp_medical_histories_table', 11),
(578, '2022_02_28_092254_create_mhp_sleep_apnoea_risks_table', 11),
(579, '2022_02_28_103505_create_mhp_doctor_fees_table', 11),
(580, '2022_02_28_104236_create_mhp_questionnaires_table', 11),
(581, '2022_02_28_104747_create_mhp_cardiovascular_histories_table', 11),
(582, '2022_03_01_042248_create_mhp_procedures_table', 11),
(583, '2022_03_01_062107_create_mhp_motors_table', 11),
(584, '2022_03_01_063423_create_mhp_generals_table', 11),
(585, '2022_03_01_072003_create_mhp_on_shutting_eyes_table', 11),
(586, '2022_03_01_072427_create_mhp_procedure_fees_table', 11),
(587, '2022_03_01_110020_create_mhp_skins_table', 11),
(588, '2022_03_01_113536_create_mhp_hand_and_fingers_table', 11),
(589, '2022_03_01_115559_create_mhp_left_supraclavicular_nodes_table', 11),
(590, '2022_03_02_043036_create_mhp_tongue_mouths_table', 11),
(591, '2022_03_02_044427_create_mhp_abdomens_table', 11),
(592, '2022_03_02_050120_create_mhp_general_histories_table', 11),
(593, '2022_03_02_050838_create_mhp_bruits_table', 11),
(594, '2022_03_02_052321_create_mhp_non_tender_tendernesses_table', 11),
(595, '2022_03_02_055032_create_mhp_no_masses_masses_table', 11),
(596, '2022_03_02_055954_create_mhp_hernias_table', 11),
(597, '2022_03_02_093608_create_mhp_hernias_inguinals_table', 11),
(598, '2022_03_02_102921_create_mhp_hernias_femorals_table', 11),
(599, '2022_03_02_112327_create_mhp_per_rectals_table', 11),
(600, '2022_03_02_114145_create_mhp_billings_table', 11),
(601, '2022_03_03_041126_create_mhp_sigmoidoscopies_table', 11),
(602, '2022_03_03_052832_create_mhp_sigmoidoscopy_guaiac_tests_table', 11),
(603, '2022_03_03_063359_create_mhp_urine_analyses_table', 11),
(604, '2022_03_03_064424_create_mhp_renal_masses_table', 11),
(605, '2022_03_03_071525_create_mhp_exmanination_lists_table', 11),
(606, '2022_03_03_101213_create_mhp_dehydrations_table', 11),
(607, '2022_03_03_101727_create_mhp_radio_femoral_delays_table', 11),
(608, '2022_03_03_102454_create_mhp_nail_signs_table', 11),
(609, '2022_03_03_105606_create_mhp_dyspnea_classes_table', 11),
(610, '2022_03_05_061409_create_mhp_double_visions_table', 11),
(611, '2022_03_05_063551_create_mhp_haloes_table', 11),
(612, '2022_03_05_064350_create_mhp_flores_table', 11),
(613, '2022_03_05_073552_create_mhp_caruncles_table', 11),
(614, '2022_03_05_075211_create_mhp_ghoostings_table', 11),
(615, '2022_03_05_075745_create_mhp_enterior_chambers_table', 11),
(616, '2022_03_05_082431_create_mhp_swollen_eye_lids_table', 11),
(617, '2022_03_05_082745_create_mhp_lesions_table', 11),
(618, '2022_03_05_092323_create_mhp_cripatation_lefts_table', 11),
(619, '2022_03_05_093456_create_mhp_cripatation_rights_table', 11),
(620, '2022_03_05_093910_create_mhp_cripatation_boths_table', 11),
(621, '2022_03_05_094734_create_mhp_respiratories_table', 11),
(622, '2022_03_05_113332_create_mhp_wheezing_lefts_table', 11),
(623, '2022_03_05_113840_create_mhp_wheezing_rights_table', 11),
(624, '2022_03_05_114249_create_mhp_wheezing_boths_table', 11),
(625, '2022_03_05_114430_create_mhp_respiratory_histories_table', 11),
(626, '2022_03_06_053109_create_mhp_entrance_tests_table', 11),
(627, '2022_03_06_053912_create_mhp_respiratory_examination_lists_table', 11),
(628, '2022_03_06_055154_create_mhp_respiratory_questionnaires_table', 11),
(629, '2022_03_06_063558_create_mhp_visual_acuity_eyes_table', 11),
(630, '2022_03_06_071639_create_mhp_cover_tests_table', 11),
(631, '2022_03_06_074651_create_mhp_pupils_eyes_table', 11),
(632, '2022_03_06_084052_create_mhp_worth4_dots_table', 11),
(633, '2022_03_06_084506_create_mhp_e_o_m_convergences_table', 11),
(634, '2022_03_06_101644_create_mhp_r_u_q_s_table', 11),
(635, '2022_03_06_102754_create_mhp_epigastrics_table', 11),
(636, '2022_03_06_105356_create_mhp_l_u_q_s_table', 11),
(637, '2022_03_06_105841_create_mhp_right_lumbers_table', 11),
(638, '2022_03_07_044235_create_mhp_sites_table', 11),
(639, '2022_03_07_051055_create_mhp_gestros_table', 11),
(640, '2022_03_07_051214_create_mhp_radiations_table', 11),
(641, '2022_03_07_053817_create_mhp_patterns_table', 11),
(642, '2022_03_07_054908_create_mhp_durations_table', 11),
(643, '2022_03_07_060634_create_mhp_gestro_histories_table', 11),
(644, '2022_03_07_061630_create_mhp_gestro_abdomens_table', 11),
(645, '2022_03_07_063056_create_mhp_frequencies_table', 11),
(646, '2022_03_07_063539_create_mhp_scores_table', 11),
(647, '2022_03_07_063819_create_mhp_vomitings_table', 11),
(648, '2022_03_07_064050_create_mhp_dysphagias_table', 11),
(649, '2022_03_07_064305_create_mhp_diarrhoeas_table', 11),
(650, '2022_03_07_065214_create_mhp_stool_types_table', 11),
(651, '2022_03_07_070430_create_mhp_p_r_bleeds_table', 11),
(652, '2022_03_07_080749_create_mhp_e_o_m_accomodations_table', 11),
(653, '2022_03_07_081048_create_mhp_dry_retinoscopies_table', 11),
(654, '2022_03_07_081427_create_mhp_maddox_wings_table', 11),
(655, '2022_03_07_081716_create_mhp_mid_line_crossings_table', 11),
(656, '2022_03_08_044722_create_mhp_pen_grips_table', 11),
(657, '2022_03_08_052705_create_mhp_postures_table', 11),
(658, '2022_03_08_053354_create_mhp_color_visions_table', 11),
(659, '2022_03_08_053820_create_mhp_dilates_table', 11),
(660, '2022_03_08_061350_create_mhp_c_d_discs_table', 11),
(661, '2022_03_08_071722_create_mhp_movements_table', 11),
(662, '2022_03_08_073805_create_mhp_tender_over_spinus_process_ats_table', 11),
(663, '2022_03_08_074711_create_mhp_digitals_table', 11),
(664, '2022_03_08_084150_create_mhp_tenerness_over_facet_joins_table', 11),
(665, '2022_03_08_092159_create_mhp_inspections_table', 11),
(666, '2022_03_08_092829_create_mhp_sudden_anaesthesias_table', 11),
(667, '2022_03_08_095442_create_mhp_cards_table', 11),
(668, '2022_03_08_102925_create_mhp_branches_table', 11),
(669, '2022_03_08_104552_create_mhp_thoracic_kyphoses_table', 11),
(670, '2022_03_08_105329_create_mhp_banks_table', 11),
(671, '2022_03_08_105811_create_mhp_lumber_lordoses_table', 11),
(672, '2022_03_08_110836_create_mhp_spines_table', 11),
(673, '2022_03_08_113431_create_mhp_pain_into_knees_table', 11),
(674, '2022_03_10_041318_create_mhp_payments_table', 11),
(675, '2022_03_10_101806_create_mhp_shape_and_contours_table', 11),
(676, '2022_03_10_103759_create_mhp_anterior_views_table', 11),
(677, '2022_03_10_104340_create_mhp_level_of_spine_of_scapulas_table', 11),
(678, '2022_03_10_104630_create_mhp_winged_scapulas_table', 11),
(679, '2022_03_10_105906_create_mhp_wrists_table', 11),
(680, '2022_03_10_110116_create_mhp_metacarpophalangeal_joints_table', 11),
(681, '2022_03_10_111317_drop_users_table', 11),
(682, '2022_03_10_113331_create_mhp_proximal_interphalangeal_joints_table', 11),
(683, '2022_03_10_115104_create_mhp_distal_interphalangeal_joints_table', 11),
(684, '2022_03_12_053228_create_mhp_cns_table', 11),
(685, '2022_03_12_053533_create_cns_left_values_table', 11),
(686, '2022_03_12_062705_create_cns_right_values_table', 11),
(687, '2022_03_12_072440_create_mhp_main_body_parts_table', 11),
(688, '2022_03_12_095016_create_cns_upper_limbs_table', 11),
(689, '2022_03_12_095401_create_cns_powers_table', 11),
(690, '2022_03_12_095733_create_cns_the_radial_nerves_table', 11),
(691, '2022_03_12_095933_create_cns_jerk_c1_c8_s_table', 11),
(692, '2022_03_12_100132_create_cns_finger_nose_tests_table', 11),
(693, '2022_03_12_104014_create_cns_picture_upper_limb_dermatomes_table', 11),
(694, '2022_03_12_115015_drop_mhp_cns_table', 11),
(695, '2022_03_13_052104_create_mhp_cns_part1s_table', 11),
(696, '2022_03_13_052124_create_mhp_cns_part2s_table', 11),
(697, '2022_03_13_055233_create_mhp_sub_body_parts_table', 11),
(698, '2022_03_13_063023_create_mhp_cns_cn1s_table', 11),
(699, '2022_03_13_063039_create_mhp_cns_cn2s_table', 11),
(700, '2022_03_13_063104_create_mhp_cns_cn3s_table', 11),
(701, '2022_03_13_070933_create_mhp_doctor_fee_names_table', 11),
(702, '2022_03_13_085541_create_mhp_cns_cn4s_table', 11),
(703, '2022_03_13_085550_create_mhp_cns_cn5s_table', 11),
(704, '2022_03_13_085559_create_mhp_cns_cn6s_table', 11),
(705, '2022_03_13_085608_create_mhp_cns_cn7s_table', 11),
(706, '2022_03_13_085617_create_mhp_cns_cn8s_table', 11),
(707, '2022_03_13_112118_create_mhp_cns_visual_fields_table', 11),
(708, '2022_03_15_062304_create_mhp_lesion_middles_table', 11),
(709, '2022_03_15_064008_create_mhp_lesion_rights_table', 11),
(710, '2022_03_15_065033_create_mhp_external_observations_table', 11),
(711, '2022_03_15_065332_create_mhp_phoria_ones_table', 11),
(712, '2022_03_15_065618_create_mhp_phoria_twos_table', 11),
(713, '2022_03_15_065917_create_mhp_shapes_table', 11),
(714, '2022_03_15_070807_create_mhp_pursuits_table', 11),
(715, '2022_03_15_071030_create_mhp_saccades_table', 11),
(716, '2022_03_15_071444_create_mhp_neuro_opthals_table', 11),
(717, '2022_03_15_092139_create_mhp_cns_upper_limbs_table', 11),
(718, '2022_03_15_100250_create_mhp_media_types_table', 11),
(719, '2022_03_15_102424_create_mhp_neuro_opthalmologies_table', 11),
(720, '2022_03_15_105342_create_mhp_pen_grip_rights_table', 11),
(721, '2022_03_16_041552_drop_doc_time_slots_table', 11),
(722, '2022_03_20_051641_create_mhp_p_h_q9_questionnaires_table', 11),
(723, '2022_03_20_052829_create_mhp_p_h_q9_questionnaire_values_table', 11),
(724, '2022_03_20_064038_create_mhp_gait_limpings_table', 11),
(725, '2022_03_21_043643_create_mhp_symptom_anatomies_table', 11),
(726, '2022_03_22_104308_create_mhp_invoices_table', 11),
(727, '2022_03_24_081710_create_mhp_parietal_lobes_table', 11),
(728, '2022_03_24_083027_create_mhp_temporal_lobes_table', 11),
(729, '2022_03_24_084826_create_mhp_frontal_lobes_table', 11),
(730, '2022_03_24_094525_create_mhp_occipital_lobes_table', 11),
(731, '2022_03_27_072553_create_mhp_all_body_part_front_backs_table', 11),
(732, '2022_03_27_073411_create_mhp_areolars_table', 11),
(733, '2022_03_27_073705_create_mhp_skin_shapes_table', 11),
(734, '2022_03_27_080455_create_mhp_colors_table', 11),
(735, '2022_03_27_080926_create_mhp_palpations_table', 11),
(736, '2022_03_27_081225_create_mhp_temparatures_table', 11),
(737, '2022_03_27_082258_create_mhp_arrangements_table', 11),
(738, '2022_03_27_103424_create_mhp_genito_urinaries_table', 11),
(739, '2022_03_27_105710_create_mhp_genito_urinary_histories_table', 11),
(740, '2022_03_28_064512_create_mhp_ears_table', 11),
(741, '2022_03_28_064839_create_mhp_ear_discharges_table', 11),
(742, '2022_03_28_065132_create_mhp_deafnesses_table', 11),
(743, '2022_03_28_065400_create_mhp_ent_others_table', 11),
(744, '2022_03_28_065627_create_mhp_renne_tests_table', 11),
(745, '2022_03_29_041729_create_mhp_diagnosis_procedures_table', 11),
(746, '2022_03_29_060344_create_mhp_diagnosis_procedure_fors_table', 11),
(747, '2022_03_29_061545_create_mhp_diagnosis_procedure_actions_table', 11),
(748, '2022_03_30_080617_create_mhp_ulsers_table', 11),
(749, '2022_03_31_043516_create_mhp_eye_exami_part1s_table', 11),
(750, '2022_03_31_044715_create_mhp_eye_exami_part2s_table', 11),
(751, '2022_03_31_063749_create_mhp_eye_part1_external_observations_table', 11),
(752, '2022_03_31_070920_create_mhp_continuouses_table', 11),
(753, '2022_03_31_074354_create_mhp_intermittents_table', 11),
(754, '2022_03_31_074559_create_mhp_speech_nurologies_table', 11),
(755, '2022_03_31_093804_create_mhp_ingredients_table', 11),
(756, '2022_03_31_094026_create_mhp_eye_part1_phoria_ones_table', 11),
(757, '2022_03_31_094133_create_mhp_eye_part1_phoria_twos_table', 11),
(758, '2022_03_31_095745_create_mhp_eye_part1_pursuits_table', 11),
(759, '2022_03_31_100003_create_mhp_inspection_looks_table', 11),
(760, '2022_03_31_100124_create_mhp_eye_part1_worth4_dots_table', 11),
(761, '2022_03_31_100423_create_mhp_custom_restrictions_table', 11),
(762, '2022_03_31_103003_create_mhp_move_hip_pelvis_table', 11),
(763, '2022_03_31_121027_create_mhp_medicine_categories_table', 11),
(764, '2022_04_02_112805_create_mhp_pain_along_anteriors_table', 11),
(765, '2022_04_02_115956_create_mhp_pain_over_posteriors_table', 11),
(766, '2022_04_02_120352_create_mhp_walk_on_heels_table', 11),
(767, '2022_04_02_120903_create_mhp_posture_thoracos_table', 11),
(768, '2022_04_03_032553_create_mhp_tender_over_spinus_thoracos_table', 11),
(769, '2022_04_03_033301_create_mhp_tenderness_over_facet_thoracos_table', 11),
(770, '2022_04_03_040325_create_mhp_tenderness_over_facet_l_r_b_thoracos_table', 11),
(771, '2022_04_03_040931_create_mhp_ingerdient_children_table', 11),
(772, '2022_04_03_041629_create_mhp_custom_medicines_table', 11),
(773, '2022_04_03_045746_create_mhp_mental_healths_table', 11),
(774, '2022_04_03_051231_create_mhp_mental_histories_table', 11),
(775, '2022_04_03_051439_create_mhp_mental_appearances_table', 11),
(776, '2022_04_03_051512_create_mhp_mental_behaviours_table', 11),
(777, '2022_04_03_051602_create_mhp_mental_attitudetowardsexaminations_table', 11),
(778, '2022_04_03_051628_create_mhp_mental_moods_table', 11),
(779, '2022_04_03_051700_create_mhp_mental_affects_table', 11),
(780, '2022_04_03_051728_create_mhp_mental_speeches_table', 11),
(781, '2022_04_03_051750_create_mhp_mental_perceptual_disturbances_table', 11),
(782, '2022_04_03_072917_create_mhp_lying_on_couches_table', 11),
(783, '2022_04_04_055507_create_mhp_mental_psq9_ques1sts_table', 11),
(784, '2022_04_04_055604_create_mhp_l1_l2_hip_flexions_table', 11),
(785, '2022_04_04_055744_create_mhp_mental_psq9_ques2nds_table', 11),
(786, '2022_04_04_060934_create_mhp_l3_to_l5_powers_table', 11),
(787, '2022_04_04_061350_create_mhp_l1_l2_sensations_table', 11),
(788, '2022_04_04_062325_create_mhp_l3_to_l5_sensations_table', 11),
(789, '2022_04_04_062904_create_mhp_s1_to_s4_tests_table', 11),
(790, '2022_04_05_080931_create_mhp_tender_tenerness_over_l1_to_l6_thoracos_table', 11),
(791, '2022_04_06_041218_create_mhp_radiology_centers_table', 11),
(792, '2022_04_06_043504_create_mhp_ent_examinations_table', 11),
(793, '2022_04_06_044301_create_mhp_radiology_test_names_table', 11),
(794, '2022_04_06_050400_create_mhp_clinical_indications_table', 11),
(795, '2022_04_06_061807_create_mhp_ent_examin_ear_lesions_table', 11),
(796, '2022_04_06_061834_create_mhp_ent_examin_ent_others_table', 11),
(797, '2022_04_06_063637_create_mhp_test_hip_pelvis_table', 11),
(798, '2022_04_06_064246_create_mhp_inspection_look_hip_pelvis_table', 11),
(799, '2022_04_06_072808_create_mhp_radiologies_table', 11),
(800, '2022_04_06_081531_create_mhp_auto_fills_table', 11),
(801, '2022_04_07_055251_create_mhp_billing_providers_table', 11),
(802, '2022_04_07_055416_create_mhp_neurologicals_table', 11),
(803, '2022_04_07_055925_create_mhp_neurological_histories_table', 11),
(804, '2022_04_07_060438_create_mhp_neurological_speeches_table', 11),
(805, '2022_04_07_075506_create_mhp_given_bies_table', 11),
(806, '2022_04_07_083420_create_mhp_batch_nos_table', 11),
(807, '2022_04_07_092540_create_mhp_immunisation_routes_table', 11),
(808, '2022_04_07_093002_create_mhp_immunisation_sites_table', 11),
(809, '2022_04_09_042456_create_mhp_shoulder_movements_table', 11),
(810, '2022_04_09_043040_create_mhp_painful_arcs_table', 11),
(811, '2022_04_09_043331_create_mhp_resisted_movements_table', 11),
(812, '2022_04_09_044236_create_mhp_great_doc_diagnoses_table', 11),
(813, '2022_04_09_052157_create_mhp_neurological_parietal_lobes_table', 11),
(814, '2022_04_09_052438_create_mhp_nails_table', 11),
(815, '2022_04_09_052828_create_mhp_neurological_frontal_lobes_table', 11),
(816, '2022_04_09_052857_create_mhp_neurological_temporal_lobes_table', 11),
(817, '2022_04_09_052923_create_mhp_neurological_occipital_lobes_table', 11),
(818, '2022_04_09_053735_create_mhp_dorsum_of_hands_table', 11),
(819, '2022_04_09_054109_create_mhp_fingers_table', 11),
(820, '2022_04_09_054413_create_mhp_tenders_table', 11),
(821, '2022_04_09_054751_create_mhp_flexon_tendons_table', 11),
(822, '2022_04_09_070958_create_mhp_wrist_palpations_table', 11),
(823, '2022_04_09_072323_create_mhp_great_doc_procedures_table', 11),
(824, '2022_04_09_081352_create_mhp_metacarpophalangeal_joint_palpations_table', 11),
(825, '2022_04_09_082544_create_mhp_proximal_interphalangeal_palpations_table', 11),
(826, '2022_04_10_071832_create_mhp_great_doc_resons_table', 11),
(827, '2022_04_11_045251_create_mhp_great_doc_auto_fills_table', 11),
(828, '2022_04_10_080427_create_mhp_volume_womens_table', 12),
(829, '2022_04_10_081036_create_mhp_p_v_bleedings_table', 12),
(830, '2022_04_10_081449_create_mhp_p_v_discharges_table', 12),
(831, '2022_04_10_081743_create_mhp_vulvals_table', 12),
(832, '2022_04_10_082052_create_mhp_miscarriages_table', 12),
(833, '2022_04_10_082507_create_mhp_breast_lumps_table', 12),
(834, '2022_04_10_082926_create_mhp_breast_pains_table', 12),
(835, '2022_04_10_083332_create_mhp_breast_nipple_discharges_table', 12),
(836, '2022_04_10_083705_create_mhp_vulvas_table', 12),
(837, '2022_04_10_084306_create_mhp_pelvic_masses_table', 12),
(838, '2022_04_10_084619_create_mhp_bartholin_glandes_table', 12),
(839, '2022_04_10_084900_create_mhp_cervixes_table', 12),
(840, '2022_04_10_085134_create_mhp_c_s_t_s_table', 12),
(841, '2022_04_10_094322_create_mhp_skin_symptoms_table', 12),
(842, '2022_04_11_053638_create_mhp_skin_examinations_table', 12),
(843, '2022_04_11_062758_create_mhp_skin_exami_histories_table', 12),
(844, '2022_04_11_063121_create_mhp_skin_exami_types_table', 12),
(845, '2022_04_11_064804_create_mhp_skin_types_table', 12),
(846, '2022_04_13_083155_create_mhp_doctor_chambers_table', 12),
(847, '2022_04_13_095114_create_mhp_skin_exmi_images_table', 13),
(848, '2022_04_13_095228_create_mhp_skin_exmi_symtoms_table', 13),
(849, '2022_04_16_044900_create_mhp_flexor_digitorum_profundus_tests_table', 13),
(850, '2022_04_16_050736_create_mhp_flexor_digitorum_superficialis_tests_table', 13),
(851, '2022_04_16_065447_create_mhp_inspection_male_females_table', 13),
(852, '2022_04_16_073212_create_mhp_at90_flextion_palpations_table', 13),
(853, '2022_04_16_074055_create_mhp_at_full_flextion_palpations_table', 13),
(854, '2022_04_16_082158_create_mhp_flextion0to150_examinations_table', 13),
(855, '2022_04_17_041452_create_mhp_women_health_examis_table', 13),
(856, '2022_04_17_052838_create_mhp_women_health_exami_vulvas_table', 13),
(857, '2022_04_17_052914_create_mhp_women_health_exami_breast_nipple_discharges_table', 13),
(858, '2022_04_17_052935_create_mhp_women_health_exami_csts_table', 13),
(859, '2022_04_17_053058_create_mhp_women_health_exami_breast_lumps_table', 13),
(860, '2022_04_17_053517_create_mhp_women_health_exami_obstetrics_table', 13),
(861, '2022_04_17_053545_create_mhp_women_health_exami_cervixes_table', 13),
(862, '2022_04_17_053614_create_mhp_women_health_exami_gynecologies_table', 13),
(863, '2022_04_17_055632_create_mhp_anterior_view_knees_table', 13),
(864, '2022_04_17_060751_create_mhp_posterior_view_knees_table', 13),
(865, '2022_04_17_061136_create_mhp_lateral_view_knees_table', 13),
(866, '2022_04_17_061606_create_mhp_stance_swat_knees_table', 13),
(867, '2022_04_17_061927_create_mhp_margin_condyle_tibials_table', 13),
(868, '2022_04_18_074435_create_mhp_review_names_table', 13),
(870, '2022_04_18_091746_create_mhp_great_doc_reviews_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `mre_abnormal_breathings`
--

CREATE TABLE `mre_abnormal_breathings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `abnormalbreathing_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mre_breath_sounds`
--

CREATE TABLE `mre_breath_sounds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `breathsound_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mre_chest_expansions`
--

CREATE TABLE `mre_chest_expansions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chestexpansion_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mre_chest_shapes`
--

CREATE TABLE `mre_chest_shapes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chestshape_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mre_crepitations`
--

CREATE TABLE `mre_crepitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `crepitation_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mre_percussions`
--

CREATE TABLE `mre_percussions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `percussion_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mre_symptoms`
--

CREATE TABLE `mre_symptoms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `symptoms_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mre_vocal_fremituses`
--

CREATE TABLE `mre_vocal_fremituses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vocalfremitus_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mre_vocal_resonances`
--

CREATE TABLE `mre_vocal_resonances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vocalresonance_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mre_wheerings`
--

CREATE TABLE `mre_wheerings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wheering_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `selection_criteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ptn_blood_groups`
--

CREATE TABLE `ptn_blood_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blood_group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('dMoNBoYK0aO5ntxK5R3V3kGBqOFn5CO2waTGFwcH', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWmtRenpJcVZoRWZqcnU2aUJlN0VwOTdDNFZ5Y3YwNTZQWFFjZmk4eCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1650189337);

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `cns_cn_eights`
--
ALTER TABLE `cns_cn_eights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_cn_fives`
--
ALTER TABLE `cns_cn_fives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_cn_fours`
--
ALTER TABLE `cns_cn_fours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_cn_nines`
--
ALTER TABLE `cns_cn_nines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_cn_ones`
--
ALTER TABLE `cns_cn_ones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_cn_sevens`
--
ALTER TABLE `cns_cn_sevens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_cn_sixes`
--
ALTER TABLE `cns_cn_sixes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_cn_tens`
--
ALTER TABLE `cns_cn_tens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_cn_threes`
--
ALTER TABLE `cns_cn_threes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_cn_twos`
--
ALTER TABLE `cns_cn_twos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_drooping_corners`
--
ALTER TABLE `cns_drooping_corners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_ear_palates`
--
ALTER TABLE `cns_ear_palates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_finger_nose_tests`
--
ALTER TABLE `cns_finger_nose_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_gas_reflexes`
--
ALTER TABLE `cns_gas_reflexes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_hallpikes`
--
ALTER TABLE `cns_hallpikes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_jaw_jerks`
--
ALTER TABLE `cns_jaw_jerks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_jerk_c1_c8_s`
--
ALTER TABLE `cns_jerk_c1_c8_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_left_values`
--
ALTER TABLE `cns_left_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_looking_ups`
--
ALTER TABLE `cns_looking_ups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_neck_movements`
--
ALTER TABLE `cns_neck_movements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_picture_upper_limb_dermatomes`
--
ALTER TABLE `cns_picture_upper_limb_dermatomes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_pinnes_tests`
--
ALTER TABLE `cns_pinnes_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_powers`
--
ALTER TABLE `cns_powers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_right_values`
--
ALTER TABLE `cns_right_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_sensations`
--
ALTER TABLE `cns_sensations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_sensories`
--
ALTER TABLE `cns_sensories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_shrug_shoulders`
--
ALTER TABLE `cns_shrug_shoulders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_tasciculations`
--
ALTER TABLE `cns_tasciculations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_the_radial_nerves`
--
ALTER TABLE `cns_the_radial_nerves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_tongues`
--
ALTER TABLE `cns_tongues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_upper_limbs`
--
ALTER TABLE `cns_upper_limbs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_uvulas`
--
ALTER TABLE `cns_uvulas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cns_whisper_tests`
--
ALTER TABLE `cns_whisper_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doc_specialists`
--
ALTER TABLE `doc_specialists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doc_time_limits`
--
ALTER TABLE `doc_time_limits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doc_time_slots`
--
ALTER TABLE `doc_time_slots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ent_examinations`
--
ALTER TABLE `ent_examinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `mhe_affects`
--
ALTER TABLE `mhe_affects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhe_appearances`
--
ALTER TABLE `mhe_appearances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhe_appropritenesses`
--
ALTER TABLE `mhe_appropritenesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhe_attitude_towards_examinations`
--
ALTER TABLE `mhe_attitude_towards_examinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhe_attitute_towards`
--
ALTER TABLE `mhe_attitute_towards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhe_behaviours`
--
ALTER TABLE `mhe_behaviours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhe_moods`
--
ALTER TABLE `mhe_moods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhe_perceptuals`
--
ALTER TABLE `mhe_perceptuals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhe_speeches`
--
ALTER TABLE `mhe_speeches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_abdomens`
--
ALTER TABLE `mhp_abdomens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_advice_suggestions`
--
ALTER TABLE `mhp_advice_suggestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_allergies`
--
ALTER TABLE `mhp_allergies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_all_body_part_front_backs`
--
ALTER TABLE `mhp_all_body_part_front_backs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_anterior_views`
--
ALTER TABLE `mhp_anterior_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_anterior_view_knees`
--
ALTER TABLE `mhp_anterior_view_knees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_apex_beats`
--
ALTER TABLE `mhp_apex_beats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_appointments`
--
ALTER TABLE `mhp_appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_appointment_lengths`
--
ALTER TABLE `mhp_appointment_lengths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_appointment_schedulers`
--
ALTER TABLE `mhp_appointment_schedulers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_appointment_types`
--
ALTER TABLE `mhp_appointment_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_areolars`
--
ALTER TABLE `mhp_areolars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_arrangements`
--
ALTER TABLE `mhp_arrangements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_at90_flextion_palpations`
--
ALTER TABLE `mhp_at90_flextion_palpations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_at_full_flextion_palpations`
--
ALTER TABLE `mhp_at_full_flextion_palpations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_auto_fills`
--
ALTER TABLE `mhp_auto_fills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_banks`
--
ALTER TABLE `mhp_banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_bartholin_glandes`
--
ALTER TABLE `mhp_bartholin_glandes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_batch_nos`
--
ALTER TABLE `mhp_batch_nos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_billings`
--
ALTER TABLE `mhp_billings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_billing_providers`
--
ALTER TABLE `mhp_billing_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_birth_sexes`
--
ALTER TABLE `mhp_birth_sexes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_branches`
--
ALTER TABLE `mhp_branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_breast_lumps`
--
ALTER TABLE `mhp_breast_lumps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_breast_nipple_discharges`
--
ALTER TABLE `mhp_breast_nipple_discharges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_breast_pains`
--
ALTER TABLE `mhp_breast_pains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_bruits`
--
ALTER TABLE `mhp_bruits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_cardiovasculars`
--
ALTER TABLE `mhp_cardiovasculars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_cardiovascular_histories`
--
ALTER TABLE `mhp_cardiovascular_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_cardiovascular_others`
--
ALTER TABLE `mhp_cardiovascular_others`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_cards`
--
ALTER TABLE `mhp_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_carotids`
--
ALTER TABLE `mhp_carotids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_caruncles`
--
ALTER TABLE `mhp_caruncles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_cervixes`
--
ALTER TABLE `mhp_cervixes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_cities`
--
ALTER TABLE `mhp_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_clinical_indications`
--
ALTER TABLE `mhp_clinical_indications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_cns_cn1s`
--
ALTER TABLE `mhp_cns_cn1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_cns_cn2s`
--
ALTER TABLE `mhp_cns_cn2s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_cns_cn3s`
--
ALTER TABLE `mhp_cns_cn3s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_cns_cn4s`
--
ALTER TABLE `mhp_cns_cn4s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_cns_cn5s`
--
ALTER TABLE `mhp_cns_cn5s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_cns_cn6s`
--
ALTER TABLE `mhp_cns_cn6s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_cns_cn7s`
--
ALTER TABLE `mhp_cns_cn7s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_cns_cn8s`
--
ALTER TABLE `mhp_cns_cn8s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_cns_part1s`
--
ALTER TABLE `mhp_cns_part1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_cns_part2s`
--
ALTER TABLE `mhp_cns_part2s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_cns_upper_limbs`
--
ALTER TABLE `mhp_cns_upper_limbs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_cns_visual_fields`
--
ALTER TABLE `mhp_cns_visual_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_colors`
--
ALTER TABLE `mhp_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_color_visions`
--
ALTER TABLE `mhp_color_visions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_common_histories`
--
ALTER TABLE `mhp_common_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_contact_vias`
--
ALTER TABLE `mhp_contact_vias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_continuouses`
--
ALTER TABLE `mhp_continuouses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_coughs`
--
ALTER TABLE `mhp_coughs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_countries`
--
ALTER TABLE `mhp_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_cover_tests`
--
ALTER TABLE `mhp_cover_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_cripatation_boths`
--
ALTER TABLE `mhp_cripatation_boths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_cripatation_lefts`
--
ALTER TABLE `mhp_cripatation_lefts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_cripatation_rights`
--
ALTER TABLE `mhp_cripatation_rights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_current_smoking_histories`
--
ALTER TABLE `mhp_current_smoking_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_custom_medicines`
--
ALTER TABLE `mhp_custom_medicines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_custom_restrictions`
--
ALTER TABLE `mhp_custom_restrictions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_c_d_discs`
--
ALTER TABLE `mhp_c_d_discs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_c_s_t_s`
--
ALTER TABLE `mhp_c_s_t_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_daily_messages`
--
ALTER TABLE `mhp_daily_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_deafnesses`
--
ALTER TABLE `mhp_deafnesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_dehydrations`
--
ALTER TABLE `mhp_dehydrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_diagnoses`
--
ALTER TABLE `mhp_diagnoses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_diagnosis_actions`
--
ALTER TABLE `mhp_diagnosis_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_diagnosis_procedures`
--
ALTER TABLE `mhp_diagnosis_procedures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_diagnosis_procedure_actions`
--
ALTER TABLE `mhp_diagnosis_procedure_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_diagnosis_procedure_fors`
--
ALTER TABLE `mhp_diagnosis_procedure_fors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_diarrhoeas`
--
ALTER TABLE `mhp_diarrhoeas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_digitals`
--
ALTER TABLE `mhp_digitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_dilates`
--
ALTER TABLE `mhp_dilates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_distal_interphalangeal_joints`
--
ALTER TABLE `mhp_distal_interphalangeal_joints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_doctors`
--
ALTER TABLE `mhp_doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_doctors_academics`
--
ALTER TABLE `mhp_doctors_academics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_doctors_certificates`
--
ALTER TABLE `mhp_doctors_certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_doctors_departments`
--
ALTER TABLE `mhp_doctors_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_doctors_license_trainings`
--
ALTER TABLE `mhp_doctors_license_trainings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_doctors_masters`
--
ALTER TABLE `mhp_doctors_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_doctors_work_experiences`
--
ALTER TABLE `mhp_doctors_work_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_doctor_chambers`
--
ALTER TABLE `mhp_doctor_chambers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_doctor_fees`
--
ALTER TABLE `mhp_doctor_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_doctor_fee_names`
--
ALTER TABLE `mhp_doctor_fee_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_dorsum_of_hands`
--
ALTER TABLE `mhp_dorsum_of_hands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_dose_names`
--
ALTER TABLE `mhp_dose_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_double_visions`
--
ALTER TABLE `mhp_double_visions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_drug_generic_names`
--
ALTER TABLE `mhp_drug_generic_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_drug_names`
--
ALTER TABLE `mhp_drug_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_drug_units`
--
ALTER TABLE `mhp_drug_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_dry_retinoscopies`
--
ALTER TABLE `mhp_dry_retinoscopies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_durations`
--
ALTER TABLE `mhp_durations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_dysphagias`
--
ALTER TABLE `mhp_dysphagias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_dyspneas`
--
ALTER TABLE `mhp_dyspneas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_dyspnea_classes`
--
ALTER TABLE `mhp_dyspnea_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_ears`
--
ALTER TABLE `mhp_ears`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_ear_canals`
--
ALTER TABLE `mhp_ear_canals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_ear_discharges`
--
ALTER TABLE `mhp_ear_discharges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_ear_lesions`
--
ALTER TABLE `mhp_ear_lesions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_employees`
--
ALTER TABLE `mhp_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_employee_academics`
--
ALTER TABLE `mhp_employee_academics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_employee_certificates`
--
ALTER TABLE `mhp_employee_certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_employee_licences`
--
ALTER TABLE `mhp_employee_licences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_employee_works_and_experienses`
--
ALTER TABLE `mhp_employee_works_and_experienses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_enterior_chambers`
--
ALTER TABLE `mhp_enterior_chambers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_entrance_tests`
--
ALTER TABLE `mhp_entrance_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_ent_examinations`
--
ALTER TABLE `mhp_ent_examinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_ent_examin_ear_lesions`
--
ALTER TABLE `mhp_ent_examin_ear_lesions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_ent_examin_ent_others`
--
ALTER TABLE `mhp_ent_examin_ent_others`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_ent_others`
--
ALTER TABLE `mhp_ent_others`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_epigastrics`
--
ALTER TABLE `mhp_epigastrics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_ethnicities`
--
ALTER TABLE `mhp_ethnicities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_examinations`
--
ALTER TABLE `mhp_examinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_examination_headings`
--
ALTER TABLE `mhp_examination_headings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_exam_history_mappings`
--
ALTER TABLE `mhp_exam_history_mappings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_exam_hist_extensions`
--
ALTER TABLE `mhp_exam_hist_extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_exam_hist_select_params`
--
ALTER TABLE `mhp_exam_hist_select_params`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_exmanination_lists`
--
ALTER TABLE `mhp_exmanination_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_external_observations`
--
ALTER TABLE `mhp_external_observations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_eyemovements`
--
ALTER TABLE `mhp_eyemovements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_eye_exami_part1s`
--
ALTER TABLE `mhp_eye_exami_part1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_eye_exami_part2s`
--
ALTER TABLE `mhp_eye_exami_part2s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_eye_part1_external_observations`
--
ALTER TABLE `mhp_eye_part1_external_observations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_eye_part1_phoria_ones`
--
ALTER TABLE `mhp_eye_part1_phoria_ones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_eye_part1_phoria_twos`
--
ALTER TABLE `mhp_eye_part1_phoria_twos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_eye_part1_pursuits`
--
ALTER TABLE `mhp_eye_part1_pursuits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_eye_part1_worth4_dots`
--
ALTER TABLE `mhp_eye_part1_worth4_dots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_e_o_m_accomodations`
--
ALTER TABLE `mhp_e_o_m_accomodations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_e_o_m_convergences`
--
ALTER TABLE `mhp_e_o_m_convergences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_fingers`
--
ALTER TABLE `mhp_fingers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_flexon_tendons`
--
ALTER TABLE `mhp_flexon_tendons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_flexor_digitorum_profundus_tests`
--
ALTER TABLE `mhp_flexor_digitorum_profundus_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_flexor_digitorum_superficialis_tests`
--
ALTER TABLE `mhp_flexor_digitorum_superficialis_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_flextion0to150_examinations`
--
ALTER TABLE `mhp_flextion0to150_examinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_flores`
--
ALTER TABLE `mhp_flores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_food_names`
--
ALTER TABLE `mhp_food_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_frequencies`
--
ALTER TABLE `mhp_frequencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_frequency_names`
--
ALTER TABLE `mhp_frequency_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_frontal_lobes`
--
ALTER TABLE `mhp_frontal_lobes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_fundoscopies`
--
ALTER TABLE `mhp_fundoscopies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_gait_limpings`
--
ALTER TABLE `mhp_gait_limpings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_generals`
--
ALTER TABLE `mhp_generals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_general_histories`
--
ALTER TABLE `mhp_general_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_genito_urinaries`
--
ALTER TABLE `mhp_genito_urinaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_genito_urinary_histories`
--
ALTER TABLE `mhp_genito_urinary_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_gestros`
--
ALTER TABLE `mhp_gestros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_gestro_abdomens`
--
ALTER TABLE `mhp_gestro_abdomens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_gestro_histories`
--
ALTER TABLE `mhp_gestro_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_ghoostings`
--
ALTER TABLE `mhp_ghoostings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_given_bies`
--
ALTER TABLE `mhp_given_bies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_great_doc_auto_fills`
--
ALTER TABLE `mhp_great_doc_auto_fills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_great_doc_diagnoses`
--
ALTER TABLE `mhp_great_doc_diagnoses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_great_doc_procedures`
--
ALTER TABLE `mhp_great_doc_procedures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_great_doc_resons`
--
ALTER TABLE `mhp_great_doc_resons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_great_doc_reviews`
--
ALTER TABLE `mhp_great_doc_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_haloes`
--
ALTER TABLE `mhp_haloes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_hand_and_fingers`
--
ALTER TABLE `mhp_hand_and_fingers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_heart_sounds`
--
ALTER TABLE `mhp_heart_sounds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_hernias`
--
ALTER TABLE `mhp_hernias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_hernias_femorals`
--
ALTER TABLE `mhp_hernias_femorals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_hernias_inguinals`
--
ALTER TABLE `mhp_hernias_inguinals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_histories`
--
ALTER TABLE `mhp_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_history_examination_statuses`
--
ALTER TABLE `mhp_history_examination_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_immunisation_routes`
--
ALTER TABLE `mhp_immunisation_routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_immunisation_sites`
--
ALTER TABLE `mhp_immunisation_sites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_ingerdient_children`
--
ALTER TABLE `mhp_ingerdient_children`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_ingredients`
--
ALTER TABLE `mhp_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_inspections`
--
ALTER TABLE `mhp_inspections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_inspection_looks`
--
ALTER TABLE `mhp_inspection_looks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_inspection_look_hip_pelvis`
--
ALTER TABLE `mhp_inspection_look_hip_pelvis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_inspection_male_females`
--
ALTER TABLE `mhp_inspection_male_females`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_intercostal_spaces`
--
ALTER TABLE `mhp_intercostal_spaces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_intermittents`
--
ALTER TABLE `mhp_intermittents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_invoices`
--
ALTER TABLE `mhp_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_l1_l2_hip_flexions`
--
ALTER TABLE `mhp_l1_l2_hip_flexions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_l1_l2_sensations`
--
ALTER TABLE `mhp_l1_l2_sensations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_l3_to_l5_powers`
--
ALTER TABLE `mhp_l3_to_l5_powers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_l3_to_l5_sensations`
--
ALTER TABLE `mhp_l3_to_l5_sensations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_lateral_view_knees`
--
ALTER TABLE `mhp_lateral_view_knees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_left_supraclavicular_nodes`
--
ALTER TABLE `mhp_left_supraclavicular_nodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_lesions`
--
ALTER TABLE `mhp_lesions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_lesion_middles`
--
ALTER TABLE `mhp_lesion_middles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_lesion_rights`
--
ALTER TABLE `mhp_lesion_rights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_level_of_spine_of_scapulas`
--
ALTER TABLE `mhp_level_of_spine_of_scapulas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_lightreflexes`
--
ALTER TABLE `mhp_lightreflexes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_lumber_lordoses`
--
ALTER TABLE `mhp_lumber_lordoses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_lying_on_couches`
--
ALTER TABLE `mhp_lying_on_couches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_l_u_q_s`
--
ALTER TABLE `mhp_l_u_q_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_maddox_wings`
--
ALTER TABLE `mhp_maddox_wings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_main_body_parts`
--
ALTER TABLE `mhp_main_body_parts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_margin_condyle_tibials`
--
ALTER TABLE `mhp_margin_condyle_tibials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_mastoids`
--
ALTER TABLE `mhp_mastoids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_media_types`
--
ALTER TABLE `mhp_media_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_media_type_onlines`
--
ALTER TABLE `mhp_media_type_onlines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_medical_histories`
--
ALTER TABLE `mhp_medical_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_medicine_categories`
--
ALTER TABLE `mhp_medicine_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_mental_affects`
--
ALTER TABLE `mhp_mental_affects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_mental_appearances`
--
ALTER TABLE `mhp_mental_appearances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_mental_attitudetowardsexaminations`
--
ALTER TABLE `mhp_mental_attitudetowardsexaminations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_mental_behaviours`
--
ALTER TABLE `mhp_mental_behaviours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_mental_healths`
--
ALTER TABLE `mhp_mental_healths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_mental_histories`
--
ALTER TABLE `mhp_mental_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_mental_moods`
--
ALTER TABLE `mhp_mental_moods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_mental_perceptual_disturbances`
--
ALTER TABLE `mhp_mental_perceptual_disturbances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_mental_psq9_ques1sts`
--
ALTER TABLE `mhp_mental_psq9_ques1sts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_mental_psq9_ques2nds`
--
ALTER TABLE `mhp_mental_psq9_ques2nds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_mental_speeches`
--
ALTER TABLE `mhp_mental_speeches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_metacarpophalangeal_joints`
--
ALTER TABLE `mhp_metacarpophalangeal_joints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_metacarpophalangeal_joint_palpations`
--
ALTER TABLE `mhp_metacarpophalangeal_joint_palpations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_mid_line_crossings`
--
ALTER TABLE `mhp_mid_line_crossings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_miscarriages`
--
ALTER TABLE `mhp_miscarriages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_motors`
--
ALTER TABLE `mhp_motors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_movements`
--
ALTER TABLE `mhp_movements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_move_hip_pelvis`
--
ALTER TABLE `mhp_move_hip_pelvis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_murmurs`
--
ALTER TABLE `mhp_murmurs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_nails`
--
ALTER TABLE `mhp_nails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_nail_signs`
--
ALTER TABLE `mhp_nail_signs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_neurologicals`
--
ALTER TABLE `mhp_neurologicals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_neurological_frontal_lobes`
--
ALTER TABLE `mhp_neurological_frontal_lobes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_neurological_histories`
--
ALTER TABLE `mhp_neurological_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_neurological_occipital_lobes`
--
ALTER TABLE `mhp_neurological_occipital_lobes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_neurological_parietal_lobes`
--
ALTER TABLE `mhp_neurological_parietal_lobes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_neurological_speeches`
--
ALTER TABLE `mhp_neurological_speeches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_neurological_temporal_lobes`
--
ALTER TABLE `mhp_neurological_temporal_lobes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_neuro_opthalmologies`
--
ALTER TABLE `mhp_neuro_opthalmologies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_neuro_opthals`
--
ALTER TABLE `mhp_neuro_opthals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_non_tender_tendernesses`
--
ALTER TABLE `mhp_non_tender_tendernesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_noses`
--
ALTER TABLE `mhp_noses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_no_masses_masses`
--
ALTER TABLE `mhp_no_masses_masses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_occipital_lobes`
--
ALTER TABLE `mhp_occipital_lobes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_occupational_hazards`
--
ALTER TABLE `mhp_occupational_hazards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_occupations`
--
ALTER TABLE `mhp_occupations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_ol_factories`
--
ALTER TABLE `mhp_ol_factories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_on_shutting_eyes`
--
ALTER TABLE `mhp_on_shutting_eyes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_others`
--
ALTER TABLE `mhp_others`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_others_names`
--
ALTER TABLE `mhp_others_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_painful_arcs`
--
ALTER TABLE `mhp_painful_arcs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_pain_along_anteriors`
--
ALTER TABLE `mhp_pain_along_anteriors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_pain_into_knees`
--
ALTER TABLE `mhp_pain_into_knees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_pain_over_posteriors`
--
ALTER TABLE `mhp_pain_over_posteriors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_palpations`
--
ALTER TABLE `mhp_palpations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_papillaryoedemas`
--
ALTER TABLE `mhp_papillaryoedemas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_parietal_lobes`
--
ALTER TABLE `mhp_parietal_lobes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_past_alcohol_consumptions`
--
ALTER TABLE `mhp_past_alcohol_consumptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_patients`
--
ALTER TABLE `mhp_patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_patients_allergies`
--
ALTER TABLE `mhp_patients_allergies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_patients_family_social_history_alcohols`
--
ALTER TABLE `mhp_patients_family_social_history_alcohols`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_patients_family_social_history_tobaccos`
--
ALTER TABLE `mhp_patients_family_social_history_tobaccos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_patients_occupation_details`
--
ALTER TABLE `mhp_patients_occupation_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_patients_vital_signs`
--
ALTER TABLE `mhp_patients_vital_signs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_patterns`
--
ALTER TABLE `mhp_patterns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_payments`
--
ALTER TABLE `mhp_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_pelvic_masses`
--
ALTER TABLE `mhp_pelvic_masses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_pembertons`
--
ALTER TABLE `mhp_pembertons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_pen_grips`
--
ALTER TABLE `mhp_pen_grips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_pen_grip_rights`
--
ALTER TABLE `mhp_pen_grip_rights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_per_rectals`
--
ALTER TABLE `mhp_per_rectals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_phoria_ones`
--
ALTER TABLE `mhp_phoria_ones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_phoria_twos`
--
ALTER TABLE `mhp_phoria_twos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_posteriors`
--
ALTER TABLE `mhp_posteriors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_posterior_view_knees`
--
ALTER TABLE `mhp_posterior_view_knees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_postures`
--
ALTER TABLE `mhp_postures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_posture_thoracos`
--
ALTER TABLE `mhp_posture_thoracos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_procedures`
--
ALTER TABLE `mhp_procedures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_procedure_fees`
--
ALTER TABLE `mhp_procedure_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_proximal_interphalangeal_joints`
--
ALTER TABLE `mhp_proximal_interphalangeal_joints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_proximal_interphalangeal_palpations`
--
ALTER TABLE `mhp_proximal_interphalangeal_palpations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_pupils`
--
ALTER TABLE `mhp_pupils`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_pupils_eyes`
--
ALTER TABLE `mhp_pupils_eyes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_pursuits`
--
ALTER TABLE `mhp_pursuits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_p_h_q9_questionnaires`
--
ALTER TABLE `mhp_p_h_q9_questionnaires`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_p_h_q9_questionnaire_values`
--
ALTER TABLE `mhp_p_h_q9_questionnaire_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_p_r_bleeds`
--
ALTER TABLE `mhp_p_r_bleeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_p_v_bleedings`
--
ALTER TABLE `mhp_p_v_bleedings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_p_v_discharges`
--
ALTER TABLE `mhp_p_v_discharges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_questionnaires`
--
ALTER TABLE `mhp_questionnaires`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_radiations`
--
ALTER TABLE `mhp_radiations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_radiologies`
--
ALTER TABLE `mhp_radiologies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_radiology_centers`
--
ALTER TABLE `mhp_radiology_centers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_radiology_test_names`
--
ALTER TABLE `mhp_radiology_test_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_radio_femoral_delays`
--
ALTER TABLE `mhp_radio_femoral_delays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_reactions`
--
ALTER TABLE `mhp_reactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_rediations`
--
ALTER TABLE `mhp_rediations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_referral_follow_ups`
--
ALTER TABLE `mhp_referral_follow_ups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_religions`
--
ALTER TABLE `mhp_religions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_renal_masses`
--
ALTER TABLE `mhp_renal_masses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_renne_tests`
--
ALTER TABLE `mhp_renne_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_resisted_movements`
--
ALTER TABLE `mhp_resisted_movements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_respiratories`
--
ALTER TABLE `mhp_respiratories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_respiratory_examination_lists`
--
ALTER TABLE `mhp_respiratory_examination_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_respiratory_histories`
--
ALTER TABLE `mhp_respiratory_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_respiratory_questionnaires`
--
ALTER TABLE `mhp_respiratory_questionnaires`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_review_names`
--
ALTER TABLE `mhp_review_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_right_lumbers`
--
ALTER TABLE `mhp_right_lumbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_route_names`
--
ALTER TABLE `mhp_route_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_rxes`
--
ALTER TABLE `mhp_rxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_r_u_q_s`
--
ALTER TABLE `mhp_r_u_q_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_s1_to_s4_tests`
--
ALTER TABLE `mhp_s1_to_s4_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_saccades`
--
ALTER TABLE `mhp_saccades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_scores`
--
ALTER TABLE `mhp_scores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_selection_criterias`
--
ALTER TABLE `mhp_selection_criterias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_shapes`
--
ALTER TABLE `mhp_shapes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_shape_and_contours`
--
ALTER TABLE `mhp_shape_and_contours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_shoulder_movements`
--
ALTER TABLE `mhp_shoulder_movements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_sigmoidoscopies`
--
ALTER TABLE `mhp_sigmoidoscopies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_sigmoidoscopy_guaiac_tests`
--
ALTER TABLE `mhp_sigmoidoscopy_guaiac_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_sites`
--
ALTER TABLE `mhp_sites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_skins`
--
ALTER TABLE `mhp_skins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_skin_examinations`
--
ALTER TABLE `mhp_skin_examinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_skin_exami_histories`
--
ALTER TABLE `mhp_skin_exami_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_skin_exami_types`
--
ALTER TABLE `mhp_skin_exami_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_skin_exmi_images`
--
ALTER TABLE `mhp_skin_exmi_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_skin_exmi_symtoms`
--
ALTER TABLE `mhp_skin_exmi_symtoms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_skin_shapes`
--
ALTER TABLE `mhp_skin_shapes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_skin_symptoms`
--
ALTER TABLE `mhp_skin_symptoms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_skin_types`
--
ALTER TABLE `mhp_skin_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_sleep_apnoea_risks`
--
ALTER TABLE `mhp_sleep_apnoea_risks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_speech_nurologies`
--
ALTER TABLE `mhp_speech_nurologies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_spines`
--
ALTER TABLE `mhp_spines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_stance_swat_knees`
--
ALTER TABLE `mhp_stance_swat_knees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_states`
--
ALTER TABLE `mhp_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_statuses`
--
ALTER TABLE `mhp_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_stool_types`
--
ALTER TABLE `mhp_stool_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_sub_body_parts`
--
ALTER TABLE `mhp_sub_body_parts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_sudden_anaesthesias`
--
ALTER TABLE `mhp_sudden_anaesthesias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_swollen_eye_lids`
--
ALTER TABLE `mhp_swollen_eye_lids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_symptom_anatomies`
--
ALTER TABLE `mhp_symptom_anatomies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_temparatures`
--
ALTER TABLE `mhp_temparatures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_temporal_lobes`
--
ALTER TABLE `mhp_temporal_lobes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_tenderness_over_facet_l_r_b_thoracos`
--
ALTER TABLE `mhp_tenderness_over_facet_l_r_b_thoracos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_tenderness_over_facet_thoracos`
--
ALTER TABLE `mhp_tenderness_over_facet_thoracos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_tenders`
--
ALTER TABLE `mhp_tenders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_tender_over_spinus_process_ats`
--
ALTER TABLE `mhp_tender_over_spinus_process_ats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_tender_over_spinus_thoracos`
--
ALTER TABLE `mhp_tender_over_spinus_thoracos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_tender_tenerness_over_l1_to_l6_thoracos`
--
ALTER TABLE `mhp_tender_tenerness_over_l1_to_l6_thoracos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_tenerness_over_facet_joins`
--
ALTER TABLE `mhp_tenerness_over_facet_joins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_test_hip_pelvis`
--
ALTER TABLE `mhp_test_hip_pelvis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_test_types`
--
ALTER TABLE `mhp_test_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_thoracic_kyphoses`
--
ALTER TABLE `mhp_thoracic_kyphoses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_throats`
--
ALTER TABLE `mhp_throats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_time_setups`
--
ALTER TABLE `mhp_time_setups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_titles`
--
ALTER TABLE `mhp_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_tobacco_cost_amounts`
--
ALTER TABLE `mhp_tobacco_cost_amounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_tobacco_types`
--
ALTER TABLE `mhp_tobacco_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_tongues`
--
ALTER TABLE `mhp_tongues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_tongue_lesions`
--
ALTER TABLE `mhp_tongue_lesions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_tongue_mouths`
--
ALTER TABLE `mhp_tongue_mouths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_tonsils`
--
ALTER TABLE `mhp_tonsils`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_tunnings`
--
ALTER TABLE `mhp_tunnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_tympanic_membranes`
--
ALTER TABLE `mhp_tympanic_membranes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_ulsers`
--
ALTER TABLE `mhp_ulsers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_urine_analyses`
--
ALTER TABLE `mhp_urine_analyses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_user_self_registrations`
--
ALTER TABLE `mhp_user_self_registrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_user_types`
--
ALTER TABLE `mhp_user_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_usual_accounts`
--
ALTER TABLE `mhp_usual_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_usual_locations`
--
ALTER TABLE `mhp_usual_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_usual_providers`
--
ALTER TABLE `mhp_usual_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_visit_types`
--
ALTER TABLE `mhp_visit_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_visualacuities`
--
ALTER TABLE `mhp_visualacuities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_visualfields`
--
ALTER TABLE `mhp_visualfields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_visual_acuity_eyes`
--
ALTER TABLE `mhp_visual_acuity_eyes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_vital_signs`
--
ALTER TABLE `mhp_vital_signs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_vital_sign_units`
--
ALTER TABLE `mhp_vital_sign_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_volumes`
--
ALTER TABLE `mhp_volumes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_volume_womens`
--
ALTER TABLE `mhp_volume_womens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_vomitings`
--
ALTER TABLE `mhp_vomitings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_vulvals`
--
ALTER TABLE `mhp_vulvals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_vulvas`
--
ALTER TABLE `mhp_vulvas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_walk_on_heels`
--
ALTER TABLE `mhp_walk_on_heels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_weber_tests`
--
ALTER TABLE `mhp_weber_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_wheezing_boths`
--
ALTER TABLE `mhp_wheezing_boths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_wheezing_lefts`
--
ALTER TABLE `mhp_wheezing_lefts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_wheezing_rights`
--
ALTER TABLE `mhp_wheezing_rights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_winged_scapulas`
--
ALTER TABLE `mhp_winged_scapulas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_women_health_examis`
--
ALTER TABLE `mhp_women_health_examis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_women_health_exami_breast_lumps`
--
ALTER TABLE `mhp_women_health_exami_breast_lumps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_women_health_exami_breast_nipple_discharges`
--
ALTER TABLE `mhp_women_health_exami_breast_nipple_discharges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_women_health_exami_cervixes`
--
ALTER TABLE `mhp_women_health_exami_cervixes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_women_health_exami_csts`
--
ALTER TABLE `mhp_women_health_exami_csts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_women_health_exami_gynecologies`
--
ALTER TABLE `mhp_women_health_exami_gynecologies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_women_health_exami_obstetrics`
--
ALTER TABLE `mhp_women_health_exami_obstetrics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_women_health_exami_vulvas`
--
ALTER TABLE `mhp_women_health_exami_vulvas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_worth4_dots`
--
ALTER TABLE `mhp_worth4_dots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_wrists`
--
ALTER TABLE `mhp_wrists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_wrist_palpations`
--
ALTER TABLE `mhp_wrist_palpations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mre_abnormal_breathings`
--
ALTER TABLE `mre_abnormal_breathings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mre_breath_sounds`
--
ALTER TABLE `mre_breath_sounds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mre_chest_expansions`
--
ALTER TABLE `mre_chest_expansions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mre_chest_shapes`
--
ALTER TABLE `mre_chest_shapes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mre_crepitations`
--
ALTER TABLE `mre_crepitations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mre_percussions`
--
ALTER TABLE `mre_percussions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mre_symptoms`
--
ALTER TABLE `mre_symptoms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mre_vocal_fremituses`
--
ALTER TABLE `mre_vocal_fremituses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mre_vocal_resonances`
--
ALTER TABLE `mre_vocal_resonances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mre_wheerings`
--
ALTER TABLE `mre_wheerings`
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
-- Indexes for table `ptn_blood_groups`
--
ALTER TABLE `ptn_blood_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cns_cn_eights`
--
ALTER TABLE `cns_cn_eights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cns_cn_fives`
--
ALTER TABLE `cns_cn_fives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cns_cn_fours`
--
ALTER TABLE `cns_cn_fours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cns_cn_nines`
--
ALTER TABLE `cns_cn_nines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cns_cn_ones`
--
ALTER TABLE `cns_cn_ones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cns_cn_sevens`
--
ALTER TABLE `cns_cn_sevens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cns_cn_sixes`
--
ALTER TABLE `cns_cn_sixes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cns_cn_tens`
--
ALTER TABLE `cns_cn_tens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cns_cn_threes`
--
ALTER TABLE `cns_cn_threes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cns_cn_twos`
--
ALTER TABLE `cns_cn_twos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cns_drooping_corners`
--
ALTER TABLE `cns_drooping_corners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cns_ear_palates`
--
ALTER TABLE `cns_ear_palates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cns_finger_nose_tests`
--
ALTER TABLE `cns_finger_nose_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cns_gas_reflexes`
--
ALTER TABLE `cns_gas_reflexes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cns_hallpikes`
--
ALTER TABLE `cns_hallpikes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cns_jaw_jerks`
--
ALTER TABLE `cns_jaw_jerks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cns_jerk_c1_c8_s`
--
ALTER TABLE `cns_jerk_c1_c8_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cns_left_values`
--
ALTER TABLE `cns_left_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cns_looking_ups`
--
ALTER TABLE `cns_looking_ups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cns_neck_movements`
--
ALTER TABLE `cns_neck_movements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cns_picture_upper_limb_dermatomes`
--
ALTER TABLE `cns_picture_upper_limb_dermatomes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cns_pinnes_tests`
--
ALTER TABLE `cns_pinnes_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cns_powers`
--
ALTER TABLE `cns_powers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cns_right_values`
--
ALTER TABLE `cns_right_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cns_sensations`
--
ALTER TABLE `cns_sensations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cns_sensories`
--
ALTER TABLE `cns_sensories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cns_shrug_shoulders`
--
ALTER TABLE `cns_shrug_shoulders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cns_tasciculations`
--
ALTER TABLE `cns_tasciculations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cns_the_radial_nerves`
--
ALTER TABLE `cns_the_radial_nerves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cns_tongues`
--
ALTER TABLE `cns_tongues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cns_upper_limbs`
--
ALTER TABLE `cns_upper_limbs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cns_uvulas`
--
ALTER TABLE `cns_uvulas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cns_whisper_tests`
--
ALTER TABLE `cns_whisper_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doc_specialists`
--
ALTER TABLE `doc_specialists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doc_time_limits`
--
ALTER TABLE `doc_time_limits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doc_time_slots`
--
ALTER TABLE `doc_time_slots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ent_examinations`
--
ALTER TABLE `ent_examinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhe_affects`
--
ALTER TABLE `mhe_affects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhe_appearances`
--
ALTER TABLE `mhe_appearances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhe_appropritenesses`
--
ALTER TABLE `mhe_appropritenesses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhe_attitude_towards_examinations`
--
ALTER TABLE `mhe_attitude_towards_examinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhe_attitute_towards`
--
ALTER TABLE `mhe_attitute_towards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhe_behaviours`
--
ALTER TABLE `mhe_behaviours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhe_moods`
--
ALTER TABLE `mhe_moods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhe_perceptuals`
--
ALTER TABLE `mhe_perceptuals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhe_speeches`
--
ALTER TABLE `mhe_speeches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_abdomens`
--
ALTER TABLE `mhp_abdomens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_advice_suggestions`
--
ALTER TABLE `mhp_advice_suggestions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_allergies`
--
ALTER TABLE `mhp_allergies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_all_body_part_front_backs`
--
ALTER TABLE `mhp_all_body_part_front_backs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_anterior_views`
--
ALTER TABLE `mhp_anterior_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_anterior_view_knees`
--
ALTER TABLE `mhp_anterior_view_knees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_apex_beats`
--
ALTER TABLE `mhp_apex_beats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_appointments`
--
ALTER TABLE `mhp_appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_appointment_lengths`
--
ALTER TABLE `mhp_appointment_lengths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_appointment_schedulers`
--
ALTER TABLE `mhp_appointment_schedulers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_appointment_types`
--
ALTER TABLE `mhp_appointment_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_areolars`
--
ALTER TABLE `mhp_areolars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_arrangements`
--
ALTER TABLE `mhp_arrangements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_at90_flextion_palpations`
--
ALTER TABLE `mhp_at90_flextion_palpations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_at_full_flextion_palpations`
--
ALTER TABLE `mhp_at_full_flextion_palpations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_auto_fills`
--
ALTER TABLE `mhp_auto_fills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_banks`
--
ALTER TABLE `mhp_banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_bartholin_glandes`
--
ALTER TABLE `mhp_bartholin_glandes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_batch_nos`
--
ALTER TABLE `mhp_batch_nos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_billings`
--
ALTER TABLE `mhp_billings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_billing_providers`
--
ALTER TABLE `mhp_billing_providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_birth_sexes`
--
ALTER TABLE `mhp_birth_sexes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_branches`
--
ALTER TABLE `mhp_branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_breast_lumps`
--
ALTER TABLE `mhp_breast_lumps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_breast_nipple_discharges`
--
ALTER TABLE `mhp_breast_nipple_discharges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_breast_pains`
--
ALTER TABLE `mhp_breast_pains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_bruits`
--
ALTER TABLE `mhp_bruits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_cardiovasculars`
--
ALTER TABLE `mhp_cardiovasculars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_cardiovascular_histories`
--
ALTER TABLE `mhp_cardiovascular_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_cardiovascular_others`
--
ALTER TABLE `mhp_cardiovascular_others`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_cards`
--
ALTER TABLE `mhp_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_carotids`
--
ALTER TABLE `mhp_carotids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_caruncles`
--
ALTER TABLE `mhp_caruncles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_cervixes`
--
ALTER TABLE `mhp_cervixes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_cities`
--
ALTER TABLE `mhp_cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_clinical_indications`
--
ALTER TABLE `mhp_clinical_indications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_cns_cn1s`
--
ALTER TABLE `mhp_cns_cn1s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_cns_cn2s`
--
ALTER TABLE `mhp_cns_cn2s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_cns_cn3s`
--
ALTER TABLE `mhp_cns_cn3s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_cns_cn4s`
--
ALTER TABLE `mhp_cns_cn4s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_cns_cn5s`
--
ALTER TABLE `mhp_cns_cn5s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_cns_cn6s`
--
ALTER TABLE `mhp_cns_cn6s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_cns_cn7s`
--
ALTER TABLE `mhp_cns_cn7s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_cns_cn8s`
--
ALTER TABLE `mhp_cns_cn8s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_cns_part1s`
--
ALTER TABLE `mhp_cns_part1s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_cns_part2s`
--
ALTER TABLE `mhp_cns_part2s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_cns_upper_limbs`
--
ALTER TABLE `mhp_cns_upper_limbs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_cns_visual_fields`
--
ALTER TABLE `mhp_cns_visual_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_colors`
--
ALTER TABLE `mhp_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_color_visions`
--
ALTER TABLE `mhp_color_visions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_common_histories`
--
ALTER TABLE `mhp_common_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_contact_vias`
--
ALTER TABLE `mhp_contact_vias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_continuouses`
--
ALTER TABLE `mhp_continuouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_coughs`
--
ALTER TABLE `mhp_coughs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_countries`
--
ALTER TABLE `mhp_countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_cover_tests`
--
ALTER TABLE `mhp_cover_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_cripatation_boths`
--
ALTER TABLE `mhp_cripatation_boths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_cripatation_lefts`
--
ALTER TABLE `mhp_cripatation_lefts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_cripatation_rights`
--
ALTER TABLE `mhp_cripatation_rights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_current_smoking_histories`
--
ALTER TABLE `mhp_current_smoking_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_custom_medicines`
--
ALTER TABLE `mhp_custom_medicines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_custom_restrictions`
--
ALTER TABLE `mhp_custom_restrictions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_c_d_discs`
--
ALTER TABLE `mhp_c_d_discs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_c_s_t_s`
--
ALTER TABLE `mhp_c_s_t_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_daily_messages`
--
ALTER TABLE `mhp_daily_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_deafnesses`
--
ALTER TABLE `mhp_deafnesses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_dehydrations`
--
ALTER TABLE `mhp_dehydrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_diagnoses`
--
ALTER TABLE `mhp_diagnoses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_diagnosis_actions`
--
ALTER TABLE `mhp_diagnosis_actions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_diagnosis_procedures`
--
ALTER TABLE `mhp_diagnosis_procedures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_diagnosis_procedure_actions`
--
ALTER TABLE `mhp_diagnosis_procedure_actions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_diagnosis_procedure_fors`
--
ALTER TABLE `mhp_diagnosis_procedure_fors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_diarrhoeas`
--
ALTER TABLE `mhp_diarrhoeas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_digitals`
--
ALTER TABLE `mhp_digitals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_dilates`
--
ALTER TABLE `mhp_dilates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_distal_interphalangeal_joints`
--
ALTER TABLE `mhp_distal_interphalangeal_joints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_doctors`
--
ALTER TABLE `mhp_doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_doctors_academics`
--
ALTER TABLE `mhp_doctors_academics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_doctors_certificates`
--
ALTER TABLE `mhp_doctors_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_doctors_departments`
--
ALTER TABLE `mhp_doctors_departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_doctors_license_trainings`
--
ALTER TABLE `mhp_doctors_license_trainings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_doctors_masters`
--
ALTER TABLE `mhp_doctors_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_doctors_work_experiences`
--
ALTER TABLE `mhp_doctors_work_experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_doctor_chambers`
--
ALTER TABLE `mhp_doctor_chambers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `mhp_doctor_fees`
--
ALTER TABLE `mhp_doctor_fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_doctor_fee_names`
--
ALTER TABLE `mhp_doctor_fee_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_dorsum_of_hands`
--
ALTER TABLE `mhp_dorsum_of_hands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_dose_names`
--
ALTER TABLE `mhp_dose_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_double_visions`
--
ALTER TABLE `mhp_double_visions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_drug_generic_names`
--
ALTER TABLE `mhp_drug_generic_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_drug_names`
--
ALTER TABLE `mhp_drug_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_drug_units`
--
ALTER TABLE `mhp_drug_units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_dry_retinoscopies`
--
ALTER TABLE `mhp_dry_retinoscopies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_durations`
--
ALTER TABLE `mhp_durations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_dysphagias`
--
ALTER TABLE `mhp_dysphagias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_dyspneas`
--
ALTER TABLE `mhp_dyspneas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_dyspnea_classes`
--
ALTER TABLE `mhp_dyspnea_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_ears`
--
ALTER TABLE `mhp_ears`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_ear_canals`
--
ALTER TABLE `mhp_ear_canals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_ear_discharges`
--
ALTER TABLE `mhp_ear_discharges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_ear_lesions`
--
ALTER TABLE `mhp_ear_lesions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_employees`
--
ALTER TABLE `mhp_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_employee_academics`
--
ALTER TABLE `mhp_employee_academics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_employee_certificates`
--
ALTER TABLE `mhp_employee_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_employee_licences`
--
ALTER TABLE `mhp_employee_licences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_employee_works_and_experienses`
--
ALTER TABLE `mhp_employee_works_and_experienses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_enterior_chambers`
--
ALTER TABLE `mhp_enterior_chambers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_entrance_tests`
--
ALTER TABLE `mhp_entrance_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_ent_examinations`
--
ALTER TABLE `mhp_ent_examinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_ent_examin_ear_lesions`
--
ALTER TABLE `mhp_ent_examin_ear_lesions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_ent_examin_ent_others`
--
ALTER TABLE `mhp_ent_examin_ent_others`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_ent_others`
--
ALTER TABLE `mhp_ent_others`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_epigastrics`
--
ALTER TABLE `mhp_epigastrics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_ethnicities`
--
ALTER TABLE `mhp_ethnicities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_examinations`
--
ALTER TABLE `mhp_examinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_examination_headings`
--
ALTER TABLE `mhp_examination_headings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_exam_history_mappings`
--
ALTER TABLE `mhp_exam_history_mappings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_exam_hist_extensions`
--
ALTER TABLE `mhp_exam_hist_extensions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_exam_hist_select_params`
--
ALTER TABLE `mhp_exam_hist_select_params`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_exmanination_lists`
--
ALTER TABLE `mhp_exmanination_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_external_observations`
--
ALTER TABLE `mhp_external_observations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_eyemovements`
--
ALTER TABLE `mhp_eyemovements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_eye_exami_part1s`
--
ALTER TABLE `mhp_eye_exami_part1s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_eye_exami_part2s`
--
ALTER TABLE `mhp_eye_exami_part2s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_eye_part1_external_observations`
--
ALTER TABLE `mhp_eye_part1_external_observations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_eye_part1_phoria_ones`
--
ALTER TABLE `mhp_eye_part1_phoria_ones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_eye_part1_phoria_twos`
--
ALTER TABLE `mhp_eye_part1_phoria_twos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_eye_part1_pursuits`
--
ALTER TABLE `mhp_eye_part1_pursuits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_eye_part1_worth4_dots`
--
ALTER TABLE `mhp_eye_part1_worth4_dots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_e_o_m_accomodations`
--
ALTER TABLE `mhp_e_o_m_accomodations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_e_o_m_convergences`
--
ALTER TABLE `mhp_e_o_m_convergences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_fingers`
--
ALTER TABLE `mhp_fingers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_flexon_tendons`
--
ALTER TABLE `mhp_flexon_tendons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_flexor_digitorum_profundus_tests`
--
ALTER TABLE `mhp_flexor_digitorum_profundus_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_flexor_digitorum_superficialis_tests`
--
ALTER TABLE `mhp_flexor_digitorum_superficialis_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_flextion0to150_examinations`
--
ALTER TABLE `mhp_flextion0to150_examinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_flores`
--
ALTER TABLE `mhp_flores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_food_names`
--
ALTER TABLE `mhp_food_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_frequencies`
--
ALTER TABLE `mhp_frequencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_frequency_names`
--
ALTER TABLE `mhp_frequency_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_frontal_lobes`
--
ALTER TABLE `mhp_frontal_lobes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_fundoscopies`
--
ALTER TABLE `mhp_fundoscopies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_gait_limpings`
--
ALTER TABLE `mhp_gait_limpings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_generals`
--
ALTER TABLE `mhp_generals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_general_histories`
--
ALTER TABLE `mhp_general_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_genito_urinaries`
--
ALTER TABLE `mhp_genito_urinaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_genito_urinary_histories`
--
ALTER TABLE `mhp_genito_urinary_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_gestros`
--
ALTER TABLE `mhp_gestros`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_gestro_abdomens`
--
ALTER TABLE `mhp_gestro_abdomens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_gestro_histories`
--
ALTER TABLE `mhp_gestro_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_ghoostings`
--
ALTER TABLE `mhp_ghoostings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_given_bies`
--
ALTER TABLE `mhp_given_bies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_great_doc_auto_fills`
--
ALTER TABLE `mhp_great_doc_auto_fills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_great_doc_diagnoses`
--
ALTER TABLE `mhp_great_doc_diagnoses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_great_doc_procedures`
--
ALTER TABLE `mhp_great_doc_procedures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_great_doc_resons`
--
ALTER TABLE `mhp_great_doc_resons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_great_doc_reviews`
--
ALTER TABLE `mhp_great_doc_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_haloes`
--
ALTER TABLE `mhp_haloes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_hand_and_fingers`
--
ALTER TABLE `mhp_hand_and_fingers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_heart_sounds`
--
ALTER TABLE `mhp_heart_sounds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_hernias`
--
ALTER TABLE `mhp_hernias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_hernias_femorals`
--
ALTER TABLE `mhp_hernias_femorals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_hernias_inguinals`
--
ALTER TABLE `mhp_hernias_inguinals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_histories`
--
ALTER TABLE `mhp_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_history_examination_statuses`
--
ALTER TABLE `mhp_history_examination_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_immunisation_routes`
--
ALTER TABLE `mhp_immunisation_routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_immunisation_sites`
--
ALTER TABLE `mhp_immunisation_sites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_ingerdient_children`
--
ALTER TABLE `mhp_ingerdient_children`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_ingredients`
--
ALTER TABLE `mhp_ingredients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_inspections`
--
ALTER TABLE `mhp_inspections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_inspection_looks`
--
ALTER TABLE `mhp_inspection_looks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_inspection_look_hip_pelvis`
--
ALTER TABLE `mhp_inspection_look_hip_pelvis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_inspection_male_females`
--
ALTER TABLE `mhp_inspection_male_females`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_intercostal_spaces`
--
ALTER TABLE `mhp_intercostal_spaces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_intermittents`
--
ALTER TABLE `mhp_intermittents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_invoices`
--
ALTER TABLE `mhp_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_l1_l2_hip_flexions`
--
ALTER TABLE `mhp_l1_l2_hip_flexions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_l1_l2_sensations`
--
ALTER TABLE `mhp_l1_l2_sensations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_l3_to_l5_powers`
--
ALTER TABLE `mhp_l3_to_l5_powers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_l3_to_l5_sensations`
--
ALTER TABLE `mhp_l3_to_l5_sensations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_lateral_view_knees`
--
ALTER TABLE `mhp_lateral_view_knees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_left_supraclavicular_nodes`
--
ALTER TABLE `mhp_left_supraclavicular_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_lesions`
--
ALTER TABLE `mhp_lesions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_lesion_middles`
--
ALTER TABLE `mhp_lesion_middles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_lesion_rights`
--
ALTER TABLE `mhp_lesion_rights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_level_of_spine_of_scapulas`
--
ALTER TABLE `mhp_level_of_spine_of_scapulas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_lightreflexes`
--
ALTER TABLE `mhp_lightreflexes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_lumber_lordoses`
--
ALTER TABLE `mhp_lumber_lordoses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_lying_on_couches`
--
ALTER TABLE `mhp_lying_on_couches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_l_u_q_s`
--
ALTER TABLE `mhp_l_u_q_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_maddox_wings`
--
ALTER TABLE `mhp_maddox_wings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_main_body_parts`
--
ALTER TABLE `mhp_main_body_parts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_margin_condyle_tibials`
--
ALTER TABLE `mhp_margin_condyle_tibials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_mastoids`
--
ALTER TABLE `mhp_mastoids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_media_types`
--
ALTER TABLE `mhp_media_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_media_type_onlines`
--
ALTER TABLE `mhp_media_type_onlines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_medical_histories`
--
ALTER TABLE `mhp_medical_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_medicine_categories`
--
ALTER TABLE `mhp_medicine_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_mental_affects`
--
ALTER TABLE `mhp_mental_affects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_mental_appearances`
--
ALTER TABLE `mhp_mental_appearances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_mental_attitudetowardsexaminations`
--
ALTER TABLE `mhp_mental_attitudetowardsexaminations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_mental_behaviours`
--
ALTER TABLE `mhp_mental_behaviours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_mental_healths`
--
ALTER TABLE `mhp_mental_healths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_mental_histories`
--
ALTER TABLE `mhp_mental_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_mental_moods`
--
ALTER TABLE `mhp_mental_moods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_mental_perceptual_disturbances`
--
ALTER TABLE `mhp_mental_perceptual_disturbances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_mental_psq9_ques1sts`
--
ALTER TABLE `mhp_mental_psq9_ques1sts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_mental_psq9_ques2nds`
--
ALTER TABLE `mhp_mental_psq9_ques2nds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_mental_speeches`
--
ALTER TABLE `mhp_mental_speeches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_metacarpophalangeal_joints`
--
ALTER TABLE `mhp_metacarpophalangeal_joints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_metacarpophalangeal_joint_palpations`
--
ALTER TABLE `mhp_metacarpophalangeal_joint_palpations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_mid_line_crossings`
--
ALTER TABLE `mhp_mid_line_crossings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_miscarriages`
--
ALTER TABLE `mhp_miscarriages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_motors`
--
ALTER TABLE `mhp_motors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_movements`
--
ALTER TABLE `mhp_movements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_move_hip_pelvis`
--
ALTER TABLE `mhp_move_hip_pelvis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_murmurs`
--
ALTER TABLE `mhp_murmurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_nails`
--
ALTER TABLE `mhp_nails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_nail_signs`
--
ALTER TABLE `mhp_nail_signs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_neurologicals`
--
ALTER TABLE `mhp_neurologicals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_neurological_frontal_lobes`
--
ALTER TABLE `mhp_neurological_frontal_lobes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_neurological_histories`
--
ALTER TABLE `mhp_neurological_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_neurological_occipital_lobes`
--
ALTER TABLE `mhp_neurological_occipital_lobes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_neurological_parietal_lobes`
--
ALTER TABLE `mhp_neurological_parietal_lobes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_neurological_speeches`
--
ALTER TABLE `mhp_neurological_speeches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_neurological_temporal_lobes`
--
ALTER TABLE `mhp_neurological_temporal_lobes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_neuro_opthalmologies`
--
ALTER TABLE `mhp_neuro_opthalmologies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_neuro_opthals`
--
ALTER TABLE `mhp_neuro_opthals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_non_tender_tendernesses`
--
ALTER TABLE `mhp_non_tender_tendernesses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_noses`
--
ALTER TABLE `mhp_noses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_no_masses_masses`
--
ALTER TABLE `mhp_no_masses_masses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_occipital_lobes`
--
ALTER TABLE `mhp_occipital_lobes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_occupational_hazards`
--
ALTER TABLE `mhp_occupational_hazards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_occupations`
--
ALTER TABLE `mhp_occupations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_ol_factories`
--
ALTER TABLE `mhp_ol_factories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_on_shutting_eyes`
--
ALTER TABLE `mhp_on_shutting_eyes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_others`
--
ALTER TABLE `mhp_others`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_others_names`
--
ALTER TABLE `mhp_others_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_painful_arcs`
--
ALTER TABLE `mhp_painful_arcs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_pain_along_anteriors`
--
ALTER TABLE `mhp_pain_along_anteriors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_pain_into_knees`
--
ALTER TABLE `mhp_pain_into_knees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_pain_over_posteriors`
--
ALTER TABLE `mhp_pain_over_posteriors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_palpations`
--
ALTER TABLE `mhp_palpations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_papillaryoedemas`
--
ALTER TABLE `mhp_papillaryoedemas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_parietal_lobes`
--
ALTER TABLE `mhp_parietal_lobes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_past_alcohol_consumptions`
--
ALTER TABLE `mhp_past_alcohol_consumptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_patients`
--
ALTER TABLE `mhp_patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_patients_allergies`
--
ALTER TABLE `mhp_patients_allergies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_patients_family_social_history_alcohols`
--
ALTER TABLE `mhp_patients_family_social_history_alcohols`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_patients_family_social_history_tobaccos`
--
ALTER TABLE `mhp_patients_family_social_history_tobaccos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_patients_occupation_details`
--
ALTER TABLE `mhp_patients_occupation_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_patients_vital_signs`
--
ALTER TABLE `mhp_patients_vital_signs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_patterns`
--
ALTER TABLE `mhp_patterns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_payments`
--
ALTER TABLE `mhp_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_pelvic_masses`
--
ALTER TABLE `mhp_pelvic_masses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_pembertons`
--
ALTER TABLE `mhp_pembertons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_pen_grips`
--
ALTER TABLE `mhp_pen_grips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_pen_grip_rights`
--
ALTER TABLE `mhp_pen_grip_rights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_per_rectals`
--
ALTER TABLE `mhp_per_rectals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_phoria_ones`
--
ALTER TABLE `mhp_phoria_ones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_phoria_twos`
--
ALTER TABLE `mhp_phoria_twos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_posteriors`
--
ALTER TABLE `mhp_posteriors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_posterior_view_knees`
--
ALTER TABLE `mhp_posterior_view_knees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_postures`
--
ALTER TABLE `mhp_postures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_posture_thoracos`
--
ALTER TABLE `mhp_posture_thoracos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_procedures`
--
ALTER TABLE `mhp_procedures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_procedure_fees`
--
ALTER TABLE `mhp_procedure_fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_proximal_interphalangeal_joints`
--
ALTER TABLE `mhp_proximal_interphalangeal_joints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_proximal_interphalangeal_palpations`
--
ALTER TABLE `mhp_proximal_interphalangeal_palpations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_pupils`
--
ALTER TABLE `mhp_pupils`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_pupils_eyes`
--
ALTER TABLE `mhp_pupils_eyes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_pursuits`
--
ALTER TABLE `mhp_pursuits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_p_h_q9_questionnaires`
--
ALTER TABLE `mhp_p_h_q9_questionnaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_p_h_q9_questionnaire_values`
--
ALTER TABLE `mhp_p_h_q9_questionnaire_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_p_r_bleeds`
--
ALTER TABLE `mhp_p_r_bleeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_p_v_bleedings`
--
ALTER TABLE `mhp_p_v_bleedings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_p_v_discharges`
--
ALTER TABLE `mhp_p_v_discharges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_questionnaires`
--
ALTER TABLE `mhp_questionnaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_radiations`
--
ALTER TABLE `mhp_radiations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_radiologies`
--
ALTER TABLE `mhp_radiologies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mhp_radiology_centers`
--
ALTER TABLE `mhp_radiology_centers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_radiology_test_names`
--
ALTER TABLE `mhp_radiology_test_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_radio_femoral_delays`
--
ALTER TABLE `mhp_radio_femoral_delays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_reactions`
--
ALTER TABLE `mhp_reactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_rediations`
--
ALTER TABLE `mhp_rediations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_referral_follow_ups`
--
ALTER TABLE `mhp_referral_follow_ups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_religions`
--
ALTER TABLE `mhp_religions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_renal_masses`
--
ALTER TABLE `mhp_renal_masses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_renne_tests`
--
ALTER TABLE `mhp_renne_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_resisted_movements`
--
ALTER TABLE `mhp_resisted_movements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_respiratories`
--
ALTER TABLE `mhp_respiratories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_respiratory_examination_lists`
--
ALTER TABLE `mhp_respiratory_examination_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_respiratory_histories`
--
ALTER TABLE `mhp_respiratory_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_respiratory_questionnaires`
--
ALTER TABLE `mhp_respiratory_questionnaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_review_names`
--
ALTER TABLE `mhp_review_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_right_lumbers`
--
ALTER TABLE `mhp_right_lumbers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_route_names`
--
ALTER TABLE `mhp_route_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_rxes`
--
ALTER TABLE `mhp_rxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_r_u_q_s`
--
ALTER TABLE `mhp_r_u_q_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_s1_to_s4_tests`
--
ALTER TABLE `mhp_s1_to_s4_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_saccades`
--
ALTER TABLE `mhp_saccades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_scores`
--
ALTER TABLE `mhp_scores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_selection_criterias`
--
ALTER TABLE `mhp_selection_criterias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_shapes`
--
ALTER TABLE `mhp_shapes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_shape_and_contours`
--
ALTER TABLE `mhp_shape_and_contours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_shoulder_movements`
--
ALTER TABLE `mhp_shoulder_movements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_sigmoidoscopies`
--
ALTER TABLE `mhp_sigmoidoscopies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_sigmoidoscopy_guaiac_tests`
--
ALTER TABLE `mhp_sigmoidoscopy_guaiac_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_sites`
--
ALTER TABLE `mhp_sites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_skins`
--
ALTER TABLE `mhp_skins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_skin_examinations`
--
ALTER TABLE `mhp_skin_examinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_skin_exami_histories`
--
ALTER TABLE `mhp_skin_exami_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_skin_exami_types`
--
ALTER TABLE `mhp_skin_exami_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_skin_exmi_images`
--
ALTER TABLE `mhp_skin_exmi_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_skin_exmi_symtoms`
--
ALTER TABLE `mhp_skin_exmi_symtoms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_skin_shapes`
--
ALTER TABLE `mhp_skin_shapes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_skin_symptoms`
--
ALTER TABLE `mhp_skin_symptoms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_skin_types`
--
ALTER TABLE `mhp_skin_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_sleep_apnoea_risks`
--
ALTER TABLE `mhp_sleep_apnoea_risks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_speech_nurologies`
--
ALTER TABLE `mhp_speech_nurologies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_spines`
--
ALTER TABLE `mhp_spines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_stance_swat_knees`
--
ALTER TABLE `mhp_stance_swat_knees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_states`
--
ALTER TABLE `mhp_states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_statuses`
--
ALTER TABLE `mhp_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_stool_types`
--
ALTER TABLE `mhp_stool_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_sub_body_parts`
--
ALTER TABLE `mhp_sub_body_parts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_sudden_anaesthesias`
--
ALTER TABLE `mhp_sudden_anaesthesias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_swollen_eye_lids`
--
ALTER TABLE `mhp_swollen_eye_lids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_symptom_anatomies`
--
ALTER TABLE `mhp_symptom_anatomies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_temparatures`
--
ALTER TABLE `mhp_temparatures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_temporal_lobes`
--
ALTER TABLE `mhp_temporal_lobes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_tenderness_over_facet_l_r_b_thoracos`
--
ALTER TABLE `mhp_tenderness_over_facet_l_r_b_thoracos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_tenderness_over_facet_thoracos`
--
ALTER TABLE `mhp_tenderness_over_facet_thoracos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_tenders`
--
ALTER TABLE `mhp_tenders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_tender_over_spinus_process_ats`
--
ALTER TABLE `mhp_tender_over_spinus_process_ats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_tender_over_spinus_thoracos`
--
ALTER TABLE `mhp_tender_over_spinus_thoracos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_tender_tenerness_over_l1_to_l6_thoracos`
--
ALTER TABLE `mhp_tender_tenerness_over_l1_to_l6_thoracos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_tenerness_over_facet_joins`
--
ALTER TABLE `mhp_tenerness_over_facet_joins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_test_hip_pelvis`
--
ALTER TABLE `mhp_test_hip_pelvis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_test_types`
--
ALTER TABLE `mhp_test_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_thoracic_kyphoses`
--
ALTER TABLE `mhp_thoracic_kyphoses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_throats`
--
ALTER TABLE `mhp_throats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_time_setups`
--
ALTER TABLE `mhp_time_setups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_titles`
--
ALTER TABLE `mhp_titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_tobacco_cost_amounts`
--
ALTER TABLE `mhp_tobacco_cost_amounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_tobacco_types`
--
ALTER TABLE `mhp_tobacco_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_tongues`
--
ALTER TABLE `mhp_tongues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_tongue_lesions`
--
ALTER TABLE `mhp_tongue_lesions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_tongue_mouths`
--
ALTER TABLE `mhp_tongue_mouths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_tonsils`
--
ALTER TABLE `mhp_tonsils`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_tunnings`
--
ALTER TABLE `mhp_tunnings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_tympanic_membranes`
--
ALTER TABLE `mhp_tympanic_membranes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_ulsers`
--
ALTER TABLE `mhp_ulsers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_urine_analyses`
--
ALTER TABLE `mhp_urine_analyses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_user_self_registrations`
--
ALTER TABLE `mhp_user_self_registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_user_types`
--
ALTER TABLE `mhp_user_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_usual_accounts`
--
ALTER TABLE `mhp_usual_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_usual_locations`
--
ALTER TABLE `mhp_usual_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_usual_providers`
--
ALTER TABLE `mhp_usual_providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_visit_types`
--
ALTER TABLE `mhp_visit_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_visualacuities`
--
ALTER TABLE `mhp_visualacuities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_visualfields`
--
ALTER TABLE `mhp_visualfields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_visual_acuity_eyes`
--
ALTER TABLE `mhp_visual_acuity_eyes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_vital_signs`
--
ALTER TABLE `mhp_vital_signs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_vital_sign_units`
--
ALTER TABLE `mhp_vital_sign_units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_volumes`
--
ALTER TABLE `mhp_volumes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_volume_womens`
--
ALTER TABLE `mhp_volume_womens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_vomitings`
--
ALTER TABLE `mhp_vomitings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_vulvals`
--
ALTER TABLE `mhp_vulvals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_vulvas`
--
ALTER TABLE `mhp_vulvas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_walk_on_heels`
--
ALTER TABLE `mhp_walk_on_heels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_weber_tests`
--
ALTER TABLE `mhp_weber_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_wheezing_boths`
--
ALTER TABLE `mhp_wheezing_boths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_wheezing_lefts`
--
ALTER TABLE `mhp_wheezing_lefts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_wheezing_rights`
--
ALTER TABLE `mhp_wheezing_rights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_winged_scapulas`
--
ALTER TABLE `mhp_winged_scapulas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_women_health_examis`
--
ALTER TABLE `mhp_women_health_examis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_women_health_exami_breast_lumps`
--
ALTER TABLE `mhp_women_health_exami_breast_lumps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_women_health_exami_breast_nipple_discharges`
--
ALTER TABLE `mhp_women_health_exami_breast_nipple_discharges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_women_health_exami_cervixes`
--
ALTER TABLE `mhp_women_health_exami_cervixes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_women_health_exami_csts`
--
ALTER TABLE `mhp_women_health_exami_csts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_women_health_exami_gynecologies`
--
ALTER TABLE `mhp_women_health_exami_gynecologies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_women_health_exami_obstetrics`
--
ALTER TABLE `mhp_women_health_exami_obstetrics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_women_health_exami_vulvas`
--
ALTER TABLE `mhp_women_health_exami_vulvas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_worth4_dots`
--
ALTER TABLE `mhp_worth4_dots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_wrists`
--
ALTER TABLE `mhp_wrists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_wrist_palpations`
--
ALTER TABLE `mhp_wrist_palpations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=871;

--
-- AUTO_INCREMENT for table `mre_abnormal_breathings`
--
ALTER TABLE `mre_abnormal_breathings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mre_breath_sounds`
--
ALTER TABLE `mre_breath_sounds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mre_chest_expansions`
--
ALTER TABLE `mre_chest_expansions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mre_chest_shapes`
--
ALTER TABLE `mre_chest_shapes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mre_crepitations`
--
ALTER TABLE `mre_crepitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mre_percussions`
--
ALTER TABLE `mre_percussions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mre_symptoms`
--
ALTER TABLE `mre_symptoms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mre_vocal_fremituses`
--
ALTER TABLE `mre_vocal_fremituses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mre_vocal_resonances`
--
ALTER TABLE `mre_vocal_resonances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mre_wheerings`
--
ALTER TABLE `mre_wheerings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ptn_blood_groups`
--
ALTER TABLE `ptn_blood_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
