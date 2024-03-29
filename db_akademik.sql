-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table db_akademik.about
CREATE TABLE IF NOT EXISTS `about` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama_about` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ikon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.about: ~3 rows (approximately)
INSERT INTO `about` (`id`, `nama_about`, `keterangan`, `link`, `ikon`, `urutan`, `created_at`, `updated_at`) VALUES
	(1, 'Jasa Programming', 'Jasa Programming', 'https://drive.google.com/', 'fa fa-user', '1', '2023-11-02 19:19:12', '2023-11-02 19:20:34'),
	(2, 'Jasa Programming Mobile', 'Jasa Programming Mobile', 'https://forms.gle/rdYBfem7QmLGLzFC8', 'fa fa-user', '2', '2023-11-02 19:22:12', '2023-11-02 19:22:12'),
	(3, 'Video Editor', 'Video Editor', 'https://forms.gle/rdYBfem7QmLGLzFC8', 'fa fa-user', '3', '2023-11-03 02:31:27', '2023-11-03 02:31:27');

-- Dumping structure for table db_akademik.alasan
CREATE TABLE IF NOT EXISTS `alasan` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama_alasan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ikon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.alasan: ~0 rows (approximately)
INSERT INTO `alasan` (`id`, `nama_alasan`, `keterangan`, `ikon`, `urutan`, `created_at`, `updated_at`) VALUES
	(5, 'Mudah Digunakan', 'Mudah Digunakan', 'fa fa-user', '1', '2023-11-03 09:02:52', '2023-11-03 09:02:52');

-- Dumping structure for table db_akademik.berita
CREATE TABLE IF NOT EXISTS `berita` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `judul_berita` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_posting` date NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `penulis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_berita_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ringkasan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.berita: ~0 rows (approximately)

-- Dumping structure for table db_akademik.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table db_akademik.faq
CREATE TABLE IF NOT EXISTS `faq` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `pertanyaan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawaban` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.faq: ~3 rows (approximately)
INSERT INTO `faq` (`id`, `pertanyaan`, `jawaban`, `urutan`, `created_at`, `updated_at`) VALUES
	(2, 'Bagaimana Caranya Lari ?', 'Langkahnya adalah seperti berikut', '1', '2023-09-25 23:59:26', '2023-11-03 04:30:31'),
	(3, 'Berapa biaya yang harus dikeluarkan ?', 'Harganya relatif murah kok guys', '2', '2023-10-09 07:50:13', '2023-10-09 07:50:13'),
	(4, 'Bisa custom ngga ?', 'Bisa dong kak', '3', '2023-10-09 07:50:37', '2023-12-26 17:41:34');

-- Dumping structure for table db_akademik.galeri
CREATE TABLE IF NOT EXISTS `galeri` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama_galeri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_galeri_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.galeri: ~0 rows (approximately)
INSERT INTO `galeri` (`id`, `nama_galeri`, `kategori_galeri_id`, `keterangan`, `link`, `gambar`, `urutan`, `created_at`, `updated_at`) VALUES
	(2, 'Kegiatan Malam', '1', 'Kegiatan Malam', 'https://forms.gle/rdYBfem7QmLGLzFC8', '20231204073821_WhatsApp_Image_2023-11-27_at_21.04.24.jpeg.jpeg', '1', '2023-11-03 03:53:07', '2023-12-04 00:38:21');

-- Dumping structure for table db_akademik.guru
CREATE TABLE IF NOT EXISTS `guru` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_guru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_guru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gelar_depan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gelar_belakang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `honor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tunjangan_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tunjangan_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tunjangan_3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tunjangan_4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_masuk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.guru: ~5 rows (approximately)
INSERT INTO `guru` (`id`, `nip`, `nama_guru`, `kode_guru`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `no_telp`, `instagram`, `email`, `gelar_depan`, `gelar_belakang`, `alamat`, `honor`, `tunjangan_1`, `tunjangan_2`, `tunjangan_3`, `tunjangan_4`, `gambar`, `username`, `password`, `tanggal_masuk`, `status`, `created_at`, `updated_at`) VALUES
	(2, '11111111111', 'Muhammad Rafi Heryadi', '22222222222', 'Tanjung Pinang', '1993-11-04', 'Laki-laki', '085320555394', '@muhraff', 'muhammadrafiheryadi94@gmail.com', 'Dr', 'SH', 'Jl. Tajur', '3242344', '', '', '', '', '1.jpeg', 'muhammadrafiheryadi94@gmail.com', '123', '2023-11-04', 'Guru', '2023-11-04 02:09:09', '2023-12-05 07:27:14'),
	(3, '131313131313', 'Hani Nuraeni', '4345435436345', 'Tanjung Pinang', '1993-11-04', 'Perempuan', '087766574444', '@rennn', 'admin@gmail.com', 'Dr', 'SH', 'Jl. Tasjur', '90000', '', '', '', '', '1.jpeg', 'muhammadrafiheryadi@gmail.com', '123', '2023-11-03', 'Guru', '2023-11-04 09:15:21', '2023-12-05 07:27:24'),
	(4, '34534545646', 'Reni Nuraeni, S.Pd', '56464654654', 'TASIK', '1993-12-05', 'Perempuan', '0853205553949', '@muhraff', 'astacode.mng@gmail.com', '-', '-', 'Tasikmalaya', '15000', '', '', '', '', '20231205141720_DSC_0124.JPG.JPG', 'reni@gmail.com', '123456', '2023-12-05', 'Guru', '2023-12-05 07:23:48', '2023-12-05 07:23:48'),
	(5, '646546543', 'Husni Mubarok', '564646546543', 'Tanjung Pinang', '1993-12-08', 'Laki-laki', '0853205553949', NULL, NULL, NULL, NULL, NULL, '15000', '', '', '', '', NULL, 'husni@gmail.com', '123456', '2023-12-07', 'Guru', '2023-12-07 00:50:26', '2023-12-07 00:50:26'),
	(6, '6465465444', 'Bram Setiadi', '564646546544', 'Tanjung Pinang', '1993-12-07', 'Laki-laki', '0853205553949', NULL, NULL, NULL, NULL, NULL, '15000', '', '', '', '', NULL, 'bram@gmail.com', '123456', '2023-12-14', 'Guru', '2023-12-07 00:51:26', '2023-12-07 00:51:26');

