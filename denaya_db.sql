-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2026 at 11:37 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `denaya_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_section`
--

CREATE TABLE `about_section` (
  `id` int(11) NOT NULL,
  `konten` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about_section`
--

INSERT INTO `about_section` (`id`, `konten`) VALUES
(1, 'Kami percaya bahwa setiap detik memiliki cerita. Denaya Pictures hadir untuk menangkap emosi jujur melalui lensa kami dengan pendekatan warm minimalism.');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'Administrator Denaya');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `file_gambar` varchar(255) NOT NULL,
  `alt_text` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `file_gambar`, `alt_text`, `created_at`) VALUES
(7, 'denaya_1777448707.jpeg', 'wisuda', '2026-04-29 07:45:07'),
(8, 'denaya_1777448721.jpeg', 'wisuda', '2026-04-29 07:45:21'),
(9, 'denaya_1777448741.jpeg', 'wisuda', '2026-04-29 07:45:41'),
(10, 'denaya_1777448777.jpeg', 'wisuda', '2026-04-29 07:46:17'),
(11, 'denaya_1777448796.jpeg', 'wisuda', '2026-04-29 07:46:36'),
(13, 'denaya_1777448875.jpeg', 'wisuda', '2026-04-29 07:47:55');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `nama_layanan` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `nama_layanan`, `harga`) VALUES
(1, 'Wedding Photography', 2500000),
(2, 'Pre-Wedding Session', 1800000),
(3, 'Graduation / Portrait', 500000);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `nama_klien` varchar(100) NOT NULL,
  `pekerjaan` varchar(50) DEFAULT NULL,
  `pesan` text NOT NULL,
  `rating` int(1) DEFAULT 5,
  `foto_klien` varchar(255) DEFAULT 'default_user.jpg',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `nama_klien`, `pekerjaan`, `pesan`, `rating`, `foto_klien`, `created_at`) VALUES
(1, 'Siska & Adit', 'Pasangan Wedding', 'Suka banget sama tone warnanya! Bikin momen pernikahan kami kelihatan sangat hangat dan mahal. Timnya juga sangat sabar mengarahkan gaya.', 5, 'default_user.jpg', '2026-04-29 07:54:34'),
(2, 'Rizky Pratama', 'Lulusan UNUSIDA', 'Hasil foto wisudanya estetik parah. Proses editnya cepat dan adminnya ramah banget pas diajak diskusi soal konsep outdoor.', 5, 'default_user.jpg', '2026-04-29 07:54:34'),
(3, 'Amanda Putri', 'Client Portrait', 'Denaya Pictures bener-bener paham gimana cara nangkep ekspresi alami. Gak nyesel langganan di sini untuk konten personal branding saya.', 4, 'default_user.jpg', '2026-04-29 07:54:34'),
(4, 'Budi & Rina', 'Pasangan Pre-Wedding', 'Awalnya kaku depan kamera, tapi fotografernya jago banget bikin suasana jadi cair. Hasil cinematic teaser-nya dapet pujian dari semua keluarga!', 5, 'default_user.jpg', '2026-04-29 07:54:34'),
(5, 'abdul', 'wedding', 'sangat enak sekali aku pessen jasa disini', 5, 'default_user.jpg', '2026-04-29 08:08:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_section`
--
ALTER TABLE `about_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_section`
--
ALTER TABLE `about_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
