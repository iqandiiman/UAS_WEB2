-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jul 2022 pada 03.49
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`) VALUES
(4, 'Baju Wanita'),
(5, 'Tas'),
(6, 'Celana'),
(9, 'Sepatu'),
(11, 'Baju Pria');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `ketersediaan_stok` enum('habis','tersedia') DEFAULT 'tersedia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `kategori_id`, `nama`, `harga`, `foto`, `detail`, `ketersediaan_stok`) VALUES
(8, 4, 'Baju Wanita', 100000, 'IIOOYdk4cXXDZGCxFBIp.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusantium iste assumenda veniam hic aliquid aperiam vero dolor. Consectetur dicta non in iste nostrum accusamus animi atque sit et error, recusandae totam, fuga aut at veritatis eligendi numquam ab voluptatibus delectus commodi voluptatem. Nulla labore harum amet qui repellendus assumenda accusamus itaque pariatur debitis dolore? Voluptates quaerat quis molestias veniam, necessitatibus animi totam accusamus tenetur molestiae commodi voluptate rem consectetur, voluptatum officia, nemo omnis? Obcaecati corrupti sapiente animi amet eveniet corporis.   ', 'tersedia'),
(9, 4, 'Outer', 250000, 'c8BBX0YRcx8105gnD0bP.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusantium iste assumenda veniam hic aliquid aperiam vero dolor. Consectetur dicta non in iste nostrum accusamus animi atque sit et error, recusandae totam, fuga aut at veritatis eligendi numquam ab voluptatibus delectus commodi voluptatem. Nulla labore harum amet qui repellendus assumenda accusamus itaque pariatur debitis dolore? Voluptates quaerat quis molestias veniam, necessitatibus animi totam accusamus tenetur molestiae commodi voluptate rem consectetur, voluptatum officia, nemo omnis? Obcaecati corrupti sapiente animi amet eveniet corporis.                           ', 'tersedia'),
(10, 4, 'Baju2', 95000, 'lQI8MdEhl2NPseIspxA3.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusantium iste assumenda veniam hic aliquid aperiam vero dolor. Consectetur dicta non in iste nostrum accusamus animi atque sit et error, recusandae totam, fuga aut at veritatis eligendi numquam ab voluptatibus delectus commodi voluptatem. Nulla labore harum amet qui repellendus assumenda accusamus itaque pariatur debitis dolore? Voluptates quaerat quis molestias veniam, necessitatibus animi totam accusamus tenetur molestiae commodi voluptate rem consectetur, voluptatum officia, nemo omnis? Obcaecati corrupti sapiente animi amet eveniet corporis.', 'tersedia'),
(11, 4, 'Outer2', 150000, 'Q6C6U7fHgs5RrCh2ZugN.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusantium iste assumenda veniam hic aliquid aperiam vero dolor. Consectetur dicta non in iste nostrum accusamus animi atque sit et error, recusandae totam, fuga aut at veritatis eligendi numquam ab voluptatibus delectus commodi voluptatem. Nulla labore harum amet qui repellendus assumenda accusamus itaque pariatur debitis dolore? Voluptates quaerat quis molestias veniam, necessitatibus animi totam accusamus tenetur molestiae commodi voluptate rem consectetur, voluptatum officia, nemo omnis? Obcaecati corrupti sapiente animi amet eveniet corporis.', 'tersedia'),
(12, 4, 'Outer3', 200000, 'CtfuFqtL5OOYLFYKho6F.jpg', '                                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusantium iste assumenda veniam hic aliquid aperiam vero dolor. Consectetur dicta non in iste nostrum accusamus animi atque sit et error, recusandae totam, fuga aut at veritatis eligendi numquam ab voluptatibus delectus commodi voluptatem. Nulla labore harum amet qui repellendus assumenda accusamus itaque pariatur debitis dolore? Voluptates quaerat quis molestias veniam, necessitatibus animi totam accusamus tenetur molestiae commodi voluptate rem consectetur, voluptatum officia, nemo omnis? Obcaecati corrupti sapiente animi amet eveniet corporis.', 'tersedia'),
(13, 6, 'Celana Wanita', 100000, 'qT5LUr7vRwoYMS9HbSbR.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusantium iste assumenda veniam hic aliquid aperiam vero dolor. Consectetur dicta non in iste nostrum accusamus animi atque sit et error, recusandae totam, fuga aut at veritatis eligendi numquam ab voluptatibus delectus commodi voluptatem. Nulla labore harum amet qui repellendus assumenda accusamus itaque pariatur debitis dolore? Voluptates quaerat quis molestias veniam, necessitatibus animi totam accusamus tenetur molestiae commodi voluptate rem consectetur, voluptatum officia, nemo omnis? Obcaecati corrupti sapiente animi amet eveniet corporis.               ', 'tersedia'),
(14, 6, 'Celana Wanita2', 95000, '8dnryuAW9xL461sz0Wki.jpg', 'Warna Beragam, nyaman dipakai', 'tersedia'),
(15, 6, 'Celana Wanita3', 200000, 'VEKBAdcthLGWGSO1n5sm.jpg', '', 'tersedia'),
(16, 6, 'Celana Wanita4', 250000, 'mbslJveokYEOSo3ZniCO.jpg', 'Kualitas Import, Hanya ada warna merah', 'tersedia'),
(17, 6, 'Celana Wanita5', 75000, 'yjVSAn7CppDDTiZx5doE.jpg', 'Bahan Jeans Tebal, Jahitan Rapi', 'tersedia'),
(18, 6, 'Celana Wanita6', 150000, 'YkH2jE3eYcjfIps8ITv6.jpg', 'Bahan Adem', 'tersedia'),
(19, 5, 'Tas1', 200000, 'xnA6YIL7NyMJW6uxmquV.jpg', '                                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusantium iste assumenda veniam hic aliquid aperiam vero dolor. Consectetur dicta non in iste nostrum accusamus animi atque sit et error, recusandae totam, fuga aut at veritatis eligendi numquam ab voluptatibus delectus commodi voluptatem. Nulla labore harum amet qui repellendus assumenda accusamus itaque pariatur debitis dolore? Voluptates quaerat quis molestias veniam, necessitatibus animi totam accusamus tenetur molestiae commodi voluptate rem consectetur, voluptatum officia, nemo omnis? Obcaecati corrupti sapiente animi amet eveniet corporis.', 'tersedia'),
(20, 5, 'Tas2', 300000, '2ODAen5fngnt0yLdTx48.jpg', '', 'tersedia'),
(21, 5, 'Tas3', 250000, 'zmVO35qlek1feq2bkT5y.jpg', 'Limited Edition!', 'tersedia'),
(22, 5, 'Tas4', 350000, 'vGQ7XXsAVPwqVyxDJXkF.jpg', '', 'tersedia'),
(23, 9, 'Sepatu Nike', 300000, 'rWMVrdi2VshdGcnUr8d8.jpg', 'Nike, Merah, Tahan Air', 'tersedia'),
(25, 9, 'Sepatu2', 350000, '6Wfj5k22nxyNuCN2s8xh.jpg', '', 'tersedia'),
(26, 9, 'Sepatu3', 350000, 'OgBGbP9gvZ9UZWxpMuOB.jpg', '', 'tersedia'),
(27, 9, 'Sepatu4', 250000, 'O9mgpbP1fXXQFqqhPYm9.jpg', '', 'tersedia'),
(28, 11, 'Baju Cowok', 100000, 'Lm9zbiDDYlFByJZaxThM.jpg', 'Baju hitam, kaos, dan jahitan rapih', 'tersedia'),
(29, 11, 'Kaos Polos', 110000, 'S4vS5TqkVi3Z1WKjQcGx.jpg', 'Nyaman Dipakai, Jahitan Rapih', 'tersedia'),
(30, 11, 'Jaket Cowok', 300000, '8NowMMFIksgygKXJ45Ga.jpg', 'Bahan Tebal, Jeans, Jahitan Rapih', 'tersedia'),
(31, 11, 'Kaos1', 99000, 'WMhwU0Ey1H0Gs6fM678e.jpg', '', 'tersedia'),
(32, 11, 'Kaos2', 75000, 'jOs4f7zBzUBzZNWzfMLS.jpg', 'Bahan Adem, Tebal, dan Jahitan Rapih', 'tersedia'),
(33, 11, 'Kaos Hitam', 200000, 'Cfz16uRJolTazqPeivVT.jpg', '                                            ', 'tersedia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2a$12$gObECpxMOvkiqHoJbO9Xe.c00LmNbKnrxwkcG32PIR.m9.zi8/s.q');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama` (`nama`),
  ADD KEY `kategori_produk` (`kategori_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `kategori_produk` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
