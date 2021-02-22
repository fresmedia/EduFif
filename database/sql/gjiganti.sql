-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2021 at 03:34 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gjiganti`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=active, 0=inactive',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `first_name`, `last_name`, `username`, `phone_no`, `email`, `email_verified_at`, `password`, `avatar`, `status`, `remember_token`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', NULL, 'superadmin', '019XXXXXXXX', 'superadmin@example.com', NULL, '$2y$10$i6su5viygQQjhKZvCEW.ZeX9B6vSfR291JlB6LM3M/H4D9mcqGKFm', 'superadmin.png', 1, NULL, NULL, NULL, 1, NULL, '2020-05-10 05:17:46', '2021-02-03 05:09:05'),
(2, 'Admin', NULL, 'admin', '018XXXXXXXX', 'admin@example.com', NULL, '$2y$10$sXhamhwdZ5E7sIWpLn98T.O03djNsXiqS7905Jw35wb0DB0Dnu/q6', 'admin.png', 1, NULL, NULL, NULL, 2, NULL, '2020-05-10 05:17:46', '2020-05-14 23:16:52'),
(3, 'Editor', NULL, 'editor', '01711287849', 'editor@example.com', NULL, '$2y$10$vj7wJ3FeCPtHfYMqZFfFH.O3XiHkI1d5y6Duwm13B1GXTJrlmAw/.', 'editor.png', 1, NULL, NULL, NULL, 3, NULL, '2020-05-10 05:17:46', '2020-05-14 23:13:47'),
(6, 'Maniruzzaman', 'Akash', 'maniruzzamanakash', '01951233084', 'manirujjamanakash@gmail.com', NULL, '$2y$10$ksPAoVR27FAn/KjnGQyWousAcXnIwQxBLO5.u4TIKhluDFMTCh8.y', NULL, 1, NULL, NULL, NULL, 1, NULL, '2020-05-11 07:55:22', '2020-05-12 19:19:07'),
(7, 'Maniruzzaman', 'Akash', 'maniruzzamanakash1', '01951233085', 'manirujjamanakash2@gmail.com', NULL, '$2y$10$eBXJpVQPzMQ6mButl7NireOiz7S7sPSMb8j2iTQNGwJYz1ceK/P3a', NULL, 1, NULL, NULL, 1, 1, NULL, '2020-05-11 08:01:05', '2020-05-12 10:02:59'),
(13, 'Admin Blog Writer', 'Hasan', 'adminblogwriterhasan', '01951233012', 'adminblog@gmail.com', NULL, '$2y$10$PenzAXSm./QoDfBMMqTAyee2BrGj5zxjVTu9Q2XJWbQaqiCBY8XWu', NULL, 0, NULL, NULL, 1, 1, NULL, '2020-05-12 19:19:49', '2020-05-12 19:31:23');

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `advertiser_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=>active, 0=>inactive',
  `start_date` date NOT NULL DEFAULT current_timestamp(),
  `expiry_date` date DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `advertiser_name`, `title`, `url`, `slug`, `image`, `description`, `status`, `start_date`, `expiry_date`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`) VALUES
(3, 'Akij Group Ltd.', 'Advertisement', 'https://webapp.akij.net/', 'advertisement1', '-1612357012-banner.png', '<p>Simple Description about advertisement</p>', 1, '2021-02-04', '2021-02-03', NULL, 1, NULL, NULL, '2021-02-03 05:31:09', '2021-02-04 08:04:39'),
(4, 'Agami Soft Ltd.', 'Advertisement 2', 'http://iapps-demo.devsenv.com/', 'advertisement2', '-1612367833-banner.jpg', '<p>Simple Description about this.</p>', 1, '2021-02-04', '2021-02-10', NULL, 1, NULL, NULL, '2021-02-03 07:11:50', '2021-02-03 09:58:58'),
(6, 'Akij Group Ltd.', 'Test Advertisement', 'https://webappdev.akij.net/favicon.ico', 'testadvertisement', '-1612444867-banner.jpg', '<p>Test Advertisement&nbsp;Test Advertisement&nbsp;Test Advertisement&nbsp;Test Advertisement&nbsp;Test Advertisement&nbsp;Test Advertisement&nbsp;Test Advertisement&nbsp;Test Advertisement&nbsp;Test Advertisement&nbsp;Test Advertisement&nbsp;Test Advertisement&nbsp;Test Advertisement&nbsp;</p>\r\n<p>Test Advertisement&nbsp;Test Advertisement&nbsp;Test Advertisement&nbsp;Test Advertisement&nbsp;Test Advertisement&nbsp;Test Advertisement&nbsp;Test Advertisement&nbsp;Test Advertisement&nbsp;Test Advertisement&nbsp;Test Advertisement&nbsp;Test Advertisement&nbsp;Test Advertisement&nbsp;</p>', 1, '2021-02-21', '2021-03-13', NULL, 1, NULL, NULL, '2021-02-04 07:21:07', '2021-02-04 07:27:25');

-- --------------------------------------------------------

--
-- Table structure for table `article_types`
--

CREATE TABLE `article_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_types`
--

INSERT INTO `article_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Integrimi', '2021-02-03 06:31:40', '2021-02-03 06:31:40'),
(2, 'Komuniteti', '2021-02-03 06:31:40', '2021-02-03 06:31:40'),
(3, 'KU & SI', '2021-02-03 06:31:40', '2021-02-03 06:31:40');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=>active, 0=>inactive',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug`, `image`, `description`, `meta_description`, `status`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`) VALUES
(1, 'This is a simple blog from admin panel', 'this-is-a-simple-blog-from-admin-panel', NULL, '<div>Welcome to our blog <br /></div>', NULL, 1, NULL, 2, NULL, NULL, '2020-05-10 05:17:46', '2020-05-10 05:17:46'),
(2, 'This is a another blog from admin panel', 'this-is-a-another-blog-from-admin-panel', NULL, '<div>Welcome to our blog <br /></div>', NULL, 1, NULL, 6, NULL, NULL, '2020-05-10 05:17:46', '2020-05-10 05:17:46'),
(3, 'First Test Updated', 'first-test-seo-url', 'First Test Updated-1589511137-logo.png', '<p>Simple Blog Description Updated</p>', 'SEO Text Updated', 0, NULL, 1, 1, 1, '2020-05-14 20:48:20', '2020-05-15 09:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_category_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'Null if category is parent, else parent id',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=>active, 0=>inactive',
  `enable_bg` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=>active, 0=>inactive',
  `bg_color` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#FFFFFF',
  `text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '000000',
  `priority` int(11) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `banner_image`, `logo_image`, `description`, `meta_description`, `parent_category_id`, `status`, `enable_bg`, `bg_color`, `text_color`, `priority`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`) VALUES
