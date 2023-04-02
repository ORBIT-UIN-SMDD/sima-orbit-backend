-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 02, 2023 at 01:52 PM
-- Server version: 5.7.33
-- PHP Version: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sima_orbit`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `agenda_nama` varchar(100) NOT NULL,
  `agenda_deskripsi` varchar(200) NOT NULL,
  `agenda_mulai` date NOT NULL,
  `agenda_selesai` date NOT NULL,
  `agenda_tempat` varchar(100) NOT NULL,
  `agenda_waktu` time NOT NULL,
  `agenda_keterangan` varchar(200) NOT NULL,
  `agenda_pembuat` varchar(100) NOT NULL,
  `agenda_dibuat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id`, `agenda_nama`, `agenda_deskripsi`, `agenda_mulai`, `agenda_selesai`, `agenda_tempat`, `agenda_waktu`, `agenda_keterangan`, `agenda_pembuat`, `agenda_dibuat`) VALUES
(4, 'Buka Bersama HMJ Manajemen Informatika UIN Batusangkar', 'Buka Puasa Bersama HMJ Manajemen Informatika UIN Batusangkar,', '2023-04-10', '2023-04-11', 'Padang panjang', '16:00:00', 'Wajib diikuti Oleh Seluruh Pengurus', 'Fajri Rinaldi Chan', '2023-04-02 01:30:50'),
(5, 'Buka Bersama Pengurus & Alumni UKM ORBIT', 'buka bersama yang akan dihadiri oleh seluruh Pengurus dan Alumni dan pembina UKM ORBIT UIN Sjech M.Djamil Djambek Bukittinggi,', '2023-04-07', '2023-04-07', 'Aur Kuning', '16:00:00', 'Wajib diikuti Oleh Seluruh Pengurus & Alumni', 'Fajri Rinaldi Chan', '2023-04-02 01:30:50');

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `nim` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` tinyint(1) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `periode` int(11) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `domisili` varchar(100) NOT NULL,
  `golongan_darah` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `nim` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` tinyint(1) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `fakultas_id` int(11) NOT NULL,
  `prodi_id` int(11) NOT NULL,
  `bidang_id` int(11) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `tanggal_mendaftar` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`nim`, `foto`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `fakultas_id`, `prodi_id`, `bidang_id`, `no_telp`, `email`, `password`, `tanggal_mendaftar`, `active`) VALUES
(2520003, 'uploads\\stream.png.png', 'Hery Kurniawan', 'pasaman', '2002-04-05', 1, 'Medan Labuhan', 1, 1, 1, '089613390766', 'fajririnaldichan9@gmail.com', '$2a$10$lbf2Pop/k2v6mIZMJ4r65uEYRl4Qrz.UGwGohtlmrcNkxmdzaa4qq', '2023-03-22 00:43:46', 0),
(2521001, 'uploads\\testing.octet-stream', 'testing', 'Medan', '2023-03-26', 1, 'yahaha hayuk, papaple papale', 2, 9, 4, '0899999999999', 'test@gmail.com', '$2a$10$B7lcEXvhGF7jcP5Z3jw0MOObXM2FL4xCQkmgcMueQ/pxM7dNlWJyO', '2023-03-26 08:03:09', 0),
(2521004, 'uploads\\testing.jpg.octet-stream', 'testing', 'Medan', '2023-03-26', 1, 'yahaha hayuk, papaple papale', 2, 9, 4, '0899999999999', 'test@gmail.com', '$2a$10$gvkZlKDRRFTjV9UlbX/v8.vG/aKz2x/5VMoDbcCft9Ko6JVwdk7ru', '2023-03-26 08:05:07', 0),
(2521008, 'uploads\\testing.jpg.octet-stream', 'testing', 'Medan', '2023-03-26', 1, 'yahaha hayuk, papaple papale', 2, 9, 4, '0899999999999', 'test@gmail.com', '$2a$10$I.Vlig8gPkBQLrqba5y8yO7Wfp/fWOA8tU3kdQxNm3LSKslnD3xfC', '2023-03-26 08:08:13', 0),
(2632634, 'uploads\\2632634-yayaha.png', 'yayaha', 'Medan', '2023-03-16', 1, 'palel pale syahahahahah', 1, 1, 2, '08123456789', 'testete@gariskode.com', '$2a$10$PHbOHuBIlMgAEcBeACA2sOV4Jn1xI2xA3zXf2RYzeylAh4DzSgvk2', '2023-03-26 08:19:34', 0),
(25200011, '', 'Hery Kurniawan', 'pasaman', '2002-04-05', 1, 'Medan Labuhan', 1, 1, 1, '089613390766', 'fajririnaldichan9@gmail.com', '$2a$10$fU25NLEQJUE0BQWGEs6NB.51WhhaiDoaJEgAPHlWyosLiADC.c3ZG', '2023-03-25 22:43:23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bidang`
--

