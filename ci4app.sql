-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2021 at 02:05 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4app`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_activation_attempts`
--

INSERT INTO `auth_activation_attempts` (`id`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '20f1a5b8844e0e73ee0c1b416b64a08f', '2021-11-06 21:55:58');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'deyanyan6@gmail.com', 2, '2021-11-06 20:59:41', 1),
(2, '::1', 'admin@gmail.com', 3, '2021-11-06 21:39:46', 1),
(3, '::1', 'yanper', NULL, '2021-11-06 21:56:01', 0),
(4, '::1', 'yanper', NULL, '2021-11-06 21:56:10', 0),
(5, '::1', 'deyanyan6', NULL, '2021-11-06 21:56:19', 0),
(6, '::1', 'deyanyan6@gmail.com', 5, '2021-11-06 21:56:42', 1),
(7, '::1', 'deyanyan6@gmail.com', 5, '2021-11-06 22:01:31', 1),
(8, '::1', 'deyanyan6@gmail.com', 5, '2021-11-06 22:05:19', 1),
(9, '::1', 'deyanyan6@gmail.com', 5, '2021-11-06 22:05:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `sinopsis` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komik`
--

INSERT INTO `komik` (`id`, `sampul`, `judul`, `slug`, `penulis`, `sinopsis`, `created_at`, `updated_at`) VALUES
(1, 'naruto.jpg', 'Naruto Shipuden', 'naruto-shipuden', 'Mashahi Kisimoto', '-', NULL, NULL),
(2, 'aot.png', 'Attack On Titan', 'attack-on-titan', '-', '-', NULL, NULL),
(25, '1636169799_504955bef79f46be50f5.jpg', 'Sengoku Basa Heroes', 'sengoku-basa-heroes', '-', '-', '2021-11-05 22:36:39', '2021-11-05 22:36:39'),
(27, '1636174843_b8ff70ce9ccba2591b50.jpg', 'Captain Tsubasa', 'captain-tsubasa', '-', '-', '2021-11-06 00:00:43', '2021-11-06 00:00:43');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-11-06-050801', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1636175639, 1),
(2, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1636248747, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Lane Beer', '43430 Margot Viaduct\nPort Marquisshire, KS 19422', '2021-11-06 12:51:35', '2021-11-06 12:51:35'),
(2, 'Lewis Fisher III', '796 Hartmann Heights\nPacochaberg, AZ 39815-2859', '2021-11-06 12:51:35', '2021-11-06 12:51:35'),
(3, 'Shanna Howe', '517 Mercedes Neck Suite 457\nSouth Trenton, AL 60114', '2021-11-06 12:51:35', '2021-11-06 12:51:35'),
(4, 'Antonetta Hackett Sr.', '613 Oran Islands Apt. 731\nVirginiaburgh, AK 30652', '2021-11-06 12:51:35', '2021-11-06 12:51:35'),
(5, 'Mrs. Suzanne Marks', '44917 Bart Ranch\nNew Blairview, IL 11124', '2021-11-06 12:51:36', '2021-11-06 12:51:36'),
(6, 'Cary Wolf', '852 Marvin Corners\nBritneyfurt, VT 11455', '2021-11-06 12:51:36', '2021-11-06 12:51:36'),
(7, 'Melyssa Leuschke', '2044 Jane Camp\nNorth Hardymouth, NM 59366', '2021-11-06 12:51:36', '2021-11-06 12:51:36'),
(8, 'Ms. Catharine Towne', '43497 Abernathy Wells Apt. 514\nWest Marjory, WV 89760-9436', '2021-11-06 12:51:36', '2021-11-06 12:51:36'),
(9, 'Stanley Reilly', '31853 Champlin Port\nPort Johnnieberg, UT 86736', '2021-11-06 12:51:36', '2021-11-06 12:51:36'),
(10, 'Mrs. Esmeralda Larkin PhD', '9142 Lesch Grove\nWest Moriahbury, WV 70812', '2021-11-06 12:51:36', '2021-11-06 12:51:36'),
(11, 'Brooke Medhurst', '9347 Torrance Village Apt. 769\nAnkundingmouth, VA 19597-8387', '2021-11-06 12:51:36', '2021-11-06 12:51:36'),
(12, 'Nova Labadie', '81920 Reginald Shoals\nLake Esmeraldaside, SC 18734-9571', '2021-11-06 12:51:36', '2021-11-06 12:51:36'),
(13, 'Jedidiah Stehr', '66958 Bailey Radial Suite 391\nSouth Vincent, DE 64511', '2021-11-06 12:51:36', '2021-11-06 12:51:36'),
(14, 'Luella Brekke', '41399 Rosalyn Rue Suite 190\nKuhicberg, DC 74261-7654', '2021-11-06 12:51:36', '2021-11-06 12:51:36'),
(15, 'Leanne Bauch', '763 Corkery Walk Apt. 972\nNorth Malvina, MT 48624-8072', '2021-11-06 12:51:36', '2021-11-06 12:51:36'),
(16, 'Sabrina Fay', '13944 Zieme Turnpike Suite 684\nWest Barrett, UT 71195-4232', '2021-11-06 12:51:36', '2021-11-06 12:51:36'),
(17, 'Alyce Ratke', '84668 Grayce Prairie Apt. 013\nFeeneyburgh, LA 57784', '2021-11-06 12:51:36', '2021-11-06 12:51:36'),
(18, 'Vincent Weber', '343 Hazel Landing\nNorth Antonio, OK 88561', '2021-11-06 12:51:36', '2021-11-06 12:51:36'),
(19, 'Drew Bogan II', '53113 Wilderman Isle\nWest Celineshire, MS 54154-8064', '2021-11-06 12:51:36', '2021-11-06 12:51:36'),
(20, 'Omer Walker Jr.', '20180 Bernhard Forest Suite 423\nWest Brycenport, MI 94852', '2021-11-06 12:51:36', '2021-11-06 12:51:36'),
(21, 'Valentina Dickens', '93440 Tiara Wall\nThereseborough, NC 18322-4162', '2021-11-06 12:51:36', '2021-11-06 12:51:36'),
(22, 'Harmony Nolan', '88991 Gertrude Harbors\nWindlerfort, NC 99081-8803', '2021-11-06 12:51:36', '2021-11-06 12:51:36'),
(23, 'Alvis DuBuque II', '4498 Geraldine Vista\nSouth Delbertport, WV 28046-1436', '2021-11-06 12:51:36', '2021-11-06 12:51:36'),
(24, 'Prof. Davion Skiles', '52479 Reinger Islands Suite 588\nUrbantown, UT 40830-9569', '2021-11-06 12:51:36', '2021-11-06 12:51:36'),
(25, 'Vito Ryan', '4885 Reilly Fords Apt. 750\nNew Lula, LA 99300', '2021-11-06 12:51:36', '2021-11-06 12:51:36'),
(26, 'Mustafa Herzog', '48112 Senger Stream\nNew Betteberg, SC 76533', '2021-11-06 12:51:36', '2021-11-06 12:51:36'),
(27, 'Kaycee Runolfsdottir', '6746 Cielo Junction Suite 432\nNew Ociehaven, UT 75620', '2021-11-06 12:51:36', '2021-11-06 12:51:36'),
(28, 'Ike Mertz', '76025 Cory Lodge\nRatkeburgh, NY 69864-9557', '2021-11-06 12:51:36', '2021-11-06 12:51:36'),
(29, 'Miracle Hoeger I', '99803 Lenny View\nAuertown, WV 64006', '2021-11-06 12:51:36', '2021-11-06 12:51:36'),
(30, 'Dr. Issac O\'Connell MD', '6664 Howe Ways Apt. 260\nEddstad, ND 06297-6582', '2021-11-06 12:51:37', '2021-11-06 12:51:37'),
(31, 'Easton Connelly Sr.', '191 Braun Isle\nGradymouth, SD 64970', '2021-11-06 12:51:37', '2021-11-06 12:51:37'),
(32, 'Garfield Gislason Jr.', '27777 Hagenes Curve\nHarrisstad, DE 57704', '2021-11-06 12:51:37', '2021-11-06 12:51:37'),
(33, 'Ivah Powlowski', '734 Powlowski River\nSouth Avis, MS 42197-6504', '2021-11-06 12:51:37', '2021-11-06 12:51:37'),
(34, 'Dr. Okey Rolfson', '12143 D\'Amore Shores\nHudsonview, GA 66777', '2021-11-06 12:51:37', '2021-11-06 12:51:37'),
(35, 'Ursula Rempel', '481 Ebert Mills\nPurdychester, NH 37180', '2021-11-06 12:51:37', '2021-11-06 12:51:37'),
(36, 'Alexys Luettgen', '7153 Daniel Squares Apt. 243\nShirleyfort, AL 62569-3296', '2021-11-06 12:51:37', '2021-11-06 12:51:37'),
(37, 'Keeley Jakubowski III', '347 Crona Lakes\nStephonhaven, AK 80710-2429', '2021-11-06 12:51:37', '2021-11-06 12:51:37'),
(38, 'Mr. Beau Dibbert PhD', '291 Pouros Trafficway\nWest Ciaramouth, ID 37576-4397', '2021-11-06 12:51:37', '2021-11-06 12:51:37'),
(39, 'Reginald Reichel', '9243 Bogan Green\nBartellchester, WY 98773-3858', '2021-11-06 12:51:37', '2021-11-06 12:51:37'),
(40, 'Elyssa Leffler', '210 Jeanne Ford\nWizaport, PA 39639-3099', '2021-11-06 12:51:37', '2021-11-06 12:51:37'),
(41, 'Sarina Herzog', '69843 Amie View\nOrinberg, NH 62554', '2021-11-06 12:51:37', '2021-11-06 12:51:37'),
(42, 'Elliott Konopelski', '94270 Fahey Points Suite 362\nAnneport, NM 22803', '2021-11-06 12:51:37', '2021-11-06 12:51:37'),
(43, 'Lenny Ortiz', '538 Ewell Lights\nNorth Van, WY 10387-1663', '2021-11-06 12:51:37', '2021-11-06 12:51:37'),
(44, 'Dr. Vena McDermott IV', '2831 Hubert Drives Suite 021\nKeeblerberg, TX 46633', '2021-11-06 12:51:37', '2021-11-06 12:51:37'),
(45, 'Mr. Brain Lehner II', '145 Dell Springs\nLake Patville, HI 85986', '2021-11-06 12:51:37', '2021-11-06 12:51:37'),
(46, 'Ophelia Lehner MD', '429 Kevon Center Suite 417\nJaskolskiberg, NC 74422-6637', '2021-11-06 12:51:37', '2021-11-06 12:51:37'),
(47, 'Sammie Farrell', '102 Sofia Lodge Apt. 045\nEulaton, SC 85431', '2021-11-06 12:51:37', '2021-11-06 12:51:37'),
(48, 'Miss Tomasa Ernser', '944 Cydney Spurs Apt. 169\nSouth Stanley, AK 85841-5473', '2021-11-06 12:51:37', '2021-11-06 12:51:37'),
(49, 'Juana Schaden', '81818 Shayna Route Apt. 243\nFannychester, ID 04984', '2021-11-06 12:51:37', '2021-11-06 12:51:37'),
(50, 'Mariano Mante', '3616 Balistreri Bypass\nNew Antoinetteberg, NY 96128', '2021-11-06 12:51:37', '2021-11-06 12:51:37'),
(51, 'Brain Schulist DVM', '35934 Rath Estate\nNorth Chelsea, NE 29218', '2021-11-06 12:51:37', '2021-11-06 12:51:37'),
(52, 'Stuart Gutkowski DVM', '32779 Bartoletti Lights\nKallieside, WA 61563-7924', '2021-11-06 12:51:37', '2021-11-06 12:51:37'),
(53, 'Miss Joanny Miller Sr.', '595 Nellie Rapid Suite 111\nEmardmouth, KS 03540', '2021-11-06 12:51:37', '2021-11-06 12:51:37'),
(54, 'Mittie Parisian', '32718 Americo Lights\nWest Olen, TX 57616-0664', '2021-11-06 12:51:37', '2021-11-06 12:51:37'),
(55, 'Laurence Hartmann', '66024 Oberbrunner Mews Apt. 159\nDarenmouth, MI 15200-5399', '2021-11-06 12:51:38', '2021-11-06 12:51:38'),
(56, 'Mandy Schneider', '55941 Emery Underpass\nLolitabury, WY 74557', '2021-11-06 12:51:38', '2021-11-06 12:51:38'),
(57, 'Miss Abigayle Lynch III', '57239 Lisette Crossing Apt. 311\nEast Rettamouth, RI 87128-9931', '2021-11-06 12:51:38', '2021-11-06 12:51:38'),
(58, 'Cydney Cartwright', '8161 Maddison Burg\nSouth Dax, AZ 85742-1965', '2021-11-06 12:51:38', '2021-11-06 12:51:38'),
(59, 'Ahmed Smitham', '6277 Golden Ville\nEbertville, WA 49397', '2021-11-06 12:51:38', '2021-11-06 12:51:38'),
(60, 'Angeline Russel', '372 Erich Trafficway Apt. 166\nO\'Haratown, HI 78504', '2021-11-06 12:51:38', '2021-11-06 12:51:38'),
(61, 'Francisca Sporer', '75017 Dooley Forest Apt. 681\nDollybury, CA 98121-6617', '2021-11-06 12:51:38', '2021-11-06 12:51:38'),
(62, 'Ms. Matilde Schuppe V', '3032 Ayana Spurs Apt. 016\nAricton, MI 22716-4471', '2021-11-06 12:51:38', '2021-11-06 12:51:38'),
(63, 'Amaya Mosciski', '65444 Lyda Junctions Apt. 769\nKlingland, MO 14852-5375', '2021-11-06 12:51:38', '2021-11-06 12:51:38'),
(64, 'Prof. Kareem Lind DVM', '7693 Schaden Valleys\nMontyfurt, CO 32545-5399', '2021-11-06 12:51:38', '2021-11-06 12:51:38'),
(65, 'Dr. Raphael Pouros III', '8242 Metz Streets Apt. 685\nRaufort, FL 18142', '2021-11-06 12:51:38', '2021-11-06 12:51:38'),
(66, 'Sheldon Swaniawski', '7462 Albin Junction Apt. 082\nNew Jaymeland, RI 78556-2493', '2021-11-06 12:51:38', '2021-11-06 12:51:38'),
(67, 'Leanna Langworth MD', '6285 Stark Fords Apt. 367\nBeerburgh, ID 87872-3590', '2021-11-06 12:51:38', '2021-11-06 12:51:38'),
(68, 'Dr. Lennie Jerde III', '2571 Emilie Corner\nPort Ocie, NH 94123-9173', '2021-11-06 12:51:38', '2021-11-06 12:51:38'),
(69, 'Tomas Walsh', '372 Ila Motorway Apt. 976\nPadbergville, RI 15381', '2021-11-06 12:51:38', '2021-11-06 12:51:38'),
(70, 'Miss Rosemarie Koepp MD', '765 Katrina Vista\nSouth Donnieton, RI 37956-8051', '2021-11-06 12:51:38', '2021-11-06 12:51:38'),
(71, 'Ms. Yasmeen Lowe III', '4732 Ezequiel Mountains Apt. 803\nEast Alene, IA 65416-9466', '2021-11-06 12:51:38', '2021-11-06 12:51:38'),
(72, 'Turner Roob', '597 Orville Village\nLynnland, NH 03227', '2021-11-06 12:51:38', '2021-11-06 12:51:38'),
(73, 'Melissa Ebert', '68632 Schowalter Prairie Suite 609\nEast Jerrell, KS 51242-9658', '2021-11-06 12:51:38', '2021-11-06 12:51:38'),
(74, 'Dr. Everett Anderson', '672 Grant Isle\nWest Mack, WI 08887-1548', '2021-11-06 12:51:38', '2021-11-06 12:51:38'),
(75, 'Myra Krajcik', '35324 Hansen Motorway Suite 319\nKeeblerfurt, IL 64984-1163', '2021-11-06 12:51:38', '2021-11-06 12:51:38'),
(76, 'Prof. Murl Kirlin', '86833 Darrin Springs\nAlvisshire, DC 88350-6601', '2021-11-06 12:51:38', '2021-11-06 12:51:38'),
(77, 'Jeanne Beatty', '692 Danny Lake\nGibsonfurt, UT 65134', '2021-11-06 12:51:38', '2021-11-06 12:51:38'),
(78, 'River Crist', '23984 Bergstrom Mountain Suite 616\nEast Dawson, AK 71311', '2021-11-06 12:51:38', '2021-11-06 12:51:38'),
(79, 'Georgianna Barton DDS', '7251 Cormier Unions Apt. 046\nSwiftbury, KY 84996-9918', '2021-11-06 12:51:38', '2021-11-06 12:51:38'),
(80, 'Dr. Madelyn Walsh', '83657 Jermain Summit\nSouth Freemanfurt, OH 47005', '2021-11-06 12:51:39', '2021-11-06 12:51:39'),
(81, 'Adan Konopelski', '995 Dicki Tunnel\nWest Rosaleemouth, CT 03787-9501', '2021-11-06 12:51:39', '2021-11-06 12:51:39'),
(82, 'Prof. Van Casper', '8146 Johnston Point\nEast Adolph, TX 55472-6864', '2021-11-06 12:51:39', '2021-11-06 12:51:39'),
(83, 'Anibal Towne', '26244 Predovic Rapids\nAllieshire, VA 55838', '2021-11-06 12:51:39', '2021-11-06 12:51:39'),
(84, 'Prof. Graham Beahan MD', '37629 Mraz Locks\nLuettgenmouth, TX 71850', '2021-11-06 12:51:39', '2021-11-06 12:51:39'),
(85, 'Mrs. Janelle Bayer I', '9342 Steuber Brook Suite 796\nClintontown, MO 48413-8360', '2021-11-06 12:51:39', '2021-11-06 12:51:39'),
(86, 'Prof. Jairo Eichmann', '2326 Willms Crescent Apt. 443\nSouth Sienna, WV 45034-5916', '2021-11-06 12:51:39', '2021-11-06 12:51:39'),
(87, 'Margarette Zieme', '872 Carole Crossing\nJohnsonland, IN 40733-7215', '2021-11-06 12:51:39', '2021-11-06 12:51:39'),
(88, 'Jake Pfannerstill', '5886 Dean Run\nGoodwinville, OH 71212', '2021-11-06 12:51:39', '2021-11-06 12:51:39'),
(89, 'Derick Yundt', '319 Alvis Throughway Suite 545\nCrystelchester, NJ 32236-1794', '2021-11-06 12:51:39', '2021-11-06 12:51:39'),
(90, 'Mr. Sonny Jenkins', '482 McClure Drives Suite 727\nLake Nathenfort, KS 77302-3152', '2021-11-06 12:51:39', '2021-11-06 12:51:39'),
(91, 'Rosanna Ortiz', '37286 Melyna Street Suite 712\nKareemmouth, VT 69676-1386', '2021-11-06 12:51:39', '2021-11-06 12:51:39'),
(92, 'Harvey Gleason', '607 Haley Drive\nPort Hildegardbury, ME 35437', '2021-11-06 12:51:39', '2021-11-06 12:51:39'),
(93, 'Ocie Stamm', '9491 Annetta Springs Suite 136\nUrielhaven, CA 75028', '2021-11-06 12:51:39', '2021-11-06 12:51:39'),
(94, 'Chanelle Kemmer', '328 Tremblay Forge\nWest Arnulfoton, MO 86355-9764', '2021-11-06 12:51:39', '2021-11-06 12:51:39'),
(95, 'Llewellyn Kilback Sr.', '4206 Emard Courts\nLake Desiree, CA 86677-3288', '2021-11-06 12:51:39', '2021-11-06 12:51:39'),
(96, 'Maud Buckridge', '8475 Cordia Land\nPort Laviniashire, NJ 87238-0220', '2021-11-06 12:51:39', '2021-11-06 12:51:39'),
(97, 'Carolina Pagac', '7103 Erika Landing\nSouth Geostad, KS 38935', '2021-11-06 12:51:39', '2021-11-06 12:51:39'),
(98, 'Alexis Welch', '4426 Welch Hill Suite 961\nSporerville, NV 80622', '2021-11-06 12:51:39', '2021-11-06 12:51:39'),
(99, 'Harley Robel', '213 Donavon Mills\nEast Jocelyn, MD 72008-3810', '2021-11-06 12:51:39', '2021-11-06 12:51:39'),
(100, 'Mercedes Macejkovic', '4281 Rey Loop\nRodrigomouth, WI 55218-8463', '2021-11-06 12:51:39', '2021-11-06 12:51:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'deyanyan6@gmail.com', 'deyanyan', '$2y$10$8xxT5WC3ifR0sCUzRhPApeHRdP0I9qou5WWHTONgvTqXux9jPgLPS', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-11-06 21:55:28', '2021-11-06 21:55:58', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
