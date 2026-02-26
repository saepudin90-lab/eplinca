-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Feb 2026 pada 15.19
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
-- Database: `cekhousing`
--
CREATE DATABASE IF NOT EXISTS `cekhousing` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cekhousing`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guests`
--

CREATE TABLE `guests` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `id_card` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `checkin` datetime DEFAULT NULL,
  `checkout` datetime DEFAULT NULL,
  `status` enum('checked_in','checked_out') DEFAULT 'checked_in',
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `guests`
--

INSERT INTO `guests` (`id`, `name`, `id_card`, `phone`, `company_name`, `room_id`, `checkin`, `checkout`, `status`, `note`) VALUES
(1, 'USEP SAEPUDIN', '01064', '085217205207', 'EBTKE', 1, '2025-11-17 10:48:20', NULL, 'checked_in', ''),
(2, 'USEP SAEPUDIN', '', '', '', 2, '2025-11-17 10:48:29', NULL, 'checked_in', ''),
(3, 'USEP SAEPUDIN', '', '', '', 3, '2025-11-17 10:48:37', NULL, 'checked_in', ''),
(4, 'RAHAYU', '', '', '', 4, '2025-11-17 10:48:47', NULL, 'checked_in', ''),
(5, 'GIGI', '', '', '', 5, '2025-11-17 10:49:03', NULL, 'checked_in', ''),
(6, 'SANDRI', '', '', '', 8, '2025-11-17 10:49:28', '2025-11-17 11:13:29', 'checked_out', ''),
(7, 'ZAELANI', '', '', '', 9, '2025-11-17 10:49:38', NULL, 'checked_in', ''),
(8, 'JUMAHIR', '', '', '', 17, '2025-11-17 10:49:48', NULL, 'checked_in', ''),
(9, 'KODOK', '', '', '', 24, '2025-11-17 10:49:57', NULL, 'checked_in', ''),
(10, 'BASTIAN', '', '', '', 18, '2025-11-17 10:50:06', NULL, 'checked_in', ''),
(11, 'YAYAH', '', '', '', 14, '2025-11-17 10:50:15', NULL, 'checked_in', ''),
(12, 'ASEP', '', '', 'POLRI', 127, '2025-11-17 10:50:33', NULL, 'checked_in', ''),
(13, 'barni', '', '', '', 10, '2025-11-17 11:04:55', '2025-11-17 11:13:25', 'checked_out', ''),
(14, 'kohar', '', '', '', 29, '2025-11-17 11:05:04', NULL, 'checked_in', ''),
(15, 'joni', '', '', '', 15, '2025-11-17 11:05:20', NULL, 'checked_in', ''),
(16, 'burhan', '', '', '', 28, '2025-11-17 11:05:30', NULL, 'checked_in', ''),
(17, 'santi', '', '', '', 27, '2025-11-17 11:05:40', NULL, 'checked_in', ''),
(18, 'jamal', '', '', '', 32, '2025-11-17 11:05:48', NULL, 'checked_in', ''),
(19, 'hindun', '', '', '', 13, '2025-11-17 11:06:04', NULL, 'checked_in', ''),
(25, 'benamin', '', '', '', 87, '2025-11-17 11:06:16', '2025-11-17 11:13:21', 'checked_out', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `capacity` int(11) NOT NULL DEFAULT 1,
  `status` enum('available','occupied','maintenance') DEFAULT 'available',
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `rooms`
--

INSERT INTO `rooms` (`id`, `code`, `name`, `capacity`, `status`, `description`) VALUES
(1, 'H-1', 'Room-A', 1, 'occupied', ''),
(2, 'H-1', 'Room-B', 1, 'occupied', ''),
(3, 'H-1', 'Room-C', 1, 'occupied', NULL),
(4, 'H-1', 'Room-D', 1, 'occupied', NULL),
(5, 'H-1', 'Room-E', 1, 'occupied', NULL),
(6, 'H-1', 'Room-F', 1, 'available', NULL),
(7, 'H-1', 'Room-G', 1, 'available', NULL),
(8, 'H-1', 'Room-H', 1, 'available', NULL),
(9, 'H-2', 'Room-A', 1, 'occupied', NULL),
(10, 'H-2', 'Room-B', 1, 'available', NULL),
(11, 'H-2', 'Room-C', 1, 'available', NULL),
(12, 'H-2', 'Room-D', 1, 'available', NULL),
(13, 'H-2', 'Room-E', 1, 'occupied', NULL),
(14, 'H-2', 'Room-F', 1, 'occupied', NULL),
(15, 'H-2', 'Room-G', 1, 'occupied', NULL),
(16, 'H-2', 'Room-H', 1, 'available', NULL),
(17, 'H-3', 'Room-A', 1, 'occupied', NULL),
(18, 'H-3', 'Room-B', 1, 'occupied', NULL),
(19, 'H-3', 'Room-C', 1, 'available', NULL),
(20, 'H-3', 'Room-D', 1, 'available', NULL),
(21, 'H-3', 'Room-E', 1, 'available', NULL),
(22, 'H-3', 'Room-F', 1, 'available', NULL),
(23, 'H-3', 'Room-G', 1, 'available', NULL),
(24, 'H-3', 'Room-H', 1, 'occupied', NULL),
(25, 'H-4', 'Room-A', 1, 'available', NULL),
(26, 'H-4', 'Room-B', 1, 'available', NULL),
(27, 'H-4', 'Room-C', 1, 'occupied', NULL),
(28, 'H-4', 'Room-D', 1, 'occupied', NULL),
(29, 'H-4', 'Room-E', 1, 'occupied', NULL),
(30, 'H-4', 'Room-F', 1, 'available', NULL),
(31, 'H-4', 'Room-G', 1, 'available', NULL),
(32, 'H-4', 'Room-H', 1, 'occupied', NULL),
(33, 'H-5', 'Room-A', 1, 'available', NULL),
(34, 'H-5', 'Room-B', 1, 'available', NULL),
(35, 'H-5', 'Room-C', 1, 'available', NULL),
(36, 'H-5', 'Room-D', 1, 'available', NULL),
(37, 'H-5', 'Room-E', 1, 'available', NULL),
(38, 'H-5', 'Room-F', 1, 'available', NULL),
(39, 'H-5', 'Room-G', 1, 'available', NULL),
(40, 'H-5', 'Room-H', 1, 'available', NULL),
(41, 'H-6', 'Room-A', 1, 'available', NULL),
(42, 'H-6', 'Room-B', 1, 'available', NULL),
(43, 'H-6', 'Room-C', 1, 'available', NULL),
(44, 'H-6', 'Room-D', 1, 'available', NULL),
(45, 'H-6', 'Room-E', 1, 'available', NULL),
(46, 'H-6', 'Room-F', 1, 'available', NULL),
(47, 'H-6', 'Room-G', 1, 'available', NULL),
(48, 'H-6', 'Room-H', 1, 'available', NULL),
(49, 'H-7', 'Room-A', 1, 'available', NULL),
(50, 'H-7', 'Room-B', 1, 'available', NULL),
(51, 'H-7', 'Room-C', 1, 'available', NULL),
(52, 'H-7', 'Room-D', 1, 'available', NULL),
(53, 'H-7', 'Room-E', 1, 'available', NULL),
(54, 'H-7', 'Room-F', 1, 'available', NULL),
(55, 'H-7', 'Room-G', 1, 'available', NULL),
(56, 'H-7', 'Room-H', 1, 'available', NULL),
(57, 'H-8', 'Room-A', 1, 'available', NULL),
(58, 'H-8', 'Room-B', 1, 'available', NULL),
(59, 'H-8', 'Room-C', 1, 'available', NULL),
(60, 'H-8', 'Room-D', 1, 'available', NULL),
(61, 'H-8', 'Room-E', 1, 'available', NULL),
(62, 'H-8', 'Room-F', 1, 'available', NULL),
(63, 'H-8', 'Room-G', 1, 'available', NULL),
(64, 'H-8', 'Room-H', 1, 'available', NULL),
(65, 'H-9', 'Room-A', 1, 'available', NULL),
(66, 'H-9', 'Room-B', 1, 'available', NULL),
(67, 'H-9', 'Room-C', 1, 'available', NULL),
(68, 'H-9', 'Room-D', 1, 'available', NULL),
(69, 'H-9', 'Room-E', 1, 'available', NULL),
(70, 'H-9', 'Room-F', 1, 'available', NULL),
(71, 'H-9', 'Room-G', 1, 'available', NULL),
(72, 'H-9', 'Room-H', 1, 'available', NULL),
(73, 'H-10', 'Room-A', 1, 'available', NULL),
(74, 'H-10', 'Room-B', 1, 'available', NULL),
(75, 'H-10', 'Room-C', 1, 'available', NULL),
(76, 'H-10', 'Room-D', 1, 'available', NULL),
(77, 'H-10', 'Room-E', 1, 'available', NULL),
(78, 'H-10', 'Room-F', 1, 'available', NULL),
(79, 'H-10', 'Room-G', 1, 'available', NULL),
(80, 'H-10', 'Room-H', 1, 'available', NULL),
(81, 'H-10', 'Room-I', 1, 'available', NULL),
(82, 'H-10', 'Room-J', 1, 'available', NULL),
(83, 'H-10', 'Room-K', 1, 'available', NULL),
(84, 'H-10', 'Room-L', 1, 'available', NULL),
(85, 'H-10', 'Room-M', 1, 'available', NULL),
(86, 'H-10', 'Room-N', 1, 'available', NULL),
(87, 'H-10', 'Room-O', 1, 'available', NULL),
(88, 'H-10', 'Room-P', 1, 'available', NULL),
(89, 'H-11', 'Room-A', 1, 'available', NULL),
(90, 'H-11', 'Room-B', 1, 'available', NULL),
(91, 'H-11', 'Room-C', 1, 'available', NULL),
(92, 'H-11', 'Room-D', 1, 'available', NULL),
(93, 'H-11', 'Room-E', 1, 'available', NULL),
(94, 'H-11', 'Room-F', 1, 'available', NULL),
(95, 'H-11', 'Room-G', 1, 'available', NULL),
(96, 'H-11', 'Room-H', 1, 'available', NULL),
(97, 'H-11', 'Room-I', 1, 'available', NULL),
(98, 'H-11', 'Room-J', 1, 'available', NULL),
(99, 'H-11', 'Room-K', 1, 'available', NULL),
(100, 'H-11', 'Room-L', 1, 'available', NULL),
(101, 'H-11', 'Room-M', 1, 'available', NULL),
(102, 'H-11', 'Room-N', 1, 'available', NULL),
(103, 'H-11', 'Room-O', 1, 'available', NULL),
(104, 'H-11', 'Room-P', 1, 'available', NULL),
(105, 'H-12', 'Room-A', 1, 'available', NULL),
(106, 'H-12', 'Room-B', 1, 'available', NULL),
(107, 'H-12', 'Room-C', 1, 'available', NULL),
(108, 'H-12', 'Room-D', 1, 'available', NULL),
(109, 'H-12', 'Room-E', 1, 'available', NULL),
(110, 'H-12', 'Room-F', 1, 'available', NULL),
(111, 'H-12', 'Room-G', 1, 'available', NULL),
(112, 'H-12', 'Room-H', 1, 'available', NULL),
(113, 'H-12', 'Room-I', 1, 'available', NULL),
(114, 'H-12', 'Room-J', 1, 'available', NULL),
(115, 'H-12', 'Room-K', 1, 'available', NULL),
(116, 'H-12', 'Room-L', 1, 'available', NULL),
(117, 'H-12', 'Room-M', 1, 'available', NULL),
(118, 'H-12', 'Room-N', 1, 'available', NULL),
(119, 'H-12', 'Room-O', 1, 'available', NULL),
(120, 'H-12', 'Room-P', 1, 'available', NULL),
(121, 'Portacamp-A', 'Room-1', 1, 'available', NULL),
(122, 'Portacamp-A', 'Room-2', 1, 'available', NULL),
(123, 'Portacamp-A', 'Room-3', 1, 'available', NULL),
(124, 'Portacamp-A', 'Room-4', 1, 'available', NULL),
(125, 'Portacamp-A', 'Room-5', 1, 'available', NULL),
(126, 'Portacamp-A', 'Room-6', 1, 'available', NULL),
(127, 'Portacamp-B', 'Room-1', 1, 'occupied', NULL),
(128, 'Portacamp-B', 'Room-2', 1, 'available', NULL),
(129, 'Portacamp-B', 'Room-3', 1, 'available', NULL),
(130, 'Portacamp-B', 'Room-4', 1, 'available', NULL),
(131, 'Portacamp-B', 'Room-5', 1, 'available', NULL),
(132, 'Portacamp-B', 'Room-6', 1, 'available', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`) VALUES
(1, 'Housingsegs', '91a95fb10e3d63de8a5db42f454b2746', 'Admin Housing');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indeks untuk tabel `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_code_name` (`code`,`name`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `guests`
--
ALTER TABLE `guests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT untuk tabel `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `guests`
--
ALTER TABLE `guests`
  ADD CONSTRAINT `guests_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE SET NULL;
--
-- Database: `employee_record`
--
CREATE DATABASE IF NOT EXISTS `employee_record` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `employee_record`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `nik` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `posisi` varchar(100) NOT NULL,
  `unit` enum('salak','darajat','wayang_windu') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `employees`
--

INSERT INTO `employees` (`id`, `nik`, `nama`, `posisi`, `unit`, `created_at`) VALUES
(175, '0850121001', 'ADE IRAWAN', 'COOK', 'salak', '2026-01-29 04:58:42'),
(176, '0850121002', 'ADE MUSLIH', 'ROOM BOY', 'salak', '2026-01-29 04:58:42'),
(177, '0850921002', 'ADRIAN PURNAMA MULYANA', 'EXECUTIVE CHEF', 'salak', '2026-01-29 04:58:42'),
(178, '0850121003', 'AGUS SETIAWAN', 'MAINTENANCE', 'salak', '2026-01-29 04:58:42'),
(179, '0850121004', 'AHMAD SOPIAN SAURI', 'ACCOMMODATION SUPERVISOR', 'salak', '2026-01-29 04:58:42'),
(180, '0850121006', 'ANGGI RINALDI', 'WAITER', 'salak', '2026-01-29 04:58:42'),
(181, '0850121007', 'ASEP MAULANA', 'ROOM BOY', 'salak', '2026-01-29 04:58:42'),
(182, '0850121009', 'ASRUL HAYAT', 'LAUNDRY ATTENDANT', 'salak', '2026-01-29 04:58:42'),
(183, '0850121010', 'AYU ANANDA', 'WAITER', 'salak', '2026-01-29 04:58:42'),
(184, '0850121011', 'AZIS SOLEHUDIN', 'CAMPBOSS', 'salak', '2026-01-29 04:58:42'),
(185, '0850121012', 'BUDIYANTO', 'LAUNDRY ATTENDANT', 'salak', '2026-01-29 04:58:42'),
(186, '0850121013', 'CEP HERI', 'OFFICE BOY', 'salak', '2026-01-29 04:58:42'),
(187, '0850121014', 'DADAN SUHENDI', 'BAKER', 'salak', '2026-01-29 04:58:42'),
(188, '0850121015', 'DADANG SUHENDAR', 'COOK HELPER', 'salak', '2026-01-29 04:58:43'),
(189, '0850121016', 'DIMAS SUHENDAR', 'ROOM BOY', 'salak', '2026-01-29 04:58:43'),
(190, '0850121017', 'DINDIN HARYADI', 'OFFICE BOY', 'salak', '2026-01-29 04:58:43'),
(191, '0850121018', 'DODI KUSWANDI', 'CHIEF BAKER', 'salak', '2026-01-29 04:58:43'),
(192, '0850121020', 'EDNIK', 'ROOM BOY', 'salak', '2026-01-29 04:58:43'),
(193, '0850121021', 'EKI HARTANI', 'ADMIN', 'salak', '2026-01-29 04:58:43'),
(194, '0850121022', 'EMPIN ARIFIN', 'OFFICE BOY', 'salak', '2026-01-29 04:58:43'),
(195, '0850121024', 'FAUZAN IRAWAN', 'SENIOR MAINTENANCE TECHNICIAN', 'salak', '2026-01-29 04:58:43'),
(196, '0850121025', 'FEBRI IRAWAN', 'ROOM BOY', 'salak', '2026-01-29 04:58:43'),
(197, '0850721001', 'FEMILA SUARI DANI', 'WAITER', 'salak', '2026-01-29 04:58:43'),
(198, '0850121026', 'FIRJAN FIRDAUS', 'ROOM BOY', 'salak', '2026-01-29 04:58:43'),
(199, '0850121027', 'GOENAWAN SETYADI', 'STOREMAN', 'salak', '2026-01-29 04:58:43'),
(200, '0850121028', 'HENDRI SUHENDRI', 'BAKER', 'salak', '2026-01-29 04:58:43'),
(201, '0850121030', 'IKLIMA ANJAR WULAN', 'HEAD WAITER', 'salak', '2026-01-29 04:58:43'),
(202, '0850621002', 'INDI YANI', 'LAUNDRY ATTENDANT', 'salak', '2026-01-29 04:58:43'),
(203, '0850121031', 'INSAN AFRISA', 'FOREMAN ACCOMMODATION', 'salak', '2026-01-29 04:58:43'),
(204, '0850121032', 'LILI SARLI A.R', 'DRIVER', 'salak', '2026-01-29 04:58:43'),
(205, '0850121034', 'MAMAN SURYAMAN', 'SENIOR COOK', 'salak', '2026-01-29 04:58:43'),
(206, '0850222002', 'MUHAMAD AMARULLAH', 'ROOM BOY', 'salak', '2026-01-29 04:58:43'),
(207, '0850725001', 'MUHAMAD SAEFUDIN', 'ROOM BOY', 'salak', '2026-01-29 04:58:43'),
(208, '0850121033', 'MUHAMMAD RIYAN NAJMUDIN', 'ROOM BOY', 'salak', '2026-01-29 04:58:43'),
(209, '0850121035', 'MULYADI', 'SENIOR COOK', 'salak', '2026-01-29 04:58:43'),
(210, '0850121036', 'MULYANA', 'DRIVER', 'salak', '2026-01-29 04:58:43'),
(211, '0850121037', 'OMAN SUJANA', 'DRIVER', 'salak', '2026-01-29 04:58:43'),
(212, '0850121038', 'PINDIANSYAH', 'OFFICE BOY', 'salak', '2026-01-29 04:58:43'),
(213, '0850121039', 'RAHAYU EKA BUDIYANI', 'HSE OFFICER', 'salak', '2026-01-29 04:58:43'),
(214, '0850121040', 'RAHMAT', 'STEWARD', 'salak', '2026-01-29 04:58:43'),
(215, '0850121041', 'RAMLAN', 'WAITER', 'salak', '2026-01-29 04:58:43'),
(216, '0850323001', 'RISTYA AYU FADHILA', 'NUTRITIONIST', 'salak', '2026-01-29 04:58:43'),
(217, '0850121042', 'RIZAL FAZRI', 'SENIOR COOK', 'salak', '2026-01-29 04:58:43'),
(218, '0850625001', 'RIZAL LAMRI', 'ROOM BOY', 'salak', '2026-01-29 04:58:43'),
(219, '0850121043', 'ROHMAN', 'COOK HELPER', 'salak', '2026-01-29 04:58:43'),
(220, '0850121044', 'RULLY ANDRIAN', 'CHIEF COOK', 'salak', '2026-01-29 04:58:43'),
(221, '0850121045', 'RUSANDI', 'ROOM BOY', 'salak', '2026-01-29 04:58:43'),
(222, '0850121046', 'SAIFUL HADI', 'STOREMAN', 'salak', '2026-01-29 04:58:43'),
(223, '0850121047', 'SANDRI', 'COOK PASTRY', 'salak', '2026-01-29 04:58:43'),
(224, '0850121048', 'SANTI NURYANTI', 'RECEPTIONIST', 'salak', '2026-01-29 04:58:43'),
(225, '0850121049', 'SUHERLAN', 'FOREMAN ACCOMMODATION', 'salak', '2026-01-29 04:58:43'),
(226, '0850121050', 'SURYAMAN', 'COOK', 'salak', '2026-01-29 04:58:43'),
(227, '0850121052', 'UKO KOMARUDIN', 'LAUNDRY ATTENDANT', 'salak', '2026-01-29 04:58:43'),
(228, '0850121053', 'WAHYUDIN', 'CATERING SUPERVISOR', 'salak', '2026-01-29 04:58:43'),
(229, '0850121055', 'YANA HERMAWAN', 'ROOM BOY', 'salak', '2026-01-29 04:58:43'),
(230, '0850121056', 'YUDHISTIRA ADI NUGRAHA', 'COOK', 'salak', '2026-01-29 04:58:43'),
(231, '0850121057', 'YULI SUSANTO', 'COOK HELPER', 'salak', '2026-01-29 04:58:43'),
(232, '0850524001', 'YUSUP MAULANA', 'WAITER', 'salak', '2026-01-29 04:58:43'),
(233, '0851022001', 'ALI GOJALI', 'HOUSEKEEPING', 'wayang_windu', '2026-01-29 05:06:17'),
(234, '0850921003', 'ALVY ZELVYA HERYADI', 'NUTRITIONIST', 'wayang_windu', '2026-01-29 05:06:17'),
(235, '0850121099', 'ANWAR MUNAWAR', 'CHIEF COOK', 'wayang_windu', '2026-01-29 05:06:17'),
(236, '0850121059', 'ASEP DEDI SUPRIADI', 'COOK', 'wayang_windu', '2026-01-29 05:06:17'),
(237, '0850121060', 'ASEP SUHERMAN', 'HOUSEKEEPING', 'wayang_windu', '2026-01-29 05:06:17'),
(238, '0850121061', 'ASEP SURYANA', 'SENIOR STOREKEEPER', 'wayang_windu', '2026-01-29 05:06:17'),
(239, '0850121062', 'BUDIMAN', 'STEWARD', 'wayang_windu', '2026-01-29 05:06:17'),
(240, '0850121063', 'CECEP KOSASIH', 'LAUNDRY ATTENDANT', 'wayang_windu', '2026-01-29 05:06:17'),
(241, '0850121064', 'DEDI SUTRISNA HAPIDIN', 'MAINTENANCE', 'wayang_windu', '2026-01-29 05:06:17'),
(242, '0850121065', 'DEPI KUSMAWAN', 'DRIVER', 'wayang_windu', '2026-01-29 05:06:17'),
(243, '0850121066', 'DIAN SUHERLAN', 'BAKER', 'wayang_windu', '2026-01-29 05:06:17'),
(244, '0850121067', 'EDEN SARIPUDIN', 'CATERING SUPERVISOR', 'wayang_windu', '2026-01-29 05:06:17'),
(245, '0850121068', 'ENJANG WARSA', 'LAUNDRY ATTENDANT', 'wayang_windu', '2026-01-29 05:06:17'),
(246, '0850121078', 'FERI ARYANTO', 'CAMPBOSS', 'wayang_windu', '2026-01-29 05:06:17'),
(247, '0850921004', 'GRAHANA JATI SUNDA', 'MAINTENANCE', 'wayang_windu', '2026-01-29 05:06:17'),
(248, '0850121069', 'JAJANG UMBARAN', 'WAITER', 'wayang_windu', '2026-01-29 05:06:17'),
(249, '0851123001', 'JULLYANTI PUTRI LESTARI', 'GENERAL SERVICE', 'wayang_windu', '2026-01-29 05:06:18'),
(250, '0850121070', 'NANDANG', 'COOK', 'wayang_windu', '2026-01-29 05:06:18'),
(251, '0850223001', 'RIAN IKBAL CANDIKA', 'GENERAL SERVICE', 'wayang_windu', '2026-01-29 05:06:18'),
(252, '0850121071', 'RIKI SUHENDAR', 'STEWARD', 'wayang_windu', '2026-01-29 05:06:18'),
(253, '0850121072', 'RUKMANA', 'BAKER', 'wayang_windu', '2026-01-29 05:06:18'),
(254, '0850121073', 'SAHMAN ABDUL ROHMAN', 'WAITER', 'wayang_windu', '2026-01-29 05:06:18'),
(255, '0850121074', 'SANTANA', 'HOUSEKEEPING SUPERVISOR', 'wayang_windu', '2026-01-29 05:06:18'),
(256, '0851124001', 'SHARA NUR ANNISA FAUZI ARDI', 'HSE OFFICER', 'wayang_windu', '2026-01-29 05:06:18'),
(257, '0850121075', 'SUPARMAN', 'COOK', 'wayang_windu', '2026-01-29 05:06:18'),
(258, '0850121077', 'USIN RUSTENDI', 'COOK I', 'wayang_windu', '2026-01-29 05:06:18'),
(259, '0850121079', 'WAWAN GUNAWAN', 'STOREMAN', 'wayang_windu', '2026-01-29 05:06:18'),
(260, '0850121082', 'YOGA SALIKIN PERMANA', 'STEWARD', 'wayang_windu', '2026-01-29 05:06:18'),
(261, '0850421004', 'YUDA PUTRA PRATAMA', 'WAITER', 'wayang_windu', '2026-01-29 05:06:18'),
(263, '0850121083', 'CECEP NUR SAEPUDIN', 'DRIVER', 'darajat', '2026-01-29 05:11:49'),
(264, '0850121084', 'CECEP SUBHAN MUTAKIN', 'NUTRITIONIST', 'darajat', '2026-01-29 05:11:49'),
(265, '0850824001', 'DHILA GATRIA FADHILA', 'CAMPBOSS', 'darajat', '2026-01-29 05:11:49'),
(266, '0850121087', 'HELMI NURJAMAN', 'SENIOR COOK', 'darajat', '2026-01-29 05:11:49'),
(267, '0850121088', 'JUJUN MULYANA', 'COOK HELPER', 'darajat', '2026-01-29 05:11:49'),
(268, '0850121089', 'KURNIADI', 'DRIVER', 'darajat', '2026-01-29 05:11:49'),
(269, '0850121090', 'MELAN MAOLANA', 'ROOM BOY', 'darajat', '2026-01-29 05:11:49'),
(270, '0850121091', 'NURMAN SAEPUL BAHRI', 'STOREMAN', 'darajat', '2026-01-29 05:11:49'),
(272, '0850121093', 'ROSADI', 'ROOM BOY LEADER', 'darajat', '2026-01-29 05:11:49'),
(273, '0850121094', 'TAOPIK HIDAYAT', 'COOK', 'darajat', '2026-01-29 05:11:49'),
(274, '0850121096', 'TITO', 'STEWARD', 'darajat', '2026-01-29 05:11:49'),
(275, '0850121097', 'UJANG MULYANA', 'ROOM BOY', 'darajat', '2026-01-29 05:11:49'),
(276, '0850123002', 'WAWAN SUJANA', 'BAKER', 'darajat', '2026-01-29 05:11:49'),
(277, '0850122001', 'RIKI', 'SAFETY OFFICER', 'darajat', '2026-01-29 05:43:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_records`
--

CREATE TABLE `employee_records` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `pelanggaran` text DEFAULT NULL,
  `sanksi` varchar(100) DEFAULT NULL,
  `tindak_lanjut` text DEFAULT NULL,
  `status` enum('menunggu','disetujui','ditolak') DEFAULT 'menunggu',
  `catatan_super_admin` text DEFAULT NULL,
  `dilaporkan_oleh` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `employee_records`
--

INSERT INTO `employee_records` (`id`, `employee_id`, `tanggal`, `deskripsi`, `pelanggaran`, `sanksi`, `tindak_lanjut`, `status`, `catatan_super_admin`, `dilaporkan_oleh`, `created_at`) VALUES
(10, 263, '2026-01-29', 'BOLOS', 'PULANG SEBELUM JAM KERJA', 'SP I', 'TEGURAN LISAN', 'disetujui', 'PANATAU KALAU SUDAH 3 KALI KASIH SP 1', 3, '2026-01-29 05:36:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `units`
--

CREATE TABLE `units` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `units`
--

INSERT INTO `units` (`id`, `name`) VALUES
(2, 'darajat'),
(1, 'salak'),
(3, 'wayang_windu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','super_admin') NOT NULL DEFAULT 'admin',
  `unit` enum('salak','darajat','wayang_windu') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `unit`, `created_at`) VALUES
(1, 'admin_salak', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'salak', '2026-01-16 07:09:41'),
(2, 'super_admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'super_admin', NULL, '2026-01-16 07:09:41'),
(3, 'admin_darajat', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'darajat', '2026-01-18 12:30:57'),
(4, 'admin_wayangwindu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'wayang_windu', '2026-01-18 12:30:57');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `employee_records`
--
ALTER TABLE `employee_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `dilaporkan_oleh` (`dilaporkan_oleh`);

--
-- Indeks untuk tabel `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- AUTO_INCREMENT untuk tabel `employee_records`
--
ALTER TABLE `employee_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `employee_records`
--
ALTER TABLE `employee_records`
  ADD CONSTRAINT `employee_records_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_records_ibfk_2` FOREIGN KEY (`dilaporkan_oleh`) REFERENCES `users` (`id`);
--
-- Database: `employee_record_darajat`
--
CREATE DATABASE IF NOT EXISTS `employee_record_darajat` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `employee_record_darajat`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `nik` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `posisi` varchar(100) NOT NULL,
  `unit` varchar(50) NOT NULL DEFAULT 'darajat',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_records`
--

CREATE TABLE `employee_records` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `pelanggaran` text DEFAULT NULL,
  `sanksi` varchar(100) DEFAULT NULL,
  `tindak_lanjut` text DEFAULT NULL,
  `status` enum('menunggu','disetujui','ditolak') DEFAULT 'menunggu',
  `catatan_super_admin` text DEFAULT NULL,
  `dilaporkan_oleh` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `units`
--

CREATE TABLE `units` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `units`
--

INSERT INTO `units` (`id`, `name`) VALUES
(1, 'darajat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','super_admin') NOT NULL DEFAULT 'admin',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created_at`) VALUES
(1, 'admin_darajat', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', '2026-01-16 07:06:36');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);
--
-- Database: `fml_logistics`
--
CREATE DATABASE IF NOT EXISTS `fml_logistics` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fml_logistics`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(10) NOT NULL,
  `description` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `companies`
--

INSERT INTO `companies` (`id`, `name`, `code`, `description`, `address`, `phone`, `email`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'PT. INDOCATER', 'LP001', 'Catering dan accomodation', 'Kompleks Delta Kedoya Gedung Indocater Lt. 2 Jl. Pilar Mas Raya, Jl. Kav. B. R I No.Kel A-D, RT.7/RW.3, Kedoya Sel., Kec. Kb. Jeruk, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11520', '', '', 1, '2025-09-22 04:33:28', '2025-11-14 06:09:14'),
(2, 'PT. SRIKANDI', 'LP002', 'Layanan cargo dan ekspedisi', '', '', '', 1, '2025-09-22 04:33:28', '2025-11-14 02:55:56'),
(3, 'PT. AZRIL', 'LP003', 'Manajemen rantai pasokan', '', '', '', 1, '2025-09-22 04:33:28', '2025-11-14 02:55:14'),
(4, 'PT. SBU', 'LP004', 'Distribusi dan pergudangan', '', '', '', 1, '2025-09-22 04:33:28', '2025-11-14 02:55:36'),
(5, 'PT. SPC', 'LP005', 'FASE CONTROLL', '', '', '', 1, '2025-11-14 01:58:42', '2025-11-14 02:55:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `original_filename` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `file_size` int(11) NOT NULL,
  `file_type` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT 'general',
  `company_id` int(11) DEFAULT NULL,
  `uploaded_by` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `documents`
--

INSERT INTO `documents` (`id`, `title`, `description`, `filename`, `original_filename`, `file_path`, `file_size`, `file_type`, `category`, `company_id`, `uploaded_by`, `is_active`, `created_at`, `updated_at`) VALUES
(6, 'gggg', 'hhbkjbk', '1759589070_2024_KEBIJAKANSISTEMMANAJEMENKEAMANANINFORMASI.pdf', '2024_KEBIJAKAN SISTEM MANAJEMEN KEAMANAN INFORMASI.pdf', 'user/10/1759589070_2024_KEBIJAKANSISTEMMANAJEMENKEAMANANINFORMASI.pdf', 1289913, 'application/pdf', 'PTI', 1, 10, 0, '2025-10-04 14:44:30', '2025-11-14 02:01:26'),
(7, 'hfvvhv', 'jubggv', '1759598504_680723d526f62-2024_KEBIJAKANHALAL.pdf', '680723d526f62-2024_KEBIJAKAN HALAL.pdf', 'user/10/1759598504_680723d526f62-2024_KEBIJAKANHALAL.pdf', 217402, 'application/pdf', 'PTI', 1, 10, 0, '2025-10-04 17:21:44', '2025-11-14 02:01:30'),
(8, 'dxcfgvbh', 'hgi', '1759599519_6807244985e82-2024_PENGERTIANHALALHARAMPRAKTIKSJH.pdf', '6807244985e82-2024_PENGERTIAN HALAL HARAM & PRAKTIK SJH.pdf', 'user/10/1759599519_6807244985e82-2024_PENGERTIANHALALHARAMPRAKTIKSJH.pdf', 447132, 'application/pdf', 'VEHICLE INSPECTION', 1, 10, 0, '2025-10-04 17:38:39', '2025-11-14 02:01:24'),
(9, 'bhbb', 'ggi', '1759603292_2024_KEBIJAKANSISTEMMANAJEMENKEAMANANINFORMASI.pdf', '2024_KEBIJAKAN SISTEM MANAJEMEN KEAMANAN INFORMASI.pdf', 'audit/iso14001/1759603292_2024_KEBIJAKANSISTEMMANAJEMENKEAMANANINFORMASI.pdf', 1289913, 'application/pdf', 'audit_iso14001', 1, 10, 0, '2025-10-04 18:41:32', '2025-11-14 02:01:20'),
(10, 'hvhjvjH', 'FJFJFJF', '1759604419_680723d526f62-2024_KEBIJAKANHALAL.pdf', '680723d526f62-2024_KEBIJAKAN HALAL.pdf', 'data-fm/kpi/1759604419_680723d526f62-2024_KEBIJAKANHALAL.pdf', 217402, 'application/pdf', 'data_fm_kpi', 1, 10, 0, '2025-10-04 19:00:19', '2025-10-07 16:56:00'),
(11, 'hh', 'ubuibi', '1759655424_2024_KEBIJAKANSISTEMMANAJEMENKEAMANANINFORMASI.pdf', '2024_KEBIJAKAN SISTEM MANAJEMEN KEAMANAN INFORMASI.pdf', 'user/10/1759655424_2024_KEBIJAKANSISTEMMANAJEMENKEAMANANINFORMASI.pdf', 1289913, 'application/pdf', 'PTI', NULL, 10, 0, '2025-10-05 09:10:24', '2025-10-07 16:36:46'),
(12, 'ggigi', 'iivik', '1759659766_2024_KEBIJAKANSISTEMMANAJEMENKEAMANANINFORMASI.pdf', '2024_KEBIJAKAN SISTEM MANAJEMEN KEAMANAN INFORMASI.pdf', 'data-fm/kpi/1759659766_2024_KEBIJAKANSISTEMMANAJEMENKEAMANANINFORMASI.pdf', 1289913, 'application/pdf', 'data_fm_kpi', NULL, 1, 0, '2025-10-05 10:22:46', '2025-11-14 02:01:28'),
(13, 'rr', 'tu', '1759659962_680723d526f62-2024_KEBIJAKANHALAL.pdf', '680723d526f62-2024_KEBIJAKAN HALAL.pdf', 'data-fm/kpi/1759659962_680723d526f62-2024_KEBIJAKANHALAL.pdf', 217402, 'application/pdf', 'data_fm_kpi', NULL, 1, 0, '2025-10-05 10:26:02', '2025-11-14 02:01:34'),
(14, 'ugui', 'bhb', '1759660256_6807244985e82-2024_PENGERTIANHALALHARAMPRAKTIKSJH.pdf', '6807244985e82-2024_PENGERTIAN HALAL HARAM & PRAKTIK SJH.pdf', 'user/10/1759660256_6807244985e82-2024_PENGERTIANHALALHARAMPRAKTIKSJH.pdf', 447132, 'application/pdf', 'Data Karyawan', 1, 10, 0, '2025-10-05 10:30:56', '2025-11-14 02:01:37'),
(15, 'hvv', 'UHUHU', '1759660532_680724294288c-2024_KEBIJAKANSAFETYREWARD.pdf', '680724294288c-2024_KEBIJAKAN SAFETY REWARD.pdf', 'user/10/1759660532_680724294288c-2024_KEBIJAKANSAFETYREWARD.pdf', 509822, 'application/pdf', 'VEHICLE INSPECTION', 1, 10, 0, '2025-10-05 10:35:32', '2025-11-14 02:01:32'),
(16, 'abcs', 'abcd', '1759850370_1745122384-volunters.jpg', '1745122384-volunters.jpg', 'data-fm/foto-activity/1759850370_1745122384-volunters.jpg', 9003, 'image/jpeg', 'data_fm_foto-activity', NULL, 1, 0, '2025-10-07 15:19:30', '2025-11-14 02:01:17'),
(17, 'test', 'test', '1759850880_1745122731-3.jpg', '1745122731-3.jpg', 'data-fm/foto-activity/1759850880_1745122731-3.jpg', 17825, 'image/jpeg', 'data_fm_foto-activity', NULL, 1, 0, '2025-10-07 15:28:00', '2025-11-14 02:01:36'),
(18, 'buibuib', 'iibi ik', '1759852716_2024_KEBIJAKANCSR.pdf', '2024_KEBIJAKAN CSR.pdf', 'data-fm/scorecard/1759852716_2024_KEBIJAKANCSR.pdf', 676107, 'application/pdf', 'data_fm_scorecard', NULL, 1, 0, '2025-10-07 15:58:36', '2025-11-14 02:01:22'),
(19, 'DARAJAT', 'DARAJAT VIEW', '1763085733_Darajatgambar.jpg', 'Darajatgambar.jpg', 'data-fm/foto-activity/1763085733_Darajatgambar.jpg', 736822, 'image/jpeg', 'data_fm_foto-activity', NULL, 1, 1, '2025-11-14 02:02:13', '2025-11-14 02:02:13'),
(20, 'PTI', 'PTI DES', '1763085815_Template-proposal-tugas-akhir-AMIKCBI-2024ver2.pdf', 'Template-proposal-tugas-akhir-AMIKCBI- 2024 ver 2.pdf', 'user/12/1763085815_Template-proposal-tugas-akhir-AMIKCBI-2024ver2.pdf', 215389, 'application/pdf', 'PTI', 4, 12, 1, '2025-11-14 02:03:35', '2025-11-14 02:03:35'),
(21, 'DATA KARYAWAN SALAK', '2025', '1763090485_DATAKARYAWANPT.INDOCATERSALAKTAHUN2025.xlsx', 'DATA KARYAWAN PT. INDOCATER SALAK TAHUN 2025.xlsx', 'user/10/1763090485_DATAKARYAWANPT.INDOCATERSALAKTAHUN2025.xlsx', 192600, 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'Data Karyawan', 1, 10, 1, '2025-11-14 03:21:25', '2025-11-14 03:21:25'),
(22, 'ISO 14001', 'DES', '1763090657_Invoice-5030988.pdf', 'Invoice-5030988.pdf', 'audit/iso14001/1763090657_Invoice-5030988.pdf', 14545, 'application/pdf', 'audit_iso14001', 2, 15, 1, '2025-11-14 03:24:17', '2025-11-14 03:24:17'),
(23, '45100', 'SEP', '1763090960_1762155178_Invoice-5030988.pdf', '1762155178_Invoice-5030988.pdf', 'audit/iso45001/1763090960_1762155178_Invoice-5030988.pdf', 14545, 'application/pdf', 'audit_iso45001', 5, 14, 1, '2025-11-14 03:29:20', '2025-11-14 03:29:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `type` varchar(50) DEFAULT 'system',
  `recipient_id` int(11) DEFAULT NULL,
  `recipient_role` enum('admin','user','all') DEFAULT 'all',
  `sender_id` int(11) DEFAULT NULL,
  `related_document_id` int(11) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `message`, `type`, `recipient_id`, `recipient_role`, `sender_id`, `related_document_id`, `is_read`, `is_active`, `created_at`, `updated_at`) VALUES
(6, 'Dokumen Baru Diunggah', 'Pengguna Admin Indocater telah mengunggah dokumen baru dengan judul \'hfvvhv\'.', 'document_upload', NULL, 'admin', 10, NULL, 1, 0, '2025-10-04 17:21:44', '2025-10-04 17:26:21'),
(7, 'Dokumen Baru Diunggah', 'Pengguna Admin Indocater telah mengunggah dokumen baru dengan judul \'dxcfgvbh\'.', 'document_upload', NULL, 'admin', 10, NULL, 0, 1, '2025-10-04 17:38:39', '2025-10-04 17:38:39'),
(8, 'Dokumen Audit Baru Diunggah', 'Pengguna Admin Indocater telah mengunggah dokumen audit baru dengan judul \'bhbb\' untuk iso14001.', 'document_upload', NULL, 'admin', 10, NULL, 0, 1, '2025-10-04 18:41:32', '2025-10-04 18:41:32'),
(9, 'Dokumen Data FM Baru Diunggah', 'Pengguna Admin Indocater telah mengunggah dokumen Data FM baru dengan judul \'hvhjvjH\' untuk kpi.', 'document_upload', NULL, 'admin', 10, NULL, 0, 1, '2025-10-04 19:00:19', '2025-10-04 19:00:19'),
(10, 'Dokumen Baru Diunggah', 'Pengguna Admin Indocater telah mengunggah dokumen baru dengan judul \'hh\'.', 'document_upload', NULL, 'admin', 10, NULL, 0, 1, '2025-10-05 09:10:24', '2025-10-05 09:10:24'),
(13, 'Dokumen Baru Diunggah', 'Pengguna Admin Indocater telah mengunggah dokumen baru dengan judul \'ugui\'.', 'document_upload', NULL, 'admin', 10, NULL, 0, 1, '2025-10-05 10:30:56', '2025-10-05 10:30:56'),
(14, 'Dokumen Baru Diunggah', 'Pengguna Admin Indocater telah mengunggah dokumen baru dengan judul \'hvv\'.', 'document_upload', NULL, 'all', 10, NULL, 1, 0, '2025-10-05 10:35:32', '2025-10-07 14:53:22'),
(23, 'Dokumen Baru Diunggah', 'Pengguna GPA telah mengunggah dokumen baru dengan judul \'PTI\'.', 'document_upload', 1, 'all', 12, NULL, 1, 1, '2025-11-14 02:03:35', '2025-11-14 05:55:24'),
(24, 'Dokumen Baru Diunggah', 'Pengguna Admin Indocater telah mengunggah dokumen baru dengan judul \'DATA KARYAWAN SALAK\'.', 'document_upload', 1, 'all', 10, NULL, 1, 1, '2025-11-14 03:21:25', '2025-11-14 05:55:29'),
(25, 'Dokumen Audit Baru Diunggah', 'Pengguna SRIKANDI telah mengunggah dokumen audit baru dengan judul \'ISO 14001\' untuk iso14001.', 'document_upload', 1, 'all', 15, NULL, 1, 1, '2025-11-14 03:24:17', '2025-11-14 05:55:27'),
(26, 'Dokumen Audit Baru Diunggah', 'Pengguna SPC telah mengunggah dokumen audit baru dengan judul \'45100\' untuk iso45001.', 'document_upload', 1, 'all', 14, NULL, 1, 1, '2025-11-14 03:29:20', '2025-11-14 05:55:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `report_type` enum('daily','weekly','monthly','custom') DEFAULT 'custom',
  `company_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `company_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `full_name`, `phone`, `profile_photo`, `role`, `company_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$.l8TN2uYw3wSOOm1hECbyuX7EGFRDIPpYUrYjEgbQnM0wQQWvp8ga', 'admin@fml-logistics.com', 'Administrator', NULL, NULL, 'admin', NULL, 1, '2025-09-22 04:33:28', '2025-09-22 04:35:56'),
(10, 'INDOCATER', '$2y$10$ifeISk9GZh6PcqOZ17FJ5OPxBe.LhZCMAt4pWHzdOxJYmqvFxas6q', 'k3indocater@gmail.com', 'Admin Indocater', '085436465666', 'profile_photos/1763099969_INDOCATER.png', 'user', 1, 1, '2025-09-27 17:41:44', '2025-11-14 05:59:29'),
(11, 'AZRIL', '$2y$10$kmH6YZX3IKPRfpdsQ/LsO.PM6PahoZVBOeL2jW2YJVEWnG8bm724O', 'AzrilDerajat@gmail.com', 'Admin AZRIL', '0855646246', NULL, 'user', 3, 1, '2025-10-05 10:49:35', '2025-11-14 04:38:24'),
(12, 'SBU', '$2y$10$o8AeYk5M5uVAfhbf61x0NOmlBrLjKpaJYqstR6kbjgv7o8YeVQoh2', 'Sbu@gmail.com', 'Admin SBU', '08186138686', NULL, 'user', 4, 1, '2025-10-05 10:56:08', '2025-11-14 04:37:41'),
(14, 'SPC', '$2y$10$KGKgItr0W8W/bDD.CLF.a.hmhl.abqwM0lwwV/9Rq4lN27tvBXnaW', 'SpcDerajat@gmail.com', 'Admin SPC', '', NULL, 'user', 5, 1, '2025-11-14 01:59:40', '2025-11-14 04:37:55'),
(15, 'SRIKANDI', '$2y$10$mfGJgvzU3LCQdoom5pendOlm5XMFJCC5PxDi2IRtRmmvxvC1zq7x2', 'SrikandiDerajat@gmail.com', 'Admin SRIKANDI', '', NULL, 'user', 2, 1, '2025-11-14 02:00:43', '2025-11-14 04:38:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_permissions`
--

CREATE TABLE `user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `can_upload` tinyint(1) DEFAULT 1,
  `can_download` tinyint(1) DEFAULT 1,
  `can_delete` tinyint(1) DEFAULT 0,
  `can_view_all` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_permissions`
--

INSERT INTO `user_permissions` (`id`, `user_id`, `company_id`, `can_upload`, `can_download`, `can_delete`, `can_view_all`, `created_at`, `updated_at`) VALUES
(9, 10, 1, 1, 1, 0, 0, '2025-09-27 17:41:58', '2025-09-27 17:41:58'),
(38, 11, 3, 1, 1, 0, 0, '2025-10-05 10:50:09', '2025-10-05 10:50:09'),
(40, 12, 4, 1, 1, 0, 0, '2025-11-14 02:02:55', '2025-11-14 02:02:55'),
(45, 15, 2, 1, 1, 0, 0, '2025-11-14 03:22:44', '2025-11-14 03:22:44'),
(46, 14, 5, 1, 1, 0, 0, '2025-11-14 03:24:44', '2025-11-14 03:24:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sessions`
--

CREATE TABLE `user_sessions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_token` varchar(255) NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expires_at` timestamp NOT NULL DEFAULT (current_timestamp() + interval 24 hour)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indeks untuk tabel `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_documents_company` (`company_id`),
  ADD KEY `idx_documents_uploader` (`uploaded_by`);

--
-- Indeks untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_notifications_recipient` (`recipient_id`),
  ADD KEY `idx_notifications_sender` (`sender_id`),
  ADD KEY `idx_notifications_type` (`type`),
  ADD KEY `idx_notifications_created` (`created_at`),
  ADD KEY `notifications_ibfk_3` (`related_document_id`);

--
-- Indeks untuk tabel `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `idx_reports_company` (`company_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_users_username` (`username`),
  ADD KEY `idx_users_email` (`email`),
  ADD KEY `idx_users_company` (`company_id`);

--
-- Indeks untuk tabel `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_company` (`user_id`,`company_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indeks untuk tabel `user_sessions`
--
ALTER TABLE `user_sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `session_token` (`session_token`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `idx_sessions_token` (`session_token`),
  ADD KEY `idx_sessions_expires` (`expires_at`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `user_permissions`
--
ALTER TABLE `user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `user_sessions`
--
ALTER TABLE `user_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `documents_ibfk_2` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`recipient_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `notifications_ibfk_3` FOREIGN KEY (`related_document_id`) REFERENCES `documents` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reports_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD CONSTRAINT `user_permissions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_permissions_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_sessions`
--
ALTER TABLE `user_sessions`
  ADD CONSTRAINT `user_sessions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `k3_jsmu`
--
CREATE DATABASE IF NOT EXISTS `k3_jsmu` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `k3_jsmu`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensi`
--

CREATE TABLE `absensi` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `checkin` time DEFAULT NULL,
  `checkout` time DEFAULT NULL,
  `checkin_lat` decimal(10,8) DEFAULT NULL,
  `checkin_lng` decimal(11,8) DEFAULT NULL,
  `checkout_lat` decimal(10,8) DEFAULT NULL,
  `checkout_lng` decimal(11,8) DEFAULT NULL,
  `jam_kerja` time DEFAULT NULL,
  `masuk` tinyint(1) DEFAULT NULL,
  `outside_range` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kampanye`
--

CREATE TABLE `kampanye` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kampanye`
--

INSERT INTO `kampanye` (`id`, `judul`, `gambar`) VALUES
(1, 'sep', '1763642172-Darajatstar.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kebijakan`
--

CREATE TABLE `kebijakan` (
  `id` int(11) NOT NULL,
  `nama_kebijakan` varchar(100) NOT NULL,
  `file_kebijakan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifikasi`
--

CREATE TABLE `notifikasi` (
  `id` int(11) NOT NULL,
  `laporan_id` int(11) NOT NULL,
  `pesan` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `foto_profil` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `no_telp`, `foto_profil`, `password`, `role`) VALUES
(8, 'Admin', 'admin', '0', '', '$2y$10$0I.5DJNI4rYOPSyrxqSmVum2VVKSpU8p5dcPnJebScES6uVrcv6gq', 'admin'),
(17, 'Usep saepudin', 'Usepsaepudin26', '0852123456', '1763641766_IMG_4496.JPG', '$2y$10$PJnO6evm1GKDhqdoWceTAetMNY01V761inIBZGX4XQicyECTUssze', 'user'),
(18, 'Darajat salak', 'Darajat', '0852123456', '1763643698_Darajatstar.jpg', '$2y$10$WN7TZZteU7B4SeWMxL3dj.4XEsp4lPZP6ROLFUbH0nq2JwcXBIYCy', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absensi`
--
ALTER TABLE `absensi`
  ADD KEY `absensi_ibfk_1` (`id_user`);

--
-- Indeks untuk tabel `kampanye`
--
ALTER TABLE `kampanye`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kebijakan`
--
ALTER TABLE `kebijakan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laporan_id` (`laporan_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kampanye`
--
ALTER TABLE `kampanye`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kebijakan`
--
ALTER TABLE `kebijakan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `absensi`
--
ALTER TABLE `absensi`
  ADD CONSTRAINT `absensi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `personal_cv_db`
--
CREATE DATABASE IF NOT EXISTS `personal_cv_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `personal_cv_db`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `darajat_employees`
--

CREATE TABLE `darajat_employees` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `posisi` varchar(255) DEFAULT NULL,
  `unit_kerja` varchar(255) DEFAULT 'DARAJAT',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `darajat_employees`
--

INSERT INTO `darajat_employees` (`id`, `nama`, `posisi`, `unit_kerja`, `created_at`) VALUES
(1, 'Ahmad Darajat', 'Manager', 'DARAJAT', '2026-01-11 12:33:42'),
(2, 'Budi Setia', 'Supervisor', 'DARAJAT', '2026-01-11 12:33:42'),
(3, 'Citra Lestari', 'Staff', 'DARAJAT', '2026-01-11 12:33:42'),
(4, 'Dedi Rahman', 'Teknisi', 'DARAJAT', '2026-01-11 12:33:42'),
(5, 'Eka Sari', 'Administrasi', 'DARAJAT', '2026-01-11 12:33:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `original_name` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `posisi` varchar(255) DEFAULT NULL,
  `unit_kerja` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `employees`
--

INSERT INTO `employees` (`id`, `nama`, `keterangan`, `created_at`, `posisi`, `unit_kerja`) VALUES
(7, 'ADE IRAWAN', 'COOK', '2026-01-11 12:02:46', NULL, NULL),
(8, 'ADE MUSLIH', 'ROOM BOY', '2026-01-11 12:02:46', NULL, NULL),
(9, 'RISTYA AYU FADHILA', 'NUTRITIONIST', '2026-01-11 12:02:46', NULL, NULL),
(10, 'ADRIAN PURNAMA MULYANA', 'EXECUTIVE CHEF', '2026-01-11 12:02:46', NULL, NULL),
(11, 'AGUS SETIAWAN', 'MAINTENANCE', '2026-01-11 12:02:46', NULL, NULL),
(12, 'AHMAD SOPIAN SAURI', 'SUPERVISOR ACCOMODATION', '2026-01-11 12:02:46', NULL, NULL),
(13, 'ANGGI RINALDI', 'WAITER', '2026-01-11 12:02:46', NULL, NULL),
(14, 'ASEP MAULANA', 'JANITOR', '2026-01-11 12:02:46', NULL, NULL),
(15, 'ASRUL HAYAT', 'LAUNDRY MAN', '2026-01-11 12:02:46', NULL, NULL),
(16, 'AYU ANANDA', 'WAITER', '2026-01-11 12:02:46', NULL, NULL),
(17, 'AZIS SOLEHUDIN', 'CAMPBOSS', '2026-01-11 12:02:46', NULL, NULL),
(18, 'BUDIYANTO', 'LAUNDRY MAN', '2026-01-11 12:02:46', NULL, NULL),
(19, 'CEP HERI', 'LAUNDRY MAN', '2026-01-11 12:02:46', NULL, NULL),
(20, 'DADAN SUHENDI', 'PASTRY BAKER', '2026-01-11 12:02:46', NULL, NULL),
(21, 'DADANG SUHENDAR', 'COOK HELPER', '2026-01-11 12:02:46', NULL, NULL),
(22, 'DIMAS SUHENDAR', 'ROOM BOY', '2026-01-11 12:02:47', NULL, NULL),
(23, 'DINDIN HARYADI', 'OFFICE BOY', '2026-01-11 12:02:47', NULL, NULL),
(24, 'DODI KUSWANDI', 'PASTRY BAKER', '2026-01-11 12:02:47', NULL, NULL),
(25, 'EDNIK', 'ROOM BOY', '2026-01-11 12:02:47', NULL, NULL),
(26, 'EKI HARTANI', 'ADMIN', '2026-01-11 12:02:47', NULL, NULL),
(27, 'EMPIN ARIFIN', 'HOUSEKEEPER', '2026-01-11 12:02:47', NULL, NULL),
(28, 'FAUZAN IRAWAN', 'TECHNICIAN', '2026-01-11 12:02:47', NULL, NULL),
(29, 'FEBRI IRAWAN', 'ROOM BOY', '2026-01-11 12:02:47', NULL, NULL),
(30, 'FEMILA SUARI DANI', 'WAITRESS', '2026-01-11 12:02:47', NULL, NULL),
(31, 'FIRJAN FIRDAUS', 'ROOM BOY', '2026-01-11 12:02:47', NULL, NULL),
(32, 'GOENAWAN SETYADI', 'STOREMAN', '2026-01-11 12:02:47', NULL, NULL),
(33, 'HENDRI SUHENDRI', 'PASTRY BAKER', '2026-01-11 12:02:47', NULL, NULL),
(34, 'HERU AGUS RIYANTO', 'SENIOR COOK', '2026-01-11 12:02:47', NULL, NULL),
(35, 'IKLIMA ANJAR WULAN', 'HEAD WAITER', '2026-01-11 12:02:47', NULL, NULL),
(36, 'INDI YANI', 'LAUNDRY MAN', '2026-01-11 12:02:47', NULL, NULL),
(37, 'INSAN APRISA HERBIANA', 'FOREMAN ACCOMODATION', '2026-01-11 12:02:47', NULL, NULL),
(38, 'LILI SARLI AR', 'DRIVER', '2026-01-11 12:02:47', NULL, NULL),
(39, 'MAMAN SURYAMAN', 'SENIOR COOK', '2026-01-11 12:02:47', NULL, NULL),
(40, 'MUHAMAD AMARULLAH', 'ROOM BOY', '2026-01-11 12:02:47', NULL, NULL),
(41, 'MUHAMMAD RIYAN NAJMUDIN', 'LAUNDRY MAN', '2026-01-11 12:02:47', NULL, NULL),
(42, 'MULYADI', 'COOK', '2026-01-11 12:02:47', NULL, NULL),
(43, 'MULYANA', 'DRIVER', '2026-01-11 12:02:47', NULL, NULL),
(44, 'OMAN SUJANA', 'DRIVER', '2026-01-11 12:02:47', NULL, NULL),
(45, 'PINDIANSYAH', 'JANITOR', '2026-01-11 12:02:47', NULL, NULL),
(46, 'RAHAYU EKA BUDIYANI', 'HSE OFFICER', '2026-01-11 12:02:47', NULL, NULL),
(47, 'RAHMAT', 'STEWARD', '2026-01-11 12:02:47', NULL, NULL),
(48, 'RAMLAN', 'WAITER', '2026-01-11 12:02:47', NULL, NULL),
(49, 'RENI', 'LAUNDRY MAN', '2026-01-11 12:02:47', NULL, NULL),
(50, 'RIZAL FAZRI', 'SENIOR COOK', '2026-01-11 12:02:47', NULL, NULL),
(51, 'ROHMAN', 'COOK HELPER', '2026-01-11 12:02:47', NULL, NULL),
(52, 'RULLY ANDRIAN', 'SOUS CHEF', '2026-01-11 12:02:47', NULL, NULL),
(53, 'RUSANDI', 'ROOM BOY', '2026-01-11 12:02:47', NULL, NULL),
(54, 'SAIFUL HADI', 'STOREMAN', '2026-01-11 12:02:47', NULL, NULL),
(55, 'SANDRI', 'PASTRY BAKER', '2026-01-11 12:02:47', NULL, NULL),
(56, 'SANTI NURYANTI', 'RECEPTIONIST', '2026-01-11 12:02:47', NULL, NULL),
(57, 'SUHERLAN', 'FOREMAN ACCOMODATION', '2026-01-11 12:02:47', NULL, NULL),
(58, 'SURYAMAN', 'COOK HELPER', '2026-01-11 12:02:47', NULL, NULL),
(59, 'UKO KOMARUDIN', 'LAUNDRY MAN', '2026-01-11 12:02:47', NULL, NULL),
(60, 'WAHYUDIN', 'SUPERVISOR CATERING &\nFUNCTION', '2026-01-11 12:02:47', NULL, NULL),
(61, 'YANA HERMAWAN', 'HOUSEKEEPER', '2026-01-11 12:02:47', NULL, NULL),
(62, 'YUDHISTIRA ADI NUGRAHA', 'COOK', '2026-01-11 12:02:47', NULL, NULL),
(63, 'YULI SUSANTO', 'STEWARD', '2026-01-11 12:02:47', NULL, NULL),
(64, 'YUSUP MAULANA', 'JANITOR', '2026-01-11 12:02:47', NULL, NULL),
(65, 'RIZAL LAMRI', 'HOUSEKEEPER', '2026-01-11 12:02:47', NULL, NULL),
(66, 'Name', 'Position', '2026-01-11 12:07:33', NULL, 'Department'),
(67, 'ADE IRAWAN', 'COOK', '2026-01-11 12:07:33', NULL, 'OMG'),
(68, 'ADE MUSLIH', 'ROOM BOY', '2026-01-11 12:07:33', NULL, 'OMG'),
(69, 'RISTYA AYU FADHILA', 'NUTRITIONIST', '2026-01-11 12:07:33', NULL, 'OMG'),
(70, 'ADRIAN PURNAMA MULYANA', 'EXECUTIVE CHEF', '2026-01-11 12:07:33', NULL, 'OMG'),
(71, 'AGUS SETIAWAN', 'MAINTENANCE', '2026-01-11 12:07:33', NULL, 'OMG'),
(72, 'AHMAD SOPIAN SAURI', 'SUPERVISOR ACCOMODATION', '2026-01-11 12:07:33', NULL, 'OMG'),
(73, 'ANGGI RINALDI', 'WAITER', '2026-01-11 12:07:33', NULL, 'OMG'),
(74, 'ASEP MAULANA', 'JANITOR', '2026-01-11 12:07:33', NULL, 'OMG'),
(75, 'ASRUL HAYAT', 'LAUNDRY MAN', '2026-01-11 12:07:33', NULL, 'OMG'),
(76, 'AYU ANANDA', 'WAITER', '2026-01-11 12:07:33', NULL, 'OMG'),
(77, 'AZIS SOLEHUDIN', 'CAMPBOSS', '2026-01-11 12:07:33', NULL, 'OMG'),
(78, 'BUDIYANTO', 'LAUNDRY MAN', '2026-01-11 12:07:33', NULL, 'OMG'),
(79, 'CEP HERI', 'LAUNDRY MAN', '2026-01-11 12:07:33', NULL, 'OMG'),
(80, 'DADAN SUHENDI', 'PASTRY BAKER', '2026-01-11 12:07:33', NULL, 'OMG'),
(81, 'DADANG SUHENDAR', 'COOK HELPER', '2026-01-11 12:07:33', NULL, 'OMG'),
(82, 'DIMAS SUHENDAR', 'ROOM BOY', '2026-01-11 12:07:33', NULL, 'OMG'),
(83, 'DINDIN HARYADI', 'OFFICE BOY', '2026-01-11 12:07:33', NULL, 'OMG'),
(84, 'DODI KUSWANDI', 'PASTRY BAKER', '2026-01-11 12:07:33', NULL, 'OMG'),
(85, 'EDNIK', 'ROOM BOY', '2026-01-11 12:07:33', NULL, 'OMG'),
(86, 'EKI HARTANI', 'ADMIN', '2026-01-11 12:07:33', NULL, 'OMG'),
(87, 'EMPIN ARIFIN', 'HOUSEKEEPER', '2026-01-11 12:07:33', NULL, 'OMG'),
(88, 'FAUZAN IRAWAN', 'TECHNICIAN', '2026-01-11 12:07:33', NULL, 'OMG'),
(89, 'FEBRI IRAWAN', 'ROOM BOY', '2026-01-11 12:07:33', NULL, 'OMG'),
(90, 'FEMILA SUARI DANI', 'WAITRESS', '2026-01-11 12:07:33', NULL, 'OMG'),
(91, 'FIRJAN FIRDAUS', 'ROOM BOY', '2026-01-11 12:07:33', NULL, 'OMG'),
(92, 'GOENAWAN SETYADI', 'STOREMAN', '2026-01-11 12:07:33', NULL, 'OMG'),
(93, 'HENDRI SUHENDRI', 'PASTRY BAKER', '2026-01-11 12:07:33', NULL, 'OMG'),
(94, 'HERU AGUS RIYANTO', 'SENIOR COOK', '2026-01-11 12:07:33', NULL, 'OMG'),
(95, 'IKLIMA ANJAR WULAN', 'HEAD WAITER', '2026-01-11 12:07:33', NULL, 'OMG'),
(96, 'INDI YANI', 'LAUNDRY MAN', '2026-01-11 12:07:33', NULL, 'OMG'),
(97, 'INSAN APRISA HERBIANA', 'FOREMAN ACCOMODATION', '2026-01-11 12:07:33', NULL, 'OMG'),
(98, 'LILI SARLI AR', 'DRIVER', '2026-01-11 12:07:33', NULL, 'OMG'),
(99, 'MAMAN SURYAMAN', 'SENIOR COOK', '2026-01-11 12:07:33', NULL, 'OMG'),
(100, 'MUHAMAD AMARULLAH', 'ROOM BOY', '2026-01-11 12:07:33', NULL, 'OMG'),
(101, 'MUHAMMAD RIYAN NAJMUDIN', 'LAUNDRY MAN', '2026-01-11 12:07:33', NULL, 'OMG'),
(102, 'MULYADI', 'COOK', '2026-01-11 12:07:33', NULL, 'OMG'),
(103, 'MULYANA', 'DRIVER', '2026-01-11 12:07:33', NULL, 'OMG'),
(104, 'OMAN SUJANA', 'DRIVER', '2026-01-11 12:07:33', NULL, 'OMG'),
(105, 'PINDIANSYAH', 'JANITOR', '2026-01-11 12:07:33', NULL, 'OMG'),
(106, 'RAHAYU EKA BUDIYANI', 'HSE OFFICER', '2026-01-11 12:07:33', NULL, 'OMG'),
(107, 'RAHMAT', 'STEWARD', '2026-01-11 12:07:33', NULL, 'OMG'),
(108, 'RAMLAN', 'WAITER', '2026-01-11 12:07:33', NULL, 'OMG'),
(109, 'RENI', 'LAUNDRY MAN', '2026-01-11 12:07:33', NULL, 'OMG'),
(110, 'RIZAL FAZRI', 'SENIOR COOK', '2026-01-11 12:07:33', NULL, 'OMG'),
(111, 'ROHMAN', 'COOK HELPER', '2026-01-11 12:07:33', NULL, 'OMG'),
(112, 'RULLY ANDRIAN', 'SOUS CHEF', '2026-01-11 12:07:34', NULL, 'OMG'),
(113, 'RUSANDI', 'ROOM BOY', '2026-01-11 12:07:34', NULL, 'OMG'),
(114, 'SAIFUL HADI', 'STOREMAN', '2026-01-11 12:07:34', NULL, 'OMG'),
(115, 'SANDRI', 'PASTRY BAKER', '2026-01-11 12:07:34', NULL, 'OMG'),
(116, 'SANTI NURYANTI', 'RECEPTIONIST', '2026-01-11 12:07:34', NULL, 'OMG'),
(117, 'SUHERLAN', 'FOREMAN ACCOMODATION', '2026-01-11 12:07:34', NULL, 'OMG'),
(118, 'SURYAMAN', 'COOK HELPER', '2026-01-11 12:07:34', NULL, 'OMG'),
(119, 'UKO KOMARUDIN', 'LAUNDRY MAN', '2026-01-11 12:07:34', NULL, 'OMG'),
(120, 'WAHYUDIN', 'SUPERVISOR CATERING &\nFUNCTION', '2026-01-11 12:07:34', NULL, 'OMG'),
(121, 'YANA HERMAWAN', 'HOUSEKEEPER', '2026-01-11 12:07:34', NULL, 'OMG'),
(122, 'YUDHISTIRA ADI NUGRAHA', 'COOK', '2026-01-11 12:07:34', NULL, 'OMG'),
(123, 'YULI SUSANTO', 'STEWARD', '2026-01-11 12:07:34', NULL, 'OMG'),
(124, 'YUSUP MAULANA', 'JANITOR', '2026-01-11 12:07:34', NULL, 'OMG'),
(125, 'RIZAL LAMRI', 'HOUSEKEEPER', '2026-01-11 12:07:34', NULL, 'OMG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `original_name` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `photos`
--

INSERT INTO `photos` (`id`, `user_id`, `filename`, `original_name`, `uploaded_at`) VALUES
(4, 1, '1768127982_INDOCATER.png', 'INDOCATER.png', '2026-01-11 10:39:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fullname`, `email`, `phone`, `address`, `profile_photo`, `created_at`) VALUES
(1, 'Rahayueka22', '$2y$10$sOuc/cpcHTd8YRcRebQrFutOdRMripUQMFj9cPoonLpyagWEapN62', 'Employee Personal Record', 'admin@example.com', NULL, NULL, '1768127982_INDOCATER.png', '2025-11-06 16:16:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wayang_windu_employees`
--

CREATE TABLE `wayang_windu_employees` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `posisi` varchar(255) DEFAULT NULL,
  `unit_kerja` varchar(255) DEFAULT 'WAYANG WINDU',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `wayang_windu_employees`
--

INSERT INTO `wayang_windu_employees` (`id`, `nama`, `posisi`, `unit_kerja`, `created_at`) VALUES
(1, 'Fajar Nugraha', 'Karyawan Produksi', 'WAYANG WINDU', '2026-01-11 12:50:17'),
(2, 'Gita Sari', 'Supervisor Gudang', 'WAYANG WINDU', '2026-01-11 12:50:17'),
(3, 'Hendra Wijaya', 'Teknisi Maintenance', 'WAYANG WINDU', '2026-01-11 12:50:17'),
(4, 'Indah Permata', 'Staff Keuangan', 'WAYANG WINDU', '2026-01-11 12:50:17'),
(5, 'Joko Susanto', 'Manager Operasional', 'WAYANG WINDU', '2026-01-11 12:50:17'),
(6, 'Fajar Nugraha', 'Karyawan Produksi', 'WAYANG WINDU', '2026-01-11 13:07:32'),
(7, 'Gita Sari', 'Supervisor Gudang', 'WAYANG WINDU', '2026-01-11 13:07:32'),
(8, 'Hendra Wijaya', 'Teknisi Maintenance', 'WAYANG WINDU', '2026-01-11 13:07:32'),
(9, 'Indah Permata', 'Staff Keuangan', 'WAYANG WINDU', '2026-01-11 13:07:32'),
(10, 'Joko Susanto', 'Manager Operasional', 'WAYANG WINDU', '2026-01-11 13:07:32');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `darajat_employees`
--
ALTER TABLE `darajat_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `wayang_windu_employees`
--
ALTER TABLE `wayang_windu_employees`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `darajat_employees`
--
ALTER TABLE `darajat_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT untuk tabel `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `wayang_windu_employees`
--
ALTER TABLE `wayang_windu_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data untuk tabel `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'epr', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"cekhousing\",\"employee_record\",\"employee_record_darajat\",\"employee_record_salak\",\"employee_record_wayang_windu\",\"fml_logistics\",\"k3_jsmu\",\"personal_cv_db\",\"phpmyadmin\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Struktur tabel @TABLE@\",\"latex_structure_continued_caption\":\"Struktur tabel @TABLE@ (dilanjutkan)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Isi tabel @TABLE@\",\"latex_data_continued_caption\":\"Isi tabel @TABLE@ (dilanjutkan)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'server', 'employee_record', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"cekhousing\",\"employee_record\",\"employee_record_darajat\",\"employee_record_salak\",\"employee_record_wayang_windu\",\"fml_logistics\",\"k3_jsmu\",\"personal_cv_db\",\"phpmyadmin\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Struktur tabel @TABLE@\",\"latex_structure_continued_caption\":\"Struktur tabel @TABLE@ (dilanjutkan)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Isi tabel @TABLE@\",\"latex_data_continued_caption\":\"Isi tabel @TABLE@ (dilanjutkan)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(3, 'root', 'table', 'DATA_EMPLOYEE', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"allrows\":\"1\",\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@TABLE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Struktur tabel @TABLE@\",\"latex_structure_continued_caption\":\"Struktur tabel @TABLE@ (dilanjutkan)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Isi tabel @TABLE@\",\"latex_data_continued_caption\":\"Isi tabel @TABLE@ (dilanjutkan)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(4, 'root', 'database', 'employee_record_darajat', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"employees\",\"employee_records\",\"units\",\"users\"],\"table_structure[]\":[\"employees\",\"employee_records\",\"units\",\"users\"],\"table_data[]\":[\"employees\",\"employee_records\",\"units\",\"users\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Struktur tabel @TABLE@\",\"latex_structure_continued_caption\":\"Struktur tabel @TABLE@ (dilanjutkan)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Isi tabel @TABLE@\",\"latex_data_continued_caption\":\"Isi tabel @TABLE@ (dilanjutkan)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"employee_record\",\"table\":\"employee_records\"},{\"db\":\"employee_record\",\"table\":\"units\"},{\"db\":\"employee_record\",\"table\":\"users\"},{\"db\":\"employee_record_darajat\",\"table\":\"users\"},{\"db\":\"employee_record_darajat\",\"table\":\"units\"},{\"db\":\"employee_record_darajat\",\"table\":\"employee_records\"},{\"db\":\"employee_record_darajat\",\"table\":\"employees\"},{\"db\":\"employee_record\",\"table\":\"employees\"},{\"db\":\"employee_record_salak\",\"table\":\"employees\"},{\"db\":\"employee_record_salak\",\"table\":\"units\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data untuk tabel `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'employee_record', 'employees', '[]', '2026-01-29 04:37:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2026-02-08 14:10:22', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"id\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
