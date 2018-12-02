-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2018 at 08:10 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invku`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar_jenis`
--

CREATE TABLE `daftar_jenis` (
  `id_jenis` int(5) NOT NULL,
  `jenis` varchar(150) NOT NULL,
  `ket_jenis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_jenis`
--

INSERT INTO `daftar_jenis` (`id_jenis`, `jenis`, `ket_jenis`) VALUES
(1, 'mouse', ''),
(2, 'monitor', ''),
(3, 'keyboard', ''),
(5, 'CPU', ''),
(7, 'Modem', ''),
(8, 'Printer', ''),
(10, 'Speaker', 'tes tes'),
(11, 'Meja', ''),
(12, 'Kursi', ''),
(13, 'Jam Dinding', ''),
(14, 'Karpet', ''),
(15, 'Rak Swich', ''),
(16, 'Cok Rol', ''),
(17, 'Lemari', ''),
(18, 'Dispenser', ''),
(19, 'Akses Point', ''),
(20, 'LCD Proyektor', ''),
(21, 'LCD Screen', ''),
(22, 'Gorden', ''),
(23, 'Lampu', ''),
(24, 'Laptop', ''),
(25, 'Routerboard', ''),
(26, 'Galon', 'makanan'),
(27, 'asd', 'ad'),
(28, 'puntik', 'jdfn');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_kondisi`
--

CREATE TABLE `daftar_kondisi` (
  `id_kondisi` int(5) NOT NULL,
  `kondisi` varchar(20) NOT NULL,
  `ket_kondisi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_kondisi`
--

INSERT INTO `daftar_kondisi` (`id_kondisi`, `kondisi`, `ket_kondisi`) VALUES
(1, 'Baik', ''),
(2, 'Rusak Ringan', ''),
(3, 'Rusak Berat', ''),
(5, 'Sedih', 'sedih badan,jbhkj');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_ruang`
--

CREATE TABLE `daftar_ruang` (
  `id_ruangan` int(5) NOT NULL,
  `nama_ruangan` varchar(50) NOT NULL,
  `fungsi_ruangan` varchar(40) NOT NULL,
  `luas` varchar(25) NOT NULL,
  `gbr_ruangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_ruang`
--

INSERT INTO `daftar_ruang` (`id_ruangan`, `nama_ruangan`, `fungsi_ruangan`, `luas`, `gbr_ruangan`) VALUES
(1, 'LAB I', 'RUANGAN PRAKTIK KOMPUTER', '', ''),
(3, 'KEPALA LAB', 'RUANG KEPALA LABORATORIUM', '', ''),
(4, 'GUDANG LAB', 'GUDANG LABORATORIUM', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_satuan`
--

CREATE TABLE `daftar_satuan` (
  `id_satuan` int(5) NOT NULL,
  `satuan` varchar(15) NOT NULL,
  `ket_satuan` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_satuan`
--

INSERT INTO `daftar_satuan` (`id_satuan`, `satuan`, `ket_satuan`) VALUES
(2, 'Buah', ''),
(3, 'Pasang', ''),
(4, 'Lembar', ''),
(5, 'Batang', ''),
(6, 'Bungkus', ''),
(7, 'Potong', ''),
(8, 'Tablet', 'e'),
(9, 'Ekor', ''),
(10, 'Rim', 'sdf'),
(11, 'Botol', ''),
(12, 'Butir', ''),
(13, 'Roll', ''),
(14, 'Kilogram', ''),
(15, 'Meter', ''),
(16, 'Meter Persegi', '');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_sumber`
--

CREATE TABLE `daftar_sumber` (
  `id_sumber` int(5) NOT NULL,
  `sumber` varchar(100) NOT NULL,
  `ket_sumber` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_sumber`
--

INSERT INTO `daftar_sumber` (`id_sumber`, `sumber`, `ket_sumber`) VALUES
(1, 'Yayasan', 'sdf'),
(2, 'PP-PTS', ''),
(3, 'Hibah', '');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_tahun`
--

CREATE TABLE `daftar_tahun` (
  `id_tahun` int(5) NOT NULL,
  `tahun` varchar(6) NOT NULL,
  `ket_tahun` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_tahun`
--

INSERT INTO `daftar_tahun` (`id_tahun`, `tahun`, `ket_tahun`) VALUES
(2, '2017', ''),
(3, '2018', 'Take Android');

-- --------------------------------------------------------

--
-- Table structure for table `data_inventaris`
--

CREATE TABLE `data_inventaris` (
  `id_inv` int(5) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_inv` varchar(15) NOT NULL,
  `id_ruangan` int(5) NOT NULL,
  `id_sumber` int(5) NOT NULL,
  `id_tahun` int(5) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `merek` varchar(100) NOT NULL,
  `seri` varchar(100) NOT NULL,
  `id_jenis` int(5) NOT NULL,
  `nilai_wajar` int(10) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_inventaris`
--

INSERT INTO `data_inventaris` (`id_inv`, `tanggal`, `kode_inv`, `id_ruangan`, `id_sumber`, `id_tahun`, `nama_barang`, `merek`, `seri`, `id_jenis`, `nilai_wajar`, `gambar`) VALUES
(1, '2018-11-02', '1234', 3, 3, 3, 'panci', 'gudang sie', 'terbatas', 3, 23, '<?php echo base_url();?>abdulhafizbahrain.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(15) NOT NULL,
  `nm_depan` varchar(100) NOT NULL,
  `nm_belakang` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` int(4) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nm_depan`, `nm_belakang`, `email`, `username`, `password`, `level`, `photo`) VALUES
(24, 'abdul hafiz bahrain', 'hafizbahrain', 'abdulhafizbahrain@gmail.com', 'hafiz', 'hafiz', 2, 'hafiz.jpg'),
(25, 'abdul hafiz bahrain', 'asdf', 'awan@gmail.com', 'awana', 'awan', 2, 'logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_jenis`
--
ALTER TABLE `daftar_jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `daftar_kondisi`
--
ALTER TABLE `daftar_kondisi`
  ADD PRIMARY KEY (`id_kondisi`);

--
-- Indexes for table `daftar_ruang`
--
ALTER TABLE `daftar_ruang`
  ADD PRIMARY KEY (`id_ruangan`);

--
-- Indexes for table `daftar_satuan`
--
ALTER TABLE `daftar_satuan`
  ADD PRIMARY KEY (`id_satuan`);

--
-- Indexes for table `daftar_sumber`
--
ALTER TABLE `daftar_sumber`
  ADD PRIMARY KEY (`id_sumber`);

--
-- Indexes for table `daftar_tahun`
--
ALTER TABLE `daftar_tahun`
  ADD PRIMARY KEY (`id_tahun`);

--
-- Indexes for table `data_inventaris`
--
ALTER TABLE `data_inventaris`
  ADD PRIMARY KEY (`id_inv`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar_jenis`
--
ALTER TABLE `daftar_jenis`
  MODIFY `id_jenis` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `daftar_kondisi`
--
ALTER TABLE `daftar_kondisi`
  MODIFY `id_kondisi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `daftar_ruang`
--
ALTER TABLE `daftar_ruang`
  MODIFY `id_ruangan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `daftar_satuan`
--
ALTER TABLE `daftar_satuan`
  MODIFY `id_satuan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `daftar_sumber`
--
ALTER TABLE `daftar_sumber`
  MODIFY `id_sumber` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `daftar_tahun`
--
ALTER TABLE `daftar_tahun`
  MODIFY `id_tahun` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data_inventaris`
--
ALTER TABLE `data_inventaris`
  MODIFY `id_inv` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
