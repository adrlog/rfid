-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2025 at 10:44 PM
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
(1, 'Hills-Mraz', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(2, 'Terry Ltd', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(3, 'Herzog-Gorczany', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(4, 'Watsica Inc', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(5, 'Jones, Gleason and Jaskolski', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(6, 'Kshlerin Group', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(7, 'Price-Klocko', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(8, 'Conroy, Metz and Johnson', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(9, 'Morar, Fay and Wolf', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(10, 'Murazik-Dietrich', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(11, 'Koelpin LLC', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(12, 'Olson-Mosciski', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(13, 'Mayert, Stiedemann and Renner', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(14, 'Daugherty Inc', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(15, 'Wisoky Ltd', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(16, 'Reilly LLC', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(17, 'Powlowski-Kling', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(18, 'Jast, Mann and D\'Amore', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(19, 'Kling and Sons', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(20, 'Bahringer-Bernhard', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(21, 'Zulauf-Gaylord', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(22, 'Lebsack-Conroy', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(23, 'Carter-Wintheiser', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(24, 'Zulauf and Sons', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(25, 'Waelchi-Gulgowski', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(26, 'Kris-Dooley', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(27, 'Langosh, Beier and Zemlak', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(28, 'Botsford-Dicki', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(29, 'Hansen and Sons', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(30, 'Dach, Hudson and Hamill', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(31, 'Reichert-Nikolaus', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(32, 'Kertzmann-Bernier', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(33, 'Herman, Heller and Schmidt', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(34, 'Toy-Kuhlman', NULL, '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(35, 'Auer, Satterfield and Howe', NULL, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(36, 'Bashirian, Ankunding and McLaughlin', NULL, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(37, 'Breitenberg, Fahey and Pollich', NULL, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(38, 'Graham, Runolfsson and Pollich', NULL, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(39, 'Robel-Gorczany', NULL, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(40, 'Klein Group', NULL, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(41, 'Monahan, Effertz and Weber', NULL, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(42, 'Zemlak-Wisoky', NULL, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(43, 'Kertzmann, Ebert and Wyman', NULL, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(44, 'Dibbert-Shields', NULL, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(45, 'Parisian, Gaylord and Schumm', NULL, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(46, 'Anderson Group', NULL, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(47, 'Hermann-Wyman', NULL, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(48, 'Goldner, Macejkovic and Kovacek', NULL, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(49, 'Jenkins-Dibbert', NULL, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(50, 'Macejkovic Ltd', NULL, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(51, 'Collier, Jacobs and Connelly', NULL, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(52, 'Baumbach PLC', NULL, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(53, 'Corwin, Pacocha and Schuppe', NULL, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(54, 'Goyette Group', NULL, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(55, 'Mraz, Brekke and Hahn', NULL, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(56, 'King and Sons', NULL, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(57, 'Parker and Sons', NULL, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(58, 'Casper, Wisoky and Hettinger', NULL, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(59, 'Effertz, Bradtke and Willms', NULL, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(60, 'Rippin LLC', NULL, '2025-05-07 12:42:04', '2025-05-07 12:42:04');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('rfid_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1746650599),
('rfid_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1746650599;', 1746650599);

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
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `logo`, `description`, `created_at`, `updated_at`) VALUES
(1, 'cum cum repudiandae', NULL, 'Unde aliquid nam laboriosam quas temporibus dolore est accusantium. Dolor aliquam nihil saepe nam ut enim soluta. Quo non numquam beatae autem. Magnam mollitia possimus voluptates exercitationem.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(2, 'placeat', NULL, 'Qui quo aut sint consectetur beatae sunt aut. Ullam quia rem vitae.\n\nAccusamus ut rerum esse illo et minus. Nihil numquam ut ducimus distinctio. Et nisi aut dolor veritatis.\n\nCupiditate dolor consequatur repellat quia tempore est iste ducimus. Sit dolor laborum inventore porro velit. Ut sunt voluptates eos consectetur blanditiis expedita incidunt illum.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(3, 'adipisci qui', NULL, 'Quo velit maiores expedita quidem non facilis. Sit sed perspiciatis omnis ut.\n\nVoluptate sequi aut non. Sequi ab molestias odit porro iste. Et corporis dolores in culpa sapiente omnis in.\n\nEst dolorum assumenda amet ab quo consectetur. Et et qui eveniet placeat.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(4, 'similique quos voluptas', NULL, 'Consequatur est tempore itaque quisquam praesentium omnis reiciendis. Dolor dolor et et exercitationem fugit atque. Ad tempora officiis rerum ratione dignissimos vitae.\n\nDucimus ipsa sint iusto nemo voluptatem et tempora. Rerum necessitatibus repellat dolores distinctio magni quaerat deleniti. Cumque cumque et ea distinctio. Reprehenderit natus perferendis dolor dicta eos qui non.\n\nEum modi doloremque atque sit commodi aliquam qui. Laudantium rerum eligendi maxime quod. Amet sit laborum accusamus non doloribus voluptate. Velit quia est dicta ea tenetur.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(5, 'aut dignissimos', NULL, 'Eius recusandae qui optio non eum similique omnis. Quis at saepe ullam distinctio ut quos. Neque sit voluptatum natus molestiae. Blanditiis quam at commodi quis.\n\nQuis amet incidunt iste asperiores. Non dicta et eveniet eos.\n\nNemo mollitia cupiditate aspernatur sunt eum consequuntur. Labore sed sunt quod et ipsam.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(6, 'et qui', NULL, 'Aliquid animi sed earum. Officiis consectetur perferendis aperiam quis molestiae eligendi. Nulla autem dolorem quae in. Quis asperiores et non odit laboriosam magnam. Aut deserunt quae nemo quam quam qui fugit aut.\n\nEa dolore quisquam et natus. Consequatur ratione ut eligendi porro minima quibusdam.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(7, 'laboriosam', NULL, 'Quod qui numquam quibusdam adipisci nisi corrupti quia. Laudantium vitae non necessitatibus. Maxime eligendi aut quod explicabo id omnis mollitia natus.\n\nAutem eos quae deleniti minus aliquam incidunt soluta. Necessitatibus eos necessitatibus harum magnam vitae. Dignissimos qui voluptatem atque suscipit nesciunt autem sunt alias. Aut accusantium et aspernatur voluptates nam nihil.\n\nEst omnis recusandae ullam error. Molestiae enim est dignissimos qui et voluptate dolore.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(8, 'ut necessitatibus voluptatem', NULL, 'Est animi architecto voluptatem vero. Est praesentium quis maiores delectus hic omnis. Odit et dicta molestiae cum.\n\nAtque qui quo adipisci iste sit voluptatem molestias. Molestiae consequatur voluptates ipsa dignissimos officiis.\n\nLaborum qui enim et ad eos in ut. Cumque placeat facilis a accusamus. Consequatur accusantium dolorem voluptatem quas distinctio.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(9, 'id cupiditate', NULL, 'Doloremque ratione tenetur eveniet quis quod nulla ut quas. Maiores voluptatem fugiat sint est deleniti. Consequatur tempora sed sed sequi.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(10, 'libero fugiat eos', NULL, 'Ad dolores dolore molestiae. Praesentium quia quaerat amet. Molestiae cumque inventore perferendis architecto. Similique officiis occaecati soluta reprehenderit aliquam id voluptas.\n\nEt et cumque cum asperiores. Animi possimus laudantium occaecati quas natus nihil. Iusto repellat necessitatibus hic aut consequuntur qui sit. Est sit rerum id eaque voluptatibus. Dicta quibusdam est eum aut quisquam facere aliquid.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(11, 'recusandae modi', NULL, 'Id temporibus modi inventore totam. Nam incidunt dignissimos molestiae.\n\nVelit sapiente temporibus eos ut. Quaerat eum quam veritatis laborum. Consectetur aut cum porro earum quasi qui. Voluptas et ipsum maxime incidunt dolorem.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(12, 'omnis amet at', NULL, 'Fugiat vel earum asperiores earum tenetur corrupti porro. Vitae sit sapiente eveniet sit aut. Aspernatur beatae cupiditate ratione quisquam. Harum sit placeat et doloremque quo.\n\nEt neque quia sit quo aliquam accusantium blanditiis. Aliquam consequatur ratione occaecati et tempora saepe. Quos praesentium aut ut soluta dignissimos animi nesciunt rerum.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(13, 'a adipisci', NULL, 'Molestiae ex provident occaecati saepe provident in in. Est est quo ut sapiente facere. Sit iste nulla maiores sit.\n\nQui iste itaque quos nulla ipsa qui. Et voluptate saepe nam minima itaque. Omnis laudantium perspiciatis numquam. Recusandae facilis sunt recusandae sunt.\n\nQui sapiente reprehenderit consequatur. Pariatur ut ipsam ut provident. Reprehenderit dolor eos quis debitis assumenda iste cum. Vero quisquam quasi delectus veniam.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(14, 'consectetur voluptatem', NULL, 'Dignissimos velit aliquam cupiditate sint aspernatur. Quibusdam ut et fugit eum et blanditiis. Enim cupiditate omnis non explicabo. Dicta ut asperiores aut optio et eaque eos.\n\nMolestias voluptatibus odit et perferendis. Veritatis quis blanditiis voluptas laboriosam qui. Ipsa nisi consequatur maxime sed.\n\nDolor et id ut voluptas culpa aut. Commodi recusandae nulla animi doloremque placeat. Autem et nemo sint voluptatem.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(15, 'rem corporis', NULL, 'Ipsam quia voluptates minima blanditiis in. Aut alias ullam exercitationem voluptas aliquid. Natus autem dolore sequi consequatur. Unde iste dolorem est et eum.\n\nIpsam error numquam cumque aut ex. Ut reprehenderit et commodi temporibus aut. Corporis praesentium atque nihil fugiat.\n\nOmnis illo illum ea ut molestiae molestiae. Ab eum et impedit deleniti quos.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(16, 'minima', NULL, 'Omnis qui fugiat sunt ad. Rerum iure eos nam aut excepturi. Iusto vel dolorem sit accusamus totam ab. Doloribus laboriosam nemo in quas et sit et numquam.\n\nCommodi vitae laboriosam non doloribus quisquam fugit nobis vitae. Expedita nobis dolor possimus totam aperiam ullam.\n\nNemo autem nobis sunt est illum sunt qui non. Eos qui eos deleniti consequatur. Vero nobis sint illo fuga possimus dignissimos. Non voluptatem et quo nulla.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(17, 'molestiae et', NULL, 'Ipsa voluptatum explicabo doloribus asperiores aliquid sunt in. A autem enim beatae vel qui. Repellendus sit molestias necessitatibus consequatur quo sequi ea suscipit. Quos vitae laudantium et eos aut animi. Nihil molestias aut ipsa suscipit et.\n\nLaudantium odio reprehenderit aperiam porro amet. Error sit molestiae ut eos voluptatibus. Enim consequatur ut in vero alias distinctio voluptate. Soluta quod nam fugiat voluptatem recusandae excepturi.\n\nEum et illum aut aut eaque in numquam et. Nulla quo illo mollitia repellat voluptates. Ea quis quia molestiae id itaque cupiditate.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(18, 'dolores animi', NULL, 'Et et odio dicta voluptatem. Eveniet incidunt hic est nihil voluptatum. Eligendi sint rerum at officia aut. Molestiae autem quia nisi nobis ut.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(19, 'quae beatae', NULL, 'Suscipit assumenda deleniti totam asperiores vel quia dignissimos pariatur. Omnis ratione eligendi qui minus qui et laboriosam. Ut quia veritatis aliquam laboriosam et exercitationem omnis. Doloribus qui voluptatem ipsam maxime eum veniam quibusdam. Id eius corporis quo incidunt aut.\n\nEum porro facere et similique voluptatem consequuntur. Labore voluptates illo molestias fuga. Explicabo deleniti quia aut rerum molestiae omnis. Rerum quia blanditiis maxime ab et.\n\nEst qui dolores quam et animi eos eos. Odit explicabo assumenda facilis nobis ullam delectus mollitia. Voluptas ut qui debitis facilis sed est in. Quisquam occaecati reprehenderit perspiciatis et velit ab saepe.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(20, 'unde et', NULL, 'Inventore fugiat tempore libero quasi et qui qui. In iste voluptates quos dolores fugit. Aut doloribus culpa tempora maxime corrupti quas dolorem. Commodi fuga quidem odio eos laudantium.\n\nEnim consectetur delectus rerum quia eos vero. Et ut quasi eius cupiditate. Reiciendis sit ab quia ut perferendis. Dolores quos placeat necessitatibus voluptas a voluptatem.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(21, 'autem et', NULL, 'Minima quia sunt alias molestiae consequatur aperiam. Beatae aliquam quas id officiis accusamus. Commodi quia eveniet nesciunt ut voluptate.\n\nNon mollitia ab voluptatibus ipsam dolorem officia aut. Et porro a fugiat voluptates fugiat qui unde. Quis iusto quos consequatur eos animi veniam laboriosam itaque. Nihil dicta facere ut nihil saepe inventore quas.\n\nInventore recusandae ipsam nam veniam impedit. Voluptatem sed nostrum et quis voluptatem voluptate facilis ab. Vel esse eum aut rerum sint dolores voluptas voluptates.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(22, 'quia', NULL, 'Neque ut necessitatibus eligendi est quis aut hic. Rerum sint vel excepturi labore possimus. Mollitia et laudantium velit ipsa sint neque corporis consequatur.\n\nMolestias et quidem dolores omnis sunt. Doloremque tenetur dolore cumque. Aut animi dolores aut officiis nihil.\n\nId dolor et explicabo in voluptatem impedit delectus. Ea sit aut enim et nostrum deserunt. Rerum natus illum aut voluptas aut. Velit quis natus eius aut.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(23, 'non molestias omnis', NULL, 'Reiciendis quia dolorem dolorem inventore aliquid autem aut. Ut quo nobis ratione quod sit impedit. Eos aspernatur distinctio eligendi recusandae alias dolor. Fugit enim consequatur nemo ullam molestiae et. Praesentium incidunt tempora veritatis minus corrupti aut.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(24, 'nostrum inventore', NULL, 'Non aut quia esse neque. Ut minus ut et ut. Ut nemo hic iure quia cupiditate.\n\nSed enim fuga qui ut. Repellat libero eligendi ut ut exercitationem. Aliquam quia animi placeat ea.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(25, 'quasi', NULL, 'Sed autem dolores delectus in qui earum. Possimus dolorem id ut at libero. Accusamus dicta odio eveniet distinctio iure nam. Atque autem vero aliquid et aspernatur architecto porro repellat.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(26, 'sint maiores quasi', NULL, 'Consectetur qui nobis molestiae eius. Sapiente ut sit eligendi. Asperiores cum non occaecati ut.\n\nVoluptatem amet omnis animi nesciunt. Non eveniet qui dolorem quidem. Et fugiat blanditiis et excepturi.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(27, 'autem rem dolorum', NULL, 'Animi distinctio eveniet rerum aut. Facere consequatur quia quas et id ea et. Nihil laborum accusantium sit aperiam sit excepturi maxime. Tempora et incidunt dolorum error. Ullam eos unde consequatur commodi deleniti est.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(28, 'nihil aut omnis', NULL, 'Architecto beatae quia autem ut. Ipsa velit hic itaque quis dolorem animi.\n\nNon soluta velit nostrum. Aut quis sapiente ab commodi. Nemo aperiam non itaque molestiae dolorum officiis. Ratione vitae nobis at est soluta.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(29, 'neque culpa', NULL, 'Adipisci aperiam eos sit omnis temporibus. Vero temporibus aut necessitatibus rerum cumque harum rem blanditiis. Omnis tempora quia soluta quam aliquam itaque aut quidem.\n\nMollitia quidem ad saepe atque. Laboriosam corporis sed aliquid consequatur facere velit. Itaque dolores cum aliquam quis architecto.\n\nMolestias sapiente quia recusandae rerum occaecati quasi aut aliquid. Omnis magni nulla quae qui aliquid tempore esse. Fugiat modi quia iste autem magnam et.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(30, 'ea qui libero', NULL, 'Adipisci cupiditate quas dolor assumenda et. Iusto aut quisquam harum assumenda consectetur sint. Tempora vero aut non eligendi similique. Itaque a commodi dignissimos et sit ut.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(31, 'quas magni', NULL, 'Nemo non voluptatem qui officiis ipsam ut. Dolorem deleniti ab suscipit neque provident. Aut velit et et modi et doloribus magni.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(32, 'eum eaque sit', NULL, 'Rem illo molestiae unde aut et autem esse. Deleniti non labore aut voluptas natus harum. Nihil soluta id illo ipsa unde debitis assumenda. In eius reiciendis modi repellendus mollitia.\n\nAmet autem id quos blanditiis. Et et et quia commodi dolores architecto unde architecto. Repellendus qui ut voluptas velit quo temporibus repudiandae inventore.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(33, 'voluptatibus ut', NULL, 'Quo qui velit unde consequatur est blanditiis. Ipsa aut illum ab facilis ea. Laborum hic labore rerum et ea minima deleniti.\n\nQui voluptatem ea vel assumenda. Autem quaerat necessitatibus in esse eos.\n\nUt consequatur ullam quis in et iusto. Porro molestiae ratione consequatur. Et architecto sit et et fugiat. Consequatur recusandae ut amet.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(34, 'quo dolores et', NULL, 'At eum ea quos dolores maxime qui est. Officia quia veniam aspernatur. Nostrum earum non quibusdam ut cupiditate et aut.\n\nCommodi doloribus unde vel necessitatibus excepturi magnam. Accusantium necessitatibus quia est velit id. Ratione eligendi aut excepturi ut provident reiciendis delectus. Et iste quo est ut voluptatibus nihil. Quidem qui ut ut ut dicta quia.', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(35, 'fuga deleniti autem', NULL, 'Dolorem rem error et delectus sint. Explicabo voluptas est eius iste provident. Autem amet ut repellat corporis aliquam. Sapiente aut hic magnam iusto ut ad distinctio.\n\nMolestiae cum voluptas quia aut. Rem sit sed cum neque est sit tempora. Deserunt sapiente laboriosam quibusdam consequatur vitae totam.', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(36, 'quis', NULL, 'Repellendus ad repudiandae quia. Quibusdam voluptas ipsum voluptas quia. Maxime ipsum quia libero non et.', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(37, 'et', NULL, 'Sed dolor facilis iusto molestiae. Earum doloribus voluptatem et quo aut molestiae qui atque. Aut atque recusandae aut accusamus cupiditate.\n\nUt necessitatibus doloremque sint nisi quia. Sed voluptatem eius laboriosam vitae et. Repellendus voluptas eius quos voluptas nesciunt nemo. Voluptas enim quidem atque inventore cum mollitia. Minus aut quas ad blanditiis veniam consequatur vel ducimus.', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(38, 'quis sed', NULL, 'Consequatur et cupiditate quis atque omnis ipsam in. Eos dolor sit saepe. Officiis in et non totam. Corporis pariatur ratione qui eum ut error eos.\n\nVoluptatibus aut facere voluptas beatae. Doloribus sit suscipit porro aut voluptatem vel minima aliquid. Fugiat occaecati deserunt doloribus sint eveniet nihil.\n\nQuis veritatis est in illo eius ipsum iste deleniti. Optio ab rem aut ipsam. Sit consectetur hic eaque dolor consequatur molestiae.', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(39, 'suscipit', NULL, 'Facilis quibusdam reprehenderit sed et. Est iure assumenda iusto ut incidunt inventore. Quia ut itaque enim quod. In at neque sunt esse blanditiis.', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(40, 'qui aut', NULL, 'Itaque repudiandae accusantium voluptas non dolore. Eligendi quos culpa veniam suscipit sed. Quia dolores deserunt sunt ipsum similique consequuntur.\n\nQuisquam odit delectus ut. Maxime recusandae sed hic. Dolores dolores saepe facere. Tenetur debitis quos corporis aliquid animi.', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(41, 'perspiciatis', NULL, 'Cupiditate quia quia laudantium consequatur officiis animi. Pariatur repudiandae quisquam pariatur voluptatem aut et. Et quas quisquam quo omnis accusamus.', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(42, 'dolores', NULL, 'Hic possimus explicabo impedit labore quibusdam corporis voluptas. Dolorem quod illum assumenda deserunt eos esse. Perspiciatis consequatur ad eveniet dolor. Omnis laudantium illo omnis esse corrupti nobis.', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(43, 'in suscipit', NULL, 'Id excepturi deserunt beatae qui omnis recusandae. Fuga odit id distinctio porro ipsa dicta.', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(44, 'atque', NULL, 'Omnis rerum ab exercitationem a omnis nisi sed. Dolores tempora asperiores et et. Saepe rerum possimus quod sed. Inventore dolor eaque non dignissimos praesentium rerum incidunt numquam.', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(45, 'qui', NULL, 'Molestias accusantium harum ut laborum quam fugit. Maxime autem maiores voluptatem voluptas rerum excepturi omnis. Voluptate quia autem quaerat aliquam sed doloribus officiis omnis. Perspiciatis et veniam qui.\n\nOptio et a maiores qui. Quod porro eos recusandae voluptas autem. Non dolorem ea eos ipsam nobis. Aut veritatis accusamus maxime et optio expedita culpa enim.\n\nTotam quam distinctio quasi illum. Accusantium ut iusto beatae cum et. Ea quae et et et.', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(46, 'mollitia sed voluptatem', NULL, 'Corporis reiciendis illo assumenda. Tenetur quas in nobis et et qui repudiandae nam. Nihil aliquam ducimus vel asperiores aspernatur aut ut. Quibusdam dolorem natus dolores nihil ratione.\n\nAnimi consequatur quis ab est rerum impedit. Nobis ut sint ipsam officiis non consequatur quo. Vel aliquam adipisci consectetur expedita inventore distinctio.', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(47, 'debitis minima', NULL, 'Doloremque vel qui quis culpa suscipit. Explicabo quis aut magnam omnis et optio quis. Repellendus vitae voluptatem qui animi.\n\nBeatae unde aliquid perspiciatis est fugiat rerum. Sit rerum quis ipsum nostrum omnis. Et qui qui et eius ut delectus. Dolor voluptatem ipsum exercitationem fugit voluptas provident.', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(48, 'cumque', NULL, 'Cumque quisquam animi architecto nisi optio. Consequatur labore vitae doloremque harum et impedit. Voluptatum et incidunt esse blanditiis. Vel sed eum mollitia fuga autem consectetur optio.\n\nQuia officiis odio nihil eligendi ea molestias. Possimus deserunt itaque quasi facilis. Qui consequatur excepturi necessitatibus.\n\nVelit voluptates est non sit ex. Repellendus doloribus natus adipisci accusamus et id. Error et autem aut blanditiis qui enim.', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(49, 'quod', NULL, 'Quaerat quia et ipsum dolor. Dolore similique recusandae ea nostrum quod similique quo. Laborum at eos saepe sunt vel velit rerum. Ex aliquam quasi voluptatem repellat totam consectetur. Enim ipsam aut aliquid ipsa est ad blanditiis.\n\nNam et eos qui. Quia alias maiores voluptatibus dolorum. Nisi culpa sed veniam impedit a. Est temporibus beatae cupiditate. Et eos voluptatem et voluptatibus assumenda corrupti similique molestiae.', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(50, 'adipisci laborum totam', NULL, 'Aut provident alias amet dolorem facere. Ad quasi sint optio recusandae excepturi ipsam expedita. Quia voluptas debitis nihil omnis.\n\nRepellendus aliquam magnam et. Qui animi suscipit sunt est consequatur. Harum debitis doloribus nemo non dolores. Id eos voluptate quod perferendis illum.', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(51, 'odit est quos', NULL, 'Vitae earum sed itaque voluptate. Illum sit veritatis consequatur et qui ipsum. Magni libero enim repudiandae id.', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(52, 'autem illum', NULL, 'Rerum dolorem earum dolor et illum. Ut voluptates aspernatur eius blanditiis sint. Sed enim sequi molestias placeat.\n\nEnim nulla quasi consequuntur ducimus. Dolor sunt maiores eligendi vel magnam optio exercitationem molestias. Deserunt soluta quis enim ut ea consequatur et. Et quis at dolor mollitia.\n\nMinima vero velit velit ea aliquid. Ad nulla fuga qui sed repudiandae nemo. Praesentium tempore voluptas perferendis laudantium. Voluptatem quas doloribus temporibus.', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(53, 'minus sit beatae', NULL, 'Atque voluptatem dolor dolores est eos animi. Autem quia odio consequatur quae facilis assumenda. Omnis nisi rerum velit.\n\nOmnis facilis exercitationem voluptates labore. Aliquid non nesciunt omnis iste voluptatibus. Rem ratione dolorem itaque aut id sit perferendis.', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(54, 'aliquam quidem', NULL, 'Doloremque magnam alias aut minus veritatis. Perspiciatis sequi porro perspiciatis sed qui enim quos. Ab velit reiciendis iusto officiis cum aliquam.\n\nEnim sunt non expedita nihil officiis sapiente. Possimus quidem inventore deleniti tenetur incidunt eos. Et ea dolorem qui.', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(55, 'vitae esse', NULL, 'Numquam ipsum id necessitatibus itaque. Dolorem quis commodi quasi non. Suscipit voluptates sapiente voluptatum molestiae occaecati vitae unde. Molestiae reiciendis est omnis blanditiis consequatur.', '2025-05-07 12:42:04', '2025-05-07 12:42:04');

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
(6, '2025_05_07_113426_create_categories_table', 1),
(7, '2025_05_07_113428_create_warehouse_locations_table', 1),
(8, '2025_05_07_113429_create_products_table', 1),
(9, '2025_05_07_113430_create_rfid_scan_logs_table', 1),
(10, '2025_05_07_183604_create_notifications_table', 1),
(11, '2025_05_07_183643_create_imports_table', 1),
(12, '2025_05_07_183644_create_exports_table', 1),
(13, '2025_05_07_183645_create_failed_import_rows_table', 1);

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
  `product_name` varchar(255) NOT NULL,
  `internal_reference` varchar(255) DEFAULT NULL,
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
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `warehouse_location_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `internal_reference`, `ean_gtin_code`, `rfid_code`, `product_picture`, `brief_description`, `current_stock`, `product_condition`, `cost_price`, `sale_price`, `date_of_discharge`, `last_updated_date`, `creator_user`, `category_id`, `brand_id`, `supplier_id`, `warehouse_location_id`, `created_at`, `updated_at`) VALUES
(1, 'molestiae exercitationem vero', 'REF-88043', '0593693162761', '4db31a48-55ea-3310-b148-ee51f27a27bd', NULL, 'Commodi aliquam ea consequatur facere voluptatem cum.', 86, 'New', 127.41, 129.36, '2025-02-20 00:36:09', '2025-04-15 00:30:10', 'admin@filament.com', 1, 1, 1, 1, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(2, 'magnam aliquid ullam', 'REF-9562', '2553354288559', '9c24cc35-a998-3e44-975c-65d91cd14959', NULL, 'Mollitia nobis perferendis voluptatibus est nemo.', 24, 'New', 459.72, 57.78, '2025-01-11 12:55:30', '2025-04-28 15:33:09', 'admin@filament.com', 2, 2, 2, 2, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(3, 'eos blanditiis deleniti', 'REF-83493', '1537304356438', '724ecc53-328a-3423-9f1e-ad3f60ca7f2d', NULL, 'Voluptatem voluptas dolorum molestiae.', 32, 'New', 140.79, 214.91, '2025-02-28 05:45:06', '2025-05-02 21:57:48', 'admin@filament.com', 3, 3, 3, 3, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(4, 'consectetur architecto vel', 'REF-65054', '1847910994420', 'b75fb4d6-97a8-38ab-a0a1-f099404990f7', NULL, 'Eos velit consectetur quis voluptas consectetur suscipit qui.', 14, 'New', 198.11, 584.52, '2025-04-25 01:18:20', '2025-04-27 19:03:09', 'admin@filament.com', 4, 4, 4, 4, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(5, 'tempore ad rerum', 'REF-68543', '8903870019566', 'c5fd347e-0b64-39bd-8944-e4f67f611e05', NULL, 'Ex eos dolorum molestias voluptas aspernatur.', 45, 'Reserved', 315.01, 573.62, '2025-03-24 12:54:45', '2025-04-30 03:55:39', 'admin@filament.com', 5, 5, 5, 5, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(6, 'inventore aut molestias', 'REF-13668', '6364108770888', '88899c06-0840-3a5e-94c1-ec6ec945ac03', NULL, 'Laborum molestiae reiciendis qui quaerat.', 90, 'Reserved', 318.85, 44.00, '2025-04-15 12:02:35', '2025-04-20 14:03:02', 'admin@filament.com', 6, 6, 6, 6, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(7, 'non sed inventore', 'REF-9039', '8452635618501', 'bceaf634-9167-35b0-bdd1-32b4ff00becb', NULL, 'Eos perspiciatis nihil minus et fugit doloremque.', 74, 'New', 159.74, 261.59, '2025-01-29 23:44:12', '2025-04-19 17:13:22', 'admin@filament.com', 7, 7, 7, 7, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(8, 'voluptatem vel enim', 'REF-10944', '6118282781587', '4e7fce7f-2dd9-34ab-b1c5-e39183e1d66b', NULL, 'Corporis eum dolores repellendus exercitationem.', 16, 'Damaged', 449.72, 332.32, '2025-03-04 04:24:39', '2025-04-26 23:34:30', 'admin@filament.com', 8, 8, 8, 8, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(9, 'quae autem animi', 'REF-75123', '3361534966437', '2a666978-688f-3b99-a73e-20e55f51e7ff', NULL, 'Incidunt nemo ut odit quidem quibusdam.', 51, 'Reserved', 259.42, 553.16, '2025-04-08 06:25:57', '2025-04-16 01:00:57', 'admin@filament.com', 9, 9, 9, 9, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(10, 'officia dignissimos nostrum', 'REF-23458', '2295727829463', '82ece4f1-77ab-3626-b0ad-cb97b613539f', NULL, 'Deserunt doloremque perspiciatis est voluptatem ad ipsa possimus.', 94, 'Reserved', 50.11, 107.08, '2025-01-11 16:53:59', '2025-04-19 10:18:03', 'admin@filament.com', 10, 10, 10, 10, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(11, 'iure atque repellat', 'REF-99792', '7863872783661', 'd2c9abf4-ebc1-3893-a15d-03052d3a9c6a', NULL, 'Rerum ex repellendus reiciendis et et excepturi explicabo.', 55, 'Reserved', 136.81, 111.64, '2025-01-24 06:24:03', '2025-04-20 02:26:50', 'admin@filament.com', 11, 11, 11, 11, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(12, 'vel quasi architecto', 'REF-50679', '0661804092730', '27588f49-7669-306a-a1a3-30d2b911045f', NULL, 'Ut consequatur et occaecati non.', 27, 'New', 305.13, 197.12, '2025-01-01 05:02:15', '2025-04-17 03:39:58', 'admin@filament.com', 12, 12, 12, 12, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(13, 'modi sequi nisi', 'REF-25727', '3337478622111', '428aa8aa-e7dd-3d2e-8b0f-c2df3942cc15', NULL, 'Eligendi velit et non modi vero ut laboriosam.', 72, 'Reserved', 449.23, 165.02, '2025-04-16 03:50:32', '2025-05-02 18:46:51', 'admin@filament.com', 13, 13, 13, 13, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(14, 'sit est dolores', 'REF-39711', '0536911822870', '9b963d5f-1d36-35dc-839a-7bbe2a5bd3b4', NULL, 'Et quaerat consequatur architecto in consectetur quia.', 37, 'New', 51.24, 489.06, '2025-01-07 07:59:34', '2025-04-28 01:12:03', 'admin@filament.com', 14, 14, 14, 14, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(15, 'eius voluptatem odio', 'REF-54978', '2503124273049', '8badbeee-6e92-39f6-92df-8bc2bda77de6', NULL, 'Sed dolorum consectetur aperiam est similique voluptatem.', 68, 'Reserved', 357.06, 163.05, '2025-04-10 06:40:30', '2025-04-30 12:25:50', 'admin@filament.com', 15, 15, 15, 15, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(16, 'excepturi earum quis', 'REF-21929', '2210747313280', '13f1c912-cb1b-3d2e-a356-1f948f2fda73', NULL, 'Esse nemo quisquam ipsum vitae quia quidem.', 8, 'Reserved', 452.47, 536.62, '2025-01-16 18:03:55', '2025-05-01 00:00:17', 'admin@filament.com', 16, 16, 16, 16, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(17, 'officiis odio et', 'REF-13481', '9357383756576', 'ebcbb567-eb81-3427-9e39-5dc0dd0786f6', NULL, 'In doloribus dolores distinctio voluptatem sit numquam autem quia.', 74, 'New', 57.69, 441.22, '2025-04-14 22:41:15', '2025-04-23 09:49:55', 'admin@filament.com', 17, 17, 17, 17, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(18, 'consequatur soluta nemo', 'REF-77377', '8353965399712', '50dfc91d-6512-3ca9-9888-80f70bf5bee1', NULL, 'Magni maiores vel nihil vero.', 68, 'New', 201.88, 252.84, '2025-01-29 17:54:25', '2025-04-14 11:18:21', 'admin@filament.com', 18, 18, 18, 18, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(19, 'delectus quos aut', 'REF-22797', '1452704495832', '4cadefea-22ac-3597-b440-1d168a916d61', NULL, 'Reprehenderit placeat reprehenderit eos quibusdam dolores officia dolore.', 36, 'New', 446.66, 246.34, '2025-02-21 03:03:34', '2025-04-22 09:22:35', 'admin@filament.com', 19, 19, 19, 19, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(20, 'delectus sint cupiditate', 'REF-15221', '9943269879226', '9934ca85-926a-38f7-b445-8ca998680984', NULL, 'In occaecati dolorem eius quo et ut quia veniam.', 72, 'Damaged', 483.26, 336.63, '2025-04-27 18:10:59', '2025-04-30 22:20:36', 'admin@filament.com', 20, 20, 20, 20, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(21, 'et non aut', 'REF-43305', '0044139199402', '97e7d54e-7a12-3429-9e1d-27ed854fb05c', NULL, 'Voluptates minima quia quae beatae rerum nisi culpa nostrum.', 58, 'Reserved', 54.51, 467.87, '2025-04-19 19:30:08', '2025-05-03 09:32:52', 'admin@filament.com', 21, 21, 21, 21, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(22, 'voluptate commodi doloremque', 'REF-20747', '9685692573462', '8b81a3e8-1e34-3d02-8217-bb6aaff7d7cd', NULL, 'Debitis molestiae quibusdam temporibus impedit.', 42, 'Reserved', 149.99, 316.49, '2025-03-22 16:12:55', '2025-05-03 15:40:37', 'admin@filament.com', 22, 22, 22, 22, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(23, 'debitis cupiditate ducimus', 'REF-95036', '7754741242047', 'fd46f42c-e769-3829-b2b0-659e893542a7', NULL, 'Veritatis et culpa qui sit vel.', 6, 'Reserved', 481.71, 342.18, '2025-04-09 14:19:49', '2025-04-22 07:03:11', 'admin@filament.com', 23, 23, 23, 23, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(24, 'eligendi eveniet voluptatibus', 'REF-44633', '5460356567940', '2ac64181-4f3a-30cf-894b-1d9fb9a509bc', NULL, 'Aliquid delectus corporis quos.', 96, 'Damaged', 68.41, 163.15, '2025-01-10 02:49:55', '2025-05-03 14:11:38', 'admin@filament.com', 24, 24, 24, 24, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(25, 'dignissimos quod cumque', 'REF-71797', '1763758563409', 'd6a2a590-ef01-3d24-be13-d2d24aa04852', NULL, 'Est quo maxime cupiditate dolore ex.', 70, 'New', 198.60, 297.91, '2025-04-21 06:28:57', '2025-05-02 19:31:17', 'admin@filament.com', 25, 25, 25, 25, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(26, 'soluta impedit suscipit', 'REF-2511', '1833669771825', 'cf445ef1-c508-3433-a0ed-a8afa5f6af3c', NULL, 'Laudantium odit vel tempore dolorem officiis voluptatem voluptatibus.', 58, 'Reserved', 487.59, 23.44, '2025-01-10 08:49:15', '2025-05-03 09:36:58', 'admin@filament.com', 26, 26, 26, 26, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(27, 'qui et nihil', 'REF-96088', '6055492947207', '504237c9-b7fe-34aa-a735-7d7ead3a1d69', NULL, 'Amet unde soluta temporibus.', 18, 'Damaged', 29.97, 184.60, '2025-04-08 22:57:26', '2025-05-01 04:16:23', 'admin@filament.com', 27, 27, 27, 27, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(28, 'libero dignissimos dignissimos', 'REF-27660', '6706705533785', '340e689a-9320-37aa-94f0-6a66798d5500', NULL, 'Aut voluptates ut id in.', 77, 'Damaged', 411.24, 448.59, '2025-04-09 09:50:59', '2025-04-15 14:01:34', 'admin@filament.com', 28, 28, 28, 28, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(29, 'occaecati necessitatibus laborum', 'REF-26362', '5603207069518', 'a41c7a2a-2c94-32a3-b219-6977ae28dcb6', NULL, 'Reiciendis molestiae dolore nesciunt necessitatibus veniam asperiores nihil voluptatem.', 39, 'Reserved', 480.09, 558.31, '2025-01-22 03:49:39', '2025-04-23 02:47:09', 'admin@filament.com', 29, 29, 29, 29, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(30, 'autem dicta qui', 'REF-40947', '4580961595068', '8e7e1519-be46-3cf7-bcde-9553f0e233c8', NULL, 'Cum eius vero magnam velit quia.', 31, 'Reserved', 311.23, 160.10, '2025-02-08 05:55:11', '2025-04-11 00:23:09', 'admin@filament.com', 30, 30, 30, 30, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(31, 'sint sapiente enim', 'REF-10717', '9406099026081', '9b49d5d4-cd18-320c-8db6-3966a7d04f82', NULL, 'Consequuntur et quas qui.', 49, 'New', 227.01, 398.33, '2025-03-05 04:32:37', '2025-04-15 06:49:39', 'admin@filament.com', 31, 31, 31, 31, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(32, 'amet sit in', 'REF-45230', '8679763703248', '0a9ae15d-a167-3b0c-9381-f019e75f8172', NULL, 'Nobis non vero expedita ipsa.', 47, 'Reserved', 74.85, 55.64, '2025-02-10 05:50:39', '2025-04-13 03:24:15', 'admin@filament.com', 32, 32, 32, 32, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(33, 'laudantium ea officia', 'REF-84153', '5443085465190', 'e709879d-1304-345e-9bf3-8f96819aac27', NULL, 'Voluptate commodi cupiditate veniam labore qui reiciendis.', 57, 'Damaged', 13.82, 452.08, '2025-02-24 09:32:19', '2025-04-28 04:57:39', 'admin@filament.com', 33, 33, 33, 33, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(34, 'nesciunt tempora eum', 'REF-27763', '9963319639143', '036bd6a6-d1d1-37d0-a75e-19e9d29bcb1d', NULL, 'Quia inventore in enim ipsa sequi aut expedita.', 53, 'Damaged', 101.58, 184.89, '2025-01-18 12:07:27', '2025-04-13 19:26:07', 'admin@filament.com', 34, 34, 34, 34, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(35, 'ut eaque dicta', 'REF-64183', '3359062943259', 'a963be54-597d-3f5a-8d8a-2e87ac55b2ea', NULL, 'Sit qui deserunt delectus ipsa nihil nesciunt officiis dicta.', 1, 'New', 373.66, 312.27, '2025-05-01 10:27:57', '2025-05-02 22:22:55', 'admin@filament.com', 35, 35, 35, 35, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(36, 'quaerat neque harum', 'REF-68801', '6311713177892', '6de08ab8-6d9f-3b87-943b-a9e98280c502', NULL, 'Culpa reprehenderit laborum et.', 66, 'New', 405.65, 493.75, '2025-01-24 10:20:57', '2025-05-07 11:08:31', 'admin@filament.com', 36, 36, 36, 36, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(37, 'vero molestiae itaque', 'REF-30354', '4835527819547', 'bfd35584-3568-3342-9b94-7af2e418b245', NULL, 'Saepe error possimus quo.', 27, 'New', 31.79, 477.42, '2025-03-15 21:43:36', '2025-04-14 12:18:35', 'admin@filament.com', 37, 37, 37, 37, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(38, 'voluptatum natus libero', 'REF-68609', '0453879353324', '967c1ab5-9bd9-31f1-8047-a86f7dcd6cbd', NULL, 'Magnam tenetur corrupti sit adipisci veniam unde.', 31, 'New', 256.83, 118.30, '2025-01-11 21:16:46', '2025-04-28 10:57:56', 'admin@filament.com', 38, 38, 38, 38, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(39, 'adipisci deleniti sunt', 'REF-5856', '5806355335430', 'cbaba082-d53e-3202-bb52-1519932dc9b9', NULL, 'Dolore dolorem numquam placeat doloremque aut nobis.', 49, 'Damaged', 168.64, 68.74, '2025-04-17 20:50:10', '2025-04-27 05:19:11', 'admin@filament.com', 39, 39, 39, 39, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(40, 'quo nostrum totam', 'REF-74701', '1793370247777', '158b4aa4-dc23-3c80-b3de-faf6b2d97ef5', NULL, 'Dolor ut vitae illo quisquam voluptatem veniam est.', 55, 'New', 77.44, 252.53, '2025-04-10 03:18:31', '2025-05-01 12:14:18', 'admin@filament.com', 40, 40, 40, 40, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(41, 'consequatur asperiores rerum', 'REF-69160', '7804865281535', 'dae2a82a-093b-30f0-8bb1-e2e2cf98b2ba', NULL, 'In et itaque voluptas labore eligendi.', 49, 'Damaged', 420.05, 460.48, '2025-03-19 17:26:11', '2025-04-20 07:41:11', 'admin@filament.com', 41, 41, 41, 41, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(42, 'rem voluptatibus quia', 'REF-78810', '8403631308446', '684954e6-f574-3ee9-bee6-9eeebd3bd254', NULL, 'Veniam aliquam laboriosam rerum architecto ut eveniet non.', 26, 'New', 36.33, 442.94, '2025-01-05 09:35:33', '2025-04-08 04:32:45', 'admin@filament.com', 42, 42, 42, 42, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(43, 'quos est fugit', 'REF-40362', '4550590678937', '7092f86f-9b51-3cdf-b5cd-03127d477154', NULL, 'Voluptatum cum consequatur ut aperiam sed quia dicta.', 47, 'New', 252.67, 480.36, '2025-01-24 15:50:57', '2025-05-03 08:38:51', 'admin@filament.com', 43, 43, 43, 43, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(44, 'aliquam voluptatibus velit', 'REF-45957', '6005991483294', '7539234b-9eb1-3ac9-82f7-bda126e90200', NULL, 'Alias voluptatem temporibus autem sit.', 14, 'Reserved', 53.68, 157.06, '2025-03-24 06:10:34', '2025-04-16 05:54:15', 'admin@filament.com', 44, 44, 44, 44, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(45, 'veritatis inventore a', 'REF-88609', '9281535167753', 'a6b5d7b4-9d5a-308b-a8c3-85b8081110d1', NULL, 'Eos et est ab dolorem aspernatur dicta fugiat.', 5, 'Damaged', 350.61, 132.38, '2025-03-17 20:07:58', '2025-04-09 21:36:49', 'admin@filament.com', 45, 45, 45, 45, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(46, 'minima occaecati delectus', 'REF-86190', '8623127169621', 'cd7806db-3292-39af-b3ba-d70244b17d96', NULL, 'Corrupti aperiam iure explicabo natus.', 24, 'Reserved', 452.43, 468.04, '2025-01-06 05:58:54', '2025-04-26 14:43:59', 'admin@filament.com', 46, 46, 46, 46, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(47, 'laboriosam vero tempora', 'REF-48824', '2895589597632', '4a20a9e7-645b-3814-b6f5-f0eab10ddd81', NULL, 'Alias magnam labore blanditiis est dolorem tenetur.', 18, 'Reserved', 198.23, 242.76, '2025-03-08 06:39:17', '2025-04-16 05:06:17', 'admin@filament.com', 47, 47, 47, 47, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(48, 'reiciendis rem sit', 'REF-67528', '2110202971690', '9c930787-021c-3891-bde1-2b6968d6dc73', NULL, 'Ut eum sit nobis esse nemo recusandae.', 51, 'Damaged', 127.94, 280.93, '2025-03-31 19:25:20', '2025-04-22 01:29:04', 'admin@filament.com', 48, 48, 48, 48, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(49, 'suscipit tempora consequatur', 'REF-54817', '5146082870874', 'b28a0bfe-57ca-3fd7-a8a6-667c241f36b8', NULL, 'Sed nam minima nemo mollitia eaque velit.', 61, 'Reserved', 81.50, 31.90, '2025-03-31 08:06:21', '2025-04-19 23:40:14', 'admin@filament.com', 49, 49, 49, 49, '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(50, 'quaerat cupiditate commodi', 'REF-32659', '0700543021363', '4fc6b03f-52c6-3eb4-a51f-d8c717ab26d2', NULL, 'Maxime aliquid velit voluptatum sit ducimus doloribus atque.', 63, 'Reserved', 61.40, 59.18, '2025-04-29 22:18:51', '2025-04-12 14:31:00', 'admin@filament.com', 50, 50, 50, 50, '2025-05-07 12:42:04', '2025-05-07 12:42:04');

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
(1, 'c5fd347e-0b64-39bd-8944-e4f67f611e05', 5, 'check-in', 'RFID Reader', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(2, '724ecc53-328a-3423-9f1e-ad3f60ca7f2d', 3, 'inventory', 'Admin Panel', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(3, '158b4aa4-dc23-3c80-b3de-faf6b2d97ef5', 40, 'check-in', 'Mobile App', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(4, '4cadefea-22ac-3597-b440-1d168a916d61', 19, 'check-in', 'Mobile App', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(5, 'd6a2a590-ef01-3d24-be13-d2d24aa04852', 25, 'check-in', 'RFID Reader', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(6, 'b28a0bfe-57ca-3fd7-a8a6-667c241f36b8', 49, 'check-in', 'Admin Panel', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(7, 'a963be54-597d-3f5a-8d8a-2e87ac55b2ea', 35, 'inventory', 'Admin Panel', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(8, 'a41c7a2a-2c94-32a3-b219-6977ae28dcb6', 29, 'check-out', 'RFID Reader', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(9, '340e689a-9320-37aa-94f0-6a66798d5500', 28, 'check-out', 'Mobile App', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(10, 'bceaf634-9167-35b0-bdd1-32b4ff00becb', 7, 'check-out', 'Admin Panel', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(11, 'ebcbb567-eb81-3427-9e39-5dc0dd0786f6', 17, 'check-out', 'Mobile App', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(12, 'cd7806db-3292-39af-b3ba-d70244b17d96', 46, 'check-in', 'Admin Panel', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(13, 'a41c7a2a-2c94-32a3-b219-6977ae28dcb6', 29, 'check-in', 'RFID Reader', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(14, 'a6b5d7b4-9d5a-308b-a8c3-85b8081110d1', 45, 'check-out', 'RFID Reader', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(15, '684954e6-f574-3ee9-bee6-9eeebd3bd254', 42, 'check-out', 'RFID Reader', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(16, 'a963be54-597d-3f5a-8d8a-2e87ac55b2ea', 35, 'inventory', 'Admin Panel', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(17, '684954e6-f574-3ee9-bee6-9eeebd3bd254', 42, 'check-out', 'Admin Panel', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(18, '9c930787-021c-3891-bde1-2b6968d6dc73', 48, 'check-in', 'Admin Panel', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(19, '684954e6-f574-3ee9-bee6-9eeebd3bd254', 42, 'check-out', 'Mobile App', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(20, '88899c06-0840-3a5e-94c1-ec6ec945ac03', 6, 'check-out', 'Mobile App', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(21, '4cadefea-22ac-3597-b440-1d168a916d61', 19, 'check-in', 'Admin Panel', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(22, '9b963d5f-1d36-35dc-839a-7bbe2a5bd3b4', 14, 'check-in', 'RFID Reader', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(23, '504237c9-b7fe-34aa-a735-7d7ead3a1d69', 27, 'check-out', 'Mobile App', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(24, '4e7fce7f-2dd9-34ab-b1c5-e39183e1d66b', 8, 'check-in', 'Mobile App', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(25, '9b963d5f-1d36-35dc-839a-7bbe2a5bd3b4', 14, 'inventory', 'Mobile App', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(26, '724ecc53-328a-3423-9f1e-ad3f60ca7f2d', 3, 'check-in', 'Admin Panel', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(27, '2a666978-688f-3b99-a73e-20e55f51e7ff', 9, 'check-in', 'Mobile App', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(28, 'b28a0bfe-57ca-3fd7-a8a6-667c241f36b8', 49, 'inventory', 'RFID Reader', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(29, '88899c06-0840-3a5e-94c1-ec6ec945ac03', 6, 'inventory', 'Mobile App', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(30, '428aa8aa-e7dd-3d2e-8b0f-c2df3942cc15', 13, 'check-in', 'Mobile App', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(31, 'b28a0bfe-57ca-3fd7-a8a6-667c241f36b8', 49, 'inventory', 'RFID Reader', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(32, '27588f49-7669-306a-a1a3-30d2b911045f', 12, 'check-in', 'Mobile App', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(33, '4e7fce7f-2dd9-34ab-b1c5-e39183e1d66b', 8, 'inventory', 'Mobile App', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(34, 'bceaf634-9167-35b0-bdd1-32b4ff00becb', 7, 'check-out', 'RFID Reader', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(35, '97e7d54e-7a12-3429-9e1d-27ed854fb05c', 21, 'inventory', 'Admin Panel', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(36, 'a963be54-597d-3f5a-8d8a-2e87ac55b2ea', 35, 'inventory', 'Admin Panel', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(37, '50dfc91d-6512-3ca9-9888-80f70bf5bee1', 18, 'check-out', 'Mobile App', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(38, '504237c9-b7fe-34aa-a735-7d7ead3a1d69', 27, 'check-in', 'RFID Reader', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(39, 'cd7806db-3292-39af-b3ba-d70244b17d96', 46, 'check-in', 'Admin Panel', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(40, '97e7d54e-7a12-3429-9e1d-27ed854fb05c', 21, 'check-out', 'Mobile App', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(41, 'dae2a82a-093b-30f0-8bb1-e2e2cf98b2ba', 41, 'check-out', 'RFID Reader', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(42, 'd6a2a590-ef01-3d24-be13-d2d24aa04852', 25, 'inventory', 'Admin Panel', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(43, 'dae2a82a-093b-30f0-8bb1-e2e2cf98b2ba', 41, 'check-in', 'Mobile App', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(44, '4cadefea-22ac-3597-b440-1d168a916d61', 19, 'check-in', 'RFID Reader', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(45, 'd2c9abf4-ebc1-3893-a15d-03052d3a9c6a', 11, 'inventory', 'RFID Reader', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(46, 'fd46f42c-e769-3829-b2b0-659e893542a7', 23, 'inventory', 'Mobile App', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(47, '9b963d5f-1d36-35dc-839a-7bbe2a5bd3b4', 14, 'check-in', 'Admin Panel', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(48, '27588f49-7669-306a-a1a3-30d2b911045f', 12, 'inventory', 'Mobile App', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(49, '4db31a48-55ea-3310-b148-ee51f27a27bd', 1, 'check-out', 'Admin Panel', '2025-05-07 12:42:05', '2025-05-07 12:42:05'),
(50, '9b49d5d4-cd18-320c-8db6-3966a7d04f82', 31, 'inventory', 'Admin Panel', '2025-05-07 12:42:05', '2025-05-07 12:42:05');

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

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('amdacY5qTmHmEPgXZTnlx0sz627lZ9t62eHeAvd0', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiYWoyY01iTjFOSlZWTFJqYjQzZkhPUUVFMVJKWVdZdmo0d2JRd2lpaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRmQ3VtQ3pTVFBycGY3VWk1VGlWblYuUEdZcHlRWmIvdmV1amdvUjN5OXBoTUJmZ0UxQkFGSyI7fQ==', 1746650579);

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
(1, 'Emie Harris', 'jared22@example.net', '1-425-891-7704', 'Predovic Inc', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(2, 'Jade Watsica', 'eboyer@example.com', '443-850-5524', 'Borer-Ortiz', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(3, 'Cecilia Dibbert III', 'daryl43@example.com', '(283) 355-0883', 'Fritsch PLC', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(4, 'Rolando Koch', 'axel64@example.org', '+1 (248) 812-3633', 'Runolfsdottir, Kuhlman and Larkin', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(5, 'Liliana Kihn Jr.', 'reichert.leland@example.net', '325-374-7011', 'Spinka, Kreiger and Morar', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(6, 'Lea Pfannerstill', 'una.funk@example.org', '754.257.2062', 'Emmerich-Harris', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(7, 'Felipe Goldner MD', 'cecile.sawayn@example.com', '959-368-8905', 'Kreiger, Bins and Morissette', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(8, 'Dr. Garrison Wehner II', 'swaniawski.danyka@example.org', '443.352.9718', 'Mraz Group', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(9, 'Ms. Shyanne Kiehn', 'desmond75@example.org', '463.994.1481', 'Keebler-Schamberger', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(10, 'Jaeden Donnelly Sr.', 'langosh.godfrey@example.org', '678-681-6654', 'Mills, Koch and Hagenes', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(11, 'Walker Goodwin', 'ledner.leonie@example.org', '(401) 964-6197', 'Labadie, Parisian and Sawayn', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(12, 'Gideon Botsford', 'marina.dach@example.com', '(281) 450-2123', 'Beier and Sons', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(13, 'Johann Langworth II', 'lizzie07@example.org', '(475) 687-0396', 'Cruickshank, White and Kuhn', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(14, 'Dr. Raheem Corwin', 'smetz@example.org', '224-617-2766', 'Hoppe, Tromp and Jast', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(15, 'Davonte Spencer', 'cbotsford@example.net', '1-657-602-9038', 'Runte Inc', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(16, 'Paul Beier', 'alice06@example.com', '1-564-205-1206', 'Kassulke, Lesch and Hauck', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(17, 'Brant Kuvalis', 'madisyn.pfannerstill@example.net', '1-831-219-3971', 'Langworth Group', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(18, 'Emely Okuneva Jr.', 'stehr.sigrid@example.net', '+1 (281) 967-5650', 'Abernathy-Kunze', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(19, 'Miss Daphney Upton', 'arlene74@example.com', '1-848-380-0380', 'Wiegand, Hessel and Brown', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(20, 'Dr. Larissa Bradtke MD', 'trever73@example.org', '(252) 422-0337', 'Lesch, Zboncak and Schuster', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(21, 'Lyla Green DDS', 'dschinner@example.com', '(458) 882-9644', 'Kling LLC', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(22, 'Dr. Carol Ruecker', 'weissnat.gardner@example.org', '229-880-8354', 'Bode-Schulist', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(23, 'Carmel Boyer', 'vparker@example.net', '+18109594232', 'Lebsack, Nicolas and Corkery', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(24, 'Mrs. Aliyah Collier', 'derek.bosco@example.com', '424.730.4742', 'Harris-Morissette', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(25, 'Ms. Lynn Mayert DDS', 'elias24@example.org', '+1 (937) 877-2161', 'Willms, Keeling and Veum', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(26, 'Payton Huels', 'schowalter.makayla@example.net', '+1-843-462-0589', 'Hoppe, Lind and Ledner', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(27, 'Ms. Tania Reichel Jr.', 'mona10@example.org', '256.502.6244', 'Lowe PLC', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(28, 'Prof. Elvie Larkin', 'bartell.alexandra@example.org', '+1 (571) 313-5268', 'Gottlieb, Kunde and Waters', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(29, 'Maudie Bruen', 'christa97@example.net', '331.908.4385', 'Botsford Inc', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(30, 'Dr. Vena Heaney', 'orlando85@example.net', '+19716690029', 'Ryan-Champlin', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(31, 'Lelia Kunze I', 'ekutch@example.net', '(757) 833-9815', 'Veum Inc', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(32, 'Consuelo Schowalter', 'citlalli60@example.org', '1-267-893-2596', 'Roob, Harvey and Hahn', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(33, 'Mr. Otho Abernathy I', 'kirlin.kara@example.com', '(731) 561-8211', 'Osinski Ltd', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(34, 'Prof. Ransom Kuphal MD', 'heathcote.jaylon@example.org', '+1-580-513-3387', 'Reichert-Haag', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(35, 'Dr. Ernesto Zboncak DDS', 'pdickens@example.org', '+1 (458) 783-1325', 'Hintz, Ward and Bode', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(36, 'Bryce Willms', 'raynor.june@example.org', '281-296-8007', 'Mayer PLC', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(37, 'Ms. Anne Jones', 'vhowe@example.net', '629.471.3018', 'Bogisich, Lesch and Hamill', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(38, 'Kyle Reichert', 'daugherty.angeline@example.net', '651.794.8871', 'Cartwright-Donnelly', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(39, 'Cordie Ward', 'demetrius93@example.com', '559-322-5379', 'Wehner, Windler and Conroy', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(40, 'Prof. Chauncey Tillman V', 'zgorczany@example.net', '425-314-2549', 'Crist Inc', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(41, 'Candelario Grant', 'giovani.padberg@example.com', '+1.530.916.8765', 'Bauch, Hauck and Kirlin', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(42, 'Oswald Ledner PhD', 'ktowne@example.com', '(332) 253-7019', 'Fritsch, Lang and Willms', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(43, 'Ms. Audrey Mraz', 'oswald77@example.org', '+19869816615', 'Wisozk Ltd', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(44, 'Velva Cronin Sr.', 'greenfelder.maximillian@example.org', '737.380.4251', 'Fritsch LLC', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(45, 'Uriah Wolff', 'noble.bashirian@example.com', '+1-231-359-3380', 'Howe Ltd', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(46, 'Frederic Cummerata', 'moore.kirstin@example.org', '(601) 385-2804', 'Williamson-Nicolas', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(47, 'Dr. Favian Spinka', 'gino.collins@example.com', '+1-520-500-8565', 'Hahn LLC', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(48, 'Lee Abbott', 'rath.annabelle@example.org', '+1-631-778-5864', 'Rice, Mueller and Kovacek', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(49, 'Dr. Murphy Kautzer', 'lubowitz.jazmyn@example.com', '218.304.2053', 'Marks-Eichmann', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(50, 'Walter Kautzer', 'dee40@example.org', '+1-252-215-8808', 'Boehm LLC', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(51, 'Harmony Heidenreich I', 'senger.carmel@example.org', '1-619-633-2696', 'Spinka Ltd', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(52, 'Rhett Ernser', 'jkertzmann@example.net', '+1-931-629-7222', 'Ebert-Murray', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(53, 'Dedrick Bernier', 'akub@example.org', '201-275-9292', 'Cormier Inc', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(54, 'Lisa Schaefer Sr.', 'vmraz@example.net', '+15036556870', 'Dickinson, Grant and Hauck', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(55, 'Melyna Stark', 'fmckenzie@example.org', '956-479-2140', 'Rogahn Inc', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(56, 'Wilbert Herman', 'hschoen@example.net', '660.679.8801', 'Runolfsdottir, Cummings and Ernser', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(57, 'Heaven Reinger', 'hilpert.reva@example.org', '360-642-9805', 'Stokes PLC', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(58, 'Einar Jakubowski', 'homenick.kenyon@example.com', '930.352.8639', 'Watsica LLC', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(59, 'Donald Welch DVM', 'dwhite@example.com', '+1-206-451-2422', 'Kulas Inc', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(60, 'Jaida Glover', 'ograham@example.net', '(865) 456-1611', 'Feeney-Mante', '2025-05-07 12:42:04', '2025-05-07 12:42:04');

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
(1, 'Admin', 'admin@gmail.com', '2025-05-07 12:42:01', '$2y$12$fCumCzSTPrpf7Ui5TiVnV.PGYpyQZb/veujgoR3y9phMBfgE1BAFK', 'xTnXTICIO1', '2025-05-07 12:42:02', '2025-05-07 12:42:02'),
(2, 'Miss Ernestine Champlin', 'maybelle49@example.org', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'hNxzgjldeq', '2025-05-07 12:42:02', '2025-05-07 12:42:02'),
(3, 'Dr. Jordy O\'Connell DVM', 'robel.gerardo@example.org', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'CB8WZsgrzV', '2025-05-07 12:42:02', '2025-05-07 12:42:02'),
(4, 'Dr. Marlene Pfeffer', 'aylin87@example.com', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'nuiC2sNCE3', '2025-05-07 12:42:02', '2025-05-07 12:42:02'),
(5, 'Israel Johnston', 'mhane@example.com', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'bVgZAZxrjU', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(6, 'Weston Bernier', 'pfeffer.darryl@example.net', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'Lmk1Fy9lFT', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(7, 'Ricardo Nikolaus', 'juanita50@example.net', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'wI7wcbkO1U', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(8, 'Miss Emily Donnelly I', 'lexie.dicki@example.com', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'CMVNFfljWi', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(9, 'Manuel Stehr', 'retha44@example.org', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'tx8IyfO8u0', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(10, 'Ms. Georgianna Harris DDS', 'beahan.madeline@example.org', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'jtXpzTJRDV', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(11, 'Johanna Daniel', 'gloria.kassulke@example.com', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'ehmt7TIVsW', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(12, 'Dr. Macy Harvey V', 'vickie.hudson@example.net', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'qEwogEYqdZ', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(13, 'Sigurd Douglas', 'jconnelly@example.org', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'SvT1JqeIhf', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(14, 'Glenna Baumbach', 'lrogahn@example.com', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'kW3aNId3KT', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(15, 'Margarette Fritsch', 'modesto01@example.org', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', '87wd36F2pX', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(16, 'Amie Dare', 'watsica.adelia@example.net', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'nOc9wjaNXx', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(17, 'Mr. Delaney Watsica Jr.', 'hiram61@example.com', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', '4GFLAmZB9w', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(18, 'Prof. Camylle Legros I', 'walter16@example.net', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'XgtpSI5UD0', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(19, 'Ahmad King', 'xmoen@example.net', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 's243K9k2yp', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(20, 'Angelica Corwin', 'zmacejkovic@example.org', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'flE8U8c9eh', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(21, 'Sigurd Nikolaus', 'mratke@example.org', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'gE39Hf6whL', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(22, 'Eloise White', 'karianne91@example.net', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'lk9LzwN8Ds', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(23, 'Vena Johns DVM', 'murazik.carmela@example.com', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'rByfiirbgT', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(24, 'Shaylee Hansen', 'xkilback@example.org', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', '14Gw8NWmdL', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(25, 'Camylle Kuhn', 'nicolas.laurine@example.com', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'myTDxKdRts', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(26, 'Gracie Jones III', 'volkman.llewellyn@example.com', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'DF4Lg2TfyT', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(27, 'Eunice Keeling', 'josefina.morissette@example.org', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'iNiqOlakOI', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(28, 'Kaci Hudson', 'dawson.pfeffer@example.net', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'OUKXJFo77K', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(29, 'Miss Shawna Donnelly', 'greenfelder.herminio@example.net', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'YCWePjgFE3', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(30, 'Ona Buckridge', 'alden89@example.net', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'jKFQJ5r00J', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(31, 'Devin Rempel', 'dario49@example.com', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'c7DelTn20d', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(32, 'Cecilia Anderson', 'nikita41@example.com', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'bS4eBQ9eU5', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(33, 'Isobel Kozey', 'bnienow@example.org', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'MAPD1Cqq6O', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(34, 'Gertrude McDermott', 'feest.orville@example.org', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'bB4z1MLKSc', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(35, 'Lilian Trantow', 'goldner.anabel@example.net', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', '5rcahTgiAf', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(36, 'Derrick Nicolas Sr.', 'serenity02@example.com', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'vVeijLxVaU', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(37, 'Mike Rau', 'alanna.heaney@example.net', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', '6fNDUh48F2', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(38, 'Liliana Runolfsson', 'ipfeffer@example.net', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'pcYVziH59x', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(39, 'Forest Reichel', 'fahey.keara@example.org', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'Ple4KrAi6S', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(40, 'Domenic Leffler', 'hand.bert@example.com', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'ymagTpqY5J', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(41, 'Shad Swaniawski DDS', 'hhuels@example.com', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'rD9VBgE4Ww', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(42, 'Arno Zemlak', 'sgutmann@example.com', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'FzaimwpmCl', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(43, 'Mrs. Dominique Ratke IV', 'estell37@example.com', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'jUcf8S87gF', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(44, 'Euna Kutch', 'price.jany@example.com', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', '00CmsmaZXb', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(45, 'Prof. Marc Runolfsdottir', 'hhaag@example.net', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'S3LnahyQJ1', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(46, 'Michelle Bednar', 'crystel.hoppe@example.org', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'uLbxe6p1p2', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(47, 'Freddie Hartmann V', 'edward96@example.net', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'D9bM0SQPlN', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(48, 'Graham Upton II', 'mazie81@example.org', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'T7vS3CJ6n7', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(49, 'Candace Welch', 'bauch.filiberto@example.com', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', '7K5wMpi8ic', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(50, 'Francesca Hamill', 'bartholome92@example.org', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'qpvrMCSp7Y', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(51, 'Prof. America Kassulke III', 'montana.effertz@example.net', '2025-05-07 12:42:02', '$2y$12$Cf6YGkjfBCrQmqNRtp4FQO22xJib2x/Tf3eSr3FJZoMxvtIdObWCm', 'ksPvdiPIbw', '2025-05-07 12:42:03', '2025-05-07 12:42:03');

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
(1, 'A4', 'Shelf 1', 'Bin 8', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(2, 'A10', 'Shelf 2', 'Bin 11', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(3, 'A4', 'Shelf 2', 'Bin 8', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(4, 'A1', 'Shelf 1', 'Bin 17', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(5, 'A1', 'Shelf 1', 'Bin 10', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(6, 'A5', 'Shelf 5', 'Bin 2', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(7, 'A2', 'Shelf 5', 'Bin 4', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(8, 'A6', 'Shelf 4', 'Bin 18', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(9, 'A1', 'Shelf 1', 'Bin 19', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(10, 'A7', 'Shelf 4', 'Bin 11', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(11, 'A7', 'Shelf 5', 'Bin 16', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(12, 'A3', 'Shelf 5', 'Bin 2', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(13, 'A4', 'Shelf 2', 'Bin 17', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(14, 'A3', 'Shelf 3', 'Bin 7', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(15, 'A1', 'Shelf 4', 'Bin 10', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(16, 'A5', 'Shelf 5', 'Bin 7', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(17, 'A2', 'Shelf 4', 'Bin 10', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(18, 'A1', 'Shelf 5', 'Bin 20', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(19, 'A2', 'Shelf 1', 'Bin 3', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(20, 'A7', 'Shelf 1', 'Bin 2', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(21, 'A10', 'Shelf 2', 'Bin 17', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(22, 'A3', 'Shelf 3', 'Bin 6', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(23, 'A4', 'Shelf 4', 'Bin 6', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(24, 'A6', 'Shelf 4', 'Bin 17', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(25, 'A7', 'Shelf 5', 'Bin 1', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(26, 'A8', 'Shelf 4', 'Bin 11', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(27, 'A10', 'Shelf 5', 'Bin 17', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(28, 'A4', 'Shelf 1', 'Bin 13', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(29, 'A1', 'Shelf 2', 'Bin 10', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(30, 'A8', 'Shelf 2', 'Bin 13', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(31, 'A8', 'Shelf 5', 'Bin 7', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(32, 'A4', 'Shelf 2', 'Bin 6', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(33, 'A4', 'Shelf 1', 'Bin 18', '2025-05-07 12:42:03', '2025-05-07 12:42:03'),
(34, 'A4', 'Shelf 4', 'Bin 6', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(35, 'A7', 'Shelf 5', 'Bin 9', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(36, 'A9', 'Shelf 5', 'Bin 6', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(37, 'A6', 'Shelf 3', 'Bin 13', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(38, 'A9', 'Shelf 5', 'Bin 17', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(39, 'A1', 'Shelf 5', 'Bin 5', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(40, 'A7', 'Shelf 1', 'Bin 6', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(41, 'A3', 'Shelf 4', 'Bin 11', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(42, 'A5', 'Shelf 3', 'Bin 2', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(43, 'A4', 'Shelf 2', 'Bin 13', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(44, 'A2', 'Shelf 2', 'Bin 6', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(45, 'A6', 'Shelf 1', 'Bin 4', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(46, 'A3', 'Shelf 1', 'Bin 16', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(47, 'A6', 'Shelf 4', 'Bin 15', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(48, 'A7', 'Shelf 2', 'Bin 5', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(49, 'A8', 'Shelf 3', 'Bin 19', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(50, 'A10', 'Shelf 1', 'Bin 19', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(51, 'A3', 'Shelf 1', 'Bin 3', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(52, 'A6', 'Shelf 1', 'Bin 20', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(53, 'A3', 'Shelf 5', 'Bin 4', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(54, 'A8', 'Shelf 5', 'Bin 14', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(55, 'A7', 'Shelf 1', 'Bin 5', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(56, 'A1', 'Shelf 4', 'Bin 3', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(57, 'A5', 'Shelf 3', 'Bin 8', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(58, 'A10', 'Shelf 1', 'Bin 2', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(59, 'A7', 'Shelf 4', 'Bin 18', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(60, 'A4', 'Shelf 4', 'Bin 12', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(61, 'A4', 'Shelf 4', 'Bin 12', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(62, 'A7', 'Shelf 5', 'Bin 2', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(63, 'A4', 'Shelf 5', 'Bin 19', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(64, 'A5', 'Shelf 5', 'Bin 11', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(65, 'A9', 'Shelf 5', 'Bin 17', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(66, 'A2', 'Shelf 3', 'Bin 11', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(67, 'A9', 'Shelf 2', 'Bin 5', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(68, 'A1', 'Shelf 3', 'Bin 17', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(69, 'A4', 'Shelf 1', 'Bin 6', '2025-05-07 12:42:04', '2025-05-07 12:42:04'),
(70, 'A6', 'Shelf 4', 'Bin 9', '2025-05-07 12:42:04', '2025-05-07 12:42:04');

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
  ADD UNIQUE KEY `products_rfid_code_unique` (`rfid_code`),
  ADD UNIQUE KEY `products_internal_reference_unique` (`internal_reference`),
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_warehouse_location_id_foreign` FOREIGN KEY (`warehouse_location_id`) REFERENCES `warehouse_locations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rfid_scan_logs`
--
ALTER TABLE `rfid_scan_logs`
  ADD CONSTRAINT `rfid_scan_logs_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
