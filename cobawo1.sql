-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2023 at 05:55 PM
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
-- Database: `cobawo1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '$2a$10$EmJUdVmgx.9Vt.wKZdPznevy8vGIKEhZRsu7MGAjaFjnP7AwwIKgi', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `category` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `start_date`, `end_date`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Nikah', '2023-08-03', '2023-08-03', 'info', '2023-08-02 09:24:45', '2023-08-02 09:24:45'),
(4, 'hehe', '2023-08-04', '2023-08-04', 'warning', '2023-08-05 08:15:30', '2023-08-05 08:15:30'),
(5, 'Nikahan Iyan & Tia', '2023-08-05', '2023-08-05', 'warning', '2023-08-06 21:28:43', '2023-08-06 21:28:43');

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
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `paket_wedding_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah_paket` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id`, `paket_wedding_id`, `user_id`, `jumlah_paket`, `created_at`, `updated_at`) VALUES
(27, 5, 2, '1', '2023-08-12 08:33:11', '2023-08-12 08:33:11');

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
(5, '2022_06_22_105357_create_paket_wedding_table', 1),
(6, '2022_06_23_075622_create_paket_wedding_foto_table', 1),
(7, '2022_06_29_100953_create_admin_table', 1),
(8, '2022_06_29_113731_create_keranjang_table', 1),
(9, '2022_06_30_105430_create_pemesanan_table', 1),
(10, '2022_06_30_125649_create_web_table', 1),
(11, '2023_08_02_150123_create_events_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `paket_wedding`
--

CREATE TABLE `paket_wedding` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_paket` varchar(255) NOT NULL,
  `harga_paket` varchar(255) NOT NULL,
  `deskripsi_paket` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paket_wedding`
--

INSERT INTO `paket_wedding` (`id`, `nama_paket`, `harga_paket`, `deskripsi_paket`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'Romantic Wedding', '52000000', '<p>Wedding Organizer | Decoration | Documentation<br />\r\nMakeUp Artist | Attire | Share Photo Service</p>\r\n\r\n<p>Our Vendor<br />\r\nDecoration : Rupa Dekorasi<br />\r\nDocumentation : Frame Like | Moonlight<br />\r\nMUA : Devvy Rismitha | Larasati | ENA | Nurul', 'romantic-wedding', '2023-08-02 06:03:44', '2023-08-02 06:03:44'),
(3, 'Dream Wedding', '70000000', '<p>Wedding Organizer | Decoration | Documentation<br />\r\nMakeUp Artist | Attire | Master Of Ceremony | Entertainment | Henna<br />\r\n<br />\r\nOur Vendor<br />\r\nDecoration : Berkah Wedding | Rupa Dekorasi<br />\r\nDocumentation : Frame Like | Moonlight | Reza ', 'dream-wedding', '2023-08-02 06:11:05', '2023-08-02 06:11:05'),
(4, 'Royal Wedding', '125000000', '<p>Include<br />\r\nWedding Organizer | Decoration | Documentation<br />\r\nMakeUp Artist | Attire | Master Of Ceremony | Entertainment <br />\r\nCatering (1000 Porsi) | Henna<br />\r\n<br />\r\nOur Vendor<br />\r\nDecoration : Berkah Wedding | Rupa Dekorasi<br />\r\nD', 'royal-wedding', '2023-08-02 06:11:48', '2023-08-02 06:11:48'),
(5, 'Luxury Wedding', '180000000', '<p>Include<br />\r\nWedding Organizer | Decoration | Documentation<br />\r\nMakeUp Artist | Attire | Master Of Ceremony | Entertainment | Catering (1500 Porsi) Henna | 360 Videobooth | Tanjidor | Tangas Pengantin | Tari Tradisional<br />\r\n1 Kamar Hotel (1 Har', 'luxury-wedding', '2023-08-02 06:12:26', '2023-08-02 06:12:26');

-- --------------------------------------------------------

--
-- Table structure for table `paket_wedding_foto`
--

CREATE TABLE `paket_wedding_foto` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `paket_wedding_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paket_wedding_foto`
--

INSERT INTO `paket_wedding_foto` (`id`, `paket_wedding_id`, `name`, `size`, `url`, `created_at`, `updated_at`) VALUES
(2, 2, 'Asset 1.png', '311042', '1690981424_Asset 1.png', '2023-08-02 06:03:44', '2023-08-02 06:03:44'),
(3, 3, 'Asset 4.png', '334137', '1690981865_Asset 4.png', '2023-08-02 06:11:05', '2023-08-02 06:11:05'),
(4, 4, 'Asset 5.png', '616866', '1690981908_Asset 5.png', '2023-08-02 06:11:48', '2023-08-02 06:11:48'),
(5, 5, 'Asset 6.png', '353871', '1690981946_Asset 6.png', '2023-08-02 06:12:26', '2023-08-02 06:12:26');

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
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `paket_wedding_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah_paket` varchar(255) NOT NULL,
  `tempat_acara` varchar(255) NOT NULL,
  `tanggal_acara` varchar(255) NOT NULL,
  `status_pembayaran` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id`, `paket_wedding_id`, `user_id`, `jumlah_paket`, `tempat_acara`, `tanggal_acara`, `status_pembayaran`, `created_at`, `updated_at`) VALUES
(3, 5, 3, '6', 'PCC', '2023-08-21', 'sudah', '2023-08-06 18:51:15', '2023-08-06 23:20:27');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `email_verified_at`, `password`, `email`, `no_telp`, `alamat`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User', 'user', NULL, '$2y$10$UWS95BBzaRLfWMZG5QdZiuRQR8iIl80fn1j.gcaRu3gHiu75t3uUa', 'user@gmail.com', '', '', NULL, NULL, '2023-08-04 10:13:26'),
(2, 'rahmat', 'rahmat', NULL, '$2y$10$52A2ykycUollgQvRS2kMOO8gumHhGDS271jlKd5AjaBtY4CHbE16O', 'rahmat@gmail.com', '', 'Kota Baru', NULL, '2023-08-01 22:36:55', '2023-08-01 22:36:55'),
(3, 'apip', 'apip', NULL, '$2y$10$g1gINvvxeODns8iOvFBjZuQ9tROz.ix6GbMFwywJ1tyhML7KjPoeS', 'apip@gmail.com', '', 'koko', NULL, '2023-08-06 18:48:51', '2023-08-06 18:48:51');

-- --------------------------------------------------------

--
-- Table structure for table `web`
--

CREATE TABLE `web` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `youtube` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `whatsapp` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web`
--

INSERT INTO `web` (`id`, `logo`, `name`, `description`, `address`, `email`, `facebook`, `instagram`, `youtube`, `twitter`, `whatsapp`, `created_at`, `updated_at`) VALUES
(1, '1690963118_Logo Makna.png', 'Makna Organizer', 'MAKNA ORGANIZER adalah salah satu wedding organizer yang ada di\r\nPontianak - Kalimantan Barat yang membantu merencanakan dan\r\nmewujudkan impian acara pernikahan calon pengantin mulai dari persiapan, budgeting, pertemuan keluarga, membuat janji temu dan menemani saat meeting dengan vendor, merekomendasikan vendor terbaik yang sesuai dengan harapan calon pengantin, menemani saat fitting baju pengantin, hingga mengkoordinir pelaksanaan pada saat acara dilaksanakan.', 'Jl. Putri Candramidi Gg.SudiHati', 'maknaorganizer@gmail.com', NULL, 'makan_organizer', NULL, NULL, '6281258809161', '2023-08-02 00:58:38', '2023-08-02 06:00:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keranjang_paket_wedding_id_foreign` (`paket_wedding_id`),
  ADD KEY `keranjang_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paket_wedding`
--
ALTER TABLE `paket_wedding`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paket_wedding_foto`
--
ALTER TABLE `paket_wedding_foto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paket_wedding_foto_paket_wedding_id_foreign` (`paket_wedding_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tanggal_acara` (`tanggal_acara`),
  ADD KEY `pemesanan_paket_wedding_id_foreign` (`paket_wedding_id`),
  ADD KEY `pemesanan_user_id_foreign` (`user_id`);

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
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `web`
--
ALTER TABLE `web`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `paket_wedding`
--
ALTER TABLE `paket_wedding`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `paket_wedding_foto`
--
ALTER TABLE `paket_wedding_foto`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `web`
--
ALTER TABLE `web`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD CONSTRAINT `keranjang_paket_wedding_id_foreign` FOREIGN KEY (`paket_wedding_id`) REFERENCES `paket_wedding` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `keranjang_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `paket_wedding_foto`
--
ALTER TABLE `paket_wedding_foto`
  ADD CONSTRAINT `paket_wedding_foto_paket_wedding_id_foreign` FOREIGN KEY (`paket_wedding_id`) REFERENCES `paket_wedding` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_paket_wedding_id_foreign` FOREIGN KEY (`paket_wedding_id`) REFERENCES `paket_wedding` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pemesanan_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
