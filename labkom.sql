-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Feb 2020 pada 05.57
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `labkom`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alat`
--

CREATE TABLE `alat` (
  `id_alat` int(11) NOT NULL,
  `nama_alat` varchar(20) NOT NULL,
  `harga_sewa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jasa_install`
--

CREATE TABLE `jasa_install` (
  `id_jasa_install` int(11) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `service` varchar(100) NOT NULL,
  `deskripsi_barang` text NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `kelengkapan` varchar(50) NOT NULL,
  `status_service` enum('belum','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jasa_print`
--

CREATE TABLE `jasa_print` (
  `id_jasa_print` int(11) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `jenis_print` enum('hitam_putih','berwarna') NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(50) NOT NULL,
  `angkatan` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`, `angkatan`) VALUES
(1, 'Teknik Informatika', '2017'),
(2, 'Statistika', '2017'),
(3, 'Matematika', '2017'),
(4, 'Informatika', '2017'),
(5, 'Teknik Informatika', '2018'),
(6, 'Statistika', '2018'),
(7, 'Matematika', '2018'),
(8, 'Informatika', '2018'),
(9, 'Teknik Informatika', '2019'),
(10, 'Statistika', '2019'),
(11, 'Matematika', '2019'),
(12, 'Informatika', '2019');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjam`
--

CREATE TABLE `peminjam` (
  `id_peminjam` int(11) NOT NULL,
  `peminjam` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman_alat`
--

CREATE TABLE `peminjaman_alat` (
  `id_peminjaman_alat` int(11) NOT NULL,
  `tanggal_pinjam` varchar(20) NOT NULL,
  `tanggal_kembali` varchar(20) NOT NULL,
  `waktu_pinjam` varchar(20) NOT NULL,
  `tempat` varchar(50) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `id_peminjam` int(11) NOT NULL,
  `id_alat` int(11) NOT NULL,
  `total_harga_sewa` int(11) NOT NULL,
  `status_peminjaman` enum('belum','selesai','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman_ruangs`
--

CREATE TABLE `peminjaman_ruangs` (
  `id_peminjaman_ruang` int(11) NOT NULL,
  `tanggal_pinjam` varchar(20) NOT NULL,
  `nama_peminjam` varchar(20) NOT NULL,
  `dosen_pengampu` varchar(20) NOT NULL,
  `jam_pinjam` varchar(20) NOT NULL,
  `jenis_peminjaman` enum('jam_kuliah','non_jam_kuliah') NOT NULL,
  `status_pinjam` enum('belum','selesai') NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `id_ruang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peminjaman_ruangs`
--

INSERT INTO `peminjaman_ruangs` (`id_peminjaman_ruang`, `tanggal_pinjam`, `nama_peminjam`, `dosen_pengampu`, `jam_pinjam`, `jenis_peminjaman`, `status_pinjam`, `id_jurusan`, `id_ruang`) VALUES
(1, '06/02/2020', 'Yusuf', 'Agus', '11.42', 'jam_kuliah', 'belum', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang`
--

CREATE TABLE `ruang` (
  `id_ruang` int(11) NOT NULL,
  `nama_ruang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ruang`
--

INSERT INTO `ruang` (`id_ruang`, `nama_ruang`) VALUES
(1, 'L. Komdas'),
(2, 'L. Multimedia'),
(3, 'L. RPL'),
(4, 'L. Pemrograman'),
(5, 'L. Data Sains'),
(6, 'L. Jaringan'),
(7, 'L. Mikrokontroller');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alat`
--
ALTER TABLE `alat`
  ADD PRIMARY KEY (`id_alat`);

--
-- Indeks untuk tabel `jasa_install`
--
ALTER TABLE `jasa_install`
  ADD PRIMARY KEY (`id_jasa_install`);

--
-- Indeks untuk tabel `jasa_print`
--
ALTER TABLE `jasa_print`
  ADD PRIMARY KEY (`id_jasa_print`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `peminjam`
--
ALTER TABLE `peminjam`
  ADD PRIMARY KEY (`id_peminjam`);

--
-- Indeks untuk tabel `peminjaman_alat`
--
ALTER TABLE `peminjaman_alat`
  ADD PRIMARY KEY (`id_peminjaman_alat`),
  ADD KEY `id_peminjam` (`id_peminjam`),
  ADD KEY `id_alat` (`id_alat`);

--
-- Indeks untuk tabel `peminjaman_ruangs`
--
ALTER TABLE `peminjaman_ruangs`
  ADD PRIMARY KEY (`id_peminjaman_ruang`),
  ADD KEY `id_jurusan` (`id_jurusan`),
  ADD KEY `id_ruang` (`id_ruang`);

--
-- Indeks untuk tabel `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id_ruang`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alat`
--
ALTER TABLE `alat`
  MODIFY `id_alat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jasa_install`
--
ALTER TABLE `jasa_install`
  MODIFY `id_jasa_install` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jasa_print`
--
ALTER TABLE `jasa_print`
  MODIFY `id_jasa_print` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `peminjam`
--
ALTER TABLE `peminjam`
  MODIFY `id_peminjam` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `peminjaman_alat`
--
ALTER TABLE `peminjaman_alat`
  MODIFY `id_peminjaman_alat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `peminjaman_ruangs`
--
ALTER TABLE `peminjaman_ruangs`
  MODIFY `id_peminjaman_ruang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `ruang`
--
ALTER TABLE `ruang`
  MODIFY `id_ruang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `peminjaman_alat`
--
ALTER TABLE `peminjaman_alat`
  ADD CONSTRAINT `peminjaman_alat_ibfk_1` FOREIGN KEY (`id_peminjam`) REFERENCES `peminjam` (`id_peminjam`),
  ADD CONSTRAINT `peminjaman_alat_ibfk_2` FOREIGN KEY (`id_alat`) REFERENCES `alat` (`id_alat`);

--
-- Ketidakleluasaan untuk tabel `peminjaman_ruangs`
--
ALTER TABLE `peminjaman_ruangs`
  ADD CONSTRAINT `peminjaman_ruangs_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`),
  ADD CONSTRAINT `peminjaman_ruangs_ibfk_2` FOREIGN KEY (`id_ruang`) REFERENCES `ruang` (`id_ruang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
