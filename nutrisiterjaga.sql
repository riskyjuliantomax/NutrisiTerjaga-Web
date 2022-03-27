-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Feb 2021 pada 17.05
-- Versi server: 5.5.28
-- Versi PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nutrisiterjaga`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `Admin_name` varchar(20) NOT NULL,
  `admin_password` varchar(30) NOT NULL,
  `admin_namalengkap` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `provinsi` varchar(50) DEFAULT NULL,
  `kabupaten` varchar(50) DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `nohp` varchar(12) DEFAULT NULL,
  `alamat` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `Admin_name`, `admin_password`, `admin_namalengkap`, `email`, `provinsi`, `kabupaten`, `kecamatan`, `nohp`, `alamat`) VALUES
(1, 'risky@admin', 'risky', 'Risky Julianto', 'risky@admin_nutrisiterjaga.com', 'Riau', 'Bengkalis', 'Bukit Batu', '082384590587', 'Jl.Giam Gg.Giam'),
(4, 'aldissa@admin', 'aldissa', 'Aldisa Prisilia Putri ', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'rista@admin', 'rista', 'Rista Rahma Putri', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'septiya@admin', 'septiya', 'Septiya Ningsih Br Ginting', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'kevin@admin', 'kevin', 'Kevin Ihsan Ramadhan', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `userid` varchar(10) NOT NULL,
  `judul` tinytext NOT NULL,
  `isi` longtext NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `notifikasi` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mail_balas`
--

CREATE TABLE `mail_balas` (
  `id` int(11) NOT NULL,
  `userid` varchar(10) NOT NULL,
  `judul` mediumtext NOT NULL,
  `isi` text NOT NULL,
  `status` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `id_produk` varchar(5) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `jumlah` varchar(5) NOT NULL,
  `jammenit` varchar(20) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `id_produk`, `harga`, `jumlah`, `jammenit`, `userid`) VALUES
(59, '6', '2000', '1', '21 1 32', 13),
(60, '1', '5000', '4', '21 1 32', 13),
(61, '3', '2000', '4', '11 7 9', 14),
(62, '9', '2000', '4', '11 7 9', 14),
(63, '2', '6000', '1', '11 24 59', 14);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran_user`
--

CREATE TABLE `pembayaran_user` (
  `id` int(11) NOT NULL,
  `namadepan` varchar(50) NOT NULL,
  `namabelakang` varchar(50) NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `tmp_tinggal` varchar(20) NOT NULL,
  `kota` varchar(20) NOT NULL,
  `kabpro` varchar(50) NOT NULL,
  `kodepos` int(10) NOT NULL,
  `catatan` text NOT NULL,
  `metodepembayaran` varchar(20) NOT NULL,
  `totalharga` int(10) NOT NULL,
  `tgl_beli` date NOT NULL,
  `jammenit` varchar(10) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran_user`
--

INSERT INTO `pembayaran_user` (`id`, `namadepan`, `namabelakang`, `nohp`, `alamat`, `tmp_tinggal`, `kota`, `kabpro`, `kodepos`, `catatan`, `metodepembayaran`, `totalharga`, `tgl_beli`, `jammenit`, `userid`) VALUES
(45, 'Risky', ' Julianto', '082384590587', 'Jl.Bambu Kuning', 'Rumah', 'PekanBaru', 'Riau', 28761, 'Secepatnya', 'Mandiri', 22000, '2021-02-08', '21 1 32', 13),
(46, 'Risky', 'UserTester', '0812345678', 'jl.riau ', 'rumah', 'pekanbaru', 'riau / bengkalis', 28771, 'asdaseqweasdqwreqweqweqwe', 'BNI', 16000, '2021-02-09', '11 7 9', 14),
(47, 'Brokoli Test', 'Testerbelakang', '08132456789', 'jl.brokoli', 'Pohon', 'Yuhu', 'Provoyu', 771254, 'asdsadqweqweq', 'BRI', 6000, '2021-02-09', '11 24 59', 14);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `jenis` varchar(11) NOT NULL,
  `stok` varchar(15) NOT NULL,
  `lokasi_gambar` varchar(50) NOT NULL,
  `deskripsi` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `nama`, `satuan`, `harga`, `jenis`, `stok`, `lokasi_gambar`, `deskripsi`) VALUES