CREATE TABLE `bidang` (
  `bidang_id` int(11) NOT NULL,
  `bidang_nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bidang`
--

INSERT INTO `bidang` (`bidang_id`, `bidang_nama`) VALUES
(1, 'Programming'),
(2, 'Multimedia'),
(3, 'Networking'),
(4, 'Robotik');

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `fakultas_id` int(11) NOT NULL,
  `fakultas_nama` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`fakultas_id`, `fakultas_nama`) VALUES
(1, 'Fakultas Syariah'),
(2, 'Fakultas Tarbiyah dan Ilmu Keguruan'),
(3, 'Fakultas Ekonomi dan Bisnis Islam'),
(4, 'fakultas Ushuluddin Adab dan Dakwah');

-- --------------------------------------------------------

--
-- Table structure for table `kompetensi`
--

CREATE TABLE `kompetensi` (
  `sertifkat_no` varchar(100) NOT NULL,
  `nim` int(11) NOT NULL,
  `bidang_id` int(11) NOT NULL,
  `kompetensi_nama` varchar(200) NOT NULL,
  `kompetensi_untuk` varchar(100) NOT NULL,
  `kompetensi_diverifikasi_oleh` varchar(100) NOT NULL,
  `kompetensi_tanggal` date NOT NULL,
  `kompetensi_sertifikat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kompetensi`
--

INSERT INTO `kompetensi` (`sertifkat_no`, `nim`, `bidang_id`, `kompetensi_nama`, `kompetensi_untuk`, `kompetensi_diverifikasi_oleh`, `kompetensi_tanggal`, `kompetensi_sertifikat`) VALUES
('001/2020/orbut', 2520005, 1, 'Kompetensi Ujian Microsoft Word', 'Fajri Rinaldi Chan', 'Kabid Programming', '2023-04-02', 'dvsdivhbsdivgbsdi');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `pengumuman_id` int(11) NOT NULL,
  `pengumuman_judul` varchar(200) NOT NULL,
  `pengumuman_deskripsi` text NOT NULL,
  `pengumuman_tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pengumuman_pembuat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`pengumuman_id`, `pengumuman_judul`, `pengumuman_deskripsi`, `pengumuman_tanggal`, `pengumuman_pembuat`) VALUES
(1, 'ini adalah judul', 'apa kabar semua, yahahaha', '2023-03-22 08:09:59', 'fajri Rinaldi Chan'),
(2, 'ini adalah judul', 'apa kabar semua, yahahaha', '2023-03-22 08:10:33', 'fajri Rinaldi Chan'),
(3, 'ini adalah judul', 'apa kabar semua, yahahaha', '2023-03-22 08:10:47', 'fajri Rinaldi Chan'),
(4, 'ini adalah judul', 'apa kabar semua, yahahaha', '2023-03-29 05:57:28', 'fajri Rinaldi Chan'),
(5, 'ini adalah judul', 'apa kabar semua, yahahaha', '2023-03-29 05:57:43', 'fajri Rinaldi Chan'),
(6, 'ini adalah judul', 'apa kabar semua, yahahaha', '2023-03-29 16:18:49', 'fajri Rinaldi Chan'),
(7, 'ini adalah judul', 'apa kabar semua, yahahaha', '2023-03-29 16:19:08', 'fajri Rinaldi Chan'),
(8, 'Robotik Info', 'Bidang Robotik Akan melakukan Ujian Kompetensi kepada seluruh Anggotanya', '2023-04-01 02:47:35', 'fajri Rinaldi Chan'),
(9, 'Robotik Info', 'Bidang Robotik Akan melakukan Ujian Kompetensi kepada seluruh Anggotanya yahaha papale papale ahmad', '2023-04-01 02:58:55', 'fajri Rinaldi Chan'),
(10, 'Robotik Info', 'Bidang Robotik Akan melakukan Ujian Kompetensi kepada seluruh Anggotanya yahaha papale papale ahmad', '2023-04-01 03:02:24', 'fajri Rinaldi Chan');

-- --------------------------------------------------------

--
-- Table structure for table `pengurus`
--

CREATE TABLE `pengurus` (
  `nim` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` tinyint(1) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `fakultas_id` int(11) NOT NULL,
  `prodi_id` int(11) NOT NULL,
  `bidang_id` int(11) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `periode` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengurus`
--

INSERT INTO `pengurus` (`nim`, `foto`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `fakultas_id`, `prodi_id`, `bidang_id`, `no_telp`, `email`, `password`, `periode`, `active`) VALUES
(2520005, '', 'Fajri Rinaldi Chan', 'Medan', '2002-04-06', 1, 'Perumahan Darussalam gang shafa no 33', 2, 9, 4, '089613390766', 'fajririnaldichan@gmail.com', '$2a$10$5V1EzWZEa8IREgy/06Z.buQ1Mm1FR.RY3sa/Z6/WGMJF2TC00jhbS', 2023, 1);

-- --------------------------------------------------------

--
-- Table structure for table `penugasan`
--

CREATE TABLE `penugasan` (
  `penugasan_id` int(11) NOT NULL,
  `penugasan_nama` varchar(100) NOT NULL,
  `penugasan_deskripsi` text NOT NULL,
  `penugasan_mulai` date NOT NULL,
  `penugasan_selesai` date NOT NULL,
  `penugasan_tempat` varchar(100) NOT NULL,
  `penugasan_waktu` time NOT NULL,
  `penugasan_oleh` varchar(100) NOT NULL,
  `penugasan_no_surat` varchar(100) NOT NULL,
  `penugasan_sk` varchar(200) NOT NULL,
  `penugasan_dibuat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penugasan`
--

INSERT INTO `penugasan` (`penugasan_id`, `penugasan_nama`, `penugasan_deskripsi`, `penugasan_mulai`, `penugasan_selesai`, `penugasan_tempat`, `penugasan_waktu`, `penugasan_oleh`, `penugasan_no_surat`, `penugasan_sk`, `penugasan_dibuat`) VALUES
(1, 'Kepanitiaan MUBES XI UKM ORBIT', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque pretium consectetur blandit. Curabitur scelerisque malesuada tortor, id ornare lorem feugiat porta. Aenean non risus turpis. Proin eu egestas quam. In blandit fringilla nisi, vitae dictum mi euismod id. Duis ante leo, placerat a feugiat in,', '2023-04-08', '2023-04-11', 'Sekretariat SEMA-U', '07:15:00', 'UKM ORBIT', '001/SK-PP/UPGRADING/UKM-ORBIT/UINSMDD-BKT/III/2023', 'yahahaha', '2023-04-01 03:16:19');

-- --------------------------------------------------------

--
-- Table structure for table `penugasan_anggota`
--

CREATE TABLE `penugasan_anggota` (
  `id` int(11) NOT NULL,
  `penugasan_id` int(11) NOT NULL,
  `nim` int(11) NOT NULL,
  `bidang_tugas` varchar(100) NOT NULL,
  `ditambahkan_pada` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penugasan_pengurus`
--

CREATE TABLE `penugasan_pengurus` (
  `id` int(11) NOT NULL,
  `penugasan_id` int(11) NOT NULL,
  `nim` int(11) NOT NULL,
  `bidang_tugas` varchar(100) NOT NULL,
  `ditambahkan_pada` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penugasan_pengurus`
--

INSERT INTO `penugasan_pengurus` (`id`, `penugasan_id`, `nim`, `bidang_tugas`, `ditambahkan_pada`) VALUES
(1, 1, 2520005, 'Koor Perlengkapan', '2023-04-01 03:17:07');

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `prodi_id` int(11) NOT NULL,
  `fakultas_id` int(11) NOT NULL,
  `prodi_nama` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`prodi_id`, `fakultas_id`, `prodi_nama`) VALUES
(1, 1, 'Hukum Keluarga'),
(2, 1, 'Hukum Ekonomi Syariah'),
(3, 1, 'Hukum Tatanegara'),
(4, 1, 'Hukum Pidana Islam'),
(5, 2, 'Pendidikan Agama Islam'),
(6, 2, 'Pendidikan Bahasa Arab'),
(7, 2, 'Pendidikan Bahasa Inggris'),
(8, 2, 'Pendidikan Matematika'),
(9, 2, 'Pendidikan Teknik Informatika Komputer'),
(10, 2, 'Bimbingan dan Konseling'),
(11, 3, 'Ekonomi Islam'),
(12, 3, 'Perbankan Syariah'),
(13, 3, 'Akuntansi Syariah'),
(14, 3, 'Pariwisata Syariah'),
(15, 3, 'Manajemen Haji dan Umroh'),
(16, 3, 'Manajemen Bisnis Syariah'),
(17, 4, 'Ilmu Alquran dan Tafsir'),
(18, 4, 'Ilmu Hadist'),
(19, 4, 'Komunikasi Penyiaran Islam'),
(20, 4, 'Sejarah Peradaban Islam'),
(21, 4, 'Aqidah dan Filsafat Islam'),
(22, 4, 'Sosiologi Agama');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `fakultas_id` (`fakultas_id`),
  ADD KEY `prodi_id` (`prodi_id`),
  ADD KEY `bidang_id` (`bidang_id`);

--
-- Indexes for table `bidang`
--
ALTER TABLE `bidang`
  ADD PRIMARY KEY (`bidang_id`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`fakultas_id`);

--
-- Indexes for table `kompetensi`
--
ALTER TABLE `kompetensi`
  ADD PRIMARY KEY (`sertifkat_no`),
  ADD KEY `bidang_id` (`bidang_id`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`pengumuman_id`);

--
-- Indexes for table `pengurus`
--
ALTER TABLE `pengurus`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `fakultas_id` (`fakultas_id`),
  ADD KEY `prodi_id` (`prodi_id`),
  ADD KEY `bidang_id` (`bidang_id`);

--
-- Indexes for table `penugasan`
--
ALTER TABLE `penugasan`
  ADD PRIMARY KEY (`penugasan_id`);

--
-- Indexes for table `penugasan_anggota`
--
ALTER TABLE `penugasan_anggota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nim` (`nim`);

--
-- Indexes for table `penugasan_pengurus`
--
ALTER TABLE `penugasan_pengurus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`prodi_id`),
  ADD KEY `fakultas_id` (`fakultas_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `nim` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `nim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25200012;

--
-- AUTO_INCREMENT for table `bidang`
--
ALTER TABLE `bidang`
  MODIFY `bidang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `fakultas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pengurus`
--
ALTER TABLE `pengurus`
  MODIFY `nim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2520006;

--
-- AUTO_INCREMENT for table `penugasan`
--
ALTER TABLE `penugasan`
  MODIFY `penugasan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penugasan_anggota`
--
ALTER TABLE `penugasan_anggota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penugasan_pengurus`
--
ALTER TABLE `penugasan_pengurus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `prodi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anggota`
--
ALTER TABLE `anggota`
  ADD CONSTRAINT `anggota_ibfk_1` FOREIGN KEY (`fakultas_id`) REFERENCES `fakultas` (`fakultas_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `anggota_ibfk_2` FOREIGN KEY (`prodi_id`) REFERENCES `prodi` (`prodi_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `anggota_ibfk_3` FOREIGN KEY (`bidang_id`) REFERENCES `bidang` (`bidang_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `pengurus`
--
ALTER TABLE `pengurus`
  ADD CONSTRAINT `pengurus_ibfk_1` FOREIGN KEY (`fakultas_id`) REFERENCES `fakultas` (`fakultas_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengurus_ibfk_2` FOREIGN KEY (`prodi_id`) REFERENCES `prodi` (`prodi_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengurus_ibfk_3` FOREIGN KEY (`bidang_id`) REFERENCES `bidang` (`bidang_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `penugasan_anggota`
--
ALTER TABLE `penugasan_anggota`
  ADD CONSTRAINT `penugasan_anggota_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `anggota` (`nim`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `prodi`
--
ALTER TABLE `prodi`
  ADD CONSTRAINT `prodi_ibfk_1` FOREIGN KEY (`fakultas_id`) REFERENCES `fakultas` (`fakultas_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
