-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jan 2025 pada 10.06
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tracerstudy`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `fill` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `answers`
--

INSERT INTO `answers` (`id`, `user_id`, `question_id`, `fill`, `created_at`, `updated_at`) VALUES
(1, 20, 1, 'Kuliah', '2025-01-02 07:02:28', '2025-01-02 07:02:28'),
(2, 20, 2, 'Universitas Muhammadiyah Kalimantan Timur', '2025-01-02 07:02:28', '2025-01-02 07:02:28'),
(3, 20, 3, 'Sesuai', '2025-01-02 07:02:28', '2025-01-02 07:02:28'),
(4, 20, 4, 'Teknik Informatika', '2025-01-02 07:02:28', '2025-01-02 07:02:28'),
(5, 20, 5, 'Sangat relevan', '2025-01-02 07:02:39', '2025-01-02 07:02:39'),
(6, 20, 6, 'Sangat besar', '2025-01-02 07:02:39', '2025-01-02 07:02:39'),
(7, 20, 7, 'baik', '2025-01-02 07:02:39', '2025-01-02 07:02:39'),
(8, 20, 8, 'baik', '2025-01-02 07:02:39', '2025-01-02 07:02:39'),
(9, 20, 12, 'jl greilya gg.mesjid blok d', '2025-01-02 13:02:38', '2025-01-02 13:02:38'),
(10, 20, 14, 'Ya, masih di tempat asal', '2025-01-02 13:02:38', '2025-01-02 13:02:38'),
(11, 20, 15, 'Pendidikan', '2025-01-02 13:02:38', '2025-01-02 13:02:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'melanjutkan', '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(2, 'bekerja', '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(3, 'freelance', '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(4, 'general', '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(5, 'feedback', '2024-12-17 04:36:03', '2024-12-17 04:36:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `graduate_years`
--

CREATE TABLE `graduate_years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `majors`
--

CREATE TABLE `majors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_school_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `expired_year` varchar(255) NOT NULL DEFAULT 'NOW',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `majors`
--

INSERT INTO `majors` (`id`, `type_school_id`, `name`, `expired_year`, `created_at`, `updated_at`) VALUES
(1, 1, 'Teknik Alat Berat', '2024/2025', '2024-12-17 04:36:03', '2025-01-02 06:48:30'),
(2, 1, 'Teknik Jaringan dan Komputer & Telekomunikasi', '2024/2025', '2024-12-17 04:36:03', '2025-01-02 06:48:14'),
(3, 1, 'Teknik Kendaraan Ringan', '2024/2025', '2024-12-17 04:36:03', '2025-01-02 06:48:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_17_102602_create_majors_table', 1),
(6, '2023_02_17_103042_create_answers_table', 1),
(7, '2023_02_17_103112_create_categories_table', 1),
(8, '2023_02_17_103136_create_option_inputs_table', 1),
(9, '2023_02_17_103211_create_personal_data_table', 1),
(10, '2023_02_17_103238_create_questions_table', 1),
(11, '2023_02_17_103301_create_type_inputs_table', 1),
(12, '2023_03_14_182215_create_type_schools_table', 1),
(13, '2023_03_15_135556_create_graduate_years_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `option_inputs`
--

CREATE TABLE `option_inputs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `option_inputs`
--