(1, 'Kol', 'KG', '5000', 'Sayur', '7', 'sayur/kol.jpg', 'Kol Adalah'),
(2, 'Brokoli', 'KG', '6000', 'Sayur', '5', 'sayur/brokoli.jpg', 'Brokoli merupakan tanaman yang hidup pada cuaca dingin.\r\n\r\nSebagai makanan, brokoli biasanya direbus atau dikukus, atau dapat pula dimakan mentah. Cara terbaik dalam mengolah brokoli adalah dengan cara dikukus. Hal ini bertujuan agar segala vitamin dan nutrisi penting di dalamnya tidak hilang selama proses pemasakan. Merebus brokoli akan menghilangkan sekitar 50 % asam folat yang terkandung di dalamnya. Oleh karena itu, jika ingin mengolah brokoli dengan cara direbus, sebaiknya brokoli tidak direbus terlalu lama, kira-kira tidak lebih dari 5 menit. Brokoli mengandung vitamin C dan serat makanan dalam jumlah banyak. Brokoli juga mengandung senyawa glukorafanin, yang merupakan bentuk alami senyawa antikanker sulforafana (sulforaphane). Selain itu, brokoli mengandung senyawaan isotiosianat yang, sebagaimana sulforafana, ditengarai memiliki aktivitas antikanker'),
(3, 'Daun Singkong', 'IKAT', '2000', 'Sayur', '1', 'sayur/daunsingkong.jpg', 'Singkong memberikan segudang manfaat bagi kesehatan tubuh maupun kecantikan kulit. Namun tak hanya umbinya saja, daun singkong juga banyak diolah menjadi berbagai menu masakan mulai dari lalapan, hingga aneka sayuran daun singkong.\r\n\r\nSelain menjadi santapan, banyak orang Indonesia juga memetik daun singkong untuk memelihara kesehatan dan mengatasi berbagai penyakit.\r\n\r\nDaun singkong mengandung nutrisi penting termasuk vitamin, protein, mineral dan asam amino alami, yang mana semuanya mengandung masing-masing manfaat.\r\n\r\nProtein yang terkandung dalam daun singkong bermanfaat membentuk sel tubuh dan melancarkan sistem enzim dalam tubuh. Selain itu, masih banyak manfaat daun singkong lainnya untuk kesehatan tubuh.'),
(4, 'Kankung', 'IKAT', '2000', 'Sayur', '6', 'sayur/kankung.jpg', 'Kankung adalah sayur ....'),
(5, 'Kembang Kol', 'KG', '5000', 'Sayur', '1', 'sayur/kembangkol.jpg', 'Kembang Kol adalah'),
(6, 'Kacang Panjang', 'IKAT', '2000', 'Sayur', '0', 'sayur/kacangpanjang.jpg', 'Kacang panjang merupakan tumbuhan yang dijadikan sayur atau lalapan. Ia tumbuh dengan cara memanjat atau melilit. Bagian yang dijadikan sayur atau lalapan adalah buah yang masih muda dan serat-seratnya masih lunak, kacang panjang ini mudah didapati di kawasan panas di Asia. Daunnya disebut dengan lembayung dan dapat dijadikan sayuran hijau.'),
(7, 'Selederi', 'IKAT', '1000', 'Sayur', '40', 'sayur/selederi.jpg', 'eledri (Apium graveolens L.) adalah sayuran daun dan tumbuhan obat yang biasa digunakan sebagai bumbu masakan. Beberapa negara termasuk Jepang, Cina dan Korea mempergunakan bagian tangkai daun sebagai bahan makanan. Di Indonesia tumbuhan ini diperkenalkan oleh penjajah Belanda dan digunakan daunnya untuk menyedapkan sup atau sebagai lalap. Penggunaan seledri paling lengkap adalah di Eropa: daun, tangkai daun, buah, dan umbinya semua dimanfaatkan.'),
(9, 'Sawi', 'IKAT', '2000', 'Sayur', '3', 'sayur/sawi.jpg', 'Sawi adalah sekelompok tumbuhan dari marga Brassica yang dimanfaatkan daun atau bunganya sebagai bahan pangan (sayuran), baik segar maupun diolah. Sawi mencakup beberapa spesies Brassica yang kadang-kadang mirip satu sama lain.'),
(12, 'Apel Fuji', 'KG', '10000', 'Buahan', '20', 'buahan/apelfuji.jpg', 'Apel (Mallus sylvestris Mill) merupakan tanaman buah tahunan yang\r\nberasal dari daerah Asia barat dengan iklim subtropics. Awal tanaman Apel\r\nintroduksi ke Indonesia oleh Belanda masih banyak yang menyasingkan\r\nkemungkinan keberhasilan pertumbuhan buah secara maksimal. '),
(13, 'Duku Tanpa Biji', 'KG', '9000', 'Buahan', '10', 'buahan/dukutanpabiji.jpg', 'Kebun Bibit Duku Tanpa Biji Bibit Tanaman [60 cm] merupakan tanaman buah duku yang memiliki nama ilmiah Lansium domesticum dengan media tanam tanah dan humus. Tanaman ini mudah dirawat, cukup disiram sehari satu kali dan pemupukan sebulan sekali dengan pupuk NPK Daun.'),
(14, 'Jambu Biji', 'KG', '6000', 'Buahan', '20', 'buahan/jambubiji.jpg', 'Jambu biji (Psidium guajava) atau sering juga disebut jambu batu, jambu siki dan jambu klutuk adalah tanaman tropis yang berasal dari Brasil, disebarkan ke Indonesia melalui Thailand. Jambu batu memiliki buah yang berwarna hijau dengan daging buah berwarna putih atau merah dan berasa asam-manis.'),
(15, 'Jeruk', 'KG', '6000', 'Buahan', '20', 'buahan/jeruk.jpg', 'Jeruk atau limau adalah semua tumbuhan berbunga anggota marga Citrus dari suku Rutaceae (suku jeruk-jerukan). Anggotanya berbentuk pohon dengan buah yang berdaging dengan rasa masam yang segar, meskipun banyak di antara anggotanya yang memiliki rasa manis. ... Di Jawa, \"limau\" (atau \"limo\") berarti \"jeruk nipis\".'),
(16, 'Lemon', 'KG', '10000', 'Buahan', '20', 'buahan/lemon.jpg', 'Lemon (Citrus limon) merupakan salah satu famili dari tanaman jeruk yang dikenal dengan nama citrun, buahnya berbentuk lonjong, bulat dengan diameter 5 -7 cm  atau lebih ada tonjolan pada ujungnya, tidak berbji kalau ada biasanya satu atau dua,  warna kulit pada buah yang telah matang berwarna kuning cerah, rasanya asam, sepet, sedikit manis. Lemon lebih populer dalam industri kuliner karena memiliki aroma citrus yang segar dan bagian yang digunakan air perasan dan kulitnya. Dibalik rasanya yang asam jeruk lemon  (Citrus limon)  merupakan tanaman yang sangat bermanfaat bagi kesehatan maupun untuk kecantikan.'),
(17, 'Pisang', 'IKAT', '10000', 'Buahan', '10', 'buahan/pisang.jpg', 'Pisang adalah nama umum yang diberikan pada tumbuhan terna raksasa berdaun besar memanjang dari suku Musaceae. Beberapa jenisnya (Musa acuminata, M. balbisiana, dan M. ×paradisiaca) menghasilkan buah konsumsi yang dinamakan sama. Buah ini tersusun dalam tandan dengan kelompok-kelompok tersusun menjari yang disebut sisir. Hampir semua buah pisang memiliki kulit berwarna kuning ketika matang, meskipun ada beberapa yang berwarna jingga, merah, hijau, ungu, atau bahkan hampir hitam. Buah pisang sebagai bahan pangan merupakan sumber energi (karbohidrat) dan mineral, terutama kalium.'),
(21, 'Anggur', 'KG', '50000', 'Buahan', '20', 'buahan/anggur.jpg', 'Anggur merupakan tanaman buah berupa perdu merambat yang termasuk ke dalam keluarga Vitaceae. ... Buah ini juga dikenal karena mengandung banyak senyawa polifenol dan resveratol yang berperan aktif dalam berbagai metabolisme tubuh, serta mampu mencegah terbentuknya sel kanker dan berbagai penyakit lainnya.'),
(22, 'Alpukat', 'KG', '5000', 'Buahan', '15', 'buahan/alpukat.jpg', 'Alpukat adalah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user` varchar(20) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nohp` varchar(16) NOT NULL,
  `provinsi` varchar(50) DEFAULT NULL,
  `kabupaten` varchar(50) DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kodepos` varchar(10) DEFAULT NULL,
  `alamat` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `user`, `pass`, `email`, `nama`, `nohp`, `provinsi`, `kabupaten`, `kecamatan`, `kodepos`, `alamat`) VALUES
(13, 'user', 'user', 'user@gmail.com', 'User Lengkap', '08123456789', '                                                  ', '    ', '                                                  ', '  123456', '                                                                                                                                                                                                                                                \r\n\r\n\r\n\r\n'),
(14, 'risky', 'risky', 'risky@gmail.com', 'Risky Julianto', '082384590587', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mail_balas`
--
ALTER TABLE `mail_balas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pembayaran_user`
--
ALTER TABLE `pembayaran_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `mail_balas`
--
ALTER TABLE `mail_balas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT untuk tabel `pembayaran_user`
--
ALTER TABLE `pembayaran_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
