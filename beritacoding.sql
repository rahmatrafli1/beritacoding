-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jan 2022 pada 09.24
-- Versi server: 10.4.16-MariaDB
-- Versi PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beritacoding`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `article`
--

CREATE TABLE `article` (
  `id` varchar(32) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `slug` varchar(128) NOT NULL,
  `content` text DEFAULT NULL,
  `draft` enum('true','false') NOT NULL DEFAULT 'true',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `article`
--

INSERT INTO `article` (`id`, `title`, `slug`, `content`, `draft`, `created_at`) VALUES
('61e520312f1138.23871045', 'Hello world', 'hello-world-61e520312f1138.23871045', '<p class=\"ql-align-justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec tincidunt velit quam, vel feugiat diam porta et. Maecenas ut semper nisl, eget accumsan nisl. Maecenas bibendum faucibus justo, quis condimentum metus venenatis a. Praesent vulputate quis erat imperdiet dictum. In facilisis laoreet quam sit amet fringilla. Pellentesque eget iaculis nisi. Etiam neque sem, volutpat id nunc sit amet, laoreet cursus orci. Pellentesque mattis tellus quam, eu euismod nunc cursus a. Fusce sollicitudin tristique sapien, et tempor est commodo vel. Donec laoreet eleifend nisl vitae venenatis. Curabitur sed elit ac enim facilisis varius at in eros. Nulla ac fermentum nisi. Maecenas semper efficitur sollicitudin.</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">Nullam nisi enim, tincidunt at purus at, tempus accumsan nunc. Nam ornare, nulla eu molestie dignissim, metus erat convallis elit, sed tincidunt sem risus eu lectus. Nunc at dui et est molestie vulputate in eget orci. Proin volutpat vitae neque et condimentum. Proin sed consectetur justo. Phasellus fermentum dolor enim, eu ullamcorper ex dapibus non. Suspendisse ac dui semper, tincidunt nunc vel, ultricies arcu. Ut rutrum risus pretium enim iaculis, sed imperdiet eros posuere. Praesent orci eros, volutpat at laoreet eget, accumsan sed lorem. Mauris mattis, augue in fermentum ornare, tortor lorem interdum purus, non sagittis augue nisl nec enim. Sed at tortor at lectus tristique rutrum et nec justo.</p>', 'false', '2022-01-17 14:52:17'),
('61e520db4e62b5.77611928', 'React JS', 'react-js-61e520db4e62b5.77611928', '<h1>React JS</h1><blockquote>Ini adalah React JS</blockquote><p><img src=\"data:image/png;base64,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\"></p>', 'false', '2022-01-17 14:55:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `feedback`
--

CREATE TABLE `feedback` (
  `id` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(32) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `last_login` timestamp NULL DEFAULT NULL,
  `password_updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `username`, `password`, `avatar`, `created_at`, `last_login`, `password_updated_at`) VALUES
('6118b2a943acc2.78631959', 'Rahmat Rafli', 'rahmatrafli1@gmail.com', 'admin', '$2y$10$5cpMIiIyOqI/X2bw74QFo.H9TAkqdtBpg1VPgzRISxdsBxEJSUbUa', NULL, '2021-08-14 23:22:33', '2022-01-17 02:10:45', '2022-01-17 14:29:56');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
