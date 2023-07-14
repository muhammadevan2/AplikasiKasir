-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2023 at 12:44 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minimarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(66) DEFAULT NULL,
  `harga_satuan` int(11) NOT NULL,
  `stok_barang` int(11) NOT NULL,
  `supplier_id_supplier` varchar(10) NOT NULL,
  `jenis_id_jenis` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `harga_satuan`, `stok_barang`, `supplier_id_supplier`, `jenis_id_jenis`) VALUES
('brs001', 'Beras Kepala Super 5kg', 64000, 7, 'SPL015', 'JN006'),
('brs002', 'Beras Pulen Wangi 5kg', 64000, 13, 'SPL015', 'JN006'),
('brs003', 'Beras Kristal Pulen 5kg', 64000, 7, 'SPL015', 'JN006'),
('brs004', 'Beras Pandan Wangi 5kg', 85000, 7, 'SPL015', 'JN006'),
('brs005', 'Beras Ramos', 64000, 7, 'SPL015', 'JN006'),
('brs006', 'Beras Ketan Hitam 500g', 18000, 10, 'SPL015', 'JN006'),
('brs007', 'Beras Ketan Putih 500g', 15000, 10, 'SPL015', 'JN006'),
('mgr001', 'Fortune 2L', 36500, 5, 'SPL016', 'JN007'),
('mgr002', 'Filma 2L', 36000, 5, 'SPL016', 'JN007'),
('mgr003', 'Bimoli 1L', 21500, 5, 'SPL016', 'JN007'),
('mgr004', 'Bimoli 2L', 40000, 5, 'SPL016', 'JN007'),
('mgr005', 'Tropical 2L', 36000, 5, 'SPL016', 'JN007'),
('mgr006', 'Sonia 1L', 18000, 5, 'SPL016', 'JN007'),
('mgr007', 'Sonia 2L', 36500, 5, 'SPL016', 'JN007'),
('mie001', 'SAMYANG Hot Chiken Ramen Carbonara', 20000, 10, 'SPL017', 'JN009'),
('mie002', 'SAMYANG Hot Chiken Nuclear 2x Spicy', 25000, 10, 'SPL017', 'JN009'),
('mie003', 'Indomie Goreng', 2995, 10, 'SPL016', 'JN009'),
('mie004', 'Indomie Kuah Soto', 2999, 15, 'SPL016', 'JN009'),
('mie005', 'Indomie Ayam Bawang', 2900, 20, 'SPL016', 'JN009'),
('mie006', 'Mie Sedaap Goreng', 3200, 15, 'SPL016', 'JN009'),
('mie007', 'Mie Sedaap Cup Korean Spicy', 5000, 10, 'SPL016', 'JN009'),
('mie008', 'SuperMi Ayam Bawang', 2500, 15, 'SPL016', 'JN009'),
('mie009', 'Nongshin Shin Ramyun', 12000, 7, 'SPL017', 'JN009'),
('mie010', 'Lemonilo Mie Goreng', 7500, 7, 'SPL018', 'JN009'),
('sbncm001', 'Emina Bright Stuff Face Wash 100ml', 30000, 20, 'SPL006', 'JN003'),
('sbncm002', 'Emina Bright Stuff For Acne Prone Skin 100ml', 34000, 20, 'SPL006', 'JN003'),
('sbncm003', 'Garnier Sakura White Whip Foam', 15900, 20, 'SPL007', 'JN003'),
('sbncm004', 'Warda Hydra Rose Gel-To-Foam Cleanser', 31200, 15, 'SPL008', 'JN003'),
('sbncm005', 'La Roche Posay Effaclar Foaming Gel Cleanser 50ml', 35000, 15, 'SPL007', 'JN003'),
('sbncm006', 'Cetaphil Gentle Skin Cleanser 125ml', 34990, 15, 'SPL009', 'JN003'),
('sbncm007', 'Warda Lightening Gentle Wah 60ml', 75000, 10, 'SPL008', 'JN003'),
('sbncm008', 'Ponds Bright Boost Brightening + Anti Dark Spot Facial Scrub', 32700, 3, 'SPL001', 'JN003'),
('sbncm009', 'Ponds Pure Bright Deep Cleansing Facial Foam', 31100, 10, 'SPL001', 'JN003'),
('sbncp001', 'Refill Sunlight Lime 460ml', 8500, 15, 'SPL001', 'JN002'),
('sbncp002', 'Refill Mama Lemon Jeruk Nipis 680ml', 9500, 15, 'SPL005', 'JN002'),
('sbncp003', 'Refill Ekonomi Power Liquid 650ml', 8500, 15, 'SPL005', 'JN002'),
('sbnm001', 'Refill Biore Body Foam 450ml', 30000, 10, 'SPL001', 'JN001'),
('sbnm002', 'Refill Dove Body Wash 400ml', 40000, 20, 'SPL001', 'JN001'),
('sbnm003', 'Refill Dettol Body Wash 410g', 35000, 20, 'SPL002', 'JN001'),
('sbnm004', 'Refill Lux Sabun Mandi Cair 400ml', 20000, 20, 'SPL001', 'JN001'),
('sbnm005', 'Refill Shinzui Body Cleanser 400ml', 20000, 20, 'SPL003', 'JN001'),
('sbnm006', 'Refill Lifebuoy Sabun mandi 450g', 19000, 20, 'SPL001', 'JN001'),
('sbnm007', 'Refill Zwitsal Baby Bath Natural 450ml', 30000, 20, 'SPL001', 'JN001'),
('sbnm008', 'Refill Cussons Baby Hair & Body Wash 750ml', 42500, 20, 'SPL004', 'JN001'),
('shmp001', 'Head & Shoulders Supreme Anti Hair Fall', 23900, 20, 'SPL010', 'JN004'),
('shmp002', 'Natur Extract Ginseng', 15300, 15, 'SPL011', 'JN004'),
('shmp003', 'Tresemme Keratin Smooth', 18500, 20, 'SPL001', 'JN004'),
('shmp004', 'Tresemme Scalp Care', 30500, 20, 'SPL001', 'JN004'),
('shmp005', 'CLEAR Anti Ketombe Ice Cool Menthol', 15500, 15, 'SPL001', 'JN004'),
('shmp006', 'Dove Total Damage Treatment', 17990, 15, 'SPL001', 'JN004'),
('shmp007', 'Pantene Anti Lepek', 15000, 10, 'SPL010', 'JN004'),
('shmp008', 'Sunsilk Soft & Smooth', 16999, 5, 'SPL001', 'JN004'),
('shmp009', 'Loreal Fall Resist 3x Anti-Hair Fall', 28500, 5, 'SPL007', 'JN004'),
('skl001', 'Wipol Pembersih Lantai Karbol Cemara Refill 410ml', 7740, 20, 'SPL012', 'JN005'),
('skl002', 'Wipol Karbol Pembersih Lantai Cemara Botol 450ml', 23500, 20, 'SPL012', 'JN005'),
('skl003', 'SOS. Cairan Pembersih Lantai Wangi Refill 4 liter', 55500, 15, 'SPL013', 'JN005'),
('skl004', 'Biosol Pouch Pembersih Lantai Regular Karbol 400ml', 8900, 15, 'SPL014', 'JN005'),
('skl005', 'SOS. Refill Karbol Lantai 700ml', 10999, 20, 'SPL013', 'JN005'),
('skm001', 'Enak Putih 545g', 17500, 7, 'SPL016', 'JN008'),
('skm002', 'Frisian Flag Gold Putih 280g', 13400, 7, 'SPL016', 'JN008'),
('skm003', 'Frisian Flag Putih 280g', 10500, 10, 'SPL016', 'JN008'),
('skm004', 'Frisian Flag Coklat 280g', 10500, 7, 'SPL016', 'JN008'),
('skm005', 'Indomilk Choco 545g', 16000, 7, 'SPL016', 'JN008');

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `id_jenis` varchar(10) NOT NULL,
  `jenis_umum` varchar(33) NOT NULL,
  `jenis_barang` varchar(33) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id_jenis`, `jenis_umum`, `jenis_barang`) VALUES
('JN001', 'perawatan tubuh', 'sabun mandi'),
('JN002', 'kebersihan', 'sabun cuci piring'),
('JN003', 'perawatan tubuh', 'sabun cuci muka'),
('JN004', 'perawatan tubuh', 'shampo'),
('JN005', 'kebersihan', 'karbol lantai'),
('JN006', 'pakan', 'beras'),
('JN007', 'pakan', 'minyak goreng'),
('JN008', 'minuman', 'susu kental manis'),
('JN009', 'pakan', 'Mie Instan');

-- --------------------------------------------------------

--
-- Table structure for table `kasir`
--

CREATE TABLE `kasir` (
  `id_kasir` varchar(10) NOT NULL,
  `nama_kasir` varchar(33) NOT NULL,
  `alamat_kasir` varchar(200) NOT NULL,
  `telp_kasir` varchar(14) NOT NULL,
  `petugas_id_petugas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kasir`
--

INSERT INTO `kasir` (`id_kasir`, `nama_kasir`, `alamat_kasir`, `telp_kasir`, `petugas_id_petugas`) VALUES
('KSR001', 'Muhammad Evan Satriagra', 'Semarang', '0856-0856-0856', 'PTG003'),
('KSR002', 'Riski Ramadhani Putradi', 'Semarang', '08960-0896-089', 'PTG004');

-- --------------------------------------------------------

--
-- Table structure for table `keluar`
--

CREATE TABLE `keluar` (
  `id_keluar` int(11) NOT NULL,
  `stok_keluar` int(11) NOT NULL,
  `transaksi_id_transaksi` int(11) NOT NULL,
  `barang_id_barang` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keluar`
