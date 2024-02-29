-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 29, 2024 at 05:44 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gallery_cp`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id_album` int(11) NOT NULL,
  `cover` text NOT NULL,
  `nama_album` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id_album`, `cover`, `nama_album`, `user_id`, `created_at`) VALUES
(2, '1709128217_90a10df6f2a87ca8b1a5.png', 'STEAM', 3, '2024-02-28 07:50:17');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `comment`) VALUES
(1, 1, 1, 'aaa'),
(2, 1, 1, 'pe'),
(3, 2, 1, 'w'),
(4, 1, 1, 'Bagus'),
(5, 4, 1, 'Bagus la'),
(6, 1, 1, 'halo'),
(7, 4, 1, 'Sedap'),
(8, 8, 3, 'cuantik poll'),
(9, 9, 3, 'a'),
(10, 9, 3, 'gg');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `post_id`, `user_id`, `status`) VALUES
(8, 5, 1, ''),
(9, 4, 1, ''),
(10, 1, 1, 'Like'),
(11, 6, 1, 'Like'),
(12, 3, 1, 'Like'),
(13, 2, 1, 'Like'),
(14, 1, 2, 'Like'),
(15, 6, 3, 'Like'),
(16, 3, 3, 'Like'),
(17, 8, 3, ''),
(18, 9, 3, 'Like'),
(19, 10, 3, 'Like');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id_post` int(11) NOT NULL,
  `fotop` text NOT NULL,
  `deskripsi` text NOT NULL,
  `user_maker` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id_post`, `fotop`, `deskripsi`, `user_maker`, `album`, `created_at`) VALUES
(8, '1709122904_f3275fbae9bc9bac340c.jpg', 'Han So-hee', 3, 1, '2024-02-28 06:21:44'),
(10, '1709128439_64ac7ab77627e8669e38.jpg', 'Apex Legends', 3, 2, '2024-02-28 07:53:59'),
(11, '1709128654_2e70d81493290feae400.jpg', 'Left 4 Dead 2', 3, 2, '2024-02-28 07:57:34'),
(12, '1709128706_a1f5b17f9ccca8763467.png', 'Stardew Valley', 3, 2, '2024-02-28 07:58:26'),
(13, '1709129152_14945c1926c5d87a256c.jfif', 'Elden Ring', 3, 2, '2024-02-28 08:05:52'),
(14, '1709129195_e7ea5f315292df4d9ad4.jfif', 'Resident Evil 4', 3, 2, '2024-02-28 08:06:35'),
(15, '1709129331_15cd32f116e46a2cc52f.jfif', 'Ghost Runner', 3, 2, '2024-02-28 08:08:51'),
(16, '1709129348_98e15fea64ec0b1594b4.jfif', 'Dying Light', 3, 2, '2024-02-28 08:09:08'),
(17, '1709129565_a9f72309a239d522ce6b.jpg', 'Tekken 8', 3, 2, '2024-02-28 08:12:45'),
(18, '1709129606_490b4df59268016a144c.jfif', 'Naraka BladePoint', 3, 2, '2024-02-28 08:13:26'),
(19, '1709129640_e1e9205d8d52a56b5a83.jpg', 'Yakuza', 3, 2, '2024-02-28 08:14:00'),
(20, '1709129772_66a38c2d84c628ded95a.jpg', 'Lethal Company', 3, 2, '2024-02-28 08:16:12'),
(21, '1709130370_9e4fa84141b8fadc6692.jpg', 'tes', 3, 1, '2024-02-28 08:26:10');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `foto`, `username`, `password`) VALUES
(3, 'a', 'channels4_profile (1).jpg', 'a', '0cc175b9c0f1b6a831c399e269772661'),
(6, 'a', 'default.jpg', '', 'd41d8cd98f00b204e9800998ecf8427e'),
(7, 'b', 'default.jpg', 'b', '92eb5ffee6ae2fec3ad71c777531578f');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
