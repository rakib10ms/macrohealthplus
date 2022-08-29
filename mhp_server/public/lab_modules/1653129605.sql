-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2022 at 11:32 AM
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

--
-- Dumping data for table `cns_sensations`
--

INSERT INTO `cns_sensations` (`id`, `sensation_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Present', 1, 'single', 0, NULL, NULL, '2022-03-10 01:17:37', '2022-03-10 01:17:37'),
(2, 'Absent', 1, 'multiple', 0, NULL, NULL, '2022-03-10 01:17:48', '2022-03-10 01:17:48');

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

--
-- Dumping data for table `cns_shrug_shoulders`
--

INSERT INTO `cns_shrug_shoulders` (`id`, `shrugshoulder_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Normal', 1, 'multiple', 0, NULL, NULL, '2022-03-08 04:08:43', '2022-03-08 04:08:43'),
(2, 'Weaker Right', 1, 'single', 0, NULL, NULL, '2022-03-08 04:08:53', '2022-03-08 04:08:53'),
(3, 'Weaker Left', 1, 'multiple', 0, NULL, NULL, '2022-03-08 04:09:06', '2022-03-08 04:09:06');

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

--
-- Dumping data for table `cns_the_radial_nerves`
--

INSERT INTO `cns_the_radial_nerves` (`id`, `TheRadialNerve_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Lower lesion : Wrist Drop', 0, NULL, NULL, '2022-03-15 00:02:48', '2022-03-15 00:02:48'),
(2, 'Upper lesion : Unable to elbow extension', 0, NULL, NULL, '2022-03-15 00:02:56', '2022-03-15 00:02:56');

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

--
-- Dumping data for table `cns_tongues`
--

INSERT INTO `cns_tongues` (`id`, `tongue_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Normal', 1, 'single', 0, NULL, NULL, '2022-03-11 22:42:21', '2022-03-11 22:42:21'),
(2, 'Weaker Right', 1, 'multiple', 0, NULL, NULL, '2022-03-11 22:42:33', '2022-03-11 22:42:33'),
(3, 'Weaker Left', 1, 'single', 0, NULL, NULL, '2022-03-11 22:42:46', '2022-03-11 22:42:46');

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

--
-- Dumping data for table `cns_upper_limbs`
--

INSERT INTO `cns_upper_limbs` (`id`, `UpperLimb_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Fasciculation', 0, NULL, NULL, '2022-03-14 01:16:51', '2022-03-14 01:16:51'),
(2, 'Cogwheel Rigidity', 0, NULL, NULL, '2022-03-14 01:16:58', '2022-03-14 01:16:58'),
(3, 'Arm Numbness', 0, NULL, NULL, '2022-03-14 01:17:05', '2022-03-14 01:17:05'),
(4, 'Essential Tremor', 0, NULL, NULL, '2022-03-14 01:17:13', '2022-03-14 01:17:13'),
(5, 'FasciculArm Weaknessation', 0, NULL, NULL, '2022-03-14 01:17:23', '2022-03-14 01:17:23'),
(6, 'Intention Tremor', 0, NULL, NULL, '2022-03-14 01:17:31', '2022-03-14 01:17:31'),
(7, 'Leg weakness', 0, NULL, NULL, '2022-03-14 01:17:40', '2022-03-14 01:17:40'),
(8, 'Foot drop', 0, NULL, NULL, '2022-03-14 01:17:49', '2022-03-14 01:17:49');

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

--
-- Dumping data for table `cns_uvulas`
--

INSERT INTO `cns_uvulas` (`id`, `uvula_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Central', 1, 'single', 0, NULL, NULL, '2022-03-10 01:11:53', '2022-03-10 01:11:53'),
(2, 'Deviate to Left', 1, 'multiple', 0, NULL, NULL, '2022-03-10 01:12:02', '2022-03-10 01:12:02'),
(3, 'Deviate to Right', 1, 'single', 0, NULL, NULL, '2022-03-10 01:12:13', '2022-03-10 01:12:13');

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

--
-- Dumping data for table `cns_whisper_tests`
--

INSERT INTO `cns_whisper_tests` (`id`, `whispertest_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Positive- Right', 1, 'single', 0, NULL, NULL, '2022-03-08 04:26:38', '2022-03-08 04:26:38'),
(2, 'Positive- Left', 1, 'multiple', 0, NULL, NULL, '2022-03-08 04:26:50', '2022-03-08 04:26:50'),
(3, 'Negative- Right', 1, 'single', 0, NULL, NULL, '2022-03-08 04:27:02', '2022-03-08 04:27:02'),
(4, 'Negative- Left', 1, 'multiple', 0, NULL, NULL, '2022-03-08 04:27:14', '2022-03-08 04:27:14');

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

--
-- Dumping data for table `doc_specialists`
--

INSERT INTO `doc_specialists` (`id`, `department_id`, `specialists_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'skin', 0, NULL, NULL, '2022-03-23 06:44:40', '2022-03-23 06:44:40'),
(2, 2, 'eye', 0, NULL, NULL, '2022-03-23 06:44:48', '2022-03-23 06:44:48');

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
  `doctor_id` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `startTime` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endTime` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doc_time_slots`
--

INSERT INTO `doc_time_slots` (`id`, `doctor_id`, `startTime`, `endTime`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, NULL, '2022-03-18T05:00:40.000Z', '2022-03-18T05:30:48.000Z', 0, NULL, NULL, '2022-03-15 22:19:12', '2022-03-15 22:19:12');

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

--
-- Dumping data for table `mhe_affects`
--

INSERT INTO `mhe_affects` (`id`, `affect_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Depressed', 1, 'single', 0, NULL, NULL, '2022-04-02 21:43:16', '2022-04-02 21:43:16'),
(2, 'Blunted', 1, 'multiple', 0, NULL, NULL, '2022-04-02 21:43:29', '2022-04-02 21:43:29');

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

--
-- Dumping data for table `mhe_appearances`
--

INSERT INTO `mhe_appearances` (`id`, `appearance_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Scarred wrists, non-professional tattoos', 1, 'single', 0, NULL, NULL, '2022-04-02 21:30:07', '2022-04-02 21:30:07'),
(2, 'Over bright clothing/distinhibition', 2, 'multiple', 0, NULL, NULL, '2022-04-02 21:30:16', '2022-04-02 21:30:16'),
(3, 'Apprehensive anxious', 1, 'single', 0, NULL, NULL, '2022-04-02 21:30:25', '2022-04-02 21:30:25'),
(4, 'Unkept, poorly groomed', 1, 'multiple', 0, NULL, NULL, '2022-04-02 21:30:43', '2022-04-02 21:30:43'),
(5, 'Bizarre Appearance', 1, 'single', 0, NULL, NULL, '2022-04-02 21:30:56', '2022-04-02 21:30:56');

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

--
-- Dumping data for table `mhe_appropritenesses`
--

INSERT INTO `mhe_appropritenesses` (`id`, `appropriteness_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'inappropriate', 1, 'single', 0, NULL, NULL, '2022-04-02 21:43:48', '2022-04-02 21:43:48'),
(2, 'Appropriate', 1, 'multiple', 0, NULL, NULL, '2022-04-02 21:43:57', '2022-04-02 21:43:57');

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

--
-- Dumping data for table `mhe_attitude_towards_examinations`
--

INSERT INTO `mhe_attitude_towards_examinations` (`id`, `attitude_towards_examination_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Seductiveness', 1, 'single', 0, NULL, NULL, '2022-04-02 21:36:41', '2022-04-02 21:36:41'),
(2, 'Uncooperative attitude', 1, 'multiple', 0, NULL, NULL, '2022-04-02 21:36:52', '2022-04-02 21:36:52');

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

--
-- Dumping data for table `mhe_behaviours`
--

INSERT INTO `mhe_behaviours` (`id`, `behaviour_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Psychomotor change (withdrwan)', 1, 'single', 0, NULL, NULL, '2022-04-02 21:34:03', '2022-04-02 21:34:03'),
(2, 'Restlessness', 1, 'multiple', 0, NULL, NULL, '2022-04-02 21:34:13', '2022-04-02 21:34:13'),
(3, 'Assaultive, threating', 1, 'single', 0, NULL, NULL, '2022-04-02 21:34:23', '2022-04-02 21:34:23'),
(4, 'Bizarre', 1, 'multiple', 0, NULL, NULL, '2022-04-02 21:34:33', '2022-04-02 21:34:33'),
(5, 'Stereotypical', 1, 'single', 0, NULL, NULL, '2022-04-02 21:34:50', '2022-04-02 21:34:50'),
(6, 'Manneristic', 1, 'single', 0, NULL, NULL, '2022-04-02 21:35:05', '2022-04-02 21:35:05'),
(7, 'Uncooperative', 1, 'single', 0, NULL, NULL, '2022-04-02 21:35:19', '2022-04-02 21:35:19');

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

--
-- Dumping data for table `mhe_moods`
--

INSERT INTO `mhe_moods` (`id`, `mood_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Anxious/irritable', 1, 'single', 0, NULL, NULL, '2022-04-02 21:40:34', '2022-04-02 21:40:34'),
(2, 'Depressed', 1, 'single', 0, NULL, NULL, '2022-04-02 21:40:46', '2022-04-02 21:40:46');

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

--
-- Dumping data for table `mhe_perceptuals`
--

INSERT INTO `mhe_perceptuals` (`id`, `perceptual_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Tactile/Gustatory Hallucinations', 1, 'multiple', 0, NULL, NULL, '2022-04-02 21:46:09', '2022-04-02 21:46:09'),
(2, 'Auditory Hallucinations', 1, 'single', 0, NULL, NULL, '2022-04-02 21:53:16', '2022-04-02 21:53:16'),
(3, 'Visual Hallucinations', 1, 'single', 0, NULL, NULL, '2022-04-02 21:53:33', '2022-04-02 21:53:33');

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

--
-- Dumping data for table `mhe_speeches`
--

INSERT INTO `mhe_speeches` (`id`, `speech_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Slowed', 1, 'single', 0, NULL, NULL, '2022-04-02 21:54:04', '2022-04-02 21:54:04'),
(2, 'Increased Tempo', 1, 'multiple', 0, NULL, NULL, '2022-04-02 21:54:18', '2022-04-02 21:54:18');

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

--
-- Dumping data for table `mhp_abdomens`
--

INSERT INTO `mhp_abdomens` (`id`, `abdomen_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Distension', 0, NULL, NULL, '2022-03-06 04:10:44', '2022-03-06 04:10:44'),
(2, 'Bowel Sound', 0, NULL, NULL, '2022-03-06 04:10:54', '2022-03-06 04:10:54'),
(3, 'Rebound Tenderness', 0, NULL, NULL, '2022-03-06 04:11:03', '2022-03-06 04:11:03'),
(4, 'Guarding', 0, NULL, NULL, '2022-03-06 04:11:11', '2022-03-06 04:11:11'),
(5, 'Ascites', 0, NULL, NULL, '2022-03-06 04:11:21', '2022-03-06 04:11:21'),
(6, 'Hepatomegaly', 0, NULL, NULL, '2022-03-06 04:11:30', '2022-03-06 04:11:30'),
(7, 'Rigidity', 0, NULL, NULL, '2022-03-06 04:11:41', '2022-03-06 04:11:41'),
(8, 'Prominent Veins', 0, NULL, NULL, '2022-03-06 04:11:50', '2022-03-06 04:11:50'),
(9, 'Shifting Dullness', 0, NULL, NULL, '2022-03-06 04:11:58', '2022-03-06 04:11:58'),
(10, 'Splennomegaly', 0, NULL, NULL, '2022-03-06 04:12:16', '2022-03-06 04:12:16'),
(11, 'Visible Peristalsis', 0, NULL, NULL, '2022-03-06 04:12:25', '2022-03-06 04:12:25'),
(12, 'Shifting Dullness', 0, NULL, NULL, '2022-03-06 04:12:38', '2022-03-06 04:12:38');

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
-- Table structure for table `mhp_aerobic_exercises`
--

CREATE TABLE `mhp_aerobic_exercises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
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

--
-- Dumping data for table `mhp_allergies`
--

INSERT INTO `mhp_allergies` (`id`, `name`, `desc`, `icon`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 'bp', 'sfd', '34550Group 1738.png', 1, '2022-04-25 03:40:37', '2022-04-25 03:40:37');

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
-- Table structure for table `mhp_antenatal_visits`
--

CREATE TABLE `mhp_antenatal_visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `systolic_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diastolic_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bMI_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prePregnancyBMI_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gestation_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `protine_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `glucose_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `others_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fundalHeight_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clinical_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foetalMovement_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `presentation_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foetalHeartSound_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dTpa_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `influenza_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `antiD_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `i8Weeks_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `i36Weeks_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `antenatal_visits_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `next_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_antenatal_visits`
--

INSERT INTO `mhp_antenatal_visits` (`id`, `patient_id`, `systolic_value`, `diastolic_ternary`, `height_ternary`, `weight_ternary`, `bMI_ternary`, `prePregnancyBMI_ternary`, `gestation_ternary`, `protine_ternary`, `glucose_ternary`, `others_ternary`, `fundalHeight_ternary`, `size_ternary`, `clinical_ternary`, `foetalMovement_ternary`, `presentation_ternary`, `position_ternary`, `foetalHeartSound_ternary`, `dTpa_ternary`, `influenza_ternary`, `antiD_ternary`, `i8Weeks_ternary`, `i36Weeks_ternary`, `antenatal_visits_date`, `text_value`, `next_date`, `created_at`, `updated_at`) VALUES
(1, NULL, '10', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-04-28', 'fdsgdfg', '2022-04-28', '2022-04-27 00:07:07', '2022-04-27 00:07:07'),
(2, NULL, NULL, '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', NULL, 'zvxcv', NULL, '2022-04-27 00:48:54', '2022-04-27 00:48:54');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_antenatal_visits_b_m_i_targets`
--

CREATE TABLE `mhp_antenatal_visits_b_m_i_targets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `antenatal_visits_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bMITarget_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_antenatal_visits_b_m_i_targets`
--

INSERT INTO `mhp_antenatal_visits_b_m_i_targets` (`id`, `patient_id`, `antenatal_visits_id`, `bMITarget_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 'undefined', '1', 'bm1', '18.5 | 12.5 - 18 Kg', '2022-04-27 00:07:07', '2022-04-27 00:07:07'),
(2, 'undefined', '1', 'bm2', '18.4 - 24.9 | 11.5 - 16 Kg', '2022-04-27 00:07:07', '2022-04-27 00:07:07'),
(3, 'undefined', '2', 'bm1', '18.5 | 12.5 - 18 Kg', '2022-04-27 00:48:54', '2022-04-27 00:48:54'),
(4, 'undefined', '2', 'bm2', '18.4 - 24.9 | 11.5 - 16 Kg', '2022-04-27 00:48:54', '2022-04-27 00:48:54');

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

--
-- Dumping data for table `mhp_anterior_views`
--

INSERT INTO `mhp_anterior_views` (`id`, `AnteriorView_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'test 1', 0, NULL, NULL, '2022-05-11 04:12:04', '2022-05-11 04:12:04');

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

--
-- Dumping data for table `mhp_apex_beats`
--

INSERT INTO `mhp_apex_beats` (`id`, `apex_beat_name`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '3rd', 'single', 0, NULL, NULL, '2022-02-14 23:01:03', '2022-02-14 23:01:03'),
(2, '4th', 'single', 0, NULL, NULL, '2022-02-14 23:01:10', '2022-02-14 23:01:10');

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
  `mediaType_online` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(46, '1', '1', 'Md. Sakwat Minar', '017927', NULL, '#8961ed', NULL, '2022-04-19T18:45:00.000Z', '2022-04-19T19:00:00.000Z', NULL, NULL, NULL, 0, NULL, NULL, '2022-04-19 21:41:51', '2022-04-19 21:41:51'),
(47, '1', '4', 'Adelaide Jone Doa', '017927', NULL, '#8961ed', NULL, '2022-04-19T19:45:00.000Z', '2022-04-19T20:00:00.000Z', NULL, NULL, NULL, 0, NULL, NULL, '2022-04-20 00:54:46', '2022-04-20 00:54:46'),
(48, '1', '1', 'Md. Sakwat Minar', '017927', NULL, '#8961ed', NULL, '2022-04-19T20:45:00.000Z', '2022-04-19T21:00:00.000Z', NULL, NULL, NULL, 1, NULL, NULL, '2022-04-20 00:55:03', '2022-04-20 00:58:10'),
(49, '1', '1', 'Md. Sakwat Minar', '017927', NULL, '#8961ed', NULL, '2022-04-20T18:45:00.000Z', '2022-04-20T19:00:00.000Z', NULL, NULL, NULL, 1, NULL, NULL, '2022-04-20 20:45:55', '2022-04-20 20:48:09'),
(50, '1', '1', 'Md. Sakwat Minar', '017927', NULL, '#8961ed', NULL, '2022-04-21T18:45:00.000Z', '2022-04-21T19:00:00.000Z', NULL, NULL, NULL, 1, NULL, NULL, '2022-04-20 20:46:03', '2022-04-20 20:46:52'),
(51, '1', '1', 'Md. Sakwat Minar', '017927', NULL, '#8961ed', NULL, '2022-04-22T18:45:00.000Z', '2022-04-22T19:00:00.000Z', NULL, NULL, NULL, 0, NULL, NULL, '2022-04-20 22:53:17', '2022-04-20 22:53:17'),
(52, '1', '4', 'Adelaide Jone Doa', '017927', NULL, '#8961ed', NULL, '2022-04-23T18:45:00.000Z', '2022-04-23T19:00:00.000Z', NULL, NULL, NULL, 0, NULL, NULL, '2022-04-20 22:53:27', '2022-04-20 22:53:27'),
(53, '1', '1', 'Md. Sakwat Minar', '017927', NULL, '#8961ed', NULL, '2022-04-24T18:45:00.000Z', '2022-04-24T19:00:00.000Z', NULL, NULL, NULL, 0, NULL, NULL, '2022-04-24 22:13:56', '2022-04-24 22:13:56'),
(54, '1', '4', 'Adelaide Jone Doa', '017927', NULL, '#8961ed', NULL, '2022-04-24T19:45:00.000Z', '2022-04-24T20:00:00.000Z', NULL, NULL, NULL, 0, NULL, NULL, '2022-04-25 02:54:32', '2022-04-25 02:54:32'),
(55, '1', '1', 'Md. Sakwat Minar', '017927', NULL, '#8961ed', NULL, '2022-04-25T18:45:00.000Z', '2022-04-25T19:00:00.000Z', NULL, NULL, NULL, 0, NULL, NULL, '2022-04-25 22:08:54', '2022-04-25 22:08:54'),
(56, '1', '1', 'Md. Sakwat Minar', '017927', NULL, '#8961ed', NULL, '2022-04-26T18:45:00.000Z', '2022-04-26T19:00:00.000Z', NULL, NULL, NULL, 0, NULL, NULL, '2022-04-26 21:25:22', '2022-04-26 21:25:22'),
(57, '1', '4', 'Adelaide Jone Doa', '017927', NULL, '#8961ed', NULL, '2022-04-26T20:15:00.000Z', '2022-04-26T20:30:00.000Z', NULL, NULL, NULL, 0, NULL, NULL, '2022-04-26 21:25:35', '2022-04-26 21:25:35'),
(58, '1', '1', 'Md. Sakwat Minar', '017927', NULL, '#8961ed', NULL, '2022-05-08T18:45:00.000Z', '2022-05-08T19:00:00.000Z', NULL, NULL, NULL, 0, NULL, NULL, '2022-05-08 22:16:48', '2022-05-08 22:16:48'),
(59, '1', '1', 'Md. Sakwat Minar', '017927', NULL, '#8961ed', NULL, '2022-05-09T18:45:00.000Z', '2022-05-09T19:00:00.000Z', NULL, NULL, NULL, 0, NULL, NULL, '2022-05-09 22:05:56', '2022-05-09 22:05:56'),
(60, '1', '1', 'Md. Sakwat Minar', '017927', NULL, '#8961ed', NULL, '2022-05-10T18:45:00.000Z', '2022-05-10T19:00:00.000Z', NULL, NULL, NULL, 0, NULL, NULL, '2022-05-10 23:27:29', '2022-05-10 23:27:29'),
(61, '1', '1', 'Md. Sakwat Minar', '017927', NULL, '#8961ed', NULL, '2022-05-11T18:45:00.000Z', '2022-05-11T19:00:00.000Z', NULL, NULL, NULL, 0, NULL, NULL, '2022-05-11 22:29:48', '2022-05-11 22:29:48');

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

--
-- Dumping data for table `mhp_areolars`
--

INSERT INTO `mhp_areolars` (`id`, `Areolar_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'LQI', 0, '2022-04-10 00:19:23', '2022-04-10 00:19:23'),
(2, 'UQI', 0, '2022-04-10 00:19:28', '2022-04-10 00:19:28'),
(3, 'LQO', 0, '2022-04-10 00:19:32', '2022-04-10 00:19:32'),
(4, 'UQO', 0, '2022-04-10 00:19:38', '2022-04-10 00:19:38');

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

--
-- Dumping data for table `mhp_arrangements`
--

INSERT INTO `mhp_arrangements` (`id`, `Arrangements_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Annular', 0, '2022-04-10 00:14:36', '2022-04-10 00:14:36'),
(2, 'Arciform', 0, '2022-04-10 00:14:41', '2022-04-10 00:14:41'),
(3, 'Herpetiform', 0, '2022-04-10 00:14:46', '2022-04-10 00:14:46'),
(4, 'Disseminated Grouped', 0, '2022-04-10 00:14:52', '2022-04-10 00:14:52');

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
(1, 'Auto Fil name', 'Auto Fil Test Auto Fil Tes', 'Auto Fil TestAuto Fil T', 0, '2022-04-10 02:38:58', '2022-04-10 02:38:58'),
(2, 'Auto Fil name', '-auto-filladd-auto-filladd-auto-filladd-auto-filladd-auto-filladd-auto-fill', 'uto-filladd-auto-filladd-auto-filladd-auto-fill', 0, '2022-04-10 02:40:24', '2022-04-10 02:40:24');

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

--
-- Dumping data for table `mhp_banks`
--

INSERT INTO `mhp_banks` (`id`, `branch_id`, `bank_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '1', 'Dhaka bank', 0, NULL, NULL, '2022-03-10 03:16:14', '2022-03-10 03:16:14'),
(2, '1', 'Bangladesh Bank', 0, NULL, NULL, '2022-03-10 03:16:47', '2022-03-10 03:16:47'),
(3, '1', 'City Bank', 0, NULL, NULL, '2022-03-10 03:17:05', '2022-03-10 03:17:05'),
(4, '2', 'IFIC Bank', 0, NULL, NULL, '2022-03-10 03:17:24', '2022-03-10 03:17:24');

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

--
-- Dumping data for table `mhp_bartholin_glandes`
--

INSERT INTO `mhp_bartholin_glandes` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Tender', 0, '2022-04-16 03:05:57', '2022-04-16 03:05:57'),
(2, 'Swollen', 0, '2022-04-16 03:06:02', '2022-04-16 03:06:02'),
(3, 'Red', 0, '2022-04-16 03:06:07', '2022-04-16 03:06:07');

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
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_id` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `procedure_id` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_billings`
--

INSERT INTO `mhp_billings` (`id`, `patient_id`, `doctor_id`, `procedure_id`, `item_code`, `item_details`, `rate`, `qty`, `vat`, `tax`, `total`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, '1', '2', NULL, 'item107', 'Consultation Fee', '1200', NULL, '0', '0', '1200', 1, '2022-03-20 00:30:24', '2022-03-20 01:19:09'),
(2, '1', NULL, '3', 'Item-109', 'Blood Test', '400', '4', '0', '0', '1600', 1, '2022-03-20 00:30:46', '2022-03-20 01:21:05'),
(3, '1', '1', NULL, 'Item-102', 'Service Fee', '2000', NULL, '0', '0', '2000', 1, '2022-03-20 01:20:38', '2022-03-20 01:34:15'),
(4, '1', NULL, '3', 'Item-108', 'Blood Test', '200', '5', '0', '0', '1000', 1, '2022-03-20 01:20:55', '2022-03-20 22:45:58'),
(5, '1', NULL, '2', 'Item-104', 'SVG', '555', '10', '0', '0', '5550', 1, '2022-03-20 01:35:33', '2022-03-20 22:46:01'),
(6, '1', '1', NULL, 'item102', 'Consultation Fee', '700', NULL, '0', '0', '700', 1, '2022-03-20 01:36:26', '2022-03-20 22:46:04'),
(7, NULL, '2', NULL, 'item107', 'Consultation Fee', '1200', NULL, '0', '0', '1200', 0, '2022-03-20 04:11:21', '2022-03-20 04:11:21'),
(8, NULL, NULL, '3', 'Item-110', 'Blood Test', '600', '10', '0', '0', '6000', 0, '2022-03-20 04:11:44', '2022-03-20 04:11:44'),
(9, NULL, '2', NULL, 'item108', 'Service Fee', '15000', NULL, '0', '0', '15000', 0, '2022-03-20 06:22:28', '2022-03-20 06:22:28'),
(10, NULL, '1', NULL, 'Item-102', 'Service Fee', '2000', NULL, '0', '0', '2000', 0, '2022-03-20 06:22:43', '2022-03-20 06:22:43'),
(11, NULL, '2', NULL, 'item107', 'Consultation Fee', '1200', NULL, '0', '0', '1200', 0, '2022-03-20 06:23:46', '2022-03-20 06:23:46'),
(12, NULL, '1', NULL, 'Item-102', 'Service Fee', '2000', NULL, '0', '0', '2000', 0, '2022-03-20 22:40:50', '2022-03-20 22:40:50'),
(13, '1', '1', NULL, 'Item-102', 'Service Fee', '2000', NULL, '0', '0', '2000', 1, '2022-03-20 22:43:00', '2022-03-20 22:46:07'),
(14, '1', '1', NULL, 'Item-102', 'Service Fee', '2000', NULL, '0', '0', '2000', 1, '2022-03-20 22:43:38', '2022-03-20 23:07:00'),
(15, '1', '1', NULL, 'item102', 'Consultation Fee', '700', NULL, '0', '0', '700', 1, '2022-03-20 22:46:17', '2022-03-20 23:07:03'),
(16, '1', '2', NULL, 'item107', 'Consultation Fee', '1200', NULL, '0', '0', '1200', 1, '2022-03-20 22:47:53', '2022-03-20 23:07:06'),
(17, '1', '1', NULL, 'Item-102', 'Service Fee', '2000', NULL, '0', '0', '2000', 1, '2022-03-20 22:52:36', '2022-03-20 23:07:56'),
(18, '1', '2', NULL, 'item108', 'Service Fee', '15000', NULL, '0', '0', '15000', 1, '2022-03-20 22:53:07', '2022-03-20 23:07:59'),
(19, '1', '2', NULL, 'item107', 'Consultation Fee', '1200', NULL, '0', '0', '1200', 1, '2022-03-20 23:07:28', '2022-03-22 05:41:45'),
(20, '1', NULL, '3', 'Item-109', 'Blood Test', '400', '10', '0', '0', '4000', 1, '2022-03-20 23:07:47', '2022-03-22 05:42:52'),
(21, '1', NULL, '3', 'Item-110', 'Blood Test', '600', '10', '0', '0', '6000', 1, '2022-03-21 03:34:00', '2022-03-22 05:42:35'),
(22, '1', NULL, '3', 'Item-109', 'Blood Test', '400', '5', '0', '0', '2000', 1, '2022-03-21 03:52:13', '2022-03-22 05:45:39'),
(23, '1', NULL, '3', 'Item-109', 'Blood Test', '400', '10', '0', '0', '4000', 1, '2022-03-21 04:41:02', '2022-03-22 05:42:12'),
(24, '4', '2', NULL, 'item107', 'Consultation Fee', '1200', NULL, '0', '0', '1200', 1, '2022-03-22 01:10:59', '2022-03-22 05:39:32'),
(25, '4', NULL, '3', 'Item-110', 'Blood Test', '600', '5', '0', '0', '3000', 0, '2022-03-22 01:11:14', '2022-03-22 01:11:14'),
(26, '4', '1', NULL, 'item102', 'Consultation Fee', '700', NULL, '0', '0', '700', 0, '2022-03-22 05:18:26', '2022-03-22 05:18:26'),
(27, '4', NULL, '3', 'Item-110', 'Blood Test', '600', '10', '0', '0', '6000', 0, '2022-03-22 05:18:45', '2022-03-22 05:18:45'),
(28, '1', '1', NULL, 'item102', 'Consultation Fee', '700', NULL, '0', '0', '700', 1, '2022-03-22 05:44:34', '2022-03-22 05:47:26'),
(29, '1', '1', NULL, 'Item-102', 'Service Fee', '2000', NULL, '0', '0', '2000', 1, '2022-03-22 05:44:43', '2022-03-22 05:48:21'),
(30, '1', '2', NULL, 'item107', 'Consultation Fee', '1200', NULL, '0', '0', '1200', 1, '2022-03-22 05:47:35', '2022-03-22 05:49:45'),
(31, '1', '2', NULL, 'item107', 'Consultation Fee', '1200', NULL, '0', '0', '1200', 1, '2022-03-22 05:47:43', '2022-03-23 00:19:42'),
(32, '1', NULL, '3', 'Item-110', 'Blood Test', '600', '10', '0', '0', '6000', 1, '2022-03-22 05:47:56', '2022-03-23 00:21:30'),
(33, '1', '2', NULL, 'item107', 'Consultation Fee', '1200', NULL, '0', '0', '1200', 1, '2022-03-22 05:49:30', '2022-03-23 00:20:49'),
(34, '1', '1', NULL, 'item201', 'Others Charge', '500', NULL, '0', '0', '500', 1, '2022-03-23 00:21:09', '2022-03-23 00:23:12'),
(35, '1', '1', NULL, 'item102', 'Consultation Fee', '700', NULL, '0', '0', '700', 1, '2022-03-23 00:21:18', '2022-03-23 00:23:17'),
(36, '1', '2', NULL, 'item107', 'Consultation Fee', '1200', NULL, '0', '0', '1200', 1, '2022-03-23 00:23:36', '2022-03-23 00:26:16'),
(37, '1', NULL, '3', 'Item-110', 'Blood Test', '600', '10', '0', '0', '6000', 0, '2022-03-23 00:23:50', '2022-03-23 00:23:50'),
(38, '1', '1', NULL, 'item102', 'Consultation Fee', '700', NULL, '0', '0', '700', 0, '2022-03-23 00:24:09', '2022-03-23 00:24:09'),
(39, '1', '2', NULL, 'item107', 'Consultation Fee', '1200', NULL, '0', '0', '1200', 0, '2022-03-26 22:42:34', '2022-03-26 22:42:34');

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
(1, 'Male', 0, NULL, NULL, '2022-02-08 23:22:47', '2022-02-08 23:22:47'),
(2, 'Female', 0, NULL, NULL, '2022-02-08 23:22:58', '2022-02-08 23:22:58');

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

--
-- Dumping data for table `mhp_branches`
--

INSERT INTO `mhp_branches` (`id`, `branch_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Banani', 0, NULL, NULL, '2022-03-10 03:15:04', '2022-03-10 03:15:04'),
(2, 'Lalbag', 0, NULL, NULL, '2022-03-10 03:15:09', '2022-03-10 03:15:09'),
(3, 'Dhaknmondi', 0, NULL, NULL, '2022-03-10 03:15:21', '2022-03-10 03:15:21');

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

--
-- Dumping data for table `mhp_breast_lumps`
--

INSERT INTO `mhp_breast_lumps` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Surgery', 0, '2022-04-16 03:00:48', '2022-04-16 03:00:48'),
(2, 'Painful', 0, '2022-04-16 03:00:54', '2022-04-16 03:00:54'),
(3, 'Growing', 0, '2022-04-16 03:01:00', '2022-04-16 03:01:00'),
(4, 'Aspiration', 0, '2022-04-16 03:01:37', '2022-04-16 03:01:37'),
(5, 'Biospy Previously', 0, '2022-04-16 03:01:43', '2022-04-16 03:01:43');

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

--
-- Dumping data for table `mhp_breast_nipple_discharges`
--

INSERT INTO `mhp_breast_nipple_discharges` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Bilateral', 0, '2022-04-16 03:03:06', '2022-04-16 03:03:06'),
(2, 'Unilateral', 0, '2022-04-16 03:03:12', '2022-04-16 03:03:12'),
(3, 'Spontaneous', 0, '2022-04-16 03:03:18', '2022-04-16 03:03:18'),
(4, 'Blood stainned', 0, '2022-04-16 03:03:24', '2022-04-16 03:03:24'),
(5, 'Clear', 0, '2022-04-16 03:03:31', '2022-04-16 03:03:31');

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

--
-- Dumping data for table `mhp_breast_pains`
--

INSERT INTO `mhp_breast_pains` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Right', 0, '2022-04-16 03:02:05', '2022-04-16 03:02:05'),
(2, 'Left', 0, '2022-04-16 03:02:11', '2022-04-16 03:02:11'),
(3, 'Cyclical', 0, '2022-04-16 03:02:17', '2022-04-16 03:02:17');

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
  `murmur` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `volume` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `radiations` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_value` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_cardiovasculars`
--

INSERT INTO `mhp_cardiovasculars` (`id`, `patient_id`, `brachial_Right`, `brachial_left`, `dorsalis_pedis_Right`, `dorsalis_pedis_left`, `femoral_Right`, `femoral_left`, `is_ajr`, `is_calf_tenderness`, `is_pacemaker_box`, `is_radio_factory_delay`, `is_trendelenburg_test`, `is_varicose_veins`, `jvp`, `notes`, `popliteal_Right`, `popliteal_left`, `posterior_tibialis_Right`, `posterior_tibialis_left`, `radial_Right`, `radial_left`, `carotid_bruit`, `apex_beat`, `intercostal_space`, `heart_sound`, `murmur`, `volume`, `radiations`, `other_value`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '10', NULL, NULL, NULL, NULL, NULL, 'Displaced', NULL, NULL, NULL, NULL, NULL, '2022-02-28 06:36:24', '2022-02-28 06:36:24'),
(2, NULL, '10', '10', '10', '10', NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Displaced', NULL, 'Mid Diastolic', NULL, NULL, NULL, '2022-02-28 06:39:36', '2022-02-28 06:39:36'),
(3, NULL, '10', '10', NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Neighter', NULL, 'Displaced', NULL, NULL, '4/6', NULL, NULL, '2022-03-01 22:39:36', '2022-03-01 22:39:36'),
(4, '1', '10', '10', NULL, '10', NULL, NULL, 1, 1, 0, 1, 0, 1, '11', NULL, '11', '11', NULL, NULL, NULL, NULL, 'Neighter', NULL, NULL, 'X3', NULL, NULL, NULL, NULL, '2022-03-01 22:42:06', '2022-03-01 22:42:06'),
(5, '1', '10', '10', NULL, '10', NULL, NULL, 1, 1, 0, 1, 0, 1, '11', NULL, '11', '11', NULL, NULL, NULL, NULL, 'Neighter', NULL, NULL, 'X3', NULL, NULL, NULL, NULL, '2022-03-01 22:45:36', '2022-03-01 22:45:36'),
(6, '1', '10', '10', NULL, '10', NULL, NULL, 1, 1, 0, 1, 0, 1, '11', NULL, '11', '11', NULL, NULL, NULL, NULL, 'Neighter', NULL, NULL, 'X3', NULL, NULL, NULL, NULL, '2022-03-01 22:48:38', '2022-03-01 22:48:38'),
(7, '1', '101', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 1, '101', NULL, NULL, NULL, '10', '10', NULL, NULL, NULL, NULL, 'Displaced', 'X2', NULL, NULL, 'Apex', NULL, '2022-03-01 22:58:52', '2022-03-01 22:58:52'),
(8, NULL, '44', '44', '4', '44', '44', NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, '44', NULL, '4', '44', 'Both', '3rd', 'Displaced', NULL, 'Early Diastolic', '4/6', 'Axilla', NULL, '2022-03-02 03:57:09', '2022-03-02 03:57:09'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-28 06:56:11', '2022-03-28 06:56:11'),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-28 06:56:19', '2022-03-28 06:56:19'),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-28 06:56:19', '2022-03-28 06:56:19'),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-28 06:56:21', '2022-03-28 06:56:21'),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-28 06:56:32', '2022-03-28 06:56:32'),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-28 06:56:32', '2022-03-28 06:56:32'),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Neighter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-28 22:10:04', '2022-03-28 22:10:04'),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Neighter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-28 22:12:38', '2022-03-28 22:12:38'),
(17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Neighter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-28 22:19:57', '2022-03-28 22:19:57'),
(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 03:23:19', '2022-03-31 03:23:19'),
(19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-02 23:49:37', '2022-04-02 23:49:37'),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3rd', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-03 02:38:15', '2022-04-03 02:38:15');

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

--
-- Dumping data for table `mhp_cardiovascular_histories`
--

INSERT INTO `mhp_cardiovascular_histories` (`id`, `patient_id`, `cardiovascular_id`, `history_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '1', '4', '12', 'true', '2022-03-01 22:42:06', '2022-03-01 22:42:06'),
(2, '1', '4', '14', 'true', '2022-03-01 22:42:06', '2022-03-01 22:42:06'),
(3, '1', '4', '24', 'true', '2022-03-01 22:42:06', '2022-03-01 22:42:06'),
(4, '1', '5', '12', 'true', '2022-03-01 22:45:36', '2022-03-01 22:45:36'),
(5, '1', '5', '14', 'true', '2022-03-01 22:45:36', '2022-03-01 22:45:36'),
(6, '1', '5', '24', 'true', '2022-03-01 22:45:36', '2022-03-01 22:45:36'),
(7, '1', '6', '12', 'true', '2022-03-01 22:48:38', '2022-03-01 22:48:38'),
(8, '1', '6', '14', 'true', '2022-03-01 22:48:39', '2022-03-01 22:48:39'),
(9, '1', '6', '24', 'true', '2022-03-01 22:48:39', '2022-03-01 22:48:39'),
(10, '1', '7', '13', 'true', '2022-03-01 22:58:52', '2022-03-01 22:58:52'),
(11, '1', '7', '14', 'true', '2022-03-01 22:58:52', '2022-03-01 22:58:52');

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

--
-- Dumping data for table `mhp_cardiovascular_others`
--

INSERT INTO `mhp_cardiovascular_others` (`id`, `patient_id`, `cardiovascular_id`, `other_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '1', '7', '2', 'true', '2022-03-01 22:58:52', '2022-03-01 22:58:52'),
(2, '1', '7', '3', 'true', '2022-03-01 22:58:52', '2022-03-01 22:58:52');

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

--
-- Dumping data for table `mhp_cards`
--

INSERT INTO `mhp_cards` (`id`, `card_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Visa Card', 0, NULL, NULL, '2022-03-10 03:14:34', '2022-03-10 03:14:34'),
(2, 'Master Card', 0, NULL, NULL, '2022-03-10 03:14:44', '2022-03-10 03:14:44');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_care_details`
--

CREATE TABLE `mhp_care_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `care_details_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_care_details`
--

INSERT INTO `mhp_care_details` (`id`, `care_details_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'test 1 sd', 0, '2022-04-26 21:58:09', '2022-04-26 21:58:09'),
(2, 'Suggestion details', 0, '2022-04-26 21:58:17', '2022-04-26 21:58:17'),
(3, 'Suggestion details 3', 0, '2022-04-26 21:58:30', '2022-04-26 21:58:30');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_care_suggestions`
--

CREATE TABLE `mhp_care_suggestions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `care_suggestion_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_care_suggestions`
--

INSERT INTO `mhp_care_suggestions` (`id`, `care_suggestion_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'cs test 1', 0, '2022-04-26 21:55:28', '2022-04-26 21:55:28'),
(2, 'cs test 2', 0, '2022-04-26 21:55:35', '2022-04-26 21:55:35'),
(3, 'cs test 3', 0, '2022-04-26 21:55:40', '2022-04-26 21:55:40'),
(4, 'cs test 4', 0, '2022-04-26 21:55:45', '2022-04-26 21:55:45');

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

--
-- Dumping data for table `mhp_carotids`
--

INSERT INTO `mhp_carotids` (`id`, `carotid_name`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Left', 'single', 0, NULL, NULL, '2022-02-14 22:46:21', '2022-02-14 22:46:21'),
(2, 'Right', 'single', 0, NULL, NULL, '2022-02-14 22:47:03', '2022-02-14 22:47:03'),
(3, 'Both', 'single', 0, NULL, NULL, '2022-02-14 22:47:20', '2022-02-14 22:47:20'),
(4, 'Neighter', 'single', 0, NULL, NULL, '2022-02-14 22:47:36', '2022-02-14 22:47:36'),
(5, 'test', 'single', 0, NULL, NULL, '2022-02-23 01:38:08', '2022-02-23 01:38:08'),
(6, 'test111111', 'single', 0, NULL, NULL, '2022-02-25 22:09:28', '2022-02-25 22:09:28');

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

--
-- Dumping data for table `mhp_cervixes`
--

INSERT INTO `mhp_cervixes` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Retention cyst', 0, '2022-04-16 03:06:37', '2022-04-16 03:06:37'),
(2, 'Contact Bleeding', 0, '2022-04-16 03:06:42', '2022-04-16 03:06:42'),
(3, 'Polyp', 0, '2022-04-16 03:06:47', '2022-04-16 03:06:47'),
(4, 'Ectropion', 0, '2022-04-16 03:06:53', '2022-04-16 03:06:53'),
(5, 'Normal', 0, '2022-04-16 03:07:00', '2022-04-16 03:07:00');

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
(1, 1, 'Dhaka', NULL, 0, NULL, NULL, '2022-03-15 22:06:07', '2022-03-15 22:06:07');

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

--
-- Dumping data for table `mhp_clinical_indications`
--

INSERT INTO `mhp_clinical_indications` (`id`, `clinical_indications_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'test 1', 0, '2022-04-13 05:33:44', '2022-04-13 05:33:44'),
(2, 'test 2', 0, '2022-04-13 05:33:50', '2022-04-13 05:33:50');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_cns`
--

CREATE TABLE `mhp_cns` (
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

--
-- Dumping data for table `mhp_cns_cn1s`
--

INSERT INTO `mhp_cns_cn1s` (`id`, `cns_part1_id`, `patient_id`, `cn1_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '2', '1', '1', 'true', '2022-03-13 01:22:31', '2022-03-13 01:22:31'),
(2, '2', '1', '2', 'true', '2022-03-13 01:22:32', '2022-03-13 01:22:32'),
(3, '3', '1', '1', 'false', '2022-03-13 01:23:45', '2022-03-13 01:23:45'),
(4, '3', '1', '2', 'true', '2022-03-13 01:23:45', '2022-03-13 01:23:45'),
(5, '4', '1', '1', 'false', '2022-03-13 01:30:47', '2022-03-13 01:30:47'),
(6, '4', '1', '2', 'true', '2022-03-13 01:30:47', '2022-03-13 01:30:47'),
(7, '5', '1', '1', 'false', '2022-03-13 01:31:40', '2022-03-13 01:31:40'),
(8, '5', '1', '2', 'true', '2022-03-13 01:31:41', '2022-03-13 01:31:41'),
(9, '6', '1', '1', 'false', '2022-03-13 03:06:10', '2022-03-13 03:06:10'),
(10, '6', '1', '2', 'true', '2022-03-13 03:06:10', '2022-03-13 03:06:10'),
(11, '7', '1', '1', 'false', '2022-03-13 03:06:45', '2022-03-13 03:06:45'),
(12, '7', '1', '2', 'true', '2022-03-13 03:06:45', '2022-03-13 03:06:45'),
(13, '8', '1', '1', 'false', '2022-03-13 03:08:15', '2022-03-13 03:08:15'),
(14, '8', '1', '2', 'true', '2022-03-13 03:08:15', '2022-03-13 03:08:15'),
(15, '9', '1', '1', 'false', '2022-03-13 03:10:16', '2022-03-13 03:10:16'),
(16, '9', '1', '2', 'true', '2022-03-13 03:10:16', '2022-03-13 03:10:16'),
(17, '11', NULL, '1', 'true', '2022-03-13 05:28:21', '2022-03-13 05:28:21'),
(18, '11', NULL, '2', 'true', '2022-03-13 05:28:21', '2022-03-13 05:28:21'),
(19, '12', NULL, '2', 'true', '2022-03-13 22:42:05', '2022-03-13 22:42:05');

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

--
-- Dumping data for table `mhp_cns_cn2s`
--

INSERT INTO `mhp_cns_cn2s` (`id`, `cns_part1_id`, `patient_id`, `cn2_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '5', '1', '5', 'true', '2022-03-13 01:31:41', '2022-03-13 01:31:41'),
(2, '5', '1', '6', 'true', '2022-03-13 01:31:41', '2022-03-13 01:31:41'),
(3, '6', '1', '5', 'true', '2022-03-13 03:06:10', '2022-03-13 03:06:10'),
(4, '6', '1', '6', 'true', '2022-03-13 03:06:11', '2022-03-13 03:06:11'),
(5, '7', '1', '5', 'true', '2022-03-13 03:06:45', '2022-03-13 03:06:45'),
(6, '7', '1', '6', 'true', '2022-03-13 03:06:45', '2022-03-13 03:06:45'),
(7, '8', '1', '5', 'true', '2022-03-13 03:08:15', '2022-03-13 03:08:15'),
(8, '8', '1', '6', 'true', '2022-03-13 03:08:15', '2022-03-13 03:08:15'),
(9, '9', '1', '5', 'true', '2022-03-13 03:10:16', '2022-03-13 03:10:16'),
(10, '9', '1', '6', 'true', '2022-03-13 03:10:16', '2022-03-13 03:10:16');

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

--
-- Dumping data for table `mhp_cns_cn3s`
--

INSERT INTO `mhp_cns_cn3s` (`id`, `cns_part1_id`, `patient_id`, `cn3_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '5', '1', '3', 'true', '2022-03-13 01:31:41', '2022-03-13 01:31:41'),
(2, '5', '1', '4', 'true', '2022-03-13 01:31:41', '2022-03-13 01:31:41'),
(3, '6', '1', '3', 'true', '2022-03-13 03:06:11', '2022-03-13 03:06:11'),
(4, '6', '1', '4', 'true', '2022-03-13 03:06:11', '2022-03-13 03:06:11'),
(5, '7', '1', '3', 'true', '2022-03-13 03:06:46', '2022-03-13 03:06:46'),
(6, '7', '1', '4', 'true', '2022-03-13 03:06:46', '2022-03-13 03:06:46'),
(7, '8', '1', '3', 'true', '2022-03-13 03:08:16', '2022-03-13 03:08:16'),
(8, '8', '1', '4', 'true', '2022-03-13 03:08:16', '2022-03-13 03:08:16'),
(9, '9', '1', '3', 'true', '2022-03-13 03:10:17', '2022-03-13 03:10:17'),
(10, '9', '1', '4', 'true', '2022-03-13 03:10:17', '2022-03-13 03:10:17');

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

--
-- Dumping data for table `mhp_cns_cn4s`
--

INSERT INTO `mhp_cns_cn4s` (`id`, `cns_part1_id`, `patient_id`, `cn4_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '7', '1', '3', 'true', '2022-03-13 03:06:46', '2022-03-13 03:06:46'),
(2, '7', '1', '4', 'true', '2022-03-13 03:06:46', '2022-03-13 03:06:46'),
(3, '8', '1', '3', 'true', '2022-03-13 03:08:16', '2022-03-13 03:08:16'),
(4, '8', '1', '4', 'true', '2022-03-13 03:08:16', '2022-03-13 03:08:16'),
(5, '9', '1', '3', 'true', '2022-03-13 03:10:17', '2022-03-13 03:10:17'),
(6, '9', '1', '4', 'true', '2022-03-13 03:10:17', '2022-03-13 03:10:17');

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

--
-- Dumping data for table `mhp_cns_cn5s`
--

INSERT INTO `mhp_cns_cn5s` (`id`, `cns_part1_id`, `patient_id`, `cn5_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '8', '1', '4', 'true', '2022-03-13 03:08:16', '2022-03-13 03:08:16'),
(2, '8', '1', '5', 'true', '2022-03-13 03:08:16', '2022-03-13 03:08:16'),
(3, '9', '1', '4', 'true', '2022-03-13 03:10:17', '2022-03-13 03:10:17'),
(4, '9', '1', '5', 'true', '2022-03-13 03:10:17', '2022-03-13 03:10:17');

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

--
-- Dumping data for table `mhp_cns_cn6s`
--

INSERT INTO `mhp_cns_cn6s` (`id`, `cns_part1_id`, `patient_id`, `cn6_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '9', '1', '2', 'true', '2022-03-13 03:10:18', '2022-03-13 03:10:18'),
(2, '9', '1', '3', 'true', '2022-03-13 03:10:18', '2022-03-13 03:10:18');

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

--
-- Dumping data for table `mhp_cns_cn7s`
--

INSERT INTO `mhp_cns_cn7s` (`id`, `cns_part1_id`, `patient_id`, `cn7_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '9', '1', '2', 'true', '2022-03-13 03:10:18', '2022-03-13 03:10:18'),
(2, '9', '1', '3', 'true', '2022-03-13 03:10:18', '2022-03-13 03:10:18');

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

--
-- Dumping data for table `mhp_cns_cn8s`
--

INSERT INTO `mhp_cns_cn8s` (`id`, `cns_part1_id`, `patient_id`, `cn8_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '9', '1', '2', 'true', '2022-03-13 03:10:18', '2022-03-13 03:10:18');

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

--
-- Dumping data for table `mhp_cns_part1s`
--

INSERT INTO `mhp_cns_part1s` (`id`, `patient_id`, `olfactory`, `visualAcuity`, `visualAcuityDetail`, `visualField`, `papillary`, `pupil`, `light`, `eyeMovement`, `sensory`, `motor`, `force_to_shut_open_mouth`, `jaw`, `drooping_corner_of_mouth`, `lookingUp`, `on_shutting_eye`, `shrug_the_shoulder_trapezius`, `neckMovement`, `whisper_test`, `wever_test`, `rinner_test`, `hallpike_manoeuvre`, `uvula`, `posterior_third_of_tongue_sensation`, `tongue`, `diviation`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Pepermint', 'Left', 'IP', '[object Object]', 'Nill', 'RAPD -', 'Sluggish', 'Horizontal outward restricted', NULL, 'Clench the teeth- Masseter weakness', 'Deviates- Right', 'Exacerbated (Pseudobulber Palsy)', 'Left', 'All the muscles on same side loss- LMNL', 'Rash- Herpes zoster', 'Weaker Left', 'Weaker Right', 'Negative- Right', 'Center', 'Positive', NULL, NULL, NULL, NULL, NULL, '2022-03-13 00:14:29', '2022-03-13 00:14:29'),
(2, '1', 'Pepermint', 'Left', '6/10', '[object Object]', NULL, 'RAPD -', 'Sluggish', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-13 01:22:31', '2022-03-13 01:22:31'),
(3, '1', 'Pepermint', 'Left', '6/10', '[object Object]', NULL, 'RAPD -', 'Sluggish', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-13 01:23:45', '2022-03-13 01:23:45'),
(4, '1', 'Pepermint', 'Left', '6/10', '[object Object]', NULL, 'RAPD -', 'Sluggish', NULL, NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-13 01:30:47', '2022-03-13 01:30:47'),
(5, '1', 'Pepermint', 'Left', '6/10', '[object Object]', NULL, 'RAPD -', 'Sluggish', NULL, NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-13 01:31:40', '2022-03-13 01:31:40'),
(6, '1', 'Pepermint', 'Left', '6/10', '[object Object]', NULL, 'RAPD -', 'Sluggish', NULL, NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-13 03:06:10', '2022-03-13 03:06:10'),
(7, '1', 'Pepermint', 'Left', '6/10', '[object Object]', NULL, 'RAPD -', 'Sluggish', NULL, NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-13 03:06:45', '2022-03-13 03:06:45'),
(8, '1', 'Pepermint', 'Left', '6/10', '[object Object]', NULL, 'RAPD -', 'Sluggish', NULL, NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-13 03:08:15', '2022-03-13 03:08:15'),
(9, '1', 'Pepermint', 'Left', '6/10', '[object Object]', NULL, 'RAPD -', 'Sluggish', NULL, NULL, NULL, 'Normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-13 03:10:16', '2022-03-13 03:10:16'),
(10, NULL, NULL, NULL, NULL, '[object Object]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-13 05:27:54', '2022-03-13 05:27:54'),
(11, NULL, NULL, NULL, NULL, '[object Object]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-13 05:28:21', '2022-03-13 05:28:21'),
(12, NULL, 'Pepermint', NULL, NULL, '[object Object]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-13 22:42:05', '2022-03-13 22:42:05'),
(13, NULL, NULL, NULL, NULL, '[object Object]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-15 03:15:48', '2022-03-15 03:15:48'),
(14, NULL, NULL, NULL, NULL, '[object Object]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-15 03:44:33', '2022-03-15 03:44:33'),
(15, NULL, NULL, NULL, NULL, '[object Object]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-15 03:45:09', '2022-03-15 03:45:09'),
(16, NULL, NULL, NULL, NULL, '[object Object]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-15 03:46:24', '2022-03-15 03:46:24'),
(17, NULL, NULL, NULL, NULL, '[object Object]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-15 03:50:32', '2022-03-15 03:50:32'),
(18, NULL, NULL, NULL, NULL, '[object Object]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-28 00:36:08', '2022-03-28 00:36:08'),
(19, NULL, NULL, NULL, NULL, '[object Object]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-28 00:36:41', '2022-03-28 00:36:41'),
(20, NULL, NULL, NULL, NULL, '[object Object]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-28 06:48:32', '2022-03-28 06:48:32'),
(21, NULL, NULL, NULL, NULL, '[object Object]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-28 22:13:01', '2022-03-28 22:13:01'),
(22, NULL, NULL, NULL, NULL, '[object Object]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-28 22:20:20', '2022-03-28 22:20:20');

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

--
-- Dumping data for table `mhp_cns_part2s`
--

INSERT INTO `mhp_cns_part2s` (`id`, `patient_id`, `biceps_jesk`, `triceps_jesk`, `brachioradialis_jesk`, `finger`, `finger_nose_test`, `dysdiadochokinesis`, `temparature`, `vibration`, `proprioception`, `Pin_Prick_Testing`, `Light_Touch_Testing`, `Picture_upper_limb_dermatomes`, `Picture_upper_limb_dermatomes_details`, `The_Radial_Nerve`, `The_Ulnar_Nerve`, `The_Median_Nerve`, `shoulder_left1`, `shoulder_left2`, `elbow_left1`, `elbow_left2`, `wrist_left1`, `wrist_left2`, `fingerFlexion_left`, `fingerExtension_left`, `fingerAbduction_left`, `fingerAdduction_left`, `shoulder_right1`, `shoulder_right2`, `elbow_right1`, `elbow_right2`, `wrist_right1`, `wrist_right2`, `fingerFlexion_right`, `fingerExtension_right`, `fingerAbduction_right`, `fingerAdduction_right`, `shoulder_reflexes1`, `shoulder_reflexes2`, `elbow_reflexes1`, `elbow_reflexes2`, `wrist_reflexes1`, `wrist_reflexes2`, `fingerFlexion_reflexes`, `fingerExtension_reflexes`, `fingerAbduction_reflexes`, `fingerAdduction_reflexes`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2/5', '2/5', '2/5', '2/5', '4/5', '4+/5', NULL, NULL, NULL, NULL, '2/5', '2/5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-15 03:15:48', '2022-03-15 03:15:48'),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-15 03:44:33', '2022-03-15 03:44:33'),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-15 03:45:09', '2022-03-15 03:45:09'),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-15 03:46:24', '2022-03-15 03:46:24'),
(5, NULL, NULL, '+', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Upper lesion : Unable to elbow extension', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-15 03:50:32', '2022-03-15 03:50:32'),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-28 00:36:08', '2022-03-28 00:36:08'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-28 00:36:41', '2022-03-28 00:36:41'),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-28 06:48:32', '2022-03-28 06:48:32'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-28 22:13:01', '2022-03-28 22:13:01'),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-28 22:20:20', '2022-03-28 22:20:20');

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

--
-- Dumping data for table `mhp_cns_upper_limbs`
--

INSERT INTO `mhp_cns_upper_limbs` (`id`, `cns_part2_id`, `patient_id`, `upperlimb_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '4', NULL, '5', 'true', '2022-03-15 03:46:24', '2022-03-15 03:46:24'),
(2, '4', NULL, '6', 'true', '2022-03-15 03:46:24', '2022-03-15 03:46:24'),
(3, '4', NULL, '7', 'false', '2022-03-15 03:46:25', '2022-03-15 03:46:25'),
(4, '4', NULL, '8', 'true', '2022-03-15 03:46:25', '2022-03-15 03:46:25'),
(5, '5', NULL, '5', 'true', '2022-03-15 03:50:32', '2022-03-15 03:50:32'),
(6, '5', NULL, '6', 'true', '2022-03-15 03:50:32', '2022-03-15 03:50:32'),
(7, '5', NULL, '7', 'false', '2022-03-15 03:50:32', '2022-03-15 03:50:32'),
(8, '5', NULL, '8', 'true', '2022-03-15 03:50:32', '2022-03-15 03:50:32');

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

--
-- Dumping data for table `mhp_cns_visual_fields`
--

INSERT INTO `mhp_cns_visual_fields` (`id`, `cns_part1_id`, `patient_id`, `visualField_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '10', NULL, NULL, 'Central scotomata', '2022-03-13 05:27:54', '2022-03-13 05:27:54'),
(2, '10', NULL, NULL, 'Unilateral filed loss', '2022-03-13 05:27:55', '2022-03-13 05:27:55'),
(3, '10', NULL, NULL, 'Homonymous hemianopia', '2022-03-13 05:27:55', '2022-03-13 05:27:55'),
(4, '11', NULL, NULL, 'Central scotomata', '2022-03-13 05:28:21', '2022-03-13 05:28:21'),
(5, '11', NULL, NULL, 'Unilateral filed loss', '2022-03-13 05:28:22', '2022-03-13 05:28:22'),
(6, '11', NULL, NULL, 'Homonymous hemianopia', '2022-03-13 05:28:22', '2022-03-13 05:28:22'),
(7, '12', NULL, NULL, 'Unilateral filed loss', '2022-03-13 22:42:05', '2022-03-13 22:42:05'),
(8, '12', NULL, NULL, 'Homonymous hemianopia', '2022-03-13 22:42:06', '2022-03-13 22:42:06');

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

--
-- Dumping data for table `mhp_colors`
--

INSERT INTO `mhp_colors` (`id`, `Color_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Brown', 0, '2022-04-09 23:38:39', '2022-04-09 23:38:39'),
(2, 'Green', 0, '2022-04-09 23:38:50', '2022-04-09 23:38:50'),
(3, 'Red', 0, '2022-04-09 23:38:55', '2022-04-09 23:38:55'),
(4, 'Pink', 0, '2022-04-09 23:38:59', '2022-04-09 23:38:59');

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

--
-- Dumping data for table `mhp_color_visions`
--

INSERT INTO `mhp_color_visions` (`id`, `ColorVision_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Normal', 0, NULL, NULL, '2022-03-29 01:31:17', '2022-03-29 01:31:17'),
(2, 'Devtan', 0, NULL, NULL, '2022-03-29 01:31:25', '2022-03-29 01:31:25'),
(3, 'Protan', 0, NULL, NULL, '2022-03-29 01:31:34', '2022-03-29 01:31:34'),
(4, 'Tritan', 0, NULL, NULL, '2022-03-29 01:31:42', '2022-03-29 01:31:42');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_common_histories`
--

CREATE TABLE `mhp_common_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `history_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `examination_id` int(11) NOT NULL,
  `status_id` int(11) DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_common_histories`
--

INSERT INTO `mhp_common_histories` (`id`, `history_name`, `examination_id`, `status_id`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Chest Pain', 2, 2, 0, NULL, NULL, '2022-02-16 23:16:35', '2022-02-24 05:11:04'),
(2, 'Typical Angina', 2, 2, 0, NULL, NULL, '2022-02-16 23:16:54', '2022-02-24 05:11:15'),
(3, 'Chest wall pain', 2, 2, 0, NULL, NULL, '2022-02-16 23:17:09', '2022-02-24 05:11:26'),
(4, 'Chest heavyness', 2, 2, 0, NULL, NULL, '2022-02-16 23:17:21', '2022-02-24 05:11:40'),
(5, 'Pleuritic chest pain', 2, 2, 0, NULL, NULL, '2022-02-16 23:17:38', '2022-02-24 05:11:52'),
(6, 'Chest tightness', 2, 2, 0, NULL, NULL, '2022-02-16 23:17:53', '2022-02-24 05:12:03'),
(7, 'Sweating', 2, 2, 0, NULL, NULL, '2022-02-16 23:19:02', '2022-02-24 05:10:47'),
(8, 'Palpitations', 2, 2, 0, NULL, NULL, '2022-02-16 23:19:19', '2022-02-24 05:10:29'),
(9, 'Ankel swelling', 2, 2, 0, NULL, NULL, '2022-02-16 23:19:32', '2022-02-24 05:10:18'),
(10, 'Sacral oedema', 2, 2, 0, NULL, NULL, '2022-02-16 23:19:43', '2022-02-24 05:09:31'),
(11, 'Syncope', 2, 2, 0, NULL, NULL, '2022-02-16 23:19:54', '2022-02-24 05:09:24'),
(12, 'Presyncope', 2, 2, 0, NULL, NULL, '2022-02-16 23:20:04', '2022-02-24 05:09:17'),
(13, 'Fatigue', 2, 2, 0, NULL, NULL, '2022-02-16 23:20:16', '2022-02-24 05:09:09'),
(14, 'Leg ulcer', 2, 2, 0, NULL, NULL, '2022-02-16 23:20:28', '2022-02-24 05:08:59'),
(15, 'Sputum', 1, NULL, 0, NULL, NULL, '2022-02-24 05:40:02', '2022-02-24 05:40:02'),
(16, 'Haemoptysis test', 1, NULL, 0, NULL, NULL, '2022-02-24 05:40:14', '2022-03-02 23:47:07'),
(17, 'Wheeze', 1, NULL, 0, NULL, NULL, '2022-02-24 05:40:26', '2022-02-24 05:40:26'),
(18, 'Pleuritic Plan', 1, NULL, 0, NULL, NULL, '2022-02-24 05:40:41', '2022-02-24 05:40:41'),
(19, 'Childhood Asthma', 1, NULL, 0, NULL, NULL, '2022-02-24 05:40:55', '2022-02-24 05:40:55'),
(20, 'Night Sweats', 1, NULL, 0, NULL, NULL, '2022-02-24 05:41:08', '2022-02-24 05:41:08'),
(21, 'Fever', 1, NULL, 0, NULL, NULL, '2022-02-24 05:41:22', '2022-02-24 05:41:22'),
(22, 'Hoarseness', 1, NULL, 0, NULL, NULL, '2022-02-24 05:41:33', '2022-02-24 05:41:33'),
(23, 'Hyperventilation', 1, NULL, 0, NULL, NULL, '2022-02-24 05:41:44', '2022-02-24 05:41:44'),
(24, 'Chest Pain', 2, NULL, 0, NULL, NULL, '2022-02-25 22:11:18', '2022-02-25 22:11:18'),
(25, 'Fever', 3, NULL, 0, NULL, NULL, '2022-02-28 23:19:31', '2022-02-28 23:19:31'),
(26, 'Loss of Smell', 3, NULL, 0, NULL, NULL, '2022-02-28 23:19:44', '2022-02-28 23:19:44'),
(27, 'Tiredness', 3, NULL, 0, NULL, NULL, '2022-02-28 23:19:55', '2022-02-28 23:19:55'),
(28, 'Giddiness', 3, NULL, 0, NULL, NULL, '2022-02-28 23:20:09', '2022-02-28 23:20:09'),
(29, 'Malaise', 3, NULL, 0, NULL, NULL, '2022-02-28 23:20:19', '2022-02-28 23:20:19'),
(30, 'Nausea', 5, NULL, 0, NULL, NULL, '2022-03-06 01:10:24', '2022-03-06 01:10:24'),
(31, 'Hematemesis', 5, NULL, 0, NULL, NULL, '2022-03-06 01:10:40', '2022-03-06 01:10:40'),
(32, 'Heart burn', 5, NULL, 0, NULL, NULL, '2022-03-06 01:11:01', '2022-03-06 01:11:01'),
(33, 'Reflux', 5, NULL, 0, NULL, NULL, '2022-03-06 01:11:13', '2022-03-06 01:11:13'),
(34, 'Abdominal swelling', 5, NULL, 0, NULL, NULL, '2022-03-06 01:11:26', '2022-03-06 01:11:26'),
(35, 'Res Heading updaye', 6, NULL, 1, NULL, NULL, '2022-03-11 22:09:07', '2022-03-11 22:09:45'),
(36, 'Urinary frequency', 7, NULL, 0, NULL, NULL, '2022-03-26 23:04:33', '2022-03-26 23:04:33'),
(37, 'Dysuria', 5, NULL, 1, NULL, NULL, '2022-03-26 23:04:44', '2022-03-26 23:39:51'),
(38, 'Dysuria', 7, NULL, 0, NULL, NULL, '2022-03-26 23:04:54', '2022-03-26 23:04:54'),
(39, 'Urgency', 7, NULL, 0, NULL, NULL, '2022-03-26 23:05:07', '2022-03-26 23:05:07'),
(40, 'Nocturea', 7, NULL, 0, NULL, NULL, '2022-03-26 23:05:20', '2022-03-26 23:05:20'),
(41, 'Haematurea', 7, NULL, 0, NULL, NULL, '2022-03-26 23:05:41', '2022-03-26 23:05:41'),
(42, 'Hesitancy', 7, NULL, 0, NULL, NULL, '2022-03-26 23:05:52', '2022-03-26 23:05:52'),
(43, 'Stress Incontinence', 7, NULL, 0, NULL, NULL, '2022-03-26 23:06:07', '2022-03-26 23:06:07'),
(44, 'Urge Incontinence', 7, NULL, 0, NULL, NULL, '2022-03-26 23:06:21', '2022-03-26 23:06:21'),
(45, 'Hesitancy', 7, NULL, 0, NULL, NULL, '2022-03-26 23:14:23', '2022-03-26 23:14:23'),
(46, 'Stress Incontinence', 7, NULL, 0, NULL, NULL, '2022-03-26 23:14:38', '2022-03-26 23:14:38'),
(47, 'Urge Incontinence', 7, NULL, 0, NULL, NULL, '2022-03-26 23:37:24', '2022-03-26 23:37:24'),
(48, 'Difficulty Voiding', 7, NULL, 0, NULL, NULL, '2022-03-26 23:37:37', '2022-03-26 23:37:37'),
(49, 'Disorientation', 8, NULL, 0, NULL, NULL, '2022-03-30 03:50:12', '2022-03-30 03:50:12'),
(50, 'Pins and Needles', 8, NULL, 0, NULL, NULL, '2022-03-30 03:50:21', '2022-03-30 03:50:21'),
(51, 'Fits', 8, NULL, 0, NULL, NULL, '2022-03-30 03:50:28', '2022-03-30 03:50:28'),
(52, 'Deafness', 8, NULL, 0, NULL, NULL, '2022-03-30 03:50:38', '2022-03-30 03:50:38'),
(53, 'Unconscious', 8, NULL, 0, NULL, NULL, '2022-03-30 03:50:51', '2022-03-30 03:50:51'),
(54, 'Numbness', 8, NULL, 0, NULL, NULL, '2022-03-30 03:51:06', '2022-03-30 03:51:06'),
(55, 'Faints', 8, NULL, 0, NULL, NULL, '2022-03-30 03:51:16', '2022-03-30 03:51:16'),
(56, 'Confusion', 8, NULL, 0, NULL, NULL, '2022-03-30 03:51:24', '2022-03-30 03:51:24'),
(57, 'Weakness', 8, NULL, 0, NULL, NULL, '2022-03-30 03:51:32', '2022-03-30 03:51:32'),
(58, 'Neck Stiffnes', 8, NULL, 0, NULL, NULL, '2022-03-30 03:51:42', '2022-03-30 03:51:42'),
(59, 'Facial Pain', 8, NULL, 0, NULL, NULL, '2022-03-30 03:51:50', '2022-03-30 03:51:50'),
(60, 'Aura', 8, NULL, 0, NULL, NULL, '2022-03-30 03:52:02', '2022-03-30 03:52:02'),
(61, 'Tremor', 8, NULL, 0, NULL, NULL, '2022-03-30 03:52:11', '2022-03-30 03:52:11'),
(62, 'Neck Pain', 8, NULL, 0, NULL, NULL, '2022-03-30 03:52:19', '2022-03-30 03:52:19'),
(63, 'Dysphasia', 8, NULL, 0, NULL, NULL, '2022-03-30 03:52:30', '2022-03-30 03:52:30'),
(64, 'Anosmia', 8, NULL, 0, NULL, NULL, '2022-03-30 03:52:43', '2022-03-30 03:52:43'),
(65, 'Slurred Speec', 7, NULL, 0, NULL, NULL, '2022-03-30 03:52:53', '2022-03-30 03:52:53'),
(66, 'Incoordination', 8, NULL, 0, NULL, NULL, '2022-03-30 03:53:07', '2022-03-30 03:53:07'),
(67, 'Dizziness', 8, NULL, 0, NULL, NULL, '2022-03-30 03:53:20', '2022-03-30 03:53:20'),
(68, 'Abnormal Gait', 8, NULL, 0, NULL, NULL, '2022-03-30 03:53:34', '2022-03-30 03:53:34'),
(69, 'Fear of losing central of oneself', 10, NULL, 0, NULL, NULL, '2022-04-02 22:23:27', '2022-04-02 22:23:27'),
(70, 'Fear of dying', 10, NULL, 0, NULL, NULL, '2022-04-02 22:23:38', '2022-04-02 22:23:38'),
(71, 'A feeling of being separated from self', 10, NULL, 0, NULL, NULL, '2022-04-02 22:23:49', '2022-04-02 22:23:49'),
(72, 'Bereavement', 10, NULL, 0, NULL, NULL, '2022-04-02 22:23:59', '2022-04-02 22:23:59'),
(73, 'Relationship Problem', 10, NULL, 0, NULL, NULL, '2022-04-02 22:24:10', '2022-04-02 22:24:10'),
(74, 'Financial Stress', 10, NULL, 0, NULL, NULL, '2022-04-02 22:24:20', '2022-04-02 22:24:20'),
(75, 'Work Stress', 10, NULL, 0, NULL, NULL, '2022-04-02 22:24:32', '2022-04-02 22:24:32'),
(76, 'Irritability', 10, NULL, 0, NULL, NULL, '2022-04-02 22:24:42', '2022-04-02 22:24:42'),
(77, 'Headache', 10, NULL, 0, NULL, NULL, '2022-04-02 22:24:55', '2022-04-02 22:24:55'),
(78, 'Abdominal Pain', 10, NULL, 0, NULL, NULL, '2022-04-02 22:25:09', '2022-04-02 22:25:09'),
(79, 'Choking Sensation', 10, NULL, 0, NULL, NULL, '2022-04-02 22:25:23', '2022-04-02 22:25:23'),
(80, 'Trembling', 10, NULL, 0, NULL, NULL, '2022-04-02 22:25:41', '2022-04-02 22:25:41'),
(81, 'Sweating', 10, NULL, 0, NULL, NULL, '2022-04-02 22:25:57', '2022-04-02 22:25:57'),
(82, 'Compulsive Behaviour', 10, NULL, 0, NULL, NULL, '2022-04-02 22:26:11', '2022-04-02 22:26:11'),
(83, 'Low Self Esteem', 10, NULL, 0, NULL, NULL, '2022-04-02 22:26:30', '2022-04-02 22:26:30'),
(84, 'Poor Sleep', 10, NULL, 0, NULL, NULL, '2022-04-02 22:26:58', '2022-04-02 22:26:58'),
(85, 'Panic Attacks', 10, NULL, 0, NULL, NULL, '2022-04-02 22:27:17', '2022-04-02 22:27:17'),
(86, 'Depressed Mood', 10, NULL, 0, NULL, NULL, '2022-04-02 22:27:39', '2022-04-02 22:27:39'),
(87, 'Anxious Feeling', 10, NULL, 0, NULL, NULL, '2022-04-02 22:27:51', '2022-04-02 22:27:51'),
(88, 'Swelling', 11, NULL, 0, NULL, NULL, '2022-04-09 00:01:02', '2022-04-09 00:01:02'),
(89, 'Trauma', 11, NULL, 0, NULL, NULL, '2022-04-09 00:01:09', '2022-04-09 00:01:09'),
(90, 'Asymmetry', 11, NULL, 0, NULL, NULL, '2022-04-09 00:01:17', '2022-04-09 00:01:17'),
(91, 'Effusion', 11, NULL, 0, NULL, NULL, '2022-04-09 00:01:30', '2022-04-09 00:01:30'),
(92, 'Scarring', 11, NULL, 0, NULL, NULL, '2022-04-09 00:01:39', '2022-04-09 00:01:39'),
(93, 'Scarring', 11, NULL, 0, NULL, NULL, '2022-04-09 00:01:48', '2022-04-09 00:01:48'),
(94, 'Weeakness', 11, NULL, 0, NULL, NULL, '2022-04-09 00:01:59', '2022-04-09 00:01:59'),
(95, 'Wasting', 11, NULL, 0, NULL, NULL, '2022-04-09 00:02:08', '2022-04-09 00:02:08'),
(96, 'Ecchymosis', 11, NULL, 0, NULL, NULL, '2022-04-09 00:02:29', '2022-04-09 00:02:29'),
(97, 'Restricted range of movements', 11, NULL, 0, NULL, NULL, '2022-04-09 00:02:39', '2022-04-09 00:02:39'),
(98, 'Motor Vehicle Accidents', 11, NULL, 0, NULL, NULL, '2022-04-09 00:02:49', '2022-04-09 00:02:49'),
(99, 'Compare to right to left', 11, NULL, 0, NULL, NULL, '2022-04-09 00:03:01', '2022-04-09 00:03:01'),
(100, 'Abnormal Posture', 11, NULL, 0, NULL, NULL, '2022-04-09 00:03:12', '2022-04-09 00:03:12'),
(101, 'Abnormal Gait', 11, NULL, 0, NULL, NULL, '2022-04-09 00:03:21', '2022-04-09 00:03:21'),
(102, 'Difficulty Voiding', 12, NULL, 0, NULL, NULL, '2022-04-09 23:15:11', '2022-04-09 23:15:11'),
(103, 'Urge Incontinence', 12, NULL, 0, NULL, NULL, '2022-04-09 23:15:20', '2022-04-09 23:15:20'),
(104, 'Stress Incontinence', 12, NULL, 0, NULL, NULL, '2022-04-09 23:15:29', '2022-04-09 23:15:29'),
(105, 'Fever', 12, NULL, 0, NULL, NULL, '2022-04-09 23:15:40', '2022-04-09 23:15:40'),
(106, 'Pain', 12, NULL, 0, NULL, NULL, '2022-04-09 23:15:50', '2022-04-09 23:15:50'),
(107, 'Swelling', 12, NULL, 0, NULL, NULL, '2022-04-09 23:16:00', '2022-04-09 23:16:00'),
(108, 'Itchiness', 12, NULL, 0, NULL, NULL, '2022-04-09 23:16:08', '2022-04-09 23:16:08'),
(109, 'Leison', 12, NULL, 0, NULL, NULL, '2022-04-09 23:16:40', '2022-04-09 23:16:40'),
(110, 'Rash', 12, NULL, 0, NULL, NULL, '2022-04-09 23:16:50', '2022-04-09 23:16:50');

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

--
-- Dumping data for table `mhp_contact_vias`
--

INSERT INTO `mhp_contact_vias` (`id`, `contact_via_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Friends', 0, NULL, NULL, '2022-03-15 22:06:42', '2022-03-15 22:06:42');

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

--
-- Dumping data for table `mhp_continuouses`
--

INSERT INTO `mhp_continuouses` (`id`, `Continuous_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'No hearing loss (VN- Vestibular Neuronitis', 0, '2022-04-06 23:14:30', '2022-04-06 23:14:30'),
(2, '\"With hearing loss (Labyrinthitis)', 0, '2022-04-06 23:26:34', '2022-04-06 23:26:34');

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

--
-- Dumping data for table `mhp_coughs`
--

INSERT INTO `mhp_coughs` (`id`, `cough_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Dry Cough', 0, NULL, NULL, '2022-03-01 03:13:58', '2022-03-03 03:10:29'),
(2, 'Moise Cough', 0, NULL, NULL, '2022-03-03 03:12:03', '2022-03-03 03:12:03'),
(3, 'Night Cough', 0, NULL, NULL, '2022-03-03 03:12:15', '2022-03-03 03:12:15'),
(4, 'Husky Cough', 0, NULL, NULL, '2022-03-03 03:12:24', '2022-03-03 03:12:24');

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
(1, 'Bangladesh', 0, NULL, NULL, '2022-03-15 22:06:01', '2022-03-15 22:06:01');

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
-- Table structure for table `mhp_current_excercise_levels`
--

CREATE TABLE `mhp_current_excercise_levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
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

--
-- Dumping data for table `mhp_custom_medicines`
--

INSERT INTO `mhp_custom_medicines` (`id`, `custom_medicine_name`, `strength`, `medicine_category_id`, `other_details`, `route_id`, `qty`, `unit`, `repeats`, `restriction_id`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Napa', '5 mg', NULL, 'test details', '2', '10', '10', '10', NULL, '0', '2022-04-06 02:41:48', '2022-04-06 02:41:48'),
(2, 'Test', '5 mg', NULL, 'this is stest', '2', '10', 'pcs', '10', NULL, '0', '2022-04-06 02:45:03', '2022-04-06 02:45:03');

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

--
-- Dumping data for table `mhp_c_s_t_s`
--

INSERT INTO `mhp_c_s_t_s` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Not Performed', 0, '2022-04-16 03:07:23', '2022-04-16 03:07:23'),
(2, 'Performed', 0, '2022-04-16 03:07:28', '2022-04-16 03:07:28');

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

--
-- Dumping data for table `mhp_deafnesses`
--

INSERT INTO `mhp_deafnesses` (`id`, `Deafness_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Sudden', 0, '2022-04-05 00:05:49', '2022-04-05 00:05:49'),
(2, 'Gradual', 0, '2022-04-05 00:05:57', '2022-04-05 00:05:57');

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
  `DiagnosisProcedure_code` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DiagnosisProcedure_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_diagnosis_procedures`
--

INSERT INTO `mhp_diagnosis_procedures` (`id`, `DiagnosisProcedure_type`, `DiagnosisProcedure_code`, `DiagnosisProcedure_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Diagnosis', 'A001', 'Cholera due to Vibrio cholerae 01, biovar cholerae', 0, '2022-03-30 04:01:20', '2022-04-03 21:51:05'),
(2, 'Diagnosis', 'A002', 'Cholera due to Vibrio cholerae 01, biovar eltor', 0, '2022-03-30 04:03:56', '2022-04-03 21:43:04'),
(3, 'Diagnosis', 'A003', 'Cholera, unspecified', 0, '2022-03-30 04:06:58', '2022-04-03 21:42:55'),
(4, 'Diagnosis', 'A004', 'Typhoid fever, unspecified', 0, '2022-03-30 04:07:49', '2022-04-03 21:42:47'),
(5, 'Diagnosis', 'A005', 'Typhoid meningitis', 0, '2022-03-30 04:08:15', '2022-04-03 21:42:36'),
(6, 'ReasonForVisit', 'A001', 'Cholera, unspecified', 0, '2022-04-03 21:54:08', '2022-04-03 22:05:10'),
(7, 'Diagnosis', 'A006', 'New test', 0, '2022-04-04 00:52:03', '2022-04-04 00:52:03'),
(8, 'ResonForVisit', 'A002', 'new test1', 0, '2022-04-04 00:52:36', '2022-04-04 00:52:36'),
(9, 'Procedure', 'A005', 'Cholera, unspecified', 0, '2022-04-05 23:32:04', '2022-04-05 23:32:04');

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
(1, 'Procedure', 'test-1', 0, '2022-04-03 22:19:15', '2022-04-03 22:19:15'),
(2, 'Procedure', 'test-2', 0, '2022-04-03 22:19:25', '2022-04-03 22:19:25'),
(3, 'Diagnosis', 'test1', 0, '2022-04-03 22:19:40', '2022-04-03 22:19:40'),
(4, 'Diagnosis', 'test 4', 0, '2022-04-04 21:37:20', '2022-04-04 21:37:20'),
(5, 'ResonForVisit', 'dfsa', 0, '2022-04-05 23:28:01', '2022-04-05 23:28:01');

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
(1, 'Procedure', 'test1 for', 0, '2022-04-03 22:10:29', '2022-04-04 21:36:51'),
(2, 'Procedure', 'test2', 0, '2022-04-03 22:10:42', '2022-04-03 22:10:42'),
(3, 'Diagnosis', 'test for 3', 0, '2022-04-03 22:10:52', '2022-04-04 21:36:38'),
(4, 'Diagnosis', 'test 4 for', 0, '2022-04-04 21:37:05', '2022-04-04 21:37:05'),
(5, 'ResonForVisit', 'test for 3', 0, '2022-04-05 23:28:09', '2022-04-05 23:28:09');

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

--
-- Dumping data for table `mhp_diarrhoeas`
--

INSERT INTO `mhp_diarrhoeas` (`id`, `Diarrhoea_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Watery', 0, NULL, NULL, '2022-03-07 04:30:08', '2022-03-07 04:30:08'),
(2, 'Mucos', 0, NULL, NULL, '2022-03-07 04:30:16', '2022-03-07 04:30:16'),
(3, 'Sticky stool', 0, NULL, NULL, '2022-03-07 04:30:25', '2022-03-07 04:30:25'),
(4, 'Acute', 0, NULL, NULL, '2022-03-07 04:30:33', '2022-03-07 04:30:33'),
(5, 'Chronic', 0, NULL, NULL, '2022-03-07 04:30:42', '2022-03-07 04:30:42'),
(6, 'Pale fatty floats', 0, NULL, NULL, '2022-03-07 04:31:01', '2022-03-07 04:31:01'),
(7, 'extremely smelly', 0, NULL, NULL, '2022-03-07 04:31:06', '2022-03-07 04:31:06');

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

--
-- Dumping data for table `mhp_digitals`
--

INSERT INTO `mhp_digitals` (`id`, `digital_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Bkash', 0, NULL, NULL, '2022-03-10 03:13:58', '2022-03-10 03:13:58'),
(2, 'Nogod', 0, NULL, NULL, '2022-03-10 03:14:05', '2022-03-10 03:14:05'),
(3, 'Q-Cash', 0, NULL, NULL, '2022-03-10 03:14:14', '2022-03-10 03:14:14');

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

--
-- Dumping data for table `mhp_distal_interphalangeal_joints`
--

INSERT INTO `mhp_distal_interphalangeal_joints` (`id`, `DistalInterphalangealJoint_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'test 1', 0, NULL, NULL, '2022-05-11 04:13:26', '2022-05-11 04:13:26');

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

--
-- Dumping data for table `mhp_doctors_academics`
--

INSERT INTO `mhp_doctors_academics` (`id`, `doctors_master_id`, `degree_id`, `passing_year`, `result`, `institution_id`, `country_id`, `city_id`, `scan_copy`, `scan_copy_title`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '3', 'D1', '2018', 'null', NULL, '1', '1', '4102149649byden.jpg', 'scan1', 0, NULL, NULL, '2022-04-20 21:16:19', '2022-04-20 21:16:19');

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

--
-- Dumping data for table `mhp_doctors_departments`
--

INSERT INTO `mhp_doctors_departments` (`id`, `departments_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Dermatologists', 0, NULL, NULL, '2022-03-23 06:44:09', '2022-03-23 06:44:09'),
(2, 'Gastroenterologists', 0, NULL, NULL, '2022-03-23 06:44:17', '2022-03-23 06:44:17');

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
  `dr_about` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_experience_years` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(1, '12345678', 'null', '1', '2', NULL, 'null', 'Dr. Aminur Rahman', 'Rahman', 'Aminur', 'null', 'This is aminur rahahman', '10', 'Dhaka', 'null', '123546-55', 'aminur.rahaman@macrohealthplus.org', NULL, '1922-01-01', '1', 'null', '2000', '01996325', '607-637-3099', '012444', 'null', '1', '5388949649byden.jpg', '0', NULL, NULL, '2022-02-08 23:25:11', '2022-04-19 00:03:02'),
(2, '12345678', 'null', '2', '1', NULL, 'Shafiqul Islam', 'Jason M. Shaw', 'null', 'Ismith', 'null', 'null', 'null', 'null', 'null', 'null', 'test123@gmail.com', NULL, '2000-01-01', '1', 'null', '1205', '014', '014', '019999999999', 'null', 'null', '64574chest-anatomy-artwork-D65NNP.jpg', '0', NULL, NULL, '2022-03-15 04:11:58', '2022-03-23 06:46:34'),
(3, '123-123', '1', '2', '2', NULL, 'Shafiqul Islam', 'Hossain', 'Rahman', 'Aminur', 'Shafiqul', 'Hi,this is Hossain', '10', 'null', 'null', 'null', 's@gmail.com', NULL, '2022-03-10', '1', '1', '2000', 'null', 'null', '017927777', 'null', '1', '32330attractive-man-breathing-outdoor-sky-background-35879609.jpg', '0', NULL, NULL, '2022-03-15 22:14:26', '2022-04-16 20:52:22');

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
  `type` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_doctor_chambers`
--

INSERT INTO `mhp_doctor_chambers` (`id`, `doctor_id`, `chamber_id`, `year`, `month`, `all_month`, `day`, `slot_from`, `slot_to`, `type`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '2022-04-16T09:51:14.819Z', 'february', '1', 'sunday', '2020-01-01T02:35:00.000Z', '2020-01-01T02:56:00.000Z', 'morning', 0, '2022-04-16 03:55:49', '2022-04-16 03:55:49'),
(2, '1', '1', '2022-04-16T09:51:14.819Z', 'february', '1', 'monday', '1899-12-31T14:47:40.000Z', '1899-12-31T15:01:40.000Z', 'night', 0, '2022-04-16 03:55:49', '2022-04-16 03:55:49'),
(3, '2', '1', '2022-04-18T03:27:25.848Z', 'may', '1', 'monday', '1899-12-31T09:06:40.000Z', '1899-12-31T09:36:40.000Z', 'evening', 1, '2022-04-17 21:28:08', '2022-04-27 02:14:40'),
(4, NULL, NULL, '2022-04-18T03:27:25.848Z', NULL, NULL, 'tuesday', '1899-12-31T13:06:40.000Z', '1899-12-31T13:36:40.000Z', 'night', 1, '2022-04-17 21:28:08', '2022-04-27 02:14:44'),
(5, '1', '1', '2022-04-18T03:33:40.543Z', 'june', '1', 'wednesday', '1899-12-31T13:06:40.000Z', '1899-12-31T13:36:40.000Z', 'night', 0, '2022-04-17 21:40:40', '2022-04-17 21:40:40'),
(6, '1', '1', '2022-04-18T03:33:40.543Z', 'june', '1', 'wednesday', '1899-12-31T13:06:40.000Z', '1899-12-31T13:35:40.000Z', 'night', 0, '2022-04-17 21:40:40', '2022-04-17 21:40:40'),
(7, '2', '1', '2022-04-27T06:09:50.839Z', 'march', '1', 'sunday', '1899-12-31T05:06:40.000Z', '1899-12-31T05:36:40.000Z', 'day', 0, '2022-04-27 00:13:03', '2022-04-27 00:13:03'),
(8, '1', '1', '2022-04-27T06:09:50.839Z', 'february', '1', 'saturday', '1899-12-31T01:06:40.000Z', '1899-12-31T01:36:40.000Z', 'morning', 0, '2022-04-27 00:13:03', '2022-04-27 00:13:03'),
(9, '2', '1', '2022-04-27T08:14:53.599Z', 'march', '1', 'sunday', '1899-12-31T01:06:40.000Z', '1899-12-31T01:36:40.000Z', 'morning', 0, '2022-04-27 00:13:03', '2022-04-27 02:15:04');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_doctor_fees`
--

CREATE TABLE `mhp_doctor_fees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctorfee_id` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee_name` int(11) DEFAULT NULL,
  `item_code` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_doctor_fees`
--

INSERT INTO `mhp_doctor_fees` (`id`, `doctor_id`, `doctorfee_id`, `fee_name`, `item_code`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, '1', '2', 2000, 'Item-102', 0, '2022-03-01 04:26:10', '2022-03-15 04:13:58'),
(2, '1', '1', 700, 'item102', 0, '2022-03-15 04:14:28', '2022-03-15 04:14:28'),
(3, '1', '3', 500, 'item201', 0, '2022-03-15 04:15:00', '2022-03-15 04:15:00'),
(4, '2', '1', 1200, 'item107', 0, '2022-03-15 04:15:39', '2022-03-15 04:15:39'),
(5, '2', '2', 15000, 'item108', 0, '2022-03-15 04:15:56', '2022-03-15 05:54:17');

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

--
-- Dumping data for table `mhp_doctor_fee_names`
--

INSERT INTO `mhp_doctor_fee_names` (`id`, `fee_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Consultation Fee', 0, '2022-03-14 22:43:09', '2022-03-14 22:43:09'),
(2, 'Service Fee', 0, '2022-03-14 22:43:20', '2022-03-14 22:43:20'),
(3, 'Others Charge', 0, '2022-03-14 22:43:32', '2022-03-14 22:43:32');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_dorsum_of_feet`
--

CREATE TABLE `mhp_dorsum_of_feet` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

--
-- Dumping data for table `mhp_dose_names`
--

INSERT INTO `mhp_dose_names` (`id`, `dose_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '1', 1, NULL, NULL, '2022-02-09 04:32:55', '2022-02-09 05:04:29'),
(2, '1/2', 0, NULL, NULL, '2022-02-09 04:32:59', '2022-02-09 04:32:59'),
(3, '2.5 ml', 0, NULL, NULL, '2022-02-09 04:33:09', '2022-02-09 04:33:09');

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
  `delete_status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_drug_generic_names`
--

INSERT INTO `mhp_drug_generic_names` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Paracetamol', 0, NULL, '2022-02-15 22:10:40'),
(2, 'Fexofenadine', 0, '2022-02-10 00:30:23', '2022-02-15 22:11:05'),
(3, 'Omeprazole', 0, '2022-02-15 22:21:32', '2022-02-15 22:21:32'),
(4, 'Metformin Hydrochloride + Sitagliptin', 0, '2022-03-24 03:18:22', '2022-03-24 03:18:22'),
(5, 'Tofacitinib', 0, '2022-03-24 03:18:33', '2022-03-24 03:18:33'),
(6, 'Sitagliptin', 0, '2022-03-24 03:18:43', '2022-03-24 03:18:43'),
(7, 'Empagliflozin', 0, '2022-03-24 03:18:52', '2022-03-24 03:18:52'),
(8, 'Empagliflozin + Metformin Hydrochloride', 0, '2022-04-12 02:39:05', '2022-04-12 02:39:05');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_drug_names`
--

CREATE TABLE `mhp_drug_names` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `src_primary_key` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `strength` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `macrohealth_sg` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mims_sg` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mims_type` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guid` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_types` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drug_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drug_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rpts` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restriction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bpp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generic_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_favourite` int(20) NOT NULL DEFAULT 0,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_drug_names`
--

INSERT INTO `mhp_drug_names` (`id`, `src_primary_key`, `strength`, `macrohealth_sg`, `mims_sg`, `mims_type`, `guid`, `product_types`, `drug_name`, `drug_description`, `qty`, `rpts`, `restriction`, `bpp`, `tgp`, `generic_id`, `is_favourite`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Napa | 500 mg', 'Napa des', '10', '12', NULL, '12', '12', '1', 1, 0, NULL, NULL, '2022-02-08 23:23:21', '2022-02-16 01:08:39'),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Napa | 120 mg', 'Napa Description', '10', '10', 'Napa 200 mg Restriction', '12', '12', '1', 0, 0, NULL, NULL, NULL, '2022-02-15 22:12:32'),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dolo 500mg', 'Napa 700 mg details....', '10', '0', 'Napa 700 mg Restriction', '10', '10', '1', 1, 0, NULL, NULL, NULL, '2022-02-16 01:30:30'),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pacimol 500mg', 'Pacimol  description', '10', '11', NULL, '13', '11', '1', 0, 0, NULL, NULL, '2022-02-15 22:14:28', '2022-02-15 22:14:28'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Fepanil-500', 'Fepanil-500  description', '10', '10', NULL, '01', '11', '1', 1, 0, NULL, NULL, '2022-02-15 22:15:23', '2022-02-25 22:12:24'),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Fexo 120 mg', 'fexodine 120 mg description', '10', '10', NULL, '01', '01', '2', 0, 0, NULL, NULL, '2022-02-15 22:16:41', '2022-02-15 22:20:03'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Fexodine 180 mg', 'fexodine 180 description', '10', '10', NULL, '10', '10', '2', 0, 0, NULL, NULL, '2022-02-15 22:17:18', '2022-02-15 22:19:10'),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Seclo 20 mg', 'Seclo 20 mg description', '10', '10', NULL, '10', '10', '3', 0, 0, NULL, NULL, '2022-02-15 22:22:28', '2022-02-15 22:22:28'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Omeprazole 20mg', 'Omeprazole 20mg description', '10', '10', 'gfdgf', '10', '10', '3', 0, 0, NULL, NULL, '2022-02-15 22:23:36', '2022-03-24 00:01:01'),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Napa 500', 'dsfsadf', '544', '555', 'gfdgf', '444', '44', '1', 0, 0, NULL, NULL, '2022-03-24 01:28:08', '2022-03-24 01:28:08'),
(11, '13667', '5 mg', 'Jaknib 5 mg', 'tofacitinib 5mg Film Coated Tablet', 'GGPI', '1D78E7E4-2E25-42CB-A380-C8D2CD7CBF73', 'mims', 'Jaknib 5 mg', 'Tablet', '11', '10', '10', '10', '10', '5', 0, 0, NULL, NULL, '2022-03-24 03:22:23', '2022-03-24 03:22:23'),
(12, '29445', '1000 mg + 50 mg', 'Janmet 1000', 'metformin hydrochloride 1000mg - sitagliptin 50mg Oral Tablet', 'GGPI', '1E716421-6E51-43DA-825C-1FD8E4E08B44', 'mims', 'metformin hydrochloride 1000mg - sitagliptin 50mg Oral Tablet', 'Tablet', '22', '22', '22', '22', '22', '4', 0, 0, NULL, NULL, '2022-03-24 03:25:41', '2022-03-24 03:25:41'),
(13, '29803', '500 mg + 50 mg', 'Janmet XR 50/500 Tablet', 'metformin hydrochloride 500mg - sitagliptin phosphate 50mg Extended Release Tablet', 'GGPI', '{BA822AAD-6638-412F-9655-968341743D3B}', 'mims', 'Janmet XR 50/500 Tablet', 'Er Tablet', '10', '10', '10', '10', '10', '4', 0, 0, NULL, NULL, '2022-04-12 02:17:24', '2022-04-12 02:17:24'),
(14, '29424', '100 mg', 'Janvia 100', 'sitagliptin 100mg Oral Tablet', 'GGPI', '{8FAAAC58-9E51-4454-8A3A-BFD253CE5007}', 'mims', 'Janvia 100', 'Tablet', '10', '10', '10', '10', '10', '6', 0, 0, NULL, NULL, '2022-04-12 02:21:07', '2022-04-12 02:21:07'),
(15, '29423', '5 mg + 500 mg', 'Jardimet 5/500', 'empagliflozin 5mg - metformin hydrochloride 500mg Film Coated Tablet', 'GGPI', '{162689A5-7471-4DC2-A0F1-6E513D3A1C25}', 'mims', 'Jardimet 5/500', 'Tablet', '20', '10', '10', '15', '10', '8', 0, 0, NULL, NULL, '2022-04-12 02:43:23', '2022-04-12 02:53:00');

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

--
-- Dumping data for table `mhp_drug_units`
--

INSERT INTO `mhp_drug_units` (`id`, `drug_unit`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '1', 0, NULL, NULL, '2022-02-09 04:09:33', '2022-02-09 04:09:33'),
(2, '1/2', 0, NULL, NULL, '2022-02-09 04:09:39', '2022-02-09 04:09:39'),
(3, '2 drops', 0, NULL, NULL, '2022-02-09 04:09:55', '2022-02-09 04:09:55'),
(4, '2.5 ml', 0, NULL, NULL, '2022-02-09 04:10:12', '2022-02-09 04:10:12');

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

--
-- Dumping data for table `mhp_durations`
--

INSERT INTO `mhp_durations` (`id`, `Duration_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Days', 0, NULL, NULL, '2022-03-07 01:23:40', '2022-03-07 01:23:40'),
(2, 'Weeks', 0, NULL, NULL, '2022-03-07 01:23:47', '2022-03-07 01:23:47'),
(3, 'Months', 0, NULL, NULL, '2022-03-07 01:23:55', '2022-03-07 01:23:55');

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

--
-- Dumping data for table `mhp_dysphagias`
--

INSERT INTO `mhp_dysphagias` (`id`, `Dysphagia_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Solid', 0, NULL, NULL, '2022-03-07 04:21:35', '2022-03-07 04:21:35'),
(2, 'Liquid', 0, NULL, NULL, '2022-03-07 04:21:44', '2022-03-07 04:21:44'),
(3, 'Both solid and liquid', 0, NULL, NULL, '2022-03-07 04:21:52', '2022-03-07 04:21:52'),
(4, 'Food regurgitate to nose', 0, NULL, NULL, '2022-03-07 04:22:01', '2022-03-07 04:22:01'),
(5, 'Food sticking into oesophagus', 0, NULL, NULL, '2022-03-07 04:22:12', '2022-03-07 04:22:12');

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

--
-- Dumping data for table `mhp_dyspneas`
--

INSERT INTO `mhp_dyspneas` (`id`, `dyspnea_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Acuate', 0, NULL, NULL, '2022-03-05 01:28:23', '2022-03-05 01:28:23'),
(2, 'Progressive', 0, NULL, NULL, '2022-03-05 01:28:32', '2022-03-05 01:28:32'),
(3, 'Paroxysmal', 0, NULL, NULL, '2022-03-05 01:28:41', '2022-03-05 01:28:41');

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

--
-- Dumping data for table `mhp_dyspnea_classes`
--

INSERT INTO `mhp_dyspnea_classes` (`id`, `dyspneaClass_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Class I', 0, NULL, NULL, '2022-03-05 01:33:23', '2022-03-05 01:33:23'),
(2, 'Class II', 0, NULL, NULL, '2022-03-05 01:33:32', '2022-03-05 01:33:32'),
(3, 'Class III', 0, NULL, NULL, '2022-03-05 01:33:40', '2022-03-05 01:33:40'),
(4, 'Class IV', 0, NULL, NULL, '2022-03-05 01:33:54', '2022-03-05 01:33:54');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_d_i_p_joints`
--

CREATE TABLE `mhp_d_i_p_joints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
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

--
-- Dumping data for table `mhp_ear_canals`
--

INSERT INTO `mhp_ear_canals` (`id`, `canal_name`, `canal_status`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Red', '1', 'single', 0, NULL, NULL, '2022-04-04 23:47:48', '2022-04-04 23:47:48'),
(2, 'Wax', '1', 'multiple', 0, NULL, NULL, '2022-04-04 23:47:57', '2022-04-04 23:47:57');

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

--
-- Dumping data for table `mhp_ear_discharges`
--

INSERT INTO `mhp_ear_discharges` (`id`, `EarDischarge_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Green', 0, '2022-04-05 00:02:44', '2022-04-05 00:02:44'),
(2, 'Black', 0, '2022-04-05 00:02:57', '2022-04-05 00:02:57'),
(3, 'White', 0, '2022-04-05 00:03:08', '2022-04-05 00:03:08'),
(4, 'Pus', 0, '2022-04-05 00:03:14', '2022-04-05 00:03:14');

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

--
-- Dumping data for table `mhp_ear_lesions`
--

INSERT INTO `mhp_ear_lesions` (`id`, `earLesion_name`, `status`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Nodular', '1', 'single', 0, NULL, NULL, '2022-04-05 00:23:58', '2022-04-05 00:23:58'),
(2, 'Discharge', '1', 'single', 0, NULL, NULL, '2022-04-05 00:24:17', '2022-04-05 00:24:17'),
(3, 'Ulcerated', '1', 'multiple', 0, NULL, NULL, '2022-04-05 00:24:29', '2022-04-05 00:24:29'),
(4, 'Tender', '1', 'single', 0, NULL, NULL, '2022-04-05 00:27:32', '2022-04-05 00:27:32');

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
  `signature_image` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_employees`
--

INSERT INTO `mhp_employees` (`id`, `identity_no`, `title`, `department_id`, `specialists_id`, `department_name`, `first_name`, `given_name`, `middle_name`, `last_name`, `preferred_name`, `address_line_1`, `address_line_2`, `bmdc_reg_no`, `email`, `is_referred`, `dob`, `birth_sex_id`, `city_id`, `postal_code`, `home_phone`, `work_phone`, `mobile_phone`, `contact_via_id`, `provider_id`, `user_type_id`, `image`, `signature_image`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, '1212', '2', '2', '2', NULL, 'Jabed', 'Jabed Akhter', 'Akhter', 'Akhter', 'fdsa', 'dasfvzx', 'cxvzxcv', 'zxcvcv', 'sandy@gmail.com', NULL, '2022-04-25', '2', '1', '1212', '11', '01011', 'fdsaf', 'null', '1', '2', '54913attractive-man-breathing-outdoor-sky-background-35879609.jpg', '85995chest-anatomy-artwork-D65NNP.jpg', '0', '2022-04-23 21:54:59', '2022-04-23 21:57:18');

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
-- Table structure for table `mhp_endurances`
--

CREATE TABLE `mhp_endurances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

--
-- Dumping data for table `mhp_ent_examinations`
--

INSERT INTO `mhp_ent_examinations` (`id`, `patient_id`, `ear_his_side`, `earDischarge_his_value`, `deafness_his_value`, `tinnitus_his_side`, `face_his_side`, `earLesion`, `earLesionPart`, `earlessionleftMMX`, `earlessionRightMMX`, `earCanal_value`, `earCanal_side`, `discharge_side`, `body_side`, `lymph_value`, `wax_side`, `glueEar_side`, `glueEar_value`, `mastoid_value`, `tympanic_side`, `tympanic_value`, `renne_value`, `weber_value`, `louderDeafer_side`, `sensorinural_side`, `conduct_side`, `louder_side`, `inflamed_ternary`, `uvula_ternary`, `tonsil_side`, `ulser_value`, `tongue_value`, `tongueLesion_value`, `nose_side`, `nose_value`, `nasalSeptal_ternary`, `mucosa_ternary`, `turbinates_ternary`, `polip_ternary`, `polipAnterior_ternary`, `clearDischarge_ternary`, `bleedingAnterior_ternary`, `bleedingPosterior_ternary`, `foreign_ternary`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Left', NULL, 'Right', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-04-06 00:11:16', '2022-04-06 00:11:16'),
(2, NULL, 'Left', 'Pus', NULL, NULL, NULL, 'Left', 'Pinna outer rim', '10', '10', NULL, NULL, 'Right', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-04-06 00:21:22', '2022-04-06 00:21:22'),
(3, NULL, 'Left', 'Pus', NULL, NULL, NULL, 'Left', 'Pinna outer rim', '10', '10', NULL, NULL, 'Right', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-04-06 00:54:14', '2022-04-06 00:54:14'),
(4, NULL, 'Left', 'Pus', NULL, NULL, NULL, 'Left', 'Pinna outer rim', '10', '10', NULL, NULL, 'Right', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-04-06 00:54:36', '2022-04-06 00:54:36'),
(5, NULL, 'Left', 'Pus', NULL, NULL, NULL, 'Left', 'Pinna outer rim', '10', '10', NULL, NULL, 'Right', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-04-06 00:54:45', '2022-04-06 00:54:45'),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-04-06 00:58:20', '2022-04-06 00:58:20'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-04-06 00:59:27', '2022-04-06 00:59:27'),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-04-06 01:01:26', '2022-04-06 01:01:26'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-04-06 01:02:24', '2022-04-06 01:02:24'),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-04-06 01:03:15', '2022-04-06 01:03:15'),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-04-06 01:09:27', '2022-04-06 01:09:27'),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-04-06 01:10:38', '2022-04-06 01:10:38'),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-04-06 01:11:08', '2022-04-06 01:11:08'),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-04-06 01:12:50', '2022-04-06 01:12:50'),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-04-06 01:14:45', '2022-04-06 01:14:45'),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-04-06 01:30:12', '2022-04-06 01:30:12'),
(17, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-04-06 01:32:08', '2022-04-06 01:32:08'),
(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-04-06 23:06:25', '2022-04-06 23:06:25'),
(19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-04-06 23:06:38', '2022-04-06 23:06:38'),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-04-06 23:09:36', '2022-04-06 23:09:36'),
(21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-04-06 23:10:15', '2022-04-06 23:10:15');

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

--
-- Dumping data for table `mhp_ent_examin_ear_lesions`
--

INSERT INTO `mhp_ent_examin_ear_lesions` (`id`, `patient_id`, `mhp_ent_examin_id`, `ear_lesions_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '1', '10', '2', 'Discharge', '2022-04-06 01:03:15', '2022-04-06 01:03:15'),
(2, '1', '10', '4', 'Tender', '2022-04-06 01:03:15', '2022-04-06 01:03:15'),
(3, '1', '16', '3', 'Ulcerated', '2022-04-06 01:30:12', '2022-04-06 01:30:12'),
(4, '1', '16', '4', 'Tender', '2022-04-06 01:30:13', '2022-04-06 01:30:13'),
(5, '1', '17', '3', 'Ulcerated', '2022-04-06 01:32:08', '2022-04-06 01:32:08'),
(6, '1', '17', '4', 'Tender', '2022-04-06 01:32:08', '2022-04-06 01:32:08');

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

--
-- Dumping data for table `mhp_ent_examin_ent_others`
--

INSERT INTO `mhp_ent_examin_ent_others` (`id`, `patient_id`, `mhp_ent_examin_id`, `ent_others_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '1', '17', 'Post Nasal Drip', 'true', '2022-04-06 01:32:09', '2022-04-06 01:32:09'),
(2, '1', '17', 'Hoarse Voice', 'true', '2022-04-06 01:32:09', '2022-04-06 01:32:09');

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

--
-- Dumping data for table `mhp_ent_others`
--

INSERT INTO `mhp_ent_others` (`id`, `EntOthers_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Post Nasal Drip', 0, '2022-03-29 00:40:39', '2022-03-29 00:40:39'),
(2, 'Sore Throat', 0, '2022-03-29 00:40:48', '2022-03-29 00:40:48'),
(3, 'Swollen Gums', 0, '2022-04-05 00:06:55', '2022-04-05 00:06:55'),
(4, 'Toothache', 0, '2022-04-05 00:07:02', '2022-04-05 00:07:02'),
(5, 'Snoring', 0, '2022-04-05 00:07:09', '2022-04-05 00:07:09'),
(6, 'Snoring', 0, '2022-04-05 00:07:23', '2022-04-05 00:07:23'),
(7, 'Nasal Injury', 0, '2022-04-05 00:07:30', '2022-04-05 00:07:30'),
(8, 'Speaking Loudly', 0, '2022-04-05 00:07:37', '2022-04-05 00:07:37'),
(9, 'Speech Delay', 0, '2022-04-05 00:07:44', '2022-04-05 00:07:44'),
(10, 'Speech Problem', 0, '2022-04-05 00:07:54', '2022-04-05 00:07:54'),
(11, 'Hoarse Voice', 0, '2022-04-05 00:08:03', '2022-04-05 00:08:03'),
(12, 'Post Nasal Drip', 0, '2022-04-05 00:08:15', '2022-04-05 00:08:15');

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

--
-- Dumping data for table `mhp_ethnicities`
--

INSERT INTO `mhp_ethnicities` (`id`, `ethnicity_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'dsf', 0, NULL, NULL, '2022-03-12 22:17:19', '2022-03-12 22:17:19'),
(2, 'Asia', 0, NULL, NULL, '2022-03-15 22:05:35', '2022-03-15 22:05:35');

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

--
-- Dumping data for table `mhp_examination_headings`
--

INSERT INTO `mhp_examination_headings` (`id`, `examinationHeading_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Respiratory', 0, '2022-02-16 23:15:17', '2022-02-16 23:15:17'),
(2, 'Cardivascular', 0, '2022-02-16 23:15:35', '2022-02-24 05:35:31'),
(3, 'General', 0, '2022-02-16 23:15:59', '2022-02-16 23:15:59'),
(4, 'CNS', 0, '2022-02-16 23:16:12', '2022-02-16 23:16:12'),
(5, 'Gestro-Intestinal', 0, '2022-03-06 01:05:16', '2022-03-06 01:05:16'),
(6, 'Resp New', 0, '2022-03-11 22:08:45', '2022-03-11 22:08:45'),
(7, 'Genito', 0, '2022-03-26 23:04:09', '2022-03-26 23:04:09'),
(8, 'Neurological', 0, '2022-03-30 03:47:37', '2022-03-30 03:47:37'),
(9, 'ENT', 0, '2022-03-30 04:58:39', '2022-03-30 04:58:39'),
(10, 'Mental Health', 0, '2022-04-02 22:21:29', '2022-04-02 22:21:29'),
(11, 'Musculo', 0, '2022-04-09 00:00:29', '2022-04-09 00:00:29'),
(12, 'Dermatology', 0, '2022-04-09 23:14:54', '2022-04-09 23:14:54');

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

--
-- Dumping data for table `mhp_exmanination_lists`
--

INSERT INTO `mhp_exmanination_lists` (`id`, `exmaninationlist_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'exam 1 updaty', 1, NULL, NULL, '2022-03-03 05:38:06', '2022-03-03 05:38:20'),
(2, 'Rhonchi', 0, NULL, NULL, '2022-03-04 23:15:47', '2022-03-04 23:15:47'),
(3, 'Crepitation', 0, NULL, NULL, '2022-03-04 23:15:58', '2022-03-04 23:15:58'),
(4, 'Reduced Air Entry', 0, NULL, NULL, '2022-03-04 23:16:09', '2022-03-04 23:16:09'),
(5, 'Use of acc. muscles', 0, NULL, NULL, '2022-03-04 23:16:17', '2022-03-04 23:16:17'),
(6, 'Night Sweats', 0, NULL, NULL, '2022-03-04 23:16:29', '2022-03-04 23:16:29'),
(7, 'Fever', 0, NULL, NULL, '2022-03-04 23:16:37', '2022-03-04 23:16:37'),
(8, 'Hoarseness', 0, NULL, NULL, '2022-03-04 23:16:46', '2022-03-04 23:16:46'),
(9, 'Hyperventilation', 0, NULL, NULL, '2022-03-04 23:16:54', '2022-03-04 23:16:54');

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

--
-- Dumping data for table `mhp_external_observations`
--

INSERT INTO `mhp_external_observations` (`id`, `ExternalObservation_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Face', 0, '2022-03-28 03:10:39', '2022-03-28 03:10:39'),
(2, 'Head Tilt', 0, '2022-03-28 03:10:48', '2022-03-28 03:10:48'),
(3, 'Gait/Walk', 0, '2022-03-28 03:37:11', '2022-03-28 03:37:11'),
(4, 'Asymetry', 0, '2022-03-28 03:37:19', '2022-03-28 03:37:19'),
(5, 'Muscle Tension', 0, '2022-03-28 03:37:29', '2022-03-28 03:37:29');

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

--
-- Dumping data for table `mhp_eyemovements`
--

INSERT INTO `mhp_eyemovements` (`id`, `eyemovements_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Norlam', 1, 'single', 0, NULL, NULL, '2022-03-08 01:09:05', '2022-03-08 01:09:05'),
(2, 'Horizontal outward restricted', 1, 'multiple', 0, NULL, NULL, '2022-03-08 01:09:19', '2022-03-08 01:09:19'),
(3, 'Horizontal inward restricted', 1, 'single', 0, NULL, NULL, '2022-03-08 01:09:32', '2022-03-08 01:09:32');

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

--
-- Dumping data for table `mhp_eye_exami_part1s`
--

INSERT INTO `mhp_eye_exami_part1s` (`id`, `patient_id`, `distance`, `near`, `flashes`, `floaters`, `red`, `sore`, `itchy`, `watery`, `discharge`, `headache`, `normal`, `murcusGunn`, `rapd`, `neuroOpthal`, `doubleVision`, `flare`, `ghosting`, `haloes`, `caruncle`, `convergence`, `visualAcuityDistance_left`, `visualAcuityDistance_right`, `visualAcuityNear_left`, `visualAcuityNear_right`, `sizeRight`, `sizeLeft`, `shape`, `lesion1`, `lesion2`, `lesion3`, `anteriorChamber`, `swollenEyeLid`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Left', 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-30 23:40:11', '2022-03-30 23:40:11'),
(2, NULL, 'Left', 'Left', 'Left', 'Right', 'Left', 'Left', NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, '10', '10', '10', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 00:02:28', '2022-03-31 00:02:28'),
(3, NULL, 'Left', 'Left', 'Left', 'Right', 'Left', 'Left', NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '1', NULL, NULL, '1', NULL, 'Insufficiency', '10', '10', '10', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 00:09:54', '2022-03-31 00:09:54'),
(4, NULL, 'Left', 'Left', 'Left', 'Right', 'Left', 'Left', NULL, NULL, NULL, NULL, '0', '0', NULL, 'RM ML', '1', NULL, NULL, '1', NULL, '10', '10', '10', '10', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 00:12:24', '2022-03-31 00:12:24'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 00:17:21', '2022-03-31 00:17:21'),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 00:18:53', '2022-03-31 00:18:53'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 01:45:29', '2022-03-31 01:45:29'),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 01:47:09', '2022-03-31 01:47:09'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 01:48:32', '2022-03-31 01:48:32'),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 01:49:27', '2022-03-31 01:49:27'),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 02:01:40', '2022-03-31 02:01:40'),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 02:01:43', '2022-03-31 02:01:43'),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 02:01:43', '2022-03-31 02:01:43'),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 02:01:45', '2022-03-31 02:01:45'),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 02:01:46', '2022-03-31 02:01:46'),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 02:48:26', '2022-03-31 02:48:26'),
(17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 02:48:54', '2022-03-31 02:48:54'),
(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 02:50:51', '2022-03-31 02:50:51'),
(19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 02:53:48', '2022-03-31 02:53:48'),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 02:56:33', '2022-03-31 02:56:33'),
(21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 02:58:41', '2022-03-31 02:58:41'),
(22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 03:01:01', '2022-03-31 03:01:01'),
(23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 03:03:38', '2022-03-31 03:03:38'),
(24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 03:06:38', '2022-03-31 03:06:38'),
(25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 03:09:36', '2022-03-31 03:09:36'),
(26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 03:11:13', '2022-03-31 03:11:13'),
(27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 03:12:22', '2022-03-31 03:12:22'),
(28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 03:12:56', '2022-03-31 03:12:56'),
(29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 03:13:24', '2022-03-31 03:13:24'),
(30, NULL, NULL, 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 03:27:02', '2022-03-31 03:27:02'),
(31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 03:28:35', '2022-03-31 03:28:35'),
(32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 03:29:07', '2022-03-31 03:29:07'),
(33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 03:48:15', '2022-03-31 03:48:15'),
(34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 04:10:27', '2022-03-31 04:10:27'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 04:12:37', '2022-03-31 04:12:37'),
(36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 04:29:49', '2022-03-31 04:29:49'),
(37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 04:51:54', '2022-03-31 04:51:54'),
(38, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Log', NULL, NULL, NULL, '1', NULL, '2022-03-31 04:54:16', '2022-03-31 04:54:16'),
(39, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Log', NULL, NULL, NULL, '1', NULL, '2022-03-31 04:55:41', '2022-03-31 04:55:41'),
(40, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Log', NULL, NULL, NULL, '1', NULL, '2022-03-31 04:57:13', '2022-03-31 04:57:13'),
(41, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Log', NULL, NULL, NULL, '1', NULL, '2022-03-31 05:00:23', '2022-03-31 05:00:23'),
(42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 05:00:56', '2022-03-31 05:00:56'),
(43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 05:01:38', '2022-03-31 05:01:38'),
(44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-06 23:06:17', '2022-04-06 23:06:17');

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

--
-- Dumping data for table `mhp_eye_exami_part2s`
--

INSERT INTO `mhp_eye_exami_part2s` (`id`, `patient_id`, `enteranceTest`, `visualAcuity`, `coverTest`, `convergence`, `Pupils`, `accomodation`, `dryRetinoscopy`, `maddox_wing_fcc`, `maddox_wing_bPlus`, `worth_4_Dot_midline`, `worth_4_Dot_side`, `penGrip`, `penGripSide`, `colorVision`, `stereopsis`, `suppression`, `neuroOpthal2`, `dem1`, `dem2`, `dem3`, `perla`, `rapd2`, `created_at`, `updated_at`) VALUES
(1, NULL, '1', '1', '1', 'Insufficiency', '1', 'Lag', '10', '10', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 00:09:54', '2022-03-31 00:09:54'),
(2, NULL, '1', '1', '1', '10', '1', 'Lag', '10', '10', '10', 'Excess', 'Left', 'TILT', 'Body', 'Devtan', NULL, NULL, NULL, '10', '10', '10', '1', 'Right', '2022-03-31 00:12:24', '2022-03-31 00:12:24'),
(3, NULL, '0', '0', '0', 'Insufficiency', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 00:17:21', '2022-03-31 00:17:21'),
(4, NULL, '0', '0', '0', 'Excess', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 00:18:53', '2022-03-31 00:18:53'),
(5, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 01:45:29', '2022-03-31 01:45:29'),
(6, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 01:47:09', '2022-03-31 01:47:09'),
(7, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 01:48:32', '2022-03-31 01:48:32'),
(8, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 01:49:27', '2022-03-31 01:49:27'),
(9, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 02:01:40', '2022-03-31 02:01:40'),
(10, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 02:01:43', '2022-03-31 02:01:43'),
(11, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 02:01:43', '2022-03-31 02:01:43'),
(12, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 02:01:45', '2022-03-31 02:01:45'),
(13, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 02:01:46', '2022-03-31 02:01:46'),
(14, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 02:48:26', '2022-03-31 02:48:26'),
(15, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 02:48:54', '2022-03-31 02:48:54'),
(16, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 02:50:51', '2022-03-31 02:50:51'),
(17, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 02:53:48', '2022-03-31 02:53:48'),
(18, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 02:56:33', '2022-03-31 02:56:33'),
(19, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 02:58:41', '2022-03-31 02:58:41'),
(20, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 03:01:01', '2022-03-31 03:01:01'),
(21, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 03:03:38', '2022-03-31 03:03:38'),
(22, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 03:06:38', '2022-03-31 03:06:38'),
(23, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 03:09:36', '2022-03-31 03:09:36'),
(24, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 03:11:14', '2022-03-31 03:11:14'),
(25, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 03:12:22', '2022-03-31 03:12:22'),
(26, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 03:12:56', '2022-03-31 03:12:56'),
(27, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 03:13:24', '2022-03-31 03:13:24'),
(28, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 03:27:02', '2022-03-31 03:27:02'),
(29, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 03:28:35', '2022-03-31 03:28:35'),
(30, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 03:29:07', '2022-03-31 03:29:07'),
(31, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 03:48:15', '2022-03-31 03:48:15'),
(32, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 04:10:27', '2022-03-31 04:10:27'),
(33, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 04:12:37', '2022-03-31 04:12:37'),
(34, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 04:29:49', '2022-03-31 04:29:49'),
(35, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 04:51:54', '2022-03-31 04:51:54'),
(36, '1', '1', '1', '1', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 04:54:16', '2022-03-31 04:54:16'),
(37, '1', '1', '1', '1', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 04:55:41', '2022-03-31 04:55:41'),
(38, '1', '1', '1', '1', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 04:57:13', '2022-03-31 04:57:13'),
(39, '1', '1', '1', '1', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 05:00:23', '2022-03-31 05:00:23'),
(40, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 05:00:56', '2022-03-31 05:00:56'),
(41, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-03-31 05:01:38', '2022-03-31 05:01:38'),
(42, NULL, '0', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2022-04-06 23:06:17', '2022-04-06 23:06:17');

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

--
-- Dumping data for table `mhp_eye_part1_external_observations`
--

INSERT INTO `mhp_eye_part1_external_observations` (`id`, `patient_id`, `eye_exmi_part1_id`, `externalObservation_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '1', 'dsafasdf', '2022-03-31 03:05:38', '2022-03-31 03:05:38'),
(2, '1', '1', '1', 'dsafasdf', '2022-03-31 03:10:16', '2022-03-31 03:10:16'),
(3, '1', '1', '1', 'fdfasdf', '2022-03-31 03:11:14', '2022-03-31 03:11:14'),
(4, '1', '1', '1', 'fdfasdf', '2022-03-31 03:11:14', '2022-03-31 03:11:14'),
(5, '1', '1', '4', 'Asymetry', '2022-03-31 03:12:57', '2022-03-31 03:12:57'),
(6, '1', '1', '5', 'Muscle Tension', '2022-03-31 03:12:57', '2022-03-31 03:12:57'),
(7, '1', '29', '4', 'Asymetry', '2022-03-31 03:13:24', '2022-03-31 03:13:24'),
(8, '1', '29', '5', 'Muscle Tension', '2022-03-31 03:13:24', '2022-03-31 03:13:24'),
(9, '1', '30', '4', 'Asymetry', '2022-03-31 03:27:03', '2022-03-31 03:27:03'),
(10, '1', '30', '5', 'Muscle Tension', '2022-03-31 03:27:03', '2022-03-31 03:27:03'),
(11, '1', '32', '4', 'Asymetry', '2022-03-31 03:29:07', '2022-03-31 03:29:07'),
(12, '1', '32', '5', 'Muscle Tension', '2022-03-31 03:29:07', '2022-03-31 03:29:07'),
(13, '1', '33', '4', 'Asymetry', '2022-03-31 03:48:15', '2022-03-31 03:48:15'),
(14, '1', '33', '5', 'Muscle Tension', '2022-03-31 03:48:15', '2022-03-31 03:48:15'),
(15, '1', '34', '4', 'Asymetry', '2022-03-31 04:10:28', '2022-03-31 04:10:28'),
(16, '1', '34', '5', 'Muscle Tension', '2022-03-31 04:10:28', '2022-03-31 04:10:28'),
(17, '1', '35', '4', 'Asymetry', '2022-03-31 04:12:38', '2022-03-31 04:12:38'),
(18, '1', '35', '5', 'Muscle Tension', '2022-03-31 04:12:38', '2022-03-31 04:12:38'),
(19, '1', '36', '4', 'Asymetry', '2022-03-31 04:29:49', '2022-03-31 04:29:49'),
(20, '1', '36', '5', 'Muscle Tension', '2022-03-31 04:29:49', '2022-03-31 04:29:49'),
(21, '1', '38', '4', 'Asymetry', '2022-03-31 04:54:16', '2022-03-31 04:54:16'),
(22, '1', '38', '5', 'Muscle Tension', '2022-03-31 04:54:16', '2022-03-31 04:54:16'),
(23, '1', '39', '4', 'Asymetry', '2022-03-31 04:55:41', '2022-03-31 04:55:41'),
(24, '1', '39', '5', 'Muscle Tension', '2022-03-31 04:55:42', '2022-03-31 04:55:42'),
(25, '1', '40', '4', 'Asymetry', '2022-03-31 04:57:14', '2022-03-31 04:57:14'),
(26, '1', '40', '5', 'Muscle Tension', '2022-03-31 04:57:14', '2022-03-31 04:57:14'),
(27, '1', '41', '4', 'Asymetry', '2022-03-31 05:00:23', '2022-03-31 05:00:23'),
(28, '1', '41', '5', 'Muscle Tension', '2022-03-31 05:00:23', '2022-03-31 05:00:23');

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

--
-- Dumping data for table `mhp_eye_part1_phoria_ones`
--

INSERT INTO `mhp_eye_part1_phoria_ones` (`id`, `patient_id`, `eye_exmi_part1_id`, `phoria_one_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '1', '33', '3', 'Orthophoria', '2022-03-31 03:48:15', '2022-03-31 03:48:15'),
(2, '1', '34', '3', 'Orthophoria', '2022-03-31 04:10:28', '2022-03-31 04:10:28'),
(3, '1', '35', '3', 'Orthophoria', '2022-03-31 04:12:38', '2022-03-31 04:12:38'),
(4, '1', '36', '3', 'Orthophoria', '2022-03-31 04:29:50', '2022-03-31 04:29:50'),
(5, '1', '38', '3', 'Orthophoria', '2022-03-31 04:54:16', '2022-03-31 04:54:16'),
(6, '1', '39', '3', 'Orthophoria', '2022-03-31 04:55:42', '2022-03-31 04:55:42'),
(7, '1', '40', '3', 'Orthophoria', '2022-03-31 04:57:14', '2022-03-31 04:57:14'),
(8, '1', '41', '3', 'Orthophoria', '2022-03-31 05:00:23', '2022-03-31 05:00:23');

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

--
-- Dumping data for table `mhp_eye_part1_phoria_twos`
--

INSERT INTO `mhp_eye_part1_phoria_twos` (`id`, `patient_id`, `eye_exmi_part1_id`, `phoria_two_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '1', '33', '1', 'Alternating', '2022-03-31 03:48:15', '2022-03-31 03:48:15'),
(2, '1', '33', '2', 'Intermittent', '2022-03-31 03:48:15', '2022-03-31 03:48:15'),
(3, '1', '34', '2', 'Intermittent', '2022-03-31 04:10:28', '2022-03-31 04:10:28'),
(4, '1', '35', '2', 'Intermittent', '2022-03-31 04:12:38', '2022-03-31 04:12:38'),
(5, '1', '36', '2', 'Intermittent', '2022-03-31 04:29:50', '2022-03-31 04:29:50'),
(6, '1', '38', '3', 'Constant', '2022-03-31 04:54:16', '2022-03-31 04:54:16'),
(7, '1', '39', '3', 'Constant', '2022-03-31 04:55:42', '2022-03-31 04:55:42'),
(8, '1', '40', '3', 'Constant', '2022-03-31 04:57:14', '2022-03-31 04:57:14'),
(9, '1', '41', '3', 'Constant', '2022-03-31 05:00:23', '2022-03-31 05:00:23');

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

--
-- Dumping data for table `mhp_eye_part1_pursuits`
--

INSERT INTO `mhp_eye_part1_pursuits` (`id`, `patient_id`, `eye_exmi_part1_id`, `pursuits_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '1', '36', '1', 'Jerky', '2022-03-31 04:29:50', '2022-03-31 04:29:50'),
(2, '4', '4', '4', 'dsfas', '2022-03-31 04:59:03', '2022-03-31 04:59:03'),
(3, '1', '41', '1', 'Jerky', '2022-03-31 05:00:23', '2022-03-31 05:00:23'),
(4, '1', '41', '2', 'Smooth', '2022-03-31 05:00:24', '2022-03-31 05:00:24');

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

--
-- Dumping data for table `mhp_eye_part1_worth4_dots`
--

INSERT INTO `mhp_eye_part1_worth4_dots` (`id`, `patient_id`, `eye_exmi_part1_id`, `worth4_dots_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '1', '39', '2', 'Right', '2022-03-31 04:55:42', '2022-03-31 04:55:42'),
(2, '1', '39', '3', 'Nill', '2022-03-31 04:55:43', '2022-03-31 04:55:43'),
(3, '1', '40', '2', 'Right', '2022-03-31 04:57:15', '2022-03-31 04:57:15'),
(4, '1', '40', '3', 'Nill', '2022-03-31 04:57:15', '2022-03-31 04:57:15'),
(5, '1', '41', '2', 'Right', '2022-03-31 05:00:24', '2022-03-31 05:00:24'),
(6, '1', '41', '3', 'Nill', '2022-03-31 05:00:24', '2022-03-31 05:00:24');

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

--
-- Dumping data for table `mhp_e_o_m_accomodations`
--

INSERT INTO `mhp_e_o_m_accomodations` (`id`, `EOMAccomodation_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Excess', 0, NULL, NULL, '2022-03-29 00:52:10', '2022-03-29 00:52:10'),
(2, 'Insufficiency', 0, NULL, NULL, '2022-03-29 00:52:21', '2022-03-29 00:52:21'),
(3, 'Lag', 0, NULL, NULL, '2022-03-29 00:52:29', '2022-03-29 00:52:29'),
(4, 'Facility', 0, NULL, NULL, '2022-03-29 00:52:37', '2022-03-29 00:52:37');

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

--
-- Dumping data for table `mhp_e_o_m_convergences`
--

INSERT INTO `mhp_e_o_m_convergences` (`id`, `EOMConvergence_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Excess', 0, NULL, NULL, '2022-03-29 00:09:02', '2022-03-29 00:09:02'),
(2, 'Insufficiency', 0, NULL, NULL, '2022-03-29 00:09:09', '2022-03-29 00:09:09');

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

--
-- Dumping data for table `mhp_food_names`
--

INSERT INTO `mhp_food_names` (`id`, `food_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Before Meal', 0, NULL, NULL, '2022-02-09 04:34:47', '2022-02-09 04:34:59'),
(2, 'After Meal', 0, NULL, NULL, '2022-02-09 04:35:23', '2022-02-09 04:35:23'),
(3, 'With Meal', 0, NULL, NULL, '2022-02-09 04:35:36', '2022-02-09 04:35:36');

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

--
-- Dumping data for table `mhp_frequencies`
--

INSERT INTO `mhp_frequencies` (`id`, `Frequency_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '2 to 3 min', 0, NULL, NULL, '2022-03-07 03:07:24', '2022-03-07 03:07:24'),
(2, '10 t 15 min', 0, NULL, NULL, '2022-03-07 03:07:34', '2022-03-07 03:07:34');

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

--
-- Dumping data for table `mhp_frequency_names`
--

INSERT INTO `mhp_frequency_names` (`id`, `frequency_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Daily', 0, NULL, NULL, '2022-02-09 04:07:51', '2022-02-09 04:07:51'),
(2, 'In the Morning', 0, NULL, NULL, '2022-02-09 04:08:32', '2022-02-09 04:08:32'),
(3, 'In the Evening', 0, NULL, NULL, '2022-02-09 04:08:50', '2022-02-09 04:08:50'),
(4, 'At Night', 0, NULL, NULL, '2022-02-09 04:08:58', '2022-02-09 04:08:58');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_frequency_physicals`
--

CREATE TABLE `mhp_frequency_physicals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
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

--
-- Dumping data for table `mhp_frontal_lobes`
--

INSERT INTO `mhp_frontal_lobes` (`id`, `FrontalLobe_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Memory Loss', 0, '2022-04-06 23:40:34', '2022-04-06 23:40:34'),
(2, 'Ataxia', 0, '2022-04-06 23:45:10', '2022-04-06 23:45:10'),
(3, 'Seizures- Flashing Light Aura', 0, '2022-04-06 23:45:16', '2022-04-06 23:45:16');

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

--
-- Dumping data for table `mhp_fundoscopies`
--

INSERT INTO `mhp_fundoscopies` (`id`, `fundoscopy_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Nil retinopathy', 1, 'single', 0, NULL, NULL, '2022-03-12 00:12:05', '2022-03-12 00:12:05'),
(2, 'Minimul retinopathy', 1, 'multiple', 0, NULL, NULL, '2022-03-12 00:12:47', '2022-03-12 00:12:47'),
(3, 'Severe retinopathy', 1, 'single', 0, NULL, NULL, '2022-03-12 00:12:59', '2022-03-12 00:12:59'),
(4, 'Mild retinopathy', 1, 'multiple', 0, NULL, NULL, '2022-03-12 00:13:27', '2022-03-12 00:13:27'),
(5, 'Proliferative', 1, 'single', 0, NULL, NULL, '2022-03-12 00:13:38', '2022-03-12 00:13:38');

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

--
-- Dumping data for table `mhp_gait_limpings`
--

INSERT INTO `mhp_gait_limpings` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'gait test 1 update', 1, '2022-04-09 03:12:27', '2022-04-09 03:13:38'),
(2, 'gait test 2 update', 0, '2022-04-09 03:12:41', '2022-04-09 03:12:51');

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

--
-- Dumping data for table `mhp_generals`
--

INSERT INTO `mhp_generals` (`id`, `patient_id`, `pulse`, `respiratoryRate`, `o2saturation`, `sitting_left`, `sitting_right`, `standing_left`, `standing_right`, `lying_left`, `lying_right`, `weight`, `height`, `BMI`, `waist_measurement`, `hip_measurement`, `WHR`, `temp`, `Anaemic`, `Jaundiced`, `Cyanosis`, `Skin`, `capillary`, `dehydration`, `radioFD`, `nailSign`, `created_at`, `updated_at`) VALUES
(1, NULL, '10', '10', '10', '11', '11', '11', '11', '11', '11', '89', '5.6', '45', '40', '40', '440', '98', 1, 0, 1, 0, 'Capillary Refill', 'Moderate', 'Left', 'Red Nail', '2022-03-01 22:38:28', '2022-03-01 22:38:28'),
(2, '1', '10', '10', NULL, '11', '11', NULL, NULL, NULL, NULL, '11', '11', NULL, '11', '11', '11', '12', 1, 1, 0, 1, NULL, 'Mild', 'Left', 'Blue Nail', '2022-03-01 23:11:37', '2022-03-01 23:11:37'),
(3, NULL, '10', '10', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', '100', NULL, 0, 1, 1, 0, NULL, NULL, NULL, NULL, '2022-03-02 01:01:21', '2022-03-02 01:01:21'),
(4, NULL, '66', '66', '66', '5', '5', '5', '5', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 'Capillary Refill', 'Mild', NULL, NULL, '2022-03-02 03:56:15', '2022-03-02 03:56:15'),
(5, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-03-26 22:31:35', '2022-03-26 22:31:35'),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-03-27 23:53:49', '2022-03-27 23:53:49'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-03-28 22:06:07', '2022-03-28 22:06:07'),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, NULL, NULL, NULL, NULL, '2022-03-28 22:09:47', '2022-03-28 22:09:47'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, NULL, NULL, NULL, NULL, '2022-03-28 22:17:12', '2022-03-28 22:17:12'),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, NULL, NULL, NULL, NULL, '2022-03-28 22:18:04', '2022-03-28 22:18:04'),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-03-29 01:17:17', '2022-03-29 01:17:17'),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, NULL, NULL, NULL, NULL, '2022-03-29 01:17:39', '2022-03-29 01:17:39'),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, 'Capillary Refill', NULL, NULL, NULL, '2022-03-29 01:17:56', '2022-03-29 01:17:56'),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-03-31 03:23:29', '2022-03-31 03:23:29'),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-04-02 23:49:22', '2022-04-02 23:49:22'),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, NULL, NULL, NULL, NULL, '2022-04-02 23:50:50', '2022-04-02 23:50:50'),
(17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-04-03 02:37:58', '2022-04-03 02:37:58'),
(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-04-16 22:53:42', '2022-04-16 22:53:42'),
(19, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '80', 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-04-24 22:34:39', '2022-04-24 22:34:39'),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-05-09 00:16:08', '2022-05-09 00:16:08');

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

--
-- Dumping data for table `mhp_general_histories`
--

INSERT INTO `mhp_general_histories` (`id`, `patient_id`, `general_id`, `history_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '1', '2', '25', 'true', '2022-03-01 23:11:37', '2022-03-01 23:11:37'),
(2, '1', '2', '26', 'false', '2022-03-01 23:11:38', '2022-03-01 23:11:38'),
(3, '1', '2', '28', 'true', '2022-03-01 23:11:38', '2022-03-01 23:11:38'),
(4, '1', '2', '29', 'true', '2022-03-01 23:11:38', '2022-03-01 23:11:38'),
(5, '1', '5', '28', 'true', '2022-03-26 22:31:35', '2022-03-26 22:31:35'),
(6, '1', '5', '29', 'true', '2022-03-26 22:31:35', '2022-03-26 22:31:35');

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

--
-- Dumping data for table `mhp_genito_urinaries`
--

INSERT INTO `mhp_genito_urinaries` (`id`, `patient_id`, `renalMass`, `tenderness`, `renalBruit`, `aboveMargin`, `noUpperBorder`, `translucent`, `separation`, `rectalExamination`, `hydrocele`, `testicularSwelling`, `testicularMass`, `testicularTenderness`, `retractedTestis`, `undescendedTestis`, `penialWart`, `pearly`, `inguinal`, `phimosis`, `paraphimosis`, `scrotal`, `leucocytes`, `nitrites`, `bilirubin`, `ketones`, `urobiliongen`, `glucose`, `specificGravity`, `ph`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Left', 'Right', 'Left', 'Left', 'Left', 'Right', 'Right', 'Right', 'Left', 'Right', 'Left', 'Left', 'Left', 'Right', 'Left', 'Right', 'Left', 'Right', 'Left', 'Left', 'Vary Pale', 'Red', 'Black', 'Yellow- orange', 'Pink', 'Yellow- orange', 'Vary Pale', 'Red', '2022-03-27 04:53:42', '2022-03-27 04:53:42'),
(2, NULL, 'Left', 'Right', 'Left', 'Left', 'Left', 'Right', 'Right', 'Right', 'Left', 'Right', 'Left', 'Left', 'Left', 'Right', 'Left', 'Right', 'Left', 'Right', 'Left', 'Left', 'Vary Pale', 'Red', 'Black', 'Yellow- orange', 'Pink', 'Yellow- orange', 'Vary Pale', 'Red', '2022-03-27 05:12:11', '2022-03-27 05:12:11'),
(3, NULL, 'Left', 'Right', 'Left', 'Left', 'Left', 'Right', 'Right', 'Right', 'Left', 'Right', 'Left', 'Left', 'Left', 'Right', 'Left', 'Right', 'Left', 'Right', 'Left', 'Left', 'Vary Pale', 'Red', 'Black', 'Yellow- orange', 'Pink', 'Yellow- orange', 'Vary Pale', 'Red', '2022-03-27 05:15:01', '2022-03-27 05:15:01'),
(4, NULL, NULL, NULL, NULL, NULL, NULL, 'Right', NULL, NULL, NULL, NULL, NULL, 'Left', NULL, 'Right', NULL, NULL, NULL, NULL, NULL, 'Right', 'Vary Pale', NULL, NULL, NULL, NULL, 'Black', 'Pink', NULL, '2022-03-27 05:48:38', '2022-03-27 05:48:38'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, 'Right', NULL, NULL, NULL, NULL, NULL, 'Left', NULL, 'Right', NULL, NULL, NULL, NULL, NULL, 'Right', 'Vary Pale', NULL, NULL, NULL, NULL, 'Black', 'Pink', NULL, '2022-03-27 05:49:32', '2022-03-27 05:49:32'),
(6, NULL, 'Right', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-28 06:48:52', '2022-03-28 06:48:52'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-28 22:13:12', '2022-03-28 22:13:12'),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-28 22:20:30', '2022-03-28 22:20:30'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 03:24:16', '2022-03-31 03:24:16'),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-07 02:08:03', '2022-04-07 02:08:03');

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

--
-- Dumping data for table `mhp_genito_urinary_histories`
--

INSERT INTO `mhp_genito_urinary_histories` (`id`, `patient_id`, `genito_urinary_id`, `history_id`, `value`, `created_at`, `updated_at`) VALUES
(1, NULL, '2', '39', 'true', '2022-03-27 05:12:11', '2022-03-27 05:12:11'),
(2, NULL, '2', '40', 'true', '2022-03-27 05:12:11', '2022-03-27 05:12:11'),
(3, NULL, '2', '46', 'true', '2022-03-27 05:12:12', '2022-03-27 05:12:12'),
(4, NULL, '2', '47', 'true', '2022-03-27 05:12:12', '2022-03-27 05:12:12'),
(5, NULL, '2', '48', 'true', '2022-03-27 05:12:12', '2022-03-27 05:12:12'),
(6, NULL, '3', '39', 'true', '2022-03-27 05:15:01', '2022-03-27 05:15:01'),
(7, NULL, '3', '40', 'true', '2022-03-27 05:15:02', '2022-03-27 05:15:02'),
(8, NULL, '3', '46', 'true', '2022-03-27 05:15:02', '2022-03-27 05:15:02'),
(9, NULL, '3', '47', 'true', '2022-03-27 05:15:02', '2022-03-27 05:15:02'),
(10, NULL, '3', '48', 'true', '2022-03-27 05:15:02', '2022-03-27 05:15:02'),
(11, NULL, '4', '38', 'true', '2022-03-27 05:48:38', '2022-03-27 05:48:38'),
(12, NULL, '4', '39', 'true', '2022-03-27 05:48:39', '2022-03-27 05:48:39'),
(13, NULL, '4', '43', 'true', '2022-03-27 05:48:39', '2022-03-27 05:48:39'),
(14, NULL, '4', '44', 'true', '2022-03-27 05:48:39', '2022-03-27 05:48:39'),
(15, NULL, '4', '46', 'true', '2022-03-27 05:48:39', '2022-03-27 05:48:39'),
(16, NULL, '4', '47', 'true', '2022-03-27 05:48:39', '2022-03-27 05:48:39'),
(17, NULL, '4', '48', 'true', '2022-03-27 05:48:39', '2022-03-27 05:48:39'),
(18, NULL, '5', '38', 'true', '2022-03-27 05:49:33', '2022-03-27 05:49:33'),
(19, NULL, '5', '39', 'true', '2022-03-27 05:49:33', '2022-03-27 05:49:33'),
(20, NULL, '5', '43', 'true', '2022-03-27 05:49:33', '2022-03-27 05:49:33'),
(21, NULL, '5', '44', 'true', '2022-03-27 05:49:33', '2022-03-27 05:49:33'),
(22, NULL, '5', '46', 'true', '2022-03-27 05:49:33', '2022-03-27 05:49:33'),
(23, NULL, '5', '47', 'true', '2022-03-27 05:49:33', '2022-03-27 05:49:33'),
(24, NULL, '5', '48', 'true', '2022-03-27 05:49:34', '2022-03-27 05:49:34'),
(25, NULL, '6', '46', 'true', '2022-03-28 06:48:52', '2022-03-28 06:48:52'),
(26, NULL, '6', '47', 'true', '2022-03-28 06:48:52', '2022-03-28 06:48:52'),
(27, NULL, '6', '48', 'true', '2022-03-28 06:48:52', '2022-03-28 06:48:52'),
(28, NULL, '9', '47', 'true', '2022-03-31 03:24:17', '2022-03-31 03:24:17'),
(29, NULL, '9', '48', 'true', '2022-03-31 03:24:17', '2022-03-31 03:24:17'),
(30, NULL, '9', '65', 'true', '2022-03-31 03:24:17', '2022-03-31 03:24:17');

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

--
-- Dumping data for table `mhp_gestros`
--

INSERT INTO `mhp_gestros` (`id`, `patient_id`, `skin`, `hand_finger`, `tongue_mouth`, `gynaecomastia`, `Parotid_Glands_Enlarged`, `Left_superclavicular_node`, `site`, `radiation`, `pattern`, `duration`, `frequency`, `score`, `vomiting`, `dysphagia`, `diarrhoea`, `constipation`, `habits`, `stoolType`, `PRBleed`, `bruit`, `murphy`, `noneTender`, `noMasses`, `tenderness`, `mass`, `umbillical`, `incisional`, `inguinal`, `femoral`, `perRectal`, `sigmoidoscopy`, `guaiac`, `created_at`, `updated_at`) VALUES
(1, '1', 'Telangiectases', 'test2', 'ton2', '1', 'true', 'node 3', 'Epigastric', 'To back', 'Dull', 'Days', '2 to 3 min', '2 to 3 min', NULL, 'Solid', 'Sticky stool', '0', '1', 'Type 3- A sausage shape with cracks in the surface- Normal', NULL, NULL, 'Positive', '1', '1', NULL, NULL, '1', '1', '1', '1', 'Skin tags', 'Polyps', NULL, '2022-03-07 00:04:14', '2022-03-07 00:04:14'),
(2, '1', 'Telangiectases', 'test2', NULL, '0', 'false', NULL, NULL, 'To back', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', '0', '0', '0', NULL, NULL, NULL, '2022-03-07 00:14:52', '2022-03-07 00:14:52'),
(3, '1', 'Telangiectases', 'test2', NULL, '0', 'false', 'node 2', NULL, 'To back', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', '0', '0', '0', NULL, NULL, NULL, '2022-03-07 00:23:55', '2022-03-07 00:23:55'),
(4, NULL, 'Pyoderma gangrenosum', 'test2', 'ton2', '1', 'true', 'node 2', NULL, 'Shift to RUQ', 'Colicky', 'Months', '2 to 3 min', '5 to 10 min', '10/10', 'Both solid and liquid', 'Chronic', '1', '1', 'Type 7- Liquid consistancy with no solid pieces- Severe Diarrhea', 'Malena', NULL, NULL, '0', '0', NULL, NULL, '1', '1', '1', '1', 'Piles', 'Normal', 'Positive', '2022-03-07 04:51:35', '2022-03-07 04:51:35'),
(5, NULL, 'Pyoderma gangrenosum', 'test2', 'ton2', '1', 'true', 'node 2', NULL, 'Shift to RUQ', 'Colicky', 'Months', '2 to 3 min', '5 to 10 min', '10/10', 'Both solid and liquid', 'Chronic', '1', '1', 'Type 7- Liquid consistancy with no solid pieces- Severe Diarrhea', 'Malena', NULL, NULL, '0', '0', NULL, NULL, '1', '1', '1', '1', 'Piles', 'Normal', 'Positive', '2022-03-07 04:53:03', '2022-03-07 04:53:03'),
(6, NULL, 'Pyoderma gangrenosum', 'test1', NULL, '0', 'false', NULL, 'Right lumber', 'Periumbilical to RIF', 'Colicky', NULL, NULL, NULL, NULL, NULL, 'Chronic', '1', '0', NULL, NULL, NULL, 'Positive', '1', '0', 'Suprapubic', NULL, '1', '1', '1', '1', 'Skin tags', 'Polyps', NULL, '2022-03-07 06:13:37', '2022-03-07 06:13:37'),
(7, NULL, 'Pyoderma gangrenosum', 'test1', NULL, '0', 'false', NULL, 'Right lumber', 'Periumbilical to RIF', 'Colicky', NULL, NULL, NULL, NULL, NULL, 'Chronic', '1', '0', NULL, NULL, NULL, 'Positive', '1', '0', 'Suprapubic', NULL, '1', '1', '1', '1', 'Skin tags', 'Polyps', NULL, '2022-03-07 06:30:05', '2022-03-07 06:30:05'),
(8, NULL, NULL, NULL, NULL, '0', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', '0', '0', '0', NULL, NULL, NULL, '2022-03-28 00:31:47', '2022-03-28 00:31:47'),
(9, NULL, NULL, NULL, NULL, '0', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', '0', '0', '0', NULL, NULL, NULL, '2022-03-28 22:11:06', '2022-03-28 22:11:06'),
(10, NULL, NULL, NULL, NULL, '0', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', '0', '0', '0', NULL, NULL, NULL, '2022-03-28 22:12:48', '2022-03-28 22:12:48'),
(11, NULL, NULL, NULL, NULL, '0', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', '0', '0', '0', NULL, NULL, NULL, '2022-03-28 22:20:15', '2022-03-28 22:20:15'),
(12, NULL, NULL, NULL, NULL, '0', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', '0', '0', '0', NULL, NULL, NULL, '2022-03-31 03:23:42', '2022-03-31 03:23:42'),
(13, NULL, NULL, NULL, NULL, '0', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', '0', '0', '0', NULL, NULL, NULL, '2022-03-31 03:23:55', '2022-03-31 03:23:55');

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

--
-- Dumping data for table `mhp_gestro_abdomens`
--

INSERT INTO `mhp_gestro_abdomens` (`id`, `patient_id`, `gestro_id`, `abdomen_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '1', '3', '3', 'true', '2022-03-07 00:23:56', '2022-03-07 00:23:56'),
(2, '1', '3', '6', 'true', '2022-03-07 00:23:56', '2022-03-07 00:23:56'),
(3, '1', '3', '12', 'true', '2022-03-07 00:23:56', '2022-03-07 00:23:56'),
(4, NULL, '4', '6', 'true', '2022-03-07 04:51:36', '2022-03-07 04:51:36'),
(5, NULL, '4', '8', 'true', '2022-03-07 04:51:36', '2022-03-07 04:51:36'),
(6, NULL, '4', '9', 'true', '2022-03-07 04:51:36', '2022-03-07 04:51:36'),
(7, NULL, '5', '6', 'true', '2022-03-07 04:53:04', '2022-03-07 04:53:04'),
(8, NULL, '5', '8', 'true', '2022-03-07 04:53:04', '2022-03-07 04:53:04'),
(9, NULL, '5', '9', 'true', '2022-03-07 04:53:04', '2022-03-07 04:53:04'),
(10, NULL, '6', '8', 'true', '2022-03-07 06:13:38', '2022-03-07 06:13:38'),
(11, NULL, '6', '9', 'true', '2022-03-07 06:13:38', '2022-03-07 06:13:38'),
(12, NULL, '7', '8', 'true', '2022-03-07 06:30:06', '2022-03-07 06:30:06'),
(13, NULL, '7', '9', 'true', '2022-03-07 06:30:06', '2022-03-07 06:30:06');

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

--
-- Dumping data for table `mhp_gestro_histories`
--

INSERT INTO `mhp_gestro_histories` (`id`, `patient_id`, `gestro_id`, `history_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '1', NULL, '30', 'true', '2022-03-07 00:14:53', '2022-03-07 00:14:53'),
(2, '1', NULL, '32', 'true', '2022-03-07 00:14:53', '2022-03-07 00:14:53'),
(3, '1', NULL, '33', 'true', '2022-03-07 00:14:53', '2022-03-07 00:14:53'),
(4, '1', '3', '30', 'true', '2022-03-07 00:23:55', '2022-03-07 00:23:55'),
(5, '1', '3', '32', 'true', '2022-03-07 00:23:55', '2022-03-07 00:23:55'),
(6, '1', '3', '33', 'true', '2022-03-07 00:23:55', '2022-03-07 00:23:55'),
(7, NULL, '4', '30', 'true', '2022-03-07 04:51:35', '2022-03-07 04:51:35'),
(8, NULL, '4', '31', 'true', '2022-03-07 04:51:36', '2022-03-07 04:51:36'),
(9, NULL, '4', '32', 'true', '2022-03-07 04:51:36', '2022-03-07 04:51:36'),
(10, NULL, '5', '30', 'true', '2022-03-07 04:53:03', '2022-03-07 04:53:03'),
(11, NULL, '5', '31', 'true', '2022-03-07 04:53:03', '2022-03-07 04:53:03'),
(12, NULL, '5', '32', 'true', '2022-03-07 04:53:04', '2022-03-07 04:53:04'),
(13, NULL, '6', '32', 'true', '2022-03-07 06:13:38', '2022-03-07 06:13:38'),
(14, NULL, '6', '33', 'true', '2022-03-07 06:13:38', '2022-03-07 06:13:38'),
(15, NULL, '6', '34', 'true', '2022-03-07 06:13:38', '2022-03-07 06:13:38'),
(16, NULL, '7', '32', 'true', '2022-03-07 06:30:05', '2022-03-07 06:30:05'),
(17, NULL, '7', '33', 'true', '2022-03-07 06:30:05', '2022-03-07 06:30:05'),
(18, NULL, '7', '34', 'true', '2022-03-07 06:30:05', '2022-03-07 06:30:05'),
(19, NULL, '12', '32', 'true', '2022-03-31 03:23:42', '2022-03-31 03:23:42'),
(20, NULL, '12', '33', 'true', '2022-03-31 03:23:42', '2022-03-31 03:23:42'),
(21, NULL, '13', '31', 'true', '2022-03-31 03:23:55', '2022-03-31 03:23:55'),
(22, NULL, '13', '32', 'true', '2022-03-31 03:23:55', '2022-03-31 03:23:55'),
(23, NULL, '13', '33', 'true', '2022-03-31 03:23:55', '2022-03-31 03:23:55'),
(24, NULL, '13', '34', 'true', '2022-03-31 03:23:55', '2022-03-31 03:23:55');

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

--
-- Dumping data for table `mhp_great_doc_auto_fills`
--

INSERT INTO `mhp_great_doc_auto_fills` (`id`, `auto_fill_id`, `auto_fill_text`, `auto_fill_history`, `patient_id`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, '1', 'Auto Fil Test Auto Fil Tesdsafsdf', 'Auto Fil TestAuto Fil T fdsafdasf', NULL, 0, '2022-04-11 03:40:15', '2022-04-11 03:40:15');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_great_doc_care_suggestions`
--

CREATE TABLE `mhp_great_doc_care_suggestions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `care_suggestion_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `care_details_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `patient_id` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_great_doc_diagnoses`
--

INSERT INTO `mhp_great_doc_diagnoses` (`id`, `diagnosis_action_name`, `diagnosis_for_name`, `diagnosis_further_details`, `diagnosis_name`, `diagnosis_provitional_status`, `patient_id`, `delete_status`, `created_at`, `updated_at`) VALUES
(4, 'test1', 'test 4 for', 'as', 'Cholera due to Vibrio cholerae 01, biovar eltor', '1', NULL, 0, '2022-04-17 22:48:30', '2022-04-17 22:48:30');

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
  `patient_id` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_great_doc_reminders`
--

CREATE TABLE `mhp_great_doc_reminders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `andDate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dueBetween` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inactive_patient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1=true ,0=false',
  `location_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `onDate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overrude_reminder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1=true ,0=false',
  `reason_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `multipleChecked` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `patient_id` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_great_doc_resons`
--

INSERT INTO `mhp_great_doc_resons` (`id`, `reson_for_name`, `reson_further_details`, `reson_name`, `patient_id`, `delete_status`, `created_at`, `updated_at`) VALUES
(3, 'test for 3', 'gsdfg', 'new test1', NULL, 0, '2022-04-16 21:41:18', '2022-04-16 21:41:18'),
(4, 'test for 3', 'gsddfg', 'new test1', NULL, 0, '2022-04-16 21:41:18', '2022-04-16 21:41:18'),
(5, 'test for 3', 'ghhfdh', 'new test1', NULL, 0, '2022-04-27 00:54:51', '2022-04-27 00:54:51');

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
(1, 'item.id', 'sdaf', 'days', '2022-04-06', 'sfdsad', '1', '2022-04-18 03:53:11', '2022-04-18 03:53:11');

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

--
-- Dumping data for table `mhp_hand_and_fingers`
--

INSERT INTO `mhp_hand_and_fingers` (`id`, `handandfinger_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'test1', 0, NULL, NULL, '2022-03-06 04:27:23', '2022-03-06 04:27:23'),
(2, 'test2', 0, NULL, NULL, '2022-03-06 04:27:29', '2022-03-06 04:27:29'),
(3, 'test3', 0, NULL, NULL, '2022-03-06 04:27:34', '2022-03-06 04:27:34');

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

--
-- Dumping data for table `mhp_heart_sounds`
--

INSERT INTO `mhp_heart_sounds` (`id`, `heartSound_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'asdas', NULL, 'single', 1, NULL, NULL, '2022-02-19 23:13:59', '2022-02-19 23:33:40'),
(2, 'sdf', NULL, 'multiple', 1, NULL, NULL, '2022-02-19 23:30:52', '2022-02-23 23:24:17'),
(3, 'X2', 2, 'multiple', 0, NULL, NULL, '2022-02-20 00:21:39', '2022-02-23 23:26:05'),
(4, 'X3', 1, 'single', 0, NULL, NULL, '2022-02-23 23:24:32', '2022-02-23 23:25:32');

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

--
-- Dumping data for table `mhp_histories`
--

INSERT INTO `mhp_histories` (`id`, `history_code`, `history_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'his-101', 'Chest wall pain', 0, NULL, NULL, '2022-02-15 00:01:02', '2022-02-15 01:41:57'),
(2, 'his-102', 'Typical Angina', 0, NULL, NULL, '2022-02-15 00:01:20', '2022-02-15 01:41:31'),
(3, 'his-99', 'Chest Pain', 0, NULL, NULL, '2022-02-15 01:42:29', '2022-02-15 01:42:29');

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

--
-- Dumping data for table `mhp_history_examination_statuses`
--

INSERT INTO `mhp_history_examination_statuses` (`id`, `history_exam_status_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Active', 0, NULL, NULL, '2022-02-17 00:14:14', '2022-02-17 00:14:14'),
(2, 'InActive', 0, NULL, NULL, '2022-02-17 00:14:20', '2022-02-17 00:14:20');

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

--
-- Dumping data for table `mhp_ingerdient_children`
--

INSERT INTO `mhp_ingerdient_children` (`id`, `custom_medicine_id`, `ingredient_id`, `ingredient_strength`, `ingredient_unit`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, '1', '3', '10', '1 mg', '0', '2022-04-06 02:41:48', '2022-04-06 02:41:48'),
(2, '1', '2', '10', '0.5 mg', '0', '2022-04-06 02:41:48', '2022-04-06 02:41:48'),
(3, '2', '2', 'test', 'test', '0', '2022-04-06 02:45:04', '2022-04-06 02:45:04'),
(4, '2', '3', '66', 'ml', '0', '2022-04-06 02:45:04', '2022-04-06 02:45:04');

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

--
-- Dumping data for table `mhp_ingredients`
--

INSERT INTO `mhp_ingredients` (`id`, `ingredient_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(2, 'abacavir', '0', '2022-04-06 02:37:21', '2022-04-06 02:37:21'),
(3, 'abacavir hydrochloride', '0', '2022-04-06 02:37:35', '2022-04-06 02:37:35');

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

--
-- Dumping data for table `mhp_inspections`
--

INSERT INTO `mhp_inspections` (`id`, `Inspection_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'test 1', 0, NULL, NULL, '2022-04-09 21:39:22', '2022-04-09 21:39:22'),
(2, 'test 2', 0, NULL, NULL, '2022-04-09 21:39:33', '2022-04-09 21:39:33');

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

--
-- Dumping data for table `mhp_intercostal_spaces`
--

INSERT INTO `mhp_intercostal_spaces` (`id`, `intercostal_space_name`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Displaced', 'single', 0, NULL, NULL, '2022-02-14 23:11:15', '2022-02-14 23:11:15'),
(2, 'Diskenatic', 'single', 0, NULL, NULL, '2022-02-14 23:11:28', '2022-02-14 23:11:28'),
(3, 'Right ventricular heave', 'single', 0, NULL, NULL, '2022-02-14 23:11:40', '2022-02-14 23:11:40'),
(4, 'RVH and P2 palpable', 'single', 0, NULL, NULL, '2022-02-14 23:11:51', '2022-02-14 23:11:51');

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

--
-- Dumping data for table `mhp_invoices`
--

INSERT INTO `mhp_invoices` (`id`, `patient_id`, `invoice_number`, `issued_date`, `due_date`, `total_bill_amount`, `payment_amount`, `created_at`, `updated_at`) VALUES
(1, '1', 'INV-2022-6817', '22nd March 2022, 4:56', '22nd March 2022, 4:56', 17200, 3000, '2022-03-22 04:57:33', '2022-03-22 04:57:33'),
(2, '1', 'INV-2022-98519', '22nd March 2022, 5:04', '22nd March 2022, 5:04', 17200, 3000, '2022-03-22 05:04:29', '2022-03-22 05:04:29'),
(3, '1', 'INV-2022-98519', '22nd March 2022, 5:04', '22nd March 2022, 5:04', 17200, 3000, '2022-03-22 05:04:38', '2022-03-22 05:04:38'),
(4, '4', 'INV-2022-32859', '22nd March 2022, 5:05', '22nd March 2022, 5:05', 4200, 3134, '2022-03-22 05:05:38', '2022-03-22 05:05:38'),
(5, NULL, 'INV-2022-6073', '23rd March 2022 12:54 pm', '23rd March 2022 12:54 pm', 6700, 5998, '2022-03-23 00:54:29', '2022-03-23 00:54:29'),
(6, '1', 'INV-2022-7478', '23rd March 2022 12:55 pm', '23rd March 2022 12:55 pm', 6700, 5998, '2022-03-23 00:55:25', '2022-03-23 00:55:25'),
(7, '1', 'INV-2022-8567', '23rd March 2022 12:58 pm', '23rd March 2022 12:58 pm', 6700, 5998, '2022-03-23 00:58:22', '2022-03-23 00:58:22'),
(8, '1', 'INV-2022-1136', '23rd March 2022 01:03 pm', '23rd March 2022 01:03 pm', 6700, 5998, '2022-03-23 01:04:02', '2022-03-23 01:04:02'),
(9, '1', 'INV-2022-3581', '23rd March 2022 01:23 pm', '23rd March 2022 01:23 pm', 6700, 5998, '2022-03-23 01:27:03', '2022-03-23 01:27:03'),
(10, '1', 'INV-2022-3581', '23rd March 2022 01:23 pm', '23rd March 2022 01:23 pm', 6700, 5998, '2022-03-23 01:27:17', '2022-03-23 01:27:17');

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

--
-- Dumping data for table `mhp_l1_l2_hip_flexions`
--

INSERT INTO `mhp_l1_l2_hip_flexions` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'normal', 0, '2022-05-11 04:08:16', '2022-05-11 04:08:16'),
(2, 'weak', 0, '2022-05-11 04:08:24', '2022-05-11 04:08:24');

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

--
-- Dumping data for table `mhp_l1_l2_sensations`
--

INSERT INTO `mhp_l1_l2_sensations` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'test1', 0, '2022-05-11 04:09:22', '2022-05-11 04:09:22');

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

--
-- Dumping data for table `mhp_l3_to_l5_powers`
--

INSERT INTO `mhp_l3_to_l5_powers` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'normal', 0, '2022-05-11 04:08:55', '2022-05-11 04:08:55'),
(2, 'weak', 0, '2022-05-11 04:09:07', '2022-05-11 04:09:07');

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

--
-- Dumping data for table `mhp_l3_to_l5_sensations`
--

INSERT INTO `mhp_l3_to_l5_sensations` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'test1', 0, '2022-05-11 04:09:54', '2022-05-11 04:09:54');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_lab_modules`
--

CREATE TABLE `mhp_lab_modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usual_provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_type_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_name_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_lab_modules`
--

INSERT INTO `mhp_lab_modules` (`id`, `department_id`, `usual_provider_id`, `reference_id`, `date`, `test_type_id`, `test_name_id`, `report`, `patient_id`, `created_at`, `updated_at`) VALUES
(1, '2', '1', '1', '2022-05-10T04:36:34.000Z', '2', '2', '', NULL, '2022-05-08 22:37:37', '2022-05-08 22:37:37'),
(2, '1', '1', '3', 'Wed May 11 2022 10:30:38 GMT+0600 (Bangladesh Standard Time)', '2', '2', '1652157048.jpg', '4', '2022-05-09 22:30:48', '2022-05-09 22:30:48'),
(4, '2', '1', '1', 'Thu May 12 2022 16:20:31 GMT+0600 (Bangladesh Standard Time)', '2', '2', '1652264461.jpg', '4', '2022-05-11 04:21:02', '2022-05-11 04:21:02');

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

--
-- Dumping data for table `mhp_left_supraclavicular_nodes`
--

INSERT INTO `mhp_left_supraclavicular_nodes` (`id`, `leftsupraclavicularnode_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'node 1', 0, NULL, NULL, '2022-03-06 04:28:33', '2022-03-06 04:28:33'),
(2, 'node 2', 0, NULL, NULL, '2022-03-06 04:28:43', '2022-03-06 04:28:43'),
(3, 'node 3', 0, NULL, NULL, '2022-03-06 04:28:49', '2022-03-06 04:28:49');

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

--
-- Dumping data for table `mhp_lesions`
--

INSERT INTO `mhp_lesions` (`id`, `Lesion_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Right', 0, NULL, NULL, '2022-03-28 23:05:42', '2022-03-28 23:05:42'),
(2, 'Left', 0, NULL, NULL, '2022-03-28 23:05:49', '2022-03-28 23:05:49'),
(3, 'Upper', 0, NULL, NULL, '2022-03-28 23:06:02', '2022-03-28 23:06:02'),
(4, 'Lower', 0, NULL, NULL, '2022-03-28 23:06:10', '2022-03-28 23:06:10');

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

--
-- Dumping data for table `mhp_lesion_middles`
--

INSERT INTO `mhp_lesion_middles` (`id`, `LesionMiddle_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Nasal', 0, '2022-03-28 23:06:21', '2022-03-28 23:06:21'),
(2, 'Temporal', 0, '2022-03-28 23:06:29', '2022-03-28 23:06:29'),
(3, 'Conjunctiva', 0, '2022-03-28 23:06:37', '2022-03-28 23:06:37'),
(4, 'Sclera', 0, '2022-03-28 23:06:45', '2022-03-28 23:06:45');

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

--
-- Dumping data for table `mhp_lesion_rights`
--

INSERT INTO `mhp_lesion_rights` (`id`, `LesionRight_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Lid', 0, '2022-03-28 23:54:00', '2022-03-28 23:54:00'),
(2, 'Pupil', 0, '2022-03-28 23:54:10', '2022-03-28 23:54:10'),
(3, 'Irish', 0, '2022-03-28 23:54:19', '2022-03-28 23:54:19'),
(4, 'Limbus', 0, '2022-03-28 23:54:33', '2022-03-28 23:54:33');

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

--
-- Dumping data for table `mhp_level_of_spine_of_scapulas`
--

INSERT INTO `mhp_level_of_spine_of_scapulas` (`id`, `LevelOfSpineOfScapula_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'test 1', 0, NULL, NULL, '2022-05-11 04:12:15', '2022-05-11 04:12:15');

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

--
-- Dumping data for table `mhp_lightreflexes`
--

INSERT INTO `mhp_lightreflexes` (`id`, `lightreflex_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Reactive', 1, 'single', 0, NULL, NULL, '2022-03-08 01:03:45', '2022-03-08 01:03:45'),
(2, 'Sluggish', 1, 'multiple', 0, NULL, NULL, '2022-03-08 01:03:56', '2022-03-08 01:03:56');

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

--
-- Dumping data for table `mhp_lumber_lordoses`
--

INSERT INTO `mhp_lumber_lordoses` (`id`, `LumberLordosis_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'test1', 0, NULL, NULL, '2022-04-09 21:46:30', '2022-04-09 21:46:30'),
(2, 'test2', 0, NULL, NULL, '2022-04-09 21:46:36', '2022-04-09 21:46:36');

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

--
-- Dumping data for table `mhp_lying_on_couches`
--

INSERT INTO `mhp_lying_on_couches` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'test1', 0, '2022-04-09 21:44:43', '2022-04-09 21:44:43'),
(2, 'test2', 0, '2022-04-09 21:44:48', '2022-04-09 21:44:48');

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

--
-- Dumping data for table `mhp_main_body_parts`
--

INSERT INTO `mhp_main_body_parts` (`id`, `MainBodyPart_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Head', 0, NULL, NULL, '2022-03-13 23:54:24', '2022-03-13 23:54:24'),
(2, 'Leg', 0, NULL, NULL, '2022-03-20 06:17:28', '2022-03-20 06:17:28');

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

--
-- Dumping data for table `mhp_mastoids`
--

INSERT INTO `mhp_mastoids` (`id`, `mastoid_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Tender', 1, 'single', 0, NULL, NULL, '2022-04-04 23:41:21', '2022-04-04 23:41:21'),
(2, 'No Tender', 1, 'multiple', 0, NULL, NULL, '2022-04-04 23:41:32', '2022-04-04 23:41:32');

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

--
-- Dumping data for table `mhp_media_types`
--

INSERT INTO `mhp_media_types` (`id`, `media_type_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Skype', 0, '2022-03-15 22:19:39', '2022-03-15 22:19:39'),
(2, 'Zoom', 0, '2022-03-15 22:19:47', '2022-03-15 22:19:47');

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

--
-- Dumping data for table `mhp_medical_histories`
--

INSERT INTO `mhp_medical_histories` (`id`, `medicalhistory_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Hypertension', 0, NULL, NULL, '2022-03-03 00:16:07', '2022-03-03 00:16:07'),
(2, 'Cardiac Failure', 0, NULL, NULL, '2022-03-03 00:16:16', '2022-03-03 00:16:16'),
(3, 'Type II Diabetes', 0, NULL, NULL, '2022-03-03 00:16:25', '2022-03-03 00:16:25'),
(4, 'Atrial Fibrilliation', 0, NULL, NULL, '2022-03-03 00:16:33', '2022-03-03 00:16:33'),
(5, 'Storke/TIA', 0, NULL, NULL, '2022-03-03 00:16:42', '2022-03-03 00:16:42'),
(6, 'COPD', 0, NULL, NULL, '2022-03-03 00:16:49', '2022-03-03 00:16:49'),
(7, 'Obesity', 0, NULL, NULL, '2022-03-03 00:16:57', '2022-03-03 00:16:57');

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

--
-- Dumping data for table `mhp_mental_affects`
--

INSERT INTO `mhp_mental_affects` (`id`, `patient_id`, `mental_health_id`, `affect_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 'undefined', '9', '2', 'Blunted', '2022-04-03 00:41:17', '2022-04-03 00:41:17');

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

--
-- Dumping data for table `mhp_mental_appearances`
--

INSERT INTO `mhp_mental_appearances` (`id`, `patient_id`, `mental_health_id`, `appearance_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 'undefined', '4', '4', 'Unkept, poorly groomed', '2022-04-03 00:14:47', '2022-04-03 00:14:47'),
(2, 'undefined', '4', '5', 'Bizarre Appearance', '2022-04-03 00:14:47', '2022-04-03 00:14:47'),
(3, 'undefined', '5', '4', 'Unkept, poorly groomed', '2022-04-03 00:31:27', '2022-04-03 00:31:27'),
(4, 'undefined', '5', '5', 'Bizarre Appearance', '2022-04-03 00:31:27', '2022-04-03 00:31:27'),
(5, 'undefined', '5', '6', 'Manneristic', '2022-04-03 00:31:27', '2022-04-03 00:31:27'),
(6, 'undefined', '5', '7', 'Uncooperative', '2022-04-03 00:31:27', '2022-04-03 00:31:27');

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

--
-- Dumping data for table `mhp_mental_attitudetowardsexaminations`
--

INSERT INTO `mhp_mental_attitudetowardsexaminations` (`id`, `patient_id`, `mental_health_id`, `attitudetowardsexamination_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 'undefined', '7', '2', 'Appropriate', '2022-04-03 00:34:05', '2022-04-03 00:34:05');

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

--
-- Dumping data for table `mhp_mental_healths`
--

INSERT INTO `mhp_mental_healths` (`id`, `patient_id`, `created_at`, `updated_at`) VALUES
(1, 'undefined', '2022-04-03 00:01:35', '2022-04-03 00:01:35'),
(2, 'undefined', '2022-04-03 00:02:58', '2022-04-03 00:02:58'),
(3, 'undefined', '2022-04-03 00:13:21', '2022-04-03 00:13:21'),
(4, 'undefined', '2022-04-03 00:14:46', '2022-04-03 00:14:46'),
(5, 'undefined', '2022-04-03 00:31:26', '2022-04-03 00:31:26'),
(6, 'undefined', '2022-04-03 00:31:40', '2022-04-03 00:31:40'),
(7, 'undefined', '2022-04-03 00:34:05', '2022-04-03 00:34:05'),
(8, 'undefined', '2022-04-03 00:38:47', '2022-04-03 00:38:47'),
(9, 'undefined', '2022-04-03 00:41:16', '2022-04-03 00:41:16'),
(10, 'undefined', '2022-04-03 00:53:37', '2022-04-03 00:53:37'),
(11, 'undefined', '2022-04-03 01:01:36', '2022-04-03 01:01:36'),
(12, 'undefined', '2022-04-04 03:17:41', '2022-04-04 03:17:41'),
(13, 'undefined', '2022-04-04 03:19:00', '2022-04-04 03:19:00');

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

--
-- Dumping data for table `mhp_mental_histories`
--

INSERT INTO `mhp_mental_histories` (`id`, `patient_id`, `mental_health_id`, `history_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 'undefined', '2', '85', 'true', '2022-04-03 00:02:58', '2022-04-03 00:02:58'),
(2, 'undefined', '2', '86', 'true', '2022-04-03 00:02:58', '2022-04-03 00:02:58'),
(3, 'undefined', '2', '87', 'true', '2022-04-03 00:02:59', '2022-04-03 00:02:59'),
(4, 'undefined', '3', '85', 'true', '2022-04-03 00:13:22', '2022-04-03 00:13:22'),
(5, 'undefined', '3', '86', 'true', '2022-04-03 00:13:22', '2022-04-03 00:13:22'),
(6, 'undefined', '3', '87', 'true', '2022-04-03 00:13:22', '2022-04-03 00:13:22'),
(7, 'undefined', '4', '85', 'true', '2022-04-03 00:14:46', '2022-04-03 00:14:46'),
(8, 'undefined', '4', '86', 'true', '2022-04-03 00:14:47', '2022-04-03 00:14:47'),
(9, 'undefined', '4', '87', 'true', '2022-04-03 00:14:47', '2022-04-03 00:14:47'),
(10, 'undefined', '5', '85', 'true', '2022-04-03 00:31:26', '2022-04-03 00:31:26'),
(11, 'undefined', '5', '86', 'true', '2022-04-03 00:31:27', '2022-04-03 00:31:27'),
(12, 'undefined', '5', '87', 'true', '2022-04-03 00:31:27', '2022-04-03 00:31:27'),
(13, 'undefined', '6', '85', 'true', '2022-04-03 00:31:40', '2022-04-03 00:31:40'),
(14, 'undefined', '6', '86', 'true', '2022-04-03 00:31:40', '2022-04-03 00:31:40'),
(15, 'undefined', '6', '87', 'true', '2022-04-03 00:31:40', '2022-04-03 00:31:40'),
(16, 'undefined', '7', '85', 'false', '2022-04-03 00:34:05', '2022-04-03 00:34:05'),
(17, 'undefined', '7', '86', 'false', '2022-04-03 00:34:05', '2022-04-03 00:34:05'),
(18, 'undefined', '7', '87', 'false', '2022-04-03 00:34:05', '2022-04-03 00:34:05'),
(19, 'undefined', '8', '85', 'false', '2022-04-03 00:38:47', '2022-04-03 00:38:47'),
(20, 'undefined', '8', '86', 'false', '2022-04-03 00:38:47', '2022-04-03 00:38:47'),
(21, 'undefined', '8', '87', 'false', '2022-04-03 00:38:48', '2022-04-03 00:38:48'),
(22, 'undefined', '9', '85', 'false', '2022-04-03 00:41:16', '2022-04-03 00:41:16'),
(23, 'undefined', '9', '86', 'false', '2022-04-03 00:41:16', '2022-04-03 00:41:16'),
(24, 'undefined', '9', '87', 'false', '2022-04-03 00:41:16', '2022-04-03 00:41:16'),
(25, 'undefined', '10', '85', 'false', '2022-04-03 00:53:37', '2022-04-03 00:53:37'),
(26, 'undefined', '10', '86', 'false', '2022-04-03 00:53:37', '2022-04-03 00:53:37'),
(27, 'undefined', '10', '87', 'false', '2022-04-03 00:53:37', '2022-04-03 00:53:37'),
(28, 'undefined', '11', '85', 'false', '2022-04-03 01:01:37', '2022-04-03 01:01:37'),
(29, 'undefined', '11', '86', 'false', '2022-04-03 01:01:37', '2022-04-03 01:01:37'),
(30, 'undefined', '11', '87', 'false', '2022-04-03 01:01:37', '2022-04-03 01:01:37');

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

--
-- Dumping data for table `mhp_mental_moods`
--

INSERT INTO `mhp_mental_moods` (`id`, `patient_id`, `mental_health_id`, `mood_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 'undefined', '8', '2', 'Depressed', '2022-04-03 00:38:48', '2022-04-03 00:38:48');

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

--
-- Dumping data for table `mhp_mental_perceptual_disturbances`
--

INSERT INTO `mhp_mental_perceptual_disturbances` (`id`, `patient_id`, `mental_health_id`, `perceptual_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 'undefined', '10', '2', 'Auditory Hallucinations', '2022-04-03 00:53:37', '2022-04-03 00:53:37'),
(2, 'undefined', '10', '3', 'Visual Hallucinations', '2022-04-03 00:53:37', '2022-04-03 00:53:37'),
(3, 'undefined', '11', '2', 'Auditory Hallucinations', '2022-04-03 01:01:37', '2022-04-03 01:01:37'),
(4, 'undefined', '11', '3', 'Visual Hallucinations', '2022-04-03 01:01:37', '2022-04-03 01:01:37');

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

--
-- Dumping data for table `mhp_mental_psq9_ques1sts`
--

INSERT INTO `mhp_mental_psq9_ques1sts` (`id`, `patient_id`, `mental_health_id`, `psq9question_id`, `question_value_id`, `total_score`, `created_at`, `updated_at`) VALUES
(1, 'undefined', '12', '1', '2', '6', '2022-04-04 03:17:41', '2022-04-04 03:17:41'),
(2, 'undefined', '12', '3', '2', '6', '2022-04-04 03:17:41', '2022-04-04 03:17:41'),
(3, 'undefined', '12', '7', '1', '6', '2022-04-04 03:17:41', '2022-04-04 03:17:41'),
(4, 'undefined', '12', '9', '1', '6', '2022-04-04 03:17:41', '2022-04-04 03:17:41'),
(5, 'undefined', '13', '1', '2', '6', '2022-04-04 03:19:00', '2022-04-04 03:19:00'),
(6, 'undefined', '13', '3', '2', '6', '2022-04-04 03:19:00', '2022-04-04 03:19:00'),
(7, 'undefined', '13', '7', '1', '6', '2022-04-04 03:19:00', '2022-04-04 03:19:00'),
(8, 'undefined', '13', '9', '1', '6', '2022-04-04 03:19:01', '2022-04-04 03:19:01'),
(9, 'undefined', '13', '1', '1', '3', '2022-04-04 03:19:01', '2022-04-04 03:19:01'),
(10, 'undefined', '13', '2', '2', '3', '2022-04-04 03:19:01', '2022-04-04 03:19:01');

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

--
-- Dumping data for table `mhp_mental_speeches`
--

INSERT INTO `mhp_mental_speeches` (`id`, `patient_id`, `mental_health_id`, `speeche_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 'undefined', '10', '2', 'Increased Tempo', '2022-04-03 00:53:37', '2022-04-03 00:53:37'),
(2, 'undefined', '11', '2', 'Increased Tempo', '2022-04-03 01:01:37', '2022-04-03 01:01:37');

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

--
-- Dumping data for table `mhp_metacarpophalangeal_joints`
--

INSERT INTO `mhp_metacarpophalangeal_joints` (`id`, `MetacarpophalangealJoint_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'test 1', 0, NULL, NULL, '2022-05-11 04:13:01', '2022-05-11 04:13:01');

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

--
-- Dumping data for table `mhp_miscarriages`
--

INSERT INTO `mhp_miscarriages` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Second timester', 0, '2022-04-16 03:00:17', '2022-04-16 03:00:17'),
(2, 'First timester', 0, '2022-04-16 03:00:22', '2022-04-16 03:00:22');

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

--
-- Dumping data for table `mhp_motors`
--

INSERT INTO `mhp_motors` (`id`, `motor_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'sdaf', 0, NULL, NULL, '2022-03-12 22:31:40', '2022-03-12 22:31:40');

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

--
-- Dumping data for table `mhp_movements`
--

INSERT INTO `mhp_movements` (`id`, `Movement_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Forward Flexion to (45  )', 0, NULL, NULL, '2022-04-09 00:37:09', '2022-04-09 00:40:54'),
(2, 'Backward Extension to (45  )', 0, NULL, NULL, '2022-04-09 00:37:16', '2022-04-09 00:41:05'),
(3, 'Lateral bending- right to (45  )', 0, NULL, NULL, '2022-04-09 00:37:21', '2022-04-09 00:41:17'),
(4, 'Rotation over shoulder- left to (70  )', 0, NULL, NULL, '2022-04-09 00:41:24', '2022-04-09 00:41:24'),
(5, 'Rotation over shoulder- right to (70  )', 0, NULL, NULL, '2022-04-09 00:41:30', '2022-04-09 00:41:30'),
(6, 'Lateral bending- left to (45  )', 0, NULL, NULL, '2022-04-09 00:41:43', '2022-04-09 00:41:43');

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

--
-- Dumping data for table `mhp_move_hip_pelvis`
--

INSERT INTO `mhp_move_hip_pelvis` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'test1', 0, '2022-04-09 21:45:14', '2022-04-09 21:45:14'),
(2, 'test2', 0, '2022-04-09 21:45:19', '2022-04-09 21:45:19');

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

--
-- Dumping data for table `mhp_murmurs`
--

INSERT INTO `mhp_murmurs` (`id`, `murmur_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'asdasdasd fdas', 1, 'single', 1, NULL, NULL, '2022-02-20 01:14:55', '2022-02-20 01:15:09'),
(2, 'Pansystolic', 2, 'multiple', 0, NULL, NULL, '2022-02-20 01:41:51', '2022-02-23 23:49:41'),
(3, 'Mid systolic', 1, 'single', 0, NULL, NULL, '2022-02-23 23:50:01', '2022-02-23 23:50:01'),
(4, 'Late systolic', 1, 'multiple', 0, NULL, NULL, '2022-02-23 23:50:18', '2022-02-23 23:50:18'),
(5, 'Early Diastolic', 1, 'multiple', 0, NULL, NULL, '2022-02-23 23:50:38', '2022-02-23 23:50:38'),
(6, 'Mid Diastolic', 1, 'single', 0, NULL, NULL, '2022-02-23 23:50:54', '2022-02-23 23:50:54'),
(7, 'Pre systolic', 1, 'multiple', 0, NULL, NULL, '2022-02-23 23:51:10', '2022-02-23 23:51:10'),
(8, 'Continious', 1, 'single', 0, NULL, NULL, '2022-02-23 23:51:24', '2022-02-23 23:51:24'),
(9, 'Pansystolic', 1, 'single', 1, NULL, NULL, '2022-02-23 23:55:03', '2022-02-23 23:55:17');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_musculo_sketal_carvical_spine_histories`
--

CREATE TABLE `mhp_musculo_sketal_carvical_spine_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carvical_spine_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `history_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_musculo_sketal_carvical_spine_histories`
--

INSERT INTO `mhp_musculo_sketal_carvical_spine_histories` (`id`, `patient_id`, `carvical_spine_id`, `history_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '1', '13', '100', 'true', '2022-05-10 23:46:39', '2022-05-10 23:46:39'),
(2, '1', '13', '101', 'true', '2022-05-10 23:46:39', '2022-05-10 23:46:39');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_musculo_sketal_carvical_spine_momement1s`
--

CREATE TABLE `mhp_musculo_sketal_carvical_spine_momement1s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carvical_spine_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `momement1s_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_musculo_sketal_carvical_spine_momement1s`
--

INSERT INTO `mhp_musculo_sketal_carvical_spine_momement1s` (`id`, `patient_id`, `carvical_spine_id`, `momement1s_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '1', '8', '4', 'Rotation over shoulder- left to (70  )', '2022-05-10 04:25:09', '2022-05-10 04:25:09'),
(2, '1', '8', '5', 'Rotation over shoulder- right to (70  )', '2022-05-10 04:25:09', '2022-05-10 04:25:09'),
(3, '1', '9', '4', 'Rotation over shoulder- left to (70  )', '2022-05-10 04:53:55', '2022-05-10 04:53:55'),
(4, '1', '9', '5', 'Rotation over shoulder- right to (70  )', '2022-05-10 04:53:55', '2022-05-10 04:53:55'),
(5, '1', '10', '4', 'Rotation over shoulder- left to (70  )', '2022-05-10 05:03:53', '2022-05-10 05:03:53'),
(6, '1', '10', '5', 'Rotation over shoulder- right to (70  )', '2022-05-10 05:03:53', '2022-05-10 05:03:53'),
(7, '1', '12', '5', 'Rotation over shoulder- right to (70  )', '2022-05-10 23:30:57', '2022-05-10 23:30:57'),
(8, '1', '12', '6', 'Lateral bending- left to (45  )', '2022-05-10 23:30:58', '2022-05-10 23:30:58');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_musculo_sketal_carvical_spine_movement2nds`
--

CREATE TABLE `mhp_musculo_sketal_carvical_spine_movement2nds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carvical_spine_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `momement_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_musculo_sketal_carvical_spine_movement2nds`
--

INSERT INTO `mhp_musculo_sketal_carvical_spine_movement2nds` (`id`, `patient_id`, `carvical_spine_id`, `momement_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '1', '13', '1', 'true', '2022-05-10 23:46:39', '2022-05-10 23:46:39'),
(2, '1', '13', '2', 'true', '2022-05-10 23:46:39', '2022-05-10 23:46:39');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_musculo_sketal_carvical_spine_tendernes_over_fact_joins`
--

CREATE TABLE `mhp_musculo_sketal_carvical_spine_tendernes_over_fact_joins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carvical_spine_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `side` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tendernes_over_fact_joins_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_musculo_sketal_carvical_spine_tendernes_over_fact_joins`
--

INSERT INTO `mhp_musculo_sketal_carvical_spine_tendernes_over_fact_joins` (`id`, `patient_id`, `carvical_spine_id`, `side`, `tendernes_over_fact_joins_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '1', '10', 'Right', '6', 'C3', '2022-05-10 05:03:54', '2022-05-10 05:03:54'),
(2, '1', '10', 'Right', '8', 'C1', '2022-05-10 05:03:54', '2022-05-10 05:03:54'),
(3, '1', '12', 'Right', '7', 'C2', '2022-05-10 23:30:58', '2022-05-10 23:30:58'),
(4, '1', '12', 'Right', '8', 'C1', '2022-05-10 23:30:58', '2022-05-10 23:30:58');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_musculo_sketal_carvical_spine_tendernes_over_spinuses`
--

CREATE TABLE `mhp_musculo_sketal_carvical_spine_tendernes_over_spinuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carvical_spine_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tendernes_over_spinuses_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_musculo_sketal_carvical_spine_tendernes_over_spinuses`
--

INSERT INTO `mhp_musculo_sketal_carvical_spine_tendernes_over_spinuses` (`id`, `patient_id`, `carvical_spine_id`, `tendernes_over_spinuses_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '1', '10', '6', 'C3', '2022-05-10 05:03:53', '2022-05-10 05:03:53'),
(2, '1', '10', '8', 'C1', '2022-05-10 05:03:54', '2022-05-10 05:03:54'),
(3, '1', '12', '7', 'C2', '2022-05-10 23:30:58', '2022-05-10 23:30:58'),
(4, '1', '12', '8', 'C1', '2022-05-10 23:30:58', '2022-05-10 23:30:58');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_musculo_sketal_thoraco_lumber_spines`
--

CREATE TABLE `mhp_musculo_sketal_thoraco_lumber_spines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inspection_look_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sudden_anaesthesia_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thoracic_kyphosis_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lumber_lordosis_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spine_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pain_along_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pain_over_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slum_test_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pain_into_knee_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `walk_on_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tenderness_over_thoraco_side` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lateral_flexion_side` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forward_ternsry` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slJoint_side` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hip_joint_line_side` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valsalva_PN_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `straight_leg_raising_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `femoral_stretch_PN_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hoover_test_PN_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gaenslens_sign_PN_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patrick_bucket_PN_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quadrant_PN_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trendelenburg_PN_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spondylosis_PN_ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hip_flexion_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resisted_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dorsiflexion_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extend_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l1_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l3Area_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l4Area_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l5Area_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `planter_flexion_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s1_area_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s4_supply_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Shober_test` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_musculo_sketal_thoraco_lumber_spines`
--

INSERT INTO `mhp_musculo_sketal_thoraco_lumber_spines` (`id`, `patient_id`, `inspection_look_value`, `sudden_anaesthesia_value`, `thoracic_kyphosis_value`, `lumber_lordosis_value`, `spine_value`, `pain_along_value`, `pain_over_value`, `slum_test_ternary`, `pain_into_knee_value`, `walk_on_value`, `tenderness_over_thoraco_side`, `lateral_flexion_side`, `forward_ternsry`, `extension_ternary`, `slJoint_side`, `hip_joint_line_side`, `valsalva_PN_ternary`, `straight_leg_raising_ternary`, `femoral_stretch_PN_ternary`, `hoover_test_PN_ternary`, `gaenslens_sign_PN_ternary`, `patrick_bucket_PN_ternary`, `quadrant_PN_ternary`, `trendelenburg_PN_ternary`, `spondylosis_PN_ternary`, `hip_flexion_value`, `resisted_value`, `dorsiflexion_value`, `extend_value`, `l1_value`, `l3Area_value`, `l4Area_value`, `l5Area_value`, `planter_flexion_value`, `s1_area_value`, `s4_supply_value`, `Shober_test`, `created_at`, `updated_at`) VALUES
(1, '1', 'test 1', 'test2', 'test2', 'test2', NULL, NULL, NULL, NULL, 'test1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-12 03:32:30', '2022-05-12 03:32:30');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_m_t_p_joints`
--

CREATE TABLE `mhp_m_t_p_joints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
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

--
-- Dumping data for table `mhp_neurologicals`
--

INSERT INTO `mhp_neurologicals` (`id`, `patient_id`, `intermittent`, `continuous`, `created_at`, `updated_at`) VALUES
(1, '1', 'No hearing loss (BPPV)', 'No hearing loss (VN- Vestibular Neuronitis', '2022-04-07 02:44:38', '2022-04-07 02:44:38'),
(2, NULL, 'No hearing loss (BPPV)', '\"With hearing loss (Labyrinthitis)', '2022-04-08 22:05:39', '2022-04-08 22:05:39'),
(3, NULL, 'No hearing loss (BPPV)', '\"With hearing loss (Labyrinthitis)', '2022-04-08 22:14:35', '2022-04-08 22:14:35'),
(4, NULL, 'No hearing loss (BPPV)', '\"With hearing loss (Labyrinthitis)', '2022-04-08 22:20:08', '2022-04-08 22:20:08'),
(5, '1', 'With hearing loss and tinnitus (Meniere’s disease)', '\"With hearing loss (Labyrinthitis)', '2022-04-08 22:46:10', '2022-04-08 22:46:10'),
(6, '1', 'With hearing loss and tinnitus (Meniere’s disease)', '\"With hearing loss (Labyrinthitis)', '2022-04-08 22:46:55', '2022-04-08 22:46:55'),
(7, '1', 'With hearing loss and tinnitus (Meniere’s disease)', '\"With hearing loss (Labyrinthitis)', '2022-04-08 22:47:11', '2022-04-08 22:47:11'),
(8, '1', 'With hearing loss and tinnitus (Meniere’s disease)', '\"With hearing loss (Labyrinthitis)', '2022-04-08 23:01:31', '2022-04-08 23:01:31'),
(9, NULL, 'With hearing loss and tinnitus (Meniere’s disease)', '\"With hearing loss (Labyrinthitis)', '2022-04-08 23:25:55', '2022-04-08 23:25:55'),
(10, NULL, 'With hearing loss and tinnitus (Meniere’s disease)', '\"With hearing loss (Labyrinthitis)', '2022-04-08 23:26:35', '2022-04-08 23:26:35'),
(11, NULL, NULL, NULL, '2022-04-08 23:42:55', '2022-04-08 23:42:55'),
(12, NULL, NULL, NULL, '2022-04-08 23:44:02', '2022-04-08 23:44:02'),
(13, NULL, 'No hearing loss (BPPV)', '\"With hearing loss (Labyrinthitis)', '2022-04-08 23:44:49', '2022-04-08 23:44:49'),
(14, NULL, 'No hearing loss (BPPV)', '\"With hearing loss (Labyrinthitis)', '2022-04-08 23:45:38', '2022-04-08 23:45:38'),
(15, NULL, 'No hearing loss (BPPV)', NULL, '2022-04-09 03:45:49', '2022-04-09 03:45:49');

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

--
-- Dumping data for table `mhp_neurological_frontal_lobes`
--

INSERT INTO `mhp_neurological_frontal_lobes` (`id`, `patient_id`, `neurological_id`, `frontal_lobes_id`, `value`, `created_at`, `updated_at`) VALUES
(1, NULL, '11', '2', 'Ataxia', '2022-04-08 23:42:55', '2022-04-08 23:42:55'),
(2, NULL, '11', '3', 'Seizures- Flashing Light Aura', '2022-04-08 23:42:56', '2022-04-08 23:42:56'),
(3, NULL, '12', '2', 'Ataxia', '2022-04-08 23:44:03', '2022-04-08 23:44:03'),
(4, NULL, '12', '3', 'Seizures- Flashing Light Aura', '2022-04-08 23:44:03', '2022-04-08 23:44:03'),
(5, NULL, '13', '2', 'Ataxia', '2022-04-08 23:44:50', '2022-04-08 23:44:50'),
(6, NULL, '13', '3', 'Seizures- Flashing Light Aura', '2022-04-08 23:44:51', '2022-04-08 23:44:51'),
(7, NULL, '14', '2', 'Ataxia', '2022-04-08 23:45:40', '2022-04-08 23:45:40'),
(8, NULL, '14', '3', 'Seizures- Flashing Light Aura', '2022-04-08 23:45:40', '2022-04-08 23:45:40');

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

--
-- Dumping data for table `mhp_neurological_histories`
--

INSERT INTO `mhp_neurological_histories` (`id`, `patient_id`, `neurological_id`, `neurological_histories_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '1', '6', 'Dizziness', 'true', '2022-04-08 22:46:55', '2022-04-08 22:46:55'),
(2, '1', '6', 'Incoordination', 'true', '2022-04-08 22:46:55', '2022-04-08 22:46:55'),
(3, '1', '7', 'Dizziness', 'true', '2022-04-08 22:47:11', '2022-04-08 22:47:11'),
(4, '1', '7', 'Incoordination', 'true', '2022-04-08 22:47:12', '2022-04-08 22:47:12'),
(5, '1', '7', 'Abnormal Gait', 'true', '2022-04-08 22:47:12', '2022-04-08 22:47:12'),
(6, '1', '8', 'Dizziness', 'true', '2022-04-08 23:01:31', '2022-04-08 23:01:31'),
(7, '1', '8', 'Incoordination', 'true', '2022-04-08 23:01:31', '2022-04-08 23:01:31'),
(8, '1', '8', 'Abnormal Gait', 'true', '2022-04-08 23:01:31', '2022-04-08 23:01:31'),
(9, NULL, '9', 'Dizziness', 'true', '2022-04-08 23:25:55', '2022-04-08 23:25:55'),
(10, NULL, '9', 'Incoordination', 'true', '2022-04-08 23:25:55', '2022-04-08 23:25:55'),
(11, NULL, '9', 'Abnormal Gait', 'true', '2022-04-08 23:25:56', '2022-04-08 23:25:56'),
(12, NULL, '10', 'Dizziness', 'true', '2022-04-08 23:26:35', '2022-04-08 23:26:35'),
(13, NULL, '10', 'Incoordination', 'true', '2022-04-08 23:26:35', '2022-04-08 23:26:35'),
(14, NULL, '10', 'Abnormal Gait', 'true', '2022-04-08 23:26:35', '2022-04-08 23:26:35'),
(15, NULL, '13', 'Anosmia', 'true', '2022-04-08 23:44:49', '2022-04-08 23:44:49'),
(16, NULL, '13', 'Abnormal Gait', 'true', '2022-04-08 23:44:49', '2022-04-08 23:44:49'),
(17, NULL, '14', 'Anosmia', 'true', '2022-04-08 23:45:39', '2022-04-08 23:45:39'),
(18, NULL, '14', 'Abnormal Gait', 'true', '2022-04-08 23:45:39', '2022-04-08 23:45:39');

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

--
-- Dumping data for table `mhp_neurological_occipital_lobes`
--

INSERT INTO `mhp_neurological_occipital_lobes` (`id`, `patient_id`, `neurological_id`, `occipital_lobes_id`, `value`, `created_at`, `updated_at`) VALUES
(1, NULL, '12', '1', 'Memory Loss', '2022-04-08 23:44:03', '2022-04-08 23:44:03'),
(2, NULL, '13', '1', 'Memory Loss', '2022-04-08 23:44:51', '2022-04-08 23:44:51'),
(3, NULL, '14', '1', 'Memory Loss', '2022-04-08 23:45:40', '2022-04-08 23:45:40');

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

--
-- Dumping data for table `mhp_neurological_parietal_lobes`
--

INSERT INTO `mhp_neurological_parietal_lobes` (`id`, `patient_id`, `neurological_id`, `parietal_lobes_id`, `value`, `created_at`, `updated_at`) VALUES
(1, NULL, '10', '7', 'Spatial neglect and inattention', '2022-04-08 23:26:36', '2022-04-08 23:26:36'),
(2, NULL, '10', '8', 'Lower Quadrant Hemianopia', '2022-04-08 23:26:36', '2022-04-08 23:26:36'),
(3, NULL, '13', '5', 'Sensory and Visual Inattention', '2022-04-08 23:44:50', '2022-04-08 23:44:50'),
(4, NULL, '13', '6', 'Construction and dressing apraxia', '2022-04-08 23:44:50', '2022-04-08 23:44:50'),
(5, NULL, '14', '5', 'Sensory and Visual Inattention', '2022-04-08 23:45:39', '2022-04-08 23:45:39'),
(6, NULL, '14', '6', 'Construction and dressing apraxia', '2022-04-08 23:45:40', '2022-04-08 23:45:40');

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

--
-- Dumping data for table `mhp_neurological_speeches`
--

INSERT INTO `mhp_neurological_speeches` (`id`, `patient_id`, `neurological_id`, `neurological_speeches_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '1', '8', 'Free Speech', 'true', '2022-04-08 23:01:31', '2022-04-08 23:01:31'),
(2, '1', '8', 'Nominal Dysphasia', 'true', '2022-04-08 23:01:32', '2022-04-08 23:01:32'),
(3, NULL, '9', 'Free Speech', 'true', '2022-04-08 23:25:56', '2022-04-08 23:25:56'),
(4, NULL, '9', 'Nominal Dysphasia', 'true', '2022-04-08 23:25:56', '2022-04-08 23:25:56'),
(5, NULL, '10', 'Free Speech', 'true', '2022-04-08 23:26:35', '2022-04-08 23:26:35'),
(6, NULL, '10', 'Nominal Dysphasia', 'true', '2022-04-08 23:26:35', '2022-04-08 23:26:35'),
(7, NULL, '13', 'Free Speech', 'true', '2022-04-08 23:44:50', '2022-04-08 23:44:50'),
(8, NULL, '13', 'Dysphasia', 'true', '2022-04-08 23:44:50', '2022-04-08 23:44:50'),
(9, NULL, '13', 'Expressive (anterior) Dysphasia', 'true', '2022-04-08 23:44:50', '2022-04-08 23:44:50'),
(10, NULL, '14', 'Free Speech', 'true', '2022-04-08 23:45:39', '2022-04-08 23:45:39'),
(11, NULL, '14', 'Dysphasia', 'true', '2022-04-08 23:45:39', '2022-04-08 23:45:39'),
(12, NULL, '14', 'Expressive (anterior) Dysphasia', 'true', '2022-04-08 23:45:39', '2022-04-08 23:45:39');

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

--
-- Dumping data for table `mhp_neurological_temporal_lobes`
--

INSERT INTO `mhp_neurological_temporal_lobes` (`id`, `patient_id`, `neurological_id`, `temporal_lobes_id`, `value`, `created_at`, `updated_at`) VALUES
(1, NULL, '12', '1', 'Seizures', '2022-04-08 23:44:03', '2022-04-08 23:44:03'),
(2, NULL, '13', '1', 'Seizures', '2022-04-08 23:44:51', '2022-04-08 23:44:51'),
(3, NULL, '14', '1', 'Seizures', '2022-04-08 23:45:40', '2022-04-08 23:45:40');

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

--
-- Dumping data for table `mhp_neuro_opthalmologies`
--

INSERT INTO `mhp_neuro_opthalmologies` (`id`, `NeuroOpthalmology_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'LIR RSO', 0, '2022-03-29 03:54:09', '2022-03-29 03:54:09'),
(2, 'LTRM', 0, '2022-03-29 03:54:18', '2022-03-29 03:54:18'),
(3, 'LTRM', 0, '2022-03-29 03:54:45', '2022-03-29 03:54:45'),
(4, 'LSR RIO', 0, '2022-03-29 03:54:55', '2022-03-29 03:54:55'),
(5, 'RI TL RM LM', 0, '2022-03-29 03:55:08', '2022-03-29 03:55:08'),
(6, 'RM ML', 0, '2022-03-29 03:55:18', '2022-03-29 03:55:18'),
(7, 'SR SL', 0, '2022-03-29 03:55:26', '2022-03-29 03:55:26'),
(8, 'RIRLSO', 0, '2022-03-29 03:55:35', '2022-03-29 03:55:35'),
(9, 'RTLM', 0, '2022-03-29 03:55:44', '2022-03-29 03:55:44'),
(10, 'RSR RIO', 0, '2022-03-29 03:55:54', '2022-03-29 03:55:54');

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

--
-- Dumping data for table `mhp_neuro_opthals`
--

INSERT INTO `mhp_neuro_opthals` (`id`, `NeuroOpthal_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'RSR RIO', 0, '2022-03-28 04:59:44', '2022-03-28 04:59:44'),
(2, 'RTLM', 0, '2022-03-28 04:59:52', '2022-03-28 04:59:52'),
(3, 'RIRLSO', 0, '2022-03-28 05:00:00', '2022-03-28 05:00:00'),
(4, 'SR SL', 0, '2022-03-28 05:00:11', '2022-03-28 05:00:11'),
(5, 'RM ML', 0, '2022-03-28 05:00:25', '2022-03-28 05:00:25'),
(6, 'RI TL RM LM', 0, '2022-03-28 05:00:34', '2022-03-28 05:00:34'),
(7, 'LSR RIO', 0, '2022-03-28 05:00:46', '2022-03-28 05:00:46'),
(8, 'LTRM', 0, '2022-03-28 05:00:53', '2022-03-28 05:00:53'),
(9, 'LIR RSO', 0, '2022-03-28 05:01:04', '2022-03-28 05:01:04');

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

--
-- Dumping data for table `mhp_non_tender_tendernesses`
--

INSERT INTO `mhp_non_tender_tendernesses` (`id`, `nontendertenderness_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'RUQ', 0, NULL, NULL, '2022-03-06 03:48:23', '2022-03-06 03:48:23'),
(2, 'Epigastrium', 0, NULL, NULL, '2022-03-06 03:48:33', '2022-03-06 03:48:33'),
(3, 'LUQ', 0, NULL, NULL, '2022-03-06 03:48:42', '2022-03-06 03:48:42'),
(4, 'R Loin', 0, NULL, NULL, '2022-03-06 03:48:50', '2022-03-06 03:48:50'),
(5, 'Central', 0, NULL, NULL, '2022-03-06 03:48:58', '2022-03-06 03:48:58'),
(6, 'L Loin', 0, NULL, NULL, '2022-03-06 03:49:07', '2022-03-06 03:49:07'),
(7, 'RIF', 0, NULL, NULL, '2022-03-06 03:49:15', '2022-03-06 03:49:15'),
(8, 'Suprapubic', 0, NULL, NULL, '2022-03-06 03:49:23', '2022-03-06 03:49:23'),
(9, 'LIF', 0, NULL, NULL, '2022-03-06 03:49:32', '2022-03-06 03:49:32');

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

--
-- Dumping data for table `mhp_noses`
--

INSERT INTO `mhp_noses` (`id`, `nose_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Serous', 1, 'single', 0, NULL, NULL, '2022-04-05 00:03:34', '2022-04-05 00:03:34'),
(2, 'Tender Frontal Sinus', 1, 'multiple', 0, NULL, NULL, '2022-04-05 00:03:44', '2022-04-05 00:03:44');

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

--
-- Dumping data for table `mhp_no_masses_masses`
--

INSERT INTO `mhp_no_masses_masses` (`id`, `nomassesmass_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'no mass update', 0, NULL, NULL, '2022-03-02 05:20:11', '2022-03-02 05:20:21');

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

--
-- Dumping data for table `mhp_occipital_lobes`
--

INSERT INTO `mhp_occipital_lobes` (`id`, `OccipitalLobe_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Memory Loss', 0, '2022-04-06 23:48:09', '2022-04-06 23:48:09'),
(2, 'Ataxia', 0, '2022-04-06 23:48:17', '2022-04-06 23:48:17'),
(3, 'Seizures- Flashing Light Aura', 0, '2022-04-06 23:48:30', '2022-04-06 23:48:30');

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

--
-- Dumping data for table `mhp_occupations`
--

INSERT INTO `mhp_occupations` (`id`, `occupation_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Doctor', 0, NULL, NULL, '2022-03-15 22:05:44', '2022-03-15 22:05:44'),
(2, 'BusinessMan', 0, NULL, NULL, '2022-03-15 22:05:53', '2022-03-15 22:05:53');

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

--
-- Dumping data for table `mhp_ol_factories`
--

INSERT INTO `mhp_ol_factories` (`id`, `olfactory_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Coffee', 1, 'single', 0, NULL, NULL, '2022-03-07 22:23:16', '2022-03-07 22:23:16'),
(2, 'Vanila', 1, 'multiple', 0, NULL, NULL, '2022-03-07 22:23:28', '2022-03-07 22:23:28'),
(3, 'Pepermint', 1, 'single', 0, NULL, NULL, '2022-03-07 22:23:40', '2022-03-07 22:23:40');

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

--
-- Dumping data for table `mhp_others`
--

INSERT INTO `mhp_others` (`id`, `others_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Intermittent claudication', 2, 'single', 0, NULL, NULL, '2022-02-20 03:43:42', '2022-02-24 00:45:41'),
(2, 'Ischaemic heart disease risk factor', 1, 'single', 0, NULL, NULL, '2022-02-24 00:46:03', '2022-02-24 00:46:03'),
(3, 'Dyspnea', 1, 'multiple', 0, NULL, NULL, '2022-02-24 00:46:18', '2022-02-24 00:46:18');

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

--
-- Dumping data for table `mhp_others_names`
--

INSERT INTO `mhp_others_names` (`id`, `others_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Both Side', 0, NULL, NULL, '2022-02-09 04:34:04', '2022-02-09 04:34:04'),
(2, 'Left Side', 0, NULL, NULL, '2022-02-09 04:34:14', '2022-02-09 04:34:14'),
(3, 'Right Side', 0, NULL, NULL, '2022-02-09 04:34:23', '2022-02-09 04:34:23');

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

--
-- Dumping data for table `mhp_pain_along_anteriors`
--

INSERT INTO `mhp_pain_along_anteriors` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'test', 0, '2022-04-09 21:39:58', '2022-04-09 21:39:58'),
(2, 'test 2', 0, '2022-04-09 21:40:05', '2022-04-09 21:40:05'),
(3, 'test 3', 0, '2022-04-09 21:40:11', '2022-04-09 21:40:11');

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

--
-- Dumping data for table `mhp_pain_into_knees`
--

INSERT INTO `mhp_pain_into_knees` (`id`, `PainIntoKnee_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'test2', 0, NULL, NULL, '2022-04-09 21:47:23', '2022-04-09 21:47:23'),
(2, 'test1', 0, NULL, NULL, '2022-04-09 21:47:28', '2022-04-09 21:47:28');

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

--
-- Dumping data for table `mhp_pain_over_posteriors`
--

INSERT INTO `mhp_pain_over_posteriors` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'test 1', 0, '2022-04-09 21:42:34', '2022-04-09 21:42:34'),
(2, 'test 2', 0, '2022-04-09 21:42:41', '2022-04-09 21:42:41');

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

--
-- Dumping data for table `mhp_palpations`
--

INSERT INTO `mhp_palpations` (`id`, `Palpation_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Fluctuant', 0, '2022-04-09 23:43:25', '2022-04-09 23:43:25'),
(2, 'Hard', 0, '2022-04-09 23:43:31', '2022-04-09 23:43:31'),
(3, 'Firm', 0, '2022-04-09 23:43:35', '2022-04-09 23:43:35'),
(4, 'Soft', 0, '2022-04-09 23:43:40', '2022-04-09 23:43:40');

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

--
-- Dumping data for table `mhp_papillaryoedemas`
--

INSERT INTO `mhp_papillaryoedemas` (`id`, `papillaryoedema_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Right', 1, 'single', 0, NULL, NULL, '2022-03-08 00:46:22', '2022-03-08 00:46:22'),
(2, 'Left', 1, 'multiple', 0, NULL, NULL, '2022-03-08 00:46:30', '2022-03-08 00:46:30'),
(3, 'Nill', 1, 'single', 0, NULL, NULL, '2022-03-08 00:46:40', '2022-03-08 00:46:40');

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

--
-- Dumping data for table `mhp_parietal_lobes`
--

INSERT INTO `mhp_parietal_lobes` (`id`, `ParietalLobe_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Dysphasia', 0, '2022-03-30 03:56:25', '2022-03-30 03:56:25'),
(2, 'Acalculia', 0, '2022-03-30 03:56:34', '2022-03-30 03:56:34'),
(3, 'Agraphia', 0, '2022-03-30 03:56:41', '2022-03-30 03:56:41'),
(4, 'Finger Agnosia', 0, '2022-03-30 03:56:48', '2022-03-30 03:56:48'),
(5, 'Sensory and Visual Inattention', 0, '2022-03-30 03:56:55', '2022-03-30 03:56:55'),
(6, 'Construction and dressing apraxia', 0, '2022-03-30 03:57:02', '2022-03-30 03:57:02'),
(7, 'Spatial neglect and inattention', 0, '2022-03-30 03:57:07', '2022-03-30 03:57:07'),
(8, 'Lower Quadrant Hemianopia', 0, '2022-03-30 03:57:13', '2022-03-30 03:57:13'),
(9, 'Lower Quadrant Hemianopia', 0, '2022-03-30 03:57:13', '2022-03-30 03:57:13'),
(10, 'Astereognosis', 0, '2022-03-30 03:57:24', '2022-03-30 03:57:24'),
(11, 'Seizures', 0, '2022-03-30 03:57:29', '2022-03-30 03:57:29');

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
  `delete_status` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_patients`
--

INSERT INTO `mhp_patients` (`id`, `patient_hn_number`, `patient_title_id`, `patient_nid`, `patient_bcid`, `ptn_blood_group_id`, `patient_first_name`, `patient_middle_name`, `patient_last_name`, `patient_preferred_name`, `patient_contact_via`, `patient_home_phone`, `patient_work_phone`, `patient_mobile_phone`, `patient_head_of_family`, `patient_emergency_contact`, `patient_dob`, `patient_passport`, `patient_status`, `patient_email`, `patient_birth_sex_id`, `patient_individual_health_identifier_no`, `patient_religion_id`, `patient_usual_provider_id`, `patient_ethnicity_id`, `patient_parent_id`, `patient_address1`, `patient_address2`, `patient_usual_visit_type_id`, `patient_usual_account`, `patient_deceased_date`, `patient_next_of_kin`, `patient_medical_record_no`, `patient_city_id`, `patient_state_id`, `patient_safety_net_no`, `patient_postal_code`, `patient_health_inc_fund`, `patient_health_inc_no`, `patient_expire_date`, `patient_medical_no`, `patient_occupation_id`, `patient_hcc_no`, `patient_images`, `patient_general_notes`, `patient_appointment_notes`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'HN-003', NULL, '1992-110-2220', NULL, '1', 'Md.', 'Sakwat', 'Minar', 'sandy', '1', NULL, NULL, '017927', NULL, NULL, '1993-01-01', NULL, '1', 's@gmail.com', '1', NULL, '1', NULL, NULL, NULL, 'Adabor,Dhaka,Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, '1205', NULL, NULL, NULL, NULL, '2', NULL, '1429454910john.jpg', NULL, NULL, '0', NULL, NULL, '2022-02-09 02:14:10', '2022-04-20 00:57:41'),
(4, 'HN-002', NULL, 'Nid-123444444', NULL, '1', 'Adelaide', 'Jone', 'Doa', 'Adelaide J Loken', '1', '01792796', NULL, '017927', NULL, NULL, '1990-01-01', NULL, '1', 'a@hotmail.com', '1', NULL, '1', NULL, '2', NULL, 'Dhaka 1205,Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '9123649649byden.jpg', NULL, NULL, '0', NULL, NULL, '2022-03-20 21:40:48', '2022-03-22 03:50:23');

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

--
-- Dumping data for table `mhp_patterns`
--

INSERT INTO `mhp_patterns` (`id`, `Pattern_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Dull', 0, NULL, NULL, '2022-03-07 01:04:58', '2022-03-07 01:04:58'),
(2, 'Burning', 0, NULL, NULL, '2022-03-07 01:05:05', '2022-03-07 01:05:05'),
(3, 'Constant', 0, NULL, NULL, '2022-03-07 01:05:13', '2022-03-07 01:05:13'),
(4, 'Colicky', 0, NULL, NULL, '2022-03-07 01:05:20', '2022-03-07 01:05:20');

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

--
-- Dumping data for table `mhp_payments`
--

INSERT INTO `mhp_payments` (`id`, `patient_id`, `payment_type`, `bank_id`, `branch_id`, `check_number`, `card_id`, `card_number`, `digital_id`, `transaction_number`, `amount`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, '1', 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5001', 1, '2022-03-16 05:33:45', '2022-03-20 22:33:31'),
(2, '1', 'Card', NULL, NULL, NULL, '2', '4444521', NULL, NULL, '500', 1, '2022-03-16 05:33:49', '2022-03-20 03:17:36'),
(3, '1', 'Card', NULL, NULL, NULL, '2', '4444521', NULL, NULL, '500', 1, '2022-03-16 05:34:06', '2022-03-20 01:02:00'),
(4, '1', 'Digital Payment', NULL, NULL, NULL, NULL, NULL, '3', '017927', '1000', 1, '2022-03-20 02:41:39', '2022-03-20 03:17:39'),
(5, NULL, 'Card', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2000', 0, '2022-03-20 02:56:26', '2022-03-20 02:56:26'),
(6, NULL, 'Card', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2000', 0, '2022-03-20 02:56:30', '2022-03-20 02:56:30'),
(7, NULL, 'Card', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2000', 0, '2022-03-20 02:56:50', '2022-03-20 02:56:50'),
(8, NULL, 'Digital Payment', NULL, NULL, NULL, NULL, NULL, '3', '2222', '200', 0, '2022-03-20 02:59:07', '2022-03-20 02:59:07'),
(9, NULL, 'Card', NULL, NULL, NULL, '2', NULL, NULL, NULL, '500', 0, '2022-03-20 03:05:45', '2022-03-20 03:05:45'),
(10, NULL, 'Card', NULL, NULL, NULL, '2', NULL, NULL, NULL, '500', 0, '2022-03-20 03:07:35', '2022-03-20 03:07:35'),
(11, NULL, 'Card', NULL, NULL, NULL, '2', NULL, NULL, NULL, '500', 0, '2022-03-20 03:07:41', '2022-03-20 03:07:41'),
(12, NULL, 'Digital Payment', NULL, NULL, NULL, NULL, NULL, '3', '4444', '500', 0, '2022-03-20 03:09:35', '2022-03-20 03:09:35'),
(13, NULL, 'Digital Payment', NULL, NULL, NULL, NULL, NULL, '3', '01555', '500', 0, '2022-03-20 03:13:00', '2022-03-20 03:13:00'),
(14, '1', 'Card', NULL, NULL, NULL, '2', '444', NULL, NULL, '500', 1, '2022-03-20 03:15:56', '2022-03-20 03:17:42'),
(15, '1', 'Digital Payment', NULL, NULL, NULL, NULL, NULL, '1', '01555', '500', 1, '2022-03-20 03:17:15', '2022-03-20 03:49:05'),
(16, '1', 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000', 1, '2022-03-20 03:18:21', '2022-03-20 03:54:13'),
(17, '1', 'Bank', '4', '3', NULL, NULL, NULL, NULL, NULL, '1000', 1, '2022-03-20 03:19:06', '2022-03-20 03:54:35'),
(18, '1', 'Digital Payment', NULL, NULL, NULL, NULL, NULL, '2', NULL, '500', 1, '2022-03-20 03:28:18', '2022-03-20 03:56:24'),
(19, '1', 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5000', 1, '2022-03-20 03:48:36', '2022-03-22 03:25:58'),
(20, '1', 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000', 1, '2022-03-20 03:56:51', '2022-03-20 04:10:36'),
(21, '1', 'Card', NULL, NULL, NULL, '2', NULL, NULL, NULL, '500', 1, '2022-03-20 03:57:39', '2022-03-20 03:57:54'),
(22, '1', 'Bank', '2', '2', NULL, NULL, NULL, NULL, NULL, '1000', 1, '2022-03-20 04:02:39', '2022-03-20 04:06:01'),
(23, '1', 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '200', 1, '2022-03-20 04:04:24', '2022-03-20 04:05:45'),
(24, '1', 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '200', 1, '2022-03-20 04:06:27', '2022-03-20 04:08:50'),
(25, '1', 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000', 1, '2022-03-20 04:37:30', '2022-03-20 04:51:33'),
(26, '1', 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000', 1, '2022-03-20 04:52:36', '2022-03-20 04:52:54'),
(27, '1', 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', 1, '2022-03-20 05:10:50', '2022-03-20 05:10:59'),
(28, '1', 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000', 1, '2022-03-20 05:22:12', '2022-03-20 06:01:49'),
(29, '1', 'Digital Payment', NULL, NULL, NULL, NULL, NULL, '1', '017927', '500', 1, '2022-03-20 05:22:33', '2022-03-20 05:23:28'),
(30, '1', 'Bank', '3', '2', NULL, NULL, NULL, NULL, NULL, '1000', 1, '2022-03-20 05:23:03', '2022-03-20 06:01:23'),
(31, '1', 'Bank', '3', '2', NULL, NULL, NULL, NULL, NULL, '500', 1, '2022-03-20 05:52:38', '2022-03-20 06:01:20'),
(32, '1', 'Bank', '3', '2', NULL, NULL, NULL, NULL, NULL, '500', 1, '2022-03-20 05:56:43', '2022-03-20 06:01:14'),
(33, '1', 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000', 1, '2022-03-20 06:02:00', '2022-03-20 06:03:35'),
(34, '1', 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', 1, '2022-03-20 06:03:26', '2022-03-22 03:26:31'),
(35, '1', 'Card', NULL, NULL, NULL, '2', NULL, NULL, NULL, '1000', 1, '2022-03-20 22:34:40', '2022-03-23 00:24:37'),
(36, '1', 'Digital Payment', NULL, NULL, NULL, NULL, NULL, '1', '0155555', '2000', 1, '2022-03-21 04:41:29', '2022-03-23 00:24:51'),
(37, '1', 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9000', 1, '2022-03-21 04:42:32', '2022-03-21 04:42:41'),
(38, '1', 'Card', NULL, NULL, NULL, '1', '545555555555555555555555555', NULL, NULL, '1000', 1, '2022-03-21 23:53:19', '2022-03-22 03:26:02'),
(39, '4', 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2000', 0, '2022-03-22 01:11:27', '2022-03-22 01:11:27'),
(40, '4', 'Bank', '1', '3', '3', NULL, NULL, NULL, NULL, '66', 1, '2022-03-22 01:21:10', '2022-03-22 05:38:43'),
(41, '4', 'Digital Payment', NULL, NULL, NULL, NULL, NULL, '1', '4', '68', 1, '2022-03-22 01:21:38', '2022-03-22 05:38:51'),
(42, '4', 'Card', NULL, NULL, NULL, '1', NULL, NULL, NULL, '500', 0, '2022-03-22 02:52:33', '2022-03-22 02:52:33'),
(43, '4', 'Bank', '2', '2', '6.54444444444446555e+31', NULL, NULL, NULL, NULL, '500', 1, '2022-03-22 02:53:17', '2022-03-22 05:38:36'),
(44, '1', 'Digital Payment', NULL, NULL, NULL, NULL, NULL, '1', '01999999999999999999999999999', '5000', 1, '2022-03-22 05:45:05', '2022-03-22 05:48:26'),
(45, '1', 'Card', NULL, NULL, NULL, '2', NULL, NULL, NULL, '2000', 1, '2022-03-22 05:51:11', '2022-03-23 00:25:03'),
(46, '1', 'Bank', '2', '1', NULL, NULL, NULL, NULL, NULL, '1000', 1, '2022-03-22 05:51:58', '2022-03-23 00:26:05'),
(47, '1', 'Bank', '4', '3', NULL, NULL, NULL, NULL, NULL, '4998', 0, '2022-03-22 05:53:11', '2022-03-22 05:53:11'),
(48, '1', 'Digital Payment', NULL, NULL, NULL, NULL, NULL, '2', '5444444444444444444444', '100000000000000000000000000', 1, '2022-03-22 06:16:55', '2022-03-22 06:19:34'),
(49, '1', 'Digital Payment', NULL, NULL, NULL, NULL, NULL, '1', '44444444444444444444444444', '555555555555555555555555555555', 1, '2022-03-23 00:27:16', '2022-03-23 00:27:44'),
(50, '1', 'Digital Payment', NULL, NULL, NULL, NULL, NULL, '1', '017777777', '1000', 0, '2022-03-23 00:47:25', '2022-03-23 00:47:25'),
(51, '1', 'Card', NULL, NULL, NULL, '2', NULL, NULL, NULL, '500', 0, '2022-03-26 22:42:54', '2022-03-26 22:42:54');

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

--
-- Dumping data for table `mhp_pelvic_masses`
--

INSERT INTO `mhp_pelvic_masses` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Tender', 0, '2022-04-16 03:05:16', '2022-04-16 03:05:16'),
(2, 'Left Sided', 0, '2022-04-16 03:05:21', '2022-04-16 03:05:21'),
(3, 'Right Sided', 0, '2022-04-16 03:05:26', '2022-04-16 03:05:26'),
(4, 'Central', 0, '2022-04-16 03:05:32', '2022-04-16 03:05:32');

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

--
-- Dumping data for table `mhp_pembertons`
--

INSERT INTO `mhp_pembertons` (`id`, `pembertons_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Negative', 1, 'single', 0, NULL, NULL, '2022-02-20 04:26:13', '2022-03-02 01:16:59'),
(2, 'Positive', 2, 'single', 0, NULL, NULL, '2022-02-20 04:27:07', '2022-03-02 01:16:48');

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

--
-- Dumping data for table `mhp_pen_grips`
--

INSERT INTO `mhp_pen_grips` (`id`, `PenGrip_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Thumb Clasp', 0, NULL, NULL, '2022-03-29 03:20:19', '2022-03-29 03:20:19'),
(2, 'Support Hand', 0, NULL, NULL, '2022-03-29 03:20:30', '2022-03-29 03:20:30'),
(3, 'TILT', 0, NULL, NULL, '2022-03-29 03:20:39', '2022-03-29 03:20:39');

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

--
-- Dumping data for table `mhp_pen_grip_rights`
--

INSERT INTO `mhp_pen_grip_rights` (`id`, `PenGripRight_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Head', 0, '2022-03-29 03:21:06', '2022-03-29 03:21:06'),
(2, 'Body', 0, '2022-03-29 03:21:15', '2022-03-29 03:21:15'),
(3, 'Legs Cross', 0, '2022-03-29 03:21:27', '2022-03-29 03:21:27');

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

--
-- Dumping data for table `mhp_per_rectals`
--

INSERT INTO `mhp_per_rectals` (`id`, `perrectal_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Normal', 0, NULL, NULL, '2022-03-06 03:10:02', '2022-03-06 03:10:02'),
(2, 'Skin tags', 0, NULL, NULL, '2022-03-06 03:10:12', '2022-03-06 03:10:12'),
(3, 'Thick white skin', 0, NULL, NULL, '2022-03-06 03:10:23', '2022-03-06 03:10:23'),
(4, 'Piles', 0, NULL, NULL, '2022-03-06 03:10:36', '2022-03-06 03:10:36');

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

--
-- Dumping data for table `mhp_phoria_ones`
--

INSERT INTO `mhp_phoria_ones` (`id`, `PhoriaOne_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Exophoria', 0, '2022-03-28 04:03:40', '2022-03-28 04:03:40'),
(2, 'Esophoria', 0, '2022-03-28 04:03:48', '2022-03-28 04:03:48'),
(3, 'Orthophoria', 0, '2022-03-28 04:04:01', '2022-03-28 04:04:01');

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

--
-- Dumping data for table `mhp_phoria_twos`
--

INSERT INTO `mhp_phoria_twos` (`id`, `PhoriaTwo_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Alternating', 0, '2022-03-28 04:12:50', '2022-03-28 04:12:50'),
(2, 'Intermittent', 0, '2022-03-28 04:12:58', '2022-03-28 04:12:58'),
(3, 'Constant', 0, '2022-03-28 04:13:07', '2022-03-28 04:13:07');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_physical_activity_advice`
--

CREATE TABLE `mhp_physical_activity_advice` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance__training__ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flexibility__exercise__ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moderate__intensity__exercise__ternary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endurance__value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frequency__value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previews__date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_physical_activity_advice`
--

INSERT INTO `mhp_physical_activity_advice` (`id`, `patient_id`, `balance__training__ternary`, `flexibility__exercise__ternary`, `moderate__intensity__exercise__ternary`, `endurance__value`, `frequency__value`, `previews__date`, `created_at`, `updated_at`) VALUES
(1, NULL, '1', '1', '1', NULL, NULL, '2022-04-21', '2022-04-22 23:44:45', '2022-04-22 23:44:45'),
(2, '1', '0', '0', '0', NULL, NULL, NULL, '2022-04-22 23:50:52', '2022-04-22 23:50:52'),
(3, '1', '0', '0', '0', NULL, NULL, NULL, '2022-04-22 23:51:06', '2022-04-22 23:51:06'),
(4, '1', '0', '0', '0', NULL, NULL, NULL, '2022-04-22 23:51:07', '2022-04-22 23:51:07'),
(5, NULL, '0', '0', '0', NULL, NULL, NULL, '2022-04-23 21:18:59', '2022-04-23 21:18:59'),
(6, '1', '0', '0', '0', NULL, NULL, NULL, '2022-04-27 00:48:36', '2022-04-27 00:48:36');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_physical_activity_aerobic_exercises`
--

CREATE TABLE `mhp_physical_activity_aerobic_exercises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `physical_activity_advice_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aerobicExercise_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_physical_activity_endurances`
--

CREATE TABLE `mhp_physical_activity_endurances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `physical_activity_advice_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endurance_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_physical_activity_strength_buildings`
--

CREATE TABLE `mhp_physical_activity_strength_buildings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `physical_activity_advice_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `strengthBuilding_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

--
-- Dumping data for table `mhp_posteriors`
--

INSERT INTO `mhp_posteriors` (`id`, `posterior_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Enlarged', 1, 'single', 0, NULL, NULL, '2022-04-04 23:42:01', '2022-04-04 23:42:01'),
(2, 'Enlarged', 1, 'multiple', 0, NULL, NULL, '2022-04-04 23:42:15', '2022-04-04 23:42:15');

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

--
-- Dumping data for table `mhp_postures`
--

INSERT INTO `mhp_postures` (`id`, `Posture_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Straight', 0, NULL, NULL, '2022-03-29 03:46:13', '2022-03-29 03:46:13'),
(2, 'Support Hand', 0, NULL, NULL, '2022-03-29 03:46:22', '2022-03-29 03:46:22');

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

--
-- Dumping data for table `mhp_posture_thoracos`
--

INSERT INTO `mhp_posture_thoracos` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'test1', 0, '2022-04-09 21:43:32', '2022-04-09 21:43:32'),
(2, 'test2', 0, '2022-04-09 21:43:37', '2022-04-09 21:43:37');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_prescriptions`
--

CREATE TABLE `mhp_prescriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicen_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prescription_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prescription_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_prescriptions`
--

INSERT INTO `mhp_prescriptions` (`id`, `patient_id`, `doctor_id`, `medicen_id`, `prescription_no`, `prescription_date`, `created_at`, `updated_at`) VALUES
(6, '1', '1', '31', 'prescription_April 26th 2022, 12:10:22 pm', 'April 26th 2022, 12:10:22 pm', '2022-04-26 00:10:23', '2022-04-26 00:10:23'),
(7, '1', '1', '30', 'prescription_April 26th 2022, 12:10:22 pm', 'April 26th 2022, 12:10:22 pm', '2022-04-26 00:10:23', '2022-04-26 00:10:23'),
(8, '1', '1', '24', 'prescription_April 26th 2022, 12:10:22 pm', 'April 26th 2022, 12:10:22 pm', '2022-04-26 00:10:23', '2022-04-26 00:10:23'),
(9, '1', '1', '31', 'prescription_April 26th 2022, 12:33:20 pm', 'April 26th 2022, 12:33:20 pm', '2022-04-26 00:33:21', '2022-04-26 00:33:21'),
(10, '1', '1', '30', 'prescription_April 26th 2022, 12:33:20 pm', 'April 26th 2022, 12:33:20 pm', '2022-04-26 00:33:21', '2022-04-26 00:33:21'),
(11, '1', '1', '24', 'prescription_April 26th 2022, 12:33:20 pm', 'April 26th 2022, 12:33:20 pm', '2022-04-26 00:33:21', '2022-04-26 00:33:21'),
(12, '1', '1', '31', 'prescription_April 26th 2022, 12:33:32 pm', 'April 26th 2022, 12:33:32 pm', '2022-04-26 00:33:33', '2022-04-26 00:33:33'),
(13, '1', '1', '30', 'prescription_April 26th 2022, 12:33:32 pm', 'April 26th 2022, 12:33:32 pm', '2022-04-26 00:33:33', '2022-04-26 00:33:33'),
(14, '1', '1', '26', 'prescription_April 26th 2022, 12:33:32 pm', 'April 26th 2022, 12:33:32 pm', '2022-04-26 00:33:33', '2022-04-26 00:33:33'),
(15, '1', '1', '24', 'prescription_April 26th 2022, 12:33:32 pm', 'April 26th 2022, 12:33:32 pm', '2022-04-26 00:33:33', '2022-04-26 00:33:33'),
(16, '1', '1', '31', 'prescription_April 26th 2022, 12:34:03 pm', 'April 26th 2022, 12:34:03 pm', '2022-04-26 00:34:05', '2022-04-26 00:34:05'),
(17, '1', '1', '30', 'prescription_April 26th 2022, 12:34:03 pm', 'April 26th 2022, 12:34:03 pm', '2022-04-26 00:34:05', '2022-04-26 00:34:05'),
(18, '1', '1', '20', 'prescription_April 26th 2022, 12:34:03 pm', 'April 26th 2022, 12:34:03 pm', '2022-04-26 00:34:05', '2022-04-26 00:34:05'),
(19, '1', '1', '17', 'prescription_April 26th 2022, 12:34:03 pm', 'April 26th 2022, 12:34:03 pm', '2022-04-26 00:34:05', '2022-04-26 00:34:05'),
(20, '1', '1', '9', 'prescription_April 26th 2022, 12:34:03 pm', 'April 26th 2022, 12:34:03 pm', '2022-04-26 00:34:06', '2022-04-26 00:34:06'),
(21, '4', '1', '19', 'prescription_April 27th 2022, 11:48:53 am', 'April 27th 2022, 11:48:53 am', '2022-04-26 23:48:53', '2022-04-26 23:48:53'),
(22, '4', '1', '18', 'prescription_April 27th 2022, 11:48:53 am', 'April 27th 2022, 11:48:53 am', '2022-04-26 23:48:54', '2022-04-26 23:48:54'),
(23, '4', '1', '19', 'prescription_April 27th 2022, 11:49:40 am', 'April 27th 2022, 11:49:40 am', '2022-04-26 23:49:41', '2022-04-26 23:49:41'),
(24, '4', '1', '18', 'prescription_April 27th 2022, 11:49:40 am', 'April 27th 2022, 11:49:40 am', '2022-04-26 23:49:41', '2022-04-26 23:49:41'),
(25, '4', '1', '16', 'prescription_April 27th 2022, 11:49:40 am', 'April 27th 2022, 11:49:40 am', '2022-04-26 23:49:41', '2022-04-26 23:49:41'),
(26, '4', '1', '14', 'prescription_April 27th 2022, 11:49:40 am', 'April 27th 2022, 11:49:40 am', '2022-04-26 23:49:41', '2022-04-26 23:49:41'),
(27, '4', '1', '18', 'prescription_April 27th 2022, 11:50:00 am', 'April 27th 2022, 11:50:00 am', '2022-04-26 23:50:01', '2022-04-26 23:50:01'),
(28, '4', '1', '16', 'prescription_April 27th 2022, 11:50:00 am', 'April 27th 2022, 11:50:00 am', '2022-04-26 23:50:01', '2022-04-26 23:50:01'),
(29, '1', '1', '32', 'prescription_May 11th 2022, 4:17:21 pm', 'May 11th 2022, 4:17:21 pm', '2022-05-11 04:17:22', '2022-05-11 04:17:22'),
(30, '1', '1', '31', 'prescription_May 11th 2022, 4:17:21 pm', 'May 11th 2022, 4:17:21 pm', '2022-05-11 04:17:22', '2022-05-11 04:17:22'),
(31, '1', '1', '32', 'prescription_May 11th 2022, 4:17:42 pm', 'May 11th 2022, 4:17:42 pm', '2022-05-11 04:17:43', '2022-05-11 04:17:43'),
(32, '1', '1', '31', 'prescription_May 11th 2022, 4:17:42 pm', 'May 11th 2022, 4:17:42 pm', '2022-05-11 04:17:44', '2022-05-11 04:17:44'),
(33, '1', '1', '30', 'prescription_May 11th 2022, 4:17:42 pm', 'May 11th 2022, 4:17:42 pm', '2022-05-11 04:17:44', '2022-05-11 04:17:44'),
(34, '1', '1', '32', 'prescription_May 11th 2022, 4:17:58 pm', 'May 11th 2022, 4:17:58 pm', '2022-05-11 04:17:59', '2022-05-11 04:17:59'),
(35, '1', '1', '31', 'prescription_May 11th 2022, 4:17:58 pm', 'May 11th 2022, 4:17:58 pm', '2022-05-11 04:17:59', '2022-05-11 04:17:59'),
(36, '1', '1', '30', 'prescription_May 11th 2022, 4:17:58 pm', 'May 11th 2022, 4:17:58 pm', '2022-05-11 04:17:59', '2022-05-11 04:17:59'),
(37, '1', '1', '32', 'prescription_May 11th 2022, 4:18:46 pm', 'May 11th 2022, 4:18:46 pm', '2022-05-11 04:18:47', '2022-05-11 04:18:47'),
(38, '1', '1', '31', 'prescription_May 11th 2022, 4:18:46 pm', 'May 11th 2022, 4:18:46 pm', '2022-05-11 04:18:48', '2022-05-11 04:18:48'),
(39, '1', '1', '30', 'prescription_May 11th 2022, 4:18:46 pm', 'May 11th 2022, 4:18:46 pm', '2022-05-11 04:18:48', '2022-05-11 04:18:48');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_prescriptions_lists`
--

CREATE TABLE `mhp_prescriptions_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prescription_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_prescriptions_lists`
--

INSERT INTO `mhp_prescriptions_lists` (`id`, `patient_id`, `prescription_name`, `date`, `created_at`, `updated_at`) VALUES
(1, '1', 'prescription_April 26th 2022, 12:10:22 pm', 'April 26th 2022, 12:10:22 pm', '2022-04-26 00:10:23', '2022-04-26 00:10:23'),
(2, '1', 'prescription_April 26th 2022, 12:33:20 pm', 'April 26th 2022, 12:33:20 pm', '2022-04-26 00:33:21', '2022-04-26 00:33:21'),
(3, '1', 'prescription_April 26th 2022, 12:33:32 pm', 'April 26th 2022, 12:33:32 pm', '2022-04-26 00:33:32', '2022-04-26 00:33:32'),
(4, '1', 'prescription_April 26th 2022, 12:34:03 pm', 'April 26th 2022, 12:34:03 pm', '2022-04-26 00:34:04', '2022-04-26 00:34:04'),
(5, '4', 'prescription_April 27th 2022, 11:48:53 am', 'April 27th 2022, 11:48:53 am', '2022-04-26 23:48:53', '2022-04-26 23:48:53'),
(6, '4', 'prescription_April 27th 2022, 11:49:40 am', 'April 27th 2022, 11:49:40 am', '2022-04-26 23:49:41', '2022-04-26 23:49:41'),
(7, '4', 'prescription_April 27th 2022, 11:50:00 am', 'April 27th 2022, 11:50:00 am', '2022-04-26 23:50:01', '2022-04-26 23:50:01'),
(8, NULL, 'prescription_May 10th 2022, 12:16:51 pm', 'May 10th 2022, 12:16:51 pm', '2022-05-10 00:16:51', '2022-05-10 00:16:51'),
(9, '1', 'prescription_May 11th 2022, 4:17:21 pm', 'May 11th 2022, 4:17:21 pm', '2022-05-11 04:17:21', '2022-05-11 04:17:21'),
(10, '1', 'prescription_May 11th 2022, 4:17:42 pm', 'May 11th 2022, 4:17:42 pm', '2022-05-11 04:17:43', '2022-05-11 04:17:43'),
(11, '1', 'prescription_May 11th 2022, 4:17:58 pm', 'May 11th 2022, 4:17:58 pm', '2022-05-11 04:17:59', '2022-05-11 04:17:59'),
(12, '1', 'prescription_May 11th 2022, 4:18:46 pm', 'May 11th 2022, 4:18:46 pm', '2022-05-11 04:18:47', '2022-05-11 04:18:47');

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

--
-- Dumping data for table `mhp_procedures`
--

INSERT INTO `mhp_procedures` (`id`, `procedure_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'XR', 0, '2022-03-01 04:26:47', '2022-03-01 04:26:47'),
(2, 'SVG', 0, '2022-03-01 04:26:57', '2022-03-14 22:47:59'),
(3, 'Blood Test', 0, '2022-03-01 04:27:03', '2022-03-14 22:47:07');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_procedure_fees`
--

CREATE TABLE `mhp_procedure_fees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `procedure_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subProcedure_name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee_name` int(11) DEFAULT NULL,
  `item_code` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_procedure_fees`
--

INSERT INTO `mhp_procedure_fees` (`id`, `procedure_id`, `subProcedure_name`, `fee_name`, `item_code`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, '2', 'AA', 555, 'Item-104', 0, '2022-03-01 04:27:18', '2022-03-16 05:54:05'),
(2, '3', 'B', 625, 'Item-103', 0, '2022-03-01 04:27:26', '2022-03-16 05:18:46'),
(3, '1', 'ABC', 125, 'Item-101', 0, '2022-03-01 04:27:34', '2022-03-10 03:23:47'),
(4, '3', 'X', 200, 'Item-108', 0, '2022-03-16 05:52:27', '2022-03-16 05:52:27'),
(5, '3', 'Y', 400, 'Item-109', 0, '2022-03-16 05:52:44', '2022-03-16 05:52:44'),
(6, '3', 'Q', 600, 'Item-110', 0, '2022-03-16 05:53:06', '2022-03-16 05:53:06'),
(7, '1', 'XW', 100, 'Item-111', 0, '2022-03-16 05:54:31', '2022-03-16 05:54:31');

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

--
-- Dumping data for table `mhp_proximal_interphalangeal_joints`
--

INSERT INTO `mhp_proximal_interphalangeal_joints` (`id`, `ProximalInterphalangealJoint_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'test 1', 0, NULL, NULL, '2022-05-11 04:13:14', '2022-05-11 04:13:14');

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

--
-- Dumping data for table `mhp_pupils`
--

INSERT INTO `mhp_pupils` (`id`, `pupil_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'PERRLA', 1, 'single', 0, NULL, NULL, '2022-03-08 00:58:29', '2022-03-08 00:58:29'),
(2, 'RAPD +', 1, 'multiple', 0, NULL, NULL, '2022-03-08 00:58:40', '2022-03-08 00:58:40'),
(3, 'RAPD -', 1, 'single', 0, NULL, NULL, '2022-03-08 00:58:53', '2022-03-08 00:58:53');

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

--
-- Dumping data for table `mhp_pursuits`
--

INSERT INTO `mhp_pursuits` (`id`, `Pursuits_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Jerky', 0, '2022-03-28 04:24:53', '2022-03-28 04:24:53'),
(2, 'Smooth', 0, '2022-03-28 04:25:02', '2022-03-28 04:25:02');

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

--
-- Dumping data for table `mhp_p_h_q9_questionnaires`
--

INSERT INTO `mhp_p_h_q9_questionnaires` (`id`, `PHQ9Questionnaire_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Thoughts that you would be better off dead, or of hurting yoursalf in some way', 0, '2022-04-03 01:25:15', '2022-04-03 01:25:15'),
(2, 'Moving or speaking so slowly that other people could have noticed ? Or the opposite, heing so fidgety or restless that you have been moving around a lot more than usual', 0, '2022-04-03 01:27:01', '2022-04-03 01:27:01'),
(3, 'Trouble concentrating on things, such as reading the newspaper or watching television', 0, '2022-04-03 01:27:10', '2022-04-03 01:27:10'),
(4, 'Feeling bad about yoursalf, or that you are a failure, or that you have let yourself or family down', 0, '2022-04-03 01:27:20', '2022-04-03 01:27:20'),
(5, 'Feeling tired or having little energy', 0, '2022-04-03 01:27:28', '2022-04-03 01:27:28'),
(6, 'Poor appetite or overeating', 0, '2022-04-03 01:27:38', '2022-04-03 01:27:38'),
(7, 'Trouble falling or staying asleep, o sleeping too much', 0, '2022-04-03 01:27:54', '2022-04-03 01:27:54'),
(8, 'Feeling down, depressed, or hopeless', 0, '2022-04-03 01:28:03', '2022-04-03 01:28:03'),
(9, 'Little interest on pleasure on doing things', 0, '2022-04-03 01:28:11', '2022-04-03 01:28:11');

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

--
-- Dumping data for table `mhp_p_h_q9_questionnaire_values`
--

INSERT INTO `mhp_p_h_q9_questionnaire_values` (`id`, `PHQ9QuestionnaireValue_name`, `PHQ9QuestionnaireValue_value`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, '3- Nearly every days', 3, 0, '2022-04-03 02:22:42', '2022-04-03 02:22:42'),
(2, '2- More than half the days', 2, 0, '2022-04-03 02:22:54', '2022-04-03 02:22:54'),
(3, '1- Several days', 1, 0, '2022-04-03 02:23:05', '2022-04-03 02:23:05');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_p_i_p_joints`
--

CREATE TABLE `mhp_p_i_p_joints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

--
-- Dumping data for table `mhp_p_r_bleeds`
--

INSERT INTO `mhp_p_r_bleeds` (`id`, `PRBleed_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Blood in toilet tissues', 0, NULL, NULL, '2022-03-07 04:44:34', '2022-03-07 04:44:34'),
(2, 'Blood in toilet bowel', 0, NULL, NULL, '2022-03-07 04:44:43', '2022-03-07 04:44:43'),
(3, 'Blood mixed with stool', 0, NULL, NULL, '2022-03-07 04:44:51', '2022-03-07 04:44:51'),
(4, 'Malena', 0, NULL, NULL, '2022-03-07 04:44:59', '2022-03-07 04:44:59');

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

--
-- Dumping data for table `mhp_p_v_bleedings`
--

INSERT INTO `mhp_p_v_bleedings` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Oligomenorrhea', 0, '2022-04-16 00:41:23', '2022-04-16 00:41:23'),
(2, 'Intermenstrual bleeding', 0, '2022-04-16 00:41:29', '2022-04-16 00:41:29'),
(3, 'Heavy menstrual bleeding', 0, '2022-04-16 00:41:35', '2022-04-16 00:41:35');

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

--
-- Dumping data for table `mhp_p_v_discharges`
--

INSERT INTO `mhp_p_v_discharges` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'White', 0, '2022-04-16 00:42:51', '2022-04-16 00:42:51'),
(2, 'Foul smelling', 0, '2022-04-16 00:43:00', '2022-04-16 00:43:00'),
(3, 'Fishy smelling', 0, '2022-04-16 00:43:05', '2022-04-16 00:43:05');

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

--
-- Dumping data for table `mhp_questionnaires`
--

INSERT INTO `mhp_questionnaires` (`id`, `questionnaire_name`, `questionnaire_description`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Snoring', 'Do you Snore Loudly (loud enough to be heard through closed doors or your bed-partner elbows you for snoring at night) ?', 0, NULL, NULL, '2022-03-02 03:34:18', '2022-03-02 04:41:44'),
(2, 'Tired', 'Do you Snore Loudly (loud enough to be heard through closed doors or your bed-partner elbows you for snoring at night) ?', 0, NULL, NULL, '2022-03-02 04:46:54', '2022-03-02 04:46:54'),
(3, 'Observed', 'Do you often feel Tired, Fatigued, or Sleepy during the day time (such as falling asleep during driving or talking to someone) ?', 0, NULL, NULL, '2022-03-02 04:49:23', '2022-03-02 04:49:23'),
(4, 'Pressure', 'Do you often feel Tired, Fatigued, or Sleepy during the day time (such as falling asleep during driving or talking to someone) ?', 0, NULL, NULL, '2022-03-02 04:49:44', '2022-03-02 04:49:44'),
(5, 'Others', 'Body Mass Index more than 35 kg/m2 ?', 0, NULL, NULL, '2022-03-02 04:50:00', '2022-03-02 04:50:00');

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

--
-- Dumping data for table `mhp_radiations`
--

INSERT INTO `mhp_radiations` (`id`, `Radiation_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'To back', 0, NULL, NULL, '2022-03-07 01:00:45', '2022-03-07 01:00:45'),
(2, 'Loin to groin', 0, NULL, NULL, '2022-03-07 01:00:54', '2022-03-07 01:00:54'),
(3, 'Periumbilical to RIF', 0, NULL, NULL, '2022-03-07 01:01:04', '2022-03-07 01:01:04'),
(4, 'Shift to RUQ', 0, NULL, NULL, '2022-03-07 01:01:12', '2022-03-07 01:01:12');

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
  `test_name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_test_name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

--
-- Dumping data for table `mhp_radiology_centers`
--

INSERT INTO `mhp_radiology_centers` (`id`, `radiology_center_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'test 1', 0, '2022-04-13 05:33:14', '2022-04-13 05:33:14'),
(2, 'test 2', 0, '2022-04-13 05:33:19', '2022-04-13 05:33:19');

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

--
-- Dumping data for table `mhp_radiology_test_names`
--

INSERT INTO `mhp_radiology_test_names` (`id`, `radiology_test_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'test 1', 0, '2022-04-13 05:33:30', '2022-04-13 05:33:30'),
(2, 'test 2', 0, '2022-04-13 05:33:36', '2022-04-13 05:33:36');

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

--
-- Dumping data for table `mhp_rediations`
--

INSERT INTO `mhp_rediations` (`id`, `rediation_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'asdasda updated', 2, 'multiple', 1, NULL, NULL, '2022-02-20 01:05:34', '2022-02-20 01:06:12'),
(2, 'Carotid', 1, 'single', 0, NULL, NULL, '2022-02-20 01:06:17', '2022-02-24 00:25:03'),
(3, 'Axilla', 1, 'single', 0, NULL, NULL, '2022-02-24 00:25:19', '2022-02-24 00:25:19'),
(4, 'Apex', 1, 'multiple', 0, NULL, NULL, '2022-02-24 00:25:33', '2022-02-24 00:25:33');

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
(1, 'Islam', 0, NULL, NULL, '2022-02-09 06:43:25', '2022-02-09 06:43:25');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_reminder_reasons`
--

CREATE TABLE `mhp_reminder_reasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reason_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhp_reminder_reasons`
--

INSERT INTO `mhp_reminder_reasons` (`id`, `reason_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'test 1', 0, '2022-04-23 21:16:10', '2022-04-23 21:16:10'),
(2, 'test 2', 0, '2022-04-23 21:16:14', '2022-04-23 21:16:26');

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

--
-- Dumping data for table `mhp_renne_tests`
--

INSERT INTO `mhp_renne_tests` (`id`, `RenneTest_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'AC > BC', 0, '2022-04-04 23:53:58', '2022-04-04 23:53:58'),
(2, 'BC > AC', 0, '2022-04-04 23:54:05', '2022-04-04 23:54:05');

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

--
-- Dumping data for table `mhp_resisted_movements`
--

INSERT INTO `mhp_resisted_movements` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'test1', 0, '2022-05-11 04:10:22', '2022-05-11 04:10:22');

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

--
-- Dumping data for table `mhp_respiratories`
--

INSERT INTO `mhp_respiratories` (`id`, `patient_id`, `cough`, `dyspneaName`, `dyspneaClass`, `symptoms`, `medicalHistory`, `abnormalBreathing`, `vocal`, `breathSound`, `chestExpansion`, `criptationLeft`, `criptationRight`, `criptationBoth`, `criptationCondition`, `wheezingLeft`, `wheezingRight`, `wheezingBoth`, `wheezingCondition`, `vocalResonance`, `Pembortons_sign`, `Sleep_Apnoea_Risk`, `Date`, `Age`, `Height`, `Sex`, `PFR_1st`, `FEV1_1st`, `FVC_1st`, `Predicted_1st_1`, `Predicted_1st_2`, `Predicted_1st_3`, `Percentage_Predicted_1st_1`, `Percentage_Predicted_1st_2`, `Percentage_Predicted_1st_3`, `Percentage_FEV1orFVC_1st`, `PFR_2st`, `FEV1_2st`, `FVC_2st`, `Predicted_2st_1`, `Predicted_2st_2`, `Predicted_2st_3`, `Percentage_Predicted_2st_1`, `Percentage_Predicted_2st_2`, `Percentage_Predicted_2st_3`, `Percentage_FEV1orFVC_2st`, `Res_Rate`, `Peak_Flow`, `Insipiration`, `Expiration`, `Stop_Bang_Questionaria`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Husky Cough', 'Progressive', 'Class III', NULL, 'COPD', 'Paradoxical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, '10', '10', NULL, '10', '10', NULL, NULL, NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, '10', '10', NULL, NULL, '2022-03-05 05:32:14', '2022-03-05 05:32:14'),
(2, NULL, 'Husky Cough', 'Progressive', 'Class III', 'Disruptive Sleep', 'COPD', 'Paradoxical', 'Reduced', 'Bronchial', 'expresion two', NULL, NULL, NULL, NULL, 'Left Middle', 'Right Lower', 'Both Middle', 'Medium', 'Normal Right', NULL, 'Type II Diabetes', '2022-03-23', '10', '10', '10', '10', '10', '10', '01', '010', '10', '01', '01', '01', NULL, '10', '10', '10', '010', '101', '0', '010', NULL, '10', NULL, '010', '10', '10', '0101', '0110', '2022-03-05 05:37:25', '2022-03-05 05:37:25'),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, '10', NULL, '10', '01', '01', '01', NULL, '01', '01', NULL, '10', '01', '01', NULL, '01', '01', NULL, '10', '01', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-05 22:37:15', '2022-03-05 22:37:15'),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, '10', NULL, '10', '01', '01', '01', NULL, '01', '01', NULL, '10', '01', '01', NULL, '01', '01', NULL, '10', '01', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-05 22:44:19', '2022-03-05 22:44:19'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, '10', NULL, '10', '01', '01', '01', NULL, '01', '01', NULL, '10', '01', '01', NULL, '01', '01', NULL, '10', '01', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-05 22:45:07', '2022-03-05 22:45:07'),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, '10', NULL, '01', '01', '01', '01', '01', '010', '0101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-05 22:47:40', '2022-03-05 22:47:40'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, '10', NULL, '01', '01', '01', '01', '01', '010', '0101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-05 22:48:16', '2022-03-05 22:48:16'),
(8, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-05 22:49:40', '2022-03-05 22:49:40'),
(9, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-05 22:52:28', '2022-03-05 22:52:28'),
(10, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-05 22:53:14', '2022-03-05 22:53:14'),
(11, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-05 22:55:23', '2022-03-05 22:55:23'),
(12, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-05 23:50:02', '2022-03-05 23:50:02'),
(13, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-06 00:00:16', '2022-03-06 00:00:16'),
(14, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-06 00:00:55', '2022-03-06 00:00:55'),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-28 22:20:05', '2022-03-28 22:20:05');

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

--
-- Dumping data for table `mhp_respiratory_examination_lists`
--

INSERT INTO `mhp_respiratory_examination_lists` (`id`, `patient_id`, `respiratory_id`, `examination_list_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '1', '12', '6', 'false', '2022-03-05 23:50:02', '2022-03-05 23:50:02'),
(2, '1', '12', '7', 'true', '2022-03-05 23:50:03', '2022-03-05 23:50:03'),
(3, '1', '12', '8', 'true', '2022-03-05 23:50:03', '2022-03-05 23:50:03'),
(4, '1', '13', '6', 'false', '2022-03-06 00:00:17', '2022-03-06 00:00:17'),
(5, '1', '13', '7', 'true', '2022-03-06 00:00:17', '2022-03-06 00:00:17'),
(6, '1', '13', '8', 'true', '2022-03-06 00:00:17', '2022-03-06 00:00:17'),
(7, '1', '14', '6', 'false', '2022-03-06 00:00:56', '2022-03-06 00:00:56'),
(8, '1', '14', '7', 'true', '2022-03-06 00:00:56', '2022-03-06 00:00:56'),
(9, '1', '14', '8', 'true', '2022-03-06 00:00:56', '2022-03-06 00:00:56');

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

--
-- Dumping data for table `mhp_respiratory_histories`
--

INSERT INTO `mhp_respiratory_histories` (`id`, `patient_id`, `respiratory_id`, `history_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '1', '11', '19', 'true', '2022-03-05 22:55:24', '2022-03-05 22:55:24'),
(2, '1', '11', '20', 'true', '2022-03-05 22:55:24', '2022-03-05 22:55:24'),
(3, '1', '11', '21', 'true', '2022-03-05 22:55:24', '2022-03-05 22:55:24'),
(4, '1', '12', '19', 'true', '2022-03-05 23:50:02', '2022-03-05 23:50:02'),
(5, '1', '12', '20', 'true', '2022-03-05 23:50:02', '2022-03-05 23:50:02'),
(6, '1', '12', '21', 'true', '2022-03-05 23:50:02', '2022-03-05 23:50:02'),
(7, '1', '13', '19', 'true', '2022-03-06 00:00:16', '2022-03-06 00:00:16'),
(8, '1', '13', '20', 'true', '2022-03-06 00:00:17', '2022-03-06 00:00:17'),
(9, '1', '13', '21', 'true', '2022-03-06 00:00:17', '2022-03-06 00:00:17'),
(10, '1', '14', '19', 'true', '2022-03-06 00:00:55', '2022-03-06 00:00:55'),
(11, '1', '14', '20', 'true', '2022-03-06 00:00:56', '2022-03-06 00:00:56'),
(12, '1', '14', '21', 'true', '2022-03-06 00:00:56', '2022-03-06 00:00:56');

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

--
-- Dumping data for table `mhp_respiratory_questionnaires`
--

INSERT INTO `mhp_respiratory_questionnaires` (`id`, `patient_id`, `respiratory_id`, `questionnaire_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '1', '14', '1', 'false', '2022-03-06 00:00:56', '2022-03-06 00:00:56'),
(2, '1', '14', '3', 'true', '2022-03-06 00:00:56', '2022-03-06 00:00:56'),
(3, '1', '14', '5', 'true', '2022-03-06 00:00:57', '2022-03-06 00:00:57');

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
(1, 'a', 0, '2022-04-18 03:52:40', '2022-04-18 03:52:40');

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

--
-- Dumping data for table `mhp_route_names`
--

INSERT INTO `mhp_route_names` (`id`, `route_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Injection', 0, NULL, NULL, '2022-02-09 04:36:12', '2022-02-09 04:36:12'),
(2, 'Oral', 0, NULL, NULL, '2022-02-09 04:36:24', '2022-02-09 04:36:24');

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

--
-- Dumping data for table `mhp_rxes`
--

INSERT INTO `mhp_rxes` (`id`, `patient_id`, `drug_id`, `drug_name`, `drug_generic_name`, `dose`, `frequency`, `food`, `others`, `route`, `tabs_inistraction`, `Complex_instruction`, `extra_instruction`, `drugsTimeLimit`, `prescribedAs`, `general_note`, `pbs_listing`, `quantity`, `repeats`, `condition`, `further_details`, `iSAllergyCheck`, `is_FVDose`, `is_Regulation`, `is_print_brand_name`, `is_print_generic_name`, `is_urgent_supply`, `is_allow_brand_substitution`, `is_save_dose`, `is_condition_status_right`, `is_condition_status_left`, `is_condition_status_bilateral`, `is_condition_status_acute`, `is_condition_status_chronic`, `is_condition_status_mild`, `is_condition_status_moderate`, `is_condition_status_severe`, `is_add_to_past_history`, `is_add_to_reason_for_visit`, `is_mark_as_confidential`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, NULL, '11', 'Jaknib 5 mg', 'Tofacitinib', '2.5 ml', 'In the Evening', '-', '-', '-', NULL, NULL, NULL, 'Long term medication', 'PBS', 'Medication started by patient', 'hfgh', NULL, '12', 'Diabetes Cycle of care completion', 'hjghj', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-04-17 02:27:51', '2022-04-17 02:27:51'),
(2, NULL, '11', 'Jaknib 5 mg', 'Tofacitinib', '2.5 ml', 'In the Evening', '-', '-', '-', NULL, NULL, NULL, NULL, NULL, 'Medication started in hospital', NULL, NULL, NULL, 'Diabetes Clinic', 'zxcvvxxcv', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-04-17 02:30:39', '2022-04-17 02:30:39'),
(3, NULL, '11', 'Jaknib 5 mg', 'Tofacitinib', '1/2', 'In the Morning', 'With Meal', '-', '-', NULL, NULL, NULL, NULL, NULL, 'Medication started in hospital', NULL, NULL, '10', 'Diabetes Cycle of care completion', 'fsgfd', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, '2022-04-17 03:00:41', '2022-04-17 03:00:41'),
(4, NULL, '11', 'Jaknib 5 mg', 'Tofacitinib', '2.5 ml', 'In the Evening', '-', '-', '-', NULL, NULL, NULL, 'Long term medication', NULL, 'Medication started by patient', NULL, NULL, '12', 'Diabetes Cycle of care completion', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2022-04-17 21:09:35', '2022-04-17 21:09:35'),
(5, NULL, '12', 'metformin hydrochloride 1000mg - sitagliptin 50mg Oral Tablet', 'Metformin Hydrochloride + Sitagliptin', '1/2', 'Daily', 'After Meal', 'Left Side', 'Oral', 'Number of tabs per day', NULL, NULL, 'Long term medication', 'PBS', 'Medication started in hospital', NULL, NULL, '10', 'Diabetes Cycle of care completion', 'sdfgdfg', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-04-17 21:11:32', '2022-04-17 21:11:32'),
(6, NULL, '13', 'Janmet XR 50/500 Tablet', 'Metformin Hydrochloride + Sitagliptin', '1/2', 'In the Evening', 'After Meal', 'Left Side', 'Oral', 'Number of tabs per day', 'nbc', 'nmn', 'One time only', 'PBS', 'Medication started by patient', NULL, NULL, '10', 'Diabetes Cycle of care completion', 'bvcnv', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, '2022-04-17 21:12:56', '2022-04-17 21:12:56'),
(7, NULL, '15', 'Jardimet 5/500', 'Empagliflozin + Metformin Hydrochloride', '2.5 ml', 'At Night', 'With Meal', '-', '-', NULL, NULL, NULL, 'Long term medication', 'PBS', 'Medication started by patient', NULL, '001', '110', 'Diabetes Cycle of care completion', 'sfdgsdfg', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, '2022-04-17 21:18:38', '2022-04-17 21:18:38'),
(8, '1', '11', 'Jaknib 5 mg', 'Tofacitinib', '2.5 ml', 'In the Evening', '-', '-', '-', 'Number of tabs per day', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-04-17 21:50:55', '2022-04-17 21:50:55'),
(9, '1', '11', 'Jaknib 5 mg', 'Tofacitinib', '2.5 ml', 'In the Morning', '-', '-', '-', 'Number of tabs per day', NULL, NULL, 'Long term medication', NULL, 'Medication started by patient', 'gh', NULL, NULL, 'Diabetes Cycle of care completion', NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, '2022-04-17 22:07:50', '2022-04-17 22:07:50'),
(10, '1', '11', 'Jaknib 5 mg', 'Tofacitinib', '-', '-', '-', '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-04-17 22:13:38', '2022-04-17 22:13:38'),
(11, '1', '11', 'Jaknib 5 mg', 'Tofacitinib', '-', '-', '-', '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-04-17 22:13:51', '2022-04-17 22:13:51'),
(12, '1', '11', 'Jaknib 5 mg', 'Tofacitinib', '-', '-', '-', '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-04-17 22:20:06', '2022-04-17 22:20:06'),
(13, NULL, '12', 'metformin hydrochloride 1000mg - sitagliptin 50mg Oral Tablet', 'Metformin Hydrochloride + Sitagliptin', '-', '-', '-', '-', '-', NULL, NULL, NULL, 'Long term medication', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-04-17 22:54:01', '2022-04-17 22:54:01'),
(14, '4', '12', 'metformin hydrochloride 1000mg - sitagliptin 50mg Oral Tablet', 'Metformin Hydrochloride + Sitagliptin', '1/2', '-', 'After Meal', 'Left Side', '-', 'Number of tabs per day', '10', NULL, 'Long term medication', 'PBS', 'Medication started by patient', 'fdg', NULL, '10', 'Diabetes Clinic', 'fgdhfh', 0, 1, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-04-17 23:01:35', '2022-04-17 23:01:35'),
(15, '4', '12', 'metformin hydrochloride 1000mg - sitagliptin 50mg Oral Tablet', 'Metformin Hydrochloride + Sitagliptin', '1/2', '-', 'After Meal', 'Left Side', 'Oral', 'No complance checking', '10', NULL, 'Long term medication', 'PBS', 'Medication started in hospital', 'fdg', NULL, '10', 'Diabetes Clinic', 'fads', 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2022-04-17 23:17:01', '2022-04-17 23:17:01'),
(16, '4', '14', 'Janvia 100', 'Sitagliptin', '1/2', 'At Night', 'Before Meal', 'Left Side', 'Oral', 'Number of tabs per day', 'ccc', 'eee', 'Long term medication', 'PBS', 'Medication started by patient', 'vcb', NULL, '2', 'Diabetes Cycle of care completion', 'fsda', 0, 1, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '2022-04-17 23:36:26', '2022-04-17 23:36:26'),
(17, '1', '14', 'Janvia 100', 'Sitagliptin', '1/2', 'In the Evening', '-', '-', '-', NULL, NULL, NULL, 'One time only', 'Private', 'Medication started in hospital', NULL, NULL, NULL, 'Diabetes Clinic', NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-04-18 00:03:48', '2022-04-18 00:03:48'),
(18, '4', '11', 'Jaknib 5 mg', 'Tofacitinib', '1/2', 'In the Evening', '-', '-', '-', NULL, NULL, NULL, 'Long term medication', 'PBS', 'Medication started in hospital', NULL, '10', '1', 'Diabetes Cycle of care completion', 'kjhjk', 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-04-18 00:16:37', '2022-04-18 00:16:37'),
(19, '4', '11', 'Jaknib 5 mg', 'Tofacitinib', '2.5 ml', 'In the Morning', 'Before Meal', 'Left Side', 'Oral', NULL, NULL, NULL, 'Long term medication', 'PBS', 'Medication started by patient', NULL, '10', '2', 'Diabetes Cycle of care completion', 'fdasfaf', 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-04-18 00:32:22', '2022-04-18 00:32:22'),
(20, '1', '12', 'metformin hydrochloride 1000mg - sitagliptin 50mg Oral Tablet', 'Metformin Hydrochloride + Sitagliptin', '2.5 ml', 'In the Morning', '-', 'Left Side', '-', NULL, NULL, NULL, NULL, 'Private', 'Medication started by patient', NULL, '10', '10', 'Diabetes Cycle of care completion', 'hgjhg', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-04-19 00:42:04', '2022-04-19 00:42:04'),
(21, '1', '15', 'Jardimet 5/500', 'Empagliflozin + Metformin Hydrochloride', '1/2', 'In the Morning', 'After Meal', 'Left Side', '-', NULL, NULL, NULL, 'One time only', 'PBS', 'Medication started in hospital', 'asf', '10', '2', 'Diabetes Cycle of care completion', 'sfdasf', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-04-20 00:39:01', '2022-04-20 00:39:01'),
(22, '1', '11', 'Jaknib 5 mg', 'Tofacitinib', '2.5 ml', 'At Night', 'With Meal', '-', '-', NULL, NULL, NULL, 'One time only', 'PBS', 'Medication started in hospital', NULL, '10', '10', 'Diabetes Cycle of care completion', NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-04-20 00:46:38', '2022-04-20 00:46:38'),
(23, '1', '11', 'Jaknib 5 mg', 'Tofacitinib', '2.5 ml', 'At Night', 'With Meal', '-', '-', NULL, NULL, NULL, 'One time only', 'PBS', 'Medication started in hospital', NULL, '10', '10', 'Diabetes Cycle of care completion', NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-04-20 00:47:33', '2022-04-20 00:47:33'),
(24, '1', '11', 'Jaknib 5 mg', 'Tofacitinib', '2.5 ml', 'At Night', 'With Meal', '-', '-', NULL, NULL, NULL, 'One time only', 'PBS', 'Medication started in hospital', NULL, '10', '10', 'Diabetes Cycle of care completion', NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-04-20 00:48:17', '2022-04-20 00:48:17'),
(25, '1', '13', 'Janmet XR 50/500 Tablet', 'Metformin Hydrochloride + Sitagliptin', '1/2', 'At Night', 'With Meal', '-', '-', NULL, NULL, NULL, NULL, 'PBS', 'Medication started in hospital', 'fgfsfdg', '10', '2', 'Diabetes Cycle of care completion', 'gfsdg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-04-20 00:50:32', '2022-04-20 00:50:32'),
(26, '1', '11', 'Jaknib 5 mg', 'Tofacitinib', '2.5 ml', 'In the Evening', 'Before Meal', 'Left Side', '-', NULL, NULL, NULL, NULL, 'PBS', 'Medication started in hospital', 'fgfsfdg', '10', '01', 'Diabetes Cycle of care completion', 'gfsdg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-04-20 00:51:39', '2022-04-20 00:51:39'),
(27, '4', '5', 'Fepanil-500', 'Paracetamol', '1/2', 'In the Evening', 'After Meal', '-', '-', 'Compliance checking', NULL, NULL, NULL, 'PBS', 'Medication started by patient', NULL, '10', '10', 'Diabetes Cycle of care completion', NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-04-20 02:18:43', '2022-04-20 02:18:43'),
(28, '4', '4', 'Pacimol 500mg', 'Paracetamol', '2.5 ml', 'In the Evening', 'After Meal', '-', '-', 'Compliance checking', NULL, NULL, NULL, 'PBS', 'Medication started in hospital', NULL, '10', '01', 'Diabetes Cycle of care completion', 'fdsaf', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-04-20 02:20:03', '2022-04-20 02:20:03'),
(29, NULL, '15', 'Jardimet 5/500', 'Empagliflozin + Metformin Hydrochloride', '1/2', 'In the Evening', 'With Meal', '-', '-', NULL, NULL, NULL, 'Long term medication', 'PBS', NULL, 'cxzvxc', '10', '3', 'Diabetes Cycle of care completion', 'zvxcxcv', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-04-21 00:58:26', '2022-04-21 00:58:26'),
(30, '1', '15', 'Jardimet 5/500', 'Empagliflozin + Metformin Hydrochloride', '1/2', 'At Night', 'With Meal', 'Right Side', 'Oral', 'Number of tabs per day', NULL, NULL, 'Long term medication', 'PBS', 'Medication started by patient', 'klj', '10', '3', 'Diabetes Cycle of care completion', 'gfdhhdh', 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '2022-04-21 00:59:41', '2022-04-21 00:59:41'),
(31, '1', '12', 'metformin hydrochloride 1000mg - sitagliptin 50mg Oral Tablet', 'Metformin Hydrochloride + Sitagliptin', '2.5 ml', 'In the Evening', 'With Meal', '-', '-', 'Number of tabs per day', 'xsdaf', 'dfsa', 'One time only', 'PBS', 'Medication started by patient', 'xcvb', '10', '02', 'Diabetes Cycle of care completion', 'hgjgh', 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-04-24 22:19:16', '2022-04-24 22:19:16'),
(32, '1', '15', 'Jardimet 5/500', 'Empagliflozin + Metformin Hydrochloride', '1/2', 'At Night', 'With Meal', 'Right Side', '-', NULL, NULL, NULL, 'Long term medication', 'PBS', NULL, NULL, '10', '2', 'Diabetes Clinic', NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-05-11 04:17:03', '2022-05-11 04:17:03');

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

--
-- Dumping data for table `mhp_s1_to_s4_tests`
--

INSERT INTO `mhp_s1_to_s4_tests` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'test1', 0, '2022-05-11 04:10:11', '2022-05-11 04:10:11');

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

--
-- Dumping data for table `mhp_scores`
--

INSERT INTO `mhp_scores` (`id`, `Score_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '2 to 3 min', 0, NULL, NULL, '2022-03-07 04:17:33', '2022-03-07 04:17:33'),
(2, '5 to 10 min', 0, NULL, NULL, '2022-03-07 04:17:51', '2022-03-07 04:17:51');

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

--
-- Dumping data for table `mhp_shapes`
--

INSERT INTO `mhp_shapes` (`id`, `Shape_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Round', 0, '2022-03-28 04:19:11', '2022-03-28 04:19:11'),
(2, 'Log', 0, '2022-03-28 04:19:19', '2022-03-28 04:19:19');

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

--
-- Dumping data for table `mhp_shape_and_contours`
--

INSERT INTO `mhp_shape_and_contours` (`id`, `ShapeAndContour_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'test 1', 0, NULL, NULL, '2022-05-11 04:11:43', '2022-05-11 04:11:43');

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

--
-- Dumping data for table `mhp_sigmoidoscopies`
--

INSERT INTO `mhp_sigmoidoscopies` (`id`, `sigmoidoscopy_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Carcinoma', 0, NULL, NULL, '2022-03-06 04:32:04', '2022-03-06 04:32:04'),
(2, 'Polyps', 0, NULL, NULL, '2022-03-06 04:32:13', '2022-03-06 04:32:13'),
(3, 'Blood Present', 0, NULL, NULL, '2022-03-06 04:32:22', '2022-03-06 04:32:22'),
(4, 'Normal', 0, NULL, NULL, '2022-03-06 04:32:32', '2022-03-06 04:32:32');

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

--
-- Dumping data for table `mhp_sites`
--

INSERT INTO `mhp_sites` (`id`, `Site_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'RUQ', 0, NULL, NULL, '2022-03-07 00:51:05', '2022-03-07 00:51:05'),
(2, 'Epigastric', 0, NULL, NULL, '2022-03-07 00:51:13', '2022-03-07 00:51:13'),
(3, 'LUQ', 0, NULL, NULL, '2022-03-07 00:51:21', '2022-03-07 00:51:21'),
(4, 'Right lumber', 0, NULL, NULL, '2022-03-07 00:51:29', '2022-03-07 00:51:29');

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

--
-- Dumping data for table `mhp_skins`
--

INSERT INTO `mhp_skins` (`id`, `skin_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Pigmented Macules', 0, NULL, NULL, '2022-03-02 05:19:17', '2022-03-06 00:24:13'),
(2, 'skin 1', 1, NULL, NULL, '2022-03-02 05:19:33', '2022-03-02 05:19:41'),
(3, 'Jaundice', 0, NULL, NULL, '2022-03-06 00:24:44', '2022-03-06 00:24:44'),
(4, 'Generalised pigmentation', 0, NULL, NULL, '2022-03-06 00:24:53', '2022-03-06 00:24:53'),
(5, 'Flushing', 0, NULL, NULL, '2022-03-06 00:25:01', '2022-03-06 00:25:01'),
(6, 'Brushing', 0, NULL, NULL, '2022-03-06 00:25:11', '2022-03-06 00:25:11'),
(7, 'Acanthosis sigricans', 0, NULL, NULL, '2022-03-06 00:25:22', '2022-03-06 00:25:22'),
(8, 'Vesicles', 0, NULL, NULL, '2022-03-06 00:25:31', '2022-03-06 00:25:31'),
(9, 'Erythema nodosum', 0, NULL, NULL, '2022-03-06 00:25:40', '2022-03-06 00:25:40'),
(10, 'Pyoderma gangrenosum', 0, NULL, NULL, '2022-03-06 00:26:01', '2022-03-06 00:26:01'),
(11, 'Telangiectases', 0, NULL, NULL, '2022-03-06 00:26:11', '2022-03-06 00:26:11'),
(12, 'Petechiae', 0, NULL, NULL, '2022-03-06 00:26:22', '2022-03-06 00:26:22');

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

--
-- Dumping data for table `mhp_skin_examinations`
--

INSERT INTO `mhp_skin_examinations` (`id`, `patient_id`, `acute`, `chronic`, `duration`, `stable`, `growing`, `site`, `neck`, `scapula`, `upperBack`, `lowerBack`, `chestUpper`, `chestLower`, `arm`, `forearm`, `hand`, `finger`, `interdigital`, `nail`, `areolar`, `mammary`, `abdomen`, `umbilical`, `inguinal`, `groin`, `buttock`, `perineal`, `thigh`, `leg`, `knee`, `foot`, `interdigitalSpace`, `size1`, `size2`, `shape`, `color`, `palpation`, `temparature`, `arrangements`, `created_at`, `updated_at`) VALUES
(1, NULL, '1', '1', '1000-10-10', '1', '1', 'Right', 'Back', '1', '1', '0', '0', '0', 'Front', NULL, NULL, '0', '1', '1', 'UQO', '1', '1', '1', '1', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, '10', '10', 'Oval', 'Green', 'Hard', 'Hot', 'Herpetiform', '2022-04-11 00:03:49', '2022-04-11 00:03:49'),
(2, NULL, '1', '1', '1000-10-10', '1', '1', 'Right', 'Back', '1', '1', '0', '0', '0', 'Front', NULL, NULL, '0', '1', '1', 'UQO', '1', '1', '1', '1', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, '10', '10', 'Oval', 'Green', 'Hard', 'Hot', 'Herpetiform', '2022-04-11 00:06:25', '2022-04-11 00:06:25'),
(3, NULL, '0', '0', NULL, '0', '0', NULL, NULL, '0', '0', '0', '0', '0', NULL, NULL, NULL, '0', '0', '0', NULL, '0', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-13 00:27:11', '2022-04-13 00:27:11'),
(4, NULL, '0', '0', NULL, '0', '0', NULL, NULL, '0', '0', '0', '0', '0', NULL, NULL, NULL, '0', '0', '0', NULL, '0', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-13 02:25:16', '2022-04-13 02:25:16'),
(5, NULL, '0', '0', NULL, '0', '0', NULL, NULL, '0', '0', '0', '0', '0', NULL, NULL, NULL, '0', '0', '0', NULL, '0', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-13 02:29:31', '2022-04-13 02:29:31'),
(6, NULL, '0', '0', NULL, '0', '0', NULL, NULL, '0', '0', '0', '0', '0', NULL, NULL, NULL, '0', '0', '0', NULL, '0', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-13 02:33:41', '2022-04-13 02:33:41'),
(7, NULL, '0', '0', NULL, '0', '0', NULL, NULL, '0', '0', '0', '0', '0', NULL, NULL, NULL, '0', '0', '0', NULL, '0', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-13 02:35:12', '2022-04-13 02:35:12'),
(8, NULL, '0', '0', NULL, '0', '0', NULL, NULL, '0', '0', '0', '0', '0', NULL, NULL, NULL, '0', '0', '0', NULL, '0', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-13 02:35:37', '2022-04-13 02:35:37'),
(9, '1', '0', '0', NULL, '0', '0', NULL, NULL, '0', '0', '0', '0', '0', NULL, NULL, NULL, '0', '0', '0', NULL, '0', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-13 02:57:38', '2022-04-13 02:57:38'),
(10, '1', '0', '0', NULL, '0', '0', NULL, NULL, '0', '0', '0', '0', '0', NULL, NULL, NULL, '0', '0', '0', NULL, '0', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-13 03:14:50', '2022-04-13 03:14:50'),
(11, '1', '0', '0', NULL, '0', '0', NULL, NULL, '0', '0', '0', '0', '0', NULL, NULL, NULL, '0', '0', '0', NULL, '0', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-13 03:33:55', '2022-04-13 03:33:55'),
(12, '1', '0', '0', NULL, '0', '0', NULL, NULL, '0', '0', '0', '0', '0', NULL, NULL, NULL, '0', '0', '0', NULL, '0', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-13 03:35:06', '2022-04-13 03:35:06'),
(13, '1', '0', '0', NULL, '0', '0', NULL, NULL, '0', '0', '0', '0', '0', NULL, NULL, NULL, '0', '0', '0', NULL, '0', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-13 04:14:18', '2022-04-13 04:14:18');

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

--
-- Dumping data for table `mhp_skin_exami_histories`
--

INSERT INTO `mhp_skin_exami_histories` (`id`, `patient_id`, `skin_exami_id`, `history_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '1', '8', '107', 'true', '2022-04-13 02:35:38', '2022-04-13 02:35:38'),
(2, '1', '8', '108', 'true', '2022-04-13 02:35:38', '2022-04-13 02:35:38'),
(3, '1', '8', '109', 'true', '2022-04-13 02:35:38', '2022-04-13 02:35:38'),
(4, '1', '9', '108', 'true', '2022-04-13 02:57:39', '2022-04-13 02:57:39'),
(5, '1', '9', '109', 'true', '2022-04-13 02:57:39', '2022-04-13 02:57:39'),
(6, '1', '10', '108', 'true', '2022-04-13 03:14:50', '2022-04-13 03:14:50'),
(7, '1', '10', '109', 'true', '2022-04-13 03:14:50', '2022-04-13 03:14:50'),
(8, '1', '11', '108', 'true', '2022-04-13 03:33:56', '2022-04-13 03:33:56'),
(9, '1', '11', '109', 'true', '2022-04-13 03:33:56', '2022-04-13 03:33:56'),
(10, '1', '12', '108', 'true', '2022-04-13 03:35:06', '2022-04-13 03:35:06'),
(11, '1', '12', '109', 'true', '2022-04-13 03:35:06', '2022-04-13 03:35:06'),
(12, '1', '13', '108', 'true', '2022-04-13 04:14:18', '2022-04-13 04:14:18'),
(13, '1', '13', '109', 'true', '2022-04-13 04:14:19', '2022-04-13 04:14:19');

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

--
-- Dumping data for table `mhp_skin_exami_types`
--

INSERT INTO `mhp_skin_exami_types` (`id`, `patient_id`, `skin_exami_id`, `type_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '1', '9', '8', 'true', '2022-04-13 02:57:39', '2022-04-13 02:57:39'),
(2, '1', '9', '9', 'true', '2022-04-13 02:57:39', '2022-04-13 02:57:39'),
(3, '1', '10', '8', 'true', '2022-04-13 03:14:50', '2022-04-13 03:14:50'),
(4, '1', '10', '9', 'true', '2022-04-13 03:14:50', '2022-04-13 03:14:50'),
(5, '1', '11', '8', 'true', '2022-04-13 03:33:56', '2022-04-13 03:33:56'),
(6, '1', '11', '9', 'true', '2022-04-13 03:33:56', '2022-04-13 03:33:56'),
(7, '1', '12', '8', 'true', '2022-04-13 03:35:07', '2022-04-13 03:35:07'),
(8, '1', '12', '9', 'true', '2022-04-13 03:35:07', '2022-04-13 03:35:07'),
(9, '1', '13', '8', 'true', '2022-04-13 04:14:19', '2022-04-13 04:14:19'),
(10, '1', '13', '9', 'true', '2022-04-13 04:14:19', '2022-04-13 04:14:19');

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

--
-- Dumping data for table `mhp_skin_exmi_images`
--

INSERT INTO `mhp_skin_exmi_images` (`id`, `patient_id`, `skin_exami_id`, `bodyPart_name`, `image`, `created_at`, `updated_at`) VALUES
(1, '1', '13', 'Head', '9046554910john.jpg', '2022-04-13 04:14:19', '2022-04-13 04:14:19'),
(2, '1', '13', 'Head', '17613chest-anatomy-artwork-D65NNP.jpg', '2022-04-13 04:14:20', '2022-04-13 04:14:20');

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

--
-- Dumping data for table `mhp_skin_exmi_symtoms`
--

INSERT INTO `mhp_skin_exmi_symtoms` (`id`, `patient_id`, `skin_exami_id`, `bodyPart_name`, `symptom_id`, `created_at`, `updated_at`) VALUES
(1, '1', '13', 'Head', '3', '2022-04-13 04:14:19', '2022-04-13 04:14:19'),
(2, '1', '13', 'Head', '2', '2022-04-13 04:14:20', '2022-04-13 04:14:20');

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

--
-- Dumping data for table `mhp_skin_shapes`
--

INSERT INTO `mhp_skin_shapes` (`id`, `SkinShape_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Umbilicated', 0, '2022-04-09 23:27:54', '2022-04-09 23:27:54'),
(2, 'Serpiginous', 0, '2022-04-09 23:27:59', '2022-04-09 23:27:59'),
(3, 'Polygonal Annular', 0, '2022-04-09 23:28:05', '2022-04-09 23:28:05'),
(4, 'Polygonal', 0, '2022-04-09 23:28:10', '2022-04-09 23:28:10'),
(5, 'Polygonal', 0, '2022-04-09 23:28:29', '2022-04-09 23:28:29'),
(6, 'Oval', 0, '2022-04-09 23:28:37', '2022-04-09 23:28:37'),
(7, 'Round', 0, '2022-04-09 23:28:48', '2022-04-09 23:28:48');

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

--
-- Dumping data for table `mhp_skin_symptoms`
--

INSERT INTO `mhp_skin_symptoms` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Cellulitis', 0, '2022-04-10 03:49:00', '2022-04-13 02:14:14'),
(2, 'Psoriasis', 0, '2022-04-13 02:14:24', '2022-04-13 02:14:24'),
(3, 'Eczema', 0, '2022-04-13 02:14:33', '2022-04-13 02:14:33'),
(4, 'Latex allergy', 0, '2022-04-13 02:14:42', '2022-04-13 02:14:42');

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

--
-- Dumping data for table `mhp_skin_types`
--

INSERT INTO `mhp_skin_types` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Wheal', 0, '2022-04-13 00:50:35', '2022-04-13 00:50:35'),
(2, 'Vesicle', 0, '2022-04-13 00:50:41', '2022-04-13 00:50:41'),
(3, 'Ulcer', 0, '2022-04-13 00:50:45', '2022-04-13 00:50:45'),
(4, 'Sclerosis', 0, '2022-04-13 00:50:50', '2022-04-13 00:50:50'),
(5, 'Scale', 0, '2022-04-13 00:50:56', '2022-04-13 00:50:56'),
(6, 'Pustule', 0, '2022-04-13 00:51:02', '2022-04-13 00:51:02'),
(7, 'Papule', 0, '2022-04-13 00:51:09', '2022-04-13 00:51:09'),
(8, 'Crust', 0, '2022-04-13 00:51:16', '2022-04-13 00:51:16'),
(9, 'Atrophy', 0, '2022-04-13 00:51:24', '2022-04-13 00:51:24');

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

--
-- Dumping data for table `mhp_sleep_apnoea_risks`
--

INSERT INTO `mhp_sleep_apnoea_risks` (`id`, `sleepapnoearisk_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Hypertension', 0, NULL, NULL, '2022-03-03 00:33:49', '2022-03-03 00:33:49'),
(2, 'Cardiac Failure', 0, NULL, NULL, '2022-03-03 00:33:58', '2022-03-03 00:33:58'),
(3, 'Type II Diabetes', 0, NULL, NULL, '2022-03-03 00:34:08', '2022-03-03 00:34:08');

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

--
-- Dumping data for table `mhp_speech_nurologies`
--

INSERT INTO `mhp_speech_nurologies` (`id`, `SpeechNurologies_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Dysphasia', 0, '2022-04-06 23:30:07', '2022-04-06 23:30:07'),
(2, 'Conductive', 0, '2022-04-06 23:30:12', '2022-04-06 23:30:12'),
(3, 'Nominal Dysphasia', 0, '2022-04-06 23:30:18', '2022-04-06 23:30:18'),
(4, 'Expressive (anterior) Dysphasia', 0, '2022-04-06 23:30:25', '2022-04-06 23:30:25'),
(5, 'Receptive (posterior) Dysphasia', 0, '2022-04-06 23:30:31', '2022-04-06 23:30:31'),
(6, 'Free Speech', 0, '2022-04-06 23:30:40', '2022-04-06 23:30:40');

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

--
-- Dumping data for table `mhp_spines`
--

INSERT INTO `mhp_spines` (`id`, `Spine_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'test2', 0, NULL, NULL, '2022-04-09 21:46:57', '2022-04-09 21:46:57'),
(2, 'test1', 0, NULL, NULL, '2022-04-09 21:47:05', '2022-04-09 21:47:05');

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

--
-- Dumping data for table `mhp_states`
--

INSERT INTO `mhp_states` (`id`, `state_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 0, NULL, NULL, '2022-03-15 22:06:53', '2022-03-15 22:06:53');

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

--
-- Dumping data for table `mhp_statuses`
--

INSERT INTO `mhp_statuses` (`id`, `status_name`, `color`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Active', '#3F3E91', 0, '2022-02-17 00:09:01', '2022-02-17 00:09:01'),
(2, 'In Active', '#644c4c', 0, '2022-02-17 00:09:14', '2022-02-17 00:09:14');

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

--
-- Dumping data for table `mhp_stool_types`
--

INSERT INTO `mhp_stool_types` (`id`, `StoolType_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Type 1- Separate hard lump- Severe Constipation', 0, NULL, NULL, '2022-03-07 04:39:30', '2022-03-07 04:39:37'),
(2, 'Type 2- Lumpy and sausage like- Mild Constipation', 0, NULL, NULL, '2022-03-07 04:39:52', '2022-03-07 04:39:52'),
(3, 'Type 3- A sausage shape with cracks in the surface- Normal', 0, NULL, NULL, '2022-03-07 04:40:01', '2022-03-07 04:40:01'),
(4, 'Type 4- Like a smooth, soft sausage or snake- Normal', 0, NULL, NULL, '2022-03-07 04:40:09', '2022-03-07 04:40:09'),
(5, 'Type 5- Soft bolbs with clear- cut edges- Lacking Fibre', 0, NULL, NULL, '2022-03-07 04:40:21', '2022-03-07 04:40:21'),
(6, 'Type 6- Mushy consistancy with ragged edge- Mild Diarrhea', 0, NULL, NULL, '2022-03-07 04:40:29', '2022-03-07 04:40:29'),
(7, 'Type 7- Liquid consistancy with no solid pieces- Severe Diarrhea', 0, NULL, NULL, '2022-03-07 04:40:47', '2022-03-07 04:40:47');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_strength_buildings`
--

CREATE TABLE `mhp_strength_buildings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
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

--
-- Dumping data for table `mhp_sub_body_parts`
--

INSERT INTO `mhp_sub_body_parts` (`id`, `SubBodyPart_name`, `MainBodyPart_id`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Eye', 1, 0, '2022-03-13 23:54:38', '2022-03-13 23:54:38'),
(2, 'ear', 1, 0, '2022-03-20 06:17:43', '2022-03-20 06:17:43'),
(3, 'nose', NULL, 0, '2022-03-20 06:17:48', '2022-03-20 06:17:48'),
(4, 'vx', 2, 0, '2022-03-22 01:05:32', '2022-03-22 01:05:32'),
(5, 'vgnv', 2, 0, '2022-03-22 01:06:07', '2022-03-22 01:06:07');

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

--
-- Dumping data for table `mhp_sudden_anaesthesias`
--

INSERT INTO `mhp_sudden_anaesthesias` (`id`, `SuddenAnaesthesia_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'test1', 0, NULL, NULL, '2022-04-09 21:45:30', '2022-04-09 21:45:30'),
(2, 'test2', 0, NULL, NULL, '2022-04-09 21:45:41', '2022-04-09 21:45:47');

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

--
-- Dumping data for table `mhp_swollen_eye_lids`
--

INSERT INTO `mhp_swollen_eye_lids` (`id`, `SwollenEyeLid_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Upper', 0, NULL, NULL, '2022-03-13 23:38:57', '2022-03-13 23:38:57'),
(2, 'Lower', 0, NULL, NULL, '2022-03-13 23:39:07', '2022-03-13 23:39:07');

-- --------------------------------------------------------

--
-- Table structure for table `mhp_symptoms_anatomies`
--

CREATE TABLE `mhp_symptoms_anatomies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `SymptomsAnatomy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MainBodyPart_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SubBodyPartId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `GenderId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
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

--
-- Dumping data for table `mhp_symptom_anatomies`
--

INSERT INTO `mhp_symptom_anatomies` (`id`, `main_body_part_id`, `sub_body_part_id`, `side_selection_name`, `gender_id`, `symptom_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 'up', '1', 'Headec', 0, '2022-03-21 03:58:31', '2022-03-21 03:58:31'),
(2, '2', '4', 'down', '2', 'ml', 0, '2022-03-22 01:05:51', '2022-03-22 01:05:51');

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

--
-- Dumping data for table `mhp_temparatures`
--

INSERT INTO `mhp_temparatures` (`id`, `Temparature_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Hot', 0, '2022-04-09 23:52:03', '2022-04-09 23:52:03'),
(2, 'Cold', 0, '2022-04-09 23:52:09', '2022-04-09 23:52:09');

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

--
-- Dumping data for table `mhp_temporal_lobes`
--

INSERT INTO `mhp_temporal_lobes` (`id`, `TemporalLobe_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Seizures', 0, '2022-04-06 23:46:08', '2022-04-06 23:46:08'),
(2, 'Dysphasia', 0, '2022-04-06 23:46:13', '2022-04-06 23:46:13'),
(3, 'Upper Quadrantic Hemianopia', 0, '2022-04-06 23:46:20', '2022-04-06 23:46:20'),
(4, 'Memory Loss', 0, '2022-04-06 23:46:26', '2022-04-06 23:46:26');

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

--
-- Dumping data for table `mhp_tenderness_over_facet_l_r_b_thoracos`
--

INSERT INTO `mhp_tenderness_over_facet_l_r_b_thoracos` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Both', 0, '2022-04-09 00:45:33', '2022-04-09 00:45:33'),
(2, 'Left', 0, '2022-04-09 00:45:40', '2022-04-09 00:45:40'),
(3, 'Right', 0, '2022-04-09 00:45:47', '2022-04-09 00:45:47');

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

--
-- Dumping data for table `mhp_tenderness_over_facet_thoracos`
--

INSERT INTO `mhp_tenderness_over_facet_thoracos` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'test1', 0, '2022-04-09 21:44:05', '2022-04-09 21:44:05'),
(2, 'test2', 0, '2022-04-09 21:44:09', '2022-04-09 21:44:09');

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

--
-- Dumping data for table `mhp_tender_over_spinus_process_ats`
--

INSERT INTO `mhp_tender_over_spinus_process_ats` (`id`, `TenderOverSpinusProcessAt_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'C8', 0, NULL, NULL, '2022-04-09 00:42:46', '2022-04-09 00:42:46'),
(2, 'C7', 0, NULL, NULL, '2022-04-09 00:42:55', '2022-04-09 00:42:55'),
(3, 'C6', 0, NULL, NULL, '2022-04-09 00:43:00', '2022-04-09 00:43:00'),
(4, 'C5', 0, NULL, NULL, '2022-04-09 00:43:04', '2022-04-09 00:43:04'),
(5, 'C4', 0, NULL, NULL, '2022-04-09 00:43:08', '2022-04-09 00:43:08'),
(6, 'C3', 0, NULL, NULL, '2022-04-09 00:43:11', '2022-04-09 00:43:11'),
(7, 'C2', 0, NULL, NULL, '2022-04-09 00:43:15', '2022-04-09 00:43:15'),
(8, 'C1', 0, NULL, NULL, '2022-04-09 00:43:22', '2022-04-09 00:43:22');

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

--
-- Dumping data for table `mhp_tender_over_spinus_thoracos`
--

INSERT INTO `mhp_tender_over_spinus_thoracos` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'test2', 0, '2022-04-09 21:43:48', '2022-04-09 21:43:48'),
(2, 'test1', 0, '2022-04-09 21:43:54', '2022-04-09 21:43:54');

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

--
-- Dumping data for table `mhp_tender_tenerness_over_l1_to_l6_thoracos`
--

INSERT INTO `mhp_tender_tenerness_over_l1_to_l6_thoracos` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'test1', 0, '2022-04-09 21:44:22', '2022-04-09 21:44:22'),
(2, 'test1', 0, '2022-04-09 21:44:32', '2022-04-09 21:44:32');

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

--
-- Dumping data for table `mhp_tenerness_over_facet_joins`
--

INSERT INTO `mhp_tenerness_over_facet_joins` (`id`, `TenernessOverFacetJoin_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Both', 1, NULL, NULL, '2022-04-09 00:36:43', '2022-04-09 00:46:44'),
(2, 'Right', 1, NULL, NULL, '2022-04-09 00:36:53', '2022-04-09 00:46:48'),
(3, 'Left', 1, NULL, NULL, '2022-04-09 00:36:59', '2022-04-09 00:46:52'),
(4, 'C8', 0, NULL, NULL, '2022-04-09 00:46:59', '2022-04-09 00:46:59'),
(5, 'C7', 0, NULL, NULL, '2022-04-09 00:47:03', '2022-04-09 00:47:03'),
(6, 'C6', 0, NULL, NULL, '2022-04-09 00:47:07', '2022-04-09 00:47:07'),
(7, 'C5', 0, NULL, NULL, '2022-04-09 00:47:11', '2022-04-09 00:47:11'),
(8, 'C4', 0, NULL, NULL, '2022-04-09 00:47:15', '2022-04-09 00:47:15'),
(9, 'C3', 0, NULL, NULL, '2022-04-09 00:47:28', '2022-04-09 00:47:28'),
(10, 'C2', 0, NULL, NULL, '2022-04-09 00:47:33', '2022-04-09 00:47:33'),
(11, 'C1', 0, NULL, NULL, '2022-04-09 00:47:37', '2022-04-09 00:47:37');

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

--
-- Dumping data for table `mhp_thoracic_kyphoses`
--

INSERT INTO `mhp_thoracic_kyphoses` (`id`, `ThoracicKyphosis_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'test1', 0, NULL, NULL, '2022-04-09 21:46:10', '2022-04-09 21:46:10'),
(2, 'test2', 0, NULL, NULL, '2022-04-09 21:46:17', '2022-04-09 21:46:17');

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

--
-- Dumping data for table `mhp_titles`
--

INSERT INTO `mhp_titles` (`id`, `title_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Mr', 0, NULL, NULL, '2022-03-15 22:06:16', '2022-03-15 22:06:16'),
(2, 'Mrs', 0, NULL, NULL, '2022-03-15 22:06:23', '2022-03-15 22:06:23');

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
-- Table structure for table `mhp_toes_lefts`
--

CREATE TABLE `mhp_toes_lefts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mhp_toes_rights`
--

CREATE TABLE `mhp_toes_rights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 0,
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

--
-- Dumping data for table `mhp_tongues`
--

INSERT INTO `mhp_tongues` (`id`, `tongue_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'White Coated', 1, 'single', 0, NULL, NULL, '2022-04-04 23:56:05', '2022-04-04 23:56:05'),
(2, 'Ulcer', 1, 'multiple', 0, NULL, NULL, '2022-04-04 23:56:22', '2022-04-04 23:56:22');

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

--
-- Dumping data for table `mhp_tongue_lesions`
--

INSERT INTO `mhp_tongue_lesions` (`id`, `tongueLesion_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Tip', 1, 'single', 0, NULL, NULL, '2022-04-04 23:57:42', '2022-04-04 23:57:42'),
(2, 'Middle', 1, 'single', 0, NULL, NULL, '2022-04-04 23:57:52', '2022-04-04 23:57:52');

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

--
-- Dumping data for table `mhp_tongue_mouths`
--

INSERT INTO `mhp_tongue_mouths` (`id`, `tonguemouth_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'ton1', 0, NULL, NULL, '2022-03-06 04:27:53', '2022-03-06 04:27:53'),
(2, 'ton2', 0, NULL, NULL, '2022-03-06 04:28:00', '2022-03-06 04:28:00'),
(3, 'ton3', 0, NULL, NULL, '2022-03-06 04:28:04', '2022-03-06 04:28:04');

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

--
-- Dumping data for table `mhp_tympanic_membranes`
--

INSERT INTO `mhp_tympanic_membranes` (`id`, `tympanic_name`, `status`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Bulge', '1', 'single', 0, NULL, NULL, '2022-04-04 23:43:03', '2022-04-04 23:43:03'),
(2, 'Retracted', '1', 'multiple', 0, NULL, NULL, '2022-04-04 23:43:14', '2022-04-04 23:43:14');

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

--
-- Dumping data for table `mhp_ulsers`
--

INSERT INTO `mhp_ulsers` (`id`, `Ulser_name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Soft Palate', 0, '2022-04-04 23:57:11', '2022-04-04 23:57:11'),
(2, 'Hard Palate', 0, '2022-04-04 23:57:18', '2022-04-04 23:57:18');

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

--
-- Dumping data for table `mhp_urine_analyses`
--

INSERT INTO `mhp_urine_analyses` (`id`, `urineanalysis_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'White/Milky', 0, NULL, NULL, '2022-03-27 00:39:20', '2022-03-27 00:39:20'),
(2, 'Black', 0, NULL, NULL, '2022-03-27 00:39:38', '2022-03-27 00:39:38'),
(3, 'Green', 0, NULL, NULL, '2022-03-27 00:39:48', '2022-03-27 00:39:48'),
(4, 'Red', 0, NULL, NULL, '2022-03-27 00:39:56', '2022-03-27 00:39:56'),
(5, 'Pink', 0, NULL, NULL, '2022-03-27 00:40:03', '2022-03-27 00:40:03'),
(6, 'Brown', 0, NULL, NULL, '2022-03-27 00:40:12', '2022-03-27 00:40:12'),
(7, 'Yellow- orange', 0, NULL, NULL, '2022-03-27 00:40:26', '2022-03-27 00:40:26'),
(8, 'Vary Pale', 0, NULL, NULL, '2022-03-27 00:40:38', '2022-03-27 00:40:38');

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

--
-- Dumping data for table `mhp_user_types`
--

INSERT INTO `mhp_user_types` (`id`, `user_type_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Doctor', 0, NULL, NULL, '2022-02-09 03:15:01', '2022-02-09 03:15:01'),
(2, 'Patient', 0, NULL, NULL, '2022-02-09 03:15:09', '2022-02-09 03:15:09'),
(3, 'Nurse', 0, NULL, NULL, '2022-02-09 03:15:20', '2022-02-09 03:15:20');

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
(1, 'Dhaka', 0, NULL, NULL, '2022-03-15 22:06:33', '2022-03-15 22:06:33');

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
(1, 'Dhaka Hospital', 0, NULL, NULL, '2022-03-15 22:07:02', '2022-03-15 22:07:02');

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

--
-- Dumping data for table `mhp_visualacuities`
--

INSERT INTO `mhp_visualacuities` (`id`, `visualacuity_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '6/5', 1, 'single', 0, NULL, NULL, '2022-03-08 00:09:07', '2022-03-08 00:09:07'),
(2, '6/7', 1, 'multiple', 0, NULL, NULL, '2022-03-08 00:12:24', '2022-03-08 00:12:24'),
(3, '6/10', 1, 'single', 0, NULL, NULL, '2022-03-08 00:12:34', '2022-03-08 00:12:34'),
(4, 'HF', 1, 'multiple', 0, NULL, NULL, '2022-03-08 00:12:53', '2022-03-08 00:12:53'),
(5, 'CF', 1, 'single', 0, NULL, NULL, '2022-03-08 00:13:03', '2022-03-08 00:13:03'),
(6, 'IP', 1, 'multiple', 0, NULL, NULL, '2022-03-08 00:13:12', '2022-03-08 00:13:12');

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

--
-- Dumping data for table `mhp_visualfields`
--

INSERT INTO `mhp_visualfields` (`id`, `visualfield_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Tunnel vision', 1, 'single', 0, NULL, NULL, '2022-03-13 03:25:06', '2022-03-13 03:25:06'),
(2, 'Enlarged Blind spot', 1, 'multiple', 0, NULL, NULL, '2022-03-13 03:25:25', '2022-03-13 03:25:25'),
(3, 'Central scotomata', 1, 'single', 0, NULL, NULL, '2022-03-13 03:25:39', '2022-03-13 03:25:39'),
(4, 'Unilateral filed loss', 1, 'multiple', 0, NULL, NULL, '2022-03-13 03:25:52', '2022-03-13 03:25:52'),
(5, 'Homonymous hemianopia', 1, 'single', 0, NULL, NULL, '2022-03-13 03:26:04', '2022-03-13 03:26:04');

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

--
-- Dumping data for table `mhp_vital_signs`
--

INSERT INTO `mhp_vital_signs` (`id`, `name`, `value`, `desc`, `icon`, `color`, `units_id`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 'BP update', '120/80', 'high bp', '14929image 101 (Traced).png', '#ff0000', 'mmhp', 1, '2022-03-26 22:40:15', '2022-03-26 22:41:23');

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

--
-- Dumping data for table `mhp_vital_sign_units`
--

INSERT INTO `mhp_vital_sign_units` (`id`, `vitalunit_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'kg', 0, NULL, NULL, '2022-03-26 22:38:31', '2022-03-26 22:38:31'),
(2, 'mmhp', 0, NULL, NULL, '2022-03-26 22:38:40', '2022-03-26 22:38:40'),
(3, 'c', 0, NULL, NULL, '2022-03-26 22:39:08', '2022-03-26 22:39:08'),
(4, 'F', 0, NULL, NULL, '2022-03-26 22:39:15', '2022-03-26 22:39:15');

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

--
-- Dumping data for table `mhp_volumes`
--

INSERT INTO `mhp_volumes` (`id`, `volume_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '1/6', 2, 'single', 0, NULL, NULL, '2022-02-20 00:42:27', '2022-02-24 00:04:07'),
(2, '2/6', 1, 'multiple', 0, NULL, NULL, '2022-02-24 00:04:22', '2022-02-24 00:04:22'),
(3, '3/6', 1, 'single', 0, NULL, NULL, '2022-02-24 00:04:35', '2022-02-24 00:04:35'),
(4, '4/6', 1, 'multiple', 0, NULL, NULL, '2022-02-24 00:04:48', '2022-02-24 00:04:48'),
(5, '5/6', 1, 'single', 0, NULL, NULL, '2022-02-24 00:05:00', '2022-02-24 00:05:00');

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

--
-- Dumping data for table `mhp_volume_womens`
--

INSERT INTO `mhp_volume_womens` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'test1', 1, '2022-04-16 00:36:40', '2022-04-16 00:36:56'),
(2, 'Light', 0, '2022-04-16 00:40:19', '2022-04-16 00:40:19'),
(3, 'Normal', 0, '2022-04-16 00:40:23', '2022-04-16 00:40:23'),
(4, 'Heavy', 0, '2022-04-16 00:40:30', '2022-04-16 00:40:30');

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

--
-- Dumping data for table `mhp_vomitings`
--

INSERT INTO `mhp_vomitings` (`id`, `Vomiting_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '1/10', 0, NULL, NULL, '2022-03-07 03:40:49', '2022-03-07 03:40:49'),
(2, '2/10', 0, NULL, NULL, '2022-03-07 03:41:00', '2022-03-07 03:41:00'),
(3, '3/10', 0, NULL, NULL, '2022-03-07 03:41:10', '2022-03-07 03:41:10'),
(4, '5/10', 0, NULL, NULL, '2022-03-07 03:41:17', '2022-03-07 03:41:17'),
(5, '6/10', 0, NULL, NULL, '2022-03-07 03:41:25', '2022-03-07 03:41:25'),
(6, '7/10', 0, NULL, NULL, '2022-03-07 03:41:33', '2022-03-07 03:41:33'),
(7, '8/10', 0, NULL, NULL, '2022-03-07 03:41:40', '2022-03-07 03:41:40'),
(8, '9/10', 0, NULL, NULL, '2022-03-07 03:41:48', '2022-03-07 03:41:48'),
(9, '10/10', 0, NULL, NULL, '2022-03-07 03:41:56', '2022-03-07 03:41:56'),
(10, '4/10', 0, NULL, NULL, '2022-03-07 04:16:14', '2022-03-07 04:16:37');

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

--
-- Dumping data for table `mhp_vulvals`
--

INSERT INTO `mhp_vulvals` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Rash', 0, '2022-04-16 02:59:33', '2022-04-16 02:59:33'),
(2, 'Fishy smelling', 0, '2022-04-16 02:59:38', '2022-04-16 02:59:38'),
(3, 'Vulvul itch', 0, '2022-04-16 02:59:44', '2022-04-16 02:59:44');

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

--
-- Dumping data for table `mhp_vulvas`
--

INSERT INTO `mhp_vulvas` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Introital Narroswing', 0, '2022-04-16 03:04:13', '2022-04-16 03:04:13'),
(2, 'Loss of Labial Structure', 0, '2022-04-16 03:04:20', '2022-04-16 03:04:20'),
(3, 'White Plaques', 0, '2022-04-16 03:04:25', '2022-04-16 03:04:25'),
(4, 'Chronic Excoriation', 0, '2022-04-16 03:04:32', '2022-04-16 03:04:32'),
(5, 'Thickened Hypertrophic Skin', 0, '2022-04-16 03:04:39', '2022-04-16 03:04:39'),
(6, 'Atropic', 0, '2022-04-16 03:04:46', '2022-04-16 03:04:46');

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

--
-- Dumping data for table `mhp_walk_on_heels`
--

INSERT INTO `mhp_walk_on_heels` (`id`, `name`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'test1', 0, '2022-04-09 21:43:13', '2022-04-09 21:43:13'),
(2, 'test2', 0, '2022-04-09 21:43:22', '2022-04-09 21:43:22');

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

--
-- Dumping data for table `mhp_weber_tests`
--

INSERT INTO `mhp_weber_tests` (`id`, `weberTest_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Equal', 2, 'single', 0, NULL, NULL, '2022-04-04 23:55:41', '2022-04-04 23:55:41'),
(2, 'Normal', 1, 'multiple', 0, NULL, NULL, '2022-04-04 23:55:51', '2022-04-04 23:55:51');

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

--
-- Dumping data for table `mhp_winged_scapulas`
--

INSERT INTO `mhp_winged_scapulas` (`id`, `WingedScapula_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'test 1', 0, NULL, NULL, '2022-05-11 04:12:24', '2022-05-11 04:12:24');

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

--
-- Dumping data for table `mhp_women_health_examis`
--

INSERT INTO `mhp_women_health_examis` (`id`, `patient_id`, `LMP_date`, `LSCS_ternary`, `pregnant_ternary`, `lastCervicalScreen_date`, `periodType_input`, `periodDays_input`, `periodCycle_input`, `periodYears_input`, `volume_value`, `PVBleeding_vale`, `PVDischarge_value`, `vulval_value`, `miscarriage_value`, `breastLump_side_value`, `breast_pain_ternary_value`, `breast_abscess_ternary_value`, `pelvic_mass`, `forniceal_tenderness_ternary`, `bulky_uterus_ternary`, `breast_ternery`, `peau_ternary`, `redness_ternary`, `nipple_inversion_ternary`, `visibleVeins_ternary`, `teethering_ternary`, `hot_ternary`, `axillary_nodes_ternary`, `skin_dimpling_ternary`, `asymetric_elevation_ternary`, `supraclavicular_node_ternary`, `swelling_ternary`, `lump_cm_for_nipple_ternary`, `lump_o_clock`, `bartholin_glandes_value`, `forniceal_mass_value`, `anteverted_uterus_ternary`, `uterine_tenderness_ternary`, `retroverted_uterus_ternary`, `LMP_input`, `LLO_ternary`, `LUI_ternary`, `RLO_ternary`, `LLI_ternary`, `RLI_ternary`, `RUO_ternary`, `MUI_ternary`, `created_at`, `updated_at`) VALUES
(1, '1', NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Right Sided', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Red', '1', '1', '0', '0', NULL, '0', '0', '0', '0', '0', '0', '0', '2022-04-16 23:00:08', '2022-04-16 23:00:08'),
(2, '1', NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', 'Right', 'Right', 'Right', 'Right', 'Right', '10', 'Right', 'Right', 'Right', 'Right', 'Both', 'Right', '10', '10', 'Swollen', '1', '1', '1', '1', NULL, '1', '1', '1', '1', '1', '1', '1', '2022-04-16 23:18:19', '2022-04-16 23:18:19'),
(3, NULL, NULL, '1', '1', NULL, 'Irregular', NULL, NULL, NULL, 'Heavy', 'Intermenstrual bleeding', 'Foul smelling', 'Fishy smelling', 'First timester', 'Left', 'Cyclical', NULL, 'Central', '1', '1', 'Right', 'Right', 'Right', 'Right', 'Right', '10', 'Right', 'Right', 'Right', 'Right', 'Both', 'Right', '10', '10', 'Swollen', '1', '1', '1', '1', NULL, '1', '1', '1', '1', '1', '1', '1', '2022-04-16 23:26:41', '2022-04-16 23:26:41'),
(4, NULL, NULL, '1', '1', NULL, 'Irregular', NULL, NULL, NULL, 'Heavy', 'Intermenstrual bleeding', 'Foul smelling', 'Fishy smelling', 'First timester', 'Left', 'Cyclical', NULL, 'Central', '1', '1', 'Right', 'Right', 'Right', 'Right', 'Right', '10', 'Right', 'Right', 'Right', 'Right', 'Both', 'Right', '10', '10', 'Swollen', '1', '1', '1', '1', NULL, '1', '1', '1', '1', '1', '1', '1', '2022-04-16 23:27:34', '2022-04-16 23:27:34'),
(5, NULL, NULL, '1', '1', NULL, 'Irregular', NULL, NULL, NULL, 'Heavy', 'Intermenstrual bleeding', 'Foul smelling', 'Fishy smelling', 'First timester', 'Left', 'Cyclical', NULL, 'Central', '1', '1', 'Right', 'Right', 'Right', 'Right', 'Right', '10', 'Right', 'Right', 'Right', 'Right', 'Both', 'Right', '10', '10', 'Swollen', '1', '1', '1', '1', NULL, '1', '1', '1', '1', '1', '1', '1', '2022-04-16 23:53:59', '2022-04-16 23:53:59'),
(6, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Right Sided', '1', '1', 'Left', 'Right', 'Right', 'Left', 'Right', NULL, 'Right', 'Right', NULL, NULL, NULL, NULL, NULL, NULL, 'Red', '1', '1', '0', '0', NULL, '0', '0', '0', '0', '0', '0', '0', '2022-04-17 00:07:38', '2022-04-17 00:07:38'),
(7, NULL, NULL, '1', '1', NULL, 'Irregular', NULL, NULL, NULL, 'Heavy', 'Intermenstrual bleeding', 'Foul smelling', 'Fishy smelling', 'First timester', 'Left', 'Cyclical', NULL, 'Central', '1', '1', 'Right', 'Right', 'Right', 'Right', 'Right', '10', 'Right', 'Right', 'Right', 'Right', 'Both', 'Right', '10', '10', 'Swollen', '1', '1', '1', '1', NULL, '1', '1', '1', '1', '1', '1', '1', '2022-04-17 00:07:56', '2022-04-17 00:07:56'),
(8, NULL, NULL, '1', '1', NULL, 'Irregular', NULL, NULL, NULL, 'Heavy', 'Intermenstrual bleeding', 'Foul smelling', 'Fishy smelling', 'First timester', 'Left', 'Cyclical', NULL, 'Central', '1', '1', 'Right', 'Right', 'Right', 'Right', 'Right', '10', 'Right', 'Right', 'Right', 'Right', 'Both', 'Right', '10', '10', 'Swollen', '1', '1', '1', '1', NULL, '1', '1', '1', '1', '1', '1', '1', '2022-04-17 00:14:45', '2022-04-17 00:14:45'),
(9, NULL, NULL, '1', '1', NULL, 'Irregular', NULL, NULL, NULL, 'Heavy', 'Intermenstrual bleeding', 'Foul smelling', 'Fishy smelling', 'First timester', 'Left', 'Cyclical', NULL, 'Central', '1', '1', 'Right', 'Right', 'Right', 'Right', 'Right', '10', 'Right', 'Right', 'Right', 'Right', 'Both', 'Right', '10', '10', 'Swollen', '1', '1', '1', '1', NULL, '1', '1', '1', '1', '1', '1', '1', '2022-04-17 00:16:13', '2022-04-17 00:16:13'),
(10, '1', NULL, '1', '1', NULL, 'Regular', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL, '0', '0', '0', '0', '0', '0', '0', '2022-04-17 00:18:13', '2022-04-17 00:18:13');

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

--
-- Dumping data for table `mhp_women_health_exami_breast_lumps`
--

INSERT INTO `mhp_women_health_exami_breast_lumps` (`id`, `patient_id`, `women_health_id`, `breast_lumps_id`, `value`, `created_at`, `updated_at`) VALUES
(1, NULL, '8', '4', 'Aspiration', '2022-04-17 00:14:48', '2022-04-17 00:14:48'),
(2, NULL, '8', '5', 'Biospy Previously', '2022-04-17 00:14:48', '2022-04-17 00:14:48'),
(3, NULL, '9', '4', 'Aspiration', '2022-04-17 00:16:15', '2022-04-17 00:16:15'),
(4, NULL, '9', '5', 'Biospy Previously', '2022-04-17 00:16:15', '2022-04-17 00:16:15');

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

--
-- Dumping data for table `mhp_women_health_exami_breast_nipple_discharges`
--

INSERT INTO `mhp_women_health_exami_breast_nipple_discharges` (`id`, `patient_id`, `women_health_id`, `breast_nipple_discharges_id`, `value`, `created_at`, `updated_at`) VALUES
(1, NULL, '7', '4', 'Blood stainned', '2022-04-17 00:07:57', '2022-04-17 00:07:57'),
(2, NULL, '7', '5', 'Clear', '2022-04-17 00:07:57', '2022-04-17 00:07:57'),
(3, NULL, '8', '4', 'Blood stainned', '2022-04-17 00:14:46', '2022-04-17 00:14:46'),
(4, NULL, '8', '5', 'Clear', '2022-04-17 00:14:46', '2022-04-17 00:14:46'),
(5, NULL, '9', '4', 'Blood stainned', '2022-04-17 00:16:13', '2022-04-17 00:16:13'),
(6, NULL, '9', '5', 'Clear', '2022-04-17 00:16:13', '2022-04-17 00:16:13');

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

--
-- Dumping data for table `mhp_women_health_exami_cervixes`
--

INSERT INTO `mhp_women_health_exami_cervixes` (`id`, `patient_id`, `women_health_id`, `cervixes_id`, `value`, `created_at`, `updated_at`) VALUES
(1, NULL, '9', '3', 'Polyp', '2022-04-17 00:16:15', '2022-04-17 00:16:15'),
(2, NULL, '9', '4', 'Ectropion', '2022-04-17 00:16:16', '2022-04-17 00:16:16');

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

--
-- Dumping data for table `mhp_women_health_exami_csts`
--

INSERT INTO `mhp_women_health_exami_csts` (`id`, `patient_id`, `women_health_id`, `csts_id`, `value`, `created_at`, `updated_at`) VALUES
(1, NULL, '8', '2', 'Performed', '2022-04-17 00:14:46', '2022-04-17 00:14:46'),
(2, NULL, '9', '2', 'Performed', '2022-04-17 00:16:13', '2022-04-17 00:16:13');

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

--
-- Dumping data for table `mhp_women_health_exami_gynecologies`
--

INSERT INTO `mhp_women_health_exami_gynecologies` (`id`, `patient_id`, `women_health_id`, `gynecologies_id`, `value`, `created_at`, `updated_at`) VALUES
(1, NULL, '8', '1', 'true', '2022-04-17 00:14:48', '2022-04-17 00:14:48'),
(2, NULL, '8', '6', 'true', '2022-04-17 00:14:48', '2022-04-17 00:14:48'),
(3, NULL, '8', '8', 'true', '2022-04-17 00:14:49', '2022-04-17 00:14:49'),
(4, NULL, '8', '9', 'true', '2022-04-17 00:14:49', '2022-04-17 00:14:49'),
(5, NULL, '8', '10', 'true', '2022-04-17 00:14:49', '2022-04-17 00:14:49'),
(6, NULL, '8', '11', 'true', '2022-04-17 00:14:49', '2022-04-17 00:14:49'),
(7, NULL, '8', '12', 'true', '2022-04-17 00:14:49', '2022-04-17 00:14:49'),
(8, NULL, '8', '13', 'true', '2022-04-17 00:14:49', '2022-04-17 00:14:49'),
(9, NULL, '8', '14', 'true', '2022-04-17 00:14:50', '2022-04-17 00:14:50'),
(10, NULL, '8', '15', 'true', '2022-04-17 00:14:50', '2022-04-17 00:14:50'),
(11, NULL, '8', '16', 'true', '2022-04-17 00:14:50', '2022-04-17 00:14:50'),
(12, NULL, '9', '1', 'true', '2022-04-17 00:16:16', '2022-04-17 00:16:16'),
(13, NULL, '9', '6', 'true', '2022-04-17 00:16:16', '2022-04-17 00:16:16'),
(14, NULL, '9', '8', 'true', '2022-04-17 00:16:16', '2022-04-17 00:16:16'),
(15, NULL, '9', '9', 'true', '2022-04-17 00:16:16', '2022-04-17 00:16:16'),
(16, NULL, '9', '10', 'true', '2022-04-17 00:16:16', '2022-04-17 00:16:16'),
(17, NULL, '9', '11', 'true', '2022-04-17 00:16:17', '2022-04-17 00:16:17'),
(18, NULL, '9', '12', 'true', '2022-04-17 00:16:17', '2022-04-17 00:16:17'),
(19, NULL, '9', '13', 'true', '2022-04-17 00:16:17', '2022-04-17 00:16:17'),
(20, NULL, '9', '14', 'true', '2022-04-17 00:16:17', '2022-04-17 00:16:17'),
(21, NULL, '9', '15', 'true', '2022-04-17 00:16:17', '2022-04-17 00:16:17'),
(22, NULL, '9', '16', 'true', '2022-04-17 00:16:17', '2022-04-17 00:16:17');

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

--
-- Dumping data for table `mhp_women_health_exami_obstetrics`
--

INSERT INTO `mhp_women_health_exami_obstetrics` (`id`, `patient_id`, `women_health_id`, `obstetrics_id`, `value`, `created_at`, `updated_at`) VALUES
(1, NULL, '8', '1', 'true', '2022-04-17 00:14:46', '2022-04-17 00:14:46'),
(2, NULL, '8', '2', 'true', '2022-04-17 00:14:46', '2022-04-17 00:14:46'),
(3, NULL, '8', '5', 'true', '2022-04-17 00:14:46', '2022-04-17 00:14:46'),
(4, NULL, '8', '6', 'true', '2022-04-17 00:14:46', '2022-04-17 00:14:46'),
(5, NULL, '8', '10', 'true', '2022-04-17 00:14:47', '2022-04-17 00:14:47'),
(6, NULL, '8', '11', 'true', '2022-04-17 00:14:47', '2022-04-17 00:14:47'),
(7, NULL, '8', '12', 'true', '2022-04-17 00:14:47', '2022-04-17 00:14:47'),
(8, NULL, '8', '13', 'true', '2022-04-17 00:14:47', '2022-04-17 00:14:47'),
(9, NULL, '8', '14', 'true', '2022-04-17 00:14:47', '2022-04-17 00:14:47'),
(10, NULL, '8', '16', 'true', '2022-04-17 00:14:48', '2022-04-17 00:14:48'),
(11, NULL, '9', '1', 'true', '2022-04-17 00:16:14', '2022-04-17 00:16:14'),
(12, NULL, '9', '2', 'true', '2022-04-17 00:16:14', '2022-04-17 00:16:14'),
(13, NULL, '9', '5', 'true', '2022-04-17 00:16:14', '2022-04-17 00:16:14'),
(14, NULL, '9', '6', 'true', '2022-04-17 00:16:14', '2022-04-17 00:16:14'),
(15, NULL, '9', '10', 'true', '2022-04-17 00:16:14', '2022-04-17 00:16:14'),
(16, NULL, '9', '11', 'true', '2022-04-17 00:16:14', '2022-04-17 00:16:14'),
(17, NULL, '9', '12', 'true', '2022-04-17 00:16:15', '2022-04-17 00:16:15'),
(18, NULL, '9', '13', 'true', '2022-04-17 00:16:15', '2022-04-17 00:16:15'),
(19, NULL, '9', '14', 'true', '2022-04-17 00:16:15', '2022-04-17 00:16:15'),
(20, NULL, '9', '16', 'true', '2022-04-17 00:16:15', '2022-04-17 00:16:15');

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

--
-- Dumping data for table `mhp_women_health_exami_vulvas`
--

INSERT INTO `mhp_women_health_exami_vulvas` (`id`, `patient_id`, `women_health_id`, `vulvas_id`, `value`, `created_at`, `updated_at`) VALUES
(1, NULL, '5', '5', 'Thickened Hypertrophic Skin', '2022-04-16 23:53:59', '2022-04-16 23:53:59'),
(2, NULL, '5', '6', 'Atropic', '2022-04-16 23:53:59', '2022-04-16 23:53:59'),
(3, NULL, '7', '5', 'Thickened Hypertrophic Skin', '2022-04-17 00:07:56', '2022-04-17 00:07:56'),
(4, NULL, '7', '6', 'Atropic', '2022-04-17 00:07:56', '2022-04-17 00:07:56'),
(5, NULL, '8', '5', 'Thickened Hypertrophic Skin', '2022-04-17 00:14:45', '2022-04-17 00:14:45'),
(6, NULL, '8', '6', 'Atropic', '2022-04-17 00:14:45', '2022-04-17 00:14:45'),
(7, NULL, '9', '5', 'Thickened Hypertrophic Skin', '2022-04-17 00:16:13', '2022-04-17 00:16:13'),
(8, NULL, '9', '6', 'Atropic', '2022-04-17 00:16:13', '2022-04-17 00:16:13'),
(9, '1', '10', '3', 'White Plaques', '2022-04-17 00:18:13', '2022-04-17 00:18:13'),
(10, '1', '10', '4', 'Chronic Excoriation', '2022-04-17 00:18:14', '2022-04-17 00:18:14'),
(11, '1', '10', '6', 'Atropic', '2022-04-17 00:18:14', '2022-04-17 00:18:14');

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

--
-- Dumping data for table `mhp_worth4_dots`
--

INSERT INTO `mhp_worth4_dots` (`id`, `Worth4Dot_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Left', 0, NULL, NULL, '2022-03-28 23:59:39', '2022-03-28 23:59:39'),
(2, 'Right', 0, NULL, NULL, '2022-03-28 23:59:47', '2022-03-28 23:59:47'),
(3, 'Nill', 0, NULL, NULL, '2022-03-28 23:59:57', '2022-03-28 23:59:57');

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

--
-- Dumping data for table `mhp_wrists`
--

INSERT INTO `mhp_wrists` (`id`, `Wrist_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'test 1', 0, NULL, NULL, '2022-05-11 04:12:44', '2022-05-11 04:12:44');

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
(578, '2014_10_12_000000_create_users_table', 1),
(579, '2014_10_12_100000_create_password_resets_table', 1),
(580, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(581, '2019_08_19_000000_create_failed_jobs_table', 1),
(582, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(583, '2020_11_15_100619_create_sessions_table', 1),
(584, '2020_11_15_133901_create_admins_table', 1),
(585, '2021_11_04_061340_create_mhp_occupations_table', 1),
(586, '2021_11_04_080707_create_mhp_ethnicities_table', 1),
(587, '2021_11_04_081240_create_mhp_usual_locations_table', 1),
(588, '2021_11_04_081607_create_mhp_statuses_table', 1),
(589, '2021_11_04_084725_create_mhp_titles_table', 1),
(590, '2021_11_04_085245_create_mhp_cities_table', 1),
(591, '2021_11_04_100538_create_mhp_countries_table', 1),
(592, '2021_11_04_101531_create_mhp_visit_types_table', 1),
(593, '2021_11_04_102122_create_mhp_religions_table', 1),
(594, '2021_11_04_105155_create_mhp_birth_sexes_table', 1),
(595, '2021_11_04_110235_create_mhp_patients_table', 1),
(596, '2021_11_06_090052_create_mhp_doctors_table', 1),
(597, '2021_11_06_104827_create_mhp_appointments_table', 1),
(598, '2021_11_06_112349_create_mhp_daily_messages_table', 1),
(599, '2021_11_06_124557_create_mhp_referral_follow_ups_table', 1),
(600, '2021_11_14_090406_create_mhp_test_types_table', 1),
(601, '2021_11_24_092831_create_mhp_contact_vias_table', 1),
(602, '2021_11_24_093135_create_mhp_states_table', 1),
(603, '2021_11_24_093220_create_mhp_usual_providers_table', 1),
(604, '2021_11_24_093243_create_mhp_usual_accounts_table', 1),
(605, '2021_11_25_114857_create_mhp_doctors_masters_table', 1),
(606, '2021_11_25_115005_create_mhp_doctors_academics_table', 1),
(607, '2021_11_25_115120_create_mhp_doctors_license_trainings_table', 1),
(608, '2021_11_25_115207_create_mhp_doctors_work_experiences_table', 1),
(609, '2021_11_28_054703_create_mhp_time_setups_table', 1),
(610, '2021_11_29_083216_create_mhp_appointment_schedulers_table', 1),
(611, '2021_12_05_044038_create_mhp_reactions_table', 1),
(612, '2021_12_05_115114_create_mhp_diagnoses_table', 1),
(613, '2021_12_07_050253_create_mhp_patients_family_social_history_alcohols_table', 1),
(614, '2021_12_07_081025_create_mhp_diagnosis_actions_table', 1),
(615, '2021_12_07_130655_create_mhp_patients_occupation_details_table', 1),
(616, '2021_12_07_132819_create_mhp_patients_family_social_history_tobaccos_table', 1),
(617, '2021_12_08_053301_create_mhp_drug_names_table', 1),
(618, '2021_12_08_085012_create_mhp_drug_units_table', 1),
(619, '2021_12_08_094655_create_mhp_past_alcohol_consumptions_table', 1),
(620, '2021_12_08_114345_create_mhp_route_names_table', 1),
(621, '2021_12_09_042324_create_mhp_occupational_hazards_table', 1),
(622, '2021_12_09_042611_create_mhp_current_smoking_histories_table', 1),
(623, '2021_12_09_042702_create_mhp_tobacco_types_table', 1),
(624, '2021_12_09_042804_create_mhp_tobacco_cost_amounts_table', 1),
(625, '2021_12_09_042909_create_mhp_advice_suggestions_table', 1),
(626, '2021_12_09_045304_create_mhp_dose_names_table', 1),
(627, '2021_12_09_055036_create_mhp_frequency_names_table', 1),
(628, '2021_12_09_062534_create_mhp_food_names_table', 1),
(629, '2021_12_09_073823_create_mhp_others_names_table', 1),
(630, '2021_12_12_112033_create_mhp_appointment_lengths_table', 1),
(631, '2021_12_12_112142_create_mhp_appointment_types_table', 1),
(632, '2021_12_23_054515_create_mhp_user_self_registrations_table', 1),
(633, '2021_12_26_111011_create_mhp_doctors_departments_table', 1),
(634, '2021_12_28_052525_create_doc_specialists_table', 1),
(635, '2021_12_29_093113_create_doc_time_slots_table', 1),
(636, '2021_12_29_093241_create_doc_time_limits_table', 1),
(637, '2022_01_03_062443_create_ptn_blood_groups_table', 1),
(638, '2022_01_08_121630_create_mhp_examinations_table', 1),
(639, '2022_01_09_052448_create_mhp_histories_table', 1),
(640, '2022_01_10_060502_create_mhp_exam_hist_select_params_table', 1),
(641, '2022_01_10_104555_create_mhp_exam_hist_extensions_table', 1),
(642, '2022_01_11_093031_create_mhp_carotids_table', 1),
(643, '2022_01_11_112747_create_mhp_exam_history_mappings_table', 1),
(644, '2022_01_13_044812_create_mhp_selection_criterias_table', 1),
(645, '2022_01_13_063652_create_mhp_ear_canals_table', 1),
(646, '2022_01_15_071048_create_mhp_apex_beats_table', 1),
(647, '2022_01_15_100514_create_mhp_intercostal_spaces_table', 1),
(648, '2022_01_17_045902_create_mhp_history_examination_statuses_table', 1),
(649, '2022_01_17_051410_create_mhp_ear_lesions_table', 1),
(650, '2022_01_17_091016_create_mhp_tympanic_membranes_table', 1),
(651, '2022_01_18_043910_create_mhp_mastoids_table', 1),
(652, '2022_01_18_065824_create_mhp_posteriors_table', 1),
(653, '2022_01_18_070317_create_mhp_doctors_certificates_table', 1),
(654, '2022_01_18_100148_create_mhp_tunnings_table', 1),
(655, '2022_01_18_112602_create_mhp_weber_tests_table', 1),
(656, '2022_01_19_055510_create_mhp_throats_table', 1),
(657, '2022_01_19_061713_create_mhp_tongues_table', 1),
(658, '2022_01_19_065614_create_mhp_tonsils_table', 1),
(659, '2022_01_19_105355_create_mhp_noses_table', 1),
(660, '2022_01_20_092923_create_mhp_tongue_lesions_table', 1),
(661, '2022_01_22_061852_create_mhp_ol_factories_table', 1),
(662, '2022_01_23_062752_create_mhp_fundoscopies_table', 1),
(663, '2022_01_23_095603_create_mhp_visualacuities_table', 1),
(664, '2022_01_23_111047_create_mhp_visualfields_table', 1),
(665, '2022_01_23_112536_create_mhp_papillaryoedemas_table', 1),
(666, '2022_01_24_060127_create_mhp_pupils_table', 1),
(667, '2022_01_24_061741_create_mhp_lightreflexes_table', 1),
(668, '2022_01_24_070811_create_mhp_eyemovements_table', 1),
(669, '2022_01_24_090437_create_cns_sensories_table', 1),
(670, '2022_01_24_094137_create_cns_jaw_jerks_table', 1),
(671, '2022_01_24_104118_create_cns_looking_ups_table', 1),
(672, '2022_01_24_114801_create_cns_drooping_corners_table', 1),
(673, '2022_01_25_052636_create_cns_ear_palates_table', 1),
(674, '2022_01_25_081723_create_mhp_user_types_table', 1),
(675, '2022_01_25_101619_create_mhe_appearances_table', 1),
(676, '2022_01_25_103132_create_cns_whisper_tests_table', 1),
(677, '2022_01_25_113931_create_cns_pinnes_tests_table', 1),
(678, '2022_01_25_115449_create_mhe_behaviours_table', 1),
(679, '2022_01_25_123708_create_cns_hallpikes_table', 1),
(680, '2022_01_26_063052_create_cns_uvulas_table', 1),
(681, '2022_01_26_090735_create_cns_gas_reflexes_table', 1),
(682, '2022_01_26_094514_create_cns_neck_movements_table', 1),
(683, '2022_01_26_102451_create_cns_shrug_shoulders_table', 1),
(684, '2022_01_26_110500_create_cns_tasciculations_table', 1),
(685, '2022_01_27_050026_create_mhe_attitude_towards_examinations_table', 1),
(686, '2022_01_30_052316_create_mhp_vital_sign_units_table', 1),
(687, '2022_01_30_064425_create_mhp_vital_signs_table', 1),
(688, '2022_01_30_091013_create_cns_sensations_table', 1),
(689, '2022_01_30_100502_create_mhe_moods_table', 1),
(690, '2022_01_30_102322_create_mhe_affects_table', 1),
(691, '2022_01_30_104148_create_mhe_appropritenesses_table', 1),
(692, '2022_01_30_111937_create_mhe_attitute_towards_table', 1),
(693, '2022_01_30_114833_create_mhe_speeches_table', 1),
(694, '2022_01_31_045338_create_cns_tongues_table', 1),
(695, '2022_01_31_072244_create_mhe_perceptuals_table', 1),
(696, '2022_01_31_085024_create_mhp_patients_vital_signs_table', 1),
(697, '2022_01_31_090707_create_mre_chest_shapes_table', 1),
(698, '2022_01_31_093215_create_mre_percussions_table', 1),
(699, '2022_01_31_100748_create_mre_breath_sounds_table', 1),
(700, '2022_01_31_102426_create_mre_abnormal_breathings_table', 1),
(701, '2022_01_31_104418_create_mre_vocal_fremituses_table', 1),
(702, '2022_01_31_112932_create_mre_chest_expansions_table', 1),
(703, '2022_01_31_114545_create_mre_wheerings_table', 1),
(704, '2022_01_31_115733_create_mre_vocal_resonances_table', 1),
(705, '2022_02_01_103047_create_mre_symptoms_table', 1),
(706, '2022_02_05_054520_create_mhp_employees_table', 1),
(707, '2022_02_05_054940_create_mhp_employee_academics_table', 1),
(708, '2022_02_05_055253_create_mhp_employee_certificates_table', 1),
(709, '2022_02_05_055552_create_mhp_employee_licences_table', 1),
(710, '2022_02_05_060424_create_mhp_employee_works_and_experienses_table', 1),
(711, '2022_02_06_054138_create_mhp_allergies_table', 1),
(712, '2022_02_06_094331_create_mhp_patients_allergies_table', 1),
(713, '2022_02_09_044200_create_mhp_drug_generic_names_table', 1),
(714, '2022_02_12_074444_create_mhp_rxes_table', 2),
(715, '2022_02_12_123638_create_mhp_media_type_onlines_table', 3),
(716, '2022_02_15_112903_create_mhp_examination_headings_table', 4),
(717, '2022_02_16_042749_create_mhp_common_histories_table', 4),
(718, '2022_02_19_101411_create_mre_cripitations_table', 5),
(719, '2022_02_19_102416_create_mre_crepitations_table', 6),
(720, '2022_02_19_123953_create_mhp_heart_sounds_table', 7),
(721, '2022_02_20_063812_create_mhp_volumes_table', 8),
(722, '2022_02_20_070035_create_mhp_rediations_table', 9),
(723, '2022_02_20_071254_create_mhp_murmurs_table', 10),
(724, '2022_02_20_094143_create_mhp_others_table', 11),
(725, '2022_02_20_102041_create_mhp_pembertons_table', 12),
(726, '2022_02_22_071507_create_cns_cn_ones_table', 13),
(727, '2022_02_22_104041_create_cns_cn_twos_table', 13),
(728, '2022_02_22_105338_create_cns_cn_threes_table', 13),
(729, '2022_02_22_110620_create_cns_cn_fours_table', 13),
(730, '2022_02_22_113027_create_cns_cn_fives_table', 13),
(731, '2022_02_22_115153_create_cns_cn_sixes_table', 13),
(732, '2022_02_22_120352_create_cns_cn_sevens_table', 13),
(733, '2022_02_22_121159_create_cns_cn_eights_table', 13),
(734, '2022_02_22_123248_create_cns_cn_nines_table', 13),
(735, '2022_02_22_124329_create_cns_cn_tens_table', 13),
(736, '2022_02_27_100529_create_mhp_cardiovasculars_table', 14),
(737, '2022_02_28_073349_create_mhp_cardiovascular_others_table', 15),
(738, '2022_02_28_104747_create_mhp_cardiovascular_histories_table', 16),
(739, '2022_03_01_063423_create_mhp_generals_table', 17),
(740, '2022_02_28_060855_create_mhp_coughs_table', 18),
(741, '2022_02_28_065100_create_mhp_dyspneas_table', 18),
(742, '2022_02_28_084707_create_mhp_medical_histories_table', 18),
(743, '2022_02_28_092254_create_mhp_sleep_apnoea_risks_table', 18),
(744, '2022_02_28_104236_create_mhp_questionnaires_table', 18),
(745, '2022_03_01_062107_create_mhp_motors_table', 18),
(746, '2022_03_01_072003_create_mhp_on_shutting_eyes_table', 18),
(747, '2022_02_28_103505_create_mhp_doctor_fees_table', 19),
(748, '2022_03_01_042248_create_mhp_procedures_table', 19),
(749, '2022_03_01_072427_create_mhp_procedure_fees_table', 19),
(750, '2022_03_02_050120_create_mhp_general_histories_table', 20),
(751, '2022_03_01_110020_create_mhp_skins_table', 21),
(752, '2022_03_01_113536_create_mhp_hand_and_fingers_table', 21),
(753, '2022_03_01_115559_create_mhp_left_supraclavicular_nodes_table', 21),
(754, '2022_03_02_043036_create_mhp_tongue_mouths_table', 21),
(755, '2022_03_02_044427_create_mhp_abdomens_table', 21),
(756, '2022_03_02_050838_create_mhp_bruits_table', 21),
(757, '2022_03_02_052321_create_mhp_non_tender_tendernesses_table', 21),
(758, '2022_03_02_055032_create_mhp_no_masses_masses_table', 21),
(759, '2022_03_02_055954_create_mhp_hernias_table', 21),
(760, '2022_03_02_093608_create_mhp_hernias_inguinals_table', 21),
(761, '2022_03_02_102921_create_mhp_hernias_femorals_table', 21),
(762, '2022_03_02_112327_create_mhp_per_rectals_table', 22),
(763, '2022_03_03_041126_create_mhp_sigmoidoscopies_table', 22),
(764, '2022_03_03_052832_create_mhp_sigmoidoscopy_guaiac_tests_table', 22),
(765, '2022_03_03_063359_create_mhp_urine_analyses_table', 22),
(766, '2022_03_03_064424_create_mhp_renal_masses_table', 22),
(767, '2022_03_03_071525_create_mhp_exmanination_lists_table', 22),
(768, '2022_03_03_101213_create_mhp_dehydrations_table', 22),
(769, '2022_03_03_101727_create_mhp_radio_femoral_delays_table', 22),
(770, '2022_03_03_102454_create_mhp_nail_signs_table', 22),
(771, '2022_03_03_105606_create_mhp_dyspnea_classes_table', 22),
(775, '2022_03_05_094734_create_mhp_respiratories_table', 23),
(777, '2022_03_05_114430_create_mhp_respiratory_histories_table', 24),
(778, '2022_03_05_061409_create_mhp_double_visions_table', 25),
(779, '2022_03_05_063551_create_mhp_haloes_table', 25),
(780, '2022_03_05_064350_create_mhp_flores_table', 25),
(781, '2022_03_05_073552_create_mhp_caruncles_table', 25),
(782, '2022_03_05_075211_create_mhp_ghoostings_table', 25),
(783, '2022_03_05_075745_create_mhp_enterior_chambers_table', 25),
(784, '2022_03_05_082431_create_mhp_swollen_eye_lids_table', 25),
(785, '2022_03_05_082745_create_mhp_lesions_table', 25),
(786, '2022_03_05_092323_create_mhp_cripatation_lefts_table', 25),
(787, '2022_03_05_093456_create_mhp_cripatation_rights_table', 25),
(788, '2022_03_05_093910_create_mhp_cripatation_boths_table', 25),
(789, '2022_03_05_113332_create_mhp_wheezing_lefts_table', 25),
(790, '2022_03_05_113840_create_mhp_wheezing_rights_table', 25),
(791, '2022_03_05_114249_create_mhp_wheezing_boths_table', 25),
(792, '2022_03_02_114145_create_mhp_billings_table', 26),
(793, '2022_03_06_053912_create_mhp_respiratory_examination_lists_table', 27),
(794, '2022_03_06_055154_create_mhp_respiratory_questionnaires_table', 28),
(795, '2022_03_06_053109_create_mhp_entrance_tests_table', 29),
(796, '2022_03_06_063558_create_mhp_visual_acuity_eyes_table', 29),
(797, '2022_03_06_071639_create_mhp_cover_tests_table', 29),
(798, '2022_03_06_074651_create_mhp_pupils_eyes_table', 29),
(799, '2022_03_06_084052_create_mhp_worth4_dots_table', 29),
(800, '2022_03_06_084506_create_mhp_e_o_m_convergences_table', 29),
(801, '2022_03_06_101644_create_mhp_r_u_q_s_table', 29),
(802, '2022_03_06_102754_create_mhp_epigastrics_table', 29),
(803, '2022_03_06_105356_create_mhp_l_u_q_s_table', 29),
(804, '2022_03_06_105841_create_mhp_right_lumbers_table', 29),
(805, '2022_03_07_051055_create_mhp_gestros_table', 30),
(806, '2022_03_07_060634_create_mhp_gestro_histories_table', 31),
(807, '2022_03_07_061630_create_mhp_gestro_abdomens_table', 32),
(808, '2022_03_07_044235_create_mhp_sites_table', 33),
(809, '2022_03_07_051214_create_mhp_radiations_table', 33),
(810, '2022_03_07_053817_create_mhp_patterns_table', 33),
(811, '2022_03_07_054908_create_mhp_durations_table', 33),
(812, '2022_03_07_063056_create_mhp_frequencies_table', 33),
(813, '2022_03_07_063539_create_mhp_scores_table', 33),
(814, '2022_03_07_063819_create_mhp_vomitings_table', 33),
(815, '2022_03_07_064050_create_mhp_dysphagias_table', 33),
(816, '2022_03_07_064305_create_mhp_diarrhoeas_table', 33),
(817, '2022_03_07_065214_create_mhp_stool_types_table', 34),
(818, '2022_03_07_070430_create_mhp_p_r_bleeds_table', 34),
(819, '2022_03_07_080749_create_mhp_e_o_m_accomodations_table', 34),
(820, '2022_03_07_081048_create_mhp_dry_retinoscopies_table', 34),
(821, '2022_03_07_081427_create_mhp_maddox_wings_table', 34),
(822, '2022_03_07_081716_create_mhp_mid_line_crossings_table', 34),
(823, '2022_03_08_044722_create_mhp_pen_grips_table', 35),
(824, '2022_03_08_052705_create_mhp_postures_table', 35),
(825, '2022_03_08_053354_create_mhp_color_visions_table', 35),
(826, '2022_03_08_053820_create_mhp_dilates_table', 35),
(827, '2022_03_08_061350_create_mhp_c_d_discs_table', 35),
(828, '2022_03_08_071722_create_mhp_movements_table', 35),
(829, '2022_03_08_073805_create_mhp_tender_over_spinus_process_ats_table', 35),
(830, '2022_03_08_084150_create_mhp_tenerness_over_facet_joins_table', 35),
(831, '2022_03_08_092159_create_mhp_inspections_table', 35),
(832, '2022_03_08_092829_create_mhp_sudden_anaesthesias_table', 35),
(833, '2022_03_08_104552_create_mhp_thoracic_kyphoses_table', 35),
(834, '2022_03_08_105811_create_mhp_lumber_lordoses_table', 35),
(835, '2022_03_08_110836_create_mhp_spines_table', 35),
(836, '2022_03_08_113431_create_mhp_pain_into_knees_table', 35),
(837, '2022_03_08_074711_create_mhp_digitals_table', 36),
(838, '2022_03_08_095442_create_mhp_cards_table', 36),
(839, '2022_03_08_102925_create_mhp_branches_table', 36),
(840, '2022_03_08_105329_create_mhp_banks_table', 36),
(841, '2022_03_10_041318_create_mhp_payments_table', 37),
(842, '2022_03_10_111317_drop_users_table', 38),
(843, '2022_03_10_101806_create_mhp_shape_and_contours_table', 39),
(844, '2022_03_10_103759_create_mhp_anterior_views_table', 39),
(845, '2022_03_10_104340_create_mhp_level_of_spine_of_scapulas_table', 39),
(846, '2022_03_10_104630_create_mhp_winged_scapulas_table', 39),
(847, '2022_03_10_105906_create_mhp_wrists_table', 39),
(848, '2022_03_10_110116_create_mhp_metacarpophalangeal_joints_table', 39),
(849, '2022_03_10_113331_create_mhp_proximal_interphalangeal_joints_table', 39),
(854, '2022_03_10_115104_create_mhp_distal_interphalangeal_joints_table', 40),
(855, '2022_03_12_053228_create_mhp_cns_table', 41),
(856, '2022_03_12_053533_create_cns_left_values_table', 41),
(857, '2022_03_12_062705_create_cns_right_values_table', 41),
(858, '2022_03_12_072440_create_mhp_main_body_parts_table', 41),
(859, '2022_03_12_095016_create_cns_upper_limbs_table', 41),
(860, '2022_03_12_095401_create_cns_powers_table', 41),
(861, '2022_03_12_095733_create_cns_the_radial_nerves_table', 41),
(862, '2022_03_12_095933_create_cns_jerk_c1_c8_s_table', 41),
(866, '2022_03_12_100132_create_cns_finger_nose_tests_table', 42),
(869, '2022_03_12_104014_create_cns_picture_upper_limb_dermatomes_table', 43),
(871, '2022_03_12_115015_drop_mhp_cns_table', 44),
(872, '2022_03_13_052104_create_mhp_cns_part1s_table', 45),
(873, '2022_03_13_052124_create_mhp_cns_part2s_table', 45),
(874, '2022_03_13_063023_create_mhp_cns_cn1s_table', 46),
(875, '2022_03_13_063039_create_mhp_cns_cn2s_table', 46),
(876, '2022_03_13_063104_create_mhp_cns_cn3s_table', 46),
(877, '2022_03_13_085541_create_mhp_cns_cn4s_table', 47),
(878, '2022_03_13_085550_create_mhp_cns_cn5s_table', 47),
(879, '2022_03_13_085559_create_mhp_cns_cn6s_table', 47),
(880, '2022_03_13_085608_create_mhp_cns_cn7s_table', 47),
(881, '2022_03_13_085617_create_mhp_cns_cn8s_table', 47),
(882, '2022_03_13_112118_create_mhp_cns_visual_fields_table', 48),
(883, '2022_03_13_055233_create_mhp_sub_body_parts_table', 49),
(884, '2022_03_13_070933_create_mhp_doctor_fee_names_table', 50),
(885, '2022_03_15_092139_create_mhp_cns_upper_limbs_table', 51),
(886, '2022_03_14_111422_create_mhp_symptoms_anatomies_table', 52),
(887, '2022_03_15_062304_create_mhp_lesion_middles_table', 52),
(888, '2022_03_15_064008_create_mhp_lesion_rights_table', 52),
(889, '2022_03_15_065033_create_mhp_external_observations_table', 52),
(890, '2022_03_15_065332_create_mhp_phoria_ones_table', 52),
(891, '2022_03_15_065618_create_mhp_phoria_twos_table', 52),
(892, '2022_03_15_065917_create_mhp_shapes_table', 52),
(893, '2022_03_15_070807_create_mhp_pursuits_table', 52),
(894, '2022_03_15_071030_create_mhp_saccades_table', 52),
(895, '2022_03_15_071444_create_mhp_neuro_opthals_table', 52),
(896, '2022_03_15_102424_create_mhp_neuro_opthalmologies_table', 52),
(897, '2022_03_15_105342_create_mhp_pen_grip_rights_table', 52),
(898, '2022_03_15_100250_create_mhp_media_types_table', 53),
(899, '2022_03_16_041552_drop_doc_time_slots_table', 54),
(900, '2022_03_20_051641_create_mhp_p_h_q9_questionnaires_table', 55),
(901, '2022_03_20_052829_create_mhp_p_h_q9_questionnaire_values_table', 55),
(902, '2022_03_20_064038_create_mhp_gait_limpings_table', 56),
(903, '2022_03_21_043643_create_mhp_symptom_anatomies_table', 57),
(904, '2022_03_22_104308_create_mhp_invoices_table', 58),
(905, '2022_03_24_081710_create_mhp_parietal_lobes_table', 59),
(906, '2022_03_24_083027_create_mhp_temporal_lobes_table', 59),
(907, '2022_03_24_084826_create_mhp_frontal_lobes_table', 59),
(908, '2022_03_24_094525_create_mhp_occipital_lobes_table', 59),
(909, '2022_03_27_103424_create_mhp_genito_urinaries_table', 59),
(910, '2022_03_27_105710_create_mhp_genito_urinary_histories_table', 60),
(911, '2022_03_27_072553_create_mhp_all_body_part_front_backs_table', 61),
(912, '2022_03_27_073411_create_mhp_areolars_table', 61),
(913, '2022_03_27_073705_create_mhp_skin_shapes_table', 61),
(914, '2022_03_27_080455_create_mhp_colors_table', 61),
(915, '2022_03_27_080926_create_mhp_palpations_table', 61),
(916, '2022_03_27_081225_create_mhp_temparatures_table', 61),
(917, '2022_03_27_082258_create_mhp_arrangements_table', 61),
(918, '2022_03_28_064512_create_mhp_ears_table', 62),
(919, '2022_03_28_064839_create_mhp_ear_discharges_table', 62),
(920, '2022_03_28_065132_create_mhp_deafnesses_table', 62),
(921, '2022_03_28_065400_create_mhp_ent_others_table', 62),
(922, '2022_03_28_065627_create_mhp_renne_tests_table', 62),
(923, '2022_03_29_041729_create_mhp_diagnosis_procedures_table', 63),
(924, '2022_03_29_060344_create_mhp_diagnosis_procedure_fors_table', 63),
(925, '2022_03_29_061545_create_mhp_diagnosis_procedure_actions_table', 63),
(926, '2022_03_30_080617_create_mhp_ulsers_table', 64),
(927, '2022_03_31_043516_create_mhp_eye_exami_part1s_table', 65),
(928, '2022_03_31_044715_create_mhp_eye_exami_part2s_table', 66),
(929, '2022_03_31_063749_create_mhp_eye_part1_external_observations_table', 67),
(930, '2022_03_31_094026_create_mhp_eye_part1_phoria_ones_table', 68),
(931, '2022_03_31_094133_create_mhp_eye_part1_phoria_twos_table', 68),
(932, '2022_03_31_095745_create_mhp_eye_part1_pursuits_table', 69),
(933, '2022_03_31_100124_create_mhp_eye_part1_worth4_dots_table', 69),
(934, '2022_03_31_070920_create_mhp_continuouses_table', 70),
(935, '2022_03_31_074354_create_mhp_intermittents_table', 70),
(936, '2022_03_31_074559_create_mhp_speech_nurologies_table', 70),
(937, '2022_03_31_100003_create_mhp_inspection_looks_table', 70),
(938, '2022_03_31_103003_create_mhp_move_hip_pelvis_table', 70),
(939, '2022_03_31_093804_create_mhp_ingredients_table', 71),
(940, '2022_03_31_100423_create_mhp_custom_restrictions_table', 71),
(941, '2022_03_31_121027_create_mhp_medicine_categories_table', 71),
(942, '2022_04_02_112805_create_mhp_pain_along_anteriors_table', 71),
(943, '2022_04_02_115956_create_mhp_pain_over_posteriors_table', 71),
(944, '2022_04_02_120352_create_mhp_walk_on_heels_table', 71),
(945, '2022_04_02_120903_create_mhp_posture_thoracos_table', 71),
(946, '2022_04_03_045746_create_mhp_mental_healths_table', 71),
(947, '2022_04_03_051231_create_mhp_mental_histories_table', 71),
(948, '2022_04_03_051439_create_mhp_mental_appearances_table', 71),
(949, '2022_04_03_051512_create_mhp_mental_behaviours_table', 71),
(950, '2022_04_03_051602_create_mhp_mental_attitudetowardsexaminations_table', 71),
(951, '2022_04_03_051628_create_mhp_mental_moods_table', 71),
(952, '2022_04_03_051700_create_mhp_mental_affects_table', 71),
(953, '2022_04_03_051728_create_mhp_mental_speeches_table', 71),
(954, '2022_04_03_051750_create_mhp_mental_perceptual_disturbances_table', 71),
(955, '2022_04_03_032553_create_mhp_tender_over_spinus_thoracos_table', 72),
(956, '2022_04_03_033301_create_mhp_tenderness_over_facet_thoracos_table', 72),
(957, '2022_04_03_040325_create_mhp_tenderness_over_facet_l_r_b_thoracos_table', 72),
(958, '2022_04_03_072917_create_mhp_lying_on_couches_table', 72),
(959, '2022_04_04_055507_create_mhp_mental_psq9_ques1sts_table', 73),
(960, '2022_04_04_055744_create_mhp_mental_psq9_ques2nds_table', 73),
(961, '2022_04_03_040931_create_mhp_ingerdient_children_table', 74),
(962, '2022_04_03_041629_create_mhp_custom_medicines_table', 74),
(963, '2022_04_04_055604_create_mhp_l1_l2_hip_flexions_table', 74),
(964, '2022_04_04_060934_create_mhp_l3_to_l5_powers_table', 74),
(965, '2022_04_04_061350_create_mhp_l1_l2_sensations_table', 74),
(966, '2022_04_04_062325_create_mhp_l3_to_l5_sensations_table', 74),
(967, '2022_04_04_062904_create_mhp_s1_to_s4_tests_table', 74),
(968, '2022_04_05_070439_create_ent_examinations_table', 75),
(969, '2022_04_06_043504_create_mhp_ent_examinations_table', 76),
(970, '2022_04_06_061807_create_mhp_ent_examin_ear_lesions_table', 77),
(971, '2022_04_06_061834_create_mhp_ent_examin_ent_others_table', 77),
(972, '2022_04_06_041218_create_mhp_radiology_centers_table', 78),
(973, '2022_04_06_044301_create_mhp_radiology_test_names_table', 78),
(974, '2022_04_06_050400_create_mhp_clinical_indications_table', 78),
(975, '2022_04_06_072808_create_mhp_radiologies_table', 78),
(976, '2022_04_05_080931_create_mhp_tender_tenerness_over_l1_to_l6_thoracos_table', 79),
(977, '2022_04_06_063637_create_mhp_test_hip_pelvis_table', 79),
(978, '2022_04_06_064246_create_mhp_inspection_look_hip_pelvis_table', 79),
(979, '2022_04_06_081531_create_mhp_auto_fills_table', 79),
(980, '2022_04_07_055416_create_mhp_neurologicals_table', 79),
(981, '2022_04_07_055925_create_mhp_neurological_histories_table', 79),
(982, '2022_04_07_060438_create_mhp_neurological_speeches_table', 79),
(983, '2022_04_07_055251_create_mhp_billing_providers_table', 80),
(984, '2022_04_07_075506_create_mhp_given_bies_table', 80),
(985, '2022_04_07_083420_create_mhp_batch_nos_table', 80),
(986, '2022_04_07_092540_create_mhp_immunisation_routes_table', 80),
(987, '2022_04_07_093002_create_mhp_immunisation_sites_table', 80),
(988, '2022_04_09_052157_create_mhp_neurological_parietal_lobes_table', 81),
(989, '2022_04_09_052828_create_mhp_neurological_frontal_lobes_table', 82),
(990, '2022_04_09_052857_create_mhp_neurological_temporal_lobes_table', 82),
(991, '2022_04_09_052923_create_mhp_neurological_occipital_lobes_table', 82),
(992, '2022_04_09_044236_create_mhp_great_doc_diagnoses_table', 83),
(993, '2022_04_09_072323_create_mhp_great_doc_procedures_table', 83),
(994, '2022_04_09_042456_create_mhp_shoulder_movements_table', 84),
(995, '2022_04_09_043040_create_mhp_painful_arcs_table', 84),
(996, '2022_04_09_043331_create_mhp_resisted_movements_table', 84),
(997, '2022_04_09_052438_create_mhp_nails_table', 84),
(998, '2022_04_09_053735_create_mhp_dorsum_of_hands_table', 84),
(999, '2022_04_09_054109_create_mhp_fingers_table', 84),
(1000, '2022_04_09_054413_create_mhp_tenders_table', 84),
(1001, '2022_04_09_054751_create_mhp_flexon_tendons_table', 84),
(1002, '2022_04_09_070958_create_mhp_wrist_palpations_table', 84),
(1003, '2022_04_09_081352_create_mhp_metacarpophalangeal_joint_palpations_table', 84),
(1004, '2022_04_09_082544_create_mhp_proximal_interphalangeal_palpations_table', 84),
(1005, '2022_04_10_071832_create_mhp_great_doc_resons_table', 85),
(1006, '2022_04_10_080427_create_mhp_volume_womens_table', 86),
(1007, '2022_04_10_081036_create_mhp_p_v_bleedings_table', 86),
(1008, '2022_04_10_081449_create_mhp_p_v_discharges_table', 86),
(1009, '2022_04_10_081743_create_mhp_vulvals_table', 86),
(1010, '2022_04_10_082052_create_mhp_miscarriages_table', 86),
(1011, '2022_04_10_082507_create_mhp_breast_lumps_table', 86),
(1012, '2022_04_10_082926_create_mhp_breast_pains_table', 86),
(1013, '2022_04_10_083332_create_mhp_breast_nipple_discharges_table', 86),
(1014, '2022_04_10_083705_create_mhp_vulvas_table', 86),
(1015, '2022_04_10_084306_create_mhp_pelvic_masses_table', 86),
(1016, '2022_04_10_084619_create_mhp_bartholin_glandes_table', 86),
(1017, '2022_04_10_084900_create_mhp_cervixes_table', 86),
(1018, '2022_04_10_085134_create_mhp_c_s_t_s_table', 86),
(1019, '2022_04_10_094322_create_mhp_skin_symptoms_table', 86),
(1020, '2022_04_11_053638_create_mhp_skin_examinations_table', 87),
(1021, '2022_04_11_062758_create_mhp_skin_exami_histories_table', 88),
(1022, '2022_04_11_063121_create_mhp_skin_exami_types_table', 88),
(1023, '2022_04_11_045251_create_mhp_great_doc_auto_fills_table', 89),
(1024, '2022_04_11_064804_create_mhp_skin_types_table', 89),
(1025, '2022_04_13_095114_create_mhp_skin_exmi_images_table', 90),
(1026, '2022_04_13_095228_create_mhp_skin_exmi_symtoms_table', 90),
(1027, '2022_04_13_083155_create_mhp_doctor_chambers_table', 91),
(1028, '2022_04_16_044900_create_mhp_flexor_digitorum_profundus_tests_table', 92),
(1029, '2022_04_16_050736_create_mhp_flexor_digitorum_superficialis_tests_table', 92),
(1030, '2022_04_16_065447_create_mhp_inspection_male_females_table', 92),
(1031, '2022_04_16_073212_create_mhp_at90_flextion_palpations_table', 92),
(1032, '2022_04_16_074055_create_mhp_at_full_flextion_palpations_table', 92),
(1033, '2022_04_16_082158_create_mhp_flextion0to150_examinations_table', 92),
(1035, '2022_04_17_041452_create_mhp_women_health_examis_table', 93),
(1036, '2022_04_17_052838_create_mhp_women_health_exami_vulvas_table', 94),
(1037, '2022_04_17_052914_create_mhp_women_health_exami_breast_nipple_discharges_table', 94),
(1043, '2022_04_17_052935_create_mhp_women_health_exami_csts_table', 95),
(1044, '2022_04_17_053058_create_mhp_women_health_exami_breast_lumps_table', 95),
(1045, '2022_04_17_053517_create_mhp_women_health_exami_obstetrics_table', 95),
(1046, '2022_04_17_053545_create_mhp_women_health_exami_cervixes_table', 95),
(1047, '2022_04_17_053614_create_mhp_women_health_exami_gynecologies_table', 95),
(1048, '2022_04_17_055632_create_mhp_anterior_view_knees_table', 96),
(1049, '2022_04_17_060751_create_mhp_posterior_view_knees_table', 96),
(1050, '2022_04_17_061136_create_mhp_lateral_view_knees_table', 96),
(1051, '2022_04_17_061606_create_mhp_stance_swat_knees_table', 96),
(1052, '2022_04_17_061927_create_mhp_margin_condyle_tibials_table', 96),
(1053, '2022_04_18_055819_create_mhp_current_excercise_levels_table', 97),
(1054, '2022_04_18_062004_create_mhp_aerobic_exercises_table', 97),
(1055, '2022_04_18_062630_create_mhp_strength_buildings_table', 97),
(1056, '2022_04_18_062946_create_mhp_endurances_table', 97),
(1057, '2022_04_18_063203_create_mhp_frequency_physicals_table', 97),
(1058, '2022_04_18_082309_create_mhp_toes_lefts_table', 97),
(1059, '2022_04_18_083703_create_mhp_m_t_p_joints_table', 97),
(1060, '2022_04_18_083915_create_mhp_p_i_p_joints_table', 97),
(1061, '2022_04_18_084146_create_mhp_d_i_p_joints_table', 97),
(1062, '2022_04_18_084503_create_mhp_toes_rights_table', 97),
(1063, '2022_04_18_085822_create_mhp_dorsum_of_feet_table', 97),
(1064, '2022_04_18_074435_create_mhp_review_names_table', 98),
(1065, '2022_04_18_091746_create_mhp_great_doc_reviews_table', 98),
(1066, '2022_04_21_063601_create_mhp_reminder_reasons_table', 99),
(1067, '2022_04_21_085611_create_mhp_physical_activity_advice_table', 99),
(1068, '2022_04_23_054308_create_mhp_great_doc_reminders_table', 100),
(1069, '2022_04_23_072440_create_mhp_physical_activity_aerobic_exercises_table', 100),
(1070, '2022_04_23_092434_create_mhp_physical_activity_strength_buildings_table', 100),
(1071, '2022_04_23_093722_create_mhp_physical_activity_endurances_table', 100),
(1072, '2022_04_25_053930_create_mhp_prescriptions_table', 101),
(1073, '2022_04_25_071544_create_mhp_antenatal_visits_table', 102),
(1074, '2022_04_25_085424_create_mhp_antenatal_visits_b_m_i_targets_table', 102),
(1075, '2022_04_26_054042_create_mhp_prescriptions_lists_table', 102),
(1076, '2022_04_26_062802_create_mhp_care_suggestions_table', 103),
(1077, '2022_04_26_065339_create_mhp_care_details_table', 103),
(1078, '2022_04_26_093436_create_mhp_great_doc_care_suggestions_table', 103),
(1079, '2022_05_07_121631_create_mhp_lab_modules_table', 104),
(1080, '2022_05_10_050433_create_musculo_sketal_carvical_spines_table', 105),
(1081, '2022_05_10_073238_create_mhp_musculo_sketal_carvical_spine_momement1s_table', 106),
(1082, '2022_05_10_102804_create_mhp_musculo_sketal_carvical_spine_tendernes_over_spinuses_table', 107),
(1083, '2022_05_10_102836_create_mhp_musculo_sketal_carvical_spine_tendernes_over_fact_joins_table', 107),
(1084, '2022_05_11_053233_create_mhp_musculo_sketal_carvical_spine_movement2nds_table', 108),
(1085, '2022_05_11_053403_create_mhp_musculo_sketal_carvical_spine_histories_table', 108),
(1088, '2022_05_12_061743_create_mhp_musculo_sketal_thoraco_lumber_spines_table', 109);

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

--
-- Dumping data for table `mre_abnormal_breathings`
--

INSERT INTO `mre_abnormal_breathings` (`id`, `abnormalbreathing_name`, `status_id`, `selection_criteria`, `image`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'qawsdas', 2, 'single', NULL, 1, NULL, NULL, '2022-02-17 03:57:48', '2022-02-17 04:20:29'),
(2, 'asda updated', 2, 'multiple', '102437.jpg', 1, NULL, NULL, '2022-02-17 04:07:19', '2022-02-26 01:43:12'),
(3, 'Kussmaul', 1, 'single', '32067attractive-man-breathing-outdoor-sky-background-35879609.jpg', 0, NULL, NULL, '2022-02-17 05:44:39', '2022-02-26 01:44:02'),
(4, 'Cheyne Stokes', 2, 'single', '753826.jpg', 0, NULL, NULL, '2022-02-17 06:09:47', '2022-02-26 01:43:36'),
(5, 'Sleep Apnoea', 1, 'multiple', '82367istockphoto-926051092-612x612.jpg', 0, NULL, NULL, '2022-02-17 06:36:00', '2022-02-26 01:43:02'),
(6, 'Hyperventilation', 1, 'single', '16754istockphoto-1126240522-612x612.jpg', 0, NULL, NULL, '2022-02-26 01:44:35', '2022-02-26 01:44:35'),
(7, 'Paradoxical', 1, 'single', '89680istockphoto-926051092-612x612.jpg', 0, NULL, NULL, '2022-02-26 01:45:02', '2022-02-26 01:45:02'),
(8, 'Pectus Carinatum', 1, 'multiple', '83070f0251029-800px-wm.jpg', 0, NULL, NULL, '2022-02-26 01:45:29', '2022-02-26 01:45:29');

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

--
-- Dumping data for table `mre_breath_sounds`
--

INSERT INTO `mre_breath_sounds` (`id`, `breathsound_name`, `status_id`, `selection_criteria`, `image`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'dsff', 2, 'single', NULL, 1, NULL, NULL, '2022-02-17 03:51:52', '2022-02-17 06:10:42'),
(2, 'fghfgh', 2, 'single', NULL, 1, NULL, NULL, '2022-02-17 04:29:41', '2022-02-17 06:10:47'),
(3, 'asdas', 2, 'single', '740692.jpeg', 1, NULL, NULL, '2022-02-17 04:45:30', '2022-02-17 06:25:27'),
(4, 'uuuuuuuuuuuuuuuuuuuuuuuuuuuuu', 2, 'single', '993561.jpg', 1, NULL, NULL, '2022-02-17 04:46:51', '2022-02-17 06:25:24'),
(5, 'Normal', 1, 'single', '811684.jpg', 0, NULL, NULL, '2022-02-17 04:48:50', '2022-02-26 23:44:42'),
(6, 'Bronchial', 1, 'single', '62610chest-anatomy-artwork-D65NNP.jpg', 0, NULL, NULL, '2022-02-26 23:45:50', '2022-02-26 23:45:50'),
(7, 'Increased', 1, 'multiple', '60617istockphoto-1126240522-612x612.jpg', 0, NULL, NULL, '2022-02-26 23:46:29', '2022-02-26 23:46:29');

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

--
-- Dumping data for table `mre_chest_expansions`
--

INSERT INTO `mre_chest_expansions` (`id`, `chestexpansion_name`, `status_id`, `selection_criteria`, `image`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'fisrt expansion aaaaaaaaaaaaa', 2, 'single', NULL, 1, NULL, NULL, '2022-02-17 03:51:24', '2022-02-17 06:29:05'),
(2, 'gfhg', 2, 'single', NULL, 1, NULL, NULL, '2022-02-17 04:54:30', '2022-02-17 06:29:02'),
(3, 'gfhg', 2, 'single', NULL, 1, NULL, NULL, '2022-02-17 04:54:31', '2022-02-17 04:54:38'),
(4, 'first chest expension added', 2, 'single', '70831IMG_20210611_0004.jpg', 1, NULL, NULL, '2022-02-17 05:04:10', '2022-02-17 06:28:59'),
(5, 'expresion three', 2, 'single', '897841.jpg', 0, NULL, NULL, '2022-02-17 06:28:53', '2022-03-01 23:52:47'),
(6, 'expresion two', 2, 'single', '219874.jpg', 0, NULL, NULL, '2022-02-17 06:29:30', '2022-03-01 23:52:19'),
(7, 'expansion one', 2, 'single', '31605images.jpg', 0, NULL, NULL, '2022-02-18 23:51:21', '2022-03-01 23:52:02');

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

--
-- Dumping data for table `mre_chest_shapes`
--

INSERT INTO `mre_chest_shapes` (`id`, `chestshape_name`, `status_id`, `selection_criteria`, `image`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(16, 'Normal', 1, 'single', '84202images.jpg', 0, NULL, NULL, '2022-02-19 03:15:09', '2022-02-21 22:53:16'),
(17, 'Barrel Shaped', 1, 'multiple', '4296istockphoto-1133123956-612x612.jpg', 0, NULL, NULL, '2022-02-21 22:54:19', '2022-02-21 22:57:15'),
(18, 'Kyphosis', 1, 'single', '90302chest-anatomy-artwork-D65NNP.jpg', 0, NULL, NULL, '2022-02-21 22:57:03', '2022-02-21 22:57:03'),
(19, 'Scoliosis', 1, 'single', '74589f0251029-800px-wm.jpg', 0, NULL, NULL, '2022-02-21 22:59:28', '2022-02-21 22:59:28'),
(20, 'Pectus Excavatum', 1, 'multiple', '20049f0251029-800px-wm.jpg', 0, NULL, NULL, '2022-02-21 22:59:59', '2022-02-21 22:59:59'),
(21, 'Pectus Carinatum', 1, 'single', '75970chest-anatomy-artwork-D65NNP.jpg', 0, NULL, NULL, '2022-02-21 23:00:29', '2022-02-21 23:00:29');

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

--
-- Dumping data for table `mre_crepitations`
--

INSERT INTO `mre_crepitations` (`id`, `crepitation_name`, `status_id`, `selection_criteria`, `image`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'xfgdf', 2, 'single', NULL, 1, NULL, NULL, '2022-02-19 04:40:34', '2022-02-19 04:47:53'),
(2, 'Left Upper', 1, 'multiple', '55478images.jpg', 0, NULL, NULL, '2022-02-19 04:40:51', '2022-03-02 00:07:19'),
(3, 'Left Lower', 1, 'single', '54076attractive-man-breathing-outdoor-sky-background-35879609.jpg', 0, NULL, NULL, '2022-03-02 00:07:46', '2022-03-02 00:07:46'),
(4, 'Right Upper', 1, 'single', '83012download (1).jpg', 0, NULL, NULL, '2022-03-02 00:08:10', '2022-03-02 00:08:10'),
(5, 'Right Lower', 1, 'single', '68438istockphoto-1126240522-612x612.jpg', 0, NULL, NULL, '2022-03-02 00:08:29', '2022-03-02 00:08:29'),
(6, 'Both Upper', 1, 'single', '52390istockphoto-1126240522-612x612.jpg', 0, NULL, NULL, '2022-03-02 00:08:48', '2022-03-02 00:08:48'),
(7, 'Both Lower', 1, 'multiple', '81965istockphoto-926051092-612x612.jpg', 0, NULL, NULL, '2022-03-02 00:09:11', '2022-03-02 00:09:11');

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

--
-- Dumping data for table `mre_percussions`
--

INSERT INTO `mre_percussions` (`id`, `percussion_name`, `status_id`, `selection_criteria`, `image`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'first percussion added', 2, 'single', '70436images.jpg', 1, NULL, NULL, '2022-02-19 01:06:29', '2022-02-19 01:19:29'),
(2, 'Stony Dull', 1, 'multiple', '591981.jpg', 0, NULL, NULL, '2022-02-19 01:13:26', '2022-02-26 03:20:01'),
(3, 'Dull', 2, 'single', '27739unnamed.jpg', 0, NULL, NULL, '2022-02-19 01:14:56', '2022-02-26 03:19:39'),
(4, 'Symmetrical normal', 1, 'single', '84546images.jpg', 0, NULL, NULL, '2022-02-19 01:15:49', '2022-02-26 03:19:21'),
(5, 'Hyper Resonant', 1, 'single', '64488istockphoto-1133123956-612x612.jpg', 0, NULL, NULL, '2022-02-26 03:20:31', '2022-02-26 03:20:31');

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

--
-- Dumping data for table `mre_symptoms`
--

INSERT INTO `mre_symptoms` (`id`, `symptoms_name`, `status_id`, `selection_criteria`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Witnessed Aponea', 1, 'multiple', 0, NULL, NULL, '2022-03-03 02:37:14', '2022-03-03 02:43:40'),
(2, 'Nocturnal Gasping', NULL, NULL, 0, NULL, NULL, '2022-03-03 02:43:57', '2022-03-03 02:43:57'),
(3, 'Chocking', NULL, NULL, 0, NULL, NULL, '2022-03-03 02:44:11', '2022-03-03 02:44:11'),
(4, 'Disruptive Sleep', NULL, NULL, 0, NULL, NULL, '2022-03-03 02:44:23', '2022-03-03 02:44:23'),
(5, 'Daytime Sleepiness', NULL, NULL, 0, NULL, NULL, '2022-03-03 02:44:36', '2022-03-03 02:44:36'),
(6, 'Unrefeshing Sleep', NULL, NULL, 0, NULL, NULL, '2022-03-03 02:44:50', '2022-03-03 02:44:50');

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

--
-- Dumping data for table `mre_vocal_fremituses`
--

INSERT INTO `mre_vocal_fremituses` (`id`, `vocalfremitus_name`, `status_id`, `selection_criteria`, `image`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'sdfs', 2, 'single', NULL, 1, NULL, NULL, '2022-02-19 01:29:53', '2022-02-26 05:47:46'),
(2, 'Both', 2, 'single', '93764attractive-man-breathing-outdoor-sky-background-35879609.jpg', 0, NULL, NULL, '2022-02-19 01:40:42', '2022-02-26 05:47:23'),
(3, 'Equal', 2, 'single', '578305.jpg', 0, NULL, NULL, '2022-02-19 01:46:48', '2022-02-26 05:47:05'),
(4, 'Normal', 2, 'multiple', '25788images.jpg', 0, NULL, NULL, '2022-02-19 01:48:11', '2022-02-26 05:41:54'),
(5, 'Reduced', 1, 'single', '11325chest-anatomy-artwork-D65NNP.jpg', 0, NULL, NULL, '2022-02-26 05:48:00', '2022-02-26 05:48:00'),
(6, 'Increased', 1, 'multiple', '15086download (1).jpg', 0, NULL, NULL, '2022-02-26 05:48:21', '2022-02-26 05:48:21');

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

--
-- Dumping data for table `mre_vocal_resonances`
--

INSERT INTO `mre_vocal_resonances` (`id`, `vocalresonance_name`, `status_id`, `selection_criteria`, `image`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'asd', 1, 'single', NULL, 1, NULL, NULL, '2022-02-19 03:32:19', '2022-03-02 01:13:58'),
(2, 'check', 2, 'single', '808817.jpg', 1, NULL, NULL, '2022-02-19 03:35:13', '2022-03-02 01:16:06'),
(3, 'Increased', 2, 'single', '82456download (1).jpg', 0, NULL, NULL, '2022-02-19 03:36:47', '2022-03-02 01:15:39'),
(4, 'Normal Left', 2, 'single', '62868istockphoto-1133123956-612x612.jpg', 0, NULL, NULL, '2022-02-19 03:39:30', '2022-03-02 01:15:04'),
(5, 'Normal Right', 2, 'single', '54715istockphoto-926051092-612x612.jpg', 0, NULL, NULL, '2022-02-19 03:39:31', '2022-03-02 01:14:44'),
(6, 'Muffled', 1, 'multiple', '22858istockphoto-1126240522-612x612.jpg', 0, NULL, NULL, '2022-02-19 03:55:44', '2022-03-02 01:14:23');

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

--
-- Dumping data for table `mre_wheerings`
--

INSERT INTO `mre_wheerings` (`id`, `wheering_name`, `status_id`, `selection_criteria`, `image`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'rakib', 1, 'single', NULL, 1, NULL, NULL, '2022-02-19 00:27:15', '2022-02-19 00:48:40'),
(2, 'test wheering', 2, 'single', 'images.jpg', 1, NULL, NULL, '2022-02-19 00:38:09', '2022-02-19 00:48:38'),
(3, 'again addded', 2, 'single', '4.jpg', 1, NULL, NULL, '2022-02-19 00:39:12', '2022-02-19 00:48:35'),
(4, 'dsvcd', 2, 'single', '2.jpeg', 1, NULL, NULL, '2022-02-19 00:44:44', '2022-02-19 00:48:43'),
(5, 'asds updatedvsdfg', 2, 'single', '873592.jpeg', 0, NULL, NULL, '2022-02-19 00:46:26', '2022-02-19 00:55:41'),
(6, 'trt', 2, 'multiple', '39265IMG_20210611_0004.jpg', 0, NULL, NULL, '2022-02-19 00:58:49', '2022-02-19 00:58:49'),
(7, 'fsdf', 2, 'single', '72499images.jpg', 0, NULL, NULL, '2022-02-19 00:59:46', '2022-02-19 00:59:46'),
(8, 'again added', 2, 'single', '281656.jpg', 0, NULL, NULL, '2022-02-19 01:00:57', '2022-02-19 01:00:57'),
(9, 'again added', 2, 'single', '15846unnamed.jpg', 0, NULL, NULL, '2022-02-19 01:00:58', '2022-02-19 01:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `musculo_sketal_carvical_spines`
--

CREATE TABLE `musculo_sketal_carvical_spines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `posture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `musculo_sketal_carvical_spines`
--

INSERT INTO `musculo_sketal_carvical_spines` (`id`, `patient_id`, `posture`, `created_at`, `updated_at`) VALUES
(1, '1', 'Support Hand', '2022-05-10 00:22:30', '2022-05-10 00:22:30'),
(2, '1', 'Support Hand', '2022-05-10 03:46:05', '2022-05-10 03:46:05'),
(3, '1', 'Support Hand', '2022-05-10 03:46:46', '2022-05-10 03:46:46'),
(4, '1', 'Support Hand', '2022-05-10 03:47:00', '2022-05-10 03:47:00'),
(5, '1', 'Support Hand', '2022-05-10 03:49:57', '2022-05-10 03:49:57'),
(6, '1', 'Straight', '2022-05-10 04:23:25', '2022-05-10 04:23:25'),
(7, '1', 'Straight', '2022-05-10 04:24:53', '2022-05-10 04:24:53'),
(8, '1', 'Straight', '2022-05-10 04:25:08', '2022-05-10 04:25:08'),
(9, '1', 'Straight', '2022-05-10 04:53:55', '2022-05-10 04:53:55'),
(10, '1', 'Straight', '2022-05-10 05:03:53', '2022-05-10 05:03:53'),
(11, NULL, 'Support Hand', '2022-05-10 23:29:41', '2022-05-10 23:29:41'),
(12, '1', 'Support Hand', '2022-05-10 23:30:57', '2022-05-10 23:30:57'),
(13, '1', NULL, '2022-05-10 23:46:39', '2022-05-10 23:46:39'),
(14, '1', 'Support Hand', '2022-05-12 01:27:46', '2022-05-12 01:27:46'),
(15, '1', 'Support Hand', '2022-05-12 01:29:57', '2022-05-12 01:29:57'),
(16, '1', 'Support Hand', '2022-05-12 03:10:07', '2022-05-12 03:10:07'),
(17, '1', NULL, '2022-05-12 03:18:55', '2022-05-12 03:18:55'),
(18, '1', NULL, '2022-05-12 03:25:37', '2022-05-12 03:25:37'),
(19, '1', NULL, '2022-05-12 03:32:30', '2022-05-12 03:32:30');

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

--
-- Dumping data for table `ptn_blood_groups`
--

INSERT INTO `ptn_blood_groups` (`id`, `blood_group_name`, `delete_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'A+', 0, NULL, NULL, '2022-02-09 22:27:44', '2022-02-09 22:27:44'),
(2, 'B+', 0, NULL, NULL, '2022-02-09 22:27:52', '2022-02-09 22:27:52');

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
('bNXTWGZJ3iLBH5uAbmkRbUi5Vj5roQDGWekicKuD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSzd5dmk1Z2tySG9PeUdXVG1yeGdKUUkyM1h1UDUxU0pPM2pJTXQwMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1644734121),
('MsFc06OTWumKWEoB3M9B2XuMWD9GpC6S5cNz4Ixh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUdSN3VidmxEeVBOQnplQ3FpaURZMlJXcm41NnBrYVh6b0NyVnJTcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1645096995),
('O2yaFhRLsnuR6IbyYRbPpCKl6TJSOCNfYiLIKwpX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRElTcWlPak16R1l2M25RR2U1UkZuMXB1QzZsOXdtN0h5YW1XSG44dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1647325837),
('PmIfzbaTWoqdHp0BJq4o0YkbqnZj295TKAUq38Ga', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2RRdFBxMzN6cDlpbXBtOUxLOG0xeHI2VGNmSzM4bXN3RTdPaVAxciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly9sb2NhbGhvc3QvbWhwX3dlYi9taHBfc2VydmVyL3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1644644502),
('R9mY2adTMM4LVGgQnvQR4ZrhiR9764bRND5Acc3W', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFNraktMODZUZXFWalRzcjNtM2VJRnVldFRLV3JRTGMybUlGTHEzTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1644724852),
('UbIu1WefXdoBDZZwUWPzvuo1i77sM0W8aeN8NU4x', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiemJhOW9wMlZpaHR3dGRzdnZVTlVSMkwzTWVqQjlLQ0ZYek5pZUhPdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1644724876),
('ywyqzJ22OX8fSyywvmRrJekEOnUzwG6xZ5Rg1sWp', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:97.0) Gecko/20100101 Firefox/97.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYlh0eUZOUnhraEZiQVFyaVhxYUoyR1hMZzVyYmdCQUY3bEpjMWI0cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1645678151);

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `user_type`, `user_id`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Aminur Rahman', 'test@gmail.com', NULL, '$2y$10$votDwfjClWi1kNVzU8pyruAysj2rcl7Zb9akvnXdRYY3u3kDVHP2m', NULL, NULL, 'Doctor', '1', NULL, NULL, NULL, '2022-02-09 03:15:37', '2022-02-09 03:15:37');

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
-- Indexes for table `mhp_aerobic_exercises`
--
ALTER TABLE `mhp_aerobic_exercises`
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
-- Indexes for table `mhp_antenatal_visits`
--
ALTER TABLE `mhp_antenatal_visits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_antenatal_visits_b_m_i_targets`
--
ALTER TABLE `mhp_antenatal_visits_b_m_i_targets`
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
-- Indexes for table `mhp_care_details`
--
ALTER TABLE `mhp_care_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_care_suggestions`
--
ALTER TABLE `mhp_care_suggestions`
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
-- Indexes for table `mhp_cns`
--
ALTER TABLE `mhp_cns`
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
-- Indexes for table `mhp_current_excercise_levels`
--
ALTER TABLE `mhp_current_excercise_levels`
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
-- Indexes for table `mhp_dorsum_of_feet`
--
ALTER TABLE `mhp_dorsum_of_feet`
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
-- Indexes for table `mhp_d_i_p_joints`
--
ALTER TABLE `mhp_d_i_p_joints`
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
-- Indexes for table `mhp_endurances`
--
ALTER TABLE `mhp_endurances`
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
-- Indexes for table `mhp_frequency_physicals`
--
ALTER TABLE `mhp_frequency_physicals`
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
-- Indexes for table `mhp_great_doc_care_suggestions`
--
ALTER TABLE `mhp_great_doc_care_suggestions`
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
-- Indexes for table `mhp_great_doc_reminders`
--
ALTER TABLE `mhp_great_doc_reminders`
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
-- Indexes for table `mhp_lab_modules`
--
ALTER TABLE `mhp_lab_modules`
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
-- Indexes for table `mhp_musculo_sketal_carvical_spine_histories`
--
ALTER TABLE `mhp_musculo_sketal_carvical_spine_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_musculo_sketal_carvical_spine_momement1s`
--
ALTER TABLE `mhp_musculo_sketal_carvical_spine_momement1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_musculo_sketal_carvical_spine_movement2nds`
--
ALTER TABLE `mhp_musculo_sketal_carvical_spine_movement2nds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_musculo_sketal_carvical_spine_tendernes_over_fact_joins`
--
ALTER TABLE `mhp_musculo_sketal_carvical_spine_tendernes_over_fact_joins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_musculo_sketal_carvical_spine_tendernes_over_spinuses`
--
ALTER TABLE `mhp_musculo_sketal_carvical_spine_tendernes_over_spinuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_musculo_sketal_thoraco_lumber_spines`
--
ALTER TABLE `mhp_musculo_sketal_thoraco_lumber_spines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_m_t_p_joints`
--
ALTER TABLE `mhp_m_t_p_joints`
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
-- Indexes for table `mhp_physical_activity_advice`
--
ALTER TABLE `mhp_physical_activity_advice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_physical_activity_aerobic_exercises`
--
ALTER TABLE `mhp_physical_activity_aerobic_exercises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_physical_activity_endurances`
--
ALTER TABLE `mhp_physical_activity_endurances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_physical_activity_strength_buildings`
--
ALTER TABLE `mhp_physical_activity_strength_buildings`
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
-- Indexes for table `mhp_prescriptions`
--
ALTER TABLE `mhp_prescriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_prescriptions_lists`
--
ALTER TABLE `mhp_prescriptions_lists`
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
-- Indexes for table `mhp_p_i_p_joints`
--
ALTER TABLE `mhp_p_i_p_joints`
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
-- Indexes for table `mhp_reminder_reasons`
--
ALTER TABLE `mhp_reminder_reasons`
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
-- Indexes for table `mhp_strength_buildings`
--
ALTER TABLE `mhp_strength_buildings`
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
-- Indexes for table `mhp_symptoms_anatomies`
--
ALTER TABLE `mhp_symptoms_anatomies`
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
-- Indexes for table `mhp_toes_lefts`
--
ALTER TABLE `mhp_toes_lefts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhp_toes_rights`
--
ALTER TABLE `mhp_toes_rights`
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
-- Indexes for table `musculo_sketal_carvical_spines`
--
ALTER TABLE `musculo_sketal_carvical_spines`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cns_sensories`
--
ALTER TABLE `cns_sensories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cns_shrug_shoulders`
--
ALTER TABLE `cns_shrug_shoulders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cns_tasciculations`
--
ALTER TABLE `cns_tasciculations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cns_the_radial_nerves`
--
ALTER TABLE `cns_the_radial_nerves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cns_tongues`
--
ALTER TABLE `cns_tongues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cns_upper_limbs`
--
ALTER TABLE `cns_upper_limbs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cns_uvulas`
--
ALTER TABLE `cns_uvulas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cns_whisper_tests`
--
ALTER TABLE `cns_whisper_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `doc_specialists`
--
ALTER TABLE `doc_specialists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doc_time_limits`
--
ALTER TABLE `doc_time_limits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doc_time_slots`
--
ALTER TABLE `doc_time_slots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhe_affects`
--
ALTER TABLE `mhe_affects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhe_appearances`
--
ALTER TABLE `mhe_appearances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mhe_appropritenesses`
--
ALTER TABLE `mhe_appropritenesses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhe_attitude_towards_examinations`
--
ALTER TABLE `mhe_attitude_towards_examinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhe_attitute_towards`
--
ALTER TABLE `mhe_attitute_towards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhe_behaviours`
--
ALTER TABLE `mhe_behaviours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mhe_moods`
--
ALTER TABLE `mhe_moods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhe_perceptuals`
--
ALTER TABLE `mhe_perceptuals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhe_speeches`
--
ALTER TABLE `mhe_speeches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_abdomens`
--
ALTER TABLE `mhp_abdomens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mhp_advice_suggestions`
--
ALTER TABLE `mhp_advice_suggestions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_aerobic_exercises`
--
ALTER TABLE `mhp_aerobic_exercises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_allergies`
--
ALTER TABLE `mhp_allergies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_all_body_part_front_backs`
--
ALTER TABLE `mhp_all_body_part_front_backs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_antenatal_visits`
--
ALTER TABLE `mhp_antenatal_visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_antenatal_visits_b_m_i_targets`
--
ALTER TABLE `mhp_antenatal_visits_b_m_i_targets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_anterior_views`
--
ALTER TABLE `mhp_anterior_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_anterior_view_knees`
--
ALTER TABLE `mhp_anterior_view_knees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_apex_beats`
--
ALTER TABLE `mhp_apex_beats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `mhp_appointment_types`
--
ALTER TABLE `mhp_appointment_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_areolars`
--
ALTER TABLE `mhp_areolars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_arrangements`
--
ALTER TABLE `mhp_arrangements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_bartholin_glandes`
--
ALTER TABLE `mhp_bartholin_glandes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_batch_nos`
--
ALTER TABLE `mhp_batch_nos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_billings`
--
ALTER TABLE `mhp_billings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `mhp_billing_providers`
--
ALTER TABLE `mhp_billing_providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_birth_sexes`
--
ALTER TABLE `mhp_birth_sexes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_branches`
--
ALTER TABLE `mhp_branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_breast_lumps`
--
ALTER TABLE `mhp_breast_lumps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mhp_breast_nipple_discharges`
--
ALTER TABLE `mhp_breast_nipple_discharges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mhp_breast_pains`
--
ALTER TABLE `mhp_breast_pains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_bruits`
--
ALTER TABLE `mhp_bruits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_cardiovasculars`
--
ALTER TABLE `mhp_cardiovasculars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `mhp_cardiovascular_histories`
--
ALTER TABLE `mhp_cardiovascular_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mhp_cardiovascular_others`
--
ALTER TABLE `mhp_cardiovascular_others`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_cards`
--
ALTER TABLE `mhp_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_care_details`
--
ALTER TABLE `mhp_care_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_care_suggestions`
--
ALTER TABLE `mhp_care_suggestions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_carotids`
--
ALTER TABLE `mhp_carotids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mhp_caruncles`
--
ALTER TABLE `mhp_caruncles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_cervixes`
--
ALTER TABLE `mhp_cervixes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mhp_cities`
--
ALTER TABLE `mhp_cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_clinical_indications`
--
ALTER TABLE `mhp_clinical_indications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_cns`
--
ALTER TABLE `mhp_cns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_cns_cn1s`
--
ALTER TABLE `mhp_cns_cn1s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `mhp_cns_cn2s`
--
ALTER TABLE `mhp_cns_cn2s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mhp_cns_cn3s`
--
ALTER TABLE `mhp_cns_cn3s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mhp_cns_cn4s`
--
ALTER TABLE `mhp_cns_cn4s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mhp_cns_cn5s`
--
ALTER TABLE `mhp_cns_cn5s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_cns_cn6s`
--
ALTER TABLE `mhp_cns_cn6s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_cns_cn7s`
--
ALTER TABLE `mhp_cns_cn7s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_cns_cn8s`
--
ALTER TABLE `mhp_cns_cn8s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_cns_part1s`
--
ALTER TABLE `mhp_cns_part1s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `mhp_cns_part2s`
--
ALTER TABLE `mhp_cns_part2s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mhp_cns_upper_limbs`
--
ALTER TABLE `mhp_cns_upper_limbs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mhp_cns_visual_fields`
--
ALTER TABLE `mhp_cns_visual_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mhp_colors`
--
ALTER TABLE `mhp_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_color_visions`
--
ALTER TABLE `mhp_color_visions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_common_histories`
--
ALTER TABLE `mhp_common_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `mhp_contact_vias`
--
ALTER TABLE `mhp_contact_vias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_continuouses`
--
ALTER TABLE `mhp_continuouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_coughs`
--
ALTER TABLE `mhp_coughs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- AUTO_INCREMENT for table `mhp_current_excercise_levels`
--
ALTER TABLE `mhp_current_excercise_levels`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_daily_messages`
--
ALTER TABLE `mhp_daily_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_deafnesses`
--
ALTER TABLE `mhp_deafnesses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mhp_diagnosis_procedure_actions`
--
ALTER TABLE `mhp_diagnosis_procedure_actions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mhp_diagnosis_procedure_fors`
--
ALTER TABLE `mhp_diagnosis_procedure_fors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mhp_diarrhoeas`
--
ALTER TABLE `mhp_diarrhoeas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mhp_digitals`
--
ALTER TABLE `mhp_digitals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_dilates`
--
ALTER TABLE `mhp_dilates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_distal_interphalangeal_joints`
--
ALTER TABLE `mhp_distal_interphalangeal_joints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_doctors`
--
ALTER TABLE `mhp_doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_doctors_academics`
--
ALTER TABLE `mhp_doctors_academics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_doctors_certificates`
--
ALTER TABLE `mhp_doctors_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_doctors_departments`
--
ALTER TABLE `mhp_doctors_departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_doctors_license_trainings`
--
ALTER TABLE `mhp_doctors_license_trainings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_doctors_masters`
--
ALTER TABLE `mhp_doctors_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_doctors_work_experiences`
--
ALTER TABLE `mhp_doctors_work_experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_doctor_chambers`
--
ALTER TABLE `mhp_doctor_chambers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mhp_doctor_fees`
--
ALTER TABLE `mhp_doctor_fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mhp_doctor_fee_names`
--
ALTER TABLE `mhp_doctor_fee_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_dorsum_of_feet`
--
ALTER TABLE `mhp_dorsum_of_feet`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_double_visions`
--
ALTER TABLE `mhp_double_visions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_drug_generic_names`
--
ALTER TABLE `mhp_drug_generic_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mhp_drug_names`
--
ALTER TABLE `mhp_drug_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mhp_drug_units`
--
ALTER TABLE `mhp_drug_units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_dry_retinoscopies`
--
ALTER TABLE `mhp_dry_retinoscopies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_durations`
--
ALTER TABLE `mhp_durations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_dysphagias`
--
ALTER TABLE `mhp_dysphagias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mhp_dyspneas`
--
ALTER TABLE `mhp_dyspneas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_dyspnea_classes`
--
ALTER TABLE `mhp_dyspnea_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_d_i_p_joints`
--
ALTER TABLE `mhp_d_i_p_joints`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_ear_discharges`
--
ALTER TABLE `mhp_ear_discharges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_ear_lesions`
--
ALTER TABLE `mhp_ear_lesions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_employees`
--
ALTER TABLE `mhp_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `mhp_endurances`
--
ALTER TABLE `mhp_endurances`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `mhp_ent_examin_ear_lesions`
--
ALTER TABLE `mhp_ent_examin_ear_lesions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mhp_ent_examin_ent_others`
--
ALTER TABLE `mhp_ent_examin_ent_others`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_ent_others`
--
ALTER TABLE `mhp_ent_others`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mhp_epigastrics`
--
ALTER TABLE `mhp_epigastrics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_ethnicities`
--
ALTER TABLE `mhp_ethnicities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_examinations`
--
ALTER TABLE `mhp_examinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_examination_headings`
--
ALTER TABLE `mhp_examination_headings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mhp_external_observations`
--
ALTER TABLE `mhp_external_observations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mhp_eyemovements`
--
ALTER TABLE `mhp_eyemovements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_eye_exami_part1s`
--
ALTER TABLE `mhp_eye_exami_part1s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `mhp_eye_exami_part2s`
--
ALTER TABLE `mhp_eye_exami_part2s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `mhp_eye_part1_external_observations`
--
ALTER TABLE `mhp_eye_part1_external_observations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `mhp_eye_part1_phoria_ones`
--
ALTER TABLE `mhp_eye_part1_phoria_ones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mhp_eye_part1_phoria_twos`
--
ALTER TABLE `mhp_eye_part1_phoria_twos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mhp_eye_part1_pursuits`
--
ALTER TABLE `mhp_eye_part1_pursuits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_eye_part1_worth4_dots`
--
ALTER TABLE `mhp_eye_part1_worth4_dots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mhp_e_o_m_accomodations`
--
ALTER TABLE `mhp_e_o_m_accomodations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_e_o_m_convergences`
--
ALTER TABLE `mhp_e_o_m_convergences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_frequencies`
--
ALTER TABLE `mhp_frequencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_frequency_names`
--
ALTER TABLE `mhp_frequency_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_frequency_physicals`
--
ALTER TABLE `mhp_frequency_physicals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_frontal_lobes`
--
ALTER TABLE `mhp_frontal_lobes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_fundoscopies`
--
ALTER TABLE `mhp_fundoscopies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mhp_gait_limpings`
--
ALTER TABLE `mhp_gait_limpings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_generals`
--
ALTER TABLE `mhp_generals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `mhp_general_histories`
--
ALTER TABLE `mhp_general_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mhp_genito_urinaries`
--
ALTER TABLE `mhp_genito_urinaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mhp_genito_urinary_histories`
--
ALTER TABLE `mhp_genito_urinary_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `mhp_gestros`
--
ALTER TABLE `mhp_gestros`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `mhp_gestro_abdomens`
--
ALTER TABLE `mhp_gestro_abdomens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `mhp_gestro_histories`
--
ALTER TABLE `mhp_gestro_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_great_doc_care_suggestions`
--
ALTER TABLE `mhp_great_doc_care_suggestions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_great_doc_diagnoses`
--
ALTER TABLE `mhp_great_doc_diagnoses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_great_doc_procedures`
--
ALTER TABLE `mhp_great_doc_procedures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_great_doc_reminders`
--
ALTER TABLE `mhp_great_doc_reminders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_great_doc_resons`
--
ALTER TABLE `mhp_great_doc_resons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mhp_great_doc_reviews`
--
ALTER TABLE `mhp_great_doc_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_haloes`
--
ALTER TABLE `mhp_haloes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_hand_and_fingers`
--
ALTER TABLE `mhp_hand_and_fingers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_heart_sounds`
--
ALTER TABLE `mhp_heart_sounds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_history_examination_statuses`
--
ALTER TABLE `mhp_history_examination_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_ingredients`
--
ALTER TABLE `mhp_ingredients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_inspections`
--
ALTER TABLE `mhp_inspections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_intermittents`
--
ALTER TABLE `mhp_intermittents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_invoices`
--
ALTER TABLE `mhp_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mhp_l1_l2_hip_flexions`
--
ALTER TABLE `mhp_l1_l2_hip_flexions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_l1_l2_sensations`
--
ALTER TABLE `mhp_l1_l2_sensations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_l3_to_l5_powers`
--
ALTER TABLE `mhp_l3_to_l5_powers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_l3_to_l5_sensations`
--
ALTER TABLE `mhp_l3_to_l5_sensations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_lab_modules`
--
ALTER TABLE `mhp_lab_modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_lateral_view_knees`
--
ALTER TABLE `mhp_lateral_view_knees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_left_supraclavicular_nodes`
--
ALTER TABLE `mhp_left_supraclavicular_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_lesions`
--
ALTER TABLE `mhp_lesions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_lesion_middles`
--
ALTER TABLE `mhp_lesion_middles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_lesion_rights`
--
ALTER TABLE `mhp_lesion_rights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_level_of_spine_of_scapulas`
--
ALTER TABLE `mhp_level_of_spine_of_scapulas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_lightreflexes`
--
ALTER TABLE `mhp_lightreflexes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_lumber_lordoses`
--
ALTER TABLE `mhp_lumber_lordoses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_lying_on_couches`
--
ALTER TABLE `mhp_lying_on_couches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_margin_condyle_tibials`
--
ALTER TABLE `mhp_margin_condyle_tibials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_mastoids`
--
ALTER TABLE `mhp_mastoids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_media_types`
--
ALTER TABLE `mhp_media_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_media_type_onlines`
--
ALTER TABLE `mhp_media_type_onlines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_medical_histories`
--
ALTER TABLE `mhp_medical_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mhp_medicine_categories`
--
ALTER TABLE `mhp_medicine_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_mental_affects`
--
ALTER TABLE `mhp_mental_affects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_mental_appearances`
--
ALTER TABLE `mhp_mental_appearances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mhp_mental_attitudetowardsexaminations`
--
ALTER TABLE `mhp_mental_attitudetowardsexaminations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_mental_behaviours`
--
ALTER TABLE `mhp_mental_behaviours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_mental_healths`
--
ALTER TABLE `mhp_mental_healths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `mhp_mental_histories`
--
ALTER TABLE `mhp_mental_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `mhp_mental_moods`
--
ALTER TABLE `mhp_mental_moods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_mental_perceptual_disturbances`
--
ALTER TABLE `mhp_mental_perceptual_disturbances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_mental_psq9_ques1sts`
--
ALTER TABLE `mhp_mental_psq9_ques1sts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mhp_mental_psq9_ques2nds`
--
ALTER TABLE `mhp_mental_psq9_ques2nds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_mental_speeches`
--
ALTER TABLE `mhp_mental_speeches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_metacarpophalangeal_joints`
--
ALTER TABLE `mhp_metacarpophalangeal_joints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_motors`
--
ALTER TABLE `mhp_motors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_movements`
--
ALTER TABLE `mhp_movements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mhp_move_hip_pelvis`
--
ALTER TABLE `mhp_move_hip_pelvis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_murmurs`
--
ALTER TABLE `mhp_murmurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mhp_musculo_sketal_carvical_spine_histories`
--
ALTER TABLE `mhp_musculo_sketal_carvical_spine_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_musculo_sketal_carvical_spine_momement1s`
--
ALTER TABLE `mhp_musculo_sketal_carvical_spine_momement1s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mhp_musculo_sketal_carvical_spine_movement2nds`
--
ALTER TABLE `mhp_musculo_sketal_carvical_spine_movement2nds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_musculo_sketal_carvical_spine_tendernes_over_fact_joins`
--
ALTER TABLE `mhp_musculo_sketal_carvical_spine_tendernes_over_fact_joins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_musculo_sketal_carvical_spine_tendernes_over_spinuses`
--
ALTER TABLE `mhp_musculo_sketal_carvical_spine_tendernes_over_spinuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_musculo_sketal_thoraco_lumber_spines`
--
ALTER TABLE `mhp_musculo_sketal_thoraco_lumber_spines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_m_t_p_joints`
--
ALTER TABLE `mhp_m_t_p_joints`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mhp_neurological_frontal_lobes`
--
ALTER TABLE `mhp_neurological_frontal_lobes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mhp_neurological_histories`
--
ALTER TABLE `mhp_neurological_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `mhp_neurological_occipital_lobes`
--
ALTER TABLE `mhp_neurological_occipital_lobes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_neurological_parietal_lobes`
--
ALTER TABLE `mhp_neurological_parietal_lobes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mhp_neurological_speeches`
--
ALTER TABLE `mhp_neurological_speeches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mhp_neurological_temporal_lobes`
--
ALTER TABLE `mhp_neurological_temporal_lobes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_neuro_opthalmologies`
--
ALTER TABLE `mhp_neuro_opthalmologies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mhp_neuro_opthals`
--
ALTER TABLE `mhp_neuro_opthals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mhp_non_tender_tendernesses`
--
ALTER TABLE `mhp_non_tender_tendernesses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mhp_noses`
--
ALTER TABLE `mhp_noses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_no_masses_masses`
--
ALTER TABLE `mhp_no_masses_masses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_occipital_lobes`
--
ALTER TABLE `mhp_occipital_lobes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_occupational_hazards`
--
ALTER TABLE `mhp_occupational_hazards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_occupations`
--
ALTER TABLE `mhp_occupations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_ol_factories`
--
ALTER TABLE `mhp_ol_factories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_on_shutting_eyes`
--
ALTER TABLE `mhp_on_shutting_eyes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_others`
--
ALTER TABLE `mhp_others`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_others_names`
--
ALTER TABLE `mhp_others_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_painful_arcs`
--
ALTER TABLE `mhp_painful_arcs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_pain_along_anteriors`
--
ALTER TABLE `mhp_pain_along_anteriors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_pain_into_knees`
--
ALTER TABLE `mhp_pain_into_knees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_pain_over_posteriors`
--
ALTER TABLE `mhp_pain_over_posteriors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_palpations`
--
ALTER TABLE `mhp_palpations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_papillaryoedemas`
--
ALTER TABLE `mhp_papillaryoedemas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_parietal_lobes`
--
ALTER TABLE `mhp_parietal_lobes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mhp_past_alcohol_consumptions`
--
ALTER TABLE `mhp_past_alcohol_consumptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_patients`
--
ALTER TABLE `mhp_patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_payments`
--
ALTER TABLE `mhp_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `mhp_pelvic_masses`
--
ALTER TABLE `mhp_pelvic_masses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_pembertons`
--
ALTER TABLE `mhp_pembertons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_pen_grips`
--
ALTER TABLE `mhp_pen_grips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_pen_grip_rights`
--
ALTER TABLE `mhp_pen_grip_rights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_per_rectals`
--
ALTER TABLE `mhp_per_rectals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_phoria_ones`
--
ALTER TABLE `mhp_phoria_ones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_phoria_twos`
--
ALTER TABLE `mhp_phoria_twos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_physical_activity_advice`
--
ALTER TABLE `mhp_physical_activity_advice`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mhp_physical_activity_aerobic_exercises`
--
ALTER TABLE `mhp_physical_activity_aerobic_exercises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_physical_activity_endurances`
--
ALTER TABLE `mhp_physical_activity_endurances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_physical_activity_strength_buildings`
--
ALTER TABLE `mhp_physical_activity_strength_buildings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_posteriors`
--
ALTER TABLE `mhp_posteriors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_posterior_view_knees`
--
ALTER TABLE `mhp_posterior_view_knees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_postures`
--
ALTER TABLE `mhp_postures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_posture_thoracos`
--
ALTER TABLE `mhp_posture_thoracos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_prescriptions`
--
ALTER TABLE `mhp_prescriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `mhp_prescriptions_lists`
--
ALTER TABLE `mhp_prescriptions_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mhp_procedures`
--
ALTER TABLE `mhp_procedures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_procedure_fees`
--
ALTER TABLE `mhp_procedure_fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mhp_proximal_interphalangeal_joints`
--
ALTER TABLE `mhp_proximal_interphalangeal_joints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_proximal_interphalangeal_palpations`
--
ALTER TABLE `mhp_proximal_interphalangeal_palpations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_pupils`
--
ALTER TABLE `mhp_pupils`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_pupils_eyes`
--
ALTER TABLE `mhp_pupils_eyes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_pursuits`
--
ALTER TABLE `mhp_pursuits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_p_h_q9_questionnaires`
--
ALTER TABLE `mhp_p_h_q9_questionnaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mhp_p_h_q9_questionnaire_values`
--
ALTER TABLE `mhp_p_h_q9_questionnaire_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_p_i_p_joints`
--
ALTER TABLE `mhp_p_i_p_joints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_p_r_bleeds`
--
ALTER TABLE `mhp_p_r_bleeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_p_v_bleedings`
--
ALTER TABLE `mhp_p_v_bleedings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_p_v_discharges`
--
ALTER TABLE `mhp_p_v_discharges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_questionnaires`
--
ALTER TABLE `mhp_questionnaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mhp_radiations`
--
ALTER TABLE `mhp_radiations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_radiologies`
--
ALTER TABLE `mhp_radiologies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_radiology_centers`
--
ALTER TABLE `mhp_radiology_centers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_radiology_test_names`
--
ALTER TABLE `mhp_radiology_test_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- AUTO_INCREMENT for table `mhp_reminder_reasons`
--
ALTER TABLE `mhp_reminder_reasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_renal_masses`
--
ALTER TABLE `mhp_renal_masses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_renne_tests`
--
ALTER TABLE `mhp_renne_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_resisted_movements`
--
ALTER TABLE `mhp_resisted_movements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_respiratories`
--
ALTER TABLE `mhp_respiratories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mhp_respiratory_examination_lists`
--
ALTER TABLE `mhp_respiratory_examination_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mhp_respiratory_histories`
--
ALTER TABLE `mhp_respiratory_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mhp_respiratory_questionnaires`
--
ALTER TABLE `mhp_respiratory_questionnaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_review_names`
--
ALTER TABLE `mhp_review_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_right_lumbers`
--
ALTER TABLE `mhp_right_lumbers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_route_names`
--
ALTER TABLE `mhp_route_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_rxes`
--
ALTER TABLE `mhp_rxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `mhp_r_u_q_s`
--
ALTER TABLE `mhp_r_u_q_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_s1_to_s4_tests`
--
ALTER TABLE `mhp_s1_to_s4_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_saccades`
--
ALTER TABLE `mhp_saccades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_scores`
--
ALTER TABLE `mhp_scores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_selection_criterias`
--
ALTER TABLE `mhp_selection_criterias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_shapes`
--
ALTER TABLE `mhp_shapes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_shape_and_contours`
--
ALTER TABLE `mhp_shape_and_contours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_shoulder_movements`
--
ALTER TABLE `mhp_shoulder_movements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_sigmoidoscopies`
--
ALTER TABLE `mhp_sigmoidoscopies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_sigmoidoscopy_guaiac_tests`
--
ALTER TABLE `mhp_sigmoidoscopy_guaiac_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_sites`
--
ALTER TABLE `mhp_sites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_skins`
--
ALTER TABLE `mhp_skins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mhp_skin_examinations`
--
ALTER TABLE `mhp_skin_examinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `mhp_skin_exami_histories`
--
ALTER TABLE `mhp_skin_exami_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `mhp_skin_exami_types`
--
ALTER TABLE `mhp_skin_exami_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mhp_skin_exmi_images`
--
ALTER TABLE `mhp_skin_exmi_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_skin_exmi_symtoms`
--
ALTER TABLE `mhp_skin_exmi_symtoms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_skin_shapes`
--
ALTER TABLE `mhp_skin_shapes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mhp_skin_symptoms`
--
ALTER TABLE `mhp_skin_symptoms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_skin_types`
--
ALTER TABLE `mhp_skin_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mhp_sleep_apnoea_risks`
--
ALTER TABLE `mhp_sleep_apnoea_risks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_speech_nurologies`
--
ALTER TABLE `mhp_speech_nurologies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mhp_spines`
--
ALTER TABLE `mhp_spines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_stance_swat_knees`
--
ALTER TABLE `mhp_stance_swat_knees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_states`
--
ALTER TABLE `mhp_states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_statuses`
--
ALTER TABLE `mhp_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_stool_types`
--
ALTER TABLE `mhp_stool_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mhp_strength_buildings`
--
ALTER TABLE `mhp_strength_buildings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_sub_body_parts`
--
ALTER TABLE `mhp_sub_body_parts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mhp_sudden_anaesthesias`
--
ALTER TABLE `mhp_sudden_anaesthesias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_swollen_eye_lids`
--
ALTER TABLE `mhp_swollen_eye_lids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_symptoms_anatomies`
--
ALTER TABLE `mhp_symptoms_anatomies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_symptom_anatomies`
--
ALTER TABLE `mhp_symptom_anatomies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_temparatures`
--
ALTER TABLE `mhp_temparatures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_temporal_lobes`
--
ALTER TABLE `mhp_temporal_lobes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_tenderness_over_facet_l_r_b_thoracos`
--
ALTER TABLE `mhp_tenderness_over_facet_l_r_b_thoracos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_tenderness_over_facet_thoracos`
--
ALTER TABLE `mhp_tenderness_over_facet_thoracos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_tenders`
--
ALTER TABLE `mhp_tenders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_tender_over_spinus_process_ats`
--
ALTER TABLE `mhp_tender_over_spinus_process_ats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mhp_tender_over_spinus_thoracos`
--
ALTER TABLE `mhp_tender_over_spinus_thoracos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_tender_tenerness_over_l1_to_l6_thoracos`
--
ALTER TABLE `mhp_tender_tenerness_over_l1_to_l6_thoracos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_tenerness_over_facet_joins`
--
ALTER TABLE `mhp_tenerness_over_facet_joins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT for table `mhp_toes_lefts`
--
ALTER TABLE `mhp_toes_lefts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_toes_rights`
--
ALTER TABLE `mhp_toes_rights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_tongues`
--
ALTER TABLE `mhp_tongues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_tongue_lesions`
--
ALTER TABLE `mhp_tongue_lesions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_tongue_mouths`
--
ALTER TABLE `mhp_tongue_mouths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_ulsers`
--
ALTER TABLE `mhp_ulsers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_urine_analyses`
--
ALTER TABLE `mhp_urine_analyses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mhp_user_self_registrations`
--
ALTER TABLE `mhp_user_self_registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_user_types`
--
ALTER TABLE `mhp_user_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_visit_types`
--
ALTER TABLE `mhp_visit_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_visualacuities`
--
ALTER TABLE `mhp_visualacuities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mhp_visualfields`
--
ALTER TABLE `mhp_visualfields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mhp_visual_acuity_eyes`
--
ALTER TABLE `mhp_visual_acuity_eyes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mhp_vital_signs`
--
ALTER TABLE `mhp_vital_signs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_vital_sign_units`
--
ALTER TABLE `mhp_vital_sign_units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_volumes`
--
ALTER TABLE `mhp_volumes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mhp_volume_womens`
--
ALTER TABLE `mhp_volume_womens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_vomitings`
--
ALTER TABLE `mhp_vomitings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mhp_vulvals`
--
ALTER TABLE `mhp_vulvals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_vulvas`
--
ALTER TABLE `mhp_vulvas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mhp_walk_on_heels`
--
ALTER TABLE `mhp_walk_on_heels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_weber_tests`
--
ALTER TABLE `mhp_weber_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_women_health_examis`
--
ALTER TABLE `mhp_women_health_examis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mhp_women_health_exami_breast_lumps`
--
ALTER TABLE `mhp_women_health_exami_breast_lumps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mhp_women_health_exami_breast_nipple_discharges`
--
ALTER TABLE `mhp_women_health_exami_breast_nipple_discharges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mhp_women_health_exami_cervixes`
--
ALTER TABLE `mhp_women_health_exami_cervixes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_women_health_exami_csts`
--
ALTER TABLE `mhp_women_health_exami_csts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhp_women_health_exami_gynecologies`
--
ALTER TABLE `mhp_women_health_exami_gynecologies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `mhp_women_health_exami_obstetrics`
--
ALTER TABLE `mhp_women_health_exami_obstetrics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `mhp_women_health_exami_vulvas`
--
ALTER TABLE `mhp_women_health_exami_vulvas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mhp_worth4_dots`
--
ALTER TABLE `mhp_worth4_dots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mhp_wrists`
--
ALTER TABLE `mhp_wrists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mhp_wrist_palpations`
--
ALTER TABLE `mhp_wrist_palpations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1089;

--
-- AUTO_INCREMENT for table `mre_abnormal_breathings`
--
ALTER TABLE `mre_abnormal_breathings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mre_breath_sounds`
--
ALTER TABLE `mre_breath_sounds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mre_chest_expansions`
--
ALTER TABLE `mre_chest_expansions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mre_chest_shapes`
--
ALTER TABLE `mre_chest_shapes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `mre_crepitations`
--
ALTER TABLE `mre_crepitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mre_percussions`
--
ALTER TABLE `mre_percussions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mre_symptoms`
--
ALTER TABLE `mre_symptoms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mre_vocal_fremituses`
--
ALTER TABLE `mre_vocal_fremituses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mre_vocal_resonances`
--
ALTER TABLE `mre_vocal_resonances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mre_wheerings`
--
ALTER TABLE `mre_wheerings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `musculo_sketal_carvical_spines`
--
ALTER TABLE `musculo_sketal_carvical_spines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
