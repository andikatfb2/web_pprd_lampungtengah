-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2017 at 05:03 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bpprd_lamteng`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_100000_create_password_resets_table', 1),
('2016_11_10_110258_create_roles_table', 1),
('2016_11_10_110258_create_users_table', 1),
('2016_11_10_110259_create_user_actions_table', 1),
('2016_11_10_110409_create_projects_table', 1),
('2016_11_10_110420_create_work_types_table', 1),
('2016_11_10_110630_create_time_entries_table', 1),
('2017_05_30_055518_create_tb_news_table', 2),
('2017_05_30_134945_create_tb_visimisis_table', 3),
('2017_05_30_135005_create_tb_tupoksis_table', 3),
('2017_05_30_135015_create_tb_sos_table', 3),
('2017_05_30_135044_create_tb_dasar_hukums_table', 4),
('2017_05_30_154141_create_tb_info_pajaks_table', 4),
('2017_05_31_054427_create_tb_target_pajaks_table', 5),
('2017_06_01_142050_create_tb_agendas_table', 6),
('2017_06_01_165441_create_tb_fotos_table', 7),
('2017_06_02_065050_create_tb_files_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'QuickAdminPanel', '2017-05-24 01:10:21', '2017-05-24 01:10:21', NULL),
(2, 'Project #1', '2017-05-24 01:10:21', '2017-05-24 01:28:20', '2017-05-24 01:28:20'),
(3, 'Project #2', '2017-05-24 01:10:21', '2017-05-24 01:28:21', '2017-05-24 01:28:21'),
(4, 'Laravel package #1', '2017-05-24 01:10:21', '2017-05-24 01:10:21', NULL),
(5, 'Freelance', '2017-05-24 01:10:21', '2017-05-24 01:10:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Administrator (can create other users)', '2017-05-24 01:10:21', '2017-05-24 01:10:21', NULL),
(2, 'Simple user', '2017-05-24 01:10:21', '2017-05-24 01:10:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_agenda`
--

CREATE TABLE `tb_agenda` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_agenda`
--

INSERT INTO `tb_agenda` (`id`, `nama`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Mudik', '<table border="1" cellpadding="1" cellspacing="1" style="width:500px" summary="90000">\r\n	<caption>Jatwal</caption>\r\n	<tbody>\r\n		<tr>\r\n			<td>senin</td>\r\n			<td>9000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>selasa</td>\r\n			<td>89000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>rabu</td>\r\n			<td>90089</td>\r\n		</tr>\r\n		<tr>\r\n			<td>kamis</td>\r\n			<td>98908</td>\r\n		</tr>\r\n		<tr>\r\n			<td>jumat</td>\r\n			<td>89890</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '2017-06-01 07:48:46', '2017-06-01 07:51:13');

-- --------------------------------------------------------

--
-- Table structure for table `tb_dasar_hukum`
--

CREATE TABLE `tb_dasar_hukum` (
  `id` int(10) UNSIGNED NOT NULL,
  `dasar_hukum` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_dasar_hukum`
--

