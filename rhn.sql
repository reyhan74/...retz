-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Okt 2024 pada 12.03
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rhn`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alamat`
--

CREATE TABLE `alamat` (
  `id` int(222) NOT NULL,
  `alamat` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `alamat`
--

INSERT INTO `alamat` (`id`, `alamat`) VALUES
(1, 'PUNCU'),
(2, 'PARE'),
(3, 'BADAS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `kelas` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `kelas`) VALUES
(1, 'XI TKJ 1'),
(2, 'XI TKJ 2'),
(3, 'XI TKJ 3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(110) NOT NULL,
  `nama` varchar(110) NOT NULL,
  `no_absen` int(110) NOT NULL,
  `id_alamat` int(110) NOT NULL,
  `id_kelas` int(110) NOT NULL,
  `hobi` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `no_absen`, `id_alamat`, `id_kelas`, `hobi`) VALUES
(5, 'Toni Luckman Hady Lulut Wijaya', 30, 1, 3, 'Turu miring'),
(6, 'Reyhan Dwiandika', 18, 1, 3, 'Mencari hal yang baru'),
(10, 'Satria Majid', 21, 3, 3, 'Main Roblox'),
(11, 'Sela Dwi Surya Kirana', 23, 2, 3, 'Jualan'),
(12, 'Valentino Fahresi', 31, 2, 3, 'Main game di lab');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alamat`
--
ALTER TABLE `alamat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_alamat` (`id_alamat`,`id_kelas`),
  ADD KEY `kelas` (`id_kelas`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alamat`
--
ALTER TABLE `alamat`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(110) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `alamat` FOREIGN KEY (`id_alamat`) REFERENCES `alamat` (`id`),
  ADD CONSTRAINT `kelas` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
