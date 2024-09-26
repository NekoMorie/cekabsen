-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 26, 2024 at 09:36 PM
-- Server version: 10.5.25-MariaDB-cll-lve
-- PHP Version: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cekr4736_absen`
--

-- --------------------------------------------------------

--
-- Table structure for table `auto_shifts`
--

CREATE TABLE `auto_shifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jabatan_id` bigint(20) UNSIGNED NOT NULL,
  `shift_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `counter` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `name`, `text`, `counter`, `created_at`, `updated_at`) VALUES
(1, 'Gaji', 'GJ', 0, '2024-06-06 05:38:57', '2024-06-06 05:38:57');

-- --------------------------------------------------------

--
-- Table structure for table `cutis`
--

CREATE TABLE `cutis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nama_cuti` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `alasan_cuti` text NOT NULL,
  `foto_cuti` varchar(255) DEFAULT NULL,
  `status_cuti` varchar(255) NOT NULL,
  `catatan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dinas_luars`
--

CREATE TABLE `dinas_luars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `shift_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `jam_absen` varchar(255) DEFAULT NULL,
  `telat` varchar(255) DEFAULT NULL,
  `lat_absen` varchar(255) DEFAULT NULL,
  `long_absen` varchar(255) DEFAULT NULL,
  `foto_jam_absen` varchar(255) DEFAULT NULL,
  `jam_pulang` varchar(255) DEFAULT NULL,
  `pulang_cepat` varchar(255) DEFAULT NULL,
  `foto_jam_pulang` varchar(255) DEFAULT NULL,
  `lat_pulang` varchar(255) DEFAULT NULL,
  `long_pulang` varchar(255) DEFAULT NULL,
  `status_absen` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dinas_luars`
--

INSERT INTO `dinas_luars` (`id`, `user_id`, `shift_id`, `tanggal`, `jam_absen`, `telat`, `lat_absen`, `long_absen`, `foto_jam_absen`, `jam_pulang`, `pulang_cepat`, `foto_jam_pulang`, `lat_pulang`, `long_pulang`, `status_absen`, `created_at`, `updated_at`) VALUES
(1, 11, 2, '2024-07-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tidak Masuk', '2024-07-19 08:38:46', '2024-07-19 08:38:46');

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
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis_file` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fileUpload` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `golongans`
--

CREATE TABLE `golongans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `golongans`
--

INSERT INTO `golongans` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'DIREKSI', '2024-06-06 05:38:57', '2024-06-06 05:38:57'),
(2, 'KABAG', '2024-06-06 05:38:57', '2024-06-06 05:38:57'),
(3, 'STAFF', '2024-06-06 05:38:57', '2024-06-06 05:38:57'),
(4, 'PELAKSANA', '2024-06-06 05:38:57', '2024-06-06 05:38:57');

-- --------------------------------------------------------

--
-- Table structure for table `jabatans`
--

CREATE TABLE `jabatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_jabatan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jabatans`
--

INSERT INTO `jabatans` (`id`, `nama_jabatan`, `created_at`, `updated_at`) VALUES
(1, 'Teknologi Informasi', '2024-06-06 05:38:57', '2024-06-06 05:38:57'),
(2, 'Keuangan dan Akutansi', '2024-06-06 05:38:57', '2024-06-06 05:38:57'),
(3, 'Administrasi & Umum', '2024-06-06 05:38:57', '2024-06-06 05:38:57'),
(4, 'Humas & Pemasaran', '2024-06-06 05:38:57', '2024-06-06 05:38:57'),
(5, 'Sekretariat', '2024-06-06 05:38:57', '2024-06-06 05:38:57'),
(6, 'Direktur', '2024-06-06 05:38:57', '2024-06-06 05:38:57'),
(7, 'Tim Lapangan', '2024-06-11 04:59:37', '2024-06-11 04:59:37'),
(8, 'PKL SMK Telkom', '2024-07-16 18:10:23', '2024-07-16 18:10:23');

-- --------------------------------------------------------

--
-- Table structure for table `kasbons`
--

CREATE TABLE `kasbons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `nominal` int(11) NOT NULL,
  `keperluan` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lemburs`
--

CREATE TABLE `lemburs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `jam_masuk` varchar(255) NOT NULL,
  `lat_masuk` varchar(255) NOT NULL,
  `long_masuk` varchar(255) NOT NULL,
  `jarak_masuk` varchar(255) NOT NULL,
  `foto_jam_masuk` varchar(255) NOT NULL,
  `jam_keluar` varchar(255) DEFAULT NULL,
  `lat_keluar` varchar(255) DEFAULT NULL,
  `long_keluar` varchar(255) DEFAULT NULL,
  `jarak_keluar` varchar(255) DEFAULT NULL,
  `foto_jam_keluar` varchar(255) DEFAULT NULL,
  `total_lembur` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `approved_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lokasis`
--

CREATE TABLE `lokasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_lokasi` varchar(255) NOT NULL,
  `lat_kantor` varchar(255) DEFAULT NULL,
  `long_kantor` varchar(255) DEFAULT NULL,
  `radius` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lokasis`
--