-- Dumping structure for table db_akademik.jadwal_pelajaran
CREATE TABLE IF NOT EXISTS `jadwal_pelajaran` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `hari` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.jadwal_pelajaran: ~7 rows (approximately)
INSERT INTO `jadwal_pelajaran` (`id`, `hari`, `kelas_id`, `created_at`, `updated_at`) VALUES
	(11, 'Senin', '2', '2023-12-07 00:58:08', '2023-12-07 00:58:08'),
	(12, 'Selasa', '2', '2023-12-07 01:05:37', '2023-12-07 01:05:37'),
	(13, 'Rabu', '2', '2023-12-07 01:06:05', '2023-12-07 01:06:05'),
	(14, 'Kamis', '2', '2023-12-07 01:07:27', '2023-12-07 01:07:27'),
	(15, 'Jumat', '2', '2023-12-07 01:07:56', '2023-12-07 01:07:56'),
	(16, 'Senin', '3', '2023-12-07 07:35:20', '2023-12-07 07:35:20'),
	(17, 'Selasa', '3', '2023-12-07 07:35:45', '2023-12-07 07:35:45'),
	(18, 'Kamis', '4', '2023-12-26 11:11:23', '2023-12-26 11:11:23');

-- Dumping structure for table db_akademik.jadwal_pelajaran_detail
CREATE TABLE IF NOT EXISTS `jadwal_pelajaran_detail` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `jadwal_pelajaran_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_mengajar_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mapel_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.jadwal_pelajaran_detail: ~56 rows (approximately)
INSERT INTO `jadwal_pelajaran_detail` (`id`, `jadwal_pelajaran_id`, `waktu_mengajar_id`, `mapel_id`, `created_at`, `updated_at`) VALUES
	(35, '11', '6', '1', '2023-12-07 00:58:08', '2023-12-07 00:58:08'),
	(36, '11', '7', '3', '2023-12-07 00:58:08', '2023-12-07 00:58:08'),
	(37, '11', '8', '4', '2023-12-07 00:58:08', '2023-12-07 00:58:08'),
	(38, '11', '9', '5', '2023-12-07 00:58:08', '2023-12-07 00:58:08'),
	(39, '11', '10', '6', '2023-12-07 00:58:08', '2023-12-07 00:58:08'),
	(40, '11', '11', NULL, '2023-12-07 00:58:08', '2023-12-07 00:58:08'),
	(41, '11', '12', NULL, '2023-12-07 00:58:08', '2023-12-07 00:58:08'),
	(42, '11', '13', NULL, '2023-12-07 00:58:08', '2023-12-07 00:58:08'),
	(43, '12', '6', '4', '2023-12-07 01:05:37', '2023-12-07 01:05:37'),
	(44, '12', '7', '1', '2023-12-07 01:05:37', '2023-12-07 01:05:37'),
	(45, '12', '8', '5', '2023-12-07 01:05:37', '2023-12-07 01:05:37'),
	(46, '12', '9', '6', '2023-12-07 01:05:37', '2023-12-07 01:05:37'),
	(47, '12', '10', '3', '2023-12-07 01:05:37', '2023-12-07 01:05:37'),
	(48, '12', '11', NULL, '2023-12-07 01:05:37', '2023-12-07 01:05:37'),
	(49, '12', '12', NULL, '2023-12-07 01:05:37', '2023-12-07 01:05:37'),
	(50, '12', '13', NULL, '2023-12-07 01:05:37', '2023-12-07 01:05:37'),
	(51, '13', '6', '1', '2023-12-07 01:06:06', '2023-12-07 01:06:06'),
	(52, '13', '7', '3', '2023-12-07 01:06:06', '2023-12-07 01:06:06'),
	(53, '13', '8', '4', '2023-12-07 01:06:06', '2023-12-07 01:06:06'),
	(54, '13', '9', '5', '2023-12-07 01:06:06', '2023-12-07 01:06:06'),
	(55, '13', '10', '1', '2023-12-07 01:06:06', '2023-12-07 03:31:19'),
	(56, '13', '11', NULL, '2023-12-07 01:06:06', '2023-12-07 01:06:06'),
	(57, '13', '12', NULL, '2023-12-07 01:06:06', '2023-12-07 01:06:06'),
	(58, '13', '13', NULL, '2023-12-07 01:06:06', '2023-12-07 01:06:06'),
	(59, '14', '6', '1', '2023-12-07 01:07:27', '2023-12-07 01:07:27'),
	(60, '14', '7', '3', '2023-12-07 01:07:27', '2023-12-07 01:07:27'),
	(61, '14', '8', '4', '2023-12-07 01:07:27', '2023-12-07 01:07:27'),
	(62, '14', '9', '5', '2023-12-07 01:07:27', '2023-12-07 01:07:27'),
	(63, '14', '10', '6', '2023-12-07 01:07:27', '2023-12-07 01:07:27'),
	(64, '14', '11', NULL, '2023-12-07 01:07:27', '2023-12-07 01:07:27'),
	(65, '14', '12', NULL, '2023-12-07 01:07:27', '2023-12-07 01:07:27'),
	(66, '14', '13', NULL, '2023-12-07 01:07:27', '2023-12-07 01:07:27'),
	(67, '15', '6', '1', '2023-12-07 01:07:56', '2023-12-07 01:07:56'),
	(68, '15', '7', '3', '2023-12-07 01:07:56', '2023-12-07 01:07:56'),
	(69, '15', '8', '4', '2023-12-07 01:07:56', '2023-12-07 01:07:56'),
	(70, '15', '9', '4', '2023-12-07 01:07:56', '2023-12-07 01:07:56'),
	(71, '15', '10', '6', '2023-12-07 01:07:56', '2023-12-07 01:07:56'),
	(72, '15', '11', NULL, '2023-12-07 01:07:56', '2023-12-07 01:07:56'),
	(73, '15', '12', NULL, '2023-12-07 01:07:56', '2023-12-07 01:07:56'),
	(74, '15', '13', NULL, '2023-12-07 01:07:56', '2023-12-07 01:07:56'),
	(75, '16', '6', '1', '2023-12-07 07:35:20', '2023-12-07 07:35:20'),
	(76, '16', '7', '3', '2023-12-07 07:35:20', '2023-12-07 07:35:20'),
	(77, '16', '8', '4', '2023-12-07 07:35:20', '2023-12-07 07:35:20'),
	(78, '16', '9', '5', '2023-12-07 07:35:20', '2023-12-07 07:35:20'),
	(79, '16', '10', '6', '2023-12-07 07:35:20', '2023-12-07 07:35:20'),
	(80, '16', '11', NULL, '2023-12-07 07:35:20', '2023-12-07 07:35:20'),
	(81, '16', '12', NULL, '2023-12-07 07:35:20', '2023-12-07 07:35:20'),
	(82, '16', '13', NULL, '2023-12-07 07:35:20', '2023-12-07 07:35:20'),
	(83, '17', '6', '1', '2023-12-07 07:35:45', '2023-12-07 07:35:45'),
	(84, '17', '7', '3', '2023-12-07 07:35:45', '2023-12-07 07:35:45'),
	(85, '17', '8', '4', '2023-12-07 07:35:45', '2023-12-07 07:35:45'),
	(86, '17', '9', '6', '2023-12-07 07:35:45', '2023-12-07 07:35:45'),
	(87, '17', '10', '5', '2023-12-07 07:35:45', '2023-12-07 07:35:45'),
	(88, '17', '11', NULL, '2023-12-07 07:35:45', '2023-12-07 07:35:45'),
	(89, '17', '12', NULL, '2023-12-07 07:35:45', '2023-12-07 07:35:45'),
	(90, '17', '13', NULL, '2023-12-07 07:35:45', '2023-12-07 07:35:45'),
	(91, '18', '6', '1', '2023-12-26 11:11:23', '2023-12-26 11:11:23'),
	(92, '18', '7', '3', '2023-12-26 11:11:23', '2023-12-26 11:11:23'),
	(93, '18', '8', '5', '2023-12-26 11:11:23', '2023-12-26 11:11:23'),
	(94, '18', '9', '4', '2023-12-26 11:11:23', '2023-12-26 11:11:23'),
	(95, '18', '10', '5', '2023-12-26 11:11:23', '2023-12-26 11:11:23'),
	(96, '18', '11', '6', '2023-12-26 11:11:23', '2023-12-26 11:11:23'),
	(97, '18', '12', '4', '2023-12-26 11:11:23', '2023-12-26 11:11:23'),
	(98, '18', '13', '1', '2023-12-26 11:11:23', '2023-12-26 11:11:23');

-- Dumping structure for table db_akademik.jurusan
CREATE TABLE IF NOT EXISTS `jurusan` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kode_jurusan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_jurusan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.jurusan: ~2 rows (approximately)
INSERT INTO `jurusan` (`id`, `kode_jurusan`, `nama_jurusan`, `created_at`, `updated_at`) VALUES
	(1, 'TKJ', 'TKJ', '2023-12-04 06:29:26', '2023-12-04 06:30:19'),
	(3, 'MMD', 'Multimedia', '2023-12-04 06:32:12', '2023-12-04 06:32:12');

-- Dumping structure for table db_akademik.kategori_berita
CREATE TABLE IF NOT EXISTS `kategori_berita` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama_kategori_berita` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.kategori_berita: ~6 rows (approximately)
INSERT INTO `kategori_berita` (`id`, `nama_kategori_berita`, `slug`, `urutan`, `created_at`, `updated_at`) VALUES
	(1, 'Pendidikan', 'pendidikan', '1', NULL, NULL),
	(2, 'Sosial', 'sosial', '2', NULL, NULL),
	(3, 'Kuliner', 'kuliner', '3', '2023-11-28 02:47:32', '2023-11-28 02:47:32'),
	(4, 'Sejarah Indonesia', 'sejarah-indonesia', '4', '2023-11-28 02:49:45', '2023-11-28 02:49:45'),
	(9, 'Politik', 'politik', '5', '2023-11-28 19:15:08', '2023-11-28 19:15:08'),
	(11, 'Umum', 'umum', '6', '2023-11-28 19:15:37', '2023-11-28 19:15:37');

