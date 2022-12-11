-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Dec 11, 2022 at 03:16 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wad_modul5_manda`
--

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
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2022_12_11_054235_create_showrooms_table', 1);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `showrooms`
--

CREATE TABLE `showrooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Lunas','Belum-Lunas') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `showrooms`
--

INSERT INTO `showrooms` (`id`, `user_id`, `name`, `owner`, `brand`, `purchase_date`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 'BMW', 'Larkin', 'BMW', '2014-07-16', 'Sapiente dolor voluptatem officia voluptas. Amet a sit sit veritatis aut nihil. Ut omnis temporibus perferendis molestiae aliquam dolores.', 'bmw.png', 'Lunas', '2022-12-10 23:19:35', '2022-12-10 23:19:35'),
(2, 3, 'BMW', 'Stokes', 'BMW', '2020-01-18', 'Maiores rerum non officiis repudiandae explicabo officiis. Molestiae provident accusantium molestiae porro rerum. Molestias eum fugiat dolores delectus. Aut saepe et est eos enim.', 'bmw.png', 'Lunas', '2022-12-10 23:19:35', '2022-12-10 23:19:35'),
(3, 4, 'BMW', 'Grant', 'BMW', '2001-03-05', 'Voluptates est voluptatem corrupti sed labore. Quis eos repellat autem omnis debitis dicta. Sequi modi quasi illum quae nisi autem iusto maiores.', 'bmw.png', 'Lunas', '2022-12-10 23:19:35', '2022-12-10 23:19:35'),
(4, 7, 'BMW', 'Osinski', 'BMW', '1999-07-15', 'Tempora quasi et laboriosam autem voluptates repellendus molestiae. Aut ut quo et non qui ut repudiandae.', 'bmw.png', 'Lunas', '2022-12-10 23:19:35', '2022-12-10 23:19:35'),
(5, 4, 'BMW', 'Larkin', 'BMW', '2000-01-29', 'Voluptatem nulla sit molestiae est perferendis omnis. Inventore laboriosam neque tenetur sequi placeat odit porro.', 'bmw.png', 'Lunas', '2022-12-10 23:19:35', '2022-12-10 23:19:35'),
(6, 8, 'BMW', 'Ratke', 'BMW', '1973-02-13', 'Nobis sed delectus optio quod assumenda nesciunt id. Aspernatur doloribus et mollitia nulla qui. Et numquam cupiditate incidunt molestias quos praesentium. Fuga et eos harum ab eligendi sit.', 'bmw.png', 'Lunas', '2022-12-10 23:19:35', '2022-12-10 23:19:35'),
(7, 1, 'BMW', 'Bergstrom', 'BMW', '1992-01-18', 'Qui et architecto quibusdam maiores. Rerum vel laudantium et eaque sit quia voluptatum. Suscipit et saepe architecto ratione magni illum rerum. Qui molestiae quos est libero quisquam beatae est.', 'bmw.png', 'Lunas', '2022-12-10 23:19:35', '2022-12-10 23:19:35'),
(8, 6, 'BMW', 'Rempel', 'BMW', '1992-10-21', 'Eum qui illum nostrum cumque error accusamus. Necessitatibus laboriosam rerum autem delectus. Quos deserunt dicta eum commodi perspiciatis.', 'bmw.png', 'Lunas', '2022-12-10 23:19:35', '2022-12-10 23:19:35'),
(9, 1, 'BMW', 'Deckow', 'BMW', '2001-03-02', 'Rerum enim minus excepturi veritatis omnis. Consequatur eaque at enim eum dignissimos ut eos. Cupiditate provident laboriosam quae velit quos rerum.', 'bmw.png', 'Lunas', '2022-12-10 23:19:35', '2022-12-10 23:19:35'),
(10, 9, 'BMW', 'Rodriguez', 'BMW', '1974-11-17', 'Et eos hic ut ut omnis eaque qui. Voluptatem adipisci delectus quidem excepturi quae culpa. Qui incidunt aspernatur sint eum.', 'bmw.png', 'Lunas', '2022-12-10 23:19:35', '2022-12-10 23:19:35'),
(11, 0, 'cws', 'sss', 'nhb', '2022-12-01', 'brtrt', 'C:\\xampp\\tmp\\php3494.tmp', 'Belum-Lunas', '2022-12-11 05:53:47', '2022-12-11 05:53:47'),
(12, 0, 'dwfcsdc', 'ASDsd', 'vfvfvf', '2022-12-01', 'lsddvdf', 'uploadfoto/kI2PP8tJoHT7VUMx0j0GUhIlqS9XR2B4lwcI4qCb.png', 'Belum-Lunas', '2022-12-11 06:00:13', '2022-12-11 06:00:13'),
(13, 0, 'Brio', 'Manda', 'yamaha', '2022-12-01', 'dqdxa', 'uploadfoto/aOlPtAIU4EW3KGK9B0at5zaTE95xE6heVxzKh9TW.jpg', 'Belum-Lunas', '2022-12-11 06:04:18', '2022-12-11 06:04:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `no_hp`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Tessie Schmitt Sr.', '+1 (308) 459-3408', 'fbartoletti@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-12-10 23:19:35', '2022-12-10 23:19:35'),
(2, 'Prof. Colin Lakin', '+1.616.887.9917', 'kulas.jimmy@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-12-10 23:19:35', '2022-12-10 23:19:35'),
(3, 'Mona Hand', '+1 (747) 318-7274', 'horace.pfannerstill@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-12-10 23:19:35', '2022-12-10 23:19:35'),
(4, 'Annamae Bayer', '469-527-7602', 'lyost@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-12-10 23:19:35', '2022-12-10 23:19:35'),
(5, 'Dr. Brant Leannon MD', '361.634.6439', 'jermaine.morissette@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-12-10 23:19:35', '2022-12-10 23:19:35'),
(6, 'Keegan Deckow Sr.', '+1-947-413-9490', 'cleora32@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-12-10 23:19:35', '2022-12-10 23:19:35'),
(7, 'Imelda Rodriguez', '+1.680.662.0135', 'jeramie86@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-12-10 23:19:35', '2022-12-10 23:19:35'),
(8, 'Monty Monahan', '205.260.6645', 'erwin.schiller@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-12-10 23:19:35', '2022-12-10 23:19:35'),
(9, 'Dr. Prince Torp', '(828) 454-3188', 'tyrese31@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-12-10 23:19:35', '2022-12-10 23:19:35'),
(10, 'Kim Rowe', '+1 (424) 447-3211', 'vandervort.charley@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-12-10 23:19:35', '2022-12-10 23:19:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `showrooms`
--
ALTER TABLE `showrooms`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `showrooms`
--
ALTER TABLE `showrooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
