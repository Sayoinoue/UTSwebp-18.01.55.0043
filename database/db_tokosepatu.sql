-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2024 at 10:01 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tokosepatu`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$AIy0X1Ep6alaHDTofiChGeqq7k/d1Kc8vKQf1JZo0mKrzkkj6M626');

-- --------------------------------------------------------

--
-- Table structure for table `bom_produk`
--

CREATE TABLE `bom_produk` (
  `kode_bom` varchar(100) NOT NULL,
  `kode_bk` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `kebutuhan` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bom_produk`
--

INSERT INTO `bom_produk` (`kode_bom`, `kode_bk`, `kode_produk`, `nama_produk`, `kebutuhan`) VALUES
('B0001', 'M0002', 'P0001', 'Roti Sobek', '2'),
('B0001', 'M0001', 'P0001', 'Roti Sobek', '4'),
('B0001', 'M0004', 'P0001', 'Roti Sobek', '3'),
('B0002', 'M0001', 'P0002', 'Maryam', '4'),
('B0002', 'M0004', 'P0002', 'Maryam', '3'),
('B0002', 'M0003', 'P0002', 'Maryam', '2'),
('B0003', 'M0002', 'P0003', 'Kue tart coklat', '2'),
('B0003', 'M0003', 'P0003', 'Kue tart coklat', '5'),
('B0003', 'M0005', 'P0003', 'Kue tart coklat', '5'),
('B0004', 'M0001', 'P0004', 'Slip-Ins Delson 3.0 Men Sneakers', '1'),
('B0005', 'M0001', 'P0005', 'LAVIOLA SNEAKERS - WOMEN', '1'),
('B0006', 'M0001', 'P0006', 'Aerostreet 37-44 Jhosse Low', '1');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `kode_customer` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `telp` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`kode_customer`, `nama`, `email`, `username`, `password`, `telp`) VALUES
('C0001', 'Ardi', 'ardiriz@gmail.com', 'Ardi', '$2y$10$Q7I3swQiT46uWR4TbWmcEOBm18hzU7PS8onNr38AjcZF4LCMxGrZW', '089686866018');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `kode_bk` varchar(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `satuan` varchar(200) NOT NULL,
  `harga` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`kode_bk`, `nama`, `qty`, `satuan`, `harga`, `tanggal`) VALUES
