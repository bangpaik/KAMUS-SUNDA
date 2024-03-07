-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2024 at 04:38 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kamus_sunda`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_kosakata`
--

CREATE TABLE `tb_kosakata` (
  `id_kosakata` int(11) NOT NULL,
  `kosakata` varchar(200) NOT NULL,
  `terjemahan` varchar(200) NOT NULL,
  `detail` text NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kosakata`
--

INSERT INTO `tb_kosakata` (`id_kosakata`, `kosakata`, `terjemahan`, `detail`, `created`) VALUES
(1, 'maneh', 'kamu', 'anda, kamu, kau, lu : anjeun, maneh', '2024-03-05 08:13:27'),
(2, 'aing', 'aku', 'saya, aku, ku, daku : abdi, kuring , aing', '2024-03-05 08:14:08'),
(3, 'urang', 'kita', 'kita, kami, ku : urang', '2024-03-06 19:08:38'),
(4, 'udur', 'sakit', 'sakit : udur, teu damang, gering', '2024-03-06 20:50:44'),
(5, 'pangbagea', 'sambutan', 'sambutan : pangbagea, sambutan', '2024-03-06 20:50:44'),
(6, 'darehdeh', 'ramah', 'ramah : darehdeh', '2024-03-07 09:41:37'),
(7, 'pikasono', 'rindukan', 'rindukan : pikasono', '2024-03-07 09:41:37'),
(8, 'rengat', 'retak', 'retak : rengat, beukah', '2024-03-07 09:41:57'),
(9, 'pahatu', 'piatu', 'yatim, piatu : pahatu', '2024-03-07 09:43:24'),
(10, 'nyaeta', 'yakni', 'yakni, adalah : nyaeta', '2024-03-07 09:43:24'),
(11, 'dasarna', 'dasarnya', 'dasarnya : dasarna', '2024-03-07 09:45:34'),
(12, 'jerona', 'dalamnya', 'dalamnya : jerona', '2024-03-07 09:45:34'),
(13, 'diiwalkeun', 'dikecualikan', 'dikecualikan : diiwalkeun', '2024-03-07 09:46:46'),
(14, 'dicempad', 'dikecam', 'dikecam : dicempad', '2024-03-07 09:46:46'),
(15, 'dikadalikeun', 'dikendalikan ', 'dikendalikan : dikadalikeun', '2024-03-07 09:57:28'),
(16, 'dileutikeun', 'dikecilkan', 'dikecilkan : dileutikeun', '2024-03-07 09:57:28'),
(17, 'mangga', 'baiklah', 'baiklah : mangga, heug', '2024-03-07 09:58:42'),
(18, 'basana', 'bahasanya', 'bahasanya : basana', '2024-03-07 09:58:42'),
(19, 'bajoan', 'bajakan', 'bajakan : bajoan', '2024-03-07 09:59:24'),
(20, 'huru', 'bakar', 'bakar : huru, bakar', '2024-03-07 09:59:24'),
(21, 'dangdan', 'dandan', 'dandan, berdandan : dangdan', '2024-03-07 10:00:15'),
(22, 'deet', 'dangkal', 'dangkal : deet', '2024-03-07 10:00:15'),
(23, 'balabah', 'dermawan', 'dermawan : balabah', '2024-03-07 10:01:19'),
(24, 'nyenyepan', 'demam', 'demam : nyenyepan', '2024-03-07 10:01:19'),
(25, 'poyokan', 'ejekan', 'ejekan : poyokan', '2024-03-07 10:02:52'),
(26, 'episodeu', 'episode', 'episode : episodeu', '2024-03-07 10:02:52'),
(27, 'kadudukan', 'fungsi', 'fungsi : kadudukan', '2024-03-07 10:05:17'),
(28, 'paju', 'garap', 'garap : paju', '2024-03-07 10:05:17'),
(29, 'ateul', 'gatal', 'gatal : ateul', '2024-03-07 10:06:03'),
(30, 'gogorolongan', 'gelindingan', 'gelindingan : gogorolongan', '2024-03-07 10:06:03'),
(31, 'ngan', 'hanya', 'hanya, cuman : ngan, han', '2024-03-07 10:06:42'),
(32, 'anduk', 'handuk', 'handuk : anduk', '2024-03-07 10:06:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_kosakata`
--
ALTER TABLE `tb_kosakata`
  ADD PRIMARY KEY (`id_kosakata`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_kosakata`
--
ALTER TABLE `tb_kosakata`
  MODIFY `id_kosakata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
