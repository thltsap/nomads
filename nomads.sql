-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Okt 2021 pada 14.37
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nomads`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galleries`
--

INSERT INTO `galleries` (`id`, `travel_packages_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'assets/gallery/MxQG4cq6j4jtiK5uSJNK2PnafYb2b7vkQOBm1cMH.png', NULL, '2021-07-30 21:54:25', '2021-07-30 21:54:25'),
(2, 1, 'assets/gallery/5SYC9m8EwZPDKuNKk382eJfwJwc96xWi1Xhj6dWc.png', '2021-07-30 22:02:50', '2021-07-30 21:56:17', '2021-07-30 22:02:50'),
(3, 1, 'assets/gallery/JU5H50lEWgM4rnGZ01PL6ulU3BCCMyB6XODCODHH.png', '2021-07-30 22:05:51', '2021-07-30 22:05:38', '2021-07-30 22:05:51'),
(4, 3, 'assets/gallery/xH87jbUCs9IUZrlKMeknkdyDKwNmnIOyBgdypOSD.jpg', NULL, '2021-08-04 22:38:35', '2021-08-04 22:38:35'),
(5, 4, 'assets/gallery/IJWAtzgnxMEYUZtMMcYp7FPCT1i60ATOd4F4nDc7.jpg', NULL, '2021-08-04 22:39:02', '2021-08-04 22:39:02'),
(6, 5, 'assets/gallery/Dk04KJOzX8wu0XcnjYJ6y6XPNjM8XQF2nD5m6hGy.jpg', NULL, '2021-08-04 22:39:16', '2021-08-04 22:39:16'),
(7, 1, 'assets/gallery/A3MvObe1deBlFi3H21DoPAagNlcvweFJzjfOvJzz.jpg', NULL, '2021-08-04 22:39:41', '2021-08-04 22:39:41'),
(8, 3, 'assets/gallery/JlNnbRUm8P2D36c2cztjf1E9q0H61JutUu53atta.jpg', NULL, '2021-08-04 22:39:52', '2021-08-04 22:39:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_22_113720_create_travel_packages_table', 1),
(5, '2021_07_22_122048_create_galleries_table', 2),
(6, '2021_07_22_122526_create_transactions_table', 3),
(7, '2021_07_22_122919_create_transactions_details_table', 4),
(8, '2021_07_24_060505_add_roles_field_to_users_table', 5),
(9, '2021_07_24_070747_add_username_field_to_users_table', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `additional_visa` int(11) NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `travel_packages_id`, `users_id`, `additional_visa`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 190, 290, 'SUCCESS', NULL, '2021-08-04 03:00:39', '2021-08-03 20:50:36'),
(2, 4, 8, -190, -190, 'IN_CART', '2021-08-05 00:59:55', '2021-08-05 00:40:26', '2021-08-05 00:59:55'),
(3, 3, 8, 0, 23, 'SUCCESS', NULL, '2021-08-05 00:58:09', '2021-08-05 01:00:06'),
(9, 1, 9, 190, 210, 'PENDING', NULL, '2021-08-09 01:22:18', '2021-08-09 01:22:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_visa` tinyint(1) NOT NULL,
  `doe_passport` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `username`, `nationality`, `is_visa`, `doe_passport`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'ID', 1, '2021-08-04', NULL, '2021-08-04 03:03:45', '2021-08-04 03:03:45'),