-- Dumping structure for table db_akademik.kategori_galeri
CREATE TABLE IF NOT EXISTS `kategori_galeri` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama_kategori_galeri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.kategori_galeri: ~2 rows (approximately)
INSERT INTO `kategori_galeri` (`id`, `nama_kategori_galeri`, `urutan`, `created_at`, `updated_at`) VALUES
	(1, 'Umum Saja', '1', '2023-11-03 03:14:20', '2023-11-03 03:16:40'),
	(2, 'Pendidikan', '2', '2023-11-03 03:14:46', '2023-11-03 03:14:46');

-- Dumping structure for table db_akademik.kelas
CREATE TABLE IF NOT EXISTS `kelas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `wali_kelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.kelas: ~3 rows (approximately)
INSERT INTO `kelas` (`id`, `nama_kelas`, `wali_kelas`, `urutan`, `created_at`, `updated_at`) VALUES
	(2, 'KELAS 1A', '5', '1', '2023-11-04 08:13:55', '2023-12-07 00:55:24'),
	(3, 'KELAS 1B', '3', '2', '2023-11-04 08:18:18', '2023-12-07 00:54:58'),
	(4, 'KELAS 1C', '4', '3', '2023-12-07 00:55:13', '2023-12-07 00:55:13');

-- Dumping structure for table db_akademik.kepala_sekolah
CREATE TABLE IF NOT EXISTS `kepala_sekolah` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kepala_sekolah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_akhir` date NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.kepala_sekolah: ~0 rows (approximately)
INSERT INTO `kepala_sekolah` (`id`, `nip`, `nama_kepala_sekolah`, `tanggal_mulai`, `tanggal_akhir`, `status`, `created_at`, `updated_at`) VALUES
	(1, '64654654', 'Muhammad Rafi Heryadi', '2023-12-04', '2023-12-04', 'Aktif', '2023-12-04 07:41:23', '2023-12-04 07:42:55');

-- Dumping structure for table db_akademik.kontak
CREATE TABLE IF NOT EXISTS `kontak` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama_pengirim` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.kontak: ~0 rows (approximately)

