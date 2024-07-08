-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2024 at 12:35 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'odio', 'Eum blanditiis dicta occaecati non dolorem tempora voluptas velit. Consequatur eius ea repellat sed sit. Sit eum illum est rerum provident quaerat id. Quo explicabo et aut et et iste nisi quasi.', '2024-07-06 20:27:49', '2024-07-06 20:27:49'),
(2, 'eaque', 'Est minima blanditiis non aut in placeat. In libero autem autem. Quibusdam aut non fuga nostrum natus esse quas. Labore sequi doloremque voluptatibus architecto ipsam. Sequi et sunt ipsum beatae molestiae in quidem ad.', '2024-07-06 20:27:49', '2024-07-06 20:27:49'),
(3, 'qui', 'Dolores autem velit dicta neque ut odio. Molestiae qui quis dolor. Debitis ipsa voluptate aliquam ipsa. Dolorum laborum distinctio voluptatibus et repudiandae perspiciatis.', '2024-07-06 20:27:49', '2024-07-06 20:27:49'),
(4, 'tempora', 'Ipsum et qui sunt quod suscipit dolorem. Laboriosam et omnis esse et sapiente delectus. Repellat voluptate aut perspiciatis possimus quis aut. Sit explicabo quaerat voluptatem voluptates omnis qui corporis.', '2024-07-06 20:27:49', '2024-07-06 20:27:49'),
(5, 'aut', 'Corrupti quis dolores iure magni. Quia possimus laudantium eaque cumque. Voluptatem cumque soluta et nemo ut ea. Ea vero voluptas qui voluptates. Molestiae eos est ad voluptas quibusdam. Odio velit est recusandae autem ut dolor ut.', '2024-07-06 20:27:49', '2024-07-06 20:27:49'),
(6, 'nobis', 'Velit minus excepturi nihil modi. In saepe vel natus suscipit amet saepe facilis. Sit sit sed in consequuntur sed in. Quasi et aut perferendis hic quos.', '2024-07-06 20:27:49', '2024-07-06 20:27:49'),
(7, 'nihil', 'Dolor voluptas quia delectus est. Rem vero ab culpa in ullam aliquid aperiam natus. Ea quia non voluptatem in dolorem. Et delectus commodi odit sit nihil.', '2024-07-06 20:27:49', '2024-07-06 20:27:49'),
(8, 'ipsam', 'Non repellendus itaque recusandae aliquid facere asperiores nemo. Est perferendis dolore quasi consequuntur in. Ut dolor voluptas alias eos. Quo sint quam assumenda temporibus omnis illum incidunt.', '2024-07-06 20:27:49', '2024-07-06 20:27:49'),
(9, 'dolores', 'Sit sit dicta laboriosam. Est aperiam ut autem ipsa. Rem quae ut quasi maxime temporibus accusamus. Sit maiores ut similique quasi aut ipsa. Enim eum accusamus perferendis molestiae odit et. Modi aspernatur dolores qui et omnis.', '2024-07-06 20:27:49', '2024-07-06 20:27:49'),
(10, 'sunt', 'Harum velit fugit aliquid non voluptatem ipsum praesentium. Consequatur corporis tempore alias. Quia perferendis in labore.', '2024-07-06 20:27:49', '2024-07-06 20:27:49'),
(11, 'Meeting', 'Your meetings', '2024-07-06 20:32:01', '2024-07-06 20:32:01');

-- --------------------------------------------------------

--
-- Table structure for table `desks`
--