(2, 1, 'rev', 'ID', 1, '2021-08-05', NULL, '2021-08-05 03:03:45', '2021-08-06 03:03:45'),
(3, 2, 'rev', 'ID', 0, '2026-08-05', NULL, '2021-08-05 00:40:26', '2021-08-05 00:40:26'),
(4, 2, 'admin', 'CN', 1, '2021-10-07', '2021-08-05 00:54:21', '2021-08-05 00:51:14', '2021-08-05 00:54:21'),
(5, 2, 'admin', 'CN', 1, '2021-10-07', '2021-08-05 00:52:46', '2021-08-05 00:52:42', '2021-08-05 00:52:46'),
(6, 2, 'admin', 'CN', 1, '2021-10-07', '2021-08-05 00:56:47', '2021-08-05 00:56:39', '2021-08-05 00:56:47'),
(7, 3, 'rev', 'ID', 0, '2026-08-05', NULL, '2021-08-05 00:58:09', '2021-08-05 00:58:09'),
(8, 3, 'admin', 'CN', 1, '2021-10-02', '2021-08-05 00:58:27', '2021-08-05 00:58:22', '2021-08-05 00:58:27'),
(9, 4, 'rev', 'ID', 0, '2026-08-05', NULL, '2021-08-05 01:03:43', '2021-08-05 01:03:43'),
(18, 9, 'Richard', 'ID', 0, '2026-08-09', NULL, '2021-08-09 01:22:18', '2021-08-09 01:22:18'),
(19, 9, 'rev', 'CN', 1, '2021-08-21', NULL, '2021-08-09 01:22:25', '2021-08-09 01:22:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foods` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_date` date NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `title`, `slug`, `location`, `about`, `featured_event`, `language`, `foods`, `departure_date`, `duration`, `type`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Liburan Santai', 'liburan-santai', 'Jakarta', 'Liburan Santai', 'Tarian', 'Indonesia', 'Bakso', '2021-07-29', '2D', 'Open Public', 10, NULL, '2021-07-29 04:29:39', '2021-07-29 04:36:12'),
(2, 'Holiday', 'holiday', 'Bandung', 'Liburan', 'Nonton', 'Indonesia', 'Seblak', '2021-07-15', '3D', 'Open Public', 300, '2021-07-29 04:37:50', '2021-07-29 04:37:45', '2021-07-29 04:37:50'),
(3, 'Honey Moon', 'honey-moon', 'Bandung', 'Paket yang menyediakan berbagai macam Pilihan Untuk HoneyMoon', 'Nonton', 'Indonesia', 'Bakso', '2021-08-05', '3D', 'Open Public', 23, NULL, '2021-08-04 22:33:15', '2021-08-04 22:33:15'),
(4, 'Paket Chill', 'paket-chill', 'Medan', 'Paket Chill yang terdapat berbagai macam', 'Tarian', 'Indonesia', 'Nasi', '2021-08-01', '1D', 'Private', 45, NULL, '2021-08-04 22:36:23', '2021-08-04 22:36:23'),
(5, 'Holiyay', 'holiyay', 'Labuan Bajo', 'Labuan Bajo adalah tempat liburan yang teapt untuk dipilih', 'Pantai', 'Indonesia', 'Ikan', '2021-08-09', '4D', 'FULL', 50, NULL, '2021-08-04 22:37:27', '2021-08-04 22:37:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `username`) VALUES
(1, 'admin1', 'admin@admin.com', NULL, '$2y$10$0L8sPI58zzHnxIBrt37jjeDJzU9aVR3QIP4rOPt3.HNYMLIeTmIfi', NULL, '2021-07-25 22:03:17', '2021-07-25 22:03:17', 'ADMIN', 'admin'),
(8, 'Reva', 'reva@gmail.com', '2021-07-26 21:11:29', '$2y$10$nwadcq9GBXGX.wz5rjhaW.qadPqLbMHqq0Q137AfYAL5kxgUji6Ti', NULL, '2021-07-26 21:11:00', '2021-07-26 21:11:29', 'USER', 'rev'),
(9, 'Richard Joe', 'richardjoe@gmail.com', '2021-08-09 01:01:17', '$2y$10$0CvYf6xYar4rhUFtJ1pGyOTAOz66bhDiV/jidgNzRk61Wo7Mv6YoK', NULL, '2021-08-09 00:58:32', '2021-08-09 01:01:17', 'USER', 'Richard');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `travel_packages`
--
ALTER TABLE `travel_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