INSERT INTO `lokasis` (`id`, `nama_lokasi`, `lat_kantor`, `long_kantor`, `radius`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Kantor Cabang A', '-6.3707314', '106.8138057', '200', 'approved', 1, '2024-06-06 05:38:57', '2024-06-06 05:38:57'),
(2, 'Mitrakomitel', '-6.920407262394679', '107.5155090086873', '5', 'approved', 1, '2024-06-11 05:00:02', '2024-06-11 05:06:37'),
(3, 'Mahasera', '-6.940779468884485', '107.66110559279399', '100', 'approved', 1, '2024-07-16 18:17:21', '2024-07-19 01:23:25'),
(4, 'Rumah Iman', '-6.9721071', '107.6574408', '100', 'approved', 1, '2024-07-19 02:16:36', '2024-07-19 02:16:36');

-- --------------------------------------------------------

--
-- Table structure for table `mapping_shifts`
--

CREATE TABLE `mapping_shifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `shift_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tanggal` date NOT NULL,
  `jam_absen` varchar(255) DEFAULT NULL,
  `telat` varchar(255) DEFAULT NULL,
  `lat_absen` varchar(255) DEFAULT NULL,
  `long_absen` varchar(255) DEFAULT NULL,
  `jarak_masuk` varchar(255) DEFAULT NULL,
  `foto_jam_absen` varchar(255) DEFAULT NULL,
  `jam_pulang` varchar(255) DEFAULT NULL,
  `pulang_cepat` varchar(255) DEFAULT NULL,
  `foto_jam_pulang` varchar(255) DEFAULT NULL,
  `lat_pulang` varchar(255) DEFAULT NULL,
  `long_pulang` varchar(255) DEFAULT NULL,
  `jarak_pulang` varchar(255) DEFAULT NULL,
  `status_absen` varchar(255) DEFAULT NULL,
  `lock_location` varchar(255) DEFAULT NULL,
  `keterangan_masuk` varchar(255) DEFAULT NULL,
  `keterangan_pulang` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mapping_shifts`
--

INSERT INTO `mapping_shifts` (`id`, `user_id`, `shift_id`, `tanggal`, `jam_absen`, `telat`, `lat_absen`, `long_absen`, `jarak_masuk`, `foto_jam_absen`, `jam_pulang`, `pulang_cepat`, `foto_jam_pulang`, `lat_pulang`, `long_pulang`, `jarak_pulang`, `status_absen`, `lock_location`, `keterangan_masuk`, `keterangan_pulang`, `created_at`, `updated_at`) VALUES
(16, 4, 2, '2024-07-19', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(17, 4, 2, '2024-07-20', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(18, 4, 2, '2024-07-21', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(19, 4, 2, '2024-07-22', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(20, 4, 2, '2024-07-23', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(21, 4, 2, '2024-07-24', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(22, 4, 2, '2024-07-25', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(23, 4, 2, '2024-07-26', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(24, 4, 2, '2024-07-27', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(25, 4, 2, '2024-07-28', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(26, 4, 2, '2024-07-29', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(27, 4, 2, '2024-07-30', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(28, 4, 2, '2024-07-31', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(29, 4, 2, '2024-08-01', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(30, 4, 2, '2024-08-02', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(31, 4, 2, '2024-08-03', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(32, 4, 2, '2024-08-04', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(33, 4, 2, '2024-08-05', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(34, 4, 2, '2024-08-06', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(35, 4, 2, '2024-08-07', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(36, 4, 2, '2024-08-08', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(37, 4, 2, '2024-08-09', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(38, 4, 2, '2024-08-10', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(39, 4, 2, '2024-08-11', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(40, 4, 2, '2024-08-12', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(41, 4, 2, '2024-08-13', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(42, 4, 2, '2024-08-14', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(43, 4, 2, '2024-08-15', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(44, 4, 2, '2024-08-16', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(45, 4, 2, '2024-08-17', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(46, 4, 2, '2024-08-18', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(47, 4, 2, '2024-08-19', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(48, 4, 2, '2024-08-20', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(49, 4, 2, '2024-08-21', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(50, 4, 2, '2024-08-22', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(51, 4, 2, '2024-08-23', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(52, 4, 2, '2024-08-24', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(53, 4, 2, '2024-08-25', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(54, 4, 2, '2024-08-26', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(55, 4, 2, '2024-08-27', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(56, 4, 2, '2024-08-28', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(57, 4, 2, '2024-08-29', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(58, 4, 2, '2024-08-30', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(59, 4, 2, '2024-08-31', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(60, 4, 2, '2024-09-01', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(61, 4, 2, '2024-09-02', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(62, 4, 2, '2024-09-03', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(63, 4, 2, '2024-09-04', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(64, 4, 2, '2024-09-05', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(65, 4, 2, '2024-09-06', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(66, 4, 2, '2024-09-07', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(67, 4, 2, '2024-09-08', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(68, 4, 2, '2024-09-09', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(69, 4, 2, '2024-09-10', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(70, 4, 2, '2024-09-11', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(71, 4, 2, '2024-09-12', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(72, 4, 2, '2024-09-13', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(73, 4, 2, '2024-09-14', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(74, 4, 2, '2024-09-15', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(75, 4, 2, '2024-09-16', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(76, 4, 2, '2024-09-17', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(77, 4, 2, '2024-09-18', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(78, 4, 2, '2024-09-19', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(79, 4, 2, '2024-09-20', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(80, 4, 2, '2024-09-21', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(81, 4, 2, '2024-09-22', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(82, 4, 2, '2024-09-23', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(83, 4, 2, '2024-09-24', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(84, 4, 2, '2024-09-25', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(85, 4, 2, '2024-09-26', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(86, 4, 2, '2024-09-27', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(87, 4, 2, '2024-09-28', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(88, 4, 2, '2024-09-29', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(89, 4, 2, '2024-09-30', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(90, 4, 2, '2024-10-01', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(91, 4, 2, '2024-10-02', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(92, 4, 2, '2024-10-03', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(93, 4, 2, '2024-10-04', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(94, 4, 2, '2024-10-05', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(95, 4, 2, '2024-10-06', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(96, 4, 2, '2024-10-07', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(97, 4, 2, '2024-10-08', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(98, 4, 2, '2024-10-09', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(99, 4, 2, '2024-10-10', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(100, 4, 2, '2024-10-11', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(101, 4, 2, '2024-10-12', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(102, 4, 2, '2024-10-13', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(103, 4, 2, '2024-10-14', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(104, 4, 2, '2024-10-15', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(105, 4, 2, '2024-10-16', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(106, 4, 2, '2024-10-17', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(107, 4, 2, '2024-10-18', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(108, 4, 2, '2024-10-19', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(109, 4, 2, '2024-10-20', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(110, 4, 2, '2024-10-21', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(111, 4, 2, '2024-10-22', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(112, 4, 2, '2024-10-23', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(113, 4, 2, '2024-10-24', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(114, 4, 2, '2024-10-25', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(115, 4, 2, '2024-10-26', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(116, 4, 2, '2024-10-27', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(117, 4, 2, '2024-10-28', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(118, 4, 2, '2024-10-29', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(119, 4, 2, '2024-10-30', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(120, 4, 2, '2024-10-31', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 11:53:17', '2024-07-18 11:53:17'),
(121, 5, 2, '2024-07-19', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(122, 5, 2, '2024-07-20', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(123, 5, 2, '2024-07-21', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(124, 5, 2, '2024-07-22', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(125, 5, 2, '2024-07-23', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(126, 5, 2, '2024-07-24', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(127, 5, 2, '2024-07-25', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(128, 5, 2, '2024-07-26', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(129, 5, 2, '2024-07-27', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(130, 5, 2, '2024-07-28', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(131, 5, 2, '2024-07-29', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(132, 5, 2, '2024-07-30', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(133, 5, 2, '2024-07-31', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(134, 5, 2, '2024-08-01', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(135, 5, 2, '2024-08-02', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(136, 5, 2, '2024-08-03', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(137, 5, 2, '2024-08-04', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(138, 5, 2, '2024-08-05', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(139, 5, 2, '2024-08-06', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(140, 5, 2, '2024-08-07', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(141, 5, 2, '2024-08-08', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(142, 5, 2, '2024-08-09', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(143, 5, 2, '2024-08-10', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(144, 5, 2, '2024-08-11', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(145, 5, 2, '2024-08-12', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(146, 5, 2, '2024-08-13', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(147, 5, 2, '2024-08-14', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(148, 5, 2, '2024-08-15', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(149, 5, 2, '2024-08-16', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(150, 5, 2, '2024-08-17', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(151, 5, 2, '2024-08-18', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(152, 5, 2, '2024-08-19', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(153, 5, 2, '2024-08-20', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(154, 5, 2, '2024-08-21', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(155, 5, 2, '2024-08-22', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(156, 5, 2, '2024-08-23', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(157, 5, 2, '2024-08-24', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(158, 5, 2, '2024-08-25', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(159, 5, 2, '2024-08-26', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(160, 5, 2, '2024-08-27', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(161, 5, 2, '2024-08-28', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(162, 5, 2, '2024-08-29', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(163, 5, 2, '2024-08-30', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(164, 5, 2, '2024-08-31', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(165, 5, 2, '2024-09-01', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(166, 5, 2, '2024-09-02', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(167, 5, 2, '2024-09-03', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(168, 5, 2, '2024-09-04', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(169, 5, 2, '2024-09-05', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(170, 5, 2, '2024-09-06', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(171, 5, 2, '2024-09-07', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(172, 5, 2, '2024-09-08', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(173, 5, 2, '2024-09-09', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(174, 5, 2, '2024-09-10', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(175, 5, 2, '2024-09-11', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(176, 5, 2, '2024-09-12', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(177, 5, 2, '2024-09-13', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(178, 5, 2, '2024-09-14', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(179, 5, 2, '2024-09-15', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(180, 5, 2, '2024-09-16', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(181, 5, 2, '2024-09-17', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(182, 5, 2, '2024-09-18', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(183, 5, 2, '2024-09-19', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(184, 5, 2, '2024-09-20', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(185, 5, 2, '2024-09-21', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(186, 5, 2, '2024-09-22', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(187, 5, 2, '2024-09-23', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(188, 5, 2, '2024-09-24', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(189, 5, 2, '2024-09-25', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(190, 5, 2, '2024-09-26', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(191, 5, 2, '2024-09-27', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(192, 5, 2, '2024-09-28', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(193, 5, 2, '2024-09-29', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(194, 5, 2, '2024-09-30', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(195, 5, 2, '2024-10-01', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(196, 5, 2, '2024-10-02', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(197, 5, 2, '2024-10-03', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(198, 5, 2, '2024-10-04', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(199, 5, 2, '2024-10-05', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(200, 5, 2, '2024-10-06', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(201, 5, 2, '2024-10-07', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(202, 5, 2, '2024-10-08', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(203, 5, 2, '2024-10-09', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(204, 5, 2, '2024-10-10', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(205, 5, 2, '2024-10-11', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(206, 5, 2, '2024-10-12', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(207, 5, 2, '2024-10-13', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(208, 5, 2, '2024-10-14', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(209, 5, 2, '2024-10-15', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(210, 5, 2, '2024-10-16', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(211, 5, 2, '2024-10-17', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(212, 5, 2, '2024-10-18', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(213, 5, 2, '2024-10-19', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(214, 5, 2, '2024-10-20', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(215, 5, 2, '2024-10-21', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(216, 5, 2, '2024-10-22', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(217, 5, 2, '2024-10-23', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(218, 5, 2, '2024-10-24', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(219, 5, 2, '2024-10-25', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(220, 5, 2, '2024-10-26', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(221, 5, 2, '2024-10-27', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(222, 5, 2, '2024-10-28', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(223, 5, 2, '2024-10-29', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(224, 5, 2, '2024-10-30', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(225, 5, 2, '2024-10-31', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-18 12:08:58', '2024-07-18 12:08:58'),
(226, 6, 2, '2024-07-19', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(227, 6, 2, '2024-07-20', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(228, 6, 2, '2024-07-21', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(229, 6, 2, '2024-07-22', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(230, 6, 2, '2024-07-23', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(231, 6, 2, '2024-07-24', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(232, 6, 2, '2024-07-25', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(233, 6, 2, '2024-07-26', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(234, 6, 2, '2024-07-27', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(235, 6, 2, '2024-07-28', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(236, 6, 2, '2024-07-29', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(237, 6, 2, '2024-07-30', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(238, 6, 2, '2024-07-31', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(239, 6, 2, '2024-08-01', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(240, 6, 2, '2024-08-02', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(241, 6, 2, '2024-08-03', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(242, 6, 2, '2024-08-04', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(243, 6, 2, '2024-08-05', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(244, 6, 2, '2024-08-06', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(245, 6, 2, '2024-08-07', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(246, 6, 2, '2024-08-08', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(247, 6, 2, '2024-08-09', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(248, 6, 2, '2024-08-10', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(249, 6, 2, '2024-08-11', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(250, 6, 2, '2024-08-12', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(251, 6, 2, '2024-08-13', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(252, 6, 2, '2024-08-14', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(253, 6, 2, '2024-08-15', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(254, 6, 2, '2024-08-16', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(255, 6, 2, '2024-08-17', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(256, 6, 2, '2024-08-18', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(257, 6, 2, '2024-08-19', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(258, 6, 2, '2024-08-20', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(259, 6, 2, '2024-08-21', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(260, 6, 2, '2024-08-22', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(261, 6, 2, '2024-08-23', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(262, 6, 2, '2024-08-24', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(263, 6, 2, '2024-08-25', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(264, 6, 2, '2024-08-26', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(265, 6, 2, '2024-08-27', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(266, 6, 2, '2024-08-28', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(267, 6, 2, '2024-08-29', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(268, 6, 2, '2024-08-30', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(269, 6, 2, '2024-08-31', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(270, 6, 2, '2024-09-01', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(271, 6, 2, '2024-09-02', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(272, 6, 2, '2024-09-03', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(273, 6, 2, '2024-09-04', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(274, 6, 2, '2024-09-05', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(275, 6, 2, '2024-09-06', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(276, 6, 2, '2024-09-07', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(277, 6, 2, '2024-09-08', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(278, 6, 2, '2024-09-09', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(279, 6, 2, '2024-09-10', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(280, 6, 2, '2024-09-11', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(281, 6, 2, '2024-09-12', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(282, 6, 2, '2024-09-13', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(283, 6, 2, '2024-09-14', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(284, 6, 2, '2024-09-15', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(285, 6, 2, '2024-09-16', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(286, 6, 2, '2024-09-17', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(287, 6, 2, '2024-09-18', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(288, 6, 2, '2024-09-19', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(289, 6, 2, '2024-09-20', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(290, 6, 2, '2024-09-21', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(291, 6, 2, '2024-09-22', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(292, 6, 2, '2024-09-23', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(293, 6, 2, '2024-09-24', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(294, 6, 2, '2024-09-25', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(295, 6, 2, '2024-09-26', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(296, 6, 2, '2024-09-27', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(297, 6, 2, '2024-09-28', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(298, 6, 2, '2024-09-29', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(299, 6, 2, '2024-09-30', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(300, 6, 2, '2024-10-01', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(301, 6, 2, '2024-10-02', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(302, 6, 2, '2024-10-03', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43');
INSERT INTO `mapping_shifts` (`id`, `user_id`, `shift_id`, `tanggal`, `jam_absen`, `telat`, `lat_absen`, `long_absen`, `jarak_masuk`, `foto_jam_absen`, `jam_pulang`, `pulang_cepat`, `foto_jam_pulang`, `lat_pulang`, `long_pulang`, `jarak_pulang`, `status_absen`, `lock_location`, `keterangan_masuk`, `keterangan_pulang`, `created_at`, `updated_at`) VALUES
(303, 6, 2, '2024-10-04', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(304, 6, 2, '2024-10-05', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(305, 6, 2, '2024-10-06', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(306, 6, 2, '2024-10-07', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(307, 6, 2, '2024-10-08', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(308, 6, 2, '2024-10-09', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(309, 6, 2, '2024-10-10', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(310, 6, 2, '2024-10-11', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(311, 6, 2, '2024-10-12', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(312, 6, 2, '2024-10-13', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(313, 6, 2, '2024-10-14', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(314, 6, 2, '2024-10-15', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(315, 6, 2, '2024-10-16', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(316, 6, 2, '2024-10-17', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(317, 6, 2, '2024-10-18', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(318, 6, 2, '2024-10-19', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(319, 6, 2, '2024-10-20', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(320, 6, 2, '2024-10-21', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(321, 6, 2, '2024-10-22', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(322, 6, 2, '2024-10-23', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(323, 6, 2, '2024-10-24', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(324, 6, 2, '2024-10-25', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(325, 6, 2, '2024-10-26', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(326, 6, 2, '2024-10-27', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(327, 6, 2, '2024-10-28', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(328, 6, 2, '2024-10-29', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(329, 6, 2, '2024-10-30', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(330, 6, 2, '2024-10-31', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:34:43', '2024-07-19 01:34:43'),
(331, 8, 2, '2024-07-19', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(332, 8, 2, '2024-07-20', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(333, 8, 2, '2024-07-21', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(334, 8, 2, '2024-07-22', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(335, 8, 2, '2024-07-23', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(336, 8, 2, '2024-07-24', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(337, 8, 2, '2024-07-25', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(338, 8, 2, '2024-07-26', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(339, 8, 2, '2024-07-27', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(340, 8, 2, '2024-07-28', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(341, 8, 2, '2024-07-29', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(342, 8, 2, '2024-07-30', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(343, 8, 2, '2024-07-31', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(344, 8, 2, '2024-08-01', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(345, 8, 2, '2024-08-02', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(346, 8, 2, '2024-08-03', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(347, 8, 2, '2024-08-04', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(348, 8, 2, '2024-08-05', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(349, 8, 2, '2024-08-06', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(350, 8, 2, '2024-08-07', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(351, 8, 2, '2024-08-08', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(352, 8, 2, '2024-08-09', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(353, 8, 2, '2024-08-10', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(354, 8, 2, '2024-08-11', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(355, 8, 2, '2024-08-12', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(356, 8, 2, '2024-08-13', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(357, 8, 2, '2024-08-14', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(358, 8, 2, '2024-08-15', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(359, 8, 2, '2024-08-16', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(360, 8, 2, '2024-08-17', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(361, 8, 2, '2024-08-18', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(362, 8, 2, '2024-08-19', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(363, 8, 2, '2024-08-20', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(364, 8, 2, '2024-08-21', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(365, 8, 2, '2024-08-22', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(366, 8, 2, '2024-08-23', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(367, 8, 2, '2024-08-24', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(368, 8, 2, '2024-08-25', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(369, 8, 2, '2024-08-26', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(370, 8, 2, '2024-08-27', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(371, 8, 2, '2024-08-28', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(372, 8, 2, '2024-08-29', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(373, 8, 2, '2024-08-30', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(374, 8, 2, '2024-08-31', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(375, 8, 2, '2024-09-01', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(376, 8, 2, '2024-09-02', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(377, 8, 2, '2024-09-03', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(378, 8, 2, '2024-09-04', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(379, 8, 2, '2024-09-05', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(380, 8, 2, '2024-09-06', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(381, 8, 2, '2024-09-07', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(382, 8, 2, '2024-09-08', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(383, 8, 2, '2024-09-09', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(384, 8, 2, '2024-09-10', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(385, 8, 2, '2024-09-11', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(386, 8, 2, '2024-09-12', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(387, 8, 2, '2024-09-13', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(388, 8, 2, '2024-09-14', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(389, 8, 2, '2024-09-15', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(390, 8, 2, '2024-09-16', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(391, 8, 2, '2024-09-17', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(392, 8, 2, '2024-09-18', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(393, 8, 2, '2024-09-19', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(394, 8, 2, '2024-09-20', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(395, 8, 2, '2024-09-21', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(396, 8, 2, '2024-09-22', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(397, 8, 2, '2024-09-23', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(398, 8, 2, '2024-09-24', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(399, 8, 2, '2024-09-25', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(400, 8, 2, '2024-09-26', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(401, 8, 2, '2024-09-27', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(402, 8, 2, '2024-09-28', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(403, 8, 2, '2024-09-29', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(404, 8, 2, '2024-09-30', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(405, 8, 2, '2024-10-01', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(406, 8, 2, '2024-10-02', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(407, 8, 2, '2024-10-03', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(408, 8, 2, '2024-10-04', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(409, 8, 2, '2024-10-05', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(410, 8, 2, '2024-10-06', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(411, 8, 2, '2024-10-07', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(412, 8, 2, '2024-10-08', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(413, 8, 2, '2024-10-09', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(414, 8, 2, '2024-10-10', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(415, 8, 2, '2024-10-11', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(416, 8, 2, '2024-10-12', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(417, 8, 2, '2024-10-13', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(418, 8, 2, '2024-10-14', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(419, 8, 2, '2024-10-15', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(420, 8, 2, '2024-10-16', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(421, 8, 2, '2024-10-17', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(422, 8, 2, '2024-10-18', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(423, 8, 2, '2024-10-19', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(424, 8, 2, '2024-10-20', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(425, 8, 2, '2024-10-21', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(426, 8, 2, '2024-10-22', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(427, 8, 2, '2024-10-23', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(428, 8, 2, '2024-10-24', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(429, 8, 2, '2024-10-25', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(430, 8, 2, '2024-10-26', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(431, 8, 2, '2024-10-27', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(432, 8, 2, '2024-10-28', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(433, 8, 2, '2024-10-29', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(434, 8, 2, '2024-10-30', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(435, 8, 2, '2024-10-31', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 01:35:03', '2024-07-19 01:35:03'),
(541, 10, 2, '2024-07-19', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(542, 10, 2, '2024-07-20', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(543, 10, 2, '2024-07-21', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(544, 10, 2, '2024-07-22', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(545, 10, 2, '2024-07-23', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(546, 10, 2, '2024-07-24', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(547, 10, 2, '2024-07-25', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(548, 10, 2, '2024-07-26', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(549, 10, 2, '2024-07-27', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(550, 10, 2, '2024-07-28', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(551, 10, 2, '2024-07-29', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(552, 10, 2, '2024-07-30', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(553, 10, 2, '2024-07-31', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(554, 10, 2, '2024-08-01', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(555, 10, 2, '2024-08-02', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(556, 10, 2, '2024-08-03', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(557, 10, 2, '2024-08-04', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(558, 10, 2, '2024-08-05', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(559, 10, 2, '2024-08-06', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(560, 10, 2, '2024-08-07', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(561, 10, 2, '2024-08-08', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(562, 10, 2, '2024-08-09', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(563, 10, 2, '2024-08-10', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(564, 10, 2, '2024-08-11', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(565, 10, 2, '2024-08-12', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(566, 10, 2, '2024-08-13', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(567, 10, 2, '2024-08-14', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(568, 10, 2, '2024-08-15', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(569, 10, 2, '2024-08-16', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(570, 10, 2, '2024-08-17', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(571, 10, 2, '2024-08-18', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(572, 10, 2, '2024-08-19', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(573, 10, 2, '2024-08-20', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(574, 10, 2, '2024-08-21', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(575, 10, 2, '2024-08-22', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(576, 10, 2, '2024-08-23', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(577, 10, 2, '2024-08-24', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(578, 10, 2, '2024-08-25', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(579, 10, 2, '2024-08-26', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(580, 10, 2, '2024-08-27', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(581, 10, 2, '2024-08-28', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(582, 10, 2, '2024-08-29', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(583, 10, 2, '2024-08-30', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(584, 10, 2, '2024-08-31', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(585, 10, 2, '2024-09-01', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(586, 10, 2, '2024-09-02', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(587, 10, 2, '2024-09-03', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(588, 10, 2, '2024-09-04', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(589, 10, 2, '2024-09-05', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(590, 10, 2, '2024-09-06', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(591, 10, 2, '2024-09-07', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(592, 10, 2, '2024-09-08', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(593, 10, 2, '2024-09-09', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(594, 10, 2, '2024-09-10', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(595, 10, 2, '2024-09-11', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(596, 10, 2, '2024-09-12', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(597, 10, 2, '2024-09-13', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(598, 10, 2, '2024-09-14', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(599, 10, 2, '2024-09-15', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(600, 10, 2, '2024-09-16', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(601, 10, 2, '2024-09-17', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(602, 10, 2, '2024-09-18', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(603, 10, 2, '2024-09-19', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(604, 10, 2, '2024-09-20', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(605, 10, 2, '2024-09-21', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(606, 10, 2, '2024-09-22', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(607, 10, 2, '2024-09-23', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(608, 10, 2, '2024-09-24', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(609, 10, 2, '2024-09-25', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(610, 10, 2, '2024-09-26', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(611, 10, 2, '2024-09-27', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(612, 10, 2, '2024-09-28', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(613, 10, 2, '2024-09-29', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(614, 10, 2, '2024-09-30', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(615, 10, 2, '2024-10-01', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(616, 10, 2, '2024-10-02', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(617, 10, 2, '2024-10-03', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(618, 10, 2, '2024-10-04', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(619, 10, 2, '2024-10-05', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(620, 10, 2, '2024-10-06', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(621, 10, 2, '2024-10-07', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(622, 10, 2, '2024-10-08', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(623, 10, 2, '2024-10-09', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(624, 10, 2, '2024-10-10', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(625, 10, 2, '2024-10-11', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(626, 10, 2, '2024-10-12', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(627, 10, 2, '2024-10-13', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(628, 10, 2, '2024-10-14', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(629, 10, 2, '2024-10-15', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(630, 10, 2, '2024-10-16', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(631, 10, 2, '2024-10-17', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(632, 10, 2, '2024-10-18', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(633, 10, 2, '2024-10-19', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(634, 10, 2, '2024-10-20', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(635, 10, 2, '2024-10-21', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(636, 10, 2, '2024-10-22', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(637, 10, 2, '2024-10-23', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(638, 10, 2, '2024-10-24', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(639, 10, 2, '2024-10-25', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(640, 10, 2, '2024-10-26', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(641, 10, 2, '2024-10-27', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(642, 10, 2, '2024-10-28', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(643, 10, 2, '2024-10-29', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(644, 10, 2, '2024-10-30', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(645, 10, 2, '2024-10-31', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 02:06:26', '2024-07-19 02:06:26'),
(646, 12, 2, '2024-07-19', '16:19', '28140', '-6.9721071', '107.6574408', '0', 'foto_jam_absen/669a2f879cb96.png', '16:19', '2460', 'foto_jam_pulang/669a2f9d118db.png', '-6.9721071', '107.6574408', '0', 'Masuk', '1', NULL, NULL, '2024-07-19 09:18:39', '2024-07-19 09:19:25'),
(647, 12, 2, '2024-07-20', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 09:18:39', '2024-07-19 09:18:39'),
(648, 12, 2, '2024-07-21', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 09:18:39', '2024-07-19 09:18:39'),
(649, 12, 2, '2024-07-22', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 09:18:39', '2024-07-19 09:18:39'),
(650, 12, 2, '2024-07-23', '10:54', '8640', '-6.9721215', '107.6574543', '2.1854695397305', 'foto_jam_absen/669f2973b586f.png', NULL, '0', NULL, NULL, NULL, NULL, 'Masuk', '1', NULL, NULL, '2024-07-19 09:18:39', '2024-07-23 03:54:27'),
(651, 12, 2, '2024-07-24', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 09:18:39', '2024-07-19 09:18:39'),
(652, 12, 2, '2024-07-25', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 09:18:39', '2024-07-19 09:18:39'),
(653, 12, 2, '2024-07-26', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 09:18:39', '2024-07-19 09:18:39'),
(654, 12, 2, '2024-07-27', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 09:18:39', '2024-07-19 09:18:39'),
(655, 12, 2, '2024-07-28', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 09:18:39', '2024-07-19 09:18:39'),
(656, 12, 2, '2024-07-29', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 09:18:39', '2024-07-19 09:18:39'),
(657, 12, 2, '2024-07-30', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 09:18:39', '2024-07-19 09:18:39'),
(658, 12, 2, '2024-07-31', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, '2024-07-19 09:18:39', '2024-07-19 09:18:39');

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
(5, '2022_09_16_095447_create_shifts_table', 1),
(6, '2022_09_19_032649_create_mapping_shifts_table', 1),
(7, '2022_09_20_074944_create_lemburs_table', 1),
(8, '2022_09_20_092230_create_cutis_table', 1),
(9, '2022_10_31_083510_create_lokasis_table', 1),
(10, '2022_11_02_061554_create_reset_cutis_table', 1),
(11, '2022_12_01_041742_create_sips_table', 1),
(12, '2022_12_14_080034_create_jabatans_table', 1),
(13, '2023_03_22_103407_create_dinas_luars_table', 1),
(14, '2023_04_10_130307_create_auto_shifts_table', 1),
(15, '2023_06_28_042019_create_files_table', 1),
(16, '2023_07_15_095632_create_tunjangans_table', 1),
(17, '2023_07_16_152608_create_golongans_table', 1),
(18, '2023_07_19_122052_create_status_ptkps_table', 1),
(19, '2023_07_20_082307_create_pajaks_table', 1),
(20, '2023_07_21_085614_create_payrolls_table', 1),
(21, '2023_12_05_140334_create_counters_table', 1),
(22, '2023_12_06_163716_create_kasbons_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pajaks`
--

CREATE TABLE `pajaks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `bulan` varchar(255) NOT NULL,
  `tahun` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `payrolls`
--

CREATE TABLE `payrolls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `bulan` varchar(255) NOT NULL,
  `tahun` varchar(255) NOT NULL,
  `persentase_kehadiran` varchar(255) NOT NULL,
  `no_gaji` varchar(255) NOT NULL,
  `gaji_pokok` int(11) NOT NULL,
  `uang_transport` int(11) NOT NULL,
  `jumlah_mangkir` int(11) NOT NULL,
  `uang_mangkir` int(11) NOT NULL,
  `total_mangkir` int(11) NOT NULL,
  `jumlah_lembur` int(11) NOT NULL,
  `uang_lembur` int(11) NOT NULL,
  `total_lembur` int(11) NOT NULL,
  `jumlah_izin` int(11) NOT NULL,
  `uang_izin` int(11) NOT NULL,
  `total_izin` int(11) NOT NULL,
  `jumlah_bonus` int(11) NOT NULL,
  `uang_bonus` int(11) NOT NULL,
  `total_bonus` int(11) NOT NULL,
  `jumlah_terlambat` int(11) NOT NULL,
  `uang_terlambat` int(11) NOT NULL,
  `total_terlambat` int(11) NOT NULL,
  `jumlah_kehadiran` int(11) NOT NULL,
  `uang_kehadiran` int(11) NOT NULL,
  `total_kehadiran` int(11) NOT NULL,
  `saldo_kasbon` int(11) NOT NULL,
  `bayar_kasbon` int(11) NOT NULL,
  `jumlah_thr` int(11) NOT NULL,
  `uang_thr` int(11) NOT NULL,
  `total_thr` int(11) NOT NULL,
  `loss` int(11) NOT NULL,
  `total_penjumlahan` int(11) NOT NULL,
  `total_pengurangan` int(11) NOT NULL,
  `grand_total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reset_cutis`
--

CREATE TABLE `reset_cutis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `izin_cuti` varchar(255) NOT NULL,
  `izin_dinas_luar` varchar(255) NOT NULL,
  `izin_sakit` varchar(255) NOT NULL,
  `izin_cek_kesehatan` varchar(255) NOT NULL,
  `izin_keperluan_pribadi` varchar(255) NOT NULL,
  `izin_telat` varchar(255) NOT NULL,
  `izin_pulang_cepat` varchar(255) NOT NULL,
  `izin_lainnya` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reset_cutis`
--

INSERT INTO `reset_cutis` (`id`, `izin_cuti`, `izin_dinas_luar`, `izin_sakit`, `izin_cek_kesehatan`, `izin_keperluan_pribadi`, `izin_telat`, `izin_pulang_cepat`, `izin_lainnya`, `created_at`, `updated_at`) VALUES
(1, '10', '10', '10', '10', '10', '10', '10', '10', '2024-06-06 05:38:57', '2024-06-06 05:38:57');

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_shift` varchar(255) NOT NULL,
  `jam_masuk` varchar(255) NOT NULL,
  `jam_keluar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`id`, `nama_shift`, `jam_masuk`, `jam_keluar`, `created_at`, `updated_at`) VALUES
(1, 'Libur', '00:00', '00:00', '2024-06-06 05:38:57', '2024-06-06 05:38:57'),
(2, 'Office', '08:30', '17:00', '2024-06-06 05:38:57', '2024-07-16 18:39:24'),
(3, 'Siang', '13:00', '21:00', '2024-06-06 05:38:57', '2024-06-06 05:38:57'),
(4, 'Malam', '21:00', '07:00', '2024-06-06 05:38:57', '2024-06-06 05:38:57');

-- --------------------------------------------------------

--
-- Table structure for table `sips`
--

CREATE TABLE `sips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nama_dokumen` varchar(255) NOT NULL,
  `tanggal_berakhir` varchar(255) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status_ptkps`
--

CREATE TABLE `status_ptkps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `ptkp_2016` decimal(15,2) NOT NULL DEFAULT 0.00,
  `ptkp_2015` decimal(15,2) NOT NULL DEFAULT 0.00,
  `ptkp_2009_2012` decimal(15,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_ptkps`
--

INSERT INTO `status_ptkps` (`id`, `name`, `ptkp_2016`, `ptkp_2015`, `ptkp_2009_2012`, `created_at`, `updated_at`) VALUES
(1, 'TK/0', 54000000.00, 36000000.00, 15840000.00, '2024-06-06 05:38:57', '2024-06-06 05:38:57'),
(2, 'TK/1', 58500000.00, 39000000.00, 17160000.00, '2024-06-06 05:38:57', '2024-06-06 05:38:57'),
(3, 'TK/2', 63000000.00, 42000000.00, 18480000.00, '2024-06-06 05:38:57', '2024-06-06 05:38:57'),
(4, 'TK/3', 67500000.00, 45000000.00, 19800000.00, '2024-06-06 05:38:57', '2024-06-06 05:38:57');

-- --------------------------------------------------------

--
-- Table structure for table `tunjangans`
--

CREATE TABLE `tunjangans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `golongan_id` bigint(20) UNSIGNED NOT NULL,
  `tunjangan_makan` decimal(15,2) NOT NULL DEFAULT 0.00,
  `tunjangan_transport` decimal(15,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tunjangans`
--

INSERT INTO `tunjangans` (`id`, `golongan_id`, `tunjangan_makan`, `tunjangan_transport`, `created_at`, `updated_at`) VALUES
(1, 1, 20000.00, 20000.00, '2024-06-06 05:38:57', '2024-06-06 05:38:57'),
(2, 2, 30000.00, 20000.00, '2024-06-06 05:38:57', '2024-06-06 05:38:57'),
(3, 3, 30000.00, 30000.00, '2024-06-06 05:38:57', '2024-06-06 05:38:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `foto_karyawan` varchar(255) DEFAULT NULL,
  `foto_face_recognition` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `tgl_lahir` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `tgl_join` varchar(255) DEFAULT NULL,
  `status_nikah` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `izin_cuti` int(11) NOT NULL DEFAULT 0,
  `izin_lainnya` int(11) NOT NULL DEFAULT 0,
  `izin_telat` int(11) NOT NULL DEFAULT 0,
  `izin_pulang_cepat` int(11) NOT NULL DEFAULT 0,
  `is_admin` varchar(255) NOT NULL DEFAULT '0',
  `jabatan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lokasi_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rekening` varchar(255) DEFAULT NULL,
  `gaji_pokok` int(11) DEFAULT NULL,
  `makan_transport` int(11) DEFAULT NULL,
  `lembur` int(11) DEFAULT NULL,
  `kehadiran` int(11) DEFAULT NULL,
  `thr` int(11) DEFAULT NULL,
  `bonus` int(11) DEFAULT NULL,
  `izin` int(11) DEFAULT NULL,
  `terlambat` int(11) DEFAULT NULL,
  `mangkir` int(11) DEFAULT NULL,
  `saldo_kasbon` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `foto_karyawan`, `foto_face_recognition`, `email`, `telepon`, `username`, `password`, `tgl_lahir`, `gender`, `tgl_join`, `status_nikah`, `alamat`, `izin_cuti`, `izin_lainnya`, `izin_telat`, `izin_pulang_cepat`, `is_admin`, `jabatan_id`, `lokasi_id`, `rekening`, `gaji_pokok`, `makan_transport`, `lembur`, `kehadiran`, `thr`, `bonus`, `izin`, `terlambat`, `mangkir`, `saldo_kasbon`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL, 'admin@gmail.com', '0987654321', 'admin', '$2y$10$2wMCiKFCmQyoO1cTIBm/seG2B7.ju8hmMDrWdNzzV3vIf6fR/ZgUi', '2024-06-06', 'Laki-Laki', '1998-01-26', 'Menikah', 'jl. admin test', 12, 6, 16, 9, 'admin', 1, 1, '5112231', 7000000, 800000, 20000, 300000, 200000, 200000, 100000, 100000, 200000, 220000, NULL, 'wnVNlGdKuImc91jAfUnIGlf9KmbpBeRY9ZauWPDPqwcdOc9j1vR4NhJ8yNJ6', '2024-06-06 05:38:57', '2024-06-06 05:38:57'),
(2, 'User', NULL, NULL, 'user@gmail.com', '123456789', 'user', '$2y$10$u3MyhdY.hUBe.5B78coESOZ4IdDQIZ2Z5l2Z5GavnQM0EGFm/RDRy', '2024-06-06', 'Laki-Laki', '2022-01-28', 'Lajang', 'jl. user test', 10, 10, 10, 10, 'user', 2, 2, '5112231', 10000000, 900000, 20000, 800000, 700000, 600000, 100000, 100000, 200000, 4000000, NULL, NULL, '2024-06-06 05:38:57', '2024-06-11 05:03:44'),
(4, 'Rajwaa Aditya Narayan', NULL, NULL, 'rajwaaaditya@gmail.com', NULL, 'Rajwaa', '$2y$10$GSNNPsdPpyIQgtZCR3QbmuydSKSgnsm7BxzVIwCEIJQN19.VIMEyi', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'user', 8, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VkWtP7IZXN5729O1nEhIkygTes3RBdC66qrTOOrIlWIXuyrhV04BUyZpfrxk', '2024-07-18 04:48:16', '2024-07-18 04:48:16'),
(5, 'AWWAL RAMADHANI HAKIM', NULL, NULL, 'awwalramadhani2409@gmail.com', NULL, 'AWWAL', '$2y$10$lOH1S0cqhMt8FW9/OKJn.umsDCFcVFjjwq.Mi7QE1EIdhjyQ/3TDi', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'user', 8, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'K9owt8ol7KP5Virk5WpqFHtPTcNI15lTVlaW9AuwMn14VqVeWRtuCh7U9O9a', '2024-07-18 05:04:06', '2024-07-18 05:04:06'),
(6, 'Lya', NULL, NULL, 'lyaafrillya22@gmail.com', NULL, 'Afrillya', '$2y$10$t9uTbhCPXY5MvUjkhjQz.OZkiZkaA8Cto79JcCjEqqUbswOn8QOce', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'user', 8, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-18 05:16:17', '2024-07-18 05:16:17'),
(8, 'Faris Haikal Rasyadan', NULL, NULL, 'rasyadan88@gmail.com', NULL, 'Haikal', '$2y$10$Q3gK4ha/QOwx4xDM2Jkal.RRUOtcbtpuaNvbNIpqr5I7yV/JnwtZW', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'user', 8, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-18 05:28:23', '2024-07-18 05:28:23'),
(9, 'Niluh Putu Sri Astuti', NULL, NULL, 'Putu.astuti@mahasera.co.id', '08971588077', 'Uty', '$2y$10$a3nL6j1GatFG1DbEgBP/y.hLLhdGKFJ7.9wFcJCrUy8b8kL8UyVAO', '1995-07-06', 'Laki-Laki', '2024-07-01', 'Menikah', 'Cibiru Bandung', 0, 0, 0, 0, 'admin', 3, 3, NULL, 2500000, 300000, 20000, 100, 2500000, 2500000, 25000, 10000, 35000, 0, NULL, 'lWFNlsomlB8RB37Z4FCqblS8h4ofqjGzZt0yFx6EDlgKzf3nfLpxhfARX0vM', '2024-07-18 18:41:10', '2024-07-18 20:29:23'),
(10, 'Muhamad Dinar Purnama', NULL, NULL, 'dinarpurnama2709@gmail.com', NULL, 'Dinar', '$2y$10$QbDiMDd32Fe4xak5LYtKDeF7bIP1jk.teaDj2VjK294mIpJv1REG.', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'user', 8, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aRwTwCYWw8NUJSehKEevxmKbk6XWPdV5GqJJJSTI8psNTL9Ex9FrQuWwAJjm', '2024-07-18 19:00:38', '2024-07-18 19:00:38'),
(11, 'Haidar Muzakki Tamima', NULL, NULL, 'haidarmuzakki48@gmail.com', NULL, 'Haidar Muzakki Tamima', '$2y$10$7qQyR3PhRyW3r3MPtnz/UeLPJmK/RF9Svk2/Mr2SuUzY2TzDxf7Bq', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'user', 8, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'qO2qwvq70JKgRn7d8R2hucr5A73HjXsxVRh4jm4cC0HXjnsu1MW9z32b4RKm', '2024-07-19 01:13:54', '2024-07-19 01:13:54'),
(12, 'Jamadi', NULL, NULL, 'mitrakomitel@gmail.com', NULL, 'jumadi', '$2y$10$k7mwXE62eyuCf.wsuMboKufNj5/qIBbm.r8LwSuhleZ6jzDscSvcu', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'user', 8, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-19 02:17:37', '2024-07-22 20:53:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auto_shifts`
--
ALTER TABLE `auto_shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cutis`
--
ALTER TABLE `cutis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dinas_luars`
--
ALTER TABLE `dinas_luars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `golongans`
--
ALTER TABLE `golongans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jabatans`
--
ALTER TABLE `jabatans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kasbons`
--
ALTER TABLE `kasbons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lemburs`
--
ALTER TABLE `lemburs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lemburs_approved_by_foreign` (`approved_by`);

--
-- Indexes for table `lokasis`
--
ALTER TABLE `lokasis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lokasis_created_by_foreign` (`created_by`);

--
-- Indexes for table `mapping_shifts`
--
ALTER TABLE `mapping_shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pajaks`
--
ALTER TABLE `pajaks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pajaks_status_id_foreign` (`status_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payrolls`
--
ALTER TABLE `payrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reset_cutis`
--
ALTER TABLE `reset_cutis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sips`
--
ALTER TABLE `sips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_ptkps`
--
ALTER TABLE `status_ptkps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tunjangans`
--
ALTER TABLE `tunjangans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auto_shifts`
--
ALTER TABLE `auto_shifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cutis`
--
ALTER TABLE `cutis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dinas_luars`
--
ALTER TABLE `dinas_luars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `golongans`
--
ALTER TABLE `golongans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jabatans`
--
ALTER TABLE `jabatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kasbons`
--
ALTER TABLE `kasbons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lemburs`
--
ALTER TABLE `lemburs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lokasis`
--
ALTER TABLE `lokasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mapping_shifts`
--
ALTER TABLE `mapping_shifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=659;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pajaks`
--
ALTER TABLE `pajaks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payrolls`
--
ALTER TABLE `payrolls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reset_cutis`
--
ALTER TABLE `reset_cutis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sips`
--
ALTER TABLE `sips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status_ptkps`
--
ALTER TABLE `status_ptkps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tunjangans`
--
ALTER TABLE `tunjangans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lemburs`
--
ALTER TABLE `lemburs`
  ADD CONSTRAINT `lemburs_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `lokasis`
--
ALTER TABLE `lokasis`
  ADD CONSTRAINT `lokasis_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `pajaks`
--
ALTER TABLE `pajaks`
  ADD CONSTRAINT `pajaks_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `status_ptkps` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
