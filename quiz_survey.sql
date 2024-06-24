-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Feb 2024 pada 03.39
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idkarier`
--
use idkarier;
create database idkarier;

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `category` varchar(225) NOT NULL,
  `keterangan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id_category`, `id_menu`, `category`, `keterangan`) VALUES
(1, 1, 'Pengelola', 'Berkaitan dengan Pengelola'),
(2, 1, 'Media Sosial', 'Berkaitan dengan Media Sosial'),
(3, 1, 'Organitation Belonging', 'Berkaitan dengan Organitation Belonging'),
(4, 1, 'Administrasi', 'Berkaitan dengan Administrasi'),
(5, 1, 'Event', 'Berkaitan dengan Event'),
(6, 1, 'Pengembangan Diri', 'Berkaitain dengan pengembangan diri'),
(7, 2, 'Data Services', 'Berkaitan dengan Data Services'),
(8, 2, 'Media Partner', 'Berkaitan dengan Media Partner');

-- --------------------------------------------------------

--
-- Struktur dari tabel `feedback`
--

CREATE TABLE `feedback` (
  `id_feedback` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `feedback` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `feedback`
--

INSERT INTO `feedback` (`id_feedback`, `id_user`, `id_category`, `feedback`) VALUES
(1, 2, 1, 'Biasalffah'),
(2, 3, 1, 'saya.sudah mengisi'),
(3, 1, 1, 'FAZZA\n\n'),
(4, 20, 1, 'saya dana'),
(5, 26, 1, 'pengelola\n'),
(6, 26, 6, 'event'),
(7, 26, 2, 'aku bisa\n'),
(8, 29, 7, 'dana123'),
(9, 31, 7, 'mertua123'),
(10, 32, 1, 'turunkan harga diamond\n'),
(11, 29, 1, 'gw dana'),
(12, 33, 1, 'saya pak imam\n'),
(13, 34, 5, 'tambahkan evnt lebih baik lagi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `menu` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id_menu`, `menu`) VALUES
(1, 'Mandatory'),
(2, 'Choice-Based');

-- --------------------------------------------------------

--
-- Struktur dari tabel `question`
--