INSERT INTO `option_inputs` (`id`, `question_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bekerja', '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(2, 1, 'Kuliah', '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(3, 1, 'Wirausaha (Freelance/Online)', '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(4, 3, 'Sesuai', '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(5, 3, 'Tidak Sesuai', '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(6, 1, 'Belum bekerja/menganggur', '2025-01-02 06:49:48', '2025-01-02 06:49:48'),
(7, 5, 'Sangat relevan', '2025-01-02 06:52:06', '2025-01-02 06:52:48'),
(8, 5, 'Cukup relevan', '2025-01-02 06:52:06', '2025-01-02 06:52:48'),
(9, 5, 'Kurang relevan', '2025-01-02 06:52:48', '2025-01-02 06:52:48'),
(10, 5, 'Tidak relevan', '2025-01-02 06:52:48', '2025-01-02 06:52:48'),
(11, 6, 'Sangat besar', '2025-01-02 06:53:09', '2025-01-02 06:54:29'),
(12, 6, 'Besar', '2025-01-02 06:53:09', '2025-01-02 06:54:29'),
(13, 6, 'Cukup', '2025-01-02 06:54:29', '2025-01-02 06:54:29'),
(14, 6, 'Kurang', '2025-01-02 06:54:29', '2025-01-02 06:54:29'),
(21, 14, 'Ya, masih di tempat asal', '2025-01-02 12:52:12', '2025-01-02 12:58:33'),
(22, 14, 'Tidak, pindah dari tempat asal', '2025-01-02 12:52:12', '2025-01-02 12:58:33'),
(23, 15, 'Pekerjaan', '2025-01-02 12:52:55', '2025-01-02 12:53:38'),
(24, 15, 'Pendidikan', '2025-01-02 12:52:55', '2025-01-02 12:53:38'),
(25, 15, 'Menikah', '2025-01-02 12:53:38', '2025-01-02 12:59:25'),
(26, 15, 'Lainnya', '2025-01-02 12:59:25', '2025-01-02 12:59:25'),
(27, 16, 'Rumah sendiri', '2025-01-02 13:00:27', '2025-01-02 13:01:23'),
(28, 16, 'Tinggal bersama orang tua/keluarga', '2025-01-02 13:00:27', '2025-01-02 13:01:23'),
(29, 16, 'Kontrakan/kost', '2025-01-02 13:01:23', '2025-01-02 13:01:23'),
(30, 16, 'Asrama', '2025-01-02 13:01:23', '2025-01-02 13:01:23'),
(31, 16, 'Lainnya', '2025-01-02 13:01:23', '2025-01-02 13:01:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `personal_data`
--

CREATE TABLE `personal_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `major_id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `birth_date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_data`
--

INSERT INTO `personal_data` (`id`, `user_id`, `major_id`, `address`, `phone`, `birth_date`, `created_at`, `updated_at`) VALUES
(1, 20, 2, 'Jalan gerilya samping lapangan bola', '082251579007', '2000-05-14', '2025-01-02 07:01:29', '2025-01-02 07:01:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `type_input_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `required` enum('true','false') NOT NULL DEFAULT 'true',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `questions`
--

INSERT INTO `questions` (`id`, `category_id`, `type_input_id`, `name`, `order`, `required`, `created_at`, `updated_at`) VALUES
(1, 4, 4, 'Status', 1, 'true', '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(2, 4, 1, 'Nama Instansi Tempat Kerja / Kuliah', 2, 'true', '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(3, 4, 4, 'Kesesuaian Jurusan', 3, 'true', '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(4, 4, 1, 'Bidang Pekerjaan / Jurusan Kuliah', 4, 'true', '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(5, 5, 4, 'Seberapa relevan materi yang Anda pelajari di SMK dengan aktivitas Anda saat ini?', 5, 'true', '2024-12-17 04:36:03', '2025-01-02 06:52:06'),
(6, 5, 4, 'Seberapa besar kontribusi SMK dalam pengembangan keterampilan Anda?', 6, 'true', '2025-01-02 06:53:09', '2025-01-02 06:53:09'),
(7, 5, 1, 'Saran untuk peningkatan kualitas pendidikan di SMK Muhammadiyah Loa Janan:', 7, 'true', '2025-01-02 06:54:45', '2025-01-02 06:54:45'),
(8, 5, 1, 'Terima kasih atas waktu dan kesediaan Anda untuk mengisi kuesioner ini.', 8, 'false', '2025-01-02 06:55:03', '2025-01-02 06:55:03'),
(12, 4, 1, 'Alamat Tempat Tinggal Saat Ini: Tuliskan alamat lengkap Anda (Jalan, RT/RW, Kelurahan, Kecamatan, Kota/Kabupaten, Provinsi, Kode Pos).', 12, 'true', '2025-01-02 12:45:42', '2025-01-02 12:51:19'),
(14, 4, 4, 'Apakah Anda tinggal di lokasi yang sama dengan tempat asal Anda?', 14, 'true', '2025-01-02 12:52:12', '2025-01-02 12:52:12'),
(15, 4, 4, 'Jika tidak, apa alasan utama Anda pindah?', 15, 'true', '2025-01-02 12:52:55', '2025-01-02 12:52:55'),
(16, 4, 2, 'Jenis Tempat Tinggal Saat Ini:', 16, 'true', '2025-01-02 13:00:27', '2025-01-02 13:00:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `type_inputs`
--

CREATE TABLE `type_inputs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `type_inputs`
--

INSERT INTO `type_inputs` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'text', '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(2, 'select', '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(3, 'checkbox', '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(4, 'radio', '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(5, 'date', '2024-12-17 04:36:03', '2024-12-17 04:36:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `type_schools`
--

CREATE TABLE `type_schools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `type_schools`
--

INSERT INTO `type_schools` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'SMK', '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(2, 'SMA', '2024-12-17 04:36:03', '2024-12-17 04:36:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `grade_at` varchar(255) DEFAULT NULL,
  `type_school_id` bigint(20) UNSIGNED DEFAULT NULL,
  `role` enum('ALUMNI','ADMIN') NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `nik`, `grade_at`, `type_school_id`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, NULL, NULL, 'ADMIN', NULL, '$2y$10$f.jjlIFyoEjtK2bty.YVGOYLVTmrt7D.QvNcVAQXavQHn700CG8dy', 'v2TW6wCyNKbYFscxuUbuok4CVSeeUkfE0l9KhNZE90giQTlXXMXwhpUUY5jA', '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(2, 'Mikhael Khosea', 'mikha@gmail.com', '31750167890123453', '2021', 1, 'ALUMNI', NULL, '$2y$10$OoIncrReCEY1qPFYpfXrEeqsweoukOk.5PnrCMHjzEAB2tF8AJxLK', NULL, '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(3, 'Ida Bagus Yogesvara', 'yoges@gmail.com', '31750167890123452', '2022', 1, 'ALUMNI', NULL, '$2y$10$dX2sp6Aq7Q4433M0M/WhBeww.SCI3qBIghcFwqQwS.ey/h2H8mVl.', NULL, '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(4, 'Yanuar Rizki Sanjaya', 'yanuarrizki165@gmail.com', '31750167890123451', '2023', 1, 'ALUMNI', NULL, '$2y$10$eA4IHVXV3/bzKnsfOVHFmOHu4dMk6a6qNvHJb0Ji54Yy1us6fIDJq', NULL, '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(5, 'Adi Susilo', 'adi@gmail.com', '3175037890123455', '2023', 1, 'ALUMNI', NULL, '$2y$10$rWPXYTb6OT9dk3pecadeue9tbhxzCsFKVb.0iw1EGAy1iigVN32dq', NULL, '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(6, 'Nazhmi Dwiputra Effendi', 'nazhmi@gmail.com', '3175037890123456', '2023', 1, 'ALUMNI', NULL, '$2y$10$Q6jqXV..8Mi80xFKl3Ah3.cGN9L67SXSE34V.RZ/2FFeQ0hV6/aMa', NULL, '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(7, 'Henokh Rudolf', 'henokh@gmail.com', '3175047890123456', '2023', 1, 'ALUMNI', NULL, '$2y$10$0.afJyr9iUT6xvP9b/Aoju6TD60sI6ztLDcy.Sc0s/UUHfI2pBcpS', NULL, '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(8, 'Boni Steven', 'boni@gmail.com', '3175057890123456', '2023', 1, 'ALUMNI', NULL, '$2y$10$xdnnij6vwhoORzXHqoBBlONq2tBlVn6Ru5nHkSE..rpeDQ/57zqEW', NULL, '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(9, 'Tasya Ramadhinta', 'tasyarkh@gmail.com', '3175067890123456', '2023', 1, 'ALUMNI', NULL, '$2y$10$Qgbyj.EgSOcJ9Djymd9gvOKFLGMIDk0JXN/tYb2dALcGqei.fFcfm', NULL, '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(10, 'Naufal Firmansyah', 'naufal@gmail.com', '3175068890123456', '2023', 1, 'ALUMNI', NULL, '$2y$10$IytkuVUmdhjentNOlRO7EuwtLAELQlOTLcc8QKRETxTM1SpYfnEFu', NULL, '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(11, 'Faishal Bushoiri', 'faishal@gmail.com', '3175069890123456', '2023', 1, 'ALUMNI', NULL, '$2y$10$JDpbjd80QQ8h2Y6eu06youHxOUJIqNZy0DOIZRXV2g8H06VlC3.oy', NULL, '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(12, 'Muhammad Syawaludin', 'syawal@gmail.com', '3175027890123456', '2023', 1, 'ALUMNI', NULL, '$2y$10$h4pbBXB5D8vW4rNhXt6jaunHGC6jNoGI.MLbLulPHDNmr1yJdgYmi', NULL, '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(13, 'Romy', 'romy@gmail.com', '3175027810123456', '2023', 1, 'ALUMNI', NULL, '$2y$10$K8jastFZ3JFSfA027vmFy.YIJYw1WZn.sSAoeMiKkPQMCVUZ9Hh0m', NULL, '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(14, 'Virgiawan', 'virgi@gmail.com', '3175060890223456', '2023', 2, 'ALUMNI', NULL, '$2y$10$zhFfeZrrQrma0fHSvHgP3uahRHyUnf7egdw8bbQSC5MN.3..9PUSu', NULL, '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(15, 'Editya', 'edit@gmail.com', '3175060890123456', '2023', 2, 'ALUMNI', NULL, '$2y$10$PKS5ZUWF96raQbVWFwIpIu3bbPK.XuhS.B6iSm0ucpRuyZomqeTqS', NULL, '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(16, 'Aisyah', 'icha@gmail.com', '3175061890123456', '2023', 2, 'ALUMNI', NULL, '$2y$10$ylwLvoav9O31ty2OkPBlheQSgtThb/Vx.EXik0fhmAeR8wDK9i05u', NULL, '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(17, 'Verasta', 'verasta@gmail.com', '3175061890123476', '2023', 1, 'ALUMNI', NULL, '$2y$10$iB72BBN3ib0oYoGLHYwR2unhpurtJolhvlp8oilWv//xYSfDZg.B2', NULL, '2024-12-17 04:36:03', '2024-12-17 04:36:03'),
(19, 'Zayni', 'azai4620@gmail.com', '6402032409010002', '2021', 1, 'ALUMNI', NULL, '$2y$10$AUn8gZfglknWkDx4Qr/YYu67fKCd6WMFQ2rHjoe9BHKhc4JfKBH.y', NULL, '2024-12-17 04:51:55', '2024-12-17 04:51:55'),
(20, 'Danang Prasetyo', 'danangprasetyo993@gmail.com', '6472081405000001', '2025', 1, 'ALUMNI', NULL, '$2y$10$Y8K6uiGl5Xfx87HVb5RZve2L4mOLr7N3QvdlzWBsszEVDaWmtDa96', NULL, '2025-01-02 06:49:07', '2025-01-02 06:49:07');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `graduate_years`
--
ALTER TABLE `graduate_years`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `option_inputs`
--
ALTER TABLE `option_inputs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `personal_data`
--
ALTER TABLE `personal_data`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `type_inputs`
--
ALTER TABLE `type_inputs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `type_schools`
--
ALTER TABLE `type_schools`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_nik_unique` (`nik`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `graduate_years`
--
ALTER TABLE `graduate_years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `majors`
--
ALTER TABLE `majors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `option_inputs`
--
ALTER TABLE `option_inputs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_data`
--
ALTER TABLE `personal_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `type_inputs`
--
ALTER TABLE `type_inputs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `type_schools`
--
ALTER TABLE `type_schools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