INSERT INTO `tb_dasar_hukum` (`id`, `dasar_hukum`, `created_at`, `updated_at`) VALUES
(1, '<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Kepala Badan mempunyai tugas memimpin, mengendalikan dan menyelenggarakan sebagian kewenangan Pemerintah Daerah di bidang Pajak dan Retribusi Daerah serta tugas pembantuan yang diberikan oleh Pemerintah Pusat sesuai peraturan perundang-undangan.</li>\r\n	<li>Untuk melaksanakan tugas sebagaimana dimasud pada ayat (1) Kepala Badan mempunyai fungsi :</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li>Perumusan Sasaran Rencana Strategis (RENSTRA) Badan.</li>\r\n	<li>Perumusan program kerja Badan dengan merinci seluruh tugas kegiatan sebagai acuan dan pedoman pelaksanaan tugas.</li>\r\n	<li>Perumusan kebijakan teknis di bidang pendapatan daerah dari Sektor Pajak dan Retribusi daerah.</li>\r\n	<li>Pemberian bimbingan/pembinaan dan pelaksanaan koordinasi dengan instansi teknis pengelola pendapatan daerah guna peningkatan&nbsp; (intensifikasi dan ekstensifikasi) pendapatan daerah.</li>\r\n	<li>Perumusan Rencana Kerja Anggaran (RKA) dan Dokumen Pelaksanaan Anggaran (DPA) untuk menentukan kebutuhan anggaran belanja badan sesuai dengan program kerja kegiatan.</li>\r\n	<li>Pembagian tugas kepada bawahan sesuai dengan bidang tugas dan tanggung jawab agar pelaksanaan tugas pokok dinas berjalan maksimal.</li>\r\n	<li>Pemberi petunjuk dan arahan kepada bawahan tentang pelaksanaan tugas dan kegiatan sesuai program kerja yang dirumuskan.</li>\r\n	<li>Pelaksanaan penagihan pajak dan retribusi daerah baik secara langsung maupun melalui instansi teknis pengelola pajak / retribusi daerah guna peningkatan pendapatan daerah.</li>\r\n	<li>Penerbitan Surat Ketetapan Pajak (SKPD) dan surat rekomendasi penerbitan perizinan yang pengelolaan pajak/retribusinya&nbsp; ditangani Badan Pengelolan Pajak dan Retribusi Daerah.</li>\r\n	<li>Penandatanganan SPPT PBB-P2 dan pelayanan mutasi data PBB (meliputi : pendataan / pendaftaran, perubahan, balik nama, kurang bayar, keberatan , sengketa PBB-P2).</li>\r\n	<li>Pembuatan laporan kegiatan, capaian kinerja SKPD, kepegawaian dan laporan pendapatan daerah dari Sektor Pajak dan Retribusi Daerah kepada Bupati secara rutin dan berkala.</li>\r\n	<li>Penyelia pelaksanaan kegiatan kedinasan dengan peninjauan langsung, rapat atau pertemuan -&nbsp; pertemuan rutin untuk mengidentifikasi permasalahan, hambatan dan upaya tindak lanjut.</li>\r\n	<li>Penilaian pelaksanaan tugas bawahan baik secara langsung maupun melalui penilaian SKP.</li>\r\n	<li>Pelaksanaan tugas lain yang diserahkan Bupati sesuai dengan peraturan perundang-undangan.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, '2017-05-31 07:54:25');

-- --------------------------------------------------------

--
-- Table structure for table `tb_file`
--

CREATE TABLE `tb_file` (
  `id` int(10) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_file`
--

INSERT INTO `tb_file` (`id`, `file`, `created_at`, `updated_at`) VALUES
(7, 'PPT.SIDANG-REV.2.pptx', '2017-06-02 00:32:19', '2017-06-02 00:32:19'),
(8, 'PANDUAN_USUL_PENELITIAN_DAN_ABDIMAS_EDISI X 2016 2 Mei 2006_2.pdf', '2017-06-02 00:49:21', '2017-06-02 00:49:21');

-- --------------------------------------------------------

--
-- Table structure for table `tb_foto`
--

CREATE TABLE `tb_foto` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_foto`
--

INSERT INTO `tb_foto` (`id`, `url`, `created_at`, `updated_at`) VALUES
(2, 'img web1.png', '2017-06-01 10:23:24', '2017-06-01 10:23:24'),
(3, 'banner1.png', '2017-06-01 10:24:04', '2017-06-01 10:24:04'),
(4, 'LOGO.png', '2017-06-01 10:24:15', '2017-06-01 10:24:15'),
(5, 'iphone_6_3.png', '2017-06-01 10:52:16', '2017-06-01 10:52:16'),
(6, 'bg_1.jpg', '2017-06-01 10:52:25', '2017-06-01 10:52:25'),
(7, 'iphone_blank_2.png', '2017-06-01 10:52:39', '2017-06-01 10:52:39'),
(8, 'hero_bg.jpg', '2017-06-01 10:57:13', '2017-06-01 10:57:13'),
(9, 'Capture.PNG', '2017-06-02 00:14:13', '2017-06-02 00:14:13');

-- --------------------------------------------------------

--
-- Table structure for table `tb_info_pajak`
--

CREATE TABLE `tb_info_pajak` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_info_pajak`
--

INSERT INTO `tb_info_pajak` (`id`, `nama`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'pajak bumi dan bangunan', '<p>asdadjska idusadjkds info titin</p>\r\n', '2017-05-30 21:53:41', '2017-05-30 22:09:44'),
(2, 'BIDANG PAJAK BUMI DAN BANGUNAN (PBB)', '<ol>\r\n	<li>Bidang Pajak Bumi dan Bangunan&nbsp; melaksanakan tugas pokok pelayanan, pendataan, penilaian,&nbsp; penetapan dan pengawasan PBB.</li>\r\n	<li>Untuk melaksanakan tugas pokok sebagaimana dimaksud pada ayat (1), Bidang Pajak Bumi dan Bangunan mempunyai fungsi :</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li>Perumusan dan pelaksanaan kebijakan teknis Bidang Pajak Bumi dan Bangunan.</li>\r\n	<li>Pengumpulan dan pengolahan data dalam rangka perencanaan teknis pendataan, penilaian dan penetapan obyek/subyek &nbsp;PBB, dan sistem pengarsipan / dokumentasi PBB.</li>\r\n	<li>Penyusunan perencanaan dan pelaksanaan program di bidang pemungutan PBB.</li>\r\n	<li>Pelaksanaan dan pengawasan pendataan dan penetapan PBB.</li>\r\n	<li>Pelaksanaan pemeriksaan obyek/subyek dan wajib PBB.</li>\r\n	<li>Perumusan teknis penghitungan dan penetapan PBB.</li>\r\n	<li>Perumusan nilai jual obyek pajak PBB.</li>\r\n	<li>Pelaksanaan penilaian obyek, subyek dan wajib PBB.</li>\r\n	<li>Pelaksanaan penghitungan dan penetapan pengenaan &nbsp;ZNT PBB.</li>\r\n	<li>Pelaksanaan pemeriksaaan ketetapan SPPT PBB.</li>\r\n	<li>Pengendalian dan pendistribusian SPPT PBB.</li>\r\n	<li>Pemeriksaan berkas permohonan mutai PBB meliputi permohonan WP baru, pengurangan/ penambahan/penggabungan, dan penundaan pembayaran denda PBB.</li>\r\n	<li>Penyiapan ketetapan SPPT PBB.</li>\r\n	<li>Pelaksanaan penyelesaian keberatan PBB meliputi pembetulan, pembatalan, pengurangan, penghapusan dan pengurangan sanksi atas ketetapan PBB.</li>\r\n	<li>Pelaksanaan penyelesaian sengketa PBB.</li>\r\n	<li>Pelaksanaan pelaporan PBB dan Penyiapan bahan dalam rangka pemeriksaan dan tindak lanjut hasil pemeriksaan.</li>\r\n	<li>Pelaksanaan Sistem Pengendalian Internal (SPI).</li>\r\n	<li>Pelaksanaan Standar Pelayanan Minimal (SPM).</li>\r\n	<li>Pengevaluasian dan pelaporan pelaksanaan tugas pokok dan fungsi, dan</li>\r\n	<li>Pelaksanaan fungsi lain yang diberikan oleh Kepala Badan sesuai dengan tugas pokoknya.</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li>Bidang Pajak Bumi dan Bangunan, terdiri dari :</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li>Subbid Pendaftaran dan Pendataan.</li>\r\n	<li>Subbid Penilaian, Perhitungan dan Penetapan.</li>\r\n	<li>Subbid Penagolahan Data dan Keberatan.</li>\r\n</ol>\r\n\r\n<p>Masing &ndash; masing Sub Bidang dipimpin oleh Kepala Sub Bidang yang dalam melaksanakan tugas pokok dan fungsinya berada dan bertanggung jawab kepada Kepala Bidang.</p>\r\n', '2017-05-31 20:58:27', '2017-05-31 20:58:27');

-- --------------------------------------------------------

--
-- Table structure for table `tb_news`
--

CREATE TABLE `tb_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isi` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_news`
--

INSERT INTO `tb_news` (`id`, `judul`, `img`, `isi`, `created_at`, `updated_at`) VALUES
(1, 'Realisasi Pajak Baru', NULL, '<ol>\r\n	<li>Kepala Badan</li>\r\n	<li>Sekretaris</li>\r\n	<li>Kepala Bidang Pajak Bumi dan Bangunan (PBB)</li>\r\n	<li>Kepala Bidang &nbsp;Pajak &nbsp;Daerah I</li>\r\n	<li>Kepala Bidang &nbsp;Pajak &nbsp;Daerah II</li>\r\n</ol>\r\n\r\n<p>Kepala Bidang Pengembangan&nbsp; Teknologi Informasi, Potensi dan Penagihan</p>\r\n', '2017-05-31 07:53:15', '2017-05-31 07:53:15');

-- --------------------------------------------------------

--
-- Table structure for table `tb_so`
--

CREATE TABLE `tb_so` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keterangan` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_so`
--

INSERT INTO `tb_so` (`id`, `img`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, NULL, '<p><strong>KETERANGAN : PEMBAGIAN TUGAS-TUGAS POKOK</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li><strong>Sekretariat :</strong></li>\r\n</ol>\r\n\r\n<p><strong>Pengelolaan administrasi perkantoran, kepegawaian, keuangan, perlengkapan, perencanaan, pelaporan SKPD, Kearsipan</strong></p>\r\n\r\n<p><strong>keamanan dan ketertiban kantor</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li><strong>Bidang PBB</strong></li>\r\n</ol>\r\n\r\n<p><strong>Khusus mengelola Pajak Bumi dan Bangunan Perdesaan dan Perkotaan (PBB-P2)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li><strong>Bidang Pajak Daerah I</strong></li>\r\n</ol>\r\n\r\n<p><strong>Mengelola : </strong></p>\r\n\r\n<ol>\r\n	<li><strong>Pajak BPHTB, </strong></li>\r\n	<li><strong>Pajak Restoran, </strong></li>\r\n	<li><strong>Pajak Hotel, </strong></li>\r\n	<li><strong>Pajak Penerangan Jalan (PPJ) </strong></li>\r\n	<li><strong>Pajak Sarang Burung Walet.</strong></li>\r\n</ol>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<ol>\r\n	<li><strong>Bidang Pajak Daerah II</strong></li>\r\n</ol>\r\n\r\n<p><strong>Mengelola </strong></p>\r\n\r\n<ol>\r\n	<li><strong>Pajak Reklame, </strong></li>\r\n	<li><strong>Pajak Hiburan, </strong></li>\r\n	<li><strong>Pajak Parkir, </strong></li>\r\n	<li><strong>Pajak Air Tanah&nbsp; </strong></li>\r\n	<li><strong>Pajak Mineral Bukan Logam dan Batuan (Minerba)</strong></li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li><strong>Bidang Pengembangan Teknologi Informasi, Potensi, dan Penagihan &nbsp;</strong></li>\r\n</ol>\r\n\r\n<p><strong>Mengelola </strong></p>\r\n\r\n<ol>\r\n	<li><strong>Pengembangan potensi pajak dan retribusi daerah, </strong></li>\r\n	<li><strong>Melaksanakan penagihan pajak daerah, </strong></li>\r\n	<li><strong>Pengembangan Teknologi Tnformasi (TI) Pajak dan Retribusi Daerah</strong></li>\r\n</ol>\r\n\r\n<p><strong>(meliputi Database Pajak/Retribusi Daerah, Sistem Pelaporan Wajib Pajak/Wajib Retribusi dan </strong></p>\r\n\r\n<p><strong>Objek Pajak/Objek Retribusi Daerah)</strong></p>\r\n', '2017-05-30 19:00:01', '2017-06-01 09:10:37');

-- --------------------------------------------------------

--
-- Table structure for table `tb_target_pajak`
--

CREATE TABLE `tb_target_pajak` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_target_pajak`
--

INSERT INTO `tb_target_pajak` (`id`, `nama`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Target Pajak', '<ol>\r\n	<li>Kepala Badan</li>\r\n	<li>Sekretaris</li>\r\n	<li>Kepala Bidang Pajak Bumi dan Bangunan (PBB)</li>\r\n	<li>Kepala Bidang &nbsp;Pajak &nbsp;Daerah I</li>\r\n	<li>Kepala Bidang &nbsp;Pajak &nbsp;Daerah II</li>\r\n</ol>\r\n\r\n<p>Kepala Bidang Pengembangan&nbsp; Teknologi Informasi, Potensi dan Penagihan</p>\r\n', '2017-05-31 07:50:55', '2017-05-31 07:50:55');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tupoksi`
--

CREATE TABLE `tb_tupoksi` (
  `id` int(10) UNSIGNED NOT NULL,
  `tupoksi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_tupoksi`
--

INSERT INTO `tb_tupoksi` (`id`, `tupoksi`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'BADAN PENGELOLAAN PAJAK DAN RETRIBUSI  DAERAH KABUPATEN LAMPUNG TENGAH', '<p><strong>Susunan Organisasi Badan Pengelolaan Pajak dan Retribusi Daerah Kabupaten Lampung Tengah terdiri dari :</strong></p>\r\n\r\n<ol>\r\n	<li>Kepala Badan</li>\r\n	<li>Sekretaris</li>\r\n	<li>Kepala Bidang Pajak Bumi dan Bangunan (PBB)</li>\r\n	<li>Kepala Bidang &nbsp;Pajak &nbsp;Daerah I</li>\r\n	<li>Kepala Bidang &nbsp;Pajak &nbsp;Daerah II</li>\r\n	<li>Kepala Bidang Pengembangan&nbsp; Teknologi Informasi, Potensi dan Penagihan</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RINCIAN TUGAS&nbsp; </strong></h3>\r\n\r\n<h3><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; KEPALA BADAN PENGELOLAAN PAJAK DAN RETRIBUSI DAERAH</strong></h3>\r\n\r\n<ol>\r\n	<li>Kepala Badan mempunyai tugas memimpin, mengendalikan dan menyelenggarakan sebagian kewenangan Pemerintah Daerah di bidang Pajak dan Retribusi Daerah serta tugas pembantuan yang diberikan oleh Pemerintah Pusat sesuai peraturan perundang-undangan.</li>\r\n	<li>Untuk melaksanakan tugas sebagaimana dimasud pada ayat (1) Kepala Badan mempunyai fungsi :</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li>Perumusan Sasaran Rencana Strategis (RENSTRA) Badan.</li>\r\n	<li>Perumusan program kerja Badan dengan merinci seluruh tugas kegiatan sebagai acuan dan pedoman pelaksanaan tugas.</li>\r\n	<li>Perumusan kebijakan teknis di bidang pendapatan daerah dari Sektor Pajak dan Retribusi daerah.</li>\r\n	<li>Pemberian bimbingan/pembinaan dan pelaksanaan koordinasi dengan instansi teknis pengelola pendapatan daerah guna peningkatan&nbsp; (intensifikasi dan ekstensifikasi) pendapatan daerah.</li>\r\n	<li>Perumusan Rencana Kerja Anggaran (RKA) dan Dokumen Pelaksanaan Anggaran (DPA) untuk menentukan kebutuhan anggaran belanja badan sesuai dengan program kerja kegiatan.</li>\r\n	<li>Pembagian tugas kepada bawahan sesuai dengan bidang tugas dan tanggung jawab agar pelaksanaan tugas pokok dinas berjalan maksimal.</li>\r\n	<li>Pemberi petunjuk dan arahan kepada bawahan tentang pelaksanaan tugas dan kegiatan sesuai program kerja yang dirumuskan.</li>\r\n	<li>Pelaksanaan penagihan pajak dan retribusi daerah baik secara langsung maupun melalui instansi teknis pengelola pajak / retribusi daerah guna peningkatan pendapatan daerah.</li>\r\n	<li>Penerbitan Surat Ketetapan Pajak (SKPD) dan surat rekomendasi penerbitan perizinan yang pengelolaan pajak/retribusinya&nbsp; ditangani Badan Pengelolan Pajak dan Retribusi Daerah.</li>\r\n	<li>Penandatanganan SPPT PBB-P2 dan pelayanan mutasi data PBB (meliputi : pendataan / pendaftaran, perubahan, balik nama, kurang bayar, keberatan , sengketa PBB-P2).</li>\r\n	<li>Pembuatan laporan kegiatan, capaian kinerja SKPD, kepegawaian dan laporan pendapatan daerah dari Sektor Pajak dan Retribusi Daerah kepada Bupati secara rutin dan berkala.</li>\r\n	<li>Penyelia pelaksanaan kegiatan kedinasan dengan peninjauan langsung, rapat atau pertemuan -&nbsp; pertemuan rutin untuk mengidentifikasi permasalahan, hambatan dan upaya tindak lanjut.</li>\r\n	<li>Penilaian pelaksanaan tugas bawahan baik secara langsung maupun melalui penilaian SKP.</li>\r\n	<li>Pelaksanaan tugas lain yang diserahkan Bupati sesuai dengan peraturan perundang-undangan.</li>\r\n</ol>\r\n\r\n<ol>\r\n</ol>\r\n', '2017-05-31 07:42:43', '2017-05-31 20:50:36'),
(2, 'SEKRETARIAT BADAN PENGELOLAAN PAJAK DAN RETRIBUSI DAERAH KABUPATEN LAMPUNG TENGAH', '<ol>\r\n	<li>Sekretariat mempunyai tugas membantu Kepala Badan dalam memimpin, mengendalikan dan mengawasi serta mengkoordinasikan pelaksanaan tugas kedinasan serta merumuskan kebijakan bidang kesekretariatan sesuai peraturan perundang-undangan.</li>\r\n	<li>Sekretariat dipimpin oleh seorang Sekretaris yang berada dibawah dan bertanggung jawab kepada Kepala Badan.</li>\r\n	<li>Untuk melaksanakan tugas sebagaimana dimaksud pada ayat (1) Sekretaris mempunyai fungsi :</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li>Perencanaan program kerja badan dan sekretariat dengan jalan merinci keseluruhan tugas pokok badan dan Sekretariat sebagai pedoman pelaksanaan tugas.</li>\r\n	<li>Pelaksanaan fungsi koordinator administrasi dalam arti mengatur dan membina kerjasama, menyatukan dan memadukan seluruh administrasi kedinasan, termasuk pelayanan administrasi bagi seluruh bagian/bidang pada badan dan unit organisasi di lingkungan badan.</li>\r\n	<li>Pembagian/pendistribusian tugas &ndash; tugas kepada bawahan sesuai dengan tugas dan kewenangannya agar pelaksanaan tugas berjalan optimal.</li>\r\n	<li>Pemeriksa dan pemaraf seluruh surat dinas yang akan ditandatangani oleh Kepala Badan dan atau diterbitkan oleh Badan Pengelolan Pajak dan Retribusi Daerah.</li>\r\n	<li>Penyusun Rencana Strategis (RENSTRA) Badan.</li>\r\n	<li>Penyusun laporan bulanan yang meliputi pelaksanaan kegiatan kedinasan dan realisasi belanja rutin Badan serta realisasi pajak dan retribusi daerah secara rutin dan berkala untuk disampaikan kepada Bupati.</li>\r\n	<li>Penyusunan Laporan Kinerja Instansi Pemerintah (LAKIP).</li>\r\n	<li>Pelaksanaan perencanaan, pengadaan dan pencatatan barang perlengkapan/peralatan kantor.</li>\r\n	<li>Pelaksanaan keamanan, ketertiban, dan kebersihan pada lingkungan kantor dan menjaga kerahasiaan Dokumen Negara yang dikelola oleh Badan.</li>\r\n	<li>Penghimpun dan penyusun data RKA/DPA yang mencakup seluruh kegiatan pada masing &ndash; masing bidang sebagai dasar pembuatan DPA Badan.</li>\r\n	<li>Pelaksanaan pengelolaan dan penatausahaan keuangan Badan serta pembayaran gaji pegawai.</li>\r\n	<li>Pelaksanaan penatausahaan perkantoran badan.</li>\r\n	<li>Pelaksanaan penatausahaan kepegawaian badan.</li>\r\n	<li>Penyelia pelaksanaan tugas kegiatan sekretariat melalui rapat, pertemuan maupun kunjungan langsung dalam rangka pengendalian dan tindak lanjut penyelesaian masalah.</li>\r\n	<li>Penilaian pelaksanaan tugas bawahan baik secara langsung maupun melalui penilaian SKP.</li>\r\n	<li>Pelaporan seluruh pelaksanaan tugas kegiatan kepada Kepala Badan sebagai bahan evaluasi.</li>\r\n	<li>Pelaksanaan tugas &ndash; tugas lain yang ditugaskan oleh atasan.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li><strong>Sekretariat membawahi :</strong></li>\r\n</ol>\r\n\r\n<ol>\r\n	<li>Sub Bagian Umum dan Kepegawaian</li>\r\n	<li>Sub Bagian Keuangan</li>\r\n	<li>Sub Bagian Perencanaan dan Pelaporan</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Masing &ndash; masing Sub Bagian pada Sekretariat dipimpin oleh Kepala Sub Bagian yang berada di bawah dan bertanggung jawab kepada Sekretaris.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n', '2017-05-31 07:56:13', '2017-05-31 07:56:13'),
(3, 'SUB BAGIAN UMUM DAN KEPEGAWAIAN', '<ol>\r\n	<li>Sub Bagian Umum dan Kepegawaian mempunyai tugas melaksanakan pelayanan ketatausahaan, rumah tangga, kepegawaian dinas, hukum, organisasi dan hubungan masyarakat.</li>\r\n	<li>Rincian tugas Sub Bidang Umum dan Kepegawaian adalah sebagai berikut :</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li>Menyusun program kerja Sub Bagian Umum dan Kepegawaian secara rinci dan menyeluruh sebagai pedoman pelaksanaan tugas.</li>\r\n	<li>Membagi tugas kepada bawahan sesuai dengan bidang tugas dan kemampuan masing &ndash; masing bawahan agar pelaksanaan tugas berjalan maksimal.</li>\r\n	<li>Melaksanakan urusan rumah tangga dinas agar pelaksanaan tugas dan kebutuhan rumah tangga Badan terpenuhi dan berjalan baik.</li>\r\n	<li>Menyusun rencana kebutuhan barang (RKBU) dan rencana kebutuhan pemeliharaan barang kantor (RKPBU).</li>\r\n	<li>Melaksanakan pengadaan, pencatatan, penyimpanan dan pelaporan barang inventaris dan barang habis pakai, guna terwujudnya tertib administrasi barang dan inventaris kantor.</li>\r\n	<li>Melaksanakan urusan surat menyurat, kearsipan dan dokumentasi kantor untuk tertib administrasi perkantoran.</li>\r\n	<li>Melaksanakan penatausahaan kepegawaian, mutasi kepegawaian, pelaporan dan penyusunan DUK pegawai dinas.</li>\r\n	<li>Melaksanakan kebersihan, ketertiban dan keamanan di lingkungan kantor guna terwujudnya suasana kondusif di tempat kerja.</li>\r\n	<li>Mempersiapkan kelengkapan pelaksanaan rapat / pertemuan kedinasan dan upacara / apel bendera.</li>\r\n	<li>Mempersiapkan kelengkapan dan pelayanan tamu kedinasan.</li>\r\n	<li>Menyampaikan laporan kegiatan pelaksanaan tugas kedinasan kepada atasan.</li>\r\n	<li>Menyelia dan mengawasi pelaksanaan tugas bawahan.</li>\r\n	<li>Menilai pelaksanaan tugas bawahan.</li>\r\n	<li>Melaksanakan tugas kedinasan lain yang ditugaskan atasan.</li>\r\n</ol>\r\n', '2017-05-31 07:56:40', '2017-05-31 07:56:40'),
(4, 'SUB BAGIAN KEUANGAN', '<ol>\r\n	<li>Sub Bagian Keuangan mempunyai tugas melaksanakan dan menyusun rencana anggaran dan program kegiatan dinas serta evaluasi dan laporan atas pelaksanaan anggaran secara periodik.</li>\r\n	<li>Rincian tugas Sub Bagian Keuangan adalah sebagai berikut :</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li>Merencanakan program kerja Sub Bagian Keuangan secara rinci dan terstruktur sebagai pedoman pelaksanaan kerja.</li>\r\n	<li>Membagi tugas kepada bawahan sesuai dengan fungsi dan kemampuan masing &ndash; masing staf bawahannya agar pelaksanaan tugas dapat berjalan maksimal.</li>\r\n	<li>Melaksanakan panatausahaan keuangan dinas dan urusan perbendaharaan agar pelaksanaan keuangan badan berjalan baik.</li>\r\n	<li>Melaksanakan verifikasi berkas pengajuan pencairan keuangan kegiatan yang diajukan oleh masing &ndash; masing bidang / PPTK untuk diteruskan kepada pengguna anggaran.</li>\r\n	<li>Melaksanakan perencanaan, pembayaran dan pertanggung jawaban gaji pegawai.</li>\r\n	<li>Menyusun dan menyampaikan data laporan tentang realisasi dan penyerapan anggaran SKPD sebagai bahan evaluasi pelaksanaan tugas kedinasan.</li>\r\n	<li>Membuat surat pertanggung jawaban dan laporan keuangan masing &ndash; masing kegiatan.</li>\r\n	<li>Menilai pelaksanaan tugas bawahan baik secara langsung maupun melalui panilaian SKP.</li>\r\n	<li>Melaksanakan tugas kedinasan lain yang ditugaskan oleh atasan.</li>\r\n</ol>\r\n', '2017-05-31 20:56:21', '2017-05-31 20:56:21'),
(5, 'SUB BAGIAN PERENCANAAN & PELAPORAN', '<ol>\r\n	<li>Sub Bagian Perencanaan dan Pelaporan mempunyai tugas melaksanakan penyusunan rencana anggaran dan program kegiatan Badan serta evaluasi dan laporan atas pelaksanaan program secara periodik.</li>\r\n	<li>Rincian tugas Sub Bagian Perencanaan dan Pelaporan adalah sebagai berikut :</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li>Merencanakan program kerja Sub Bagian Perencanaan dan Pelaporan secara rinci dan terstruktur untuk pedoman pelaksanaan tugas.</li>\r\n	<li>Membagi tugas kepada bawahan sesuai dengan bidang tugas dan kemampuan bawahan agar pelaksanaan tugas dapat berjalan maksimal.</li>\r\n	<li>Menghimpun dan menyusun data anggaran kegiatan untuk bahan penyusunan RKA/DPA Badan untuk disampaikan kepada Bupati dan dijadikan bahan penyusunan DPA SKPD.</li>\r\n	<li>Menghimpun dan mengolah data anggaran kegiatan untuk bahan penyusunan Renstra Badan.</li>\r\n	<li>Menghimpun data kegiatan dalam rangka penyusunan laporan capaian kinerja, realisasi keuangan,&nbsp; fisik kegiatan, dan LAKIP Badan.</li>\r\n	<li>Menghimpun dan menyusun laporan realisasi pendapatan daerah dari sektor pajak dan retribusi daerah secara periodik.</li>\r\n	<li>Menyelia pelaksanaan tugas bawahan agar pelaksanaan tugas berjalan lancar.</li>\r\n	<li>Mengecek dan menilai pelaksanaan tugas bawahan baik secara langsung maupun melalui penilaian SKP.</li>\r\n	<li>Melaksanakan tugas kedinasan lain yang ditugaskan atasan.</li>\r\n</ol>\r\n', '2017-05-31 20:57:22', '2017-05-31 20:57:22'),
(6, 'BIDANG PAJAK BUMI DAN BANGUNAN (PBB', '<ol>\r\n	<li>Bidang Pajak Bumi dan Bangunan&nbsp; melaksanakan tugas pokok pelayanan, pendataan, penilaian,&nbsp; penetapan dan pengawasan PBB.</li>\r\n	<li>Untuk melaksanakan tugas pokok sebagaimana dimaksud pada ayat (1), Bidang Pajak Bumi dan Bangunan mempunyai fungsi :</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li>Perumusan dan pelaksanaan kebijakan teknis Bidang Pajak Bumi dan Bangunan.</li>\r\n	<li>Pengumpulan dan pengolahan data dalam rangka perencanaan teknis pendataan, penilaian dan penetapan obyek/subyek &nbsp;PBB, dan sistem pengarsipan / dokumentasi PBB.</li>\r\n	<li>Penyusunan perencanaan dan pelaksanaan program di bidang pemungutan PBB.</li>\r\n	<li>Pelaksanaan dan pengawasan pendataan dan penetapan PBB.</li>\r\n	<li>Pelaksanaan pemeriksaan obyek/subyek dan wajib PBB.</li>\r\n	<li>Perumusan teknis penghitungan dan penetapan PBB.</li>\r\n	<li>Perumusan nilai jual obyek pajak PBB.</li>\r\n	<li>Pelaksanaan penilaian obyek, subyek dan wajib PBB.</li>\r\n	<li>Pelaksanaan penghitungan dan penetapan pengenaan &nbsp;ZNT PBB.</li>\r\n	<li>Pelaksanaan pemeriksaaan ketetapan SPPT PBB.</li>\r\n	<li>Pengendalian dan pendistribusian SPPT PBB.</li>\r\n	<li>Pemeriksaan berkas permohonan mutai PBB meliputi permohonan WP baru, pengurangan/ penambahan/penggabungan, dan penundaan pembayaran denda PBB.</li>\r\n	<li>Penyiapan ketetapan SPPT PBB.</li>\r\n	<li>Pelaksanaan penyelesaian keberatan PBB meliputi pembetulan, pembatalan, pengurangan, penghapusan dan pengurangan sanksi atas ketetapan PBB.</li>\r\n	<li>Pelaksanaan penyelesaian sengketa PBB.</li>\r\n	<li>Pelaksanaan pelaporan PBB dan Penyiapan bahan dalam rangka pemeriksaan dan tindak lanjut hasil pemeriksaan.</li>\r\n	<li>Pelaksanaan Sistem Pengendalian Internal (SPI).</li>\r\n	<li>Pelaksanaan Standar Pelayanan Minimal (SPM).</li>\r\n	<li>Pengevaluasian dan pelaporan pelaksanaan tugas pokok dan fungsi, dan</li>\r\n	<li>Pelaksanaan fungsi lain yang diberikan oleh Kepala Badan sesuai dengan tugas pokoknya.</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li>Bidang Pajak Bumi dan Bangunan, terdiri dari :</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li>Subbid Pendaftaran dan Pendataan.</li>\r\n	<li>Subbid Penilaian, Perhitungan dan Penetapan.</li>\r\n	<li>Subbid Penagolahan Data dan Keberatan.</li>\r\n</ol>\r\n\r\n<p>Masing &ndash; masing Sub Bidang dipimpin oleh Kepala Sub Bidang yang dalam melaksanakan tugas pokok dan fungsinya berada dan bertanggung jawab kepada Kepala Bidang.</p>\r\n', '2017-05-31 20:57:56', '2017-05-31 20:57:56');

-- --------------------------------------------------------

--
-- Table structure for table `tb_visimisi`
--

CREATE TABLE `tb_visimisi` (
  `id` int(10) UNSIGNED NOT NULL,
  `visi` text COLLATE utf8_unicode_ci NOT NULL,
  `misi` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_visimisi`
--

INSERT INTO `tb_visimisi` (`id`, `visi`, `misi`, `created_at`, `updated_at`) VALUES
(1, '<p>visi update</p>\r\n', '<p>misi update</p>\r\n', '2017-05-30 22:26:13', '2017-05-31 00:07:02');

-- --------------------------------------------------------

--
-- Table structure for table `time_entries`
--

CREATE TABLE `time_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED DEFAULT NULL,
  `work_type_id` int(10) UNSIGNED DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `time_entries`
--

INSERT INTO `time_entries` (`id`, `project_id`, `work_type_id`, `start_time`, `end_time`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, '2016-11-01 08:00:00', '2016-11-01 11:30:00', '2017-05-24 01:10:22', '2017-05-24 01:10:22', NULL),
(2, 1, 3, '2016-11-01 01:14:00', '2016-11-01 01:50:00', '2017-05-24 01:10:22', '2017-05-24 01:10:22', NULL),
(3, 5, 1, '2017-05-30 12:00:00', '2017-05-23 12:00:00', '2017-05-24 01:29:38', '2017-05-24 01:29:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$WRqbnV801Q7RAzNVFNuINudgiRDOVO0Gc5KWPgUdHu.CFn0xT9WU2', 1, 'pT9TuZOqfa4jYA6zeBkbbswSxll6cw1bvbR3WG96NlXSkQLwJIuhxQe5jhVB', '2017-05-24 01:10:23', '2017-06-02 01:00:55', '2017-06-02 01:00:55'),
(2, 'Gufron', 'pprd.lampungtengah@gmail.com', '$2y$10$9Ye4LCpwgZTQPvexjm2s4OjMt8l1aXjsARkbOdgkyr8sp.FMoIC0C', 1, 'V4fR3NXUzx2w80OqXxqsdhtyQOh0w8gvLxTmjW1AqIEOSQDJtTaEzJsIgFiC', '2017-06-02 01:00:25', '2017-06-02 01:09:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_actions`
--

CREATE TABLE `user_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action_model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_actions`
--

INSERT INTO `user_actions` (`id`, `user_id`, `action`, `action_model`, `action_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'created', 'work_types', 6, '2017-05-24 01:14:30', '2017-05-24 01:14:30', NULL),
(2, 1, 'deleted', 'projects', 2, '2017-05-24 01:28:20', '2017-05-24 01:28:20', NULL),
(3, 1, 'deleted', 'projects', 3, '2017-05-24 01:28:21', '2017-05-24 01:28:21', NULL),
(4, 1, 'created', 'time_entries', 3, '2017-05-24 01:29:38', '2017-05-24 01:29:38', NULL),
(5, 1, 'updated', 'users', 1, '2017-05-24 02:02:05', '2017-05-24 02:02:05', NULL),
(6, 1, 'updated', 'users', 1, '2017-05-24 02:03:51', '2017-05-24 02:03:51', NULL),
(7, 1, 'updated', 'users', 1, '2017-05-24 02:06:30', '2017-05-24 02:06:30', NULL),
(8, 1, 'updated', 'users', 1, '2017-05-24 02:29:25', '2017-05-24 02:29:25', NULL),
(9, 1, 'updated', 'users', 1, '2017-05-24 02:37:44', '2017-05-24 02:37:44', NULL),
(10, 1, 'updated', 'users', 1, '2017-05-25 03:56:08', '2017-05-25 03:56:08', NULL),
(11, 1, 'created', 'work_types', 7, '2017-05-29 22:53:16', '2017-05-29 22:53:16', NULL),
(12, 1, 'deleted', 'work_types', 6, '2017-05-29 22:53:36', '2017-05-29 22:53:36', NULL),
(13, 1, 'deleted', 'work_types', 7, '2017-05-29 22:53:36', '2017-05-29 22:53:36', NULL),
(14, 1, 'updated', 'users', 1, '2017-05-30 05:08:16', '2017-05-30 05:08:16', NULL),
(15, 1, 'updated', 'users', 1, '2017-05-30 07:07:11', '2017-05-30 07:07:11', NULL),
(16, 1, 'updated', 'users', 1, '2017-05-30 07:07:21', '2017-05-30 07:07:21', NULL),
(17, 1, 'updated', 'users', 1, '2017-05-30 09:06:12', '2017-05-30 09:06:12', NULL),
(18, 1, 'updated', 'users', 1, '2017-05-30 09:20:35', '2017-05-30 09:20:35', NULL),
(19, 1, 'updated', 'users', 1, '2017-05-30 09:25:02', '2017-05-30 09:25:02', NULL),
(20, 1, 'updated', 'users', 1, '2017-05-30 09:25:12', '2017-05-30 09:25:12', NULL),
(21, 1, 'updated', 'users', 1, '2017-05-30 10:17:53', '2017-05-30 10:17:53', NULL),
(22, 1, 'updated', 'users', 1, '2017-05-30 21:56:40', '2017-05-30 21:56:40', NULL),
(23, 1, 'updated', 'users', 1, '2017-05-31 00:26:00', '2017-05-31 00:26:00', NULL),
(24, 1, 'updated', 'users', 1, '2017-05-31 02:13:17', '2017-05-31 02:13:17', NULL),
(25, 1, 'updated', 'users', 1, '2017-05-31 07:29:01', '2017-05-31 07:29:01', NULL),
(26, 1, 'updated', 'users', 1, '2017-05-31 08:11:08', '2017-05-31 08:11:08', NULL),
(27, 1, 'updated', 'users', 1, '2017-05-31 20:58:30', '2017-05-31 20:58:30', NULL),
(28, 1, 'updated', 'users', 1, '2017-06-01 07:51:24', '2017-06-01 07:51:24', NULL),
(29, 1, 'updated', 'users', 1, '2017-06-01 10:32:55', '2017-06-01 10:32:55', NULL),
(30, 1, 'updated', 'users', 1, '2017-06-01 10:52:42', '2017-06-01 10:52:42', NULL),
(31, 1, 'updated', 'users', 1, '2017-06-01 10:57:18', '2017-06-01 10:57:18', NULL),
(32, 1, 'updated', 'users', 1, '2017-06-01 21:50:38', '2017-06-01 21:50:38', NULL),
(33, 1, 'updated', 'users', 1, '2017-06-01 22:57:13', '2017-06-01 22:57:13', NULL),
(34, 1, 'updated', 'users', 1, '2017-06-01 23:02:36', '2017-06-01 23:02:36', NULL),
(35, 1, 'created', 'users', 2, '2017-06-02 01:00:26', '2017-06-02 01:00:26', NULL),
(36, 1, 'updated', 'users', 1, '2017-06-02 01:00:32', '2017-06-02 01:00:32', NULL),
(37, 2, 'deleted', 'users', 1, '2017-06-02 01:00:55', '2017-06-02 01:00:55', NULL),
(38, 2, 'updated', 'users', 2, '2017-06-02 01:09:56', '2017-06-02 01:09:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `work_types`
--

CREATE TABLE `work_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `work_types`
--

INSERT INTO `work_types` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Bug solving', '2017-05-24 01:10:22', '2017-05-24 01:10:22', NULL),
(2, 'New features', '2017-05-24 01:10:22', '2017-05-24 01:10:22', NULL),
(3, 'Support', '2017-05-24 01:10:22', '2017-05-24 01:10:22', NULL),
(4, 'Client management', '2017-05-24 01:10:22', '2017-05-24 01:10:22', NULL),
(5, 'Server maintenance', '2017-05-24 01:10:22', '2017-05-24 01:10:22', NULL),
(6, 'work aja', '2017-05-24 01:14:30', '2017-05-29 22:53:36', '2017-05-29 22:53:36'),
(7, 'kjjkjlkjjlkj', '2017-05-29 22:53:16', '2017-05-29 22:53:36', '2017-05-29 22:53:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `tb_agenda`
--
ALTER TABLE `tb_agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_dasar_hukum`
--
ALTER TABLE `tb_dasar_hukum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_file`
--
ALTER TABLE `tb_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_foto`
--
ALTER TABLE `tb_foto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_info_pajak`
--
ALTER TABLE `tb_info_pajak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_news`
--
ALTER TABLE `tb_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_so`
--
ALTER TABLE `tb_so`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_target_pajak`
--
ALTER TABLE `tb_target_pajak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tupoksi`
--
ALTER TABLE `tb_tupoksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_visimisi`
--
ALTER TABLE `tb_visimisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_entries`
--
ALTER TABLE `time_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_94_project_project_id_time_entry` (`project_id`),
  ADD KEY `fk_95_worktype_work_type_id_time_entry` (`work_type_id`),
  ADD KEY `time_entries_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_91_role_role_id_user` (`role_id`),
  ADD KEY `users_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `user_actions`
--
ALTER TABLE `user_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_92_user_user_id_user_action` (`user_id`),
  ADD KEY `user_actions_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `work_types`
--
ALTER TABLE `work_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `work_types_deleted_at_index` (`deleted_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_agenda`
--
ALTER TABLE `tb_agenda`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_dasar_hukum`
--
ALTER TABLE `tb_dasar_hukum`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_file`
--
ALTER TABLE `tb_file`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tb_foto`
--
ALTER TABLE `tb_foto`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tb_info_pajak`
--
ALTER TABLE `tb_info_pajak`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_news`
--
ALTER TABLE `tb_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_so`
--
ALTER TABLE `tb_so`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_target_pajak`
--
ALTER TABLE `tb_target_pajak`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_tupoksi`
--
ALTER TABLE `tb_tupoksi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_visimisi`
--
ALTER TABLE `tb_visimisi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `time_entries`
--
ALTER TABLE `time_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_actions`
--
ALTER TABLE `user_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `work_types`
--
ALTER TABLE `work_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `time_entries`
--
ALTER TABLE `time_entries`
  ADD CONSTRAINT `fk_94_project_project_id_time_entry` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`),
  ADD CONSTRAINT `fk_95_worktype_work_type_id_time_entry` FOREIGN KEY (`work_type_id`) REFERENCES `work_types` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_91_role_role_id_user` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_actions`
--
ALTER TABLE `user_actions`
  ADD CONSTRAINT `fk_92_user_user_id_user_action` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