CREATE TABLE `desks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `desks`
--

INSERT INTO `desks` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Garment Department', '2024-07-06 20:27:49', '2024-07-06 20:27:49'),
(2, 'Healthcare Department', '2024-07-06 20:27:49', '2024-07-06 20:27:49'),
(3, 'Marketing VP Department', '2024-07-06 20:27:49', '2024-07-06 20:27:49'),
(4, 'Audio-Visual Collections Specialist Department', '2024-07-06 20:27:49', '2024-07-06 20:27:49'),
(5, 'Order Filler Department', '2024-07-06 20:27:49', '2024-07-06 20:27:49'),
(6, 'Dentist Department', '2024-07-06 20:27:49', '2024-07-06 20:27:49'),
(7, 'Pharmacist Department', '2024-07-06 20:27:49', '2024-07-06 20:27:49'),
(8, 'Gas Distribution Plant Operator Department', '2024-07-06 20:27:49', '2024-07-06 20:27:49'),
(9, 'Radiologic Technologist and Technician Department', '2024-07-06 20:27:49', '2024-07-06 20:27:49'),
(10, 'Municipal Court Clerk Department', '2024-07-06 20:27:49', '2024-07-06 20:27:49'),
(11, 'Test katedra', '2024-07-06 20:30:52', '2024-07-06 20:30:52'),
(12, 'Elektronsko poslovanje', '2024-07-06 20:31:04', '2024-07-06 20:31:04');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `date`, `created_at`, `updated_at`, `category_id`, `user_id`) VALUES
(1, 'Optio rerum odio sed ex fugiat atque et.', 'Ut officiis harum soluta asperiores aliquid. Qui unde ipsum dolorem distinctio voluptas necessitatibus quia. Quod culpa quis consectetur repellat inventore ut.', '2024-07-04', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 1, 1),
(2, 'Ut iure odio quia sapiente quas placeat ut.', 'Blanditiis pariatur recusandae earum excepturi at nesciunt. Exercitationem tempora fugit ut sunt ad in quia voluptas.', '2025-05-20', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 2, 2),
(3, 'Facere adipisci suscipit cum dolor cumque.', 'Autem rerum nulla rerum possimus sequi ipsum accusantium. Repudiandae aspernatur dolor similique sit non blanditiis et. Aut nostrum velit enim sint veritatis quas voluptate reprehenderit.', '2025-01-09', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 3, 3),
(4, 'Recusandae aut tempore quae beatae harum aut non aut illo.', 'Itaque ut praesentium voluptatum. Eos enim qui aut voluptas voluptate. Quia officiis sed consequuntur non cum deserunt. Sint at quo dolorem quos reprehenderit ex rerum.', '2024-01-02', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 4, 4),
(5, 'Iure quia quaerat id eaque et molestiae ex.', 'Voluptas quo pariatur voluptatem quia in autem aliquid. Necessitatibus sit quos natus ea vel molestiae. Voluptatibus qui aut exercitationem quo aut.', '2024-03-29', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 5, 5),
(6, 'Uvod u elektronsko poslovanje', 'Osnovni koncepti elektronskog poslovanja i trendova u industriji - predavanje', '2010-10-24', '2024-07-06 20:32:29', '2024-07-06 20:33:58', 6, 101);

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_06_202909_create_desks_table', 1),
(6, '2024_07_06_202940_create_categories_table', 1),
(7, '2024_07_06_203000_create_events_table', 1),
(8, '2024_07_06_203031_add_desk_id_to_users_table', 1),
(9, '2024_07_06_203048_add_category_id_to_event_table', 1),
(10, '2024_07_06_203113_add_user_id_to_event_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 101, 'auth_token', '7c4a73a9e2eda5d2d2af3d6f59030cd42d0a19cf6fa70264ff526e1a3d239424', '[\"*\"]', NULL, NULL, '2024-07-06 20:28:35', '2024-07-06 20:28:35'),
(2, 'App\\Models\\User', 102, 'auth_token', 'f74190e762b129928cba59369e5c94220fb659837eb851707e8f697b8414beef', '[\"*\"]', NULL, NULL, '2024-07-06 20:29:21', '2024-07-06 20:29:21'),
(3, 'App\\Models\\User', 102, 'auth_token', 'fa0551a385ce1df4c8651662af781c1898452f6158bead0e27c146112df52f99', '[\"*\"]', '2024-07-06 20:33:58', NULL, '2024-07-06 20:29:30', '2024-07-06 20:33:58');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `desk_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `desk_id`) VALUES
(1, 'Chester Nikolaus Sr.', 'wintheiser.linnea@example.com', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'W0ntQTPqeJ', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 1),
(2, 'Kaylie Treutel', 'feil.jayson@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SlmwFdxWFo', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 1),
(3, 'Prof. Mandy Kassulke III', 'wmurazik@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'he9j1O4Sty', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 1),
(4, 'Ezequiel Langworth Jr.', 'bcummings@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PGmNSpouqQ', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 1),
(5, 'Gertrude Mitchell', 'mdach@example.com', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GA8aiTQHsB', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 1),
(6, 'Rosetta Dickinson', 'nestor.jacobson@example.com', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EzxwGcRzBM', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 1),
(7, 'Llewellyn Wisoky', 'sarah10@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'phIVcZdaMx', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 1),
(8, 'Mr. Amparo Medhurst IV', 'jasen.rau@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ehqRJtJqPO', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 1),
(9, 'Ms. Estelle DuBuque', 'tritchie@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'n9o5rdIqKL', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 1),
(10, 'Hayden Hammes', 'flo.jaskolski@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VMiXOjG6VI', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 1),
(11, 'Adrien Leuschke', 'mitchell.madie@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7gKXtGMZ8j', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 2),
(12, 'Emmanuel Labadie', 'donnelly.annamae@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'R7DWqwwbA2', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 2),
(13, 'Terrance Stamm', 'mccullough.magdalen@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4EJQhqgWLo', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 2),
(14, 'Robert Hackett DDS', 'kautzer.nedra@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'o2RPlqPFzX', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 2),
(15, 'Prof. Santiago Harris V', 'buster.west@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FOXfD09DCW', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 2),
(16, 'Cathrine Luettgen', 'bins.kelsi@example.com', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dNuUVu6nP3', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 2),
(17, 'Quinten Cummerata', 'thora93@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oLnBHM01So', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 2),
(18, 'Jarred Kuhlman', 'harry.ziemann@example.com', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kvBEuc1N4A', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 2),
(19, 'Josie Weber II', 'finn.marquardt@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'w6kwqqqq7L', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 2),
(20, 'Tanner Mertz V', 'thaddeus.mraz@example.com', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '71e7qe0esB', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 2),
(21, 'Mr. Quinton Gerlach PhD', 'ehills@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9oa9diZ3xp', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 3),
(22, 'Kasey McGlynn', 'trystan46@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KErOraXrki', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 3),
(23, 'Dr. Alessia Hansen DVM', 'elmira.marquardt@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zUlQNchjYu', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 3),
(24, 'Erling Gusikowski Jr.', 'mgreenholt@example.com', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qN3vJdNvtq', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 3),
(25, 'Franco Pfeffer MD', 'fpollich@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zJXLTxxvrE', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 3),
(26, 'Ethyl Deckow', 'jdaugherty@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JziNMFZo7v', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 3),
(27, 'Rodrick Kassulke IV', 'camille02@example.com', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7CSCydlKI2', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 3),
(28, 'Ms. Annie Mosciski', 'effertz.keegan@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cMp2BWrjgN', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 3),
(29, 'Dave Dickinson V', 'zkerluke@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QXR8RRljur', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 3),
(30, 'Esther Bayer PhD', 'gbreitenberg@example.com', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4XaP1NHwJU', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 3),
(31, 'Dr. Rogelio Hyatt DVM', 'reinhold.zulauf@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2XpZtTDwPz', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 4),
(32, 'Dr. Urban Reichel Jr.', 'alice.hansen@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ad94XQLlKW', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 4),
(33, 'Mrs. Audie Goldner III', 'vlowe@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lBuJAfWR0Y', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 4),
(34, 'Brain Cummerata', 'bernadine.cormier@example.com', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EP8pXc9QBf', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 4),
(35, 'Mohammed Carroll', 'aniyah66@example.com', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Kth8rcblXb', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 4),
(36, 'Dr. Brennan Jakubowski', 'connelly.elmer@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'D2k2Kxxy0i', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 4),
(37, 'Enola Smith', 'fchamplin@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iKtJDKPHCl', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 4),
(38, 'Prof. Junior Hickle', 'oabshire@example.com', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MPmyxI0Xn9', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 4),
(39, 'Mrs. Shanelle Schumm I', 'ladarius.lowe@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'C0PVviz6cS', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 4),
(40, 'Roxanne O\'Kon', 'abernathy.minerva@example.com', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GcK1ERbitg', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 4),
(41, 'Amara Miller II', 'lea.koss@example.com', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6PUtWBgWIH', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 5),
(42, 'Alene Gaylord', 'verlie.nienow@example.com', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aoayq7Wyzq', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 5),
(43, 'Prof. Berry Dach', 'mayert.ben@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'txs752J13Y', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 5),
(44, 'Madison Wuckert', 'krystal71@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YKyz91Qucz', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 5),
(45, 'Eladio Fahey', 'bruen.kevon@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wE8c9hNpjg', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 5),
(46, 'Alden Schmitt', 'yost.emma@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IKZ7by2ixx', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 5),
(47, 'Maymie Rohan', 'williamson.emmett@example.com', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AJnHjDOpTI', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 5),
(48, 'Dr. Cristian Bednar', 'lweimann@example.com', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bHGawaEuiu', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 5),
(49, 'Brisa Flatley', 'daugherty.lori@example.com', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bh97PMmP53', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 5),
(50, 'Dr. Roberto Bernier', 'hettie56@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4MqFMbnWgA', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 5),
(51, 'Sydney Schimmel', 'marquardt.kristy@example.com', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3klGd3EOx0', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 6),
(52, 'Baby Lindgren III', 'everett68@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8dqsad5BZf', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 6),
(53, 'Crawford Hauck', 'gmurray@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3c1frUBbPM', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 6),
(54, 'Filomena Casper', 'annamarie.gulgowski@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'w3Y6kgWjmI', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 6),
(55, 'Mr. Sage Fritsch', 'lyda.sporer@example.com', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7ayvKgmmmb', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 6),
(56, 'Odie Tremblay PhD', 'lgreenfelder@example.com', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'o0wxktQKNs', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 6),
(57, 'Prof. Horace Weissnat', 'isac.wyman@example.com', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'B8pV7TrnTd', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 6),
(58, 'Prof. Ana Macejkovic', 'wiza.oliver@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'soLLoivEep', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 6),
(59, 'Boris Lockman', 'dare.lorenza@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gTGvZieJ2I', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 6),
(60, 'Kirstin Lockman', 'shany.roberts@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'llFzt8IhAH', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 6),
(61, 'Charlene Schaden', 'holly99@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Gj2Efy9YwO', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 7),
(62, 'Jayme Abbott', 'bschultz@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eHS2JIcI7m', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 7),
(63, 'Neoma Adams', 'will.nicolette@example.com', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'j8UVhFzqEA', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 7),
(64, 'Lulu Wolff', 'madalyn43@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'U7aVJLaIgV', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 7),
(65, 'Mrs. Theodora Dooley', 'shawna.donnelly@example.com', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GYG9xA6e6F', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 7),
(66, 'Guiseppe Wyman', 'christiansen.maximus@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hRpCqCnh6b', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 7),
(67, 'Lisa Mayer', 'granville01@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qD1jtUSJTI', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 7),
(68, 'Ms. Charity Hilpert Jr.', 'abbott.emiliano@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dNlOGvrGbi', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 7),
(69, 'Pasquale Keebler', 'loyal.kessler@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UzGvfD7CID', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 7),
(70, 'Bill Grant', 'aharris@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Q2S6FyWcZ5', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 7),
(71, 'Prof. Rozella Feeney', 'baumbach.dorthy@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'reAKsYofRj', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 8),
(72, 'Kassandra Trantow', 'juvenal83@example.com', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '29KroYGRha', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 8),
(73, 'Omari Hirthe', 'kaleigh87@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RYMBVmYQYL', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 8),
(74, 'Gladys Emard', 'vern.murazik@example.com', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aqCeRi6s5r', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 8),
(75, 'Janae Bayer', 'terrance.farrell@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pgAsPZz5jK', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 8),
(76, 'Kyra Adams', 'dickens.preston@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eylQHxlX38', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 8),
(77, 'Margie Jones', 'gail.mann@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ukTZktwmgt', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 8),
(78, 'Maryse Heaney', 'christine.lesch@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xBEutQeLfh', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 8),
(79, 'Ms. Treva Murazik', 'tyrel.erdman@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SFju2HIf40', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 8),
(80, 'Caesar Abbott', 'schowalter.myrtice@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Q26RvLnWRi', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 8),
(81, 'Dr. Sid Upton', 'maryjane.satterfield@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dn0pnJ3KMD', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 9),
(82, 'Zoie Oberbrunner', 'curt.botsford@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bNdFlSbzVK', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 9),
(83, 'Mrs. Sadye Schimmel IV', 'jonathan34@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YRxgla09RQ', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 9),
(84, 'Cheyenne Goyette', 'lkertzmann@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fzV3vJoGLy', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 9),
(85, 'Libbie Gleason', 'smitham.mabel@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kRHui5sNkh', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 9),
(86, 'Prof. Markus Waters IV', 'mcclure.jazmyn@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'U4KpgTZCzv', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 9),
(87, 'Darius Pagac', 'foreilly@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QHEWwEI4IU', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 9),
(88, 'Willow Barrows', 'albina52@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vtMknAX5HV', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 9),
(89, 'Rebecca Luettgen', 'armstrong.idella@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xv5ZXkBMun', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 9),
(90, 'Anika Wolf', 'carolyn25@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pga4OWn8O0', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 9),
(91, 'Reyna Barrows Jr.', 'deondre62@example.com', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bR7sDxCvpW', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 10),
(92, 'Maudie Schroeder I', 'welch.mellie@example.com', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cx1xofYp6i', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 10),
(93, 'Roscoe Kutch', 'kadin76@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UWUzTd1BAV', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 10),
(94, 'Marjory Larkin Jr.', 'jenkins.lamar@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9iHu4c80Ts', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 10),
(95, 'Ron Harris', 'mireya.effertz@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'p23AsmIv4W', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 10),
(96, 'Miss Bessie Gusikowski', 'reggie19@example.net', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eeMhyB9Ue3', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 10),
(97, 'Summer Morar', 'karine16@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'W1wB0TCQHs', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 10),
(98, 'Ned Konopelski', 'awilliamson@example.org', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yUxYx6iWeW', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 10),
(99, 'Alayna Christiansen', 'mark29@example.com', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hS2iMp64ln', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 10),
(100, 'Tristin Satterfield', 'dolores.cronin@example.com', '2024-07-06 20:27:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RdqYvy9vMr', '2024-07-06 20:27:49', '2024-07-06 20:27:49', 10),
(101, 'Olga Stefanović', 'os20200270@student.fon.bg.ac.rs', NULL, '$2y$10$oVftCxsOGIZC4kQXIKm8veyN2Mkv9ZaEJn2z9O3PH1LCvwvYbyIme', NULL, '2024-07-06 20:28:35', '2024-07-06 20:28:35', 1),
(102, 'Jovana Đorđević', 'jd20200325@student.fon.bg.ac.rs', NULL, '$2y$10$G3hsmwv71psQO3DKYUT8luIYDRU93uenHavjLkoMbF9bPPviwen.O', NULL, '2024-07-06 20:29:21', '2024-07-06 20:29:21', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `desks`
--
ALTER TABLE `desks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `desks_name_unique` (`name`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
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
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `desks`
--
ALTER TABLE `desks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
