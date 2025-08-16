-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2025 at 02:59 PM
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
(1, 'Botsford, Schoen and Kemmer', NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(2, 'Bergnaum LLC', NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(3, 'Bechtelar-Heathcote', NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(4, 'Ferry, Moen and Stehr', NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(5, 'Reichert-Kreiger', NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(6, 'Little, Thompson and Kunde', NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(7, 'Funk LLC', NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(8, 'Ritchie-Stoltenberg', NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(9, 'Cummerata, Swift and Bartell', NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(10, 'Sauer-Balistreri', NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11');

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
-- Table structure for table `exports`
--

CREATE TABLE `exports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `file_disk` varchar(255) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `exporter` varchar(255) NOT NULL,
  `processed_rows` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_rows` int(10) UNSIGNED NOT NULL,
  `successful_rows` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_import_rows`
--

CREATE TABLE `failed_import_rows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`data`)),
  `import_id` bigint(20) UNSIGNED NOT NULL,
  `validation_error` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `imports`
--

CREATE TABLE `imports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `importer` varchar(255) NOT NULL,
  `processed_rows` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_rows` int(10) UNSIGNED NOT NULL,
  `successful_rows` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(6, '2025_05_07_113428_create_warehouse_locations_table', 1),
(7, '2025_05_07_113429_create_products_table', 1),
(8, '2025_05_07_113430_create_rfid_scan_logs_table', 1),
(9, '2025_05_07_183604_create_notifications_table', 1),
(10, '2025_05_07_183643_create_imports_table', 1),
(11, '2025_05_07_183644_create_exports_table', 1),
(12, '2025_05_07_183645_create_failed_import_rows_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `origen_price` varchar(255) DEFAULT NULL,
  `transporte` varchar(255) DEFAULT NULL,
  `cost_price` varchar(255) DEFAULT NULL,
  `minimum_price` varchar(255) DEFAULT NULL,
  `regular_price` varchar(255) DEFAULT NULL,
  `beneficio_web` varchar(255) DEFAULT NULL,
  `beneficio_glovo` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `visibility_in_catalog` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `categories` varchar(255) DEFAULT NULL,
  `supercategories` varchar(255) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `stock` varchar(255) NOT NULL DEFAULT '0',
  `gtin` varchar(255) DEFAULT NULL,
  `collection` varchar(255) DEFAULT NULL,
  `variant_attribute_1` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `item_size` varchar(255) DEFAULT NULL,
  `publico_objetivo` varchar(255) DEFAULT NULL,
  `funciones` varchar(255) DEFAULT NULL,
  `proveedor` varchar(255) DEFAULT NULL,
  `condicion` varchar(255) DEFAULT NULL,
  `informacion_adicional` text DEFAULT NULL,
  `rfid_code` varchar(255) DEFAULT NULL,
  `product_picture` varchar(255) DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `warehouse_location_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `origen_price`, `transporte`, `cost_price`, `minimum_price`, `regular_price`, `beneficio_web`, `beneficio_glovo`, `type`, `published`, `visibility_in_catalog`, `description`, `meta_title`, `meta_description`, `categories`, `supercategories`, `images`, `stock`, `gtin`, `collection`, `variant_attribute_1`, `color`, `marca`, `item_size`, `publico_objetivo`, `funciones`, `proveedor`, `condicion`, `informacion_adicional`, `rfid_code`, `product_picture`, `brand_id`, `supplier_id`, `warehouse_location_id`, `created_at`, `updated_at`) VALUES
(1, 'rerum quasi temporibus', 'SKU-8816', '285.98', '13.23', '111.32', '295.76', '30.17', '72.5', '43.88', 'variable', 1, 'visible', 'Dignissimos et minus minus eos. Officiis possimus autem doloremque et fuga rerum quas.', 'Molestias quasi optio et perspiciatis.', 'Sint ut deserunt ut error et dicta. Maxime sit nihil aperiam laudantium. Non vitae accusantium minima quisquam dolores doloribus beatae.', 'Clothing', 'Fashion', 'https://via.placeholder.com/640x480.png/009977?text=product+nihil', '316', '2015179618800', 'eum', 'vel', 'purple', 'Leffler, Hane and Lakin', 'L', 'Unisex', 'sed a rem', 'Purdy, Flatley and Schimmel', 'Nuevo', 'Ipsa architecto modi sit quas eveniet. Autem doloribus voluptatem tempora optio doloremque rerum et.', '2becac4f-3423-3c35-98e7-2397f73aa6db', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(2, 'voluptas voluptatem laborum', 'SKU-4710', '378.38', '8.48', '219.71', '96.55', '36.95', '43.65', '49.49', 'simple', 1, 'hidden', 'Esse esse voluptatibus omnis fuga laudantium. Et autem nobis voluptas ad. Alias iste dignissimos eos aut eaque consequuntur animi. Nihil ab illum non enim.', 'Quia ullam molestiae sed delectus beatae et dicta.', 'Ea sunt accusamus est iusto. Eum est aut illo fuga dolorum quia praesentium. Eligendi architecto delectus molestias voluptatem eaque.', 'Clothing', 'Tech', 'https://via.placeholder.com/640x480.png/00aa55?text=product+magnam', '375', '9549266253283', 'quod', 'id', 'white', 'Kreiger-Nader', 'S', 'Men', 'explicabo tenetur praesentium', 'Jacobs, Schmidt and Hettinger', 'Usado', 'Iste eaque aperiam eveniet ea voluptatem itaque dolores modi. Similique sint aliquid quas sit quo odit distinctio. Et accusamus laborum quas nisi illo corrupti. Ab aperiam voluptate est eos sequi.', '1c9ec447-7228-3883-83b6-c7eb283c86af', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(3, 'nulla amet necessitatibus', 'SKU-4666', '18.85', '34.07', '263.99', '135.35', '349.91', '60.26', '90.37', 'simple', 1, 'visible', 'Quibusdam voluptatibus quia ut iusto voluptatem molestias aut. Vel quia similique similique non architecto suscipit quaerat molestiae. Voluptates optio est aut ipsam iure nostrum.', 'Illum sed harum est quas dolor nihil occaecati.', 'Et consequuntur ut minus sequi. Ea molestiae ipsam tempora omnis et. Id id cupiditate accusantium dolor. Laboriosam fugiat accusantium et tenetur iusto.', 'Electronics', 'Tech', 'https://via.placeholder.com/640x480.png/00ee44?text=product+consequatur', '425', '1866525127832', 'dolorem', 'ipsum', 'silver', 'Boyle-Hyatt', 'L', 'Women', 'sunt recusandae veniam', 'O\'Conner Ltd', 'Nuevo', 'Magnam recusandae quia praesentium aut nihil quis quos. Accusantium enim explicabo est. Qui quisquam nihil aut consequatur et non quia. Dolorum illum fugit aspernatur suscipit nisi aut dolorum nulla.', 'c5aac81a-5f03-3fe9-94b0-f7cd135e0c9d', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(4, 'quo quaerat sed', 'SKU-4741', '171.58', '47.92', '119.01', '104.91', '207.9', '1.54', '13.83', 'variable', 0, 'visible', 'Quis voluptatem iusto libero ut ex est cupiditate est. Doloremque sint est illo ut. Numquam molestiae reprehenderit quos aut consectetur animi aut. Quo recusandae quis cumque.', 'Et dolor sequi qui omnis quia voluptatem facere.', 'Quia libero occaecati assumenda saepe id. Non qui possimus facilis. Ut praesentium qui odit doloremque veniam dolorem reprehenderit.', 'Home', 'Lifestyle', 'https://via.placeholder.com/640x480.png/0099dd?text=product+quidem', '467', '5294650217702', 'pariatur', 'sed', 'fuchsia', 'Adams, Smith and Langosh', 'XL', 'Women', 'et aliquam consequuntur', 'Deckow, Ernser and Satterfield', 'Usado', 'Sed aliquam quo ad fugiat facere. Ullam ducimus animi a magnam aut soluta. Minima dolore recusandae doloribus eveniet et. Pariatur veritatis tenetur nulla sunt repudiandae. Debitis asperiores aliquam dolorem quod quam et.', 'fdc75506-4774-3cac-a4ac-dee0cd44df91', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(5, 'numquam aliquam quisquam', 'SKU-5475', '464.47', '12.85', '331.47', '343.48', '369.34', '13.96', '16.25', 'variable', 1, 'search', 'Saepe cum minus vero. Rerum quia ea fugiat repellendus quo ut tempore enim. Facilis totam autem ipsa voluptas praesentium ut.', 'Quisquam soluta mollitia eos illo accusamus eaque corrupti.', 'Consectetur fugit veritatis asperiores beatae et. Et ad vero ratione autem. Quidem velit qui tempore est iste deserunt et. Quisquam qui voluptas doloribus.', 'Sports', 'Fashion', 'https://via.placeholder.com/640x480.png/00aa66?text=product+ratione', '384', '8091435882363', 'qui', 'suscipit', 'teal', 'Schuster-Beier', 'XL', 'Kids', 'enim eos laborum', 'Bruen-Stanton', 'Usado', 'Deleniti saepe asperiores ea quo sint. Sint omnis sit maxime modi fugit voluptas dicta laborum. Pariatur eius est ipsa quod veritatis dolorum.', 'b5450acd-e943-3454-b7a4-b9e61a16e465', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(6, 'id quod et', 'SKU-8125', '370.99', '20.75', '95.41', '74.83', '522.97', '35.15', '25.8', 'simple', 1, 'hidden', 'Odit quam eligendi dolor debitis voluptatem voluptas. Laboriosam occaecati odit sapiente et culpa quam. Sit non consectetur provident sed ad et vel. Velit sed tenetur dolore consequuntur quam laborum. Nostrum veritatis omnis hic vel odio molestias.', 'Nam ut explicabo eveniet consequuntur ut.', 'Officiis minima distinctio reprehenderit officia ipsam autem sunt. Rerum dolor minus ex totam adipisci aut est.', 'Sports', 'Lifestyle', 'https://via.placeholder.com/640x480.png/0099dd?text=product+quae', '493', '7012727304258', 'eaque', 'aliquam', 'blue', 'Schuster, Johns and Toy', 'S', 'Men', 'vel enim vero', 'Lubowitz Inc', 'Usado', 'Fugiat quam deleniti eaque dolorem harum qui. Modi quam consectetur quos aut dolores in. Et nostrum iure nisi.', '29ae11e3-6297-312c-ab37-7f8504b44aac', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(7, 'quia quam quas', 'SKU-7683', '67.91', '9.3', '22.46', '27.18', '431.59', '57.13', '36.06', 'simple', 1, 'visible', 'Perspiciatis omnis at ullam architecto. Molestias nemo possimus aliquid libero veritatis. Vero illo earum dicta in doloribus praesentium.', 'Minima asperiores possimus unde.', 'Necessitatibus doloremque quae aut voluptatibus adipisci ab. Qui aut ex ut fugit.', 'Electronics', 'Lifestyle', 'https://via.placeholder.com/640x480.png/00eeff?text=product+necessitatibus', '82', '7661691653321', 'sunt', 'facilis', 'teal', 'Blick and Sons', 'S', 'Women', 'doloribus ex autem', 'Little-Durgan', 'Usado', 'Inventore delectus consequatur veritatis. Et est velit recusandae perferendis sapiente delectus mollitia. Ipsa ut commodi rerum eveniet ipsam ut illo.', '2ab9eade-512b-3ad0-80e4-066c129a3edc', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(8, 'porro eos aut', 'SKU-3693', '286.11', '4.08', '144.8', '275.63', '239.05', '89.14', '72.19', 'simple', 1, 'hidden', 'At velit odit et soluta iusto ab ea. Officiis aut quisquam voluptas veritatis est quo est. Reprehenderit impedit blanditiis id rerum similique et.', 'Odio minus sapiente ut et excepturi sint labore numquam.', 'Tempora dolorum possimus natus mollitia non optio perferendis. Voluptatem sit ex repellendus pariatur voluptatem. Repudiandae ad laborum eius.', 'Home', 'Lifestyle', 'https://via.placeholder.com/640x480.png/00cc99?text=product+neque', '352', '0644189163493', 'maiores', 'aut', 'lime', 'Dooley LLC', 'XL', 'Kids', 'voluptate qui commodi', 'Yundt Inc', 'Nuevo', 'Perferendis sed cupiditate soluta eius sed iure. Labore omnis et eligendi eaque quod eius consectetur error. Quisquam nesciunt ipsam officiis error voluptatem. Et cupiditate officiis consequatur quam vel ut.', '5cc71e1c-d015-3f66-958d-9474df87f0a6', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(9, 'vel omnis architecto', 'SKU-6708', '285.32', '17.73', '380.51', '232.74', '266.96', '82.58', '98.17', 'variable', 1, 'hidden', 'Rerum nostrum nesciunt voluptatibus. Iusto est illum hic occaecati. Optio nulla voluptatum autem atque.', 'Sint numquam aliquid excepturi dolore et.', 'Magni et at eum. Quia laborum error facilis incidunt neque. Quidem vel non nobis facilis.', 'Electronics', 'Fashion', 'https://via.placeholder.com/640x480.png/001144?text=product+quia', '279', '9668965516656', 'sequi', 'voluptatem', 'green', 'Jakubowski, Prosacco and Dietrich', 'S', 'Unisex', 'at tempore sunt', 'Upton PLC', 'Usado', 'Est dolorum quae nihil amet. Distinctio unde aut excepturi incidunt quia quo nihil. Magni aut quasi dolores occaecati. Dolor fuga reiciendis velit sit occaecati officiis odit.', 'fa296454-4a13-38ea-bcb3-93017dec87a8', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(10, 'quo voluptas quod', 'SKU-2926', '149.94', '35.39', '198.51', '18.92', '348.62', '15.01', '65.19', 'simple', 1, 'hidden', 'Quia cumque quo esse assumenda voluptatum corrupti. Quisquam iste aliquid et vitae sed. Provident perspiciatis possimus tempora qui aliquam maiores nihil.', 'Beatae laudantium odit blanditiis quam voluptas optio.', 'Eum nulla dicta dolor est. Cum nobis saepe expedita voluptatem fugit odio autem. Qui ex tempore aut quia architecto.', 'Electronics', 'Tech', 'https://via.placeholder.com/640x480.png/001199?text=product+ut', '50', '4044022537409', 'voluptatum', 'esse', 'aqua', 'Metz Ltd', 'L', 'Men', 'eius non aspernatur', 'Schaden-Lindgren', 'Usado', 'Ut excepturi aperiam repellendus ratione dolor aspernatur velit autem. Cum quibusdam quia sunt aut ut voluptatem quos. Voluptatem aut optio voluptatem enim eveniet. Ut in recusandae nesciunt a repellendus voluptatem labore.', '224f5500-bda8-3acd-bc7a-49d0f983cf2c', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(11, 'id et autem', 'SKU-8279', '211.78', '9.25', '156.28', '200.41', '375.27', '51.73', '36.41', 'simple', 1, 'visible', 'Et necessitatibus earum omnis sunt occaecati in consectetur quia. Vitae delectus minus tempore iusto excepturi esse et. Reprehenderit eaque at et libero quidem consequatur. Vero modi repellat sed perferendis suscipit placeat.', 'Recusandae est magni nostrum aliquid facilis rem exercitationem.', 'Et fuga repellat laudantium non sapiente reiciendis et ut. Possimus ipsa hic sit sunt quas vitae explicabo. Et nostrum enim libero.', 'Clothing', 'Fashion', 'https://via.placeholder.com/640x480.png/00aaaa?text=product+quaerat', '233', '7965574551767', 'sint', 'ratione', 'green', 'Mayert, Lehner and Kub', 'L', 'Unisex', 'nemo delectus et', 'Kulas-Jenkins', 'Nuevo', 'Dolorum voluptatem sit soluta eum doloribus voluptas culpa et. Autem excepturi consequatur quia sit. Aut nesciunt fugit ab aperiam dolor odit maiores.', 'd7fa0b41-4a9e-3cdb-aa99-bc7c349e0144', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(12, 'autem quae possimus', 'SKU-3959', '287.58', '22.39', '204.12', '79.01', '222.82', '12.48', '91.04', 'simple', 1, 'search', 'Pariatur est iste sed et. Rerum sint et labore commodi. Et odio recusandae iusto incidunt. Quaerat est ullam quibusdam deserunt vel asperiores.', 'Est molestiae perferendis voluptate ex vel quos accusamus.', 'Magni velit eveniet nulla nulla labore. Voluptatem odit similique non molestiae non dolores. Vel itaque totam ratione ducimus tenetur et quasi.', 'Clothing', 'Tech', 'https://via.placeholder.com/640x480.png/00bbff?text=product+alias', '69', '2965241760831', 'sit', 'dolore', 'aqua', 'Trantow, Watsica and Wilkinson', 'XL', 'Kids', 'et et aliquam', 'Ankunding-Parisian', 'Usado', 'Odit fugiat architecto voluptatem exercitationem ratione exercitationem ab. Vero aut quas id saepe. Rem dolores magnam a nesciunt molestiae qui. Pariatur incidunt laboriosam consequuntur dignissimos eius sunt. Vel perferendis rerum minus consectetur ab.', '05e4e033-3d57-32c3-876e-42477e591332', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(13, 'eaque velit perspiciatis', 'SKU-3611', '97.1', '6.32', '104.32', '248.3', '397.11', '69.57', '73.1', 'simple', 1, 'search', 'Accusantium velit deleniti et ducimus. Explicabo odio praesentium et omnis dolorum corrupti. Odit aperiam reiciendis iste fugiat modi ut et. Qui ut laudantium voluptatum amet.', 'Aut dolorem voluptatem sit neque sit aut.', 'Dolor animi nesciunt laudantium ullam. Commodi nostrum alias autem officiis quo aperiam. Tempore consequatur similique aliquam eum.', 'Sports', 'Tech', 'https://via.placeholder.com/640x480.png/008833?text=product+harum', '176', '9731219576666', 'cumque', 'laborum', 'aqua', 'Kautzer, Mohr and Schuppe', 'L', 'Kids', 'distinctio corporis sapiente', 'Greenholt LLC', 'Nuevo', 'Reprehenderit corporis nihil pariatur eos vel aut. Rem consequatur consectetur sit dolor nam ea.', '0a712b19-5a42-3854-a1c1-598977b0e8de', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(14, 'dolor fugiat aperiam', 'SKU-6502', '244.29', '31.06', '291.07', '40.72', '557.06', '98.73', '44.98', 'simple', 0, 'search', 'Autem qui enim architecto qui fuga accusamus deserunt. Provident nemo sit quia magni officia ab sint. Enim voluptas ea placeat iusto saepe dignissimos ipsum enim.', 'Harum cumque quo est et aut eius.', 'Ut consequuntur qui quidem illo. Non minima id perferendis dolorem. Dolor dolor totam ab aut. Et ea quibusdam maxime voluptates.', 'Clothing', 'Tech', 'https://via.placeholder.com/640x480.png/007744?text=product+quasi', '199', '6827377535362', 'voluptatibus', 'qui', 'maroon', 'Ratke and Sons', 'L', 'Unisex', 'esse minus quia', 'Langworth-Hoeger', 'Usado', 'Et facere odio saepe magni voluptatem voluptatibus. Quidem est ad quos. Sunt eos perspiciatis ullam. Nam et consequuntur animi voluptas. Neque sed perspiciatis veritatis nihil quis et possimus dignissimos.', 'e671df23-5f39-3b76-ad8f-9e754b77a8d6', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(15, 'commodi quia explicabo', 'SKU-2371', '6.31', '44.4', '154.3', '193.18', '90.86', '69.28', '35.19', 'variable', 1, 'hidden', 'Debitis quos repudiandae dolorem corporis doloremque esse. Eos asperiores illo odio et dignissimos et quas voluptas.', 'Rem qui odio blanditiis quia.', 'Omnis omnis in eum voluptatem. Repellat nemo sunt assumenda quis. Ad reiciendis consequatur voluptate fuga quibusdam.', 'Clothing', 'Fashion', 'https://via.placeholder.com/640x480.png/00dd22?text=product+et', '64', '0531497914063', 'sed', 'quibusdam', 'silver', 'Gulgowski, Gerlach and Koss', 'XL', 'Unisex', 'et eos eum', 'Kessler-Schmeler', 'Nuevo', 'Et exercitationem omnis autem dolorem eaque sequi eaque. Maxime inventore minima deserunt. Quia molestiae nihil tenetur omnis et et enim. Libero impedit iste nisi quas a quibusdam dolorum aut. Repellat in dolores non tempora voluptates illo.', '2ab839ad-68d2-3008-aa61-40dcd02e625d', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(16, 'quibusdam illum similique', 'SKU-3113', '336.25', '31.22', '276.19', '213.82', '231.66', '6.05', '46.73', 'simple', 1, 'hidden', 'Et voluptatem aut nesciunt consequatur dolor. Nihil deserunt cupiditate minima accusamus veritatis qui nobis. Et voluptatem nesciunt quasi repudiandae.', 'Distinctio aut beatae ratione et excepturi repudiandae.', 'Odio et velit ut quidem est in. Aut rerum inventore qui ut fugiat deleniti maxime. Doloremque eos libero voluptatum necessitatibus quasi sapiente et.', 'Electronics', 'Lifestyle', 'https://via.placeholder.com/640x480.png/0011aa?text=product+quis', '122', '8762812122203', 'et', 'nisi', 'fuchsia', 'Bosco, Thiel and Wuckert', 'S', 'Women', 'voluptatum dolore ut', 'Lueilwitz, Ankunding and Baumbach', 'Usado', 'Ea non inventore impedit et est et veniam. Quas possimus omnis aut. Sed consectetur est repudiandae deleniti ea et ratione.', '3f628393-afe9-304b-86e1-f59b382fe2be', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(17, 'vel illo qui', 'SKU-1353', '174.32', '38.48', '79.93', '312.01', '83.5', '45.19', '68.39', 'variable', 1, 'search', 'Molestias qui ut nisi omnis. Voluptatibus laborum aliquam totam doloremque repellat aut. In quia voluptatum voluptatem architecto doloremque sed.', 'Sapiente quia soluta dignissimos alias.', 'Et fugit autem quia qui a. Illum dolores excepturi ut explicabo. Sunt quia eos facilis aliquam est.', 'Clothing', 'Lifestyle', 'https://via.placeholder.com/640x480.png/0022cc?text=product+dignissimos', '219', '0772533617634', 'sed', 'tempora', 'teal', 'Pagac-Luettgen', 'M', 'Unisex', 'voluptate aspernatur deserunt', 'Russel-Bahringer', 'Usado', 'Voluptas vel quos recusandae aut fugiat qui aut. In reprehenderit quaerat hic repudiandae. Ut voluptatum blanditiis necessitatibus qui dignissimos velit. Tenetur et et exercitationem aut est. Consequatur facilis quibusdam in sequi aliquam.', '1680e4b8-c81e-32ab-be91-c62758242769', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(18, 'qui facere voluptate', 'SKU-1444', '21.64', '18.44', '33.34', '133.66', '181.6', '77.52', '46.05', 'variable', 1, 'hidden', 'Neque ex optio recusandae quia. Rem reprehenderit veniam quia praesentium eos provident porro. Aut dolorum odit suscipit officiis qui. Eum quaerat cupiditate non officiis qui. Dolorem molestias nam placeat consectetur.', 'Tempora sit eligendi ex nesciunt non.', 'Voluptates minima laudantium atque et suscipit quia dolorum. Unde ut vel corrupti nobis.', 'Clothing', 'Fashion', 'https://via.placeholder.com/640x480.png/00ee11?text=product+laudantium', '140', '3245216621060', 'quod', 'unde', 'yellow', 'Balistreri, Wyman and Ruecker', 'XL', 'Men', 'quis nostrum doloribus', 'Bruen, Mann and Strosin', 'Nuevo', 'Modi quo itaque quas neque corporis accusantium. Omnis voluptatem quidem blanditiis consequuntur saepe. Culpa doloremque consequatur est quia quos est recusandae. Debitis similique quo suscipit molestiae numquam nobis.', '9ca094e6-351b-34c3-921a-3831e99ea24d', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(19, 'nobis delectus non', 'SKU-3150', '273.29', '47.62', '250.97', '131.97', '173.13', '70.78', '2.32', 'variable', 0, 'search', 'Libero occaecati omnis dicta. Quo explicabo quidem enim perferendis dicta non. Rerum quasi et officiis odio magni. Officia porro aut sit est debitis architecto.', 'Earum aut nemo minus doloremque ratione blanditiis.', 'Consequatur dolorum nulla placeat et fuga itaque architecto. Laborum velit dicta id expedita. Dolor et at iusto repellendus.', 'Home', 'Fashion', 'https://via.placeholder.com/640x480.png/002277?text=product+ad', '441', '9109028484944', 'qui', 'quidem', 'fuchsia', 'Ondricka, Stoltenberg and Bogan', 'XL', 'Men', 'consequatur eos exercitationem', 'Hickle, Hackett and Cartwright', 'Usado', 'Et deserunt deserunt labore unde odio repellat. Fuga exercitationem et eum voluptates enim numquam. Iste ipsa eligendi suscipit vel. Explicabo minus provident cupiditate.', '25dc6ceb-6631-3c38-8bae-c20086d4cf4c', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(20, 'dicta nostrum quidem', 'SKU-8243', '387.98', '21.99', '173.34', '78.86', '488.28', '90.59', '70.14', 'variable', 0, 'visible', 'Quo voluptatem rerum et a velit ut esse. Sint et tenetur quod corrupti doloribus in. Modi qui sint reiciendis iste. Cupiditate sequi laborum ut.', 'Sit vel tempore enim dignissimos vel et expedita.', 'Unde distinctio nulla optio deleniti officiis nobis omnis. Nisi et eum totam in dolorem.', 'Clothing', 'Lifestyle', 'https://via.placeholder.com/640x480.png/0077ff?text=product+eum', '404', '8636441544371', 'quas', 'eos', 'green', 'McDermott and Sons', 'L', 'Men', 'omnis cupiditate et', 'Hyatt Ltd', 'Usado', 'Vel quia nisi non. Omnis impedit et quo aliquam ea nesciunt nisi qui. Occaecati molestias nemo inventore doloremque autem dignissimos iste. Dolorem qui nulla quae eligendi.', '62d115d1-8f04-37a0-b54d-7ce72c4f2185', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(21, 'alias possimus libero', 'SKU-4202', '29.18', '14.6', '159.5', '308.29', '504.41', '24.85', '87.95', 'variable', 1, 'visible', 'Non ratione ut inventore saepe. Non labore enim eius quis et ullam. Quidem tempore facilis delectus quibusdam. Similique et aliquid labore voluptatem quisquam.', 'Modi consectetur pariatur quae labore.', 'Ipsam aut sunt porro est doloremque autem est repellat. Et iusto voluptas architecto nemo.', 'Electronics', 'Tech', 'https://via.placeholder.com/640x480.png/000033?text=product+beatae', '191', '1096037728368', 'natus', 'perferendis', 'silver', 'Runolfsson, Jerde and Kertzmann', 'L', 'Kids', 'fugiat quos aut', 'Grimes and Sons', 'Nuevo', 'Voluptate porro ullam facere qui excepturi sequi quia. Expedita quia ut quisquam et consequuntur quo. Dolor ea officia voluptas provident magnam voluptates quia.', 'd54b0229-6755-387e-973e-ec4dfc45907b', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(22, 'modi consequatur et', 'SKU-9214', '116.15', '29.2', '244.86', '140.42', '149.52', '70.05', '10.46', 'simple', 1, 'search', 'Possimus exercitationem provident rerum sed. Ea aspernatur quidem recusandae consequatur necessitatibus aut omnis. Ut molestiae nihil blanditiis itaque qui accusantium non.', 'Et consectetur earum nesciunt deleniti quod soluta.', 'Sed in sed iure non porro voluptas. Laborum et et animi incidunt iure officiis cumque. Nesciunt nulla ut rerum.', 'Clothing', 'Tech', 'https://via.placeholder.com/640x480.png/008822?text=product+expedita', '415', '5164691581455', 'possimus', 'inventore', 'purple', 'Jast-Kiehn', 'L', 'Men', 'quo maxime quis', 'Carroll, Armstrong and Weber', 'Nuevo', 'Quo laborum molestiae vel quia neque. Ut modi earum dolores magnam facere. Laboriosam quia similique eos qui hic rerum et. Sit ut distinctio aperiam quae alias repellendus.', '28ae073e-e007-386a-beac-9299b38fd84d', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(23, 'suscipit dolores ratione', 'SKU-7118', '367.06', '8.97', '285.01', '16.22', '563.88', '71.44', '18', 'variable', 1, 'hidden', 'In labore eius quo sit voluptatum saepe inventore. At excepturi ut corrupti. Et similique autem placeat fuga suscipit repellendus. Sit laboriosam ut et deleniti doloribus.', 'Impedit et dolor quae sed dolorum accusamus.', 'Voluptas sunt placeat modi omnis. Architecto ut qui libero velit quod voluptates. Sunt et eius sunt commodi cum magni quia.', 'Clothing', 'Fashion', 'https://via.placeholder.com/640x480.png/003322?text=product+velit', '142', '1172517306551', 'exercitationem', 'illo', 'green', 'Simonis and Sons', 'XL', 'Kids', 'doloremque aut repudiandae', 'Kozey-Thiel', 'Usado', 'Delectus sed consequatur ut. Repellendus adipisci vel facilis autem molestiae eaque. Quo id facere dolorem sit vel non.', 'fe4c5ddb-55e0-3b0e-82d3-dfb717337805', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(24, 'doloremque dicta laudantium', 'SKU-1972', '415.23', '25.44', '201.42', '224.73', '63.08', '27.27', '65.66', 'simple', 0, 'visible', 'Quo quos tenetur saepe qui repellat hic repellendus. Fugiat eligendi quod officia qui ducimus. Eius in alias rerum. Recusandae quo et omnis.', 'Dolor aut velit esse excepturi itaque doloribus.', 'Minima qui enim et placeat sed tempora. Est aut consequatur est qui eos. Est dignissimos rerum voluptate laudantium. Porro unde aut est quas.', 'Home', 'Fashion', 'https://via.placeholder.com/640x480.png/00ff88?text=product+voluptatem', '412', '7001489477010', 'enim', 'est', 'aqua', 'Fritsch, Dare and Mayert', 'L', 'Men', 'eos dolore eveniet', 'Hickle-Rolfson', 'Nuevo', 'Dolores quas placeat fugiat modi. Explicabo quibusdam ut vitae autem totam iusto ex sit. Consectetur consequuntur nam ad reprehenderit asperiores.', 'ee220f2e-7f10-33db-9054-33fbcd330ca6', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(25, 'eveniet voluptas cupiditate', 'SKU-7376', '61.51', '43.42', '315.48', '74.55', '578.17', '8.29', '34.17', 'variable', 1, 'hidden', 'Quis possimus laboriosam harum non sunt cupiditate. Esse in magnam provident temporibus totam. Quis et et illo maxime architecto ipsam.', 'Qui porro explicabo assumenda nesciunt fugit.', 'Fugit dignissimos in nam necessitatibus. Facilis id dolore tenetur natus maiores. Eos sunt consequatur ex quia.', 'Sports', 'Tech', 'https://via.placeholder.com/640x480.png/00bb99?text=product+maxime', '405', '2492632684327', 'voluptatibus', 'harum', 'purple', 'Hammes Group', 'M', 'Women', 'tempora sed adipisci', 'Kuhn, Heathcote and Steuber', 'Nuevo', 'Doloremque minus fugit voluptatibus non sit delectus. Itaque maiores dignissimos deleniti velit dolorum repellendus nihil. Ab quidem consequatur a rerum.', 'f42f72de-035c-37ad-8135-c01a962b3970', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(26, 'hic nemo enim', 'SKU-0187', '304.68', '7.98', '56.31', '346.37', '437.27', '8.02', '86.38', 'simple', 1, 'visible', 'Perspiciatis vitae sunt harum nemo accusamus. Sapiente et explicabo quia totam optio sapiente. Sunt vitae iusto non saepe delectus.', 'Provident magni explicabo excepturi dolorum.', 'Ut distinctio reprehenderit perferendis ut doloribus. Culpa ut fuga nulla natus.', 'Electronics', 'Lifestyle', 'https://via.placeholder.com/640x480.png/00eedd?text=product+voluptatem', '140', '3403567781530', 'numquam', 'ratione', 'green', 'Altenwerth, Schmitt and Hegmann', 'S', 'Women', 'aperiam voluptatem laboriosam', 'Bruen-Kuhic', 'Nuevo', 'Sed repellendus ut consequuntur id eaque natus excepturi cumque. Unde blanditiis eveniet reprehenderit deleniti. Ea molestiae voluptatibus aliquam doloribus dolorem nostrum aut. Amet culpa dolorum et.', 'b61204d7-5cb8-33aa-8470-81ccc49f2135', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(27, 'quasi deleniti eos', 'SKU-9504', '136.87', '4.3', '350.44', '385.47', '396.25', '19.41', '25.85', 'variable', 1, 'search', 'Doloribus dolore impedit id dignissimos eaque nisi et. Sed possimus et necessitatibus autem tenetur nemo. Temporibus doloremque maxime sint non esse eius eveniet ex.', 'Aut laudantium corrupti inventore beatae illum voluptatem.', 'Voluptatem distinctio eos iste quod animi consectetur est. Adipisci consequatur est dolore aut. Sed sunt id inventore modi. Aut quia provident sit sunt ipsam.', 'Electronics', 'Tech', 'https://via.placeholder.com/640x480.png/009955?text=product+aut', '463', '5707798190719', 'debitis', 'minus', 'blue', 'Lind Ltd', 'XL', 'Kids', 'qui vel sit', 'Bergstrom and Sons', 'Usado', 'Et sunt aut est. Rerum in blanditiis amet ad natus officia et. Non maiores exercitationem consectetur sint eum soluta ut. Placeat ullam optio quae dolorum in corporis inventore.', '5d965eba-fd99-32be-bba8-01fbfd00e563', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(28, 'necessitatibus eius quisquam', 'SKU-5610', '216.39', '35.11', '28.92', '347.81', '593.59', '65.47', '48.09', 'simple', 1, 'visible', 'Sint et iure vel voluptas rem facere in. Pariatur aut eligendi quidem ullam recusandae iusto voluptas.', 'Iste animi in aspernatur laborum veniam sit.', 'Excepturi sint enim molestiae modi et aut. Molestiae consectetur facilis voluptatem commodi. Nostrum sit sit architecto aut rerum.', 'Clothing', 'Fashion', 'https://via.placeholder.com/640x480.png/000000?text=product+aut', '224', '8681443987695', 'voluptas', 'quas', 'blue', 'Windler-Berge', 'XL', 'Kids', 'repudiandae mollitia esse', 'Auer and Sons', 'Usado', 'Autem consectetur aut est provident aut et. Consequuntur cumque nemo expedita ipsa nobis numquam qui. Exercitationem consequatur et nostrum maiores et et. Sed commodi sunt necessitatibus illum tempora porro.', '6713adab-10db-3fd1-aca4-472976a2f2f8', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(29, 'et ea debitis', 'SKU-2502', '229.9', '49.94', '44.22', '86.55', '22.53', '55.01', '99.43', 'variable', 1, 'hidden', 'Debitis saepe minima cum. Id veniam quae et.', 'Sed odit culpa ex et possimus nulla.', 'Sed facilis quidem nihil rerum fuga. Et harum nisi dicta ut corrupti sapiente illum. Voluptatibus quo exercitationem nostrum reiciendis.', 'Home', 'Tech', 'https://via.placeholder.com/640x480.png/00aa44?text=product+sit', '484', '7887907407995', 'et', 'accusantium', 'silver', 'Kuhic, Mosciski and Collier', 'L', 'Kids', 'eos voluptatem omnis', 'Johnson, Leannon and Hartmann', 'Nuevo', 'Qui reiciendis sapiente dolores beatae eum consequuntur. Minus dolorem temporibus dolore autem fugiat a.', '5cda691a-0b69-382a-90cd-3bd889594004', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(30, 'deserunt perspiciatis vitae', 'SKU-2726', '125.48', '14.33', '84.83', '430.22', '262.77', '1.3', '81.55', 'variable', 0, 'hidden', 'Nemo et eum officiis assumenda. Sint enim ratione quia tempora iure illo tempora. Enim atque non adipisci voluptatem possimus culpa.', 'Repudiandae adipisci ratione deserunt molestias.', 'Unde in repellat deleniti ratione. Doloribus officiis nemo sint aperiam tempore voluptas sunt. Dicta corporis rem aperiam porro.', 'Electronics', 'Lifestyle', 'https://via.placeholder.com/640x480.png/002211?text=product+dolorum', '484', '0969924729230', 'consectetur', 'omnis', 'navy', 'Sipes LLC', 'M', 'Women', 'sit architecto voluptatem', 'Raynor, Welch and Auer', 'Nuevo', 'Distinctio aut ex quia blanditiis. Rerum dolore consequatur dolor in. Non beatae rerum laborum. Non alias quasi optio.', 'b60ebcc2-ca7d-3540-8e91-fe58aa81e7a6', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(31, 'harum ut inventore', 'SKU-8922', '101.22', '44', '105.68', '20.24', '102.2', '16.66', '41.09', 'variable', 1, 'visible', 'Aut qui aut commodi dolores. Ab illum ad reprehenderit aut pariatur. Ea sed sed adipisci earum maxime. Aut totam eos sint accusamus.', 'Fugiat recusandae ratione ipsum aut dolorum quaerat.', 'Rerum quos aut numquam. Delectus repudiandae repellat qui ipsum. Aperiam et necessitatibus ad culpa.', 'Home', 'Tech', 'https://via.placeholder.com/640x480.png/00bbcc?text=product+molestias', '459', '5809029169799', 'veniam', 'nesciunt', 'yellow', 'Keeling-Volkman', 'M', 'Women', 'enim asperiores omnis', 'Bashirian Ltd', 'Usado', 'Voluptas quo eum id. Error odio ipsam et commodi quos a voluptas voluptatem. Vel nemo perspiciatis tempora inventore. Molestiae repellat minus ut voluptatem voluptas officiis.', 'ab2f148e-f1e6-38e8-bffa-c67e33f69391', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(32, 'vero et vel', 'SKU-9910', '499.79', '10.77', '78.12', '29.49', '420.01', '27.07', '28.1', 'simple', 1, 'hidden', 'Eos dolor et eos necessitatibus quibusdam consequatur nam esse. Temporibus cupiditate quo tenetur id nemo dolorem. Autem rerum quidem ab asperiores veritatis omnis. Sint perspiciatis veniam optio illo.', 'Voluptas aperiam impedit amet molestias assumenda.', 'Reiciendis ut quae id iure. Modi saepe quam qui sapiente.', 'Clothing', 'Fashion', 'https://via.placeholder.com/640x480.png/00eeff?text=product+id', '225', '2005857159404', 'aspernatur', 'quae', 'lime', 'Anderson, Lynch and Jakubowski', 'L', 'Unisex', 'dolorem placeat autem', 'Breitenberg, McClure and Yundt', 'Usado', 'Rerum quas accusantium omnis maiores. Necessitatibus libero reiciendis omnis cumque ea id.', '7ffce36f-2d3e-3084-b4f9-2fde7318467d', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(33, 'sunt voluptas reiciendis', 'SKU-9799', '375.97', '41.6', '274.66', '174.32', '54.35', '83.58', '34.1', 'variable', 1, 'hidden', 'Praesentium omnis unde sed facere. Rerum error officiis voluptas in. Repellat et perspiciatis maxime dolores dolorem molestias fugit. Aliquam autem asperiores repudiandae. Similique voluptas mollitia praesentium temporibus quia.', 'Quia iste doloribus sed.', 'Dicta error tempora consequatur magnam delectus. Accusamus aliquid iusto quidem. Et soluta dolores magnam aut.', 'Electronics', 'Tech', 'https://via.placeholder.com/640x480.png/00aa22?text=product+sed', '92', '3500552530798', 'deserunt', 'dolorem', 'navy', 'Hickle PLC', 'S', 'Unisex', 'optio corporis ipsum', 'Feeney, Brown and Luettgen', 'Usado', 'Est accusantium in facilis quos rerum doloremque et accusantium. Blanditiis sed tempora id placeat repellat consequatur illo. Consequatur molestias voluptates esse veniam. Minima at ab eum fugiat.', 'dd67f25a-da8d-3fcc-9a7f-6aaa943faebb', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(34, 'incidunt aut quam', 'SKU-5042', '333.42', '41.07', '173.48', '273.23', '511.39', '4.42', '11.91', 'simple', 1, 'visible', 'Minus sequi commodi perspiciatis laudantium sequi. Unde repudiandae dolore et et qui odio. Deserunt est temporibus quae quasi omnis. Facilis tenetur voluptate officiis officia nihil sed.', 'Cum earum ab iusto consectetur.', 'Aperiam aut occaecati nam blanditiis eaque itaque itaque. Et in aut quia sint quam quidem ratione. Sed qui et maiores tempore delectus provident.', 'Clothing', 'Tech', 'https://via.placeholder.com/640x480.png/004433?text=product+autem', '252', '9372619588738', 'voluptate', 'tempora', 'blue', 'Rodriguez-Olson', 'XL', 'Unisex', 'dicta eligendi quaerat', 'Rippin, Cruickshank and Volkman', 'Usado', 'Aspernatur eveniet natus itaque minus minima vero. Amet aperiam impedit ducimus possimus. Consectetur aut earum pariatur voluptatem aperiam. Voluptatum officiis inventore in deserunt.', 'bedc311c-1068-3ef4-9959-98df2ff0381b', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(35, 'culpa qui fuga', 'SKU-2769', '82.55', '25.19', '221.93', '141.77', '586.09', '55.69', '37.64', 'simple', 1, 'visible', 'Similique rem dolorem facilis et dolorem. Voluptatem ipsam exercitationem qui fugit. Asperiores et ut quaerat non voluptatum. Nobis similique quasi eos quidem quia culpa laudantium nam.', 'Libero adipisci ullam aspernatur beatae saepe aut.', 'In dolores porro nemo consequatur. Consectetur et reprehenderit voluptatem consectetur sint. Est soluta quos quibusdam harum ea sit officia.', 'Sports', 'Lifestyle', 'https://via.placeholder.com/640x480.png/00ffee?text=product+quae', '24', '1712212229023', 'beatae', 'aliquam', 'fuchsia', 'Dooley and Sons', 'L', 'Men', 'est ea quam', 'Denesik, Kulas and Marvin', 'Nuevo', 'Incidunt est consectetur praesentium in dicta a repellendus. Aspernatur modi dolores perferendis suscipit. Esse velit non porro quod dolorem quo.', '26d21b21-b905-33aa-94b6-13739fd65c43', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(36, 'tempore voluptas et', 'SKU-6698', '397.61', '6.37', '305.18', '178.07', '171.9', '40.9', '17', 'variable', 0, 'hidden', 'Commodi distinctio repudiandae architecto dolorem non temporibus alias. Quaerat ut voluptas quae sit amet.', 'Enim repellat et cumque ea non quas.', 'Repellendus autem molestias accusantium. Rem facilis eveniet earum omnis at unde placeat. Nihil alias vero nemo voluptatem repellat sed quis.', 'Electronics', 'Lifestyle', 'https://via.placeholder.com/640x480.png/00ff88?text=product+ex', '429', '8453215398936', 'debitis', 'ut', 'green', 'Pagac and Sons', 'M', 'Kids', 'est aut accusamus', 'Cassin Ltd', 'Usado', 'Placeat minima voluptates rerum iste. Odio dolores modi ab reiciendis.', '4da36969-729e-306f-8422-7071be878d3a', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(37, 'et cupiditate et', 'SKU-3159', '93.59', '41.71', '212.18', '251.99', '561.34', '77.19', '34.85', 'variable', 1, 'visible', 'Sunt eos similique sint ut vel. A voluptas et nostrum recusandae ut. Ea ut provident corrupti quisquam rerum iste. Voluptate cumque ex sapiente libero eos minus.', 'Fuga eius repellendus facilis quaerat.', 'Ut et omnis culpa. Dolores qui corrupti id qui.', 'Electronics', 'Lifestyle', 'https://via.placeholder.com/640x480.png/00ee22?text=product+natus', '397', '2228073921567', 'sequi', 'soluta', 'black', 'Feil-Wolff', 'L', 'Unisex', 'repellendus ex tempore', 'Langosh-Baumbach', 'Nuevo', 'Dolorum corporis ab aliquid et temporibus possimus. Velit commodi velit qui repellendus reprehenderit. Saepe nesciunt omnis veniam. Officia natus quod iure sed.', '9852fb1b-2bad-3073-86de-4dff0450c0e3', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(38, 'impedit ratione et', 'SKU-2783', '251.37', '8.8', '277.92', '201.8', '302.61', '35.81', '38.62', 'simple', 1, 'hidden', 'Voluptatem nam ipsam consectetur veritatis aut nostrum maiores aliquid. Quis quos qui maxime asperiores. Est quisquam natus atque consequatur sunt.', 'Eum et voluptas autem eius rem quibusdam dolorem nemo.', 'Ea quia dignissimos provident sint a sint dolore. Velit et et minus sint. Nihil officia eaque dolores corrupti.', 'Electronics', 'Tech', 'https://via.placeholder.com/640x480.png/00ff22?text=product+quaerat', '18', '2278852668459', 'ea', 'est', 'fuchsia', 'Kessler-Jenkins', 'S', 'Women', 'corporis consequatur adipisci', 'Bartoletti, Bartoletti and Hettinger', 'Usado', 'Corrupti omnis aliquam voluptatum magnam. Repudiandae dolor voluptate et non ratione cum aut molestiae. Autem molestiae sed omnis temporibus alias magni itaque. Non qui assumenda eveniet vitae ut. In dolorum dignissimos quo aut sunt.', '22a0ea81-723e-349f-bcfe-55b7d6b39457', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(39, 'doloribus illum est', 'SKU-4412', '94.21', '19.94', '296.91', '403.93', '441.19', '92.68', '23.43', 'simple', 0, 'hidden', 'Quo et repudiandae animi incidunt asperiores voluptatum possimus. Aut ut ab et quia vel. Minima natus saepe consequatur voluptatibus et maxime porro.', 'Repellat est illum maiores.', 'Mollitia quod sint facilis sunt libero rerum sunt. Tempora deleniti ea minus quo.', 'Sports', 'Tech', 'https://via.placeholder.com/640x480.png/001122?text=product+in', '106', '0664656142134', 'pariatur', 'suscipit', 'purple', 'Schowalter, Jakubowski and Reinger', 'XL', 'Women', 'harum magnam cumque', 'Boehm, Russel and Lind', 'Usado', 'Voluptas est et beatae officia quia non inventore. Ullam omnis voluptatem iure eaque iusto et quae. Cum rerum ut aut numquam aut error.', 'b495c8c9-c67f-3fee-9de8-ebdf08bc1d0a', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(40, 'repudiandae sunt sed', 'SKU-4649', '221.95', '7.8', '113.03', '442.72', '266.77', '94.85', '15.62', 'variable', 1, 'search', 'Nihil sed qui ut optio sint aut debitis qui. Rem labore quis eum. Recusandae dolorem dolore deserunt laudantium occaecati. Ea reiciendis minus sint aliquam perferendis facere.', 'Voluptatem similique et maxime rerum quaerat non inventore odit.', 'Mollitia iure et ipsam dolor. Sed quis explicabo tempore ullam cupiditate tempore.', 'Sports', 'Lifestyle', 'https://via.placeholder.com/640x480.png/00bb55?text=product+ea', '276', '1826592830332', 'quibusdam', 'corrupti', 'yellow', 'Klocko, Miller and Auer', 'M', 'Kids', 'et libero ipsa', 'Collins, Rolfson and Schamberger', 'Nuevo', 'Ut sint non provident est occaecati tenetur quis. Voluptatem dolorem perferendis cum quo blanditiis. Nesciunt nihil quo architecto eum. Beatae cum sit sint est.', 'f4b1854e-1fd6-3e59-b0f8-b3f6e36ec272', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(41, 'accusantium rerum ab', 'SKU-7822', '87.83', '40.14', '286.4', '252.74', '388.68', '4.81', '80.24', 'simple', 1, 'hidden', 'Et aut optio sequi assumenda totam voluptas quis dolores. Voluptates quia aut voluptatem. Eum laborum voluptatem nulla impedit a. Rerum ea est accusantium non veniam.', 'Sint pariatur expedita a id.', 'Dolorum laboriosam quod assumenda maiores. Eum accusantium odit quae quisquam fugiat sapiente. Qui inventore nisi sed dolores vel quia.', 'Home', 'Tech', 'https://via.placeholder.com/640x480.png/00aa77?text=product+facere', '9', '3208019116416', 'possimus', 'eveniet', 'navy', 'McKenzie-Ebert', 'S', 'Unisex', 'et et sapiente', 'Wuckert, Smitham and Kovacek', 'Usado', 'Explicabo est harum et est autem. Quo laudantium hic illo itaque fugit ducimus. Sint odio eos et quasi delectus. Dolorem amet officiis est perspiciatis ut sequi laudantium.', '21c64c9a-dde0-355f-ad2e-fdc128cbbe04', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(42, 'alias cupiditate qui', 'SKU-2578', '499.25', '48.81', '380.57', '270.13', '38.23', '52.06', '29.98', 'simple', 1, 'visible', 'Fugit quaerat ullam sint ut molestias ex. Fugiat voluptas harum nihil esse provident. Quod rem minus ut inventore eligendi at voluptas. Odit ut dolorum magnam aut explicabo. Voluptate optio libero impedit eius beatae odit fugit cum.', 'Omnis aut ex et blanditiis tenetur.', 'Sed quaerat aut velit dolor eum error. Nesciunt sint consectetur impedit ipsa est. Similique voluptatem eligendi eligendi a suscipit aut a.', 'Electronics', 'Lifestyle', 'https://via.placeholder.com/640x480.png/0077dd?text=product+rerum', '327', '3032038184916', 'quas', 'consectetur', 'maroon', 'Raynor-Nikolaus', 'L', 'Unisex', 'quam est repellat', 'Cremin Inc', 'Nuevo', 'Molestiae autem ut eos ut rem in veniam. Et quasi assumenda temporibus aut ea cum. Sit assumenda porro soluta qui quod blanditiis.', '96618d85-09fe-32d6-9b60-b1bf86e74082', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(43, 'voluptas quis sit', 'SKU-3461', '295.7', '49.52', '185.74', '289.27', '181.64', '90.44', '88.77', 'variable', 1, 'hidden', 'Quam praesentium itaque ut omnis possimus esse. Expedita ratione laudantium voluptas voluptatem velit. Voluptatem consequatur porro id laborum autem sed soluta. Et corrupti inventore ut dolor dolorem sapiente dolores.', 'Excepturi a omnis excepturi molestiae deleniti molestiae numquam eaque.', 'Voluptatum odio beatae fugit est ut rerum sit. Possimus voluptatibus explicabo harum architecto ipsum consequatur.', 'Home', 'Fashion', 'https://via.placeholder.com/640x480.png/00aa55?text=product+ea', '301', '2459635476519', 'esse', 'nobis', 'green', 'Olson Ltd', 'XL', 'Unisex', 'sed blanditiis deserunt', 'Willms, Kozey and Gerhold', 'Nuevo', 'Placeat et aliquid porro. Et aut at molestias illo occaecati ipsa necessitatibus. Ex est a facilis. Unde et sit repellat ea culpa molestiae.', '01d450f4-6865-3430-ba49-802bfc63efda', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(44, 'voluptatibus unde ut', 'SKU-5492', '326.66', '20.76', '201.09', '430.73', '581.69', '60.52', '80.46', 'variable', 1, 'visible', 'Similique debitis cum et eos. Expedita fugit dolor hic doloremque sint. Exercitationem et eum ipsa veritatis.', 'Delectus quos nulla ut asperiores molestiae.', 'Eos aut quibusdam nisi expedita ex. Pariatur maxime numquam consequatur enim fugit molestiae fugit perferendis. Nam nisi officia tempora.', 'Electronics', 'Fashion', 'https://via.placeholder.com/640x480.png/00aa11?text=product+autem', '295', '2339467323697', 'voluptatem', 'sapiente', 'purple', 'Kohler LLC', 'XL', 'Men', 'impedit ullam consequatur', 'Rosenbaum, McLaughlin and Will', 'Usado', 'Officia sed officiis voluptatem et in illum quisquam. Voluptatem vel cupiditate delectus eum numquam magni. Quisquam repudiandae inventore quia quo optio. Similique rerum qui non rerum.', 'f0510d62-8f22-3dc2-bf0c-c7ac54d990fb', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(45, 'atque ut esse', 'SKU-7512', '452.36', '21.63', '45.6', '132.54', '26.99', '81.38', '71.43', 'simple', 1, 'visible', 'Commodi officia eos eos soluta nostrum qui. Aut quam repudiandae magni beatae blanditiis officia quam. Nam consequuntur totam illo libero magnam.', 'Ducimus deserunt provident nam excepturi minus modi.', 'Libero quia tenetur doloribus in et. Tempore modi quidem dolor. Quia aut quisquam quis nihil deserunt. Voluptatem incidunt quos ad accusamus fugit nesciunt.', 'Clothing', 'Tech', 'https://via.placeholder.com/640x480.png/00cc11?text=product+enim', '360', '2347740865659', 'placeat', 'labore', 'aqua', 'Mraz-Romaguera', 'XL', 'Women', 'ullam dolore voluptate', 'Spinka, Balistreri and Johnston', 'Nuevo', 'Aut est magnam enim odio similique sed. Dolor enim unde ratione sunt. Voluptas dolore iusto iusto maxime molestiae et blanditiis.', '6213d882-d34b-321b-8346-72e3d0e39b78', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(46, 'sint beatae placeat', 'SKU-2617', '370.19', '28.21', '201.26', '67.42', '41.66', '22.16', '86.47', 'simple', 1, 'visible', 'Pariatur ratione sit qui animi beatae possimus tempore. Ullam delectus voluptatum cupiditate dolor. Illum ullam ducimus ex eveniet non unde saepe.', 'Ad aut beatae voluptatibus non.', 'Aut officia beatae optio quia voluptas. Laudantium ipsum magnam corporis. Quos enim nostrum ex molestiae. Qui voluptates non consequuntur earum rerum libero.', 'Home', 'Lifestyle', 'https://via.placeholder.com/640x480.png/00cc44?text=product+distinctio', '210', '9183089553122', 'qui', 'ratione', 'navy', 'Jakubowski, Lind and Torp', 'XL', 'Men', 'a rerum quod', 'Schmitt Inc', 'Nuevo', 'Repudiandae a vel autem quam officia. Numquam deleniti nobis odio ab iusto ut.', 'f98047b7-3716-3ca5-9e2b-494f49deef19', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(47, 'corporis voluptates voluptates', 'SKU-1035', '290.23', '7.95', '85.51', '237.7', '115.46', '39.91', '96.12', 'simple', 1, 'hidden', 'Atque nobis nihil nisi quidem. Doloribus voluptatem et eligendi repellendus beatae. Quidem voluptatem necessitatibus autem fuga aspernatur sint reprehenderit.', 'Amet sit accusamus quia cumque qui quidem laudantium.', 'A in dolorum deserunt fugiat iure magni. Vero aliquam aut et consectetur ut non. Sunt exercitationem ad rerum enim dolor reiciendis minima.', 'Sports', 'Fashion', 'https://via.placeholder.com/640x480.png/0077ff?text=product+natus', '78', '7696915696204', 'officiis', 'atque', 'purple', 'Thompson-Kuphal', 'L', 'Women', 'inventore ipsam provident', 'Schimmel PLC', 'Nuevo', 'Id quis et culpa magni. Id quibusdam quo a omnis sapiente repellat. Beatae laboriosam consequatur quae et perferendis qui. Aperiam aut quam dolor vero.', 'aa61c40a-1ac6-3b19-8886-ce38d0f19604', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(48, 'ipsum alias et', 'SKU-5473', '94.22', '20.86', '108.62', '294.21', '30.22', '16.19', '78.23', 'simple', 0, 'search', 'Autem qui soluta voluptatem ipsam accusantium. Molestiae rerum qui voluptas est ut magni temporibus. Ratione voluptate officiis voluptatem reprehenderit quia eaque.', 'Quae praesentium autem qui libero ipsa laudantium.', 'Ratione itaque incidunt architecto fugiat et pariatur saepe. Ad dolorem ullam sunt officia. Odit deserunt rerum assumenda nemo incidunt a amet.', 'Clothing', 'Fashion', 'https://via.placeholder.com/640x480.png/0000dd?text=product+nostrum', '241', '1651402112489', 'distinctio', 'blanditiis', 'silver', 'Cronin-Rowe', 'S', 'Unisex', 'laboriosam dignissimos laudantium', 'Kutch, Moen and Stanton', 'Usado', 'Ullam excepturi aut consequatur temporibus magni. Est eligendi culpa voluptatem placeat architecto possimus. Totam veritatis aut fugit itaque dolores earum voluptatem. Ad quas nesciunt nesciunt qui quis est.', '8667c9c7-8d8f-3c86-a4a7-ca55661e68d1', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(49, 'aut aut et', 'SKU-6838', '230.47', '8.29', '185.94', '15.33', '229.64', '77.29', '42.38', 'variable', 1, 'search', 'Quas odio quia quasi corporis. Praesentium voluptas recusandae sunt occaecati in aut. Ducimus at omnis perspiciatis natus.', 'Reiciendis ut nemo provident nesciunt soluta eum sed.', 'Quis perspiciatis ratione facilis. Eum dolores quod nobis. Autem officiis modi eaque ad.', 'Home', 'Fashion', 'https://via.placeholder.com/640x480.png/007799?text=product+dicta', '247', '2106984632522', 'vel', 'non', 'maroon', 'Cole, Kuhic and Feil', 'L', 'Kids', 'cum suscipit reiciendis', 'Smith-Schultz', 'Usado', 'Velit ipsa unde maiores quis aspernatur. Ipsam exercitationem quae qui. Cupiditate fugit explicabo laborum necessitatibus quis maiores quasi ipsum. Nulla id voluptates eum totam libero hic.', 'fff1d43e-f406-31ff-9281-0285aff3489a', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(50, 'consequatur adipisci porro', 'SKU-9124', '155.57', '3.16', '209.71', '100.96', '254.71', '84.19', '67.82', 'variable', 1, 'visible', 'Unde id hic amet nihil vel molestiae. Esse sequi labore occaecati non est. Nam esse consequuntur error alias.', 'Odit dolores illo tempora maiores excepturi culpa quibusdam.', 'Tempora ipsum dolore beatae voluptatem voluptatum. Unde aut corrupti sunt quas modi facere id.', 'Home', 'Tech', 'https://via.placeholder.com/640x480.png/00dd44?text=product+voluptatem', '484', '6050082255298', 'non', 'quibusdam', 'silver', 'Ullrich PLC', 'M', 'Kids', 'excepturi laboriosam quos', 'Wunsch, Weissnat and Buckridge', 'Nuevo', 'Qui excepturi cupiditate quaerat quia quas esse. Et beatae fuga iure labore. Voluptate sint sapiente sit consequatur laboriosam. Dolor beatae culpa provident incidunt repellat.', 'ad1b47bc-553f-34f0-8830-25ff423fec65', NULL, NULL, NULL, NULL, '2025-08-16 06:59:11', '2025-08-16 06:59:11');

-- --------------------------------------------------------

--
-- Table structure for table `rfid_scan_logs`
--

CREATE TABLE `rfid_scan_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rfid_code` varchar(255) DEFAULT NULL,
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
(1, '0a712b19-5a42-3854-a1c1-598977b0e8de', 13, 'check-out', 'RFID Reader', '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(2, '28ae073e-e007-386a-beac-9299b38fd84d', 22, 'check-out', 'Mobile App', '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(3, 'aa61c40a-1ac6-3b19-8886-ce38d0f19604', 47, 'check-out', 'Admin Panel', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(4, '6713adab-10db-3fd1-aca4-472976a2f2f8', 28, 'inventory', 'Mobile App', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(5, '6713adab-10db-3fd1-aca4-472976a2f2f8', 28, 'check-out', 'Admin Panel', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(6, 'dd67f25a-da8d-3fcc-9a7f-6aaa943faebb', 33, 'inventory', 'RFID Reader', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(7, 'd7fa0b41-4a9e-3cdb-aa99-bc7c349e0144', 11, 'inventory', 'Admin Panel', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(8, '26d21b21-b905-33aa-94b6-13739fd65c43', 35, 'inventory', 'RFID Reader', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(9, '9852fb1b-2bad-3073-86de-4dff0450c0e3', 37, 'check-out', 'Admin Panel', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(10, 'fe4c5ddb-55e0-3b0e-82d3-dfb717337805', 23, 'check-in', 'Admin Panel', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(11, '62d115d1-8f04-37a0-b54d-7ce72c4f2185', 20, 'check-out', 'Mobile App', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(12, '05e4e033-3d57-32c3-876e-42477e591332', 12, 'inventory', 'Admin Panel', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(13, '1c9ec447-7228-3883-83b6-c7eb283c86af', 2, 'inventory', 'RFID Reader', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(14, '26d21b21-b905-33aa-94b6-13739fd65c43', 35, 'inventory', 'RFID Reader', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(15, 'c5aac81a-5f03-3fe9-94b0-f7cd135e0c9d', 3, 'check-out', 'RFID Reader', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(16, '224f5500-bda8-3acd-bc7a-49d0f983cf2c', 10, 'check-in', 'RFID Reader', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(17, 'fe4c5ddb-55e0-3b0e-82d3-dfb717337805', 23, 'check-in', 'Mobile App', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(18, '29ae11e3-6297-312c-ab37-7f8504b44aac', 6, 'check-out', 'Mobile App', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(19, '4da36969-729e-306f-8422-7071be878d3a', 36, 'check-in', 'Mobile App', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(20, '96618d85-09fe-32d6-9b60-b1bf86e74082', 42, 'inventory', 'Admin Panel', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(21, '26d21b21-b905-33aa-94b6-13739fd65c43', 35, 'check-out', 'Mobile App', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(22, '1c9ec447-7228-3883-83b6-c7eb283c86af', 2, 'check-in', 'Mobile App', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(23, '224f5500-bda8-3acd-bc7a-49d0f983cf2c', 10, 'check-out', 'Mobile App', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(24, 'fa296454-4a13-38ea-bcb3-93017dec87a8', 9, 'check-out', 'RFID Reader', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(25, '22a0ea81-723e-349f-bcfe-55b7d6b39457', 38, 'check-out', 'Admin Panel', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(26, '3f628393-afe9-304b-86e1-f59b382fe2be', 16, 'check-out', 'RFID Reader', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(27, '1680e4b8-c81e-32ab-be91-c62758242769', 17, 'check-out', 'RFID Reader', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(28, 'd54b0229-6755-387e-973e-ec4dfc45907b', 21, 'check-in', 'Mobile App', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(29, '01d450f4-6865-3430-ba49-802bfc63efda', 43, 'check-in', 'RFID Reader', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(30, '0a712b19-5a42-3854-a1c1-598977b0e8de', 13, 'inventory', 'Mobile App', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(31, 'aa61c40a-1ac6-3b19-8886-ce38d0f19604', 47, 'check-in', 'RFID Reader', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(32, 'b5450acd-e943-3454-b7a4-b9e61a16e465', 5, 'inventory', 'Mobile App', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(33, '6713adab-10db-3fd1-aca4-472976a2f2f8', 28, 'inventory', 'Mobile App', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(34, 'c5aac81a-5f03-3fe9-94b0-f7cd135e0c9d', 3, 'inventory', 'RFID Reader', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(35, '1680e4b8-c81e-32ab-be91-c62758242769', 17, 'check-in', 'RFID Reader', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(36, '5cc71e1c-d015-3f66-958d-9474df87f0a6', 8, 'check-out', 'Admin Panel', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(37, '22a0ea81-723e-349f-bcfe-55b7d6b39457', 38, 'check-in', 'RFID Reader', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(38, 'ad1b47bc-553f-34f0-8830-25ff423fec65', 50, 'check-in', 'Mobile App', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(39, 'b60ebcc2-ca7d-3540-8e91-fe58aa81e7a6', 30, 'check-in', 'RFID Reader', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(40, '2ab839ad-68d2-3008-aa61-40dcd02e625d', 15, 'inventory', 'Admin Panel', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(41, 'd7fa0b41-4a9e-3cdb-aa99-bc7c349e0144', 11, 'check-in', 'Admin Panel', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(42, 'd54b0229-6755-387e-973e-ec4dfc45907b', 21, 'inventory', 'Admin Panel', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(43, 'fff1d43e-f406-31ff-9281-0285aff3489a', 49, 'check-out', 'Admin Panel', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(44, '5cc71e1c-d015-3f66-958d-9474df87f0a6', 8, 'check-out', 'Admin Panel', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(45, 'd54b0229-6755-387e-973e-ec4dfc45907b', 21, 'check-in', 'RFID Reader', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(46, '29ae11e3-6297-312c-ab37-7f8504b44aac', 6, 'check-in', 'Mobile App', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(47, 'f98047b7-3716-3ca5-9e2b-494f49deef19', 46, 'inventory', 'Admin Panel', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(48, '26d21b21-b905-33aa-94b6-13739fd65c43', 35, 'check-in', 'Mobile App', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(49, 'ad1b47bc-553f-34f0-8830-25ff423fec65', 50, 'check-out', 'Admin Panel', '2025-08-16 06:59:12', '2025-08-16 06:59:12'),
(50, 'fdc75506-4774-3cac-a4ac-dee0cd44df91', 4, 'inventory', 'RFID Reader', '2025-08-16 06:59:12', '2025-08-16 06:59:12');

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
(1, 'Aliyah Jast Jr.', 'abelardo.jakubowski@example.net', '+19802851936', 'Mante LLC', '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(2, 'Ola Botsford', 'willis.von@example.net', '(440) 349-5136', 'Strosin, Runte and Batz', '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(3, 'Lukas Murphy', 'paucek.emmie@example.net', '(331) 454-6000', 'Stiedemann-Johnston', '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(4, 'Augustus Heidenreich', 'anahi22@example.net', '847.918.0331', 'Bradtke Group', '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(5, 'Leopold Terry', 'tyreek.gibson@example.org', '210.905.0764', 'Bartell Inc', '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(6, 'Miss Rachel Rice', 'fkovacek@example.com', '779-738-1674', 'Bradtke, McGlynn and Stiedemann', '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(7, 'Prof. Eliezer Hudson Jr.', 'urutherford@example.org', '(239) 784-7126', 'McKenzie, Lindgren and Green', '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(8, 'Ms. Makenzie Schuster DVM', 'jerde.kyle@example.org', '+1.845.871.2972', 'Rath Ltd', '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(9, 'Stefan Stark', 'rice.brandy@example.org', '1-925-214-3048', 'Lockman-Hamill', '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(10, 'Dianna Roob', 'osinski.spencer@example.com', '+1.248.494.3984', 'Swaniawski-Bosco', '2025-08-16 06:59:11', '2025-08-16 06:59:11');

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
(1, 'Admin', 'admin@gmail.com', '2025-08-16 06:59:09', '$2y$12$3ZdhVByY6TGlWUwFQ2Z3rO4n/Hig9ZD3.jRou5mOsYs6C3olIuKIq', '1j6W6IYNQp', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(2, 'Mr. Dock Pacocha', 'abdullah24@example.org', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'irp3nFnCiQ', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(3, 'Sebastian Yost', 'shad.skiles@example.net', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'Gj3gZ3FVWs', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(4, 'Miss Rosella Boyle', 'alfredo66@example.com', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', '6CR3AQ0mE3', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(5, 'Ms. Ettie Rohan MD', 'clint15@example.com', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'LEMzU1B11H', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(6, 'Dr. Christa Kuhlman', 'maegan.glover@example.org', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'wUWKyrS9CD', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(7, 'Dr. Charlie Tillman', 'obogan@example.net', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'MSuGKfRqra', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(8, 'Martin Mueller', 'ukozey@example.org', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'iB9nCKOuZW', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(9, 'Mr. Buck Kertzmann', 'charity.bergstrom@example.net', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'DShkjU3kAH', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(10, 'Dr. Augustus Carroll', 'heaney.dulce@example.net', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', '9UU6JEHaCw', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(11, 'Troy Schoen', 'miller.hans@example.com', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'pPb9hyhEQb', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(12, 'Yvette Jakubowski', 'erdman.floyd@example.org', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'K5C4W2WwaL', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(13, 'Lillie Kihn', 'trey.kreiger@example.org', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'vXCKdDC3Zd', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(14, 'Mr. Israel Glover PhD', 'ycrist@example.com', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'ga9P7bJS2r', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(15, 'Prof. Fannie Marks', 'vkeebler@example.com', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'cNFINTuF31', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(16, 'Cristal Haley II', 'shodkiewicz@example.org', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'aNv9JqALpS', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(17, 'Kristina Jacobi II', 'anne79@example.org', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'ROplX2icBK', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(18, 'Roel Gottlieb', 'blanda.jamal@example.com', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'C00CqTspjh', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(19, 'Elinore Cruickshank', 'christiansen.zachariah@example.com', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', '825izmvGx6', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(20, 'Mr. Mortimer Crooks V', 'katharina.koepp@example.net', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'cicnDBsxwL', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(21, 'Kirstin McGlynn', 'schuppe.callie@example.org', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'mEs0WUJsvx', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(22, 'Hobart Hahn Sr.', 'vskiles@example.org', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'MT59lU32NO', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(23, 'Oleta Kovacek', 'ojenkins@example.com', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'wBIyddAWoD', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(24, 'Rose Orn', 'hoppe.jaiden@example.com', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', '1gaEry0qSl', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(25, 'Sammy O\'Reilly', 'burdette.larkin@example.net', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', '7jYJH2zscI', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(26, 'Logan Wintheiser IV', 'savannah07@example.net', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'F37s34o4h3', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(27, 'May Hartmann V', 'sierra34@example.org', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'qRtZXOFbDl', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(28, 'Rafael Von', 'white.marjorie@example.com', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'mHfKir8W0O', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(29, 'Elvie Champlin', 'evie56@example.org', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', '1UOzaqxB9B', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(30, 'Yasmin Nitzsche', 'cleta72@example.com', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', '29FeEHrCwY', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(31, 'Keely Pagac', 'kareem55@example.net', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'W6os1xDPHs', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(32, 'Zakary Rice', 'isipes@example.org', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'uq7xHjVQNB', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(33, 'Dewitt Beer', 'deckow.felicity@example.net', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'KQS6ivx3BX', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(34, 'Elisa Witting I', 'brady77@example.net', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'Vmhc6CBCdv', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(35, 'Icie Grimes', 'lmarvin@example.org', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'bmhOQmscqf', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(36, 'Unique Cummings', 'olson.erick@example.org', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'dbBfLUKGhf', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(37, 'Juliana Bradtke', 'kirk70@example.org', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'xUqNAyh70N', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(38, 'Carli Schumm', 'waldo72@example.org', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'aRf03pTtU9', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(39, 'Margarett Swift Jr.', 'bwill@example.net', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'UCRjmwOrXG', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(40, 'Florence Grady', 'colin53@example.net', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', '2C7prFFusJ', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(41, 'Laron Sipes I', 'maxine.cummings@example.com', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'xPWO4sd0uE', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(42, 'Ms. Pearlie Okuneva I', 'stamm.columbus@example.com', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'nuCTLDk37s', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(43, 'Belle Romaguera', 'sterry@example.org', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'RJC9ya1VaX', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(44, 'Louisa Dickens', 'myriam30@example.net', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', '7FG6RqUjXX', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(45, 'Carolanne Robel Jr.', 'orn.joy@example.org', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'GzfcYMCZKb', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(46, 'Kamryn Watsica', 'melody.abbott@example.org', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', '4QwgZSfb24', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(47, 'Adolphus Mitchell', 'bradtke.cedrick@example.net', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', '1qd5oGuV4l', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(48, 'Andreanne Murphy', 'fnikolaus@example.org', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'uRewJHvw7Z', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(49, 'Maudie Nader DVM', 'nelda05@example.com', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'rYOwfh5xCP', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(50, 'Mr. Brooks Mraz Jr.', 'schuppe.giovani@example.com', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', 'PQj0X0CHPq', '2025-08-16 06:59:10', '2025-08-16 06:59:10'),
(51, 'Astrid Zieme', 'dorn@example.com', '2025-08-16 06:59:10', '$2y$12$P6gm/7A65T/N211rpOdgZ.IrqRs.sWG4W6zXiqVoFWIh3QL/D0gae', '3hP9mG4gdi', '2025-08-16 06:59:10', '2025-08-16 06:59:10');

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
(1, 'A10', 'Shelf 2', 'Bin 9', '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(2, 'A9', 'Shelf 4', 'Bin 5', '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(3, 'A2', 'Shelf 1', 'Bin 8', '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(4, 'A8', 'Shelf 5', 'Bin 6', '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(5, 'A6', 'Shelf 5', 'Bin 13', '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(6, 'A3', 'Shelf 5', 'Bin 10', '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(7, 'A8', 'Shelf 2', 'Bin 4', '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(8, 'A4', 'Shelf 4', 'Bin 9', '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(9, 'A9', 'Shelf 4', 'Bin 7', '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(10, 'A3', 'Shelf 5', 'Bin 6', '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(11, 'A6', 'Shelf 5', 'Bin 10', '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(12, 'A5', 'Shelf 1', 'Bin 2', '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(13, 'A7', 'Shelf 2', 'Bin 4', '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(14, 'A7', 'Shelf 2', 'Bin 12', '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(15, 'A10', 'Shelf 1', 'Bin 5', '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(16, 'A10', 'Shelf 5', 'Bin 3', '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(17, 'A2', 'Shelf 5', 'Bin 19', '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(18, 'A5', 'Shelf 1', 'Bin 15', '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(19, 'A2', 'Shelf 1', 'Bin 8', '2025-08-16 06:59:11', '2025-08-16 06:59:11'),
(20, 'A6', 'Shelf 3', 'Bin 8', '2025-08-16 06:59:11', '2025-08-16 06:59:11');

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
-- Indexes for table `exports`
--
ALTER TABLE `exports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exports_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_import_rows`
--
ALTER TABLE `failed_import_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `failed_import_rows_import_id_foreign` (`import_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `imports_user_id_foreign` (`user_id`);

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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `exports`
--
ALTER TABLE `exports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_import_rows`
--
ALTER TABLE `failed_import_rows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imports`
--
ALTER TABLE `imports`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `warehouse_locations`
--
ALTER TABLE `warehouse_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `exports`
--
ALTER TABLE `exports`
  ADD CONSTRAINT `exports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `failed_import_rows`
--
ALTER TABLE `failed_import_rows`
  ADD CONSTRAINT `failed_import_rows_import_id_foreign` FOREIGN KEY (`import_id`) REFERENCES `imports` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `imports`
--
ALTER TABLE `imports`
  ADD CONSTRAINT `imports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_warehouse_location_id_foreign` FOREIGN KEY (`warehouse_location_id`) REFERENCES `warehouse_locations` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `rfid_scan_logs`
--
ALTER TABLE `rfid_scan_logs`
  ADD CONSTRAINT `rfid_scan_logs_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
