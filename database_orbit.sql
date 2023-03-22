-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 26, 2023 at 06:55 AM
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
-- Database: `database_orbit`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `no_anggota` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `fakultas` varchar(10) NOT NULL,
  `prodi` varchar(30) NOT NULL,
  `bidang` varchar(20) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `calon_anggota`
--

CREATE TABLE `calon_anggota` (
  `id` int(11) NOT NULL,
  `no_pendaftaran` varchar(30) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `nama` varchar(30) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `fakultas` varchar(100) NOT NULL,
  `prodi` varchar(100) NOT NULL,
  `bidang` varchar(20) NOT NULL,
  `alasan` varchar(100) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `tanggal_mendaftar` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calon_anggota`
--

INSERT INTO `calon_anggota` (`id`, `no_pendaftaran`, `image`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `fakultas`, `prodi`, `bidang`, `alasan`, `no_telp`, `email`, `password`, `tanggal_mendaftar`) VALUES
(11, 'ORBIT/inan/Robotik', '', 'inan', 'medan', '2002-04-05', '', 'Medan Labuhan', 'FTIK', 'pendidikan teknik informatika dan komputer', 'Robotik', 'Pengen nambah wawan', '089613390766', 'fajririnaldichan9@gmail.com', '$2a$10$mvoBhYtYnWgGLknZt0X74.R6M.wRrLn57EEX4E.KvH6AB4Pq1oIpa', '2023-01-12 06:36:38'),
(12, 'ORBIT/inan/Robotik', 'uploads\\logo-kbj.png', 'inan', 'medan', '2002-04-05', '', 'Medan Labuhan', 'FTIK', 'pendidikan teknik informatika dan komputer', 'Robotik', 'Pengen nambah wawan', '089613390766', 'fajririnaldichan10@gmail.com', '$2a$10$dk1YUuI/fylwfgcJLCvwg.B3PuNvE7m8dyBBdu0KuxBlsN9uJzZ5K', '2023-01-15 14:00:27'),
(13, 'ORBIT/inan/Robotik', 'uploads\\logo-kbj.png', 'inan', 'medan', '2002-04-05', '', 'Medan Labuhan', 'FTIK', 'pendidikan teknik informatika dan komputer', 'Robotik', 'Pengen nambah wawan', '089613390766', 'fajririnaldichan11@gmail.com', '$2a$10$CDTKBt2STGb8wdudrDSzbuLONcgRPt7h9l4XoDluFiy0WDENZEHL.', '2023-01-16 02:39:46'),
(14, 'ORBIT/inan/robotik', '', 'inan', 'wefwef ', '2023-01-04', 'laki-laki', 'wefwfw', 'Fakultas Syariah', 'Hukum Tatanegara', 'robotik', 'fsdvs', '453453234234234', 'fwewfwef@gmail.com', '$2a$10$6ikHhJZz5YFNjA.BVpxe0uxMfT/l5cQe9qt0JUKOjvN1mlu/Q/BEu', '2023-01-17 02:10:34'),
(15, 'ORBIT/inan/robotik', '', 'inan', 'wefwef ', '2023-01-04', 'laki-laki', 'wefwfw', 'Fakultas Syariah', 'Hukum Tatanegara', 'robotik', 'fsdvs', '453453234234234', 'fwewfwef1@gmail.com', '$2a$10$Pl4BBCb14kRRwimNSfKf5e1lQ8k8U4X1Xkny8BqO4MeLoky1OTzb2', '2023-01-17 02:11:51'),
(16, 'ORBIT/sacascas/robotik', 'uploads\\sacascas', 'sacascas', 'medan', '2023-01-11', 'laki-laki', 'hsdjdd', 'Fakultas Tarbiyah dan Ilmu Keguruan', 'Pendidikan Teknik Informatika dan Komputer', 'robotik', 'aaaa', '453453453535345', 'sacac@cdcd.cc', '$2a$10$.enGOrHx5VfGV2433n.Aj.52pa9eYLoBYb7WU5G9BKCKwJf/CjiIm', '2023-01-20 15:08:02'),
(17, 'ORBIT/asafo/robotik', 'uploads\\asafo', 'asafo', 'dasdas', '2023-01-12', 'laki-laki', 'medan', 'Fakultas Tarbiyah dan Ilmu Keguruan', 'Pendidikan Teknik Informatika dan Komputer', 'robotik', 'gabut', '23423423423', 'asfasf@gmail.com', '$2a$10$NR.V1iWz1bt6.BX7d99rAukH.6fYLRNP2EAXvLDYij1fKwTRlhO4K', '2023-01-21 05:16:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`no_anggota`);

--
-- Indexes for table `calon_anggota`
--
ALTER TABLE `calon_anggota`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calon_anggota`
--
ALTER TABLE `calon_anggota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