('M0001', 'Tepung', '72', 'Kg', 1000, '2020-07-26'),
('M0002', 'Pengembang', '0', 'Kg', 1000, '2020-07-27'),
('M0003', 'Cream', '15', 'Kg', 3000, '2020-07-26'),
('M0004', 'Keju', '79', 'Kg', 4000, '2020-07-26'),
('M0005', 'Coklat', '0', 'Kg', 5000, '2020-07-27');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `kode_customer` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id_keranjang`, `kode_customer`, `kode_produk`, `nama_produk`, `qty`, `harga`) VALUES
(16, 'C0003', 'P0002', 'Maryam', 5, 15000),
(17, 'C0003', 'P0003', 'Kue tart coklat', 2, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `kode_produk` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`kode_produk`, `nama`, `image`, `deskripsi`, `harga`) VALUES
('P0001', 'ADIDAS CAMPUS', 'CAMPUS.jpg', '	Evolusi desain era \'80-an yang ikonis, sepatu adidas ini memiliki bentuk dan proporsi yang diperbarui untuk memberikan tampilan tersendiri. Bahan suede, kanvas, dan kulit premium dikombinasikan untuk menghasilkan style yang terinspirasi pakaian kerja yang siap digunakan dalam petualangan apa pun. Eyelet berbahan metal dan heel tab berbahan kulit menjadi pengingat akan desain orisinal, dan outsole berbahan karet dapat diandalkan untuk aktivitas apa pun. Melangkah dengan style klasik adidas Originals. Campus yang menciptakan tren.\r\n\r\nSpesifikasi : Fit reguler, Upper berbahan kanvas, kulit, dan suede dengan lapisan lilin, Outsole berbahan karet, Menggunakan tali sepatu, Lining dari bahan tekstil, Kode produk: IF8766																		', 1000000),
('P0002', 'ADIDAS RUNNING', '67285afa458b7.jpg', 'Berlari sedikit lebih jauh dan pacu sedikit lebih cepat dalam setiap sesi lari. Sepatu running adidas ini membantumu mencapai target dengan sensasi elastis bantalan Bounce 2.0 di bagian bawah kaki. Upper berbahan mesh membuat kakimu tetap sejuk dan nyaman dari awal hingga akhir, dan outsole berdaya cengkeram artinya kamu dapat melangkah dengan percaya diri saat membangun daya tahan. Produk ini mengandung sedikitnya 20% material daur ulang. Dengan menggunakan kembali material yang telah dibuat, kami membantu mengurangi limbah dan ketergantungan kita pada sumber daya terbatas dan mengurangi jejak karbon dari produk yang kita buat. Spesifikasi : Fit reguler, Upper dengan konstruksi mesh, Sockliner OrthoLite®, Midsole drop: 10 mm (tumit 35 mm / forefoot 25 mm), Menggunakan tali sepatu, Lining dari bahan tekstil, Midsole Bounce 2.0, Kode produk: IE8792', 850000),
('P0003', 'ADIDAS F50 GOLD', '67285dd6696f1.jpg', 'F50 speed, Messi style. In 2024, Lionel Messi range of adidas football boots are crafted to match his preferences even more closely. The flexible HybridTouch upper on these F50 League boots includes a synthetic tongue for lightweight comfort. Underneath, a Sprintplate 360 outsole offers propulsion on multiple surfaces. This product features at least 20% recycled materials. By reusing materials that have already been created, we help to reduce waste and our reliance on finite resources and reduce the footprint of the products we make. SPESIFIKASI : Regular fit, HybridTouch upper, Sprintplate 360 firm/multi-ground outsole, Lace closure, Lightweight synthetic tongue, Product code: IG9274', 1200000),
('P0004', 'Slip-Ins Delson 3.0 Men Sneakers', '67285f8e0c40a.jpg', 'Sepatu kets slipin kanvas Moc Toe. \r\nMengenai Ukuran: Selisih 1-2 cm mungkin terjadi dikarenakan proses pengembangan dan produksi. Mengenai Warna: Warna sesungguhnya mungkin dapat berbeda. Hal ini dikarenakan setiap layar memiliki kemampuan yang berbeda-beda untuk menampilkan warna, kami tidak dapat menjamin bahwa warna yang Anda lihat adalah warna akurat dari produk tersebut.\r\n			', 800000),
('P0005', 'LAVIOLA SNEAKERS - WOMEN', '672888c032e72.jpg', 'Sepatu Sneakers adalah sepatu yang dirancang untuk Olahraga atau bentuk latihan fisik lainnya. Tetapi saat ini juga banyak digunakan untuk kegiatan sehari-hari. Sneakers merupakan jenis sepatu dengan sol fleksibel yang terbuat dari karet dan bagian atas bahan sintetis. Spesifikasi : Bahan Upper : Pu Sintetis, Outsole : TPR, Ukuran : 36 - 37 - 38 - 39 - 40, Warna : Beige - Green, Tinggi : 4cm Kode : 3953 LSB\r\n			', 250000),
('P0006', 'Aerostreet 37-44 Jhosse Low', '67288b154b2d5.jpg', 'Sepatu sneakers casual sport Aerostreet adalah pilihan yang ideal untuk pria dan wanita yang mencari kombinasi antara gaya kasual sehari-hari dan kenyamanan sepatu olahraga. Dirancang untuk kegiatan sehari-hari di sekolah, sepatu ini menawarkan kombinasi yang tepat antara gaya dan fungsi. Material yang digunakan umumnya ringan namun tahan lama, sehingga nyaman dipakai sepanjang hari tanpa mengorbankan daya tahan. Sol sepatu biasanya didesain untuk memberikan cengkeraman yang baik di permukaan indoor dan outdoor ringan, seperti di lingkungan sekolah atau saat beraktivitas di luar ruangan secara santai. Proses vulkanisasi dimana sol luar sepatu diciptakan ketika karetnya masih lembut dan ditempel melingkar mengikuti bentuk sepatu. Bahan : Canvas\r\n			', 180000);

-- --------------------------------------------------------

--
-- Table structure for table `produksi`
--

CREATE TABLE `produksi` (
  `id_order` int(11) NOT NULL,
  `invoice` varchar(200) NOT NULL,
  `kode_customer` varchar(200) NOT NULL,
  `kode_produk` varchar(200) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `tanggal` date NOT NULL,
  `provinsi` varchar(200) NOT NULL,
  `kota` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `kode_pos` varchar(200) NOT NULL,
  `terima` varchar(200) NOT NULL,
  `tolak` varchar(200) NOT NULL,
  `cek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produksi`
--

INSERT INTO `produksi` (`id_order`, `invoice`, `kode_customer`, `kode_produk`, `nama_produk`, `qty`, `harga`, `status`, `tanggal`, `provinsi`, `kota`, `alamat`, `kode_pos`, `terima`, `tolak`, `cek`) VALUES
(8, 'INV0001', 'C0002', 'P0003', 'Kue tart coklat', 1, 100000, 'Pesanan Baru', '2020-07-27', 'Jawa Timur', 'Surabaya', 'Jl.Tanah Merah Indah 1', '60129', '2', '1', 1),
(9, 'INV0002', 'C0002', 'P0001', 'Roti Sobek', 3, 10000, 'Pesanan Baru', '2020-07-27', 'Jawa Barat', 'Bandung', 'Jl.Jati Nangor Blok C, 10', '30712', '0', '0', 1),
(10, 'INV0003', 'C0003', 'P0002', 'Maryam', 2, 15000, '0', '2020-07-27', 'Jawa Tengah', 'Yogyakarta', 'Jl.Malioboro, Blok A 10D', '30123', '1', '0', 0),
(11, 'INV0003', 'C0003', 'P0003', 'Kue tart coklat', 1, 100000, '0', '2020-07-27', 'Jawa Tengah', 'Yogyakarta', 'Jl.Malioboro, Blok A 10D', '30123', '1', '0', 0),
(12, 'INV0003', 'C0003', 'P0001', 'Roti Sobek', 1, 10000, '0', '2020-07-27', 'Jawa Tengah', 'Yogyakarta', 'Jl.Malioboro, Blok A 10D', '30123', '1', '0', 0),
(13, 'INV0004', 'C0004', 'P0002', 'Maryam', 1, 15000, 'Pesanan Baru', '2020-07-26', 'Jawa Timur', 'Sidoarjo', 'Jl.KH Syukur Blok C 18 A', '50987', '0', '0', 0),
(14, 'INV0005', 'C0001', 'P0002', 'ADIDAS RUNNING', 1, 850000, '0', '2424-11-04', '', '', '', '', '1', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `report_cancel`
--

CREATE TABLE `report_cancel` (
  `id_report_cancel` int(11) NOT NULL,
  `id_order` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_inventory`