-- Dumping structure for table db_akademik.kurikulum
CREATE TABLE IF NOT EXISTS `kurikulum` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama_kurikulum` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.kurikulum: ~2 rows (approximately)
INSERT INTO `kurikulum` (`id`, `nama_kurikulum`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Kurtilas', 'Non Aktif', '2023-11-13 02:08:50', '2023-11-13 02:11:03'),
	(2, 'Merdeka', 'Aktif', '2023-11-13 02:09:05', '2023-11-13 02:11:10');

-- Dumping structure for table db_akademik.mapel
CREATE TABLE IF NOT EXISTS `mapel` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama_mapel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guru_pengampu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kkm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.mapel: ~5 rows (approximately)
INSERT INTO `mapel` (`id`, `nama_mapel`, `guru_pengampu`, `kkm`, `created_at`, `updated_at`) VALUES
	(1, 'MATEMATIKA', '3', '80', '2023-11-05 05:14:49', '2023-12-07 00:41:27'),
	(3, 'TIK', '2', '80', '2023-12-06 15:40:20', '2023-12-06 15:40:20'),
	(4, 'B. INGGRIS', '4', '80', '2023-12-06 15:40:50', '2023-12-06 15:40:50'),
	(5, 'SKI', '5', '80', '2023-12-07 00:52:09', '2023-12-07 00:52:09'),
	(6, 'QURDITS', '6', '80', '2023-12-07 00:52:26', '2023-12-07 00:52:26');

-- Dumping structure for table db_akademik.metode
CREATE TABLE IF NOT EXISTS `metode` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.metode: ~5 rows (approximately)
INSERT INTO `metode` (`id`, `nama`, `keterangan`, `gambar`, `created_at`, `updated_at`) VALUES
	(2, 'Gopay', 'Gopay', '20231009153317_Screenshot_7.png.png', '2023-10-09 08:33:17', '2023-10-09 08:33:17'),
	(3, 'QRIS', 'QRIS', '20231009153342_Screenshot_8.png.png', '2023-10-09 08:33:42', '2023-10-09 08:33:42'),
	(4, 'ShopeePay', 'ShopeePay', '20231009153436_Screenshot_9.png.png', '2023-10-09 08:34:36', '2023-10-09 08:34:36'),
	(5, 'Indomaret', 'Indomaret', '20231009153458_Screenshot_10.png.png', '2023-10-09 08:34:58', '2023-10-09 08:34:58'),
	(6, 'Akulaku', 'Akulaku', '20231009153519_Screenshot_12.png.png', '2023-10-09 08:35:19', '2023-10-09 08:35:19');

-- Dumping structure for table db_akademik.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.migrations: ~24 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(19, '2023_11_01_173357_create_siswas_table', 1),
	(20, '2023_11_02_154106_create_sliders_table', 2),
	(21, '2023_11_02_154823_create_add_gambar_sliders_table', 3),
	(22, '2023_11_03_015137_create_abouts_table', 4),
	(23, '2023_11_03_093438_create_galeris_table', 5),
	(24, '2023_11_03_094617_create_add_kategori_galeris_table', 6),
	(25, '2023_11_03_095827_create_kategori_galeris_table', 7),
	(26, '2023_11_03_113427_create_mitras_table', 8),
	(27, '2023_11_03_134745_create_add_gambar_mitras_table', 9),
	(28, '2023_11_03_145437_create_kontaks_table', 10),
	(29, '2023_11_03_151552_create_tahun_ajarans_table', 11),
	(30, '2023_11_04_065413_create_gurus_table', 12),
	(32, '2023_11_04_104025_create_kelass_table', 13),
	(33, '2023_11_05_115655_create_mapel_table', 14),
	(34, '2023_11_13_084727_create_kurikulum_table', 15),
	(35, '2023_11_28_061307_create_kategori_berita_table', 16),
	(36, '2023_11_29_053512_create_berita_table', 17),
	(37, '2023_12_04_114135_create_jurusan_table', 18),
	(38, '2023_12_04_133525_create_ruangan_table', 19),
	(39, '2023_12_04_135850_create_wali_kelas_table', 20),
	(40, '2023_12_04_140834_create_kepala_sekolah_table', 21),
	(41, '2023_12_05_163551_create_waktu_mengajar_table', 22),
	(42, '2023_12_06_054843_create_jadwal_pelajaran_table', 23),
	(43, '2023_12_06_055403_create_jadwal_pelajaran_detail_table', 24),
	(44, '2023_12_15_011517_create_penempatan_kelas_table', 25),
	(45, '2023_12_15_011517_create_penempatan_kelas_head_table', 26),
	(46, '2023_12_15_145952_create_penempatan_kelas_detail_table', 27);

-- Dumping structure for table db_akademik.mitra
CREATE TABLE IF NOT EXISTS `mitra` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama_mitra` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.mitra: ~0 rows (approximately)
INSERT INTO `mitra` (`id`, `nama_mitra`, `no_telp`, `email`, `instagram`, `youtube`, `website`, `keterangan`, `gambar`, `urutan`, `created_at`, `updated_at`) VALUES
	(1, 'PT. Dekan', '085320555394', 'admin@admin.com', '@muhraff', 'muhraff', 'https://a.com', 'Test keterangan', '20231204074245_WhatsApp_Image_2023-11-27_at_16.24.50.jpeg.jpeg', '1', '2023-11-03 07:13:46', '2023-12-04 00:42:45');

