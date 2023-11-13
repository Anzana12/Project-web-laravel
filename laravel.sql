-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2023 at 12:40 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `departement`
--

CREATE TABLE `departemen` (
  `kode_dept` varchar(3) NOT NULL,
  `nama_dept` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departement`
--

INSERT INTO `departemen` (`kode_dept`, `nama_dept`) VALUES
('001', 'dokter'),
('002', 'perawat'),
('003', 'Admin'),
('004', 'Kepala Kantor');

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
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `nik` char(5) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `foto` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(225) DEFAULT NULL,
  `kode_dept` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`nik`, `nama_lengkap`, `jabatan`, `no_hp`, `foto`, `password`, `remember_token`, `kode_dept`) VALUES
('12344', 'lolo', 'perawat', '0221111555', '12344.jpg', '$2y$10$Th2k6PHVZw830CHMfAWIwOdE6FYaQHHF8tNm9p1X7PWJc1fUMvrHG', NULL, NULL),
('12345', 'Nada Lutfiyahh', 'Admin', '0812345678111', '12345.JPG', '$2y$10$PzpzgJqbQ3jumr09So8m2eAR2g1Ent0NqWOjgBNTu18WNhD/qohv2', '', '003'),
('12348', 'lolo', 'perawat', '0221111555', '12348.jpg', '$2y$10$MogcI5lTQ1FqQU9.WG4CveIGs7BgqMn8oHCjWdy/eFZ0WjAQD2OTO', NULL, NULL),
('12388', 'keke', 'perawat', '0221111555', '12388.jpg', '$2y$10$cvp9FuYeWSQZfvmx6RDkguxebhEcH4ggoJmKz7BLwb73lRnxWBAVG', NULL, NULL),
('3421', 'NEC', 'dokter', '0221111555', '3421.jpg', '$2y$10$pcp3VzcdyRZBA0n.ZwmDgOFO3qyARBVupNB.SKgO9QIzVLofMBqEy', NULL, NULL),
('43256', 'lulu', 'admin', '082319163475', '43256.jpg', '$2y$10$.P8D9txsDmICxLmsLQU/2.ld82pG3gbd8/bCr73yKejDc/eMNjCFq', NULL, NULL),
('54321', 'Nada Lutfiyah', 'kepala kantor', '09876542451', '54321.jpeg', '$2y$10$R4tWYId4vgiJ58Nm6WhQse6TRGWqm7rz3z43wn0Lt1AmI5CdYNNsS', '', '004'),
('56789', 'Putri', 'Dokter', '089765445', '', '$2y$10$R4tWYId4vgiJ58Nm6WhQse6TRGWqm7rz3z43wn0Lt1AmI5CdYNNsS', '', '001'),
('7659', 'NECaa', 'dokter', '0221111555', '7659.jpg', '$2y$10$AeTLxVnNc2CTqAoUT.tja.OzqdNafGBd6KXUk3L4xf7CIYZSK.HMG', NULL, NULL),
('8219', 'zana', 'dokter ganteng', '082112800796', '8219.jpg', '$2y$10$L1mMQW9jYJiwxuveZW/dbetk8YC9yyes033ixnzHhc1SLBQOaMT1a', NULL, NULL),
('98778', 'fuji', 'dokter', '0227334678', '98778.jpg', '$2y$10$oAwc7xujlICeZJttaonbAObZCLIeW5n5H2cdVaYQvRYA/mvkb3uyq', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `pengajuan_izin`
--

CREATE TABLE `pengajuan_izin` (
  `id` int(11) NOT NULL,
  `nik` char(5) NOT NULL,
  `tgl_izin` date NOT NULL,
  `status` char(1) NOT NULL COMMENT 'i:izin s:sakit',
  `keterangan` varchar(255) NOT NULL,
  `status_approved` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengajuan_izin`
--

INSERT INTO `pengajuan_izin` (`id`, `nik`, `tgl_izin`, `status`, `keterangan`, `status_approved`) VALUES
(1, '54321', '2023-10-20', 's', 'pusing', 1),
(26, '12345', '2023-11-23', 's', 'pusing', 1),
(27, '12345', '2023-11-24', 's', 'pusing bangett', 1),
(28, '12345', '2023-11-30', 'i', 'pergi', 1),
(29, '12345', '2023-11-30', 'i', 'izin', 1);

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
-- Table structure for table `presensi`
--

CREATE TABLE `presensi` (
  `id` int(11) NOT NULL,
  `nik` char(5) NOT NULL,
  `tgl_presensi` date NOT NULL,
  `jam_in` time NOT NULL,
  `jam_out` time DEFAULT NULL,
  `foto_in` varchar(255) NOT NULL,
  `foto_out` varchar(255) DEFAULT NULL,
  `lokasi_in` text NOT NULL,
  `lokasi_out` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `presensi`
--

INSERT INTO `presensi` (`id`, `nik`, `tgl_presensi`, `jam_in`, `jam_out`, `foto_in`, `foto_out`, `lokasi_in`, `lokasi_out`) VALUES
(29, '12345', '2023-10-24', '19:14:56', NULL, '12345-2023-10-24-in.png', NULL, '-6.9385096,107.7222826', NULL),
(30, '54321', '2023-10-24', '22:56:49', '22:57:04', '54321-2023-10-24-in.png', '54321-2023-10-24-out.png', '-6.9385059,107.7222837', '-6.9385059,107.7222837'),
(31, '54321', '2023-10-30', '21:49:31', NULL, '54321-2023-10-30-in.png', NULL, '-6.9384457,107.7222058', NULL);

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
(1, 'Nada ', 'nada@gmail.com', '0000-00-00 00:00:00', '$2y$10$PzpzgJqbQ3jumr09So8m2eAR2g1Ent0NqWOjgBNTu18WNhD/qohv2', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`kode_dept`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`nik`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `presensi`
--
ALTER TABLE `presensi`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
