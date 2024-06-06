-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2023 at 04:37 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodpedia_cafe`
--

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
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `slug`, `nama`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'beverages', 'Beverages', 'Minuman', NULL, NULL),
(2, 'boba-tea', 'Boba Tea', 'Minuman Boba', NULL, NULL),
(3, 'foodpedia', 'Foodpedia', 'Makanan dari foodpedia', NULL, NULL),
(4, 'nusantara', 'Nusantara', 'Menu dari khas Nusantara', NULL, NULL),
(5, 'snack', 'Snack', 'Cemilan', NULL, NULL),
(6, 'western', 'Western', 'Makanan modern', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `keranjangs`
--

CREATE TABLE `keranjangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_nama` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keranjangs`
--

INSERT INTO `keranjangs` (`id`, `product_nama`, `quantity`, `price`, `status`, `created_at`, `updated_at`, `user_id`, `tanggal`) VALUES
(19, 'Black Tea Macchiato', 1, 15, 1, '2023-06-20 23:46:16', '2023-06-20 23:46:33', 8, '2023-06-21'),
(20, 'Green Tea Macchiato', 1, 15, 1, '2023-06-21 00:10:16', '2023-06-21 00:10:26', 8, '2023-06-21');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `pesan` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id`, `email`, `pesan`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'marioandreas263@gmail.com', 'Makanan disini enak', 1, '2023-06-20 08:38:21', '2023-06-20 08:38:21'),
(2, 'kenan@test.com', 'tidak enak', 5, '2023-06-20 19:44:15', '2023-06-20 19:44:15'),
(3, 'arthurgenius095@gmail.com', 'Karena ini website pacarku jadi, ini cukup menarik dan saya tertarik jika website ini dihosting pasti saya bakalan pesan melalui website ini', 6, '2023-06-20 19:52:02', '2023-06-20 19:52:02'),
(4, 'hansagung19@gmail.com', 'Artinya apa bang messi?', 1, '2023-06-20 20:32:13', '2023-06-20 20:32:13'),
(5, 'marioandreas263@gmail.com', 'bang luis ganteng', 1, '2023-06-20 20:32:42', '2023-06-20 20:32:42'),
(6, 'hansagung19@gmail.com', 'test', 1, '2023-06-20 20:57:59', '2023-06-20 20:57:59'),
(7, 'maudyjuntak@gmail.com', 'makanan nya enak enak', 8, '2023-06-20 23:47:03', '2023-06-20 23:47:03');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_22_130813_create_kategori_table', 1),
(6, '2023_05_24_072608_create_post_table', 1),
(7, '2023_05_29_135425_create_keranjangs_table', 1),
(8, '2023_05_30_130750_create_komentar_table', 1),
(9, '2023_06_06_072139_create_reservasi_table', 1),
(10, '2023_06_08_014023_add_status_to_keranjangs_table', 1),
(11, '2023_06_08_181042_add_tanggal_to_keranjangs', 1),
(12, '2023_06_11_080251_create_notifications_table', 1),
(13, '2023_06_20_062313_add_user_id_to_reservasi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pesan` text NOT NULL,
  `pengirim` varchar(255) NOT NULL,
  `penerima` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'unread',
  `sent_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `pesan`, `pengirim`, `penerima`, `status`, `sent_at`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Reservasi Baru.', 'system', 'admin', 'read', '2023-06-20 02:18:01', NULL, '2023-06-20 02:18:01', '2023-06-20 02:18:01'),
(2, 'Reservasi Baru.', 'system', 'admin', 'read', '2023-06-20 02:31:47', NULL, '2023-06-20 02:31:47', '2023-06-20 02:31:47'),
(4, 'Reservasi Baru.', 'system', 'admin', 'read', '2023-06-20 02:35:18', NULL, '2023-06-20 02:35:18', '2023-06-20 02:35:18'),
(5, 'Reservaasi Anda Diterima.', 'system', '3', 'read', '2023-06-20 02:35:36', NULL, '2023-06-20 02:35:36', '2023-06-20 02:35:36'),
(6, 'Pesanan Baru.', 'system', 'admin', 'unread', '2023-06-20 07:06:39', NULL, '2023-06-20 07:06:39', '2023-06-20 07:06:39'),
(7, 'Pesanan Anda telah di-approve.', 'system', '3', 'read', '2023-06-20 07:07:28', NULL, '2023-06-20 07:07:28', '2023-06-20 07:07:28'),
(8, 'Reservasi Baru.', 'system', 'admin', 'unread', '2023-06-20 07:08:38', NULL, '2023-06-20 07:08:38', '2023-06-20 07:08:38'),
(9, 'Reservasi Anda Diterima.', 'system', '3', 'read', '2023-06-20 08:02:02', NULL, '2023-06-20 08:02:02', '2023-06-20 08:02:02'),
(10, 'Pesanan Baru.', 'system', 'admin', 'unread', '2023-06-20 19:28:48', NULL, '2023-06-20 19:28:48', '2023-06-20 19:28:48'),
(11, 'Pesanan Baru.', 'system', 'admin', 'unread', '2023-06-20 19:42:03', NULL, '2023-06-20 19:42:03', '2023-06-20 19:42:03'),
(12, 'Pesanan Baru.', 'system', 'admin', 'unread', '2023-06-20 19:42:25', NULL, '2023-06-20 19:42:25', '2023-06-20 19:42:25'),
(13, 'Pesanan Baru.', 'system', 'admin', 'unread', '2023-06-20 19:48:33', NULL, '2023-06-20 19:48:33', '2023-06-20 19:48:33'),
(14, 'Reservasi Baru.', 'system', 'admin', 'unread', '2023-06-20 19:50:42', NULL, '2023-06-20 19:50:42', '2023-06-20 19:50:42'),
(15, 'Pesanan Baru.', 'system', 'admin', 'unread', '2023-06-20 20:16:45', NULL, '2023-06-20 20:16:45', '2023-06-20 20:16:45'),
(16, 'Pesanan Baru.', 'system', 'admin', 'unread', '2023-06-20 20:25:55', NULL, '2023-06-20 20:25:55', '2023-06-20 20:25:55'),
(17, 'Pesanan Baru.', 'system', 'admin', 'unread', '2023-06-20 20:31:18', NULL, '2023-06-20 20:31:18', '2023-06-20 20:31:18'),
(18, 'Pesanan Baru.', 'system', 'admin', 'unread', '2023-06-20 20:33:33', NULL, '2023-06-20 20:33:33', '2023-06-20 20:33:33'),
(19, 'Pesanan Baru.', 'system', 'admin', 'unread', '2023-06-20 20:38:53', NULL, '2023-06-20 20:38:53', '2023-06-20 20:38:53'),
(20, 'Reservasi Anda Diterima.', 'system', '6', 'unread', '2023-06-20 20:40:44', NULL, '2023-06-20 20:40:44', '2023-06-20 20:40:44'),
(21, 'Reservasi Baru.', 'system', 'admin', 'unread', '2023-06-20 20:49:40', NULL, '2023-06-20 20:49:40', '2023-06-20 20:49:40'),
(22, 'Reservasi Anda Ditolak.', 'system', '$reservasi->user_id', 'unread', '2023-06-20 20:50:18', NULL, '2023-06-20 20:50:18', '2023-06-20 20:50:18'),
(23, 'Reservasi Baru.', 'system', 'admin', 'unread', '2023-06-20 20:56:48', NULL, '2023-06-20 20:56:48', '2023-06-20 20:56:48'),
(24, 'Reservasi Anda Diterima.', 'system', '1', 'unread', '2023-06-20 20:57:08', NULL, '2023-06-20 20:57:08', '2023-06-20 20:57:08'),
(25, 'Pesanan Baru.', 'system', 'admin', 'unread', '2023-06-20 20:58:47', NULL, '2023-06-20 20:58:47', '2023-06-20 20:58:47'),
(26, 'Pesanan Baru.', 'system', 'admin', 'unread', '2023-06-20 20:58:58', NULL, '2023-06-20 20:58:58', '2023-06-20 20:58:58'),
(27, 'Pesanan Baru.', 'system', 'admin', 'unread', '2023-06-20 20:59:17', NULL, '2023-06-20 20:59:17', '2023-06-20 20:59:17'),
(28, 'Reservasi Baru.', 'system', 'admin', 'unread', '2023-06-20 21:09:48', NULL, '2023-06-20 21:09:48', '2023-06-20 21:09:48'),
(29, 'Pesanan Baru.', 'system', 'admin', 'unread', '2023-06-20 21:23:42', NULL, '2023-06-20 21:23:42', '2023-06-20 21:23:42'),
(30, 'Pesanan Baru.', 'system', 'admin', 'unread', '2023-06-20 21:47:04', NULL, '2023-06-20 21:47:04', '2023-06-20 21:47:04'),
(31, 'Pesanan Baru.', 'system', 'admin', 'unread', '2023-06-20 21:59:57', NULL, '2023-06-20 21:59:57', '2023-06-20 21:59:57'),
(32, 'Pesanan Anda telah di-approve.', 'system', '7', 'read', '2023-06-20 22:00:20', NULL, '2023-06-20 22:00:20', '2023-06-20 22:00:20'),
(33, 'Pesanan Baru.', 'system', 'admin', 'unread', '2023-06-20 22:03:16', NULL, '2023-06-20 22:03:16', '2023-06-20 22:03:16'),
(34, 'Pesanan Anda telah di-approve.', 'system', '7', 'read', '2023-06-20 22:03:28', NULL, '2023-06-20 22:03:28', '2023-06-20 22:03:28'),
(35, 'Pesanan Anda telah di-approve.', 'system', '5', 'unread', '2023-06-20 22:08:43', NULL, '2023-06-20 22:08:43', '2023-06-20 22:08:43'),
(36, 'Reservasi Baru.', 'system', 'admin', 'unread', '2023-06-20 23:43:55', NULL, '2023-06-20 23:43:55', '2023-06-20 23:43:55'),
(37, 'Reservasi Anda Diterima.', 'system', '8', 'unread', '2023-06-20 23:45:28', NULL, '2023-06-20 23:45:28', '2023-06-20 23:45:28'),
(38, 'Pesanan Baru.', 'system', 'admin', 'unread', '2023-06-20 23:45:55', NULL, '2023-06-20 23:45:55', '2023-06-20 23:45:55'),
(39, 'Pesanan Baru.', 'system', 'admin', 'unread', '2023-06-20 23:46:16', NULL, '2023-06-20 23:46:16', '2023-06-20 23:46:16'),
(40, 'Pesanan Anda telah di-approve.', 'system', '8', 'unread', '2023-06-20 23:46:33', NULL, '2023-06-20 23:46:33', '2023-06-20 23:46:33'),
(41, 'Pesanan Baru.', 'system', 'admin', 'unread', '2023-06-21 00:10:16', NULL, '2023-06-21 00:10:16', '2023-06-21 00:10:16'),
(42, 'Pesanan Anda telah di-approve.', 'system', '8', 'unread', '2023-06-21 00:10:26', NULL, '2023-06-21 00:10:26', '2023-06-21 00:10:26');

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
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `price` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `nama`, `slug`, `deskripsi`, `price`, `thumbnail`, `kategori_id`, `created_at`, `updated_at`) VALUES
(4, 'Spicy Chicken Wings', 'spicy-chicken-wings', '12', '21.000', '1687273639.jpg', 6, '2023-06-20 08:07:19', '2023-06-20 08:07:19'),
(5, 'Beef Kebab', 'beef-kebab', '12', '19.000', '1687273669.jpg', 6, '2023-06-20 08:07:49', '2023-06-20 08:07:49'),
(6, 'Chicken Kebab', 'chicken-kebab', 'w', '19.000', '1687273697.jpg', 6, '2023-06-20 08:08:17', '2023-06-20 08:08:17'),
(7, 'Cheese Quesadilla', 'cheese-quesadilla', '12', '19.000', '1687273755.jpg', 6, '2023-06-20 08:09:15', '2023-06-20 08:09:15'),
(8, 'Spaghetti Agilio-Olio', 'spaghetti-agilio-olio', '21', '20.000', '1687273806.jpg', 6, '2023-06-20 08:10:06', '2023-06-20 08:10:06'),
(9, 'Spaghetti Napolitan', 'spaghetti-napolitan', '12', '20.000', '1687273853.jpg', 6, '2023-06-20 08:10:53', '2023-06-20 08:10:53'),
(10, 'Spaghetti Carbonara', 'spaghetti-carbonara', '12', '25.000', '1687273891.jpg', 6, '2023-06-20 08:11:31', '2023-06-20 08:11:31'),
(11, 'Spaghetti Bolognese', 'spaghetti-bolognese', '12', '25.000', '1687273934.jpg', 6, '2023-06-20 08:12:14', '2023-06-20 08:12:14'),
(12, 'Ayam Djontar', 'ayam-djontar', '2', '17.000', '1687274104.jpg', 6, '2023-06-20 08:15:04', '2023-06-20 08:15:04'),
(13, 'Ayam Geprek', 'ayam-geprek', 'ad', '17.000', '1687274155.jpg', 6, '2023-06-20 08:15:55', '2023-06-20 08:15:55'),
(14, 'Nasi Pedia 1', 'nasi-pedia-1', 'ad', '10.000', '1687274181.jpg', 3, '2023-06-20 08:16:21', '2023-06-20 08:16:21'),
(15, 'Nasi Pedia 2', 'nasi-pedia-2', 'qs', '15.000', '1687274206.jpg', 3, '2023-06-20 08:16:46', '2023-06-20 08:16:46'),
(16, 'Nasi Pedia 3', 'nasi-pedia-3', 'as', '17.000', '1687274229.jpg', 3, '2023-06-20 08:17:09', '2023-06-20 08:17:09'),
(17, 'Nasi Goreng Seafood', 'nasi-goreng-seafood', 's', '20.000', '1687274269.jpg', 3, '2023-06-20 08:17:49', '2023-06-20 08:17:49'),
(18, 'Nasi Pedia  Special', 'nasi-pedia-special', 'j', '25.000', '1687274307.jpg', 3, '2023-06-20 08:18:27', '2023-06-20 08:18:27'),
(19, 'Menu Paker Djantor', 'menu-paker-djantor', 'j', '17.000', '1687274369.jpg', 3, '2023-06-20 08:19:29', '2023-06-20 08:19:29'),
(20, 'Menu Paket Sambal Matah', 'menu-paket-sambal-matah', 'a', '17.000', '1687274414.jpg', 3, '2023-06-20 08:20:14', '2023-06-20 08:20:14'),
(21, 'Menu Paket Acar Kuning', 'menu-paket-acar-kuning', 'as', '17.000', '1687274442.jpg', 3, '2023-06-20 08:20:42', '2023-06-20 08:20:42'),
(22, 'Ikan Asam Manis', 'ikan-asam-manis', 'da', '25.000', '1687274469.jpg', 3, '2023-06-20 08:21:09', '2023-06-20 08:21:09'),
(23, 'Ikan Tauco', 'ikan-tauco', 'a', '25.000', '1687274493.jpg', 3, '2023-06-20 08:21:33', '2023-06-20 08:21:33'),
(24, 'Roti Bakar Coklat', 'roti-bakar-coklat', '1', '13.000', '1687274646.jpg', 5, '2023-06-20 08:24:06', '2023-06-20 08:24:06'),
(25, 'Roti Bakar Kacang', 'roti-bakar-kacang', 'n', '13.000', '1687274704.jpg', 5, '2023-06-20 08:25:04', '2023-06-20 08:25:04'),
(26, 'Roti Bakar Strawberry', 'roti-bakar-strawberry', 'w', '13.000', '1687274802.jpg', 5, '2023-06-20 08:26:42', '2023-06-20 08:26:42'),
(27, 'Roti Bakar Keju', 'roti-bakar-keju', 'q', '15.000', '1687274833.jpg', 5, '2023-06-20 08:27:13', '2023-06-20 08:27:13'),
(28, 'Tahu Crispy', 'tahu-crispy', 'a', '10.000', '1687274868.jpg', 5, '2023-06-20 08:27:48', '2023-06-20 08:27:48'),
(29, 'Tempe Crispy', 'tempe-crispy', 'd', '10.000', '1687274910.jpg', 5, '2023-06-20 08:28:30', '2023-06-20 08:28:30'),
(30, 'Tempe Mercon', 'tempe-mercon', 'wf', '10.000', '1687274946.jpg', 5, '2023-06-20 08:29:06', '2023-06-20 08:29:06'),
(31, 'Onion Rings (OR)', 'onion-rings-or', 'ad', '12.000', '1687274978.jpg', 5, '2023-06-20 08:29:38', '2023-06-20 08:29:38'),
(32, 'French Fries (FR)', 'french-fries-fr', 'as', '15.000', '1687275003.jpg', 5, '2023-06-20 08:30:03', '2023-06-20 08:30:03'),
(33, 'Sosis Bakar & Onion Rings', 'sosis-bakar-onion-rings', 'da', '17.000', '1687275041.jpg', 5, '2023-06-20 08:30:41', '2023-06-20 08:30:41'),
(34, 'Sosis Bakar & French Fries', 'sosis-bakar-french-fries', 'd', '18.000', '1687275068.jpg', 5, '2023-06-20 08:31:08', '2023-06-20 08:31:08'),
(35, 'Original Burger & OR', 'original-burger-or', 'eq', '18.000', '1687275155.jpg', 6, '2023-06-20 08:32:35', '2023-06-20 08:37:52'),
(36, 'Cheese Burger & FF', 'cheese-burger-ff', 'w', '19.000', '1687275207.jpg', 6, '2023-06-20 08:33:27', '2023-06-20 08:37:36'),
(37, 'Double Original Burger & OR', 'double-original-burger-or', '2', '25.000', '1687275259.jpg', 6, '2023-06-20 08:34:19', '2023-06-20 08:37:05'),
(38, 'Sapi Lada Hitam', 'sapi-lada-hitam', '12', '27.000', '1687275565.jpg', 4, '2023-06-20 08:39:25', '2023-06-20 08:39:25'),
(39, 'Sop Buntut', 'sop-buntut', 'qw', '85.000', '1687275594.jpg', 4, '2023-06-20 08:39:54', '2023-06-20 08:39:54'),
(40, 'Sop Iga Bakar', 'sop-iga-bakar', 'sa', '85.000', '1687275625.jpg', 4, '2023-06-20 08:40:25', '2023-06-20 08:40:25'),
(41, 'Hotplate Miego', 'hotplate-miego', 'wd', '20.000', '1687275690.jpg', 4, '2023-06-20 08:41:30', '2023-06-20 08:41:30'),
(42, 'Hotplate Noodle', 'hotplate-noodle', 'wq', '25.000', '1687275731.jpg', 4, '2023-06-20 08:42:11', '2023-06-20 08:42:11'),
(43, 'Hotplate Rice', 'hotplate-rice', 'as', '25.000', '1687275848.jpg', 4, '2023-06-20 08:44:08', '2023-06-20 08:44:08'),
(44, 'Capcay Goreng', 'capcay-goreng', 'sa', '15.000', '1687275874.jpg', 4, '2023-06-20 08:44:34', '2023-06-20 08:44:34'),
(45, 'Toge Ikan Asin', 'toge-ikan-asin', 'as', '15.000', '1687275916.jpg', 4, '2023-06-20 08:45:16', '2023-06-20 08:45:16'),
(46, 'Gado-gado', 'gado-gado', 'as', '20.000', '1687275939.jpg', 4, '2023-06-20 08:45:39', '2023-06-20 08:45:39'),
(47, 'Indomie Rebus + Telur', 'indomie-rebus-telur', 'qew', '7.000', '1687276017.jpg', 4, '2023-06-20 08:46:57', '2023-06-20 08:46:57'),
(48, 'Indomie Goreng + Telur', 'indomie-goreng-telur', 'da', '10.000', '1687276041.jpg', 4, '2023-06-20 08:47:21', '2023-06-20 08:47:21'),
(49, 'Indomie Rebus Spesial', 'indomie-rebus-spesial', 'sa', '15.000', '1687276079.jpg', 4, '2023-06-20 08:47:59', '2023-06-20 08:47:59'),
(50, 'Indomie Goreng Spesial', 'indomie-goreng-spesial', 'da', '15.000', '1687276102.jpg', 4, '2023-06-20 08:48:22', '2023-06-20 08:48:22'),
(51, 'Strawberry Majitos', 'strawberry-majitos', 'wq', '13.000', '1687276165.jpg', 1, '2023-06-20 08:49:25', '2023-06-20 08:49:25'),
(52, 'Orange Macchiato', 'orange-macchiato', 'da', '13.000', '1687276203.jpg', 1, '2023-06-20 08:50:03', '2023-06-20 08:50:03'),
(53, 'Lychee Majitos', 'lychee-majitos', 'wdq', '13.000', '1687276279.jpg', 1, '2023-06-20 08:51:19', '2023-06-20 08:51:19'),
(54, 'Chocalate Milkshake', 'chocalate-milkshake', 'ad', '17.000', '1687276303.jpg', 1, '2023-06-20 08:51:43', '2023-06-20 08:51:43'),
(55, 'Vanila Milshake', 'vanila-milshake', 'ds', '17.000', '1687276333.jpg', 1, '2023-06-20 08:52:13', '2023-06-20 08:52:13'),
(56, 'Milo Milshake', 'milo-milshake', 'ws', '17.000', '1687276382.jpg', 1, '2023-06-20 08:53:02', '2023-06-20 08:53:02'),
(60, 'Black Tea Macchiato', 'black-tea-macchiato', 'as', '15.000', '1687276455.jpg', 2, '2023-06-20 08:54:15', '2023-06-20 08:54:15'),
(61, 'Green Tea Macchiato', 'green-tea-macchiato', 'qw', '15.000', '1687276483.jpg', 2, '2023-06-20 08:54:43', '2023-06-20 08:54:43'),
(62, 'Honey Earl Grey Macchiato', 'honey-earl-grey-macchiato', 'da', '18.000', '1687276529.jpg', 2, '2023-06-20 08:55:29', '2023-06-20 08:55:29'),
(63, 'Brown Sugar Boba Milk', 'brown-sugar-boba-milk', 'AS', '18.000', '1687276555.jpg', 2, '2023-06-20 08:55:55', '2023-06-20 08:55:55'),
(64, 'Brown Sugar Boba Milk Tea', 'brown-sugar-boba-milk-tea', 'aas', '18.000', '1687276574.jpg', 2, '2023-06-20 08:56:14', '2023-06-20 08:56:14'),
(65, 'Saited Caramel Boba Milk', 'saited-caramel-boba-milk', 'a', '22.000', '1687276601.jpg', 2, '2023-06-20 08:56:41', '2023-06-20 08:56:41');

-- --------------------------------------------------------

--
-- Table structure for table `reservasi`
--

CREATE TABLE `reservasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `tanggal_event` date NOT NULL,
  `waktu_event` time NOT NULL,
  `medsos` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `event` varchar(255) NOT NULL,
  `jumlah_anggota` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Belum Diapprove',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservasi`