-- Dumping structure for table db_akademik.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.password_resets: ~0 rows (approximately)

-- Dumping structure for table db_akademik.penempatan_kelas
CREATE TABLE IF NOT EXISTS `penempatan_kelas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kelas_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `wali_kelas` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siswa_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.penempatan_kelas: ~9 rows (approximately)

-- Dumping structure for table db_akademik.penempatan_kelas_detail
CREATE TABLE IF NOT EXISTS `penempatan_kelas_detail` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `penempatan_kelas_head_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `siswa_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.penempatan_kelas_detail: ~0 rows (approximately)
INSERT INTO `penempatan_kelas_detail` (`id`, `penempatan_kelas_head_id`, `siswa_id`, `kelas_id`, `created_at`, `updated_at`) VALUES
	(13, '12', '11', '2', '2023-12-26 11:06:24', '2023-12-26 11:06:24'),
	(14, '12', '12', '2', '2023-12-26 11:06:24', '2023-12-26 11:06:24');

-- Dumping structure for table db_akademik.penempatan_kelas_head
CREATE TABLE IF NOT EXISTS `penempatan_kelas_head` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kelas_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_penempatan` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.penempatan_kelas_head: ~0 rows (approximately)
INSERT INTO `penempatan_kelas_head` (`id`, `kelas_id`, `tanggal_penempatan`, `created_at`, `updated_at`) VALUES
	(12, '2', '2023-12-26', '2023-12-26 11:06:24', '2023-12-26 11:06:24');

