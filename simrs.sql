-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2019 at 09:39 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simrs`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` int(11) NOT NULL,
  `nama_dokter` varchar(50) NOT NULL,
  `tipe_dokter` varchar(50) NOT NULL,
  `jasa_dokter` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `nama_dokter`, `tipe_dokter`, `jasa_dokter`) VALUES
(1, 'Dr.Sanusi Sp.An', 'Spesialis Anestesi', 100000),
(2, 'Dr. Rival Sadega Sp.A', 'Spesialis Anak', 100000),
(3, 'Dr. Arifin andi Sp.OG', 'Spesialis Obgyn', 150000),
(4, 'Dr. Arin Samarinda Sp.Pd', 'Spesialis Penyakit Dalam', 200000),
(5, 'Dr. Mega Irena Sp.THT-KL', 'Spesialis THT-KL', 120000),
(6, 'Dr. Iren Alwiana ', 'Umum', 80000),
(7, 'Dr. Dora almahera', 'Umum', 80000),
(8, 'Dr. Irma Adana', 'Umum', 80000),
(9, 'Dr. Sintaks Mahera', 'Umum', 80000),
(10, 'Dr. Beka Anumia', 'Umum', 80000);

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `id_kamar` int(11) NOT NULL,
  `nama_kamar` varchar(20) NOT NULL,
  `tipe_kamar` varchar(20) NOT NULL,
  `harga_kamar` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`id_kamar`, `nama_kamar`, `tipe_kamar`, `harga_kamar`) VALUES
(1, 'Diamond', 'VVIP', 1200000),
(2, 'Saphire', 'VIP', 900000),
(3, 'Emerald', 'Kelas 1', 850000),
(4, 'Elephant', 'Kelas 2', 650000),
(5, 'Crystal', 'Kelas 3', 400000);

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id_obat` int(11) NOT NULL,
  `nama_obat` varchar(30) NOT NULL,
  `jenis_obat` varchar(30) NOT NULL,
  `exp_date` date NOT NULL,
  `harga_obat` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id_obat`, `nama_obat`, `jenis_obat`, `exp_date`, `harga_obat`) VALUES
(1, 'Mixagrip', 'Obat Batuk', '2020-01-11', 10000),
(2, 'Oskadon', 'Obat Sakit Kepala', '2021-03-11', 15000),
(3, 'Ponstan', 'Obat Nyeri', '2022-08-31', 7000),
(4, 'Insana', 'Obat Panas Anak', '2024-08-30', 8000),
(5, 'Sanaflu', 'Obat Pilek', '2024-01-19', 4500);

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(11) NOT NULL,
  `nama_pasien` varchar(20) DEFAULT NULL,
  `alamat_pasien` varchar(100) DEFAULT NULL,
  `jenis_kelamin` varchar(25) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama_pasien`, `alamat_pasien`, `jenis_kelamin`, `tgl_lahir`) VALUES
(1, 'Rohman Dani', 'Jl. Garut No.67 Sawah baru Cileduk', 'Laki laki', '1978-09-24'),
(2, 'Ali Baba', 'Jl. Dewata karang No.12 ', 'Perempuan', '1990-12-08'),
(3, 'Udin Salaudin', 'Jl. Ceger raya No.90 Tangerang', 'Laki laki', '1984-10-31'),
(4, 'Misela Lumoa', 'Jl. anggrek duta No.45 Cipondoh', 'Perempuan', '1989-06-06'),
(5, 'Indah Pertiwi', 'Jl. Musang King No.240 Kebon Sirih Cileungsi', 'Perempuan', '1992-02-11');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_rajal`
--