(4, 'DiasPora', 'diaspora', 'DiasPora-1589751517-banner.jpg', 'DiasPora-1589760517-logo.png', '<p>Suedia dhe 20 fakte t&euml; njohura q&euml; e b&euml;jn&euml; t&euml; ve&ccedil;ant&euml; nga shtetet tjera</p>', 'Suedia dhe 20 fakte të njohura që e bëjnë të veçantë nga shtetet tjera', NULL, 1, 1, 'EEEEEE', '1D003B', 1, NULL, 1, 1, NULL, '2020-05-12 20:08:12', '2020-05-17 18:33:12'),
(8, 'Media', 'image', 'Media-1589671335-banner.jpg', NULL, '<p>Simple Description</p>', 'New SEO tag', NULL, 1, 0, '#FFFFFF', '000000', 1, NULL, 1, 1, NULL, '2020-05-12 20:45:45', '2020-05-16 17:22:15'),
(9, 'Austri', 'austri', 'Austri-1612345200-banner.jpg', 'Simple Category-1589338127-logo.png', '<p>Descriptino</p>', 'New SEO', 4, 1, 1, 'A21D21', 'FFFFFF', 8, NULL, 1, 1, NULL, '2020-05-12 20:48:47', '2021-02-03 20:25:55'),
(10, 'Belzium', 'belzium', 'Belzium-1612344966-banner.jpg', 'Test-1589338238-logo.png', '<p>Test</p>', 'Test SEO', 4, 1, 1, '6D7BEE', '000000', 5, NULL, 1, 1, NULL, '2020-05-12 20:50:38', '2021-02-03 20:24:49'),
(12, 'Latest News', 'latestnews', 'Latest News-1589671351-banner.jpg', NULL, NULL, NULL, 8, 1, 1, '2915EE', '000000', 1, NULL, 1, 1, NULL, '2020-05-15 20:31:47', '2020-05-16 17:22:31'),
(13, 'Austria', 'austria', 'Austria-1589732304-banner.jpg', NULL, NULL, NULL, 9, 1, 1, '0041EE', '000000', 3, NULL, 1, 1, NULL, '2020-05-15 23:13:38', '2021-02-03 20:19:23'),
(14, 'Integrimi', 'integrimi', NULL, NULL, NULL, NULL, 9, 1, 0, '#FFFFFF', '000000', 1, NULL, 1, 1, NULL, '2020-05-15 23:14:32', '2020-05-17 07:44:01'),
(15, 'Community', 'community', NULL, NULL, NULL, NULL, 9, 1, 0, '#FFFFFF', '000000', 1, NULL, 1, NULL, NULL, '2020-05-15 23:14:50', '2020-05-15 23:14:50'),
(16, 'Sweden', 'sudane', 'Sweden-1612345159-banner.jpg', NULL, NULL, NULL, 4, 1, 1, '1F1AEE', '000000', 4, NULL, 1, 1, NULL, '2020-05-16 17:26:29', '2021-02-03 20:24:26'),
(17, 'Germany', 'germany', 'Germany-1589723453-banner.jpg', NULL, NULL, NULL, 4, 1, 1, 'A21D21', '000000', 3, NULL, 1, 1, NULL, '2020-05-17 07:50:53', '2021-02-03 20:24:15'),
(18, 'Switzerland', 'switzerland', 'Switzerland-1612345008-banner.jpg', NULL, NULL, NULL, 4, 1, 1, 'A21D21', '000000', 2, NULL, 1, 1, NULL, '2020-05-17 07:52:05', '2021-02-03 20:24:00'),
(19, 'FINLANDË', 'finland', 'FINLANDË-1612277154-banner.jpg', NULL, NULL, NULL, 4, 1, 1, 'A21D21', '000000', 1, NULL, 1, 1, NULL, '2020-05-17 07:52:37', '2021-02-03 20:22:04'),
(20, 'Norway', 'norway', 'Norway-1589724343-banner.jpg', NULL, '<h2><a href=\"https://www.gjiganti.com/diaspora/norvegji/norvegjia/norvegjia.html\">Welcome to Norway</a></h2>', NULL, 4, 1, 0, '#FFFFFF', '000000', 6, NULL, 1, 1, NULL, '2020-05-17 08:05:43', '2021-02-03 20:24:59'),
(21, 'Denmark', 'denmark', 'Denmark-1612344994-banner.jpg', NULL, NULL, NULL, 4, 1, 1, 'EE1A1A', '000000', 7, NULL, 1, 1, NULL, '2020-05-17 08:09:24', '2021-02-03 20:25:08');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = not seen by admin, 1 = seen by admin',
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(273, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(274, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(275, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(276, '2016_06_01_000004_create_oauth_clients_table', 1),
(277, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(278, '2020_05_01_000000_create_admins_table', 1),
(279, '2020_05_01_0000040_create_settings_table', 1),
(280, '2020_05_01_000010_create_users_table', 1),
(281, '2020_05_01_000020_create_failed_jobs_table', 1),
(282, '2020_05_01_000030_create_password_resets_table', 1),
(283, '2020_05_01_000035_create_permission_tables', 1),
(284, '2020_05_01_000050_create_categories_table', 1),
(285, '2020_05_01_000060_create_pages_table', 1),
(286, '2020_05_01_000070_create_blogs_table', 1),
(287, '2020_05_01_000080_create_contacts_table', 1),
(288, '2020_05_01_000090_create_tracks_table', 1),
(289, '2021_02_03_061323_create_article_types_table', 2),
(291, '2021_02_03_094230_create_advertisements_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(3, 'App\\Models\\Admin', 2),
(3, 'App\\Models\\Admin', 6),
(4, 'App\\Models\\Admin', 3),
(4, 'App\\Models\\Admin', 13),
(5, 'App\\Models\\Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'Null if page has no category',
  `article_type_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'If Article Belongs to a Type',
  `advertisement_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`advertisement_ids`)),
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=>active, 0=>inactive',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `description`, `meta_description`, `image`, `banner_image`, `category_id`, `article_type_id`, `advertisement_ids`, `status`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`) VALUES
(1, 'Albanian Associations in Austria', 'shoqatat', '<div class=\"col-lg-9 col-md-8 col-sm-7\">\r\n<div class=\"teksti\">\r\n<ul>\r\n<li><a href=\"#home\" data-toggle=\"tab\" aria-expanded=\"true\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">associations</span></span></a></li>\r\n</ul>\r\n<ul class=\"nav nav-tabs\">\r\n<li class=\"\"><a href=\"#menu1\" data-toggle=\"tab\" aria-expanded=\"false\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Vienna</span></span></a></li>\r\n<li class=\"\"><a href=\"#menu2\" data-toggle=\"tab\" aria-expanded=\"false\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Linz</span></span></a></li>\r\n<li class=\"\"><a href=\"#menu3\" data-toggle=\"tab\" aria-expanded=\"false\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Salzburg</span></span></a></li>\r\n<li><a href=\"#menu4\" data-toggle=\"tab\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Graz</span></span></a></li>\r\n<li class=\"\"><a href=\"#menu5\" data-toggle=\"tab\" aria-expanded=\"false\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Other cities</span></span></a></li>\r\n</ul>\r\n<div class=\"tab-content\">\r\n<div id=\"home\" class=\"tab-pane fade active in\">\r\n<h2><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Welcome</span></span></h2>\r\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">We have ranked Albanian associations in Austria based on the cities where Albanians are most concentrated and their activities.</span></span></p>\r\n</div>\r\n<div id=\"menu1\" class=\"tab-pane fade\">\r\n<h2><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Albanian Associations in Vienna</span></span></h2>\r\n<hr />\r\n<div class=\"row\">\r\n<div class=\"col-sm-4\">\r\n<h2><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">\"Alexander Moses\"</span></span></h2>\r\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">info@moisiu.eu </span></span><br /><a href=\"http://www.moisiu.eu\" target=\"_blank\" rel=\"noopener\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">www.moisiu.eu</span></span></a></p>\r\n</div>\r\n<div class=\"col-sm-2\"><a href=\"http://www.moisiu.eu\" target=\"_blank\" rel=\"noopener\"><img src=\"img/moisiu.png\" width=\"100%\" /></a></div>\r\n<div class=\"col-sm-4\">\r\n<h2><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">\"Albanian Football League\" Austria</span></span></h2>\r\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">liga@ligashqiptare.eu </span></span><br /><a href=\"http://ligashqiptare.eu\" target=\"_blank\" rel=\"noopener\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">www.ligashqiptare.eu</span></span></a></p>\r\n</div>\r\n<div class=\"col-sm-2\"><a href=\"http://ligashqiptare.eu\" target=\"_blank\" rel=\"noopener\"><img src=\"img/ligashqiptare.jpg\" width=\"100%\" /></a></div>\r\n</div>\r\n<hr />\r\n<div class=\"row\">\r\n<div class=\"col-sm-4\">\r\n<h2><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Kosovarisch &Ouml;sterreichische Gesellschaft</span></span></h2>\r\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">info@OeKG-ks.org </span></span><br /><a href=\"http://www.oekg-ks.org\" target=\"_blank\" rel=\"noopener\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">www.oekg-ks.org</span></span></a></p>\r\n</div>\r\n<div class=\"col-sm-2\"><a href=\"http://www.oekg-ks.org\" target=\"_blank\" rel=\"noopener\"><img src=\"img/oekg.png\" width=\"100%\" /></a></div>\r\n<div class=\"col-sm-4\">\r\n<h2>&nbsp;</h2>\r\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">office@iliret.eu </span></span><br /><a href=\"http://www.iliret.eu\" target=\"_blank\" rel=\"noopener\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">www.iliret.eu</span></span></a></p>\r\n</div>\r\n<div class=\"col-sm-2\"><a href=\"http://www.iliret.eu\" target=\"_blank\" rel=\"noopener\"><img src=\"img/iliret.png\" width=\"100%\" /></a></div>\r\n</div>\r\n<hr />\r\n<div class=\"row\">\r\n<div class=\"col-sm-4\">\r\n<h2><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Cultural Association \"June 12\"</span></span></h2>\r\n<p><br /><a href=\"https://www.facebook.com/Shoqata-Kulturore-12-Qershori-Wien-794154833980344/\" target=\"_blank\" rel=\"noopener\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Facebook</span></span></a></p>\r\n</div>\r\n<div class=\"col-sm-2\"><a href=\"https://www.facebook.com/Shoqata-Kulturore-12-Qershori-Wien-794154833980344\" target=\"_blank\" rel=\"noopener\"><img src=\"img/12qershori.jpg\" width=\"100%\" /></a></div>\r\n<div class=\"col-sm-4\">\r\n<h2><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Albanian Association Two July</span></span></h2>\r\n<p><br /><a href=\"https://www.facebook.com/shoqatashqiptare.dykorriku\" target=\"_blank\" rel=\"noopener\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Facebook</span></span></a></p>\r\n</div>\r\n<div class=\"col-sm-2\"><a href=\"https://www.facebook.com/shoqatashqiptare.dykorriku\" target=\"_blank\" rel=\"noopener\"><img src=\"img/2korriku.jpg\" width=\"100%\" /></a></div>\r\n</div>\r\n</div>\r\n<div id=\"menu2\" class=\"tab-pane fade\">\r\n<h2><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Associations in Linz</span></span></h2>\r\n<p>&nbsp;</p>\r\n<hr />\r\n<div class=\"row\">\r\n<div class=\"col-sm-4\">\r\n<h2><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">\"Bujaria\" Association</span></span></h2>\r\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Wienerstr. </span><span style=\"vertical-align: inherit;\">288 </span></span><br /><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">4030 Linz </span></span><br /><a href=\"http://www.bujaria.at\" target=\"_blank\" rel=\"noopener\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">www.bujaria.at</span></span></a></p>\r\n</div>\r\n<div class=\"col-sm-2\"><a href=\"http://www.bujaria.at\" target=\"_blank\" rel=\"noopener\"><img src=\"img/bujaria.jpg\" width=\"100%\" /></a></div>\r\n<div class=\"col-sm-4\">\r\n<h2><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Union Association</span></span></h2>\r\n<p><br /><a href=\"http://www.xhamia-linz.at\" target=\"_blank\" rel=\"noopener\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">www.xhamia-linz.at</span></span></a></p>\r\n</div>\r\n<div class=\"col-sm-2\"><a href=\"http://www.xhamia-linz.at\" target=\"_blank\" rel=\"noopener\"><img src=\"img/bashkimi.jpg\" width=\"100%\" /></a></div>\r\n</div>\r\n<hr />\r\n<div class=\"row\">\r\n<div class=\"col-sm-4\">\r\n<h2><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Radio Repentance</span></span></h2>\r\n<p><br /><a href=\"http://www.radio-pendimi.com\" target=\"_blank\" rel=\"noopener\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">www.radio-pendimi.com</span></span></a></p>\r\n</div>\r\n<div class=\"col-sm-2\"><a href=\"http://www.radio-pendimi.com\" target=\"_blank\" rel=\"noopener\"><img src=\"img/radiopendimi.jpg\" width=\"100%\" /></a></div>\r\n<div class=\"col-sm-4\">\r\n<h2>&nbsp;</h2>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"col-sm-2\"><a target=\"_blank\" rel=\"noopener\"><img src=\"img/.jpg\" width=\"100%\" /></a></div>\r\n</div>\r\n<hr />\r\n<div class=\"row\">\r\n<div class=\"col-sm-4\">\r\n<h2>&nbsp;</h2>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"col-sm-2\"><a target=\"_blank\" rel=\"noopener\"><img src=\"img/.jpg\" width=\"100%\" /></a></div>\r\n<div class=\"col-sm-4\">\r\n<h2>&nbsp;</h2>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"col-sm-2\"><a target=\"_blank\" rel=\"noopener\"><img src=\"img/.jpg\" width=\"100%\" /></a></div>\r\n</div>\r\n<hr />\r\n<div class=\"row\">\r\n<div class=\"col-sm-4\">\r\n<h2>&nbsp;</h2>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"col-sm-2\"><a target=\"_blank\" rel=\"noopener\"><img src=\"img/.jpg\" width=\"100%\" /></a></div>\r\n<div class=\"col-sm-4\">\r\n<h2>&nbsp;</h2>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"col-sm-2\"><a target=\"_blank\" rel=\"noopener\"><img src=\"img/.jpg\" width=\"100%\" /></a></div>\r\n</div>\r\n<hr />\r\n<div class=\"row\">\r\n<div class=\"col-sm-4\">\r\n<h2>&nbsp;</h2>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"col-sm-2\"><a target=\"_blank\" rel=\"noopener\"><img src=\"img/.jpg\" width=\"100%\" /></a></div>\r\n<div class=\"col-sm-4\">\r\n<h2>&nbsp;</h2>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"col-sm-2\"><a target=\"_blank\" rel=\"noopener\"><img src=\"img/.jpg\" width=\"100%\" /></a></div>\r\n</div>\r\n</div>\r\n<div id=\"menu3\" class=\"tab-pane fade\">\r\n<h2><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Albanian Associations in Salzburg</span></span></h2>\r\n<p>&nbsp;</p>\r\n<hr />\r\n<div class=\"row\">\r\n<div class=\"col-sm-4\">\r\n<h2>&nbsp;</h2>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"col-sm-2\"><a target=\"_blank\" rel=\"noopener\"><img src=\"img/.jpg\" width=\"100%\" /></a></div>\r\n<div class=\"col-sm-4\">\r\n<h2>&nbsp;</h2>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"col-sm-2\"><a target=\"_blank\" rel=\"noopener\"><img src=\"img/.jpg\" width=\"100%\" /></a></div>\r\n</div>\r\n</div>\r\n<div id=\"menu4\" class=\"tab-pane fade\">\r\n<h2><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Albanian Associations in Graz</span></span></h2>\r\n<p>&nbsp;</p>\r\n<hr />\r\n<div class=\"row\">\r\n<div class=\"col-sm-4\">\r\n<h2><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Homeland Association</span></span></h2>\r\n<p><br /><a href=\"https://www.facebook.com/groups/250640496391/about/\" target=\"_blank\" rel=\"noopener\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Facebook</span></span></a></p>\r\n</div>\r\n<div class=\"col-sm-2\"><a href=\"https://www.facebook.com/groups/250640496391/about/\" target=\"_blank\" rel=\"noopener\"><img src=\"img/atdheu.jpg\" width=\"100%\" /></a></div>\r\n<div class=\"col-sm-4\">\r\n<h2>&nbsp;</h2>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"col-sm-2\"><a target=\"_blank\" rel=\"noopener\"><img src=\"img/.jpg\" width=\"100%\" /></a></div>\r\n</div>\r\n</div>\r\n<div id=\"menu5\" class=\"tab-pane fade\">\r\n<h2><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Albanian associations in other cities</span></span></h2>\r\n<p>&nbsp;</p>\r\n<hr />\r\n<div class=\"row\">\r\n<div class=\"col-sm-4\">\r\n<h2><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Exile Association</span></span></h2>\r\n<p><br /><a href=\"https://www.facebook.com/SH.K.S.Mergimi/\" target=\"_blank\" rel=\"noopener\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Facebook</span></span></a></p>\r\n</div>\r\n<div class=\"col-sm-2\"><a href=\"https://www.facebook.com/SH.K.S.Mergimi\" target=\"_blank\" rel=\"noopener\"><img src=\"img/mergimi.jpg\" width=\"100%\" /></a></div>\r\n<div class=\"col-sm-4\">\r\n<h2>&nbsp;</h2>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"col-sm-2\"><a target=\"_blank\" rel=\"noopener\"><img src=\"img/.jpg\" width=\"100%\" /></a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Albanian Associations in Austria\r\nassociations\r\nVienna\r\nLinz\r\nSalzburg\r\nGraz\r\nOther cities\r\nWelcome\r\nWe have ranked Albanian associations in Austria based on the cities where Albanians are most concentrated and their activities.\r\n\r\nAlbanian Associations in Vienna\r\n\"Alexander Moses\"\r\ninfo@moisiu.eu \r\nwww.moisiu.eu\r\n\r\n\r\n\"Albanian Football League\" Austria\r\nliga@ligashqiptare.eu \r\nwww.ligashqiptare.eu\r\n\r\n\r\nKosovarisch Österreichische Gesellschaft\r\ninfo@OeKG-ks.org \r\nwww.oekg-ks.org\r\n\r\n\r\n\r\noffice@iliret.eu \r\nwww.iliret.eu\r\n\r\n\r\nCultural Association \"June 12\"\r\n\r\nFacebook\r\n\r\n\r\nAlbanian Association Two July\r\n\r\nFacebook\r\n\r\n\r\nAssociations in Linz\r\n\r\n\r\n\"Bujaria\" Association\r\nWienerstr. 288 \r\n4030 Linz \r\nwww.bujaria.at\r\n\r\n\r\nUnion Association\r\n\r\nwww.xhamia-linz.at\r\n\r\n\r\nRadio Repentance\r\n\r\nwww.radio-pendimi.com\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nAlbanian Associations in Salzburg\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nAlbanian Associations in Graz\r\n\r\n\r\nHomeland Association\r\n\r\nFacebook\r\n\r\n\r\n\r\n\r\n\r\n\r\nAlbanian associations in other cities\r\n\r\n\r\nExile Association\r\n\r\nFacebook', NULL, NULL, 13, NULL, NULL, 1, NULL, 6, 1, NULL, '2020-05-10 05:17:46', '2020-05-17 09:53:48'),
(4, 'Provinces (Regions) of Austria', 'provincat', '<p><span>As a federal republic, Austria is divided into nine states or provinces (German: Bundesl&auml;nder).&nbsp;These provinces are then divided into districts (Bezirke) and statutory cities known as (Statutarst&auml;dte).&nbsp;The districts are divided into municipalities (Gemeinden).&nbsp;Statutory cities have different powers given to both districts and municipalities.&nbsp;The provinces are not merely administrative divisions, but they have a legislative authority distinct from the federal government, e.g.&nbsp;Provinces play a key role in matters of culture, social care, protection of youth and nature, hunting, construction, etc.&nbsp;In recent years, it has been debated whether Austria today is suitable for a small country to hold ten parliaments.</span></p>\r\n<p><img src=\"https://www.gjiganti.com/diaspora/austri/img/austria.jpg\" align=\"right\" /></p>\r\n<p><strong><span>Burgenland</span></strong><br /><span>This Austrian province was the home of the Esterhazy dynasty and the birthplace of the composer Joseph Haydn (1732-1809).&nbsp;Burgenland lies along the Austrian-Hungarian border and was formerly part of Hungary before it became an Austrian province in 1921. Burgenland\'s main geographical feature is Lake Neusiedler. with a nature reserved for birds and other wildlife.&nbsp;The Neusiedl region is also notable for its wines.</span></p>\r\n<p><strong><span>K&auml;rnten</span></strong><br /><span>The southernmost Austrian province is home to the famous Lake W&ouml;rthersee and many others, and has the highest peak in Austria, at Grossglockner at 3797 m, which is located in Tauern Hohe National Park.&nbsp;This province has a long history reminiscent of the Celtic and Roman tribes.&nbsp;The province became part of the Habsburg Empire in 1335.</span></p>\r\n<p><strong><span>Nieder&ouml;sterreich</span></strong><br /><span>This province, which in Albanian is called Lower Austria, is the province that surrounds Vienna.&nbsp;The Danube River flows through this largest province of Austria, but Austria Lower is also the home of the first mountain railway in Europe, a picturesque road traversing the railroads over the Semmering Pass mountains.</span></p>\r\n<p><strong><span>Ober&ouml;sterreich</span></strong><br /><span>This province, which in Albanian is called Upper Austria, is the most picturesque Austrian province, offering a variety of lakes, mountains, including the Danube River.&nbsp;The best known picturesque region is Salzkammergut, but the rocky peaks of Dachstein are also an attractive place for visitors all year round.</span><br /><span>The capital Linz is Austria\'s third largest city with about 190,000 inhabitants located south of the Czech border.</span></p>\r\n<p><strong><span>Salzburg Land The</span></strong><br /><span>province \"Salzburg Land\" takes its name from the most famous city of this province Salzburg, which is also known as the birthplace of Mozart and the historical base for the bishops of Salzburg.&nbsp;But the province also shares natural beauties with Upper Austria such as Salzkammergut.&nbsp;The province also contains many other picturesque attractions including villages beyond the sounds of music.</span><br /><span>Salzburg is a city that can bring many different things to tourists from various museums to the most beautiful parks in Austria.&nbsp;These are some of the features that made Salzburg one of the most visited cities in Austria after Vienna.&nbsp;For more information about tourism in this city, visit the official tourism website&nbsp;</span><a href=\"http://www.salzburg.info/\" target=\"_blank\" rel=\"noopener\"><span>www.salzburg.info</span></a></p>\r\n<p><strong><span>Steiermark</span></strong><br /><span>Known for its green landscapes and forests, the \"Green Steiermark\" borders Hungary and Slovenia to the south.&nbsp;Graz, the capital of the province, is Austria\'s second largest city, with a population of about 240,000.&nbsp;Arnold Schwarzenegger was born near Thal bei Graz.</span></p>\r\n<p><strong><span>Tyrol</span></strong><br /><span>This Austrian province is associated with skiing and winter sports, has twice hosted the Winter Olympics (Innsbruck, 1964 and 1976).&nbsp;Located in the heart of the Alps, Tyrol has a history of broken independence.&nbsp;In 1809 Andreas Hofer led a rebellion against the Bavarian and French invaders, but this was before 1815 before Tyrol was again part of Austria.&nbsp;Southern Tyrol (S&uuml;dtirol) became part of Italy after the First World War.&nbsp;(German is still the main language in that part of northern Italy).&nbsp;The loss of South Tyrol left East Tyrol (Ost-Tyrol) as an isolated part of Tyrol in the southern province of Salzburg.</span></p>\r\n<p><strong><span>Vorarlberg</span></strong><br /><span>Vorarlberg means \"land beyond Arlberg.\"&nbsp;This western province of Austria has a large mountain range which also has access to Lake Bodensee in the east which is the second largest alpine lake in Europe.</span></p>\r\n<p><strong><span>Wien</span></strong><br /><span>The famous city of Austria is also one of the nine provinces of the country.&nbsp;After the Romans, Vienna became a settlement of the Habsburg dynasty in 1276 and reached its artistic and cultural heights in the 18th and 19th centuries. Vienna became a province - Bundesland in 1922. Today in Vienna there are many international organizations, including OPEC. ut and the United Nations Office in Vienna, etc.&nbsp;From the cultural diversity, the many beautiful parks to the highest quality services, Vienna has many things that everyone can enjoy.&nbsp;Ancient universities and numerous study opportunities have led many Albanian students to study at various universities in Vienna, making it a major center for study abroad.</span><br /><span>More information about Vienna and tourism services visit the official website&nbsp;</span><a href=\"http://www.wien.info/\" target=\"_blank\" rel=\"noopener\"><span>www.wien.info</span></a></p>', 'As a federal republic, Austria is divided into nine states or provinces (German: Bundesländer). These provinces are then divided into districts (Bezirke) and statutory cities known as (Statutarstädte). The districts are divided into municipalities (Gemeinden). Statutory cities have different powers given to both districts and municipalities. The provinces are not merely administrative divisions, but they have a legislative authority distinct from the federal government, e.g. Provinces play a key role in matters of culture, social care, protection of youth and nature, hunting, construction, etc. In recent years, it has been debated whether Austria today is suitable for a small country to hold ten parliaments.\r\n\r\n\r\n\r\nBurgenland\r\nThis Austrian province was the home of the Esterhazy dynasty and the birthplace of the composer Joseph Haydn (1732-1809). Burgenland lies along the Austrian-Hungarian border and was formerly part of Hungary before it became an Austrian province in 1921. Burgenland\'s main geographical feature is Lake Neusiedler. with a nature reserved for birds and other wildlife. The Neusiedl region is also notable for its wines.\r\n\r\nKärnten\r\nThe southernmost Austrian province is home to the famous Lake Wörthersee and many others, and has the highest peak in Austria, at Grossglockner at 3797 m, which is located in Tauern Hohe National Park. This province has a long history reminiscent of the Celtic and Roman tribes. The province became part of the Habsburg Empire in 1335.\r\n\r\nNiederösterreich\r\nThis province, which in Albanian is called Lower Austria, is the province that surrounds Vienna. The Danube River flows through this largest province of Austria, but Austria Lower is also the home of the first mountain railway in Europe, a picturesque road traversing the railroads over the Semmering Pass mountains.\r\n\r\nOberösterreich\r\nThis province, which in Albanian is called Upper Austria, is the most picturesque Austrian province, offering a variety of lakes, mountains, including the Danube River. The best known picturesque region is Salzkammergut, but the rocky peaks of Dachstein are also an attractive place for visitors all year round.\r\nThe capital Linz is Austria\'s third largest city with about 190,000 inhabitants located south of the Czech border.\r\n\r\nSalzburg Land The\r\nprovince \"Salzburg Land\" takes its name from the most famous city of this province Salzburg, which is also known as the birthplace of Mozart and the historical base for the bishops of Salzburg. But the province also shares natural beauties with Upper Austria such as Salzkammergut. The province also contains many other picturesque attractions including villages beyond the sounds of music.\r\nSalzburg is a city that can bring many different things to tourists from various museums to the most beautiful parks in Austria. These are some of the features that made Salzburg one of the most visited cities in Austria after Vienna. For more information about tourism in this city, visit the official tourism website www.salzburg.info\r\n\r\nSteiermark\r\nKnown for its green landscapes and forests, the \"Green Steiermark\" borders Hungary and Slovenia to the south. Graz, the capital of the province, is Austria\'s second largest city, with a population of about 240,000. Arnold Schwarzenegger was born near Thal bei Graz.\r\n\r\nTyrol\r\nThis Austrian province is associated with skiing and winter sports, has twice hosted the Winter Olympics (Innsbruck, 1964 and 1976). Located in the heart of the Alps, Tyrol has a history of broken independence. In 1809 Andreas Hofer led a rebellion against the Bavarian and French invaders, but this was before 1815 before Tyrol was again part of Austria. Southern Tyrol (Südtirol) became part of Italy after the First World War. (German is still the main language in that part of northern Italy). The loss of South Tyrol left East Tyrol (Ost-Tyrol) as an isolated part of Tyrol in the southern province of Salzburg.\r\n\r\nVorarlberg\r\nVorarlberg means \"land beyond Arlberg.\" This western province of Austria has a large mountain range which also has access to Lake Bodensee in the east which is the second largest alpine lake in Europe.\r\n\r\nWien\r\nThe famous city of Austria is also one of the nine provinces of the country. After the Romans, Vienna became a settlement of the Habsburg dynasty in 1276 and reached its artistic and cultural heights in the 18th and 19th centuries. Vienna became a province - Bundesland in 1922. Today in Vienna there are many international organizations, including OPEC. ut and the United Nations Office in Vienna, etc. From the cultural diversity, the many beautiful parks to the highest quality services, Vienna has many things that everyone can enjoy. Ancient universities and numerous study opportunities have led many Albanian students to study at various universities in Vienna, making it a major center for study abroad.\r\nMore information about Vienna and tourism services visit the official website www.wien.info', NULL, NULL, 13, NULL, NULL, 1, NULL, 1, NULL, NULL, '2020-05-17 08:23:48', '2020-05-17 08:23:48'),
(5, 'Austrian Embassy in Pristina', 'austrianembassyinpristina', '<div class=\"teksti\">\r\n<h1><span style=\"font-size: 14px;\">From January 1, 2010, the Swiss Embassy in Pristina issues Schengen visas (Visa C) instead of the Austrian Embassy for Kosovar citizens who want to travel to Austria.</span></h1>\r\n<div class=\"row\">\r\n<div class=\"col-md-8\">\r\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">We have placed the contacts of the Austrian Embassy in Prishtina aside, while for the Swiss Embassy click on the following link: </span></span><a href=\"../../zvicer/shqiptaret/zvicra_prishtine.html\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">The Swiss Embassy in Prishtina</span></span></a></p>\r\n<h1><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Your trip to Austria</span></span></h1>\r\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">To travel to Austria, citizens of the Republic of Kosovo need a valid visa. </span><span style=\"vertical-align: inherit;\">With a valid Kosovo passport and the main residence in Kosovo, they can apply for a Schengen visa at the </span></span><a href=\"../../zvicer/shqiptaret/zvicra_prishtine.html\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Swiss Embassy in Pristina</span></span></a><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> or the </span></span><a href=\"austria_shkup.html\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Austrian Embassy in Skopje</span></span></a><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> . </span><span style=\"vertical-align: inherit;\">Applications for a D visa or residence permit for Austria should only be applied at the Austrian Embassy in Skopje.</span></span></p>\r\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">From 19 July 2013, third-country nationals wishing to travel to the Schengen area must have a travel document which:</span></span></p>\r\n<ul>\r\n<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">is also valid for three months after the date of return from the Schengen area, and</span></span></li>\r\n<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">has been issued within the last 10 years.</span></span></li>\r\n</ul>\r\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">A third-country national who plans to stay in Austria for up to three months, starting from 19. July 2013, must have a travel document valid for at least another six months.</span></span></p>\r\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Sources of information were obtained from the website of the Austrian embassy </span></span><a href=\"http://www.bmeia.gv.at/al/ambasada/prishtine.html\" target=\"_blank\" rel=\"noopener\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Vizito</span></span></a><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> . </span></span></p>\r\n<p><em><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Refreshed on 05.09.2013</span></span></em></p>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<h1><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Austrian Embassy in Kosovo</span></span></h1>\r\n<h2><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Austrian Embassy in Pristina</span></span></h2>\r\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">St. </span><span style=\"vertical-align: inherit;\">Ahmet Krasniqi 22 </span></span><br /><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">(Arb&euml;ria I) </span></span><br /><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">10000 Prishtina</span></span></p>\r\n<br />\r\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Embassy </span></span><br /><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Tel .: +381 38 249 284 </span></span><br /><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Fax: +381 38 249 285 </span></span><br /><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> E-mail </span></span><span style=\"color: 0055ff;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">pristina-ob@bmeia.gv.at </span></span></span><br /><a href=\"http://www.bmeia.gv.at/al/ambasada/prishtine.html\" target=\"_blank\" rel=\"noopener\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">www.bmeia.gv.at</span></span></a></p>\r\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Pair work on consular issues: </span></span><br /><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Monday - Friday </span></span><br /><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">09:00 - 12:00</span></span></p>\r\n<br />\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>', 'From January 1, 2010, the Swiss Embassy in Pristina issues Schengen visas (Visa C) instead of the Austrian Embassy for Kosovar citizens who want to travel to Austria.\r\nWe have placed the contacts of the Austrian Embassy in Prishtina aside, while for the Swiss Embassy click on the following link: The Swiss Embassy in Prishtina\r\n\r\nYour trip to Austria\r\nTo travel to Austria, citizens of the Republic of Kosovo need a valid visa. With a valid Kosovo passport and the main residence in Kosovo, they can apply for a Schengen visa at the Swiss Embassy in Pristina or the Austrian Embassy in Skopje . Applications for a D visa or residence permit for Austria should only be applied at the Austrian Embassy in Skopje.\r\n\r\nFrom 19 July 2013, third-country nationals wishing to travel to the Schengen area must have a travel document which:\r\n\r\nis also valid for three months after the date of return from the Schengen area, and\r\nhas been issued within the last 10 years.\r\nA third-country national who plans to stay in Austria for up to three months, starting from 19. July 2013, must have a travel document valid for at least another six months.\r\n\r\nSources of information were obtained from the website of the Austrian embassy Vizito .\r\n\r\nRefreshed on 05.09.2013\r\n\r\nAustrian Embassy in Kosovo\r\nAustrian Embassy in Pristina\r\nSt. Ahmet Krasniqi 22 \r\n(Arbëria I) \r\n10000 Prishtina\r\n\r\n\r\nEmbassy \r\nTel .: +381 38 249 284 \r\nFax: +381 38 249 285 \r\nE-mail pristina-ob@bmeia.gv.at \r\nwww.bmeia.gv.at\r\n\r\nPair work on consular issues: \r\nMonday - Friday \r\n09:00 - 12:00', NULL, NULL, 15, NULL, NULL, 0, '2020-05-17 08:25:38', 1, NULL, 1, '2020-05-17 08:25:30', '2020-05-17 08:25:38'),
(6, 'Austrian Embassy in Pristina', 'austrianembassyinpristina1', '<div class=\"teksti\">\r\n<h1><span style=\"font-size: 14px;\">From January 1, 2010, the Swiss Embassy in Pristina issues Schengen visas (Visa C) instead of the Austrian Embassy for Kosovar citizens who want to travel to Austria.</span></h1>\r\n<div class=\"row\">\r\n<div class=\"col-md-8\">\r\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">We have placed the contacts of the Austrian Embassy in Prishtina aside, while for the Swiss Embassy click on the following link: </span></span><a href=\"../../zvicer/shqiptaret/zvicra_prishtine.html\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">The Swiss Embassy in Prishtina</span></span></a></p>\r\n<h1><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Your trip to Austria</span></span></h1>\r\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">To travel to Austria, citizens of the Republic of Kosovo need a valid visa. </span><span style=\"vertical-align: inherit;\">With a valid Kosovo passport and the main residence in Kosovo, they can apply for a Schengen visa at the </span></span><a href=\"../../zvicer/shqiptaret/zvicra_prishtine.html\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Swiss Embassy in Pristina</span></span></a><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> or the </span></span><a href=\"austria_shkup.html\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Austrian Embassy in Skopje</span></span></a><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> . </span><span style=\"vertical-align: inherit;\">Applications for a D visa or residence permit for Austria should only be applied at the Austrian Embassy in Skopje.</span></span></p>\r\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">From 19 July 2013, third-country nationals wishing to travel to the Schengen area must have a travel document which:</span></span></p>\r\n<ul>\r\n<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">is also valid for three months after the date of return from the Schengen area, and</span></span></li>\r\n<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">has been issued within the last 10 years.</span></span></li>\r\n</ul>\r\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">A third-country national who plans to stay in Austria for up to three months, starting from 19. July 2013, must have a travel document valid for at least another six months.</span></span></p>\r\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Sources of information were obtained from the website of the Austrian embassy </span></span><a href=\"http://www.bmeia.gv.at/al/ambasada/prishtine.html\" target=\"_blank\" rel=\"noopener\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Vizito</span></span></a><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> . </span></span></p>\r\n<p><em><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Refreshed on 05.09.2013</span></span></em></p>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<h1><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Austrian Embassy in Kosovo</span></span></h1>\r\n<h2><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Austrian Embassy in Pristina</span></span></h2>\r\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">St. </span><span style=\"vertical-align: inherit;\">Ahmet Krasniqi 22 </span></span><br /><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">(Arb&euml;ria I) </span></span><br /><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">10000 Prishtina</span></span></p>\r\n<br />\r\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Embassy </span></span><br /><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Tel .: +381 38 249 284 </span></span><br /><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Fax: +381 38 249 285 </span></span><br /><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> E-mail </span></span><span style=\"color: 0055ff;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">pristina-ob@bmeia.gv.at </span></span></span><br /><a href=\"http://www.bmeia.gv.at/al/ambasada/prishtine.html\" target=\"_blank\" rel=\"noopener\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">www.bmeia.gv.at</span></span></a></p>\r\n<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Pair work on consular issues: </span></span><br /><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Monday - Friday </span></span><br /><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">09:00 - 12:00</span></span></p>\r\n<br />\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>', 'From January 1, 2010, the Swiss Embassy in Pristina issues Schengen visas (Visa C) instead of the Austrian Embassy for Kosovar citizens who want to travel to Austria.\r\nWe have placed the contacts of the Austrian Embassy in Prishtina aside, while for the Swiss Embassy click on the following link: The Swiss Embassy in Prishtina\r\n\r\nYour trip to Austria\r\nTo travel to Austria, citizens of the Republic of Kosovo need a valid visa. With a valid Kosovo passport and the main residence in Kosovo, they can apply for a Schengen visa at the Swiss Embassy in Pristina or the Austrian Embassy in Skopje . Applications for a D visa or residence permit for Austria should only be applied at the Austrian Embassy in Skopje.\r\n\r\nFrom 19 July 2013, third-country nationals wishing to travel to the Schengen area must have a travel document which:\r\n\r\nis also valid for three months after the date of return from the Schengen area, and\r\nhas been issued within the last 10 years.\r\nA third-country national who plans to stay in Austria for up to three months, starting from 19. July 2013, must have a travel document valid for at least another six months.\r\n\r\nSources of information were obtained from the website of the Austrian embassy Vizito .\r\n\r\nRefreshed on 05.09.2013\r\n\r\nAustrian Embassy in Kosovo\r\nAustrian Embassy in Pristina\r\nSt. Ahmet Krasniqi 22 \r\n(Arbëria I) \r\n10000 Prishtina\r\n\r\n\r\nEmbassy \r\nTel .: +381 38 249 284 \r\nFax: +381 38 249 285 \r\nE-mail pristina-ob@bmeia.gv.at \r\nwww.bmeia.gv.at\r\n\r\nPair work on consular issues: \r\nMonday - Friday \r\n09:00 - 12:00', NULL, NULL, 15, NULL, NULL, 1, NULL, 1, NULL, NULL, '2020-05-17 08:25:30', '2020-05-17 08:25:30');
INSERT INTO `pages` (`id`, `title`, `slug`, `description`, `meta_description`, `image`, `banner_image`, `category_id`, `article_type_id`, `advertisement_ids`, `status`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`) VALUES
(7, 'History of Austria', 'historyofaustria', '<p><span>Like most European countries, Austria seems to be a place of many different events.&nbsp;However there are some elements of Austrian character that have not changed much over the centuries: the desire for pleasure, beauty, and cultivation have always been the driving forces in the country&rsquo;s past and present.</span></p>\r\n<p><strong><span>The first days The</span></strong><br /><span>area of ​​present-day Austria, which is the fertile valley of the Danube and the alpine valleys, has been settled since the Paleolithic era (until approximately 8000 BC).&nbsp;Around 400 BC, the Celtic peoples of Western Europe settled in the Eastern Alps.&nbsp;From the 7th century onwards one of the main regions of the Celtic occupation was present-day Austria, centered around Hallstatt, a large area of ​​salt mines.&nbsp;Hallstatt period, 750 - 450 BC is named after this region.</span></p>\r\n<p><span>The Romans reached 200 BC and from 15 BC they dominated the whole area.&nbsp;The most important Roman settlement in Austria was Carnuntum (the capital of the Roman province of Pannonia, Nieder&euml;sterreich - Lower Austria today), which became the center of Roman fortifications along the Danube.&nbsp;Today there is an interesting Archaeological Park with a museum and an amphitheater.</span></p>\r\n<p><strong><span>From Ostarrich to Austria</span></strong><br /><span>By the second half of the second century, various Germanic tribes had expanded their territory by making unexpected destructive attacks on Roman territories.&nbsp;By the mid-500s, the Bavarians controlled the territory between the Eastern Alps and the Wienerwald region.&nbsp;Around 800, the Frankish king and eventually the Holy Roman Empire established a territory in the Danube valley known as Ostmark (East Mars).&nbsp;In 996 Ostmark is first referred to as \"Ostarrichi\", the ancestor of the modern German word \"asterich\" - Austria.</span></p>\r\n<p><strong><span>The Habsburgs</span></strong><br /><span>About 100 years later, Rudolf I was crowned ruler of Habsburg in Austria for six centuries.&nbsp;The main part of their kingdom was the Imperial Palace in Vienna, today the accommodation of several museums (Treasury Museum, Sisi Museum) offering a good overview of the Habsburgs.</span></p>\r\n<p><span>The Habsburgs increased their influence and power through strategic alliances ratified by marriages.&nbsp;Due to premature deaths and / or childless marriages within the Burgundian and Spanish dynasties in which his grandfather, Maximilian I (1493-1519), and his father were married, Emperor Charles V (1519-1556) inherited not only hereditary lands, but also the Franche-Comte region and the Netherlands (both were French estates) as well as Spain and its empire in America.</span></p>\r\n<p><strong><span>Turkish Wars The Turkish</span></strong><br /><span>threat, which included cases of unsuccessful actions in Vienna in 1529 and 1683, prompted Poland, Venice, and Russia to join the Habsburg Empire to repel the Turks.&nbsp;By the end of 1690, the command of the imperial forces had been entrusted to Prince Eugene of Savoy.&nbsp;Under his leadership, Habsburg forces gained control over all but a small part of Hungary from 1699.</span></p>\r\n<p><strong><span>Baroque period</span></strong><br /><span>With the end of the Turkish threat, art and culture experienced an increase.&nbsp;Excellent buildings such as Schl&ouml;ss Sch&euml;nbrunn (World Cultural Heritage) or Salzburger Dom etc., were built by architects such as Johann Fischer, Erlach, Lukas, Hildebrandt, Jakob Prandtauer, Daniel Gran etc. creating extraordinary monuments.&nbsp;Under the rule of Empress Maria Theresia (1717-1780) the properties of the Habsburgs were reformed and merged.&nbsp;After the death of Maria Teresa in 1780, her son Joseph II, one of the so-called educated monarchs, continued reforms along the lines followed by his mother.</span></p>\r\n<p><strong><span>From Biedermeier to Jugendstil (New Art)</span></strong><br /><span>The French Revolution in 1789 and the rise of Napoleon, which ensured the French occupation of many Austrian territories, was a major threat to the Habsburgs.&nbsp;During the Congress of Vienna (1814-1815), held in order to review the political maps of the continent after the defeat of Napoleon, the Austrian Chancellor Metternich tried to reconsolidate the Austrian power.&nbsp;In 1848 the French middle-class philosopher achieved revolution in Austria, but the rebellion was immediately suppressed, and Emperor Franz I and Metternich responded by cutting off civil liberties and inflicting severe censorship.&nbsp;As a result people retreated to their homes, focused on family and non-politics, social life came to a standstill.&nbsp;The second part of the Biedermeier period was marked by a growing urbanism and industrialization leading to a new urban middle class.&nbsp;People started meeting again and the arts came to life.&nbsp;Artists of this time include painters such as Ferdinand Georg Waldm&uuml;ller and Friedrich Gauermann, composer Franz Schubert, and poets Adalbert Stifter, Ferdinand Raimund, and Franz Grillparzer.</span></p>\r\n<p><span>In the end the emperor Ferdinand was under pressure to finally give up in favor of the emperor (his nephew) Franz Joseph I, where the 68-year-old domination was one of the longest in Austria.&nbsp;Together with his wife Elisabeth, the \"SISI\" legend, he forms the image of the state of the Austrian empire.&nbsp;Under his rule, Vienna became the most important metropolis in Europe and the center of a multinational state expanded from Hungary to northern Italy and deep into southern Europe.</span></p>\r\n<p><span>Johann Strauss, King of Waltz, celebrated all over the world for his wonderful musical compositions.&nbsp;Sigmund Freud was the founder of the psychoanalytic school of psychology, a movement which popularized the theory that unconscious motives control many behaviors.&nbsp;Around 1900 Vienna Jugendstil (New Art) reached its peak during which artists and designers detached from the exhibition of ordinary salons, to display their works in a more pleasant environment.&nbsp;New art artists include painters Gustav Klimt and Egon Schiele, architects Otto Vagner and Adolf Loos.&nbsp;A walk along Vienna\'s Ringstra&szlig;e Boulevard with its magnificent buildings, a visit to the SISI, the Sigmund Freud Museum or the Austrian Galleryresterichischen give a good overview of this era.</span></p>\r\n<p><strong><span>Century 20</span></strong><br /><span>Filled with ethnic tensions and locked in a rigid system of alliances from the wars of the 19th century, the Austro-Hungarian monarchy was awaiting a catastrophe.&nbsp;A necessary spark was the assassination of the Austrian prince and heir to the throne, Franz Ferdinand, in June 1914 in Sarajevo.&nbsp;Austria\'s declaration of war on Serbia marked the beginning of World War I. Emperor Franz Joseph died in 1916, and after the end of the war in 1918, Austria\'s first republic was founded, ending the 640-year-old Habsburg dynasty.&nbsp;The new republic suffered the most from inflation, unemployment and was close to economic collapse.&nbsp;In 1933,&nbsp;the weak government between the Christian-Social and Social-Democratic coalition gave way to the parties and Engelbert Dollfuss became chancellor in 1932 as head of a right-wing coalition government, designed to address the problems caused by depression.&nbsp;In May 1934 Doffluss promulgated martial law in order to protect Austria from Hitler.&nbsp;In July Dollfuss was shot and killed by the Nazis in a coup attempt.</span></p>\r\n<p><span>On March 12, 1938, German troops marched on Austria and the country was included in the German Reich led by Adolf Hitler.&nbsp;After the end of World War II in 1945, Austria was restored to its borders in 1937 and for a decade was occupied by the victorious allies of World War II, the United States, the Soviet Union, Great Britain, and France.</span></p>\r\n<p><span>On May 15, 1955, the Austrian state treaty was ratified, with Austria declaring its permanent neutrality.&nbsp;Thanks to its location near the Iron Curtain, Austria quickly developed into a nerve center between west and east.&nbsp;After the Hungarian revolution of 1956 and the spring invasion of Prague in 1968, Austria granted asylum to refugees.&nbsp;Austria is also the basis of many international organizations such as the UN, OPEC, as well as hosting many important conferences and summits.&nbsp;The Iron Curtain fell in 1989/90, in 1995 Austria became a member of the European Union.</span></p>', 'Like most European countries, Austria seems to be a place of many different events. However there are some elements of Austrian character that have not changed much over the centuries: the desire for pleasure, beauty, and cultivation have always been the driving forces in the country’s past and present.\r\n\r\nThe first days The\r\narea of ​​present-day Austria, which is the fertile valley of the Danube and the alpine valleys, has been settled since the Paleolithic era (until approximately 8000 BC). Around 400 BC, the Celtic peoples of Western Europe settled in the Eastern Alps. From the 7th century onwards one of the main regions of the Celtic occupation was present-day Austria, centered around Hallstatt, a large area of ​​salt mines. Hallstatt period, 750 - 450 BC is named after this region.\r\n\r\nThe Romans reached 200 BC and from 15 BC they dominated the whole area. The most important Roman settlement in Austria was Carnuntum (the capital of the Roman province of Pannonia, Niederësterreich - Lower Austria today), which became the center of Roman fortifications along the Danube. Today there is an interesting Archaeological Park with a museum and an amphitheater.\r\n\r\nFrom Ostarrich to Austria\r\nBy the second half of the second century, various Germanic tribes had expanded their territory by making unexpected destructive attacks on Roman territories. By the mid-500s, the Bavarians controlled the territory between the Eastern Alps and the Wienerwald region. Around 800, the Frankish king and eventually the Holy Roman Empire established a territory in the Danube valley known as Ostmark (East Mars). In 996 Ostmark is first referred to as \"Ostarrichi\", the ancestor of the modern German word \"asterich\" - Austria.\r\n\r\nThe Habsburgs\r\nAbout 100 years later, Rudolf I was crowned ruler of Habsburg in Austria for six centuries. The main part of their kingdom was the Imperial Palace in Vienna, today the accommodation of several museums (Treasury Museum, Sisi Museum) offering a good overview of the Habsburgs.\r\n\r\nThe Habsburgs increased their influence and power through strategic alliances ratified by marriages. Due to premature deaths and / or childless marriages within the Burgundian and Spanish dynasties in which his grandfather, Maximilian I (1493-1519), and his father were married, Emperor Charles V (1519-1556) inherited not only hereditary lands, but also the Franche-Comte region and the Netherlands (both were French estates) as well as Spain and its empire in America.\r\n\r\nTurkish Wars The Turkish\r\nthreat, which included cases of unsuccessful actions in Vienna in 1529 and 1683, prompted Poland, Venice, and Russia to join the Habsburg Empire to repel the Turks. By the end of 1690, the command of the imperial forces had been entrusted to Prince Eugene of Savoy. Under his leadership, Habsburg forces gained control over all but a small part of Hungary from 1699.\r\n\r\nBaroque period\r\nWith the end of the Turkish threat, art and culture experienced an increase. Excellent buildings such as Schlöss Schënbrunn (World Cultural Heritage) or Salzburger Dom etc., were built by architects such as Johann Fischer, Erlach, Lukas, Hildebrandt, Jakob Prandtauer, Daniel Gran etc. creating extraordinary monuments. Under the rule of Empress Maria Theresia (1717-1780) the properties of the Habsburgs were reformed and merged. After the death of Maria Teresa in 1780, her son Joseph II, one of the so-called educated monarchs, continued reforms along the lines followed by his mother.\r\n\r\nFrom Biedermeier to Jugendstil (New Art)\r\nThe French Revolution in 1789 and the rise of Napoleon, which ensured the French occupation of many Austrian territories, was a major threat to the Habsburgs. During the Congress of Vienna (1814-1815), held in order to review the political maps of the continent after the defeat of Napoleon, the Austrian Chancellor Metternich tried to reconsolidate the Austrian power. In 1848 the French middle-class philosopher achieved revolution in Austria, but the rebellion was immediately suppressed, and Emperor Franz I and Metternich responded by cutting off civil liberties and inflicting severe censorship. As a result people retreated to their homes, focused on family and non-politics, social life came to a standstill. The second part of the Biedermeier period was marked by a growing urbanism and industrialization leading to a new urban middle class. People started meeting again and the arts came to life. Artists of this time include painters such as Ferdinand Georg Waldmüller and Friedrich Gauermann, composer Franz Schubert, and poets Adalbert Stifter, Ferdinand Raimund, and Franz Grillparzer.\r\n\r\nIn the end the emperor Ferdinand was under pressure to finally give up in favor of the emperor (his nephew) Franz Joseph I, where the 68-year-old domination was one of the longest in Austria. Together with his wife Elisabeth, the \"SISI\" legend, he forms the image of the state of the Austrian empire. Under his rule, Vienna became the most important metropolis in Europe and the center of a multinational state expanded from Hungary to northern Italy and deep into southern Europe.\r\n\r\nJohann Strauss, King of Waltz, celebrated all over the world for his wonderful musical compositions. Sigmund Freud was the founder of the psychoanalytic school of psychology, a movement which popularized the theory that unconscious motives control many behaviors. Around 1900 Vienna Jugendstil (New Art) reached its peak during which artists and designers detached from the exhibition of ordinary salons, to display their works in a more pleasant environment. New art artists include painters Gustav Klimt and Egon Schiele, architects Otto Vagner and Adolf Loos. A walk along Vienna\'s Ringstraße Boulevard with its magnificent buildings, a visit to the SISI, the Sigmund Freud Museum or the Austrian Galleryresterichischen give a good overview of this era.\r\n\r\nCentury 20\r\nFilled with ethnic tensions and locked in a rigid system of alliances from the wars of the 19th century, the Austro-Hungarian monarchy was awaiting a catastrophe. A necessary spark was the assassination of the Austrian prince and heir to the throne, Franz Ferdinand, in June 1914 in Sarajevo. Austria\'s declaration of war on Serbia marked the beginning of World War I. Emperor Franz Joseph died in 1916, and after the end of the war in 1918, Austria\'s first republic was founded, ending the 640-year-old Habsburg dynasty. The new republic suffered the most from inflation, unemployment and was close to economic collapse. In 1933, the weak government between the Christian-Social and Social-Democratic coalition gave way to the parties and Engelbert Dollfuss became chancellor in 1932 as head of a right-wing coalition government, designed to address the problems caused by depression. In May 1934 Doffluss promulgated martial law in order to protect Austria from Hitler. In July Dollfuss was shot and killed by the Nazis in a coup attempt.\r\n\r\nOn March 12, 1938, German troops marched on Austria and the country was included in the German Reich led by Adolf Hitler. After the end of World War II in 1945, Austria was restored to its borders in 1937 and for a decade was occupied by the victorious allies of World War II, the United States, the Soviet Union, Great Britain, and France.\r\n\r\nOn May 15, 1955, the Austrian state treaty was ratified, with Austria declaring its permanent neutrality. Thanks to its location near the Iron Curtain, Austria quickly developed into a nerve center between west and east. After the Hungarian revolution of 1956 and the spring invasion of Prague in 1968, Austria granted asylum to refugees. Austria is also the basis of many international organizations such as the UN, OPEC, as well as hosting many important conferences and summits. The Iron Curtain fell in 1989/90, in 1995 Austria became a member of the European Union.', NULL, NULL, 13, NULL, NULL, 1, NULL, 1, NULL, NULL, '2020-05-17 08:26:24', '2020-05-17 08:26:24'),
(8, 'Tourism in Austria', 'tourisminaustria', '<p><span>Tourism accounts for a significant share of Austria\'s economy, almost 9% of gross domestic product.&nbsp;From the statistics in 2007, the total number of tourists staying overnight remains approximately the same for summer and winter season, with the highest number in February and July / August.</span></p>\r\n<p><span>In 2007, Austria ranked 9th in the world in international tourism bills, at $ 18.9 billion.&nbsp;In international tourist arrivals, Austria ranks 12th with 20.8 million tourists.</span></p>\r\n<p><span>Vienna attracts a large number of tourists, both in summer and in winter.&nbsp;Salzburg receives about 1/5 of tourists compared to Vienna, which ranks 2nd in the summer season.&nbsp;In the winter season, a number of winter sports resorts in western Austria reach Salzburg in the number of nightclubs.&nbsp;Selden, Saalbach-Hinterglemm, Ischgl, Sankt Anton am Arlberg etc.</span></p>\r\n<p><span>Data on tourists are presented at the municipal level, divided by countries of origin and seasons.&nbsp;From these data, information is obtained about the number of beds according to the type of accommodation, residential relations, tourist city, Austrian position in international tourism, etc.&nbsp;Through special tourism measures a global overview has been provided by the statistics of Austria www.statistik.at but here there is also information on specific areas.&nbsp;The selected results are presented in time series.</span></p>\r\n<p><span>Visits to Austria mostly include trips to Vienna to her cathedral, &ldquo;Heurigen&rdquo; (vein bars) and romantic musical events.&nbsp;Salzburg - Mozart\'s birthplace, Innsbruck - the capital of the Alps surrounded by the Alps, and the Danube valley with its vineyards, for example Wachau or Dunkelsteinerwald, which are between Melk and Krems, are worth a visit.</span></p>\r\n<p><span>In the western part of the country in the Vorarlberg region reaches Lake Bodensee, and in the eastern part Lake Neusiedler See.&nbsp;Among the three most visited monuments in Austria are Sch&ouml;nbrunn Palace (2,590,000 visitors a year), Tiergarten Sch&ouml;nbrunn (2,453,987 visitors) and Mariazell Basilica (1,500,000 visitors).&nbsp;Of great tourist importance are Austrian skiing, mountaineering and mountain resorts in the Alps as family-friendly, recreational areas (eg witch water in Tyrol).&nbsp;The same is true of the many Austrian lakes (eg Wolfgangsee and other lakes east of Salzkammerg and Salzburg or W&ouml;rthersee in K&auml;rnten).</span></p>\r\n<p><span>For interested visitors in the art of media, it is the center of electronic art in Linz.&nbsp;Since 1979, this center has organized the electronic art festival and presented \"Ars Prix Electronica\", ranking it with the highest award for media art.</span></p>\r\n<p><span>For more information about tourism visit the official portal&nbsp;</span><a href=\"http://www.austria.info/\"><span>www.austria.info</span></a></p>', 'Tourism accounts for a significant share of Austria\'s economy, almost 9% of gross domestic product. From the statistics in 2007, the total number of tourists staying overnight remains approximately the same for summer and winter season, with the highest number in February and July / August.\r\n\r\nIn 2007, Austria ranked 9th in the world in international tourism bills, at $ 18.9 billion. In international tourist arrivals, Austria ranks 12th with 20.8 million tourists.\r\n\r\nVienna attracts a large number of tourists, both in summer and in winter. Salzburg receives about 1/5 of tourists compared to Vienna, which ranks 2nd in the summer season. In the winter season, a number of winter sports resorts in western Austria reach Salzburg in the number of nightclubs. Selden, Saalbach-Hinterglemm, Ischgl, Sankt Anton am Arlberg etc.\r\n\r\nData on tourists are presented at the municipal level, divided by countries of origin and seasons. From these data, information is obtained about the number of beds according to the type of accommodation, residential relations, tourist city, Austrian position in international tourism, etc. Through special tourism measures a global overview has been provided by the statistics of Austria www.statistik.at but here there is also information on specific areas. The selected results are presented in time series.\r\n\r\nVisits to Austria mostly include trips to Vienna to her cathedral, “Heurigen” (vein bars) and romantic musical events. Salzburg - Mozart\'s birthplace, Innsbruck - the capital of the Alps surrounded by the Alps, and the Danube valley with its vineyards, for example Wachau or Dunkelsteinerwald, which are between Melk and Krems, are worth a visit.\r\n\r\nIn the western part of the country in the Vorarlberg region reaches Lake Bodensee, and in the eastern part Lake Neusiedler See. Among the three most visited monuments in Austria are Schönbrunn Palace (2,590,000 visitors a year), Tiergarten Schönbrunn (2,453,987 visitors) and Mariazell Basilica (1,500,000 visitors). Of great tourist importance are Austrian skiing, mountaineering and mountain resorts in the Alps as family-friendly, recreational areas (eg witch water in Tyrol). The same is true of the many Austrian lakes (eg Wolfgangsee and other lakes east of Salzkammerg and Salzburg or Wörthersee in Kärnten).\r\n\r\nFor interested visitors in the art of media, it is the center of electronic art in Linz. Since 1979, this center has organized the electronic art festival and presented \"Ars Prix Electronica\", ranking it with the highest award for media art.\r\n\r\nFor more information about tourism visit the official portal www.austria.info', NULL, NULL, 13, NULL, NULL, 1, NULL, 1, NULL, NULL, '2020-05-17 08:27:01', '2020-05-17 08:27:01'),
(9, 'The methodology how to learn a foreign language as an immigrant', 'themethodologyhowtolearnaforeignlanguageasanimmigrant', '<h2>The methodology how to learn a foreign language as an immigrant</h2>\r\n<p>As in every field of life we face different challenges, as well learning a new language there are different methods how to approach to the right path. Because of different circumstances, I can\'t say exactly what is the most appropriate method for learning a language but there are some criteria and priorities that positively affects. Just to keep in mind, even those criteria are positive, they don\'t fit to everyone therefore I am trying to find a solution which is suitable for all immigrants who are interested to learn and of course face new challenges. Below are listed several methods.</p>\r\n<h2>Language courses</h2>\r\n<p>Language courses are amongst the most used methods from immigrants to start and follow the process of integration which language is the most important part, but their ideology and success often fail to each other for different reasons. To give a better clue in this case, I am taking some examples by dividing into two groups: a) advantages and b) weakness</p>\r\n<p><strong>a) Advantages</strong></p>\r\n<ul class=\"titujt-1\">\r\n<li>Courses encourage students because they think it is the right place to learn a new language</li>\r\n<li>Ideology and program that contain courses have many positive features such as they contain many things that are needed (how much will we use those content?)</li>\r\n<li>Evaluation and obtaining a certificate positively stimulate students</li>\r\n</ul>\r\n<p><strong>b) Weakness:</strong></p>\r\n<ul class=\"titujt-1\">\r\n<li>Participation in big groups with over 10 students who have different ages and education backgrounds it doesn\'t fit to all, including some other issues as well</li>\r\n<li>Learning language in daily long hours and as well be in language courses for over one year, create frustration to many students and that\'s one reason why they lose focusing on following</li>\r\n<li>Curriculums that follow all grammar rules do not positively impact because most immigrants they are interested to learn language for use in their daily life and there are many cases who doesn\'t even understand well the grammar of their own language</li>\r\n</ul>\r\n<p><strong>Note:</strong></p>\r\n<p>Going through those critics or suggestion, I don\'t want to convince anyone to leave or follow language courses because my idea is to find a solution for those who tries to find the right way on learning a new language. As I mentioned, there are advantages and weakness but to reach the goal, have to take in consideration the needs of immigrants in their daily life and some other issues which affect a lot because of background, growing, society etc.</p>\r\n<h2>Work</h2>\r\n<p>Learning language at work has shown good results because people face different challenges. This method has positive impact in society and most of immigrants learn spoken language which in fact is used in daily life. As an advantage in this case, I would mention practice to talk and as weakness when immigrants work only with people who speaks only their own language, which make for them very hard to learn the new language even living for many years abroad.</p>\r\n<h2>Society</h2>\r\n<p>Society can play a good role and reflect a positive impact if there is included diversity in speaking the language where people are living. Often groups in society speak their own or English as a common language which in fact affect to a long term getting used to find solutions on their needs. Talking in three languages in daily life would be very useful since it makes you feel your own things in culture issues than, the language where you live which is useful for daily needs and of course English make sense to keep in trend modern civilization.</p>\r\n<h2>Family</h2>\r\n<p>Learning the language in family environment could create a positive impact but this is a bit difficult for immigrants since everyone would like to talk their own. The best way in this case is to follow children which they grow in a different environment following schools, new friends etc.</p>\r\n<h2>Media</h2>\r\n<p>Learning language by using media would play a very positive impact and opportunities are open to everyone. Concrete facts have shown great success in this field, including language learning through television, radio, press, and especially internet. The internet will be a specific case as the opportunities across the web are provided and the materials are of all kinds. In your own computer, you use many terms daily and if you have a deeper focus on language then the ability to learn faster is open. Since internet has made a revolution also materials for learning a new language has a lot.</p>\r\n<h2>Advice</h2>\r\n<p>Regardless of which method you will use, each has its own positive impact. Important in those methods is to encourage immigrants trying to use the best method which it fits to them because as I mentioned in beginning, it depends the way how the people understand and their background. As an advice it would be a good way to try few of them and compare which it fits for you. In the cases when you make mistakes in talking, don\'t think so much about that but follow to improve skills and step by step knowledge with raise and learning will become easier. Good luck.</p>\r\n<p>by:&nbsp;<strong>Faton Krasniqi</strong></p>', 'The methodology how to learn a foreign language as an immigrant\r\nAs in every field of life we face different challenges, as well learning a new language there are different methods how to approach to the right path. Because of different circumstances, I can\'t say exactly what is the most appropriate method for learning a language but there are some criteria and priorities that positively affects. Just to keep in mind, even those criteria are positive, they don\'t fit to everyone therefore I am trying to find a solution which is suitable for all immigrants who are interested to learn and of course face new challenges. Below are listed several methods.\r\n\r\nLanguage courses\r\nLanguage courses are amongst the most used methods from immigrants to start and follow the process of integration which language is the most important part, but their ideology and success often fail to each other for different reasons. To give a better clue in this case, I am taking some examples by dividing into two groups: a) advantages and b) weakness\r\n\r\na) Advantages\r\n\r\nCourses encourage students because they think it is the right place to learn a new language\r\nIdeology and program that contain courses have many positive features such as they contain many things that are needed (how much will we use those content?)\r\nEvaluation and obtaining a certificate positively stimulate students\r\nb) Weakness:\r\n\r\nParticipation in big groups with over 10 students who have different ages and education backgrounds it doesn\'t fit to all, including some other issues as well\r\nLearning language in daily long hours and as well be in language courses for over one year, create frustration to many students and that\'s one reason why they lose focusing on following\r\nCurriculums that follow all grammar rules do not positively impact because most immigrants they are interested to learn language for use in their daily life and there are many cases who doesn\'t even understand well the grammar of their own language\r\nNote:\r\n\r\nGoing through those critics or suggestion, I don\'t want to convince anyone to leave or follow language courses because my idea is to find a solution for those who tries to find the right way on learning a new language. As I mentioned, there are advantages and weakness but to reach the goal, have to take in consideration the needs of immigrants in their daily life and some other issues which affect a lot because of background, growing, society etc.\r\n\r\nWork\r\nLearning language at work has shown good results because people face different challenges. This method has positive impact in society and most of immigrants learn spoken language which in fact is used in daily life. As an advantage in this case, I would mention practice to talk and as weakness when immigrants work only with people who speaks only their own language, which make for them very hard to learn the new language even living for many years abroad.\r\n\r\nSociety\r\nSociety can play a good role and reflect a positive impact if there is included diversity in speaking the language where people are living. Often groups in society speak their own or English as a common language which in fact affect to a long term getting used to find solutions on their needs. Talking in three languages in daily life would be very useful since it makes you feel your own things in culture issues than, the language where you live which is useful for daily needs and of course English make sense to keep in trend modern civilization.\r\n\r\nFamily\r\nLearning the language in family environment could create a positive impact but this is a bit difficult for immigrants since everyone would like to talk their own. The best way in this case is to follow children which they grow in a different environment following schools, new friends etc.\r\n\r\nMedia\r\nLearning language by using media would play a very positive impact and opportunities are open to everyone. Concrete facts have shown great success in this field, including language learning through television, radio, press, and especially internet. The internet will be a specific case as the opportunities across the web are provided and the materials are of all kinds. In your own computer, you use many terms daily and if you have a deeper focus on language then the ability to learn faster is open. Since internet has made a revolution also materials for learning a new language has a lot.\r\n\r\nAdvice\r\nRegardless of which method you will use, each has its own positive impact. Important in those methods is to encourage immigrants trying to use the best method which it fits to them because as I mentioned in beginning, it depends the way how the people understand and their background. As an advice it would be a good way to try few of them and compare which it fits for you. In the cases when you make mistakes in talking, don\'t think so much about that but follow to improve skills and step by step knowledge with raise and learning will become easier. Good luck.\r\n\r\nby: Faton Krasniqi', NULL, NULL, 19, NULL, NULL, 1, NULL, 1, NULL, NULL, '2021-02-02 09:09:20', '2021-02-02 09:09:20'),
(10, 'Another Article in FInland', 'finland-12', '<p>Another Article in FInlandAnother Article in FInland&nbsp;&nbsp;Another Article in FInland&nbsp;Another Article in FInland&nbsp;</p>\r\n<p>Another Article in FInlandAnother Article in FInland&nbsp;&nbsp;Another Article in FInland&nbsp;Another Article in FInland</p>\r\n<p>Another Article in FInlandAnother Article in FInland&nbsp;&nbsp;Another Article in FInland&nbsp;Another Article in FInland</p>\r\n<p>Another Article in FInlandAnother Article in FInland&nbsp;&nbsp;Another Article in FInland&nbsp;Another Article in FInland</p>\r\n<p>Another Article in FInlandAnother Article in FInland&nbsp;&nbsp;Another Article in FInland&nbsp;Another Article in FInland</p>\r\n<p>Another Article in FInlandAnother Article in FInland&nbsp;&nbsp;Another Article in FInland&nbsp;Another Article in FInland</p>\r\n<p>Another Article in FInlandAnother Article in FInland&nbsp;&nbsp;Another Article in FInland&nbsp;Another Article in FInland</p>\r\n<p>Another Article in FInlandAnother Article in FInland&nbsp;&nbsp;Another Article in FInland&nbsp;Another Article in FInland</p>', NULL, NULL, NULL, 19, 1, NULL, 1, NULL, 1, 1, NULL, '2021-02-03 00:35:40', '2021-02-03 00:37:02'),
(11, 'Article in Main Diaspora for testing', 'article-in-main-diaspora-for-testing', '<p>Article in Main Diaspora for testing&nbsp;Article in Main Diaspora for testing&nbsp;Article in Main Diaspora for testing&nbsp;Article in Main Diaspora for testing&nbsp;Article in Main Diaspora for testing&nbsp;Article in Main Diaspora for testing&nbsp;Article in Main Diaspora for testing&nbsp;Article in Main Diaspora for testing&nbsp;Article in Main Diaspora for testing&nbsp;Article in Main Diaspora for testing&nbsp;Article in Main Diaspora for testing&nbsp;Article in Main Diaspora for testingArticle in Main Diaspora for</p>\r\n<p>&nbsp;</p>\r\n<p>testing&nbsp;Article in Main Diaspora for testing&nbsp;Article in Main Diaspora for testing&nbsp;Article in Main Diaspora for testing&nbsp;Article in Main Diaspora for testing&nbsp;Article in Main Diaspora for testingArticle in Main Diaspora for testing&nbsp;Article in Main Diaspora for testing&nbsp;Article in Main Diaspora for testing&nbsp;Article in Main Diaspora for testing&nbsp;Article in Main Diaspora for testing&nbsp;Article in Main Diaspora for testingArticle in Main Diaspora for testing&nbsp;Article in Main Diaspora for testing&nbsp;Article in Main Diaspora for testing&nbsp;Article in Main Diaspora for testing&nbsp;Article in Main Diaspora for testing&nbsp;Article in Main Diaspora for testing</p>', NULL, NULL, NULL, 4, 1, NULL, 1, NULL, 1, NULL, NULL, '2021-02-03 02:15:25', '2021-02-03 02:15:25'),
(12, 'Another Article in Main Diaspora', 'another-article-in-main-diaspora', '<p>Another Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main Diaspora</p>\r\n<p>Another Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main DiasporaAnother Article in Main Diaspora</p>', NULL, NULL, NULL, 4, 2, NULL, 1, NULL, 1, NULL, NULL, '2021-02-03 02:15:46', '2021-02-03 02:15:46'),
(13, 'Article another in diaspora', 'article-another-in-diaspora', '<p>Article another in diasporaArticle another in diasporaArticle another in diasporaArticle another in diasporaArticle another in diasporaArticle another in diasporaArticle another in diasporaArticle another in diasporaArticle another in diaspora</p>\r\n<p>Article another in diasporaArticle another in diasporaArticle another in diasporaArticle another in diasporaArticle another in diasporaArticle another in diasporaArticle another in diasporaArticle another in diasporaArticle another in diasporaArticle another in diasporaArticle another in diasporaArticle another in diasporaArticle another in diaspora</p>\r\n<p>&nbsp;</p>', NULL, NULL, NULL, 4, 2, '[\"3\"]', 1, NULL, 1, 1, NULL, '2021-02-03 02:16:08', '2021-02-04 07:51:11'),
(14, 'Article with advertisement', 'article-with-advertisement', '<p>Article with advertisement&nbsp;Article with advertisement</p>', NULL, 'Article with advertisement-1612360095-logo.jpg', NULL, 19, 3, '[\"3\",\"4\",\"6\"]', 1, NULL, 1, 1, NULL, '2021-02-03 07:48:15', '2021-02-04 07:46:28'),
(15, 'Article with multi add', 'article-with-multi-add', '<p>sdsdsd</p>', NULL, NULL, NULL, 9, 1, '[\"3\",\"4\",\"6\"]', 1, NULL, 1, 1, NULL, '2021-02-04 07:49:54', '2021-02-04 08:04:20');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `group_name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'settings.view', 'settings', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(2, 'settings.edit', 'settings', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(3, 'permission.view', 'permission', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(4, 'permission.create', 'permission', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(5, 'permission.edit', 'permission', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(6, 'permission.delete', 'permission', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(7, 'admin.view', 'admin', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(8, 'admin.create', 'admin', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(9, 'admin.edit', 'admin', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(10, 'admin.delete', 'admin', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(11, 'admin_profile.view', 'admin_profile', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(12, 'admin_profile.edit', 'admin_profile', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(13, 'role.view', 'role', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(14, 'role.create', 'role', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(15, 'role.edit', 'role', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(16, 'role.delete', 'role', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(17, 'user.view', 'user', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(18, 'user.create', 'user', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(19, 'user.edit', 'user', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(20, 'user.delete', 'user', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(21, 'category.view', 'category', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(22, 'category.create', 'category', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(23, 'category.edit', 'category', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(24, 'category.delete', 'category', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(25, 'page.view', 'page', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(26, 'page.create', 'page', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(27, 'page.edit', 'page', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(28, 'page.delete', 'page', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(29, 'blog.view', 'blog', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(30, 'blog.create', 'blog', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(31, 'blog.edit', 'blog', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(32, 'blog.delete', 'blog', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(33, 'slider.view', 'slider', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(34, 'slider.create', 'slider', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(35, 'slider.edit', 'slider', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(36, 'slider.delete', 'slider', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(37, 'tracking.view', 'tracking', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(38, 'tracking.delete', 'tracking', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(39, 'email_notification.view', 'email_notification', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(40, 'email_notification.edit', 'email_notification', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(41, 'email_message.view', 'email_message', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(42, 'email_message.edit', 'email_message', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(43, 'module.view', 'module', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(44, 'module.create', 'module', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(45, 'module.edit', 'module', 'admin', '2020-05-10 05:17:46', '2020-05-10 05:17:46'),
(46, 'module.delete', 'module', 'admin', '2020-05-10 05:17:46', '2020-05-10 05:17:46'),
(47, 'module.toggle', 'module', 'admin', '2020-05-10 05:17:46', '2020-05-10 05:17:46'),
(48, 'dashboard.view', 'dashboard', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(49, 'advertisement.view', 'advertisement', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(50, 'advertisement.create', 'advertisement', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(51, 'advertisement.edit', 'advertisement', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(52, 'advertisement.delete', 'advertisement', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(3, 'Admin', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(4, 'Editor', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(5, 'Super Admin', 'admin', '2020-05-10 05:17:45', '2020-05-10 05:17:45'),
(10, 'New Role', 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 5),
(1, 10),
(2, 5),
(2, 10),
(3, 5),
(3, 10),
(4, 5),
(4, 10),
(5, 5),
(5, 10),
(6, 5),
(6, 10),
(7, 5),
(7, 10),
(8, 5),
(8, 10),
(9, 5),
(9, 10),
(10, 5),
(10, 10),
(11, 3),
(11, 4),
(11, 5),
(11, 10),
(12, 3),
(12, 4),
(12, 5),
(12, 10),
(13, 5),
(13, 10),
(14, 5),
(14, 10),
(15, 5),
(15, 10),
(16, 5),
(16, 10),
(17, 5),
(17, 10),
(18, 5),
(18, 10),
(19, 5),
(19, 10),
(20, 5),
(20, 10),
(21, 3),
(21, 4),
(21, 5),
(21, 10),
(22, 3),
(22, 4),
(22, 5),
(22, 10),
(23, 3),
(23, 4),
(23, 5),
(23, 10),
(24, 3),
(24, 5),
(24, 10),
(25, 3),
(25, 4),
(25, 5),
(25, 10),
(26, 3),
(26, 4),
(26, 5),
(26, 10),
(27, 3),
(27, 4),
(27, 5),
(27, 10),
(28, 3),
(28, 5),
(28, 10),
(29, 3),
(29, 5),
(29, 10),
(30, 3),
(30, 4),
(30, 5),
(30, 10),
(31, 3),
(31, 4),
(31, 5),
(31, 10),
(32, 3),
(32, 5),
(32, 10),
(33, 5),
(33, 10),
(34, 5),
(34, 10),
(35, 5),
(35, 10),
(36, 5),
(36, 10),
(37, 5),
(37, 10),
(38, 5),
(38, 10),
(39, 5),
(39, 10),
(40, 5),
(40, 10),
(41, 5),
(41, 10),
(42, 5),
(42, 10),
(43, 5),
(43, 10),
(44, 5),
(44, 10),
(45, 5),
(45, 10),
(46, 5),
(46, 10),
(47, 5),
(47, 10),
(48, 3),
(48, 4),
(48, 5),
(48, 10),
(49, 5),
(50, 5),
(51, 5),
(52, 5);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'My Admin Dynamo',
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'logo.png',
  `site_favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'favicon.ico',
  `site_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_copyright_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_meta_author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_contact_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_working_day_hours` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_facebook_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_youtube_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_twitter_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_linkedin_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_custom_data1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_custom_data2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_custom_data3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_custom_data4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

CREATE TABLE `tracks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'If there is possible to keep any reference link',
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tracks`
--

INSERT INTO `tracks` (`id`, `title`, `description`, `reference_link`, `admin_id`, `deleted_at`, `deleted_by`, `created_at`, `updated_at`) VALUES
(1, 'maniruzzamanakash', 'New Admin has been created', NULL, 1, NULL, NULL, '2020-05-11 07:55:22', '2020-05-11 07:55:22'),
(2, 'maniruzzamanakash1', 'New Admin has been created', NULL, 1, NULL, NULL, '2020-05-11 08:01:05', '2020-05-11 08:01:05'),
(3, 'maniruzzamanakash2', 'New Admin has been created', NULL, 1, NULL, NULL, '2020-05-11 08:06:29', '2020-05-11 08:06:29'),
(4, 'maniruzzaman2akash', 'New Admin has been created', NULL, 1, NULL, NULL, '2020-05-11 08:56:57', '2020-05-11 08:56:57'),
(5, 'maniruzzaman12akash', 'New Admin has been created', NULL, 1, NULL, NULL, '2020-05-11 08:59:39', '2020-05-11 08:59:39'),
(6, 'maniruzzama12akash', 'New Admin has been created', NULL, 1, NULL, NULL, '2020-05-11 09:02:14', '2020-05-11 09:02:14'),
(7, 'maniruzzama12akash', 'New Admin has been created', NULL, 1, NULL, NULL, '2020-05-11 16:06:51', '2020-05-11 16:06:51'),
(8, 'maniruzzama12akash', 'Admin has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-11 16:13:14', '2020-05-11 16:13:14'),
(9, 'maniruzzama12akash', 'Admin has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-11 16:13:22', '2020-05-11 16:13:22'),
(10, 'maniruzzama12akash', 'Admin has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-11 16:13:33', '2020-05-11 16:13:33'),
(11, 'maniruzzama12akash', 'Admin has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-11 16:18:06', '2020-05-11 16:18:06'),
(12, 'maniruzzamanakash', 'Admin has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-11 23:06:59', '2020-05-11 23:06:59'),
(13, 'editor', 'Admin has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-11 23:08:36', '2020-05-11 23:08:36'),
(14, 'editor', 'Admin has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-11 23:19:45', '2020-05-11 23:19:45'),
(15, 'maniruzzamanakash', 'Admin has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-11 23:38:11', '2020-05-11 23:38:11'),
(16, 'editor', 'Admin has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-11 23:41:52', '2020-05-11 23:41:52'),
(17, 'editor', 'Admin has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-11 23:42:01', '2020-05-11 23:42:01'),
(18, 'editor', 'Admin has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-11 23:42:14', '2020-05-11 23:42:14'),
(19, 'maniruzzamanakash', 'Admin has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-11 23:43:09', '2020-05-11 23:43:09'),
(20, 'maniruzzamanakash1', 'Admin has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-12 10:02:59', '2020-05-12 10:02:59'),
(21, 'maniruzzama12akash', 'Admin has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-12 10:03:41', '2020-05-12 10:03:41'),
(22, 'maniruzzamanakash', 'Admin has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-12 19:19:07', '2020-05-12 19:19:07'),
(23, 'adminblogwriterhasan', 'New Admin has been created', NULL, 1, NULL, NULL, '2020-05-12 19:19:49', '2020-05-12 19:19:49'),
(24, 'adminblogwriterhasan', 'Admin has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-12 19:19:58', '2020-05-12 19:19:58'),
(25, 'adminblogwriterhasan', 'Admin has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-12 19:20:48', '2020-05-12 19:20:48'),
(26, 'Category', 'New Category has been created', NULL, 1, NULL, NULL, '2020-05-12 20:08:12', '2020-05-12 20:08:12'),
(27, 'Sub Category', 'New Category has been created', NULL, 1, NULL, NULL, '2020-05-12 20:09:29', '2020-05-12 20:09:29'),
(28, 'Sub Category', 'New Category has been created', NULL, 1, NULL, NULL, '2020-05-12 20:11:22', '2020-05-12 20:11:22'),
(29, 'Category Real', 'New Category has been created', NULL, 1, NULL, NULL, '2020-05-12 20:34:30', '2020-05-12 20:34:30'),
(30, 'Category Image', 'New Category has been created', NULL, 1, NULL, NULL, '2020-05-12 20:45:45', '2020-05-12 20:45:45'),
(31, 'Simple Category', 'New Category has been created', NULL, 1, NULL, NULL, '2020-05-12 20:48:47', '2020-05-12 20:48:47'),
(32, 'Test', 'New Category has been created', NULL, 1, NULL, NULL, '2020-05-12 20:50:38', '2020-05-12 20:50:38'),
(33, 'simple', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-12 21:36:33', '2020-05-12 21:36:33'),
(34, 'finalcategory', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-12 21:36:53', '2020-05-12 21:36:53'),
(35, 'finalcategory', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-12 21:37:04', '2020-05-12 21:37:04'),
(36, 'finalcategory', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-12 21:37:53', '2020-05-12 21:37:53'),
(37, 'finalcategory', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-12 21:38:23', '2020-05-12 21:38:23'),
(38, 'earning', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-12 21:38:33', '2020-05-12 21:38:33'),
(39, 'simple', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-12 21:38:42', '2020-05-12 21:38:42'),
(40, 'image', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-12 21:39:31', '2020-05-12 21:39:31'),
(41, 'image', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-12 21:39:47', '2020-05-12 21:39:47'),
(42, 'earning', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-12 21:41:02', '2020-05-12 21:41:02'),
(43, 'realcategory', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-12 21:41:27', '2020-05-12 21:41:27'),
(44, 'Test Page', 'New Page has been created', NULL, 1, NULL, NULL, '2020-05-12 22:29:50', '2020-05-12 22:29:50'),
(45, 'Test Page Updated', 'Page has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-12 22:45:16', '2020-05-12 22:45:16'),
(46, 'Test Page Updated', 'Page has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-12 22:45:25', '2020-05-12 22:45:25'),
(47, 'Test Page Updated', 'Page has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-12 22:45:43', '2020-05-12 22:45:43'),
(48, 'Test Page Updated', 'Page has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-12 22:45:54', '2020-05-12 22:45:54'),
(49, 'Contact Us', 'Page has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-12 22:52:54', '2020-05-12 22:52:54'),
(50, 'superadmin', 'Admin has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-13 06:06:42', '2020-05-13 06:06:42'),
(51, 'Admin 2', 'New Role has been created', NULL, 1, NULL, NULL, '2020-05-13 18:59:51', '2020-05-13 18:59:51'),
(52, 'Another Super Admin', 'New Role has been created', NULL, 1, NULL, NULL, '2020-05-13 19:58:42', '2020-05-13 19:58:42'),
(53, 'New Role', 'New Role has been created', NULL, 1, NULL, NULL, '2020-05-13 20:47:14', '2020-05-13 20:47:14'),
(54, 'Another Role', 'New Role has been created', NULL, 1, NULL, NULL, '2020-05-13 20:48:58', '2020-05-13 20:48:58'),
(55, 'Admin 2', 'Role has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-14 16:01:31', '2020-05-14 16:01:31'),
(56, 'Admin 2', 'Role has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-14 16:01:43', '2020-05-14 16:01:43'),
(57, 'Admin 2', 'Role has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-14 16:01:53', '2020-05-14 16:01:53'),
(58, 'Admin 2', 'Role has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-14 16:02:04', '2020-05-14 16:02:04'),
(59, 'Admin', 'Role has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-14 16:13:47', '2020-05-14 16:13:47'),
(60, 'First Test', 'New Blog has been created', NULL, 1, NULL, NULL, '2020-05-14 20:48:20', '2020-05-14 20:48:20'),
(61, 'First Test Updated', 'Blog has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-14 20:51:21', '2020-05-14 20:51:21'),
(62, 'First Test Updated', 'Blog has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-14 20:52:17', '2020-05-14 20:52:17'),
(63, 'Super Admin', 'Role has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-14 21:18:56', '2020-05-14 21:18:56'),
(64, 'Super Admin', 'Role has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-14 21:19:56', '2020-05-14 21:19:56'),
(65, 'Editor', 'Role has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-14 21:20:42', '2020-05-14 21:20:42'),
(66, 'Admin', 'Role has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-14 21:21:01', '2020-05-14 21:21:01'),
(67, 'Editor', 'Role has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-14 21:21:22', '2020-05-14 21:21:22'),
(68, 'Editor', 'Role has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-14 21:24:55', '2020-05-14 21:24:55'),
(69, 'Editor', 'Role has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-14 22:01:42', '2020-05-14 22:01:42'),
(70, 'Editor', 'Role has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-14 22:41:04', '2020-05-14 22:41:04'),
(71, 'editor', 'Admin has been updated successfully !!', NULL, 3, NULL, NULL, '2020-05-14 22:56:23', '2020-05-14 22:56:23'),
(72, 'editor', 'Admin has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-14 23:13:24', '2020-05-14 23:13:24'),
(73, 'editor', 'Admin has been updated successfully !!', NULL, 3, NULL, NULL, '2020-05-14 23:13:47', '2020-05-14 23:13:47'),
(74, 'admin', 'Admin has been updated successfully !!', NULL, 2, NULL, NULL, '2020-05-14 23:16:52', '2020-05-14 23:16:52'),
(75, 'About Us', 'Page has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-14 23:37:46', '2020-05-14 23:37:46'),
(76, 'Maniruzzaman Akash', 'New Category has been created', NULL, 1, NULL, NULL, '2020-05-15 05:37:38', '2020-05-15 05:37:38'),
(77, 'life-style', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-15 05:43:54', '2020-05-15 05:43:54'),
(78, 'life-style', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-15 05:44:14', '2020-05-15 05:44:14'),
(79, 'life-style', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-15 05:44:47', '2020-05-15 05:44:47'),
(80, 'life-style', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-15 05:44:57', '2020-05-15 05:44:57'),
(81, 'Editor', 'Role has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-15 06:15:44', '2020-05-15 06:15:44'),
(82, 'First Test Updated', 'Blog has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-15 06:16:24', '2020-05-15 06:16:24'),
(83, 'First Test Updated', 'Blog has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-15 09:42:49', '2020-05-15 09:42:49'),
(84, 'category', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-15 20:20:37', '2020-05-15 20:20:37'),
(85, 'austria', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-15 20:21:22', '2020-05-15 20:21:22'),
(86, 'life-style', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-15 20:28:38', '2020-05-15 20:28:38'),
(87, 'fashion', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-15 20:28:47', '2020-05-15 20:28:47'),
(88, 'maniruzzamanakash', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-15 20:28:54', '2020-05-15 20:28:54'),
(89, 'finalcategory', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-15 20:29:02', '2020-05-15 20:29:02'),
(90, 'realcategory', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-15 20:29:15', '2020-05-15 20:29:15'),
(91, 'image', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-15 20:31:11', '2020-05-15 20:31:11'),
(92, 'Latest News', 'New Category has been created', NULL, 1, NULL, NULL, '2020-05-15 20:31:47', '2020-05-15 20:31:47'),
(93, 'About Us', 'Page has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-15 20:36:19', '2020-05-15 20:36:19'),
(94, 'Albanian Associations in Austria', 'Page has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-15 20:38:33', '2020-05-15 20:38:33'),
(95, 'austri', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-15 23:13:02', '2020-05-15 23:13:02'),
(96, 'Austria', 'New Category has been created', NULL, 1, NULL, NULL, '2020-05-15 23:13:38', '2020-05-15 23:13:38'),
(97, 'Integration', 'New Category has been created', NULL, 1, NULL, NULL, '2020-05-15 23:14:32', '2020-05-15 23:14:32'),
(98, 'Community', 'New Category has been created', NULL, 1, NULL, NULL, '2020-05-15 23:14:50', '2020-05-15 23:14:50'),
(99, 'Albanian Associations in Austria', 'Page has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-15 23:43:46', '2020-05-15 23:43:46'),
(100, 'austri', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-16 17:11:10', '2020-05-16 17:11:10'),
(101, 'austri', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-16 17:11:45', '2020-05-16 17:11:45'),
(102, 'belzium', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-16 17:21:37', '2020-05-16 17:21:37'),
(103, 'austri', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-16 17:21:53', '2020-05-16 17:21:53'),
(104, 'image', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-16 17:22:15', '2020-05-16 17:22:15'),
(105, 'latestnews', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-16 17:22:31', '2020-05-16 17:22:31'),
(106, 'austri', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-16 17:25:11', '2020-05-16 17:25:11'),
(107, 'Sudane', 'New Category has been created', NULL, 1, NULL, NULL, '2020-05-16 17:26:29', '2020-05-16 17:26:29'),
(108, 'integrimi', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-17 07:44:01', '2020-05-17 07:44:01'),
(109, 'Germany', 'New Category has been created', NULL, 1, NULL, NULL, '2020-05-17 07:50:53', '2020-05-17 07:50:53'),
(110, 'Switzerland', 'New Category has been created', NULL, 1, NULL, NULL, '2020-05-17 07:52:05', '2020-05-17 07:52:05'),
(111, 'Finland', 'New Category has been created', NULL, 1, NULL, NULL, '2020-05-17 07:52:37', '2020-05-17 07:52:37'),
(112, 'sudane', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-17 08:03:58', '2020-05-17 08:03:58'),
(113, 'austri', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-17 08:04:43', '2020-05-17 08:04:43'),
(114, 'Norway', 'New Category has been created', NULL, 1, NULL, NULL, '2020-05-17 08:05:43', '2020-05-17 08:05:43'),
(115, 'Denmark', 'New Category has been created', NULL, 1, NULL, NULL, '2020-05-17 08:09:24', '2020-05-17 08:09:24'),
(116, 'Provinces (Regions) of Austria', 'New Page has been created', NULL, 1, NULL, NULL, '2020-05-17 08:23:48', '2020-05-17 08:23:48'),
(117, 'Austrian Embassy in Pristina', 'New Page has been created', NULL, 1, NULL, NULL, '2020-05-17 08:25:30', '2020-05-17 08:25:30'),
(118, 'Austrian Embassy in Pristina', 'New Page has been created', NULL, 1, NULL, NULL, '2020-05-17 08:25:30', '2020-05-17 08:25:30'),
(119, 'History of Austria', 'New Page has been created', NULL, 1, NULL, NULL, '2020-05-17 08:26:24', '2020-05-17 08:26:24'),
(120, 'Tourism in Austria', 'New Page has been created', NULL, 1, NULL, NULL, '2020-05-17 08:27:01', '2020-05-17 08:27:01'),
(121, 'austri', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-17 08:53:49', '2020-05-17 08:53:49'),
(122, 'Albanian Associations in Austria', 'Page has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-17 09:53:48', '2020-05-17 09:53:48'),
(123, 'austria', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-17 10:18:24', '2020-05-17 10:18:24'),
(124, 'diaspora', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-17 15:38:37', '2020-05-17 15:38:37'),
(125, 'diaspora', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-17 18:08:37', '2020-05-17 18:08:37'),
(126, 'diaspora', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2020-05-17 18:33:12', '2020-05-17 18:33:12'),
(127, 'Test', 'New Category has been created', NULL, 1, NULL, NULL, '2020-05-17 18:35:12', '2020-05-17 18:35:12'),
(128, 'finland', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-02 04:33:20', '2021-02-02 04:33:20'),
(129, 'finland', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-02 08:45:54', '2021-02-02 08:45:54'),
(130, 'The methodology how to learn a foreign language as an immigrant', 'New Page has been created', NULL, 1, NULL, NULL, '2021-02-02 09:09:20', '2021-02-02 09:09:20'),
(131, 'Another Article in FInland', 'New Page has been created', NULL, 1, NULL, NULL, '2021-02-03 00:35:40', '2021-02-03 00:35:40'),
(132, 'Another Article in FInland', 'Page has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 00:36:14', '2021-02-03 00:36:14'),
(133, 'Another Article in FInland', 'Page has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 00:36:22', '2021-02-03 00:36:22'),
(134, 'Another Article in FInland', 'Page has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 00:36:56', '2021-02-03 00:36:56'),
(135, 'Another Article in FInland', 'Page has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 00:37:02', '2021-02-03 00:37:02'),
(136, 'Article in Main Diaspora for testing', 'New Page has been created', NULL, 1, NULL, NULL, '2021-02-03 02:15:25', '2021-02-03 02:15:25'),
(137, 'Another Article in Main Diaspora', 'New Page has been created', NULL, 1, NULL, NULL, '2021-02-03 02:15:46', '2021-02-03 02:15:46'),
(138, 'Article another in diaspora', 'New Page has been created', NULL, 1, NULL, NULL, '2021-02-03 02:16:08', '2021-02-03 02:16:08'),
(139, 'belzium', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 03:36:06', '2021-02-03 03:36:06'),
(140, 'denmark', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 03:36:34', '2021-02-03 03:36:34'),
(141, 'switzerland', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 03:36:48', '2021-02-03 03:36:48'),
(142, 'sudane', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 03:39:00', '2021-02-03 03:39:00'),
(143, 'sudane', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 03:39:19', '2021-02-03 03:39:19'),
(144, 'austri', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 03:40:00', '2021-02-03 03:40:00'),
(145, 'Super Admin', 'Role has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 05:04:52', '2021-02-03 05:04:52'),
(146, 'superadmin', 'Admin has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 05:09:05', '2021-02-03 05:09:05'),
(147, 'Advertisement 1', 'New Advertisement has been created', NULL, 1, NULL, NULL, '2021-02-03 05:31:09', '2021-02-03 05:31:09'),
(148, 'Advertisement 1 Upated', 'Advertisement has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 06:54:24', '2021-02-03 06:54:24'),
(149, 'Advertisement 1 Upated', 'Advertisement has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 06:56:16', '2021-02-03 06:56:16'),
(150, 'Advertisement 1 Upated', 'Advertisement has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 06:56:27', '2021-02-03 06:56:27'),
(151, 'Advertisement 1 Upated', 'Advertisement has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 06:56:38', '2021-02-03 06:56:38'),
(152, 'Advertisement 1 Upated', 'Advertisement has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 06:56:52', '2021-02-03 06:56:52'),
(153, 'Advertisement 1 Upated', 'Advertisement has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 07:02:26', '2021-02-03 07:02:26'),
(154, 'Advertisement 1 Upated', 'Advertisement has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 07:02:45', '2021-02-03 07:02:45'),
(155, 'Advertisement 1 Upated', 'Advertisement has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 07:02:55', '2021-02-03 07:02:55'),
(156, 'Advertisement 1 Upated', 'Advertisement has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 07:03:06', '2021-02-03 07:03:06'),
(157, 'Advertisement 1 Upated', 'Advertisement has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 07:03:19', '2021-02-03 07:03:19'),
(158, 'Advertisement', 'Advertisement has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 07:04:04', '2021-02-03 07:04:04'),
(159, 'Advertisement 2', 'New Advertisement has been created', NULL, 1, NULL, NULL, '2021-02-03 07:11:50', '2021-02-03 07:11:50'),
(160, 'Advertisement 2', 'Advertisement has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 07:15:27', '2021-02-03 07:15:27'),
(161, 'Fake Advertisement', 'New Advertisement has been created', NULL, 1, NULL, NULL, '2021-02-03 07:15:55', '2021-02-03 07:15:55'),
(162, 'Fake Advertisement', 'Advertisement has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 07:16:50', '2021-02-03 07:16:50'),
(163, 'Fake Advertisement', 'Advertisement has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 07:16:58', '2021-02-03 07:16:58'),
(164, 'Article with advertisement', 'New Page has been created', NULL, 1, NULL, NULL, '2021-02-03 07:48:15', '2021-02-03 07:48:15'),
(165, 'Article with advertisement', 'Page has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 07:49:28', '2021-02-03 07:49:28'),
(166, 'Article with advertisement', 'Page has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 09:56:01', '2021-02-03 09:56:01'),
(167, 'Advertisement 2', 'Advertisement has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 09:57:13', '2021-02-03 09:57:13'),
(168, 'Advertisement 2', 'Advertisement has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 09:58:06', '2021-02-03 09:58:06'),
(169, 'Advertisement 2', 'Advertisement has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 09:58:58', '2021-02-03 09:58:58'),
(170, 'Advertisement', 'Advertisement has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 09:59:32', '2021-02-03 09:59:32'),
(171, 'norway', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 10:05:29', '2021-02-03 10:05:29'),
(172, 'norway', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 10:05:49', '2021-02-03 10:05:49'),
(173, 'Article with advertisement', 'Page has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 10:09:27', '2021-02-03 10:09:27'),
(174, 'finland', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 20:19:04', '2021-02-03 20:19:04'),
(175, 'switzerland', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 20:19:14', '2021-02-03 20:19:14'),
(176, 'austria', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 20:19:23', '2021-02-03 20:19:23'),
(177, 'austri', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 20:21:07', '2021-02-03 20:21:07'),
(178, 'finland', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 20:22:04', '2021-02-03 20:22:04'),
(179, 'switzerland', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 20:24:00', '2021-02-03 20:24:00'),
(180, 'germany', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 20:24:15', '2021-02-03 20:24:15'),
(181, 'sudane', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 20:24:26', '2021-02-03 20:24:26'),
(182, 'belzium', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 20:24:49', '2021-02-03 20:24:49'),
(183, 'norway', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 20:24:59', '2021-02-03 20:24:59'),
(184, 'denmark', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 20:25:08', '2021-02-03 20:25:08'),
(185, 'austri', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 20:25:55', '2021-02-03 20:25:55'),
(186, 'test', 'New Category has been created', NULL, 1, NULL, NULL, '2021-02-03 20:32:24', '2021-02-03 20:32:24'),
(187, 'test', 'Category has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-03 20:33:11', '2021-02-03 20:33:11'),
(188, 'ad', 'New Category has been created', NULL, 1, NULL, NULL, '2021-02-03 20:33:28', '2021-02-03 20:33:28'),
(189, 'Test Advertisement', 'New Advertisement has been created', NULL, 1, NULL, NULL, '2021-02-04 07:21:07', '2021-02-04 07:21:07'),
(190, 'Test Advertisement', 'Advertisement has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-04 07:27:16', '2021-02-04 07:27:16'),
(191, 'Test Advertisement', 'Advertisement has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-04 07:27:25', '2021-02-04 07:27:25'),
(192, 'Article with advertisement', 'Page has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-04 07:35:57', '2021-02-04 07:35:57'),
(193, 'Article with advertisement', 'Page has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-04 07:46:28', '2021-02-04 07:46:28'),
(194, 'Article with multi add', 'New Page has been created', NULL, 1, NULL, NULL, '2021-02-04 07:49:54', '2021-02-04 07:49:54'),
(195, 'Article another in diaspora', 'Page has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-04 07:51:11', '2021-02-04 07:51:11'),
(196, 'Advertisement', 'Advertisement has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-04 08:00:00', '2021-02-04 08:00:00'),
(197, 'Article with multi add', 'Page has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-04 08:02:41', '2021-02-04 08:02:41'),
(198, 'Article with multi add', 'Page has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-04 08:03:19', '2021-02-04 08:03:19'),
(199, 'Advertisement', 'Advertisement has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-04 08:03:58', '2021-02-04 08:03:58'),
(200, 'Article with multi add', 'Page has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-04 08:04:20', '2021-02-04 08:04:20'),
(201, 'Advertisement', 'Advertisement has been updated successfully !!', NULL, 1, NULL, NULL, '2021-02-04 08:04:39', '2021-02-04 08:04:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=active, 0=inactive',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  ADD UNIQUE KEY `admins_username_unique` (`username`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD KEY `admins_created_by_foreign` (`created_by`),
  ADD KEY `admins_updated_by_foreign` (`updated_by`),
  ADD KEY `admins_deleted_by_foreign` (`deleted_by`),
  ADD KEY `admins_first_name_index` (`first_name`),
  ADD KEY `admins_phone_no_index` (`phone_no`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `advertisements_slug_unique` (`slug`),
  ADD KEY `advertisements_created_by_foreign` (`created_by`),
  ADD KEY `advertisements_updated_by_foreign` (`updated_by`),
  ADD KEY `advertisements_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `article_types`
--
ALTER TABLE `article_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`),
  ADD KEY `blogs_created_by_foreign` (`created_by`),
  ADD KEY `blogs_updated_by_foreign` (`updated_by`),
  ADD KEY `blogs_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_created_by_foreign` (`created_by`),
  ADD KEY `categories_updated_by_foreign` (`updated_by`),
  ADD KEY `categories_deleted_by_foreign` (`deleted_by`),
  ADD KEY `categories_parent_category_id_foreign` (`parent_category_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_updated_by_foreign` (`updated_by`),
  ADD KEY `contacts_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`),
  ADD KEY `pages_created_by_foreign` (`created_by`),
  ADD KEY `pages_updated_by_foreign` (`updated_by`),
  ADD KEY `pages_deleted_by_foreign` (`deleted_by`),
  ADD KEY `pages_category_id_foreign` (`category_id`),
  ADD KEY `article_type_id` (`article_type_id`),
  ADD KEY `advertisement_id` (`advertisement_ids`(768));

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `tracks`
--
ALTER TABLE `tracks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracks_deleted_by_foreign` (`deleted_by`),
  ADD KEY `tracks_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_created_by_foreign` (`created_by`),
  ADD KEY `users_updated_by_foreign` (`updated_by`),
  ADD KEY `users_deleted_by_foreign` (`deleted_by`),
  ADD KEY `users_first_name_index` (`first_name`),
  ADD KEY `users_phone_no_index` (`phone_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `article_types`
--
ALTER TABLE `article_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracks`
--
ALTER TABLE `tracks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admins_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admins_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD CONSTRAINT `advertisements_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `advertisements_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `advertisements_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blogs_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blogs_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_parent_category_id_foreign` FOREIGN KEY (`parent_category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contacts_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pages_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pages_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pages_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tracks`
--
ALTER TABLE `tracks`
  ADD CONSTRAINT `tracks_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tracks_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