-- Dumping structure for table db_akademik.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table db_akademik.profil
CREATE TABLE IF NOT EXISTS `profil` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama_sekolah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `npsn` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `kepala_sekolah_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bendahara_sekolah_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `operator_sekolah_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.profil: ~0 rows (approximately)
INSERT INTO `profil` (`id`, `nama_sekolah`, `npsn`, `kepala_sekolah_id`, `bendahara_sekolah_id`, `operator_sekolah_id`, `status`, `alamat`, `no_telp`, `email`, `instagram`, `facebook`, `website`, `youtube`, `deskripsi`, `logo`, `favicon`, `gambar`, `created_at`, `updated_at`) VALUES
	(1, 'SDIT MARYAM LAYLA ALFATHUNISSA', '72328412233', '2', '4', '3', 'Swasta', 'Jl. Tajur Indah No 121 Indihiang Kota Tasikmalaya', '085320555394', 'sditmaryamlayla@gmail.com', '@maryamlaylaalfathunissa', 'Maryam Layla Alfathunissa', 'https://maryamlayla.com', 'Maryam Layla Alfathunissa', 'Sekolah Islam Terpadu MARYAM LAYLA ALFATHUNISSA', 'logo_1703637506.png', 'favicon_1701788134.png', 'banner_1701788134.png', NULL, '2023-12-26 17:38:26');

