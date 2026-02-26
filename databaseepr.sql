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
  `nip` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `posisi` varchar(100) NOT NULL,
  `unit` enum('salak','darajat','wayang_windu') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `employees`
--

INSERT INTO `employees` (`id`, `nip`, `nama`, `posisi`, `unit`, `created_at`) VALUES
(91, '1', 'Alvy Zelvya', 'Nutritionist', 'wayang_windu', '2026-01-18 07:18:00'),
(92, '2', 'Feri Aryanto', 'Supervisor Catering & Function Services', 'wayang_windu', '2026-01-18 07:18:00'),
(93, '3', 'Anwar M', 'Sous Chef', 'wayang_windu', '2026-01-18 07:18:00'),
(94, '4', 'Asep Dedi', 'Senior Cook', 'wayang_windu', '2026-01-18 07:18:00'),
(95, '5', 'Usin', 'Cook', 'wayang_windu', '2026-01-18 07:18:00'),
(96, '6', 'Nandang', 'Cook', 'wayang_windu', '2026-01-18 07:18:00'),
(97, '7', 'Suparman', 'Cook', 'wayang_windu', '2026-01-18 07:18:00'),
(98, '8', 'Riki S', 'Cook', 'wayang_windu', '2026-01-18 07:18:00'),
(99, '9', 'Eden Saripudin', 'Head Waiter', 'wayang_windu', '2026-01-18 07:18:00'),
(100, '10', 'Juliyanti', 'Waiter/ess', 'wayang_windu', '2026-01-18 07:18:00'),
(101, '11', 'Sahman', 'Waiter/ess', 'wayang_windu', '2026-01-18 07:18:00'),
(102, '12', 'Ali G', 'Waiter/ess', 'wayang_windu', '2026-01-18 07:18:00'),
(103, '13', 'Dea Rosaliana', 'Waiter/ess', 'wayang_windu', '2026-01-18 07:18:00'),
(104, '14', 'Dian S', 'Pastry - Baker', 'wayang_windu', '2026-01-18 07:18:00'),
(105, '15', 'Rukmana Boby', 'Pastry - Baker', 'wayang_windu', '2026-01-18 07:18:00'),
(106, '16', 'Yoga', 'Steward', 'wayang_windu', '2026-01-18 07:18:00'),
(107, '17', 'Yudha', 'Steward', 'wayang_windu', '2026-01-18 07:18:00'),
(108, '18', 'Budiman', 'Steward', 'wayang_windu', '2026-01-18 07:18:00'),
(109, '19', 'Asep Suryana', 'Administration', 'wayang_windu', '2026-01-18 07:18:00'),
(110, '20', 'Wawan', 'Store keeper', 'wayang_windu', '2026-01-18 07:18:00'),
(111, '21', 'Dedi SH', 'Technician', 'wayang_windu', '2026-01-18 07:18:00'),
(112, '22', 'Depi', 'Driver', 'wayang_windu', '2026-01-18 07:18:00'),
(113, '1', 'Azis Solehudin', 'Field Manager', 'salak', '2026-01-18 07:19:13'),
(114, '2', 'Adrian Purnama', 'Executive Chef', 'salak', '2026-01-18 07:19:13'),
(115, '3', 'Rahayu Eka', 'SHE Officer', 'salak', '2026-01-18 07:19:13'),
(116, '4', 'Ristya Ayu', 'Nutritionist', 'salak', '2026-01-18 07:19:14'),
(117, '5', 'Wahyudin', 'Supervisor Catering & Function Services', 'salak', '2026-01-18 07:19:14'),
(118, '6', 'Rully A', 'Sous Chef', 'salak', '2026-01-18 07:19:14'),
(119, '7', 'Maman', 'Senior Cook', 'salak', '2026-01-18 07:19:14'),
(120, '8', 'Mulyadi', 'Senior Cook', 'salak', '2026-01-18 07:19:14'),
(121, '9', 'Rizal Fazri', 'Senior Cook', 'salak', '2026-01-18 07:19:14'),
(122, '10', 'Ade Irawan', 'Cook', 'salak', '2026-01-18 07:19:14'),
(123, '11', 'Suryaman', 'Cook', 'salak', '2026-01-18 07:19:14'),
(124, '12', 'Yudhistira', 'Cook', 'salak', '2026-01-18 07:19:14'),
(125, '13', 'Yuli Susanto', 'Cook helper', 'salak', '2026-01-18 07:19:14'),
(126, '14', 'Rohman', 'Cook helper', 'salak', '2026-01-18 07:19:14'),
(127, '15', 'Dadang S', 'Cook helper', 'salak', '2026-01-18 07:19:14'),
(128, '16', 'Iklima Anjar Wulan', 'Head Waiter', 'salak', '2026-01-18 07:19:14'),
(129, '17', 'Ayu Ananda', 'Waiter/ess', 'salak', '2026-01-18 07:19:14'),
(130, '18', 'Femila Suari Dani', 'Waiter/ess', 'salak', '2026-01-18 07:19:14'),
(131, '19', 'Asep Maulana', 'Waiter/ess', 'salak', '2026-01-18 07:19:14'),
(132, '20', 'Anggi Rinaldi', 'Waiter/ess', 'salak', '2026-01-18 07:19:14'),
(133, '21', 'Hendri', 'Pastry - Baker', 'salak', '2026-01-18 07:19:14'),
(134, '22', 'Dodi', 'Pastry - Baker', 'salak', '2026-01-18 07:19:14'),
(135, '23', 'Sandri', 'Pastry - Baker', 'salak', '2026-01-18 07:19:14'),
(136, '24', 'Dadan S', 'Pastry - Baker', 'salak', '2026-01-18 07:19:14'),
(137, '25', 'Yusup Maulana', 'Janitor', 'salak', '2026-01-18 07:19:14'),
(138, '26', 'Rahmat', 'Steward', 'salak', '2026-01-18 07:19:14'),
(139, '27', 'Dimas', 'Steward', 'salak', '2026-01-18 07:19:14'),
(140, '28', 'Pindiansyah', 'Steward', 'salak', '2026-01-18 07:19:14'),
(141, '29', 'Eki Hartani', 'Administration', 'salak', '2026-01-18 07:19:14'),
(142, '30', 'Goenawan', 'Store keeper', 'salak', '2026-01-18 07:19:14'),
(143, '31', 'Saiful Hadi', 'Store keeper', 'salak', '2026-01-18 07:19:14'),
(144, '32', 'Fauzan Irawan', 'Technician', 'salak', '2026-01-18 07:19:14'),
(145, '33', 'Oman', 'Driver', 'salak', '2026-01-18 07:19:14'),
(146, '34', 'Lili Sarli', 'Driver', 'salak', '2026-01-18 07:19:14'),
(147, '35', 'Mulyana', 'Driver', 'salak', '2026-01-18 07:19:14'),
(149, '1', 'Cecep Subhan', 'Nutritionist', 'darajat', '2026-01-18 07:25:35'),
(150, '2', 'Siti Fauziah Choirun Nisa', 'Supervisor Catering & Function Services', 'darajat', '2026-01-18 07:25:35'),
(151, '3', 'Helmi', 'Sous Chef', 'darajat', '2026-01-18 07:25:35'),
(152, '4', 'Taopik', 'Senior Cook', 'darajat', '2026-01-18 07:25:35'),
(153, '5', 'Jujun', 'Cook', 'darajat', '2026-01-18 07:25:35'),
(154, '6', 'Tito', 'Cook helper', 'darajat', '2026-01-18 07:25:35'),
(155, '7', 'Ujang', 'Waiter/ess', 'darajat', '2026-01-18 07:25:35'),
(156, '8', 'Wawan', 'Pastry - Baker', 'darajat', '2026-01-18 07:25:35'),
(157, '9', 'Nurman', 'Store keeper', 'darajat', '2026-01-18 07:25:35'),
(158, '10', 'Cecep Nursaepudin', 'Driver', 'darajat', '2026-01-18 07:25:35'),
(159, '11', 'Kurniadi', 'Driver', 'darajat', '2026-01-18 07:25:35');

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
(5, 149, '2026-01-18', 'Tidak menggunakan apd', 'pelanggaran safety', 'Teguran lisan', 'choacing', 'disetujui', 'ok', 1, '2026-01-18 07:33:51'),
(6, 97, '2026-01-18', 'pulang duluan', 'disiplin', 'Teguran lisan', 'choacing', 'disetujui', 'ok', 1, '2026-01-18 07:34:49'),
(7, 114, '2026-01-18', 'ngabungkus ke', 'displin', 'SP I', 'laporkan cmr', 'disetujui', 'diberikan arahan langsung oleh cmr agar tidak melakukan lagi', 1, '2026-01-18 07:36:34'),
(8, 114, '2026-01-17', 'ngabungkus nasi', 'disiplin', 'Teguran lisan', 'laporkan spv', 'disetujui', 'peringatkan', 1, '2026-01-18 07:39:02'),
(9, 113, '2026-01-18', 'tidak pakai helm', 'pelanggaran safety', 'Teguran lisan', 'laporkan cmr', 'disetujui', 'perhatikan terus', 3, '2026-01-18 13:29:21');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT untuk tabel `employee_records`
--
ALTER TABLE `employee_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
COMMIT;
