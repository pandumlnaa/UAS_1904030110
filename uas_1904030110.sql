-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Feb 2022 pada 15.19
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas_1904030110`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tempat` varchar(30) NOT NULL,
  `mata_pelajaran` varchar(20) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(12) NOT NULL,
  `agama` varchar(15) NOT NULL,
  `foto` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id`, `nama`, `tempat`, `mata_pelajaran`, `alamat`, `jenis_kelamin`, `agama`, `foto`) VALUES
('1234', 'Pandu Maulana', 'tangerang, 01 Mei 1998', 'kimia', 'ciledug, Tangerang', 'Laki-laki', 'Islam', '1'),
('13456', 'Imam Syarif', 'Tangerang, 12 Maret 1993', 'Sosiologi', 'Pakuhaji Tangerang', 'Laki-laki', 'Islam', '4'),
('145', 'Irfan Septian', 'tangerang, 25 juli 2000', 'kimia', 'teluknaga tangerang', 'Laki-laki', 'Islam', '2'),
('22', 'Nurul Mauliya', 'tangerang, 01 Mei 1998', 'fisika', 'ciledug, Tangerang', 'laki-laki', 'islam', '3'),
('234', 'Anwar Makaarim', 'Tangerang, 25 Februari 1995', 'TIK', 'Perum 4 Tangerang', 'Laki-laki', 'Islam', '5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_pel`
--

CREATE TABLE `mata_pel` (
  `id` varchar(10) NOT NULL,
  `mapel` varchar(20) NOT NULL,
  `jurusan` varchar(15) NOT NULL,
  `guru` varchar(15) NOT NULL,
  `kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mata_pel`
--

INSERT INTO `mata_pel` (`id`, `mapel`, `jurusan`, `guru`, `kelas`) VALUES
('001', 'Jaringan', 'TKJ', 'ahmad.spd', '11 B'),
('022', 'Multimedia', 'MM', 'mahmud', '12 A'),
('2', 'Listrik', 'TITL', 'Sri Isna.spd', '10 A'),
('3', 'Mesin', 'TM', 'mahmud', '11 b'),
('7', 'Komputer', 'TKJ', 'nurhalim. Spd', '12 A');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mata_pel`
--
ALTER TABLE `mata_pel`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