-- Dumping structure for table db_akademik.ruangan
CREATE TABLE IF NOT EXISTS `ruangan` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kode_ruangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ruangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.ruangan: ~0 rows (approximately)
INSERT INTO `ruangan` (`id`, `kode_ruangan`, `nama_ruangan`, `created_at`, `updated_at`) VALUES
	(1, 'R001', 'Aula Utama', '2023-12-04 06:44:47', '2023-12-04 06:44:47');

-- Dumping structure for table db_akademik.siswa
CREATE TABLE IF NOT EXISTS `siswa` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_siswa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ayah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan_ayah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `penghasilan_ayah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp_ayah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ibu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan_ibu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `penghasilan_ibu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp_ibu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_wali` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan_wali` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `penghasilan_wali` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp_wali` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_masuk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sekolah_asal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ijazah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akte` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ktp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.siswa: ~2 rows (approximately)
INSERT INTO `siswa` (`id`, `nik`, `nis`, `nama_siswa`, `email`, `jenis_kelamin`, `tanggal_lahir`, `tempat_lahir`, `provinsi`, `kota`, `alamat`, `nama_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `no_telp_ayah`, `nama_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `no_telp_ibu`, `nama_wali`, `pekerjaan_wali`, `penghasilan_wali`, `no_telp_wali`, `tahun_masuk`, `sekolah_asal`, `kelas`, `foto`, `kk`, `ijazah`, `akte`, `ktp`, `created_at`, `updated_at`) VALUES
	(11, '3278042812940008', '12345', 'Ramdan', 'muhammadrafiheryadi94@gmail.com', 'Laki-laki', '1993-11-05', 'Tanjung Pinang', 'Jawa Barat', 'Kota Tasikmalaya', 'KHgkjhgk,jhg', 'Rudi', 'Wiraswasta', '2-5 Jt', '085345354354', 'Rini', 'IRT', '2-5 Jt', '085345354354', 'Herman', 'Dokter', '2-5 Jt', '085345354354', '2022', 'SD ABBASH', '6B', '20231105103600_250222104235_gambar_icon_oran.jpg.jpg', '20231105113802_MUHAMMAD_RAFI_HERYADI.pdf.pdf', '20231105103600_ALUR_WEBSITE_MAUBIKINCV.pdf.pdf', '20231105103600_ALUR_WEBSITE_MAUBIKINCV.pdf.pdf', '20231105103600_ALUR_WEBSITE_MAUBIKINCV.pdf.pdf', '2023-11-05 03:36:00', '2023-11-05 04:38:02'),
	(12, '5354534545', '3453453', 'Yusuf', 'a@a.com', 'Laki-laki', '1993-11-08', 'Tasikmalaya', 'Jawa', 'Tasik', 'dfsfsf', 'dfsdf', 'sdfsdf', 'dssfs', '76876867', 'xcgdsgsd', 'sdgsg', 'sdgsdg', '3453453', 'sdgsg', 'sdgsdg', 'dsgsd', '23424234', '2023', 'sfasf', 's', 'asfas', 'sfa', 'asf', 'sf', 's', NULL, NULL),
	(13, '3278042812940008e', '123453', 'Susanti', 'susanti@gmail.com', 'Laki-laki', '1993-12-16', 'Tanjung Pinang', 'Jawa Barat', 'Kota Tasikmalaya', 'Tasikmalaya', 'Rudi', 'Wiraswasta', '2-5 Jt', '085345354354', 'Rini', 'IRT', '2-5 Jt', '085345354354', 'Herman', 'Dokter', '2-5 Jt', '085345354354', '2022', 'SD ABBASH', '6B', NULL, NULL, NULL, NULL, NULL, '2023-12-15 16:48:37', '2023-12-15 16:48:37');