--

INSERT INTO `reservasi` (`id`, `name`, `tanggal_event`, `waktu_event`, `medsos`, `address`, `phone`, `event`, `jumlah_anggota`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(9, 'maudy octavia', '2023-06-21', '06:42:00', 'maudyjuntak@gmail.com', 'balige', '0812468548', 'Arisan', 30, 'Approved', 8, '2023-06-20 23:43:55', '2023-06-20 23:45:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','pelanggan') NOT NULL DEFAULT 'pelanggan',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Mario Manurung', 'marioandreas263@gmail.com', '$2y$10$uVf1oPlBkejHUg7Z0PYJzeHp2AiEuTVIYvkX12KpUwKrBFuZKV/Qi', 'pelanggan', '2023-06-20 02:16:58', '2023-06-20 02:16:58'),
(2, 'Numero Sada', 'numerosada@gmail.com', '$2y$10$pzronTAqpzOmePBrNQZxCe.u/YC4rH8shERxTSTLl/IapjD8GaIYK', 'admin', '2023-06-20 02:19:20', '2023-06-20 02:19:20'),
(3, 'Sabar Martua Tamba', 'sabarmartuatamba@gmail.com', '$2y$10$9LCMXfdYmi8XLcUrJXcczuXPDCkjMp6N5/WecsUtmY8D6igwWBW9O', 'pelanggan', '2023-06-20 02:30:37', '2023-06-20 02:30:37'),
(5, 'kenan', 'kenan@test.com', '$2y$10$BX0b9saSTEjmrUA/Mloz5.paSEbdTfR7MSeiOsxcNzGRdl6fuKDvO', 'pelanggan', '2023-06-20 19:40:52', '2023-06-20 19:40:52'),
(6, 'Nita', 'Nitasimangunsong1@gmail.com', '$2y$10$vevlMJVV2rXJd7KK49ViRud130g5KP6zrJ1c41abn5PHpgpR4lZ36', 'pelanggan', '2023-06-20 19:46:57', '2023-06-20 19:46:57'),
(7, 'niel', 'niel@gmail.com', '$2y$10$D2pnqLc81BZsbhMXj0i8CeLvHVkqMzVio17PrqA/r.gjQ4fRR8uDC', 'pelanggan', '2023-06-20 21:22:30', '2023-06-20 21:22:30'),
(8, 'maudy', 'maudy@gmail.com', '$2y$10$ro36i0bAJ2PqKcQB1rUwaOis4u4blmei1aeNgwgfCBd/CJ7j2BY32', 'pelanggan', '2023-06-20 23:42:09', '2023-06-20 23:42:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kategori_slug_unique` (`slug`);

--
-- Indexes for table `keranjangs`
--
ALTER TABLE `keranjangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keranjangs_user_id_foreign` (`user_id`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komentar_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_slug_unique` (`slug`),
  ADD KEY `post_kategori_id_foreign` (`kategori_id`);

--
-- Indexes for table `reservasi`
--
ALTER TABLE `reservasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservasi_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `keranjangs`
--
ALTER TABLE `keranjangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `reservasi`
--
ALTER TABLE `reservasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `keranjangs`
--
ALTER TABLE `keranjangs`
  ADD CONSTRAINT `keranjangs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`);

--
-- Constraints for table `reservasi`
--
ALTER TABLE `reservasi`
  ADD CONSTRAINT `reservasi_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