CREATE TABLE `question` (
  `id_question` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `question` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `question`
--

INSERT INTO `question` (`id_question`, `id_category`, `question`) VALUES
(1, 1, 'Pusat Karier memiliki visi dan misi yang jelas'),
(2, 1, 'Tujuan dari Pusat Karier telah difahami dengan baik oleh seluruh pengguna layanan'),
(3, 1, 'Pusat Karier memberikan layanan konsisten dengan tujuan'),
(4, 1, 'Informasi layanan Pusat Karier mudah diakses'),
(5, 2, 'Konten Media Pusat Karier informatif'),
(6, 2, 'Presentasi Media Pusat Karier Menarik'),
(7, 2, 'Konten Media Pusat Karier mudah dipahami'),
(8, 2, 'Konten Media Pusat Karier sesuai dengan kebutuhan karier'),
(9, 3, 'Saya senang mengikuti sosial media Pusat Karier'),
(10, 3, 'Pusat Karier memberikan layanan yang saya butuhkan untuk mempersiapkan karier di Industri'),
(11, 3, 'Pusat Karier memberikan layanan yang saya butuhkan untuk mempersiapkan karier sebagai Wirausaha'),
(12, 3, 'Pusat Karier memberikan layanan yang saya butuhkan untuk mempersiapkan karier untuk Studi lanjut'),
(13, 3, 'Saya akan merekomendasikan teman untuk menjadi pengikut sosial media Pusat Karier'),
(14, 4, 'Prosedur kerjasama sudah dapat dipahami dengan baik'),
(15, 4, 'Admin Pusat Karier cepat menanggapi e-mail yang masuk'),
(16, 4, 'Pusat Karier mengurus persuratan yang dibutuhkan dengan cepat'),
(17, 5, 'Kegiatan yang dibuat Pusat Karier sesuai dengan kebutuhan mahasiswa dan alumni'),
(18, 5, 'Kegiatan yang diadakan pusat karier relevan dengan perkembangan dunia karier masa kini'),
(19, 5, 'Kegiatan Pusat Karier dapat meningkatkan kemampuan mahasiswa/alumni untuk lebih siap memasuki dunia karier'),
(20, 5, 'Variasi kegiatan Pusat Karier memberikan saya motivasi untuk mempersiapkan karier yang excellent'),
(21, 5, 'Narasumber kegiatan Pusat Karier adalah mereka yang profesional di bidangnya'),
(22, 5, 'Sertifikat keikutsertaan kegiatan Pusat Karier diterima tepat pada waktunya\r\n'),
(23, 5, 'Saya senang mengikuti kegiatan Pusat Karier'),
(24, 6, 'Saya mendapatkan manfaat dari kegiatan yang diselenggarakan Pusat Karier'),
(25, 6, 'Saya mendapatkan alternatif yang cukup memadai untuk meningkatkan pengetahuan dan kompetensi yang saya inginkan'),
(26, 6, 'Saya senang dengan kesempatan yang diberikan Pusat Karier dalam program terstrukturnya'),
(27, 6, 'Saya termotivasi untuk mengembangkan keterampilan baru setelah mengikuti kegiatan Pusat Karier'),
(28, 7, 'Data tracer study mudah diakses prodi'),
(29, 7, 'Pusat Karier merespon cepat kebutuhan data'),
(30, 7, 'Pusat Karier memberikan data yang dibutuhkan'),
(31, 7, 'Pusat Karier memberikan data yang dapat dipertanggungjawabkan'),
(32, 7, 'Pusat Karier memberikan data yang akurat'),
(33, 8, 'Prosedur kerjasama media partner dapat difahami dengan baik'),
(34, 8, 'Pusat Karier menawarkan kerjasama media partner yang fair'),
(35, 8, 'Kerjasama sebagai media partner dengan Pusat Karier memberikan pengaruh positif terhdap kegiatan yang diselenggarakan'),
(38, 8, 'bagaimana  cara mendapatkan 1000 diamond?');

-- --------------------------------------------------------

--
-- Struktur dari tabel `result`
--

CREATE TABLE `result` (
  `id_result` int(11) NOT NULL,
  `result` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `result`
--

INSERT INTO `result` (`id_result`, `result`) VALUES
(1, 'Sangat Setuju'),
(2, 'Setuju'),
(3, 'Tidak Setuju'),
(4, 'Sangat Tidak Setuju');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id_role` int(11) NOT NULL,
  `login_type` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id_role`, `login_type`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `survey`
--

CREATE TABLE `survey` (
  `id_survey` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_question` int(11) NOT NULL,
  `id_result` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `survey`
--

INSERT INTO `survey` (`id_survey`, `id_user`, `id_question`, `id_result`) VALUES
(33, 28, 33, 2),
(34, 28, 34, 3),
(35, 28, 35, 4),
(36, 28, 38, 4),
(37, 29, 28, 1),
(38, 29, 29, 3),
(39, 29, 30, 4),
(40, 29, 31, 4),
(41, 29, 32, 3),
(42, 31, 28, 4),
(43, 31, 29, 4),
(44, 31, 30, 4),
(45, 31, 31, 4),
(46, 31, 32, 4),
(47, 29, 33, 1),
(48, 32, 1, 1),
(49, 32, 2, 2),
(50, 32, 3, 3),
(51, 32, 4, 4),
(52, 29, 1, 2),
(53, 29, 2, 3),
(54, 29, 3, 4),
(55, 29, 4, 1),
(56, 33, 1, 3),
(57, 33, 2, 4),
(58, 33, 3, 1),
(59, 33, 4, 2),
(60, 34, 17, 1),
(61, 34, 18, 2),
(62, 34, 19, 3),
(63, 34, 20, 4),
(64, 34, 21, 1),
(65, 34, 22, 4),
(66, 34, 23, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `firstname` varchar(225) NOT NULL,
  `lastname` varchar(225) NOT NULL,
  `phone` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `id_role` int(11) NOT NULL,
  `profesi` varchar(225) NOT NULL,
  `validasi_one` varchar(225) NOT NULL,
  `validasi_two` varchar(225) NOT NULL,
  `profile_picture` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `firstname`, `lastname`, `phone`, `email`, `username`, `password`, `id_role`, `profesi`, `validasi_one`, `validasi_two`, `profile_picture`) VALUES
(28, 'Risya', 'Dhana', '', '', 'Risyadhana', '$2b$10$cW4ygjnKS0THRm/NJyZ3fuc0K1xF674QPPk15lc7z1wJNhnfszk3y', 2, '', 'makan', 'merah', ''),
(29, 'dana', '123', '', '', 'dana123', '$2b$10$8ae0729ynGVrSyZrToEcO.svlIyWCfRvuLWp849l1Q5uouh67.rri', 2, '', 'ayam', 'biru', ''),
(30, 'admin123', 'admin123', '', '', 'admin123', '$2b$10$4mzACoPMbce/A.kFnRh6uOV03QLZ86cqO2V7mYug/vCJNaJ0B273G', 1, '', 'ayam', 'kuning', ''),
(31, 'mertua', '123', '', '', 'mertua123', '$2b$10$b8Ma2isBL0sKqWNmYsw8k.rG88ymncgMJoNOXlXXU2D0k5OpJUJlS', 2, '', 'ayam', 'biru', ''),
(32, 'kamal', '123', '', '', 'kamal123', '$2b$10$.5FqzIib1PAYCLDF7WproOGzpf3eCHNuaeDrkulu/VM8Jgo7Befgu', 2, '', 'ayam', 'hijau', ''),
(33, 'imam', '123', '', '', 'imam123', '$2b$10$ikJtcSorS1vDr9uIqdaEdu8HF9zgl6pCLKFMhD5bErsbUYsmuhfNm', 2, '', 'ayam', 'hijau', ''),
(34, 'nurul', 'faizah', '', '', 'nurulfaizah', '$2b$10$V5hqqMG6qiLhoaixF4NXIegYVgZMeOWnDSNKUERvi7O9hsgVagRDa', 2, '', 'bakso', 'merah', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indeks untuk tabel `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id_feedback`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id_question`);

--
-- Indeks untuk tabel `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id_result`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indeks untuk tabel `survey`
--
ALTER TABLE `survey`
  ADD PRIMARY KEY (`id_survey`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id_feedback` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `question`
--
ALTER TABLE `question`
  MODIFY `id_question` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `result`
--
ALTER TABLE `result`
  MODIFY `id_result` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `survey`
--
ALTER TABLE `survey`
  MODIFY `id_survey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
