-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2025 at 02:25 PM
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
-- Database: `rfid`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Dibbert Inc', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(2, 'Smith-Kuhn', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(3, 'McDermott, Witting and Osinski', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(4, 'Conn-Koelpin', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(5, 'Shanahan PLC', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(6, 'Runolfsdottir, Klein and Tremblay', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(7, 'Ziemann LLC', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(8, 'Brakus-Dibbert', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(9, 'Wyman, Kemmer and Sawayn', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(10, 'Heathcote-Hane', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(11, 'Hamill, McCullough and Torp', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(12, 'Schimmel PLC', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(13, 'Rowe, Considine and Bahringer', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(14, 'Blick, Von and Stoltenberg', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(15, 'Johnston Ltd', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(16, 'Kirlin-Kling', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(17, 'Raynor-Howell', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(18, 'Borer-Gibson', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(19, 'Nicolas, Gusikowski and Leannon', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(20, 'Bosco, Renner and Lindgren', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(21, 'Franecki-Bradtke', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(22, 'Gutkowski-Bernhard', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(23, 'Homenick Inc', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(24, 'Doyle-Kirlin', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(25, 'Fahey Group', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(26, 'McCullough-D\'Amore', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(27, 'Hessel LLC', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(28, 'Gerlach Inc', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(29, 'Kihn Ltd', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(30, 'Berge-Medhurst', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(31, 'Mosciski PLC', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(32, 'Fadel, Toy and Franecki', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(33, 'Blanda, Gerlach and Aufderhar', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(34, 'Braun, Reynolds and Friesen', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(35, 'Ankunding, Brakus and Bailey', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(36, 'Schaden, Jacobi and Metz', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(37, 'Carroll Inc', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(38, 'Koss-Hauck', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(39, 'Kozey and Sons', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(40, 'Frami-Kilback', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(41, 'Bahringer, Aufderhar and Schamberger', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(42, 'Hegmann-Hagenes', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(43, 'Murazik Inc', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(44, 'Ondricka Inc', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(45, 'McDermott, Renner and Wiza', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(46, 'Kautzer, Sporer and Hartmann', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(47, 'Krajcik Inc', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(48, 'Upton Inc', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(49, 'Lindgren Ltd', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(50, 'Herzog-Daugherty', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(51, 'Mraz, Doyle and Senger', NULL, '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(52, 'Bruen-Bednar', NULL, '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(53, 'Kunde, Mueller and Kuhic', NULL, '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(54, 'Denesik and Sons', NULL, '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(55, 'Lubowitz Inc', NULL, '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(56, 'Keeling-Gerhold', NULL, '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(57, 'Funk, Lesch and Gutmann', NULL, '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(58, 'Kovacek LLC', NULL, '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(59, 'Bahringer-Roberts', NULL, '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(60, 'Turcotte, Hammes and Schulist', NULL, '2025-05-07 04:23:41', '2025-05-07 04:23:41');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'id', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(2, 'aliquid', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(3, 'cum', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(4, 'architecto', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(5, 'eius', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(6, 'quo', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(7, 'rerum', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(8, 'impedit', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(9, 'eum', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(10, 'et', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(11, 'et', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(12, 'consequatur', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(13, 'ut', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(14, 'eos', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(15, 'deleniti', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(16, 'rerum', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(17, 'magnam', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(18, 'blanditiis', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(19, 'dolor', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(20, 'nihil', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(21, 'placeat', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(22, 'ab', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(23, 'voluptate', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(24, 'harum', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(25, 'aut', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(26, 'voluptatem', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(27, 'aut', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(28, 'odit', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(29, 'laborum', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(30, 'assumenda', NULL, '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(31, 'eaque', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(32, 'mollitia', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(33, 'labore', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(34, 'quia', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(35, 'voluptate', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(36, 'et', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(37, 'animi', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(38, 'ab', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(39, 'veniam', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(40, 'est', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(41, 'quo', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(42, 'suscipit', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(43, 'qui', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(44, 'nihil', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(45, 'consequatur', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(46, 'recusandae', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(47, 'est', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(48, 'eaque', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(49, 'aut', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(50, 'mollitia', NULL, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(51, 'quo', NULL, '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(52, 'voluptas', NULL, '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(53, 'consectetur', NULL, '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(54, 'voluptatem', NULL, '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(55, 'sit', NULL, '2025-05-07 04:23:41', '2025-05-07 04:23:41');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_05_07_113423_create_brands_table', 1),
(5, '2025_05_07_113425_create_suppliers_table', 1),
(6, '2025_05_07_113426_create_categories_table', 1),
(7, '2025_05_07_113428_create_warehouse_locations_table', 1),
(8, '2025_05_07_113429_create_products_table', 1),
(9, '2025_05_07_113430_create_rfid_scan_logs_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `internal_reference` varchar(255) NOT NULL,
  `ean_gtin_code` varchar(255) DEFAULT NULL,
  `rfid_code` varchar(255) NOT NULL,
  `product_picture` varchar(255) DEFAULT NULL,
  `brief_description` text DEFAULT NULL,
  `current_stock` int(11) NOT NULL DEFAULT 0,
  `product_condition` varchar(255) NOT NULL DEFAULT 'New',
  `cost_price` decimal(10,2) DEFAULT NULL,
  `sale_price` decimal(10,2) DEFAULT NULL,
  `date_of_discharge` datetime DEFAULT NULL,
  `last_updated_date` datetime DEFAULT NULL,
  `creator_user` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_location_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `internal_reference`, `ean_gtin_code`, `rfid_code`, `product_picture`, `brief_description`, `current_stock`, `product_condition`, `cost_price`, `sale_price`, `date_of_discharge`, `last_updated_date`, `creator_user`, `category_id`, `brand_id`, `supplier_id`, `warehouse_location_id`, `created_at`, `updated_at`) VALUES
(1, 'voluptas vel voluptatem', 'REF-91938', '2465422676277', 'd75bb332-c4b4-3a72-82d5-50388892a20e', NULL, 'Recusandae rerum quia sed et excepturi sed distinctio distinctio.', 25, 'Reserved', 76.10, 382.38, '2025-05-05 03:05:23', '2025-04-19 04:04:08', 'admin@filament.com', 1, 1, 1, 1, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(2, 'vero aut aut', 'REF-13423', '2647040580161', '6428d9d3-36e6-37b3-b099-5b666df99837', NULL, 'Odio quis accusamus quasi omnis.', 94, 'Reserved', 300.77, 463.12, '2025-04-02 00:29:22', '2025-04-14 04:36:12', 'admin@filament.com', 2, 2, 2, 2, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(3, 'nam amet ea', 'REF-75710', '0343528146455', 'db745f09-c050-3703-af0d-c73edffee360', NULL, 'Et eius minus et est.', 64, 'Damaged', 325.05, 84.50, '2025-02-16 15:04:27', '2025-04-16 09:55:54', 'admin@filament.com', 3, 3, 3, 3, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(4, 'rem dignissimos omnis', 'REF-78520', '5829238677403', '3d707062-d888-3879-a1f4-8844552436b4', NULL, 'Illo consequatur velit rem reiciendis.', 52, 'Reserved', 386.75, 542.81, '2025-01-27 09:04:34', '2025-04-28 06:55:16', 'admin@filament.com', 4, 4, 4, 4, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(5, 'voluptas est ipsum', 'REF-56955', '9338020037326', '1d608486-5586-3de4-a2c0-f99d6820f47d', NULL, 'Quo aut inventore consequatur nulla.', 94, 'Damaged', 382.75, 170.39, '2025-05-06 19:06:47', '2025-04-22 09:21:00', 'admin@filament.com', 5, 5, 5, 5, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(6, 'hic officia facere', 'REF-11224', '1823688133414', '26ac662a-282e-3422-88d6-eb23d47d0328', NULL, 'Quod nihil in atque perspiciatis similique illum dolor perspiciatis.', 93, 'Reserved', 248.59, 112.75, '2025-01-14 18:44:38', '2025-04-28 19:22:03', 'admin@filament.com', 6, 6, 6, 6, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(7, 'doloremque odit neque', 'REF-32259', '9530998654073', '494985dc-3d99-32f8-a92e-415753265b25', NULL, 'Hic aspernatur quia qui magnam voluptatem eos cum.', 53, 'Reserved', 32.17, 135.94, '2025-01-17 19:06:32', '2025-05-05 13:29:02', 'admin@filament.com', 7, 7, 7, 7, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(8, 'mollitia voluptatem ad', 'REF-46956', '3755875755100', 'a603a78e-61c6-328e-b73c-e10231abbed8', NULL, 'Voluptatem omnis qui expedita.', 33, 'Damaged', 104.28, 56.53, '2025-02-10 01:03:21', '2025-04-24 12:24:22', 'admin@filament.com', 8, 8, 8, 8, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(9, 'sed culpa praesentium', 'REF-12716', '2848868407375', 'f118b676-a498-3bf5-a80f-e0a6399a49b2', NULL, 'Itaque atque rerum dolorem ratione.', 59, 'New', 19.78, 58.34, '2025-04-06 03:12:04', '2025-04-19 16:21:24', 'admin@filament.com', 9, 9, 9, 9, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(10, 'temporibus expedita voluptates', 'REF-33699', '5128753783744', '06626784-3a38-3fe1-ad10-fa62518647bc', NULL, 'Maxime est quia aut voluptas quos et.', 92, 'Damaged', 412.76, 549.68, '2025-02-04 17:19:04', '2025-04-21 07:50:08', 'admin@filament.com', 10, 10, 10, 10, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(11, 'tempora tempora et', 'REF-73102', '3007242088749', '4dda9a6f-bdf6-3ce3-b664-dcdd7e63053d', NULL, 'Qui at error aut cumque.', 41, 'Reserved', 225.57, 292.18, '2025-04-22 17:37:43', '2025-04-18 12:44:22', 'admin@filament.com', 11, 11, 11, 11, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(12, 'sint numquam sed', 'REF-19593', '8306030723578', 'c4850a27-8aed-391b-ad32-3f153a2c1a57', NULL, 'Doloremque dolore est quo sunt est.', 68, 'Reserved', 285.54, 218.06, '2025-01-01 06:06:04', '2025-04-25 01:23:29', 'admin@filament.com', 12, 12, 12, 12, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(13, 'maiores sunt commodi', 'REF-103', '0924858858234', '6f3fd33d-86ca-3365-b2e2-1f39f551861b', NULL, 'Aliquam facilis rerum ullam molestias.', 33, 'Damaged', 464.00, 200.10, '2025-03-15 16:27:01', '2025-04-15 06:03:25', 'admin@filament.com', 13, 13, 13, 13, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(14, 'et et labore', 'REF-46249', '9325544728854', '6fb7e04a-bea8-3613-ba75-24ba188256ee', NULL, 'Non quasi veniam quidem dolorum aperiam laborum.', 20, 'Reserved', 38.46, 407.97, '2025-02-25 22:10:12', '2025-04-26 10:38:58', 'admin@filament.com', 14, 14, 14, 14, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(15, 'officiis dolores suscipit', 'REF-14041', '2839523846806', '039460cb-fabf-37d8-911f-adb230aa37cc', NULL, 'In quibusdam nihil in veniam voluptatum.', 87, 'Reserved', 340.27, 589.56, '2025-03-13 06:38:18', '2025-04-13 15:11:08', 'admin@filament.com', 15, 15, 15, 15, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(16, 'quos aut quia', 'REF-84911', '9306134922128', '73eb5835-d971-3db8-b483-61b57899de41', NULL, 'At voluptatem animi iste impedit aut autem consequatur.', 75, 'Reserved', 475.90, 486.68, '2025-01-11 18:52:46', '2025-04-10 10:56:07', 'admin@filament.com', 16, 16, 16, 16, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(17, 'beatae repudiandae et', 'REF-88858', '6767517217751', 'ef467a15-29e4-33a5-8e1f-567c8151b74d', NULL, 'Voluptatem aliquam ut labore hic aperiam quis optio nemo.', 78, 'New', 75.45, 338.70, '2025-02-16 20:09:53', '2025-04-27 14:25:43', 'admin@filament.com', 17, 17, 17, 17, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(18, 'eius aliquam aut', 'REF-41189', '4565841388176', 'a39db981-bc61-3574-80c7-7af68e10e981', NULL, 'Aspernatur provident commodi et et et et.', 48, 'Reserved', 308.89, 276.06, '2025-01-20 10:20:23', '2025-04-26 20:47:44', 'admin@filament.com', 18, 18, 18, 18, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(19, 'tenetur non quo', 'REF-80814', '6181257346937', 'a9d9c5b7-479c-394d-8f95-f550609f1a5c', NULL, 'Odit vero quaerat et ducimus consequatur aliquid.', 12, 'New', 258.07, 393.92, '2025-01-27 11:49:38', '2025-04-23 01:03:06', 'admin@filament.com', 19, 19, 19, 19, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(20, 'deleniti debitis et', 'REF-23090', '3653695804445', 'd9c4fe5d-d339-355b-a35a-e26aeb8f9b22', NULL, 'Excepturi voluptatum ut distinctio officia et tempora.', 92, 'Reserved', 133.50, 396.54, '2025-02-27 11:06:47', '2025-04-18 02:25:26', 'admin@filament.com', 20, 20, 20, 20, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(21, 'ut quisquam et', 'REF-60626', '2018567966958', '1aa39e9a-f7f5-3a03-b2ed-a551fe705b2c', NULL, 'Aut cumque molestias sed.', 83, 'Reserved', 252.42, 366.12, '2025-01-15 03:09:01', '2025-04-28 20:14:56', 'admin@filament.com', 21, 21, 21, 21, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(22, 'aut ea et', 'REF-48156', '1492991836079', '44b3ad99-7196-34e6-90c0-ab6fd4165011', NULL, 'Dolores minima impedit rerum officiis aut qui.', 26, 'Damaged', 41.00, 55.68, '2025-03-02 07:57:32', '2025-05-03 11:52:08', 'admin@filament.com', 22, 22, 22, 22, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(23, 'qui deleniti dicta', 'REF-43618', '5787849174851', '00d54d7e-e7d7-39eb-90c5-9169e2ed545a', NULL, 'Eum sed unde maxime nam voluptatem totam.', 71, 'Damaged', 353.43, 237.96, '2025-05-03 05:11:31', '2025-04-25 21:56:06', 'admin@filament.com', 23, 23, 23, 23, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(24, 'neque maxime maxime', 'REF-87792', '4458243815220', '6fdfb11f-1a2b-36bb-9106-872492c6d4e7', NULL, 'Atque ea ut quos harum.', 93, 'Damaged', 447.83, 570.06, '2025-03-22 02:00:15', '2025-04-28 11:36:14', 'admin@filament.com', 24, 24, 24, 24, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(25, 'quia rerum quas', 'REF-51277', '0358748918492', '2dce0a3e-559f-3029-aea1-049fc40d7d66', NULL, 'Modi magni animi nobis eius.', 62, 'New', 318.16, 176.42, '2025-04-28 17:49:25', '2025-04-20 22:23:08', 'admin@filament.com', 25, 25, 25, 25, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(26, 'ea ipsum est', 'REF-73285', '9409671554606', 'c0c0b436-26ad-345f-bd9f-a3697aad2d8c', NULL, 'Adipisci cumque qui animi et.', 16, 'Damaged', 120.57, 42.90, '2025-02-25 13:21:17', '2025-04-10 21:30:02', 'admin@filament.com', 26, 26, 26, 26, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(27, 'et magnam modi', 'REF-50856', '0470165002094', 'c954fa55-6452-3910-8f88-bdfbaf9f99d2', NULL, 'Illo quo animi eaque reprehenderit ex ut.', 66, 'New', 310.66, 493.16, '2025-04-30 07:46:58', '2025-04-19 09:13:26', 'admin@filament.com', 27, 27, 27, 27, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(28, 'et ut et', 'REF-61981', '5556527282887', 'cb79cd6e-67f4-33ab-b7e7-2036aee0a45d', NULL, 'Et ex est aliquid sed ut aliquid aut.', 25, 'New', 151.83, 590.23, '2025-04-21 03:34:19', '2025-05-06 07:14:29', 'admin@filament.com', 28, 28, 28, 28, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(29, 'repudiandae aut aut', 'REF-70616', '7502589651657', '7fce08c2-7a3d-39d8-94d8-fa1501fad915', NULL, 'Necessitatibus non quo ut adipisci maxime sed corrupti.', 90, 'New', 294.07, 302.97, '2025-03-06 06:40:04', '2025-04-18 08:23:42', 'admin@filament.com', 29, 29, 29, 29, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(30, 'amet sed provident', 'REF-21791', '5236250079328', '05a2d69a-a7a0-3c08-952c-2382e8b2219a', NULL, 'Corrupti voluptatem adipisci ducimus.', 80, 'Reserved', 166.63, 148.70, '2025-04-22 23:14:51', '2025-04-15 12:20:23', 'admin@filament.com', 30, 30, 30, 30, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(31, 'ipsa beatae accusamus', 'REF-47555', '8655829213906', 'd7537b2e-ebdc-3238-a6f4-b737af1a9cbd', NULL, 'Quam exercitationem laudantium molestias et et.', 41, 'Reserved', 474.01, 303.21, '2025-04-23 21:21:51', '2025-05-05 18:54:17', 'admin@filament.com', 31, 31, 31, 31, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(32, 'laudantium enim at', 'REF-13853', '5084587882964', '98154983-1041-3aa7-87cc-a74f83a5364c', NULL, 'Rerum qui aut officia debitis voluptate quod.', 9, 'Reserved', 345.37, 172.83, '2025-02-19 14:17:42', '2025-04-24 12:46:49', 'admin@filament.com', 32, 32, 32, 32, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(33, 'vero nobis qui', 'REF-86229', '2428004923367', '11c98eb2-3f15-3ea2-b3da-78307e737967', NULL, 'Magnam recusandae neque enim animi.', 51, 'New', 99.99, 565.24, '2025-04-20 01:46:37', '2025-04-12 17:30:45', 'admin@filament.com', 33, 33, 33, 33, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(34, 'molestiae cupiditate consectetur', 'REF-76918', '7975973843509', '54c248fa-f257-3870-b8d9-949d47ef04d7', NULL, 'Rerum qui est et natus totam sed voluptatibus.', 26, 'Damaged', 168.03, 137.48, '2025-04-25 15:34:55', '2025-04-22 19:48:54', 'admin@filament.com', 34, 34, 34, 34, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(35, 'suscipit ut quas', 'REF-11882', '9516318744358', '3dc7fa6c-72b5-308f-aa98-bb95758621de', NULL, 'Amet quia doloribus delectus fugit maxime deserunt optio animi.', 78, 'Reserved', 284.33, 66.28, '2025-04-02 21:40:58', '2025-04-18 00:12:56', 'admin@filament.com', 35, 35, 35, 35, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(36, 'illo delectus iure', 'REF-86608', '8447769551015', '6452db76-872e-309b-89fa-3fea22d1ce36', NULL, 'Nesciunt error quis rerum sint nostrum laudantium veniam.', 56, 'Reserved', 108.62, 142.43, '2025-05-04 00:35:40', '2025-04-10 17:42:48', 'admin@filament.com', 36, 36, 36, 36, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(37, 'inventore quod sed', 'REF-4390', '8439446932453', 'c1416438-4e3b-3f0e-a37e-1db751a805e6', NULL, 'Soluta qui minima consequuntur sapiente ut qui dolorem.', 94, 'New', 271.81, 541.31, '2025-02-24 02:19:38', '2025-04-17 02:25:15', 'admin@filament.com', 37, 37, 37, 37, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(38, 'voluptas quas fugit', 'REF-94519', '1550996269954', '7f14caac-f832-3c1b-a364-fd095498f456', NULL, 'Soluta suscipit molestias vel qui officiis aliquam ea ea.', 71, 'Damaged', 114.70, 152.83, '2025-02-04 12:42:57', '2025-04-24 03:58:02', 'admin@filament.com', 38, 38, 38, 38, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(39, 'a et omnis', 'REF-46982', '8707679027919', 'd7f691d6-a780-3bf0-9bfa-d5cc58b7825c', NULL, 'Eligendi similique numquam reiciendis quia assumenda neque.', 81, 'Reserved', 101.54, 270.39, '2025-04-26 12:39:50', '2025-04-22 12:52:37', 'admin@filament.com', 39, 39, 39, 39, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(40, 'officia totam culpa', 'REF-56312', '0966709597060', '8155ca6e-ee9d-339a-af30-f5298702dfac', NULL, 'Ut aperiam maxime est adipisci consequuntur adipisci.', 23, 'Reserved', 236.03, 379.86, '2025-04-10 09:58:26', '2025-04-23 20:46:47', 'admin@filament.com', 40, 40, 40, 40, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(41, 'in voluptatem praesentium', 'REF-54800', '8787964293151', 'cc9b3444-dbed-387b-9368-73545aaf1eff', NULL, 'Qui incidunt aut possimus dolores ipsam beatae non.', 6, 'Reserved', 21.28, 217.64, '2025-01-05 10:15:28', '2025-04-07 13:03:47', 'admin@filament.com', 41, 41, 41, 41, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(42, 'dignissimos vitae hic', 'REF-16374', '0792108546855', '47314f80-49e3-30f6-8645-da0ef7a34d44', NULL, 'Nihil accusamus non molestiae totam eius reprehenderit.', 44, 'Damaged', 341.03, 411.20, '2025-04-08 23:44:02', '2025-04-16 09:22:27', 'admin@filament.com', 42, 42, 42, 42, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(43, 'nihil velit quo', 'REF-11673', '3136169414055', '093ee87f-4c95-3c09-bc6f-5b142f308cc4', NULL, 'Aut nisi quod aut.', 1, 'Damaged', 127.75, 41.46, '2025-01-26 13:40:54', '2025-04-16 15:24:39', 'admin@filament.com', 43, 43, 43, 43, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(44, 'et ipsa porro', 'REF-9320', '5349057612824', 'ec57ccb9-63bc-3149-a8b7-c4cc1c7c0851', NULL, 'Possimus nihil consequatur tenetur consequatur animi quod iure.', 61, 'Damaged', 229.85, 351.18, '2025-05-06 18:08:14', '2025-04-19 07:03:07', 'admin@filament.com', 44, 44, 44, 44, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(45, 'dicta itaque beatae', 'REF-1359', '8853975166262', 'a2ca1b80-cbfd-3217-9d25-56a9b1120341', NULL, 'Voluptatem adipisci nesciunt voluptatem modi at.', 49, 'Damaged', 389.12, 287.63, '2025-01-01 20:22:54', '2025-05-01 12:56:00', 'admin@filament.com', 45, 45, 45, 45, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(46, 'iste a nobis', 'REF-39812', '4975574631638', '0ef0aed1-c6b5-33ad-87a8-74264a2d6942', NULL, 'Rerum autem ad laborum dolorem.', 74, 'Damaged', 368.55, 340.12, '2025-02-07 07:58:52', '2025-05-06 12:42:55', 'admin@filament.com', 46, 46, 46, 46, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(47, 'eius et est', 'REF-27640', '2801397639488', '8b7fede0-7380-37c5-aa22-462befa051da', NULL, 'Cum at commodi reiciendis repudiandae fugit cumque dolores.', 37, 'New', 343.26, 331.78, '2025-01-20 17:23:39', '2025-04-17 21:24:32', 'admin@filament.com', 47, 47, 47, 47, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(48, 'sed doloribus eveniet', 'REF-74629', '2872887336798', '9d6f308b-e849-3a89-8429-0deabdb2570c', NULL, 'Doloremque dicta possimus hic harum.', 10, 'New', 315.77, 197.32, '2025-02-02 21:25:13', '2025-05-02 14:42:18', 'admin@filament.com', 48, 48, 48, 48, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(49, 'saepe cum praesentium', 'REF-96331', '8917578092011', 'd3f1dfa0-4ef8-33f0-949b-9cf944e266e0', NULL, 'Itaque odit consectetur est eum officiis ducimus.', 64, 'New', 450.63, 495.31, '2025-01-26 06:59:53', '2025-04-23 17:43:17', 'admin@filament.com', 49, 49, 49, 49, '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(50, 'ut ipsa id', 'REF-1730', '3508705863045', '4d9d61d4-b50b-3392-be62-9f5ebc64d3a5', NULL, 'Perferendis vero ut quos voluptate veritatis dolores porro et.', 30, 'Reserved', 36.84, 362.77, '2025-04-05 13:50:06', '2025-04-22 20:43:43', 'admin@filament.com', 50, 50, 50, 50, '2025-05-07 04:23:40', '2025-05-07 04:23:40');

-- --------------------------------------------------------

--
-- Table structure for table `rfid_scan_logs`
--

CREATE TABLE `rfid_scan_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rfid_code` varchar(255) NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `scan_type` varchar(255) NOT NULL,
  `scanned_by` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rfid_scan_logs`
--

INSERT INTO `rfid_scan_logs` (`id`, `rfid_code`, `product_id`, `scan_type`, `scanned_by`, `created_at`, `updated_at`) VALUES
(1, 'a603a78e-61c6-328e-b73c-e10231abbed8', 8, 'inventory', 'Admin Panel', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(2, '1aa39e9a-f7f5-3a03-b2ed-a551fe705b2c', 21, 'check-in', 'RFID Reader', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(3, '8155ca6e-ee9d-339a-af30-f5298702dfac', 40, 'check-in', 'Mobile App', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(4, '8155ca6e-ee9d-339a-af30-f5298702dfac', 40, 'check-out', 'Mobile App', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(5, '3d707062-d888-3879-a1f4-8844552436b4', 4, 'inventory', 'RFID Reader', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(6, '7fce08c2-7a3d-39d8-94d8-fa1501fad915', 29, 'check-out', 'Mobile App', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(7, '6f3fd33d-86ca-3365-b2e2-1f39f551861b', 13, 'check-in', 'Mobile App', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(8, 'a2ca1b80-cbfd-3217-9d25-56a9b1120341', 45, 'check-in', 'RFID Reader', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(9, 'ec57ccb9-63bc-3149-a8b7-c4cc1c7c0851', 44, 'check-out', 'RFID Reader', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(10, 'ef467a15-29e4-33a5-8e1f-567c8151b74d', 17, 'check-in', 'RFID Reader', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(11, '2dce0a3e-559f-3029-aea1-049fc40d7d66', 25, 'inventory', 'Admin Panel', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(12, '26ac662a-282e-3422-88d6-eb23d47d0328', 6, 'check-out', 'RFID Reader', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(13, '11c98eb2-3f15-3ea2-b3da-78307e737967', 33, 'inventory', 'RFID Reader', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(14, '3d707062-d888-3879-a1f4-8844552436b4', 4, 'check-in', 'Admin Panel', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(15, 'a2ca1b80-cbfd-3217-9d25-56a9b1120341', 45, 'check-in', 'Mobile App', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(16, '00d54d7e-e7d7-39eb-90c5-9169e2ed545a', 23, 'check-out', 'RFID Reader', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(17, 'a39db981-bc61-3574-80c7-7af68e10e981', 18, 'check-out', 'RFID Reader', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(18, '6452db76-872e-309b-89fa-3fea22d1ce36', 36, 'inventory', 'Admin Panel', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(19, 'f118b676-a498-3bf5-a80f-e0a6399a49b2', 9, 'check-in', 'Mobile App', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(20, '7f14caac-f832-3c1b-a364-fd095498f456', 38, 'inventory', 'RFID Reader', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(21, '98154983-1041-3aa7-87cc-a74f83a5364c', 32, 'inventory', 'RFID Reader', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(22, 'd7537b2e-ebdc-3238-a6f4-b737af1a9cbd', 31, 'inventory', 'Mobile App', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(23, '26ac662a-282e-3422-88d6-eb23d47d0328', 6, 'inventory', 'RFID Reader', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(24, '6f3fd33d-86ca-3365-b2e2-1f39f551861b', 13, 'check-in', 'RFID Reader', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(25, '039460cb-fabf-37d8-911f-adb230aa37cc', 15, 'check-in', 'Admin Panel', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(26, 'f118b676-a498-3bf5-a80f-e0a6399a49b2', 9, 'check-in', 'Mobile App', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(27, '98154983-1041-3aa7-87cc-a74f83a5364c', 32, 'check-in', 'RFID Reader', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(28, '6452db76-872e-309b-89fa-3fea22d1ce36', 36, 'check-in', 'Admin Panel', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(29, '54c248fa-f257-3870-b8d9-949d47ef04d7', 34, 'check-in', 'Mobile App', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(30, '1aa39e9a-f7f5-3a03-b2ed-a551fe705b2c', 21, 'check-out', 'RFID Reader', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(31, 'f118b676-a498-3bf5-a80f-e0a6399a49b2', 9, 'check-out', 'RFID Reader', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(32, 'a9d9c5b7-479c-394d-8f95-f550609f1a5c', 19, 'inventory', 'Mobile App', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(33, '3d707062-d888-3879-a1f4-8844552436b4', 4, 'inventory', 'Admin Panel', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(34, '44b3ad99-7196-34e6-90c0-ab6fd4165011', 22, 'check-in', 'Mobile App', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(35, 'a9d9c5b7-479c-394d-8f95-f550609f1a5c', 19, 'check-out', 'Admin Panel', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(36, '6452db76-872e-309b-89fa-3fea22d1ce36', 36, 'check-out', 'RFID Reader', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(37, 'f118b676-a498-3bf5-a80f-e0a6399a49b2', 9, 'inventory', 'Admin Panel', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(38, '9d6f308b-e849-3a89-8429-0deabdb2570c', 48, 'check-out', 'Admin Panel', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(39, '11c98eb2-3f15-3ea2-b3da-78307e737967', 33, 'inventory', 'Mobile App', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(40, '47314f80-49e3-30f6-8645-da0ef7a34d44', 42, 'check-in', 'Admin Panel', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(41, '0ef0aed1-c6b5-33ad-87a8-74264a2d6942', 46, 'inventory', 'RFID Reader', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(42, 'c1416438-4e3b-3f0e-a37e-1db751a805e6', 37, 'inventory', 'RFID Reader', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(43, '05a2d69a-a7a0-3c08-952c-2382e8b2219a', 30, 'check-out', 'Mobile App', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(44, '44b3ad99-7196-34e6-90c0-ab6fd4165011', 22, 'check-out', 'Admin Panel', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(45, '11c98eb2-3f15-3ea2-b3da-78307e737967', 33, 'check-in', 'Mobile App', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(46, 'cc9b3444-dbed-387b-9368-73545aaf1eff', 41, 'check-in', 'Admin Panel', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(47, 'ef467a15-29e4-33a5-8e1f-567c8151b74d', 17, 'check-out', 'RFID Reader', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(48, 'c4850a27-8aed-391b-ad32-3f153a2c1a57', 12, 'check-in', 'Mobile App', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(49, '11c98eb2-3f15-3ea2-b3da-78307e737967', 33, 'check-in', 'RFID Reader', '2025-05-07 04:23:42', '2025-05-07 04:23:42'),
(50, '3d707062-d888-3879-a1f4-8844552436b4', 4, 'inventory', 'RFID Reader', '2025-05-07 04:23:42', '2025-05-07 04:23:42');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `contact_email`, `phone`, `company`, `created_at`, `updated_at`) VALUES
(1, 'Hobart Bogisich III', 'connie91@example.com', '+1.269.414.7866', 'Altenwerth Group', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(2, 'Mireya Labadie', 'mayer.wiley@example.org', '920-789-8917', 'Pollich PLC', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(3, 'Sylvan Gaylord', 'lesch.mafalda@example.net', '1-629-307-3943', 'Bogisich, Hackett and Pfannerstill', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(4, 'Matilde Beahan', 'dovie30@example.org', '559-521-4986', 'McGlynn, Kerluke and McGlynn', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(5, 'Roslyn Moen', 'drake20@example.net', '+1-231-379-1061', 'Sanford, Bechtelar and Jerde', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(6, 'Ladarius Spinka', 'elliot.emard@example.com', '+1-564-574-6473', 'Bosco Group', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(7, 'Kari Gaylord', 'kautzer.jean@example.net', '434-835-1411', 'Gibson-Kilback', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(8, 'Ahmed Bernier Jr.', 'terence24@example.net', '+1.910.796.7649', 'Sipes PLC', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(9, 'Kaci Crist', 'chase.armstrong@example.org', '726.598.3778', 'Brakus-Homenick', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(10, 'Arthur Emmerich II', 'erobel@example.com', '1-445-658-9370', 'Turner Inc', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(11, 'Easter Marks', 'pcronin@example.net', '(917) 500-2971', 'Homenick and Sons', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(12, 'Ilene Paucek', 'effertz.carolyn@example.net', '916-645-0539', 'Kub-Dare', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(13, 'Prof. Keshawn Volkman Jr.', 'cassandra.prohaska@example.com', '1-225-774-2939', 'Gorczany-Johnston', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(14, 'Benton Legros', 'gregory.wilkinson@example.org', '+1-724-249-3971', 'Bartell PLC', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(15, 'Ransom Marks', 'betty.langosh@example.com', '(351) 925-2461', 'Jerde and Sons', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(16, 'Lavonne Waters', 'ubrekke@example.net', '1-470-480-0441', 'Wiegand-Prohaska', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(17, 'Dr. Beau Toy', 'ymoore@example.com', '+1-984-687-1483', 'Padberg-Kohler', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(18, 'Sherwood Lehner', 'zetta.roob@example.net', '+1 (262) 866-0742', 'O\'Reilly, Connelly and Reynolds', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(19, 'Melba Feeney', 'mnitzsche@example.org', '+1 (703) 496-3888', 'Walter Group', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(20, 'Manuel Kulas', 'bosco.savanah@example.net', '430-624-1634', 'Barrows-Upton', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(21, 'Mrs. Marcelle Collier II', 'fschiller@example.org', '628.991.7044', 'Bashirian-Rutherford', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(22, 'Jacques Lindgren IV', 'noemie.bauch@example.net', '954-286-4428', 'Hermiston-Rempel', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(23, 'Kara Lubowitz', 'judah08@example.com', '580.881.0328', 'Veum-Gutkowski', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(24, 'Kari Schneider MD', 'dare.watson@example.com', '640.675.3748', 'Medhurst-Grant', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(25, 'Ms. Lonie Boyle', 'myra17@example.com', '931.394.5413', 'Sauer-Schaden', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(26, 'Prof. Samson Watsica', 'alyson.jast@example.net', '805-716-7215', 'Hand-Glover', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(27, 'Dr. Bo Howe', 'cstehr@example.com', '+1-934-208-1348', 'Jerde, Schumm and Jacobi', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(28, 'Nestor Batz', 'randall88@example.org', '601.432.4364', 'Greenholt-Beatty', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(29, 'Mr. Demario Morar Sr.', 'fconnelly@example.com', '802.762.8678', 'Nicolas PLC', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(30, 'Albertha Collier', 'dicki.aisha@example.org', '+1-913-844-8063', 'Parker Group', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(31, 'Marta O\'Keefe', 'filomena.schmitt@example.org', '+18046725611', 'Keeling-Heaney', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(32, 'Kurt Larson', 'cali58@example.org', '848.405.6649', 'Kuhic PLC', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(33, 'Dr. Hal Walker I', 'hill.ora@example.net', '208.570.3495', 'Corwin Group', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(34, 'Nicklaus Moore DVM', 'kjacobson@example.com', '301.541.8421', 'Wisoky, Parisian and Hagenes', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(35, 'Prof. Fleta Jacobi MD', 'kuvalis.lizeth@example.com', '+1.740.332.3216', 'Lebsack LLC', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(36, 'Anika Haag', 'emmanuel30@example.com', '+1 (570) 381-6968', 'Kovacek-Gibson', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(37, 'Miss Carlotta Bergnaum I', 'raymond.hermann@example.net', '+16312752478', 'Rosenbaum, DuBuque and Shields', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(38, 'Dr. Casper Willms Jr.', 'udonnelly@example.net', '970.784.8709', 'Kertzmann-Haag', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(39, 'Dr. Francis Wilderman', 'lilly.powlowski@example.org', '1-325-413-3189', 'Little, Mertz and Kreiger', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(40, 'Iliana Wolf III', 'narciso.hickle@example.org', '1-610-609-0520', 'Nicolas-Bruen', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(41, 'Camryn Mraz', 'xmayert@example.net', '1-703-845-3679', 'Harris Inc', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(42, 'Adrienne Mohr', 'howell.nicolas@example.com', '(628) 573-2333', 'Kihn, Johns and Donnelly', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(43, 'Georgiana Herzog', 'curt62@example.org', '(734) 583-2003', 'Hill PLC', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(44, 'Marcia Schuppe DVM', 'sabryna38@example.com', '812.354.7284', 'Schaden Ltd', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(45, 'Maxie Stiedemann PhD', 'rblock@example.net', '+1-657-559-1916', 'Barton, Bauch and Feest', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(46, 'Prof. Bianka Miller', 'russ.hackett@example.com', '419-512-5403', 'Keebler, Schuppe and Yost', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(47, 'Sigmund Hahn', 'mona39@example.com', '(272) 806-0298', 'Bahringer, Hoeger and Ledner', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(48, 'Name Wintheiser', 'dooley.denis@example.com', '+1-650-418-7830', 'Kessler Inc', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(49, 'Miss Alaina Bahringer DDS', 'littel.haskell@example.com', '+17439515748', 'Goodwin and Sons', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(50, 'Shanon Hagenes', 'meghan26@example.com', '+1-856-882-2340', 'Goodwin-Erdman', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(51, 'Keenan Wintheiser', 'silas.oreilly@example.org', '+1-404-213-7594', 'Wehner, Wilderman and Cummings', '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(52, 'Desmond Lowe II', 'harber.doug@example.org', '+1.248.242.5696', 'Dickinson-Jerde', '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(53, 'Orval Waelchi IV', 'uprohaska@example.org', '(479) 762-8048', 'Carter-McDermott', '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(54, 'Vidal Flatley Sr.', 'kiara40@example.com', '(458) 959-1861', 'Kozey Inc', '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(55, 'Grayson Maggio', 'cyrus51@example.com', '+1-207-533-8029', 'Wilkinson Inc', '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(56, 'Dr. Lucio Vandervort', 'bria02@example.org', '+18725260062', 'McCullough, Sporer and Konopelski', '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(57, 'Neal Jaskolski', 'bmiller@example.net', '914.437.7186', 'Farrell Inc', '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(58, 'Prof. Theodore Brekke', 'gaston.anderson@example.com', '1-973-228-6198', 'Huel-Daugherty', '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(59, 'Mrs. Lori Ratke III', 'floyd.braun@example.com', '+1-737-941-1124', 'Bode-Bahringer', '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(60, 'Alta Cartwright', 'aufderhar.jeanne@example.com', '475-645-2970', 'Dare and Sons', '2025-05-07 04:23:41', '2025-05-07 04:23:41');

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

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2025-05-07 04:23:37', '$2y$12$ltZEoqS8omeUiD2ExsBwxOTYEFSmOJa.m7j6MN9RgU1tQCLQjLnWy', 'a266lxXckq', '2025-05-07 04:23:38', '2025-05-07 04:23:38'),
(2, 'Elisabeth Gerlach', 'paxton99@example.com', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'hflKGBq8mY', '2025-05-07 04:23:38', '2025-05-07 04:23:38'),
(3, 'Vernon Batz DDS', 'fbatz@example.org', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'PRBj4DwZUp', '2025-05-07 04:23:38', '2025-05-07 04:23:38'),
(4, 'Kirsten Fadel', 'swaniawski.jed@example.org', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'lYdW0PCK6j', '2025-05-07 04:23:38', '2025-05-07 04:23:38'),
(5, 'Amaya Spinka', 'jodie.moen@example.org', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', '5Px3Cp9pgL', '2025-05-07 04:23:38', '2025-05-07 04:23:38'),
(6, 'Savion Bosco', 'baumbach.bernadette@example.org', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'wZ5zQ3UYOA', '2025-05-07 04:23:38', '2025-05-07 04:23:38'),
(7, 'Maurice Kuvalis', 'sadye.dooley@example.net', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', '8iiBYfC1xq', '2025-05-07 04:23:38', '2025-05-07 04:23:38'),
(8, 'Michel Conroy', 'bashirian.junius@example.com', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'fKa7K2bwU2', '2025-05-07 04:23:38', '2025-05-07 04:23:38'),
(9, 'Bonita Monahan', 'mayert.zane@example.com', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', '9nD7Yfl8Zf', '2025-05-07 04:23:38', '2025-05-07 04:23:38'),
(10, 'Frank Padberg', 'corkery.lorenz@example.com', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', '81inIqVpLt', '2025-05-07 04:23:38', '2025-05-07 04:23:38'),
(11, 'Katheryn Block', 'keith.abbott@example.net', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'LtevTbBEUB', '2025-05-07 04:23:38', '2025-05-07 04:23:38'),
(12, 'Justice Kub', 'swatsica@example.net', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'x4AKEfZCeD', '2025-05-07 04:23:38', '2025-05-07 04:23:38'),
(13, 'Scotty Raynor', 'aaliyah.wisoky@example.com', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'kjJKm2H0YQ', '2025-05-07 04:23:38', '2025-05-07 04:23:38'),
(14, 'Dr. Carolanne Hodkiewicz', 'zparker@example.org', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'wmVkn8JCSf', '2025-05-07 04:23:38', '2025-05-07 04:23:38'),
(15, 'General Quitzon', 'autumn68@example.com', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'aqxqaPhzEt', '2025-05-07 04:23:38', '2025-05-07 04:23:38'),
(16, 'Miss Dessie Kuphal', 'gorczany.dannie@example.com', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'PCPs4Y4Rsx', '2025-05-07 04:23:38', '2025-05-07 04:23:38'),
(17, 'Dr. Josianne Moore Sr.', 'rickie.grimes@example.net', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'WvjMTOcz3q', '2025-05-07 04:23:38', '2025-05-07 04:23:38'),
(18, 'Shanon Rau', 'gino41@example.net', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', '3oziJdIoaB', '2025-05-07 04:23:38', '2025-05-07 04:23:38'),
(19, 'Agustina Mayert Jr.', 'qbrown@example.com', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', '8IhzqndbyV', '2025-05-07 04:23:38', '2025-05-07 04:23:38'),
(20, 'Aditya Raynor', 'luella.morissette@example.net', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'ojyWp6Ug3a', '2025-05-07 04:23:38', '2025-05-07 04:23:38'),
(21, 'Miss Nellie Hickle Sr.', 'mavis.runolfsson@example.org', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'zU9Wd7FBgN', '2025-05-07 04:23:38', '2025-05-07 04:23:38'),
(22, 'Haylie Ortiz', 'brekke.francisco@example.com', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'iDpt5tJCJe', '2025-05-07 04:23:38', '2025-05-07 04:23:38'),
(23, 'Ross Kirlin', 'qprohaska@example.net', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'cBvXKkg6Uy', '2025-05-07 04:23:38', '2025-05-07 04:23:38'),
(24, 'Prof. Laverna Kemmer', 'orland55@example.com', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'FhUDWZfu52', '2025-05-07 04:23:38', '2025-05-07 04:23:38'),
(25, 'Susan Becker', 'vsipes@example.com', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'DJZWpDiBbU', '2025-05-07 04:23:38', '2025-05-07 04:23:38'),
(26, 'Savanna Conroy', 'rickey07@example.net', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'khHUMY09Fa', '2025-05-07 04:23:38', '2025-05-07 04:23:38'),
(27, 'Nelson Daniel', 'jkemmer@example.org', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'lkoOV3pryf', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(28, 'Danielle Howell', 'znitzsche@example.org', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'ZGOH1qXoR0', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(29, 'Billie Bartell', 'khalid57@example.com', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'F1CJq9AnEJ', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(30, 'Lorenzo Hirthe', 'ebba83@example.com', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'ZXP0BUpRAE', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(31, 'Newell Wisoky', 'nchamplin@example.org', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'JIku3m0OVI', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(32, 'Mrs. Celia Kuhlman DVM', 'obecker@example.net', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'sGJN91nImx', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(33, 'Brendon Shields', 'mitchel.wuckert@example.org', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', '2oQqwvtRUL', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(34, 'Alfreda Lind', 'lyric.windler@example.net', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'WpgXgRm0RL', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(35, 'Joanny Schultz', 'cyril86@example.net', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', '0KdrfqEe8y', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(36, 'Norberto Brekke', 'kennedi29@example.net', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'zgsnDbzb0a', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(37, 'Miss Maye Hilpert I', 'pjacobi@example.com', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'Nh3skh0U6e', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(38, 'Prof. Crystal Hermiston III', 'feeney.destin@example.org', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'rakONHNXHd', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(39, 'Llewellyn Gleason', 'margarett39@example.net', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'LppNY16kSM', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(40, 'Cody Cummerata', 'runolfsson.genoveva@example.com', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'IXRjXi05Fp', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(41, 'Kayla Paucek', 'shammes@example.net', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', '7chJHI1fmv', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(42, 'Myrtle Dach', 'oheller@example.org', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'TKkGMtMqCa', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(43, 'Guiseppe Larkin', 'bblock@example.net', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'CPPC9bjXp4', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(44, 'Jessica Toy', 'gpurdy@example.net', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'EzsXnDgqZd', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(45, 'Chandler Beer', 'heber87@example.org', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'TeXcJcCiwc', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(46, 'Gavin Upton', 'mayert.kenyon@example.net', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'l1HJAOmcrq', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(47, 'Dr. Domenick Gleichner MD', 'william.robel@example.com', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'xZ0STyPuNU', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(48, 'Demond Kilback', 'keeling.julianne@example.com', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'hP1u1GesHC', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(49, 'Adriel Lemke', 'vonrueden.quincy@example.net', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', '8aMlAw2ODF', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(50, 'Jacynthe Durgan', 'wkulas@example.org', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'bfAteAdkRH', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(51, 'Mr. Jamey Skiles DDS', 'tia.hayes@example.net', '2025-05-07 04:23:38', '$2y$12$AJOe/A7Eld55AOXwWNcrnul2ADKU4mrG4Eo4OQcMVu1Yfm4qWffce', 'nBGacZlGKL', '2025-05-07 04:23:39', '2025-05-07 04:23:39');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_locations`
--

CREATE TABLE `warehouse_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `aisle` varchar(255) NOT NULL,
  `shelf` varchar(255) NOT NULL,
  `bin_number` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouse_locations`
--

INSERT INTO `warehouse_locations` (`id`, `aisle`, `shelf`, `bin_number`, `created_at`, `updated_at`) VALUES
(1, 'A6', 'Shelf 1', 'Bin 1', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(2, 'A7', 'Shelf 5', 'Bin 6', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(3, 'A6', 'Shelf 2', 'Bin 7', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(4, 'A9', 'Shelf 5', 'Bin 17', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(5, 'A6', 'Shelf 2', 'Bin 2', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(6, 'A2', 'Shelf 2', 'Bin 13', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(7, 'A8', 'Shelf 5', 'Bin 2', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(8, 'A1', 'Shelf 2', 'Bin 17', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(9, 'A10', 'Shelf 5', 'Bin 8', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(10, 'A6', 'Shelf 3', 'Bin 15', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(11, 'A1', 'Shelf 5', 'Bin 20', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(12, 'A3', 'Shelf 1', 'Bin 9', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(13, 'A2', 'Shelf 1', 'Bin 6', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(14, 'A1', 'Shelf 3', 'Bin 11', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(15, 'A7', 'Shelf 1', 'Bin 5', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(16, 'A6', 'Shelf 4', 'Bin 18', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(17, 'A10', 'Shelf 3', 'Bin 9', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(18, 'A5', 'Shelf 1', 'Bin 20', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(19, 'A1', 'Shelf 5', 'Bin 7', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(20, 'A8', 'Shelf 2', 'Bin 5', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(21, 'A1', 'Shelf 2', 'Bin 7', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(22, 'A6', 'Shelf 2', 'Bin 6', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(23, 'A8', 'Shelf 5', 'Bin 14', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(24, 'A5', 'Shelf 2', 'Bin 15', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(25, 'A7', 'Shelf 4', 'Bin 2', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(26, 'A5', 'Shelf 3', 'Bin 8', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(27, 'A5', 'Shelf 5', 'Bin 9', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(28, 'A1', 'Shelf 3', 'Bin 3', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(29, 'A8', 'Shelf 1', 'Bin 19', '2025-05-07 04:23:39', '2025-05-07 04:23:39'),
(30, 'A6', 'Shelf 4', 'Bin 20', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(31, 'A10', 'Shelf 2', 'Bin 13', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(32, 'A8', 'Shelf 2', 'Bin 15', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(33, 'A10', 'Shelf 2', 'Bin 20', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(34, 'A4', 'Shelf 1', 'Bin 19', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(35, 'A5', 'Shelf 4', 'Bin 1', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(36, 'A6', 'Shelf 4', 'Bin 1', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(37, 'A3', 'Shelf 1', 'Bin 14', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(38, 'A3', 'Shelf 5', 'Bin 20', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(39, 'A9', 'Shelf 2', 'Bin 9', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(40, 'A9', 'Shelf 4', 'Bin 11', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(41, 'A3', 'Shelf 5', 'Bin 20', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(42, 'A6', 'Shelf 1', 'Bin 17', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(43, 'A8', 'Shelf 4', 'Bin 8', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(44, 'A6', 'Shelf 5', 'Bin 1', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(45, 'A9', 'Shelf 4', 'Bin 5', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(46, 'A8', 'Shelf 5', 'Bin 6', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(47, 'A4', 'Shelf 2', 'Bin 6', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(48, 'A7', 'Shelf 1', 'Bin 19', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(49, 'A8', 'Shelf 4', 'Bin 1', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(50, 'A6', 'Shelf 5', 'Bin 2', '2025-05-07 04:23:40', '2025-05-07 04:23:40'),
(51, 'A7', 'Shelf 1', 'Bin 12', '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(52, 'A9', 'Shelf 2', 'Bin 19', '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(53, 'A9', 'Shelf 1', 'Bin 4', '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(54, 'A8', 'Shelf 1', 'Bin 19', '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(55, 'A5', 'Shelf 1', 'Bin 15', '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(56, 'A5', 'Shelf 4', 'Bin 15', '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(57, 'A2', 'Shelf 1', 'Bin 1', '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(58, 'A3', 'Shelf 2', 'Bin 13', '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(59, 'A5', 'Shelf 5', 'Bin 8', '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(60, 'A6', 'Shelf 4', 'Bin 2', '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(61, 'A9', 'Shelf 4', 'Bin 12', '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(62, 'A8', 'Shelf 5', 'Bin 12', '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(63, 'A7', 'Shelf 4', 'Bin 14', '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(64, 'A8', 'Shelf 4', 'Bin 5', '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(65, 'A8', 'Shelf 3', 'Bin 9', '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(66, 'A5', 'Shelf 4', 'Bin 1', '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(67, 'A8', 'Shelf 3', 'Bin 1', '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(68, 'A4', 'Shelf 5', 'Bin 17', '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(69, 'A6', 'Shelf 1', 'Bin 12', '2025-05-07 04:23:41', '2025-05-07 04:23:41'),
(70, 'A8', 'Shelf 2', 'Bin 7', '2025-05-07 04:23:41', '2025-05-07 04:23:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_internal_reference_unique` (`internal_reference`),
  ADD UNIQUE KEY `products_rfid_code_unique` (`rfid_code`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_supplier_id_foreign` (`supplier_id`),
  ADD KEY `products_warehouse_location_id_foreign` (`warehouse_location_id`);

--
-- Indexes for table `rfid_scan_logs`
--
ALTER TABLE `rfid_scan_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rfid_scan_logs_product_id_foreign` (`product_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `warehouse_locations`
--
ALTER TABLE `warehouse_locations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `rfid_scan_logs`
--
ALTER TABLE `rfid_scan_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `warehouse_locations`
--
ALTER TABLE `warehouse_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`),
  ADD CONSTRAINT `products_warehouse_location_id_foreign` FOREIGN KEY (`warehouse_location_id`) REFERENCES `warehouse_locations` (`id`);

--
-- Constraints for table `rfid_scan_logs`
--
ALTER TABLE `rfid_scan_logs`
  ADD CONSTRAINT `rfid_scan_logs_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