-- Dumping structure for table db_akademik.slider
CREATE TABLE IF NOT EXISTS `slider` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama_slider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.slider: ~2 rows (approximately)
INSERT INTO `slider` (`id`, `nama_slider`, `keterangan`, `link`, `urutan`, `gambar`, `created_at`, `updated_at`) VALUES
	(2, 'Promo November', 'Promo November', 'https://ltpresent.com', '1', '20231204074114_WhatsApp_Image_2023-11-27_at_21.05.02_(1).jpeg.jpeg', '2023-11-02 18:41:33', '2023-12-04 00:41:14'),
	(3, 'Promo Desember', 'Promo Desember', 'https://forms.gle/rdYBfem7QmLGLzFC8', '2', '20231204074127_WhatsApp_Image_2023-11-27_at_21.05.02.jpeg.jpeg', '2023-11-03 02:30:48', '2023-12-04 00:41:27');

-- Dumping structure for table db_akademik.tahun_ajaran
CREATE TABLE IF NOT EXISTS `tahun_ajaran` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama_tahun_ajaran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.tahun_ajaran: ~4 rows (approximately)
INSERT INTO `tahun_ajaran` (`id`, `nama_tahun_ajaran`, `status`, `created_at`, `updated_at`) VALUES
	(9, '2023/2024 Semester 1', 'Aktif', '2023-11-03 23:26:09', '2023-11-05 23:06:38'),
	(10, '2023/2024 Semester 2', 'Non Aktif', '2023-11-03 23:36:44', '2023-11-05 23:05:43'),
	(12, '2022/2023 Semester 1', 'Non Aktif', '2023-11-04 09:17:33', '2023-11-05 23:06:11'),
	(13, '2022/2023 Semester 2', 'Non Aktif', '2023-11-05 23:06:25', '2023-11-05 23:06:25');

-- Dumping structure for table db_akademik.testimoni
CREATE TABLE IF NOT EXISTS `testimoni` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.testimoni: ~2 rows (approximately)
INSERT INTO `testimoni` (`id`, `nama`, `keterangan`, `gambar`, `created_at`, `updated_at`) VALUES
	(16, 'Regan Alamsyah', 'Mantap !!! semua thempletenya keren banget', '20231009135401_testimonials-1.jpg.jpg', '2023-10-09 06:54:01', '2023-10-09 06:54:01'),
	(17, 'Rendi Gumilar', 'MasyaAlloh mantap, pengerjaan cepat harga terjangkau', '20231009135438_testimonials-5.jpg.jpg', '2023-10-09 06:54:38', '2023-10-09 06:54:38');

-- Dumping structure for table db_akademik.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.users: ~2 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
	(3, 'Muhammad Rafi Heryadi', 'muhammadrafiheryadi94@gmail.com', NULL, '$2y$10$p96HVtHFrERLNA1s9kQYoeZTW5VfCXTjN5QRL29Wk/dXo1Nb79NLy', 'Superadmin', NULL, '2023-11-10 21:37:12', '2023-11-10 21:37:12'),
	(4, 'Maryam Layla Khoerunnisa', 'alfathunissamaryamlayla@gmail.com', NULL, '$2y$10$7eGwaCmM0XI2Ym.TcHoxqe6k4uTZImExky64YPHNWdmeukmYfoOuu', 'Admin', NULL, '2023-11-10 22:44:46', '2023-11-10 22:44:46');

-- Dumping structure for table db_akademik.waktu_mengajar
CREATE TABLE IF NOT EXISTS `waktu_mengajar` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `jam` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.waktu_mengajar: ~8 rows (approximately)
INSERT INTO `waktu_mengajar` (`id`, `jam`, `waktu`, `created_at`, `updated_at`) VALUES
	(6, '1', '07:00-08:45', '2023-12-06 16:35:15', '2023-12-06 16:35:15'),
	(7, '2', '08:45-09:45', '2023-12-06 16:35:23', '2023-12-06 16:35:23'),
	(8, '3', '09:45-10:45', '2023-12-06 16:35:33', '2023-12-06 16:35:33'),
	(9, '4', '10:45-11:45', '2023-12-06 16:35:41', '2023-12-06 16:35:41'),
	(10, '5', '11:45-12:45', '2023-12-06 18:30:22', '2023-12-06 18:30:22'),
	(11, '6', '12:45-13:45', '2023-12-07 00:38:34', '2023-12-07 00:38:34'),
	(12, '7', '13:45-14:45', '2023-12-07 00:39:33', '2023-12-07 00:39:33'),
	(13, '8', '14:45-15:45', '2023-12-07 00:40:08', '2023-12-07 00:40:08');

-- Dumping structure for table db_akademik.wali_kelas
CREATE TABLE IF NOT EXISTS `wali_kelas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kelas_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guru_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_akademik.wali_kelas: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