CREATE TABLE `pembayaran_rajal` (
  `id_pembayaran_rajal` int(11) NOT NULL,
  `id_rajal` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `id_tindakan` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_ranap`
--

CREATE TABLE `pembayaran_ranap` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `id_ranap` int(11) NOT NULL,
  `id_kamar` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_ugd`
--

CREATE TABLE `pembayaran_ugd` (
  `id_pembayaran_ugd` int(11) NOT NULL,
  `id_ugd` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `id_tindakan` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `poli`
--

CREATE TABLE `poli` (
  `id_poli` int(11) NOT NULL,
  `nama_poli` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poli`
--

INSERT INTO `poli` (`id_poli`, `nama_poli`) VALUES
(1, 'Poli Gigi'),
(2, 'Poli Internis'),
(3, 'Poli Umum'),
(4, 'Poli Anak'),
(5, 'Poli THT-KL'),
(6, 'Poli Obgyn');

-- --------------------------------------------------------

--
-- Table structure for table `rajal`
--

CREATE TABLE `rajal` (
  `id_rajal` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `id_tindakan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ranap`
--

CREATE TABLE `ranap` (
  `id_ranap` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `id_tindakan` int(11) NOT NULL,
  `cekin` date NOT NULL,
  `cekout` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resep`
--

CREATE TABLE `resep` (
  `id_resep` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `jumlah` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tindakan`
--

CREATE TABLE `tindakan` (
  `id_tindakan` int(11) NOT NULL,
  `jenis_tindakan` varchar(30) NOT NULL,
  `harga_tindakan` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tindakan`
--

INSERT INTO `tindakan` (`id_tindakan`, `jenis_tindakan`, `harga_tindakan`) VALUES
(1, 'Operasi Kecil', 250000),
(2, 'Operasi Besar', 1000000),
(3, 'Suntik KB', 180000),
(4, 'Suntik Vitamin C', 90000),
(5, 'Pembersihan Luka', 15000),
(6, 'Pemasangan Perban', 100000),
(7, 'Operasi SC (Suctio Caesaria)', 3500000),
(9, 'EKG', 150000);

-- --------------------------------------------------------

--
-- Table structure for table `ugd`
--

CREATE TABLE `ugd` (
  `id_ugd` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `alamat` int(11) NOT NULL,
  `tgl_lahir` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `keadaan_pulang` varchar(20) NOT NULL,
  `tgl_datang` date NOT NULL,
  `tgl_pulang` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `username`, `password`, `level`) VALUES
(1, 'Abdan Baihaqqi', 'admin', 'admin', 'admin'),
(2, 'Abdan Baihaqqi', 'danbai', 'danbai', 'admin'),
(3, 'Markopolo Zebua', 'marko', 'marko', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`id_kamar`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `pembayaran_rajal`
--
ALTER TABLE `pembayaran_rajal`
  ADD PRIMARY KEY (`id_pembayaran_rajal`),
  ADD KEY `id_rajal` (`id_rajal`,`id_pasien`,`id_dokter`,`id_obat`,`id_tindakan`);

--
-- Indexes for table `pembayaran_ranap`
--
ALTER TABLE `pembayaran_ranap`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_pasien` (`id_pasien`,`id_dokter`,`id_ranap`,`id_kamar`,`id_obat`);

--
-- Indexes for table `pembayaran_ugd`
--
ALTER TABLE `pembayaran_ugd`
  ADD PRIMARY KEY (`id_pembayaran_ugd`),
  ADD KEY `id_ugd` (`id_ugd`,`id_pasien`,`id_dokter`,`id_obat`,`id_tindakan`),
  ADD KEY `id_dokter` (`id_dokter`),
  ADD KEY `id_obat` (`id_obat`),
  ADD KEY `id_pasien` (`id_pasien`),
  ADD KEY `id_tindakan` (`id_tindakan`);

--
-- Indexes for table `poli`
--
ALTER TABLE `poli`
  ADD PRIMARY KEY (`id_poli`);

--
-- Indexes for table `rajal`
--
ALTER TABLE `rajal`
  ADD PRIMARY KEY (`id_rajal`),
  ADD KEY `id_pasien` (`id_pasien`,`id_dokter`,`id_obat`,`id_tindakan`);

--
-- Indexes for table `ranap`
--
ALTER TABLE `ranap`
  ADD PRIMARY KEY (`id_ranap`),
  ADD KEY `id_pasien` (`id_pasien`,`id_dokter`,`id_obat`,`id_tindakan`);

--
-- Indexes for table `resep`
--
ALTER TABLE `resep`
  ADD PRIMARY KEY (`id_resep`),
  ADD KEY `id_obat` (`id_obat`);

--
-- Indexes for table `tindakan`
--
ALTER TABLE `tindakan`
  ADD PRIMARY KEY (`id_tindakan`);

--
-- Indexes for table `ugd`
--
ALTER TABLE `ugd`
  ADD PRIMARY KEY (`id_ugd`),
  ADD KEY `id_pasien` (`id_pasien`,`id_dokter`),
  ADD KEY `id_dokter` (`id_dokter`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id_dokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `kamar`
--
ALTER TABLE `kamar`
  MODIFY `id_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pembayaran_rajal`
--
ALTER TABLE `pembayaran_rajal`
  MODIFY `id_pembayaran_rajal` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pembayaran_ranap`
--
ALTER TABLE `pembayaran_ranap`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pembayaran_ugd`
--
ALTER TABLE `pembayaran_ugd`
  MODIFY `id_pembayaran_ugd` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `poli`
--
ALTER TABLE `poli`
  MODIFY `id_poli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `rajal`
--
ALTER TABLE `rajal`
  MODIFY `id_rajal` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ranap`
--
ALTER TABLE `ranap`
  MODIFY `id_ranap` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `resep`
--
ALTER TABLE `resep`
  MODIFY `id_resep` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tindakan`
--
ALTER TABLE `tindakan`
  MODIFY `id_tindakan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ugd`
--
ALTER TABLE `ugd`
  MODIFY `id_ugd` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `pembayaran_ugd`
--
ALTER TABLE `pembayaran_ugd`
  ADD CONSTRAINT `pembayaran_ugd_ibfk_1` FOREIGN KEY (`id_ugd`) REFERENCES `dokter` (`id_dokter`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembayaran_ugd_ibfk_2` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembayaran_ugd_ibfk_3` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`id_obat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembayaran_ugd_ibfk_4` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembayaran_ugd_ibfk_5` FOREIGN KEY (`id_tindakan`) REFERENCES `tindakan` (`id_tindakan`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
