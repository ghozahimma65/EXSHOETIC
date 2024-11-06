-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Nov 2024 pada 01.37
-- Versi server: 8.1.0
-- Versi PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cuci_sepatu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `Admin_ID` int NOT NULL,
  `Nama` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Kontak` varchar(12) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barcode`
--

CREATE TABLE `barcode` (
  `Barcode_ID` int NOT NULL,
  `Status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Pesanan_ID` int NOT NULL,
  `Kode_Barcode` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` int NOT NULL,
  `Nama` int NOT NULL,
  `No_Hp` varchar(12) COLLATE utf8mb4_general_ci NOT NULL,
  `Alamat` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pesanan`
--

CREATE TABLE `detail_pesanan` (
  `DetailPesanan_ID` int NOT NULL,
  `Treatment` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Nama` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Alamat` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `Status_Pesanan` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Total_Harga` int NOT NULL,
  `Jumlah` int NOT NULL,
  `Tanggal_Pesanan` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kurir`
--

CREATE TABLE `kurir` (
  `Kurir_ID` int NOT NULL,
  `Nama` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Kontak` int NOT NULL,
  `Status_Aktif` varchar(10) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `Pembayaran_ID` int NOT NULL,
  `Tgl_Pembayaran` date NOT NULL,
  `Status_Pembayaran` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Metode_Pembayaran` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Total_Pembayaran` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `ID_Pesanan` int NOT NULL,
  `Total_Tagihan` int NOT NULL,
  `Tanggal_Pesanan` date NOT NULL,
  `Status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Alamat` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Treatment` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `treatmen`
--

CREATE TABLE `treatmen` (
  `Treatment_ID` int NOT NULL,
  `Nama_Treatment` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Deskripsi` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Harga` int DEFAULT NULL,
  `Estimasi` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `ID_Pegawai` int NOT NULL,
  `No_HP` int NOT NULL,
  `Nama_Pegawai` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Email` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `Password` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Peran` varchar(10) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`);

--
-- Indeks untuk tabel `barcode`
--
ALTER TABLE `barcode`
  ADD PRIMARY KEY (`Barcode_ID`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indeks untuk tabel `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD PRIMARY KEY (`DetailPesanan_ID`);

--
-- Indeks untuk tabel `kurir`
--
ALTER TABLE `kurir`
  ADD PRIMARY KEY (`Kurir_ID`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`Pembayaran_ID`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`ID_Pesanan`);

--
-- Indeks untuk tabel `treatmen`
--
ALTER TABLE `treatmen`
  ADD PRIMARY KEY (`Treatment_ID`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID_Pegawai`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barcode`
--
ALTER TABLE `barcode`
  MODIFY `Barcode_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `Customer_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  MODIFY `DetailPesanan_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kurir`
--
ALTER TABLE `kurir`
  MODIFY `Kurir_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `ID_Pesanan` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `treatmen`
--
ALTER TABLE `treatmen`
  MODIFY `Treatment_ID` int NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`Admin_ID`) REFERENCES `pesanan` (`ID_Pesanan`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `barcode`
--
ALTER TABLE `barcode`
  ADD CONSTRAINT `barcode_ibfk_1` FOREIGN KEY (`Barcode_ID`) REFERENCES `kurir` (`Kurir_ID`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD CONSTRAINT `detail_pesanan_ibfk_1` FOREIGN KEY (`DetailPesanan_ID`) REFERENCES `pesanan` (`ID_Pesanan`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kurir`
--
ALTER TABLE `kurir`
  ADD CONSTRAINT `kurir_ibfk_1` FOREIGN KEY (`Kurir_ID`) REFERENCES `pesanan` (`ID_Pesanan`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`Pembayaran_ID`) REFERENCES `admin` (`Admin_ID`);

--
-- Ketidakleluasaan untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`ID_Pesanan`) REFERENCES `customer` (`Customer_ID`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`ID_Pegawai`) REFERENCES `admin` (`Admin_ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