--

INSERT INTO `keluar` (`id_keluar`, `stok_keluar`, `transaksi_id_transaksi`, `barang_id_barang`) VALUES
(2, 3, 2257, 'sbnm001'),
(3, 2, 5645, 'sbnm001'),
(4, 4, 5645, 'sbnm004'),
(5, 2, 10007, 'sbnm002'),
(6, 23, 10007, 'sbnm005'),
(7, 2, 10007, 'sbnm007'),
(8, 2, 31320, 'sbnm007'),
(9, 2, 31320, 'sbnm007'),
(10, 2, 31320, 'sbnm006');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` varchar(10) NOT NULL,
  `nama_petugas` varchar(33) NOT NULL,
  `username` varchar(33) NOT NULL,
  `password` varchar(33) NOT NULL,
  `jabatan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `jabatan`) VALUES
('PTG001', 'ADMIN', 'admin', 'admin', 'Kepala Toko'),
('PTG002', 'Fransiskus Astha Adji Nugraha', 'adji', '13549', 'Stok Barang'),
('PTG003', 'Muhammad Evan Satriagra', 'evan', '13512', 'Kasir1'),
('PTG004', 'Riski Ramadhani Putradi', 'rama', '13939', 'Kasir2');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` varchar(10) NOT NULL,
  `nama_supplier` varchar(33) NOT NULL,
  `alamat_supplier` varchar(333) DEFAULT NULL,
  `telp_supplier` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `alamat_supplier`, `telp_supplier`) VALUES
('SPL001', 'PT Unilever Indonesia Tbk', 'Jl. Jend. Gatot Subroto Kav. 15, Jakarta Selatan', '217982245'),
('SPL002', 'PT Reckitt Benckiser Indonesia', 'Jl. Jend. Sudirman Kav 52-53, Kebayoran Baru, Jakarta Selatan', '2150857100'),
('SPL003', 'PT Amerta Indah Otsuka', 'Jl. RS Fatmawati No. 15, Jakarta 12420', '315678789'),
('SPL004', 'PT PZ Cussons Indonesia', 'Jl. Jababeka IV Blok F No. 23-25, Kawasan Industri Jababeka, Cikarang, Bekasi 17530', '215523472'),
('SPL005', 'PT Wings Surya', 'Jl. Raya Surabaya-Malang Km. 48, Kec. Krian, Sidoarjo, Jawa Timur 61262', '2146826566'),
('SPL006', 'PT. Kamaya Cosmetics', 'Jl. Rawa Gelam V Kav. OR/3, Kawasan Industri Pulogadung, Jakarta Timur', '293363915'),
('SPL007', 'PT. LOreal Indonesia', 'Jl. Jend. Gatot Subroto Kav. 64 No. 68, Jakarta Selatan', '021460 7756'),
('SPL008', 'PT Paragon Techno & Innovation', 'Jl. Pemuda No. 27, Rawamangun, Jakarta Timur', '021799 5011'),
('SPL009', 'PT. Galenium Pharmasia Lab.', 'Jl. Raya Bogor KM. 36, Ciracas, Jakarta Timur', '2129837000'),
('SPL010', 'PT. Procter&Gamble H.P.Indonesia', 'Wisma 46 - Kota BNI, Jl. Jend. Sudirman Kav. 1, Jakarta Selatan', '0218470 8485'),
('SPL011', 'PT. Stiefel Laboratories Indonesi', 'Jl. Bulevar Kelapa Gading Blok A No. 2A, Jakarta Utara', '021572 4000'),
('SPL012', 'PT Unza Vitalis', 'Jl. Cideng Timur No. 51, Jakarta Pusat', '0214584 9925'),
('SPL013', 'PT Lion Wings', 'Jl. Raya Bogor KM 47, Cilangkap, Jakarta Timur', '62 21 3842931'),
('SPL014', 'PT Indo Beras Unggul', 'Jl. Mangga Besar VIII No. 30, Jakarta Barat 11180', '62 21 8401020'),
('SPL015', 'PT Dwi Karya Sejati', 'Jl. Raya Bekasi Km 21 No. 11-12, Jakarta Timur', '62 21 6263066'),
('SPL016', 'PT Indofood CBP Sukses Makmur Tbk', 'Jl. Puri Kencana No. 1, Meruya Utara, Kembangan, Jakarta Barat 11610', '62 21 46833970'),
('SPL017', 'PT Nongshim Indonesia', 'Jl. Puri Kencana No. 1, Meruya Utara, Kembangan, Jakarta Barat 11610', '62 21 6263066'),
('SPL018', 'PT Lemondrop Foodtech Indonesia', 'Jl. Pangeran Antasari No. 36, Kebayoran Baru, Jakarta Selatan 12150, Indonesia', '62 21 5822555');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `total_harga` int(11) NOT NULL,
  `kasir_id_kasir` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `tanggal_transaksi`, `total_harga`, `kasir_id_kasir`) VALUES
(1, '0000-00-00', 124000, 'KSR001'),
(449, '2023-07-14', 0, 'KSR001'),
(1101, '2023-07-14', 0, 'KSR001'),
(1208, '2023-07-14', 0, 'KSR001'),
(1353, '2023-07-14', 0, 'KSR001'),
(1433, '2023-07-14', 0, 'KSR001'),
(1528, '2023-07-14', 0, 'KSR001'),
(1707, '2023-07-14', 0, 'KSR001'),
(1932, '2023-07-14', 0, 'KSR001'),
(2035, '2023-07-14', 0, 'KSR001'),
(2111, '2023-07-14', 0, 'KSR001'),
(2257, '2023-07-14', 0, 'KSR001'),
(5645, '2023-07-14', 140000, 'KSR001'),
(10007, '2023-07-14', 600000, 'KSR001'),
(31320, '2023-07-14', 158000, 'KSR002');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `barang_jenis_fk` (`jenis_id_jenis`),
  ADD KEY `barang_supplier_fk` (`supplier_id_supplier`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`id_kasir`),
  ADD KEY `kasir_petugas_fk` (`petugas_id_petugas`);

--
-- Indexes for table `keluar`
--
ALTER TABLE `keluar`
  ADD PRIMARY KEY (`id_keluar`),
  ADD KEY `keluar_barang_fk` (`barang_id_barang`),
  ADD KEY `keluar_transaksi_fk` (`transaksi_id_transaksi`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `transaksi_kasir_fk` (`kasir_id_kasir`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keluar`
--
ALTER TABLE `keluar`
  MODIFY `id_keluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31321;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_jenis_fk` FOREIGN KEY (`jenis_id_jenis`) REFERENCES `jenis` (`id_jenis`),
  ADD CONSTRAINT `barang_supplier_fk` FOREIGN KEY (`supplier_id_supplier`) REFERENCES `supplier` (`id_supplier`);

--
-- Constraints for table `kasir`
--
ALTER TABLE `kasir`
  ADD CONSTRAINT `kasir_petugas_fk` FOREIGN KEY (`petugas_id_petugas`) REFERENCES `petugas` (`id_petugas`);

--
-- Constraints for table `keluar`
--
ALTER TABLE `keluar`
  ADD CONSTRAINT `keluar_barang_fk` FOREIGN KEY (`barang_id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `keluar_transaksi_fk` FOREIGN KEY (`transaksi_id_transaksi`) REFERENCES `transaksi` (`id_transaksi`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_kasir_fk` FOREIGN KEY (`kasir_id_kasir`) REFERENCES `kasir` (`id_kasir`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