--

CREATE TABLE `report_inventory` (
  `id_report_inv` int(11) NOT NULL,
  `kode_bk` varchar(100) NOT NULL,
  `nama_bahanbaku` varchar(100) NOT NULL,
  `jml_stok_bk` int(11) NOT NULL,
  `tanggal` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_omset`
--

CREATE TABLE `report_omset` (
  `id_report_omset` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_omset` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report _penjualan`
--

CREATE TABLE `report _penjualan` (
  `id_report_sell` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `jumlah_terjual` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_produksi`
--

CREATE TABLE `report_produksi` (
  `id_report_prd` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_profit`
--

CREATE TABLE `report_profit` (
  `id_report_profit` int(11) NOT NULL,
  `kode_bom` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `jumlah` varchar(11) NOT NULL,
  `total_profit` varchar(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`kode_customer`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`kode_bk`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`kode_produk`);

--
-- Indexes for table `produksi`
--
ALTER TABLE `produksi`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `report_cancel`
--
ALTER TABLE `report_cancel`
  ADD PRIMARY KEY (`id_report_cancel`);

--
-- Indexes for table `report_inventory`
--
ALTER TABLE `report_inventory`
  ADD PRIMARY KEY (`id_report_inv`);

--
-- Indexes for table `report_omset`
--
ALTER TABLE `report_omset`
  ADD PRIMARY KEY (`id_report_omset`);

--
-- Indexes for table `report _penjualan`
--
ALTER TABLE `report _penjualan`
  ADD PRIMARY KEY (`id_report_sell`);

--
-- Indexes for table `report_produksi`
--
ALTER TABLE `report_produksi`
  ADD PRIMARY KEY (`id_report_prd`);

--
-- Indexes for table `report_profit`
--
ALTER TABLE `report_profit`
  ADD PRIMARY KEY (`id_report_profit`),
  ADD UNIQUE KEY `kode_bom` (`kode_bom`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `produksi`
--
ALTER TABLE `produksi`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `report_cancel`
--
ALTER TABLE `report_cancel`
  MODIFY `id_report_cancel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_inventory`
--
ALTER TABLE `report_inventory`
  MODIFY `id_report_inv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_omset`
--
ALTER TABLE `report_omset`
  MODIFY `id_report_omset` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report _penjualan`
--
ALTER TABLE `report _penjualan`
  MODIFY `id_report_sell` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_produksi`
--
ALTER TABLE `report_produksi`
  MODIFY `id_report_prd` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_profit`
--
ALTER TABLE `report_profit`
  MODIFY `id_report_profit` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
