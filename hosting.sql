-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 21, 2023 at 02:41 AM
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
-- Database: `hosting`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(125) NOT NULL,
  `short_description` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `goal_amount` int(100) NOT NULL,
  `current_amount` int(100) NOT NULL,
  `perks` text NOT NULL,
  `backer_count` int(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `name`, `short_description`, `description`, `goal_amount`, `current_amount`, `perks`, `backer_count`, `slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'HACKED by adam ID 1', 'Sebuah diskripsi yang singkat', 'Diskripsi panjang lebar disini', 1000000, 0, 'keuntungan satu, ini keuntungan yang kedua, apalagi ini keuntungan yang ketiga', 0, 'slug satu', '2021-07-03 14:22:50', '2021-07-06 06:24:16'),
(2, 1, 'campaign 2', 'shot dsecription', 'long long long longggg', 1000000, 0, 'perks 1, disini perks 2, Disana perks 3', 0, 'slug dua', '2021-07-03 14:22:50', '2021-07-03 14:22:50'),
(3, 2, 'campaign 3', 'shot dsecription', 'long long long longggg', 1000000, 0, 'perks 1, disini perks 2, Disana perks 3', 0, 'slug tiga', '2021-07-03 14:22:50', '2021-07-03 14:22:50'),
(4, 2, 'Web Hosting 10GB', 'Sebuah diskripsi yang singkat', 'Diskripsi panjang lebar disini', 1000000, 0, 'keuntungan satu, ini keuntungan yang kedua, apalagi ini keuntungan yang ketiga', 0, 'sebuah-campaign-yang-dibuat-hari-senin-2', '2021-07-05 13:21:29', '2021-07-05 13:21:29'),
(5, 14, 'Digital Marketing', 'Sebuah diskripsi yang singkat', 'Diskripsi panjang lebar disini', 1000000, 0, 'keuntungan satu, ini keuntungan yang kedua, apalagi ini keuntungan yang ketiga', 0, 'sebuah-campaign-yang-dibuat-hari-senin-14', '2021-07-05 13:24:06', '2021-07-05 13:24:06'),
(6, 14, 'Graphic Designer', 'Designer Grphic', 'silver', 100000, 0, 'o', 0, 'graphic-designer-14', '2023-07-21 07:26:42', '2023-07-21 07:26:42');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `is_primary` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `file_name`, `is_primary`, `created_at`, `updated_at`) VALUES
(1, 1, 'campaign-images/satu.jpg', 0, '2021-07-03 14:24:35', '2021-07-06 08:44:37'),
(2, 1, 'campaign-images/dua.jpg', 0, '2021-07-03 14:24:35', '2021-07-06 08:44:37'),
(3, 1, 'campaign-images/tiga.jpg', 0, '2021-07-03 14:24:35', '2021-07-06 08:44:37'),
(4, 1, 'images/1-Role.png', 0, '2021-07-06 06:38:46', '2021-07-06 08:44:37'),
(5, 1, 'images/1-Role.png', 0, '2021-07-06 06:53:07', '2021-07-06 08:44:37'),
(6, 1, 'images/1-Role.png', 0, '2021-07-06 07:07:43', '2021-07-06 08:44:37'),
(7, 1, 'images/1-Role.png', 0, '2021-07-06 07:15:10', '2021-07-06 08:44:37'),
(8, 1, 'images/1-Role.png', 0, '2021-07-06 07:20:26', '2021-07-06 08:44:37'),
(9, 1, 'images/1-Role.png', 0, '2021-07-06 07:21:26', '2021-07-06 08:44:37'),
(10, 1, 'images/1-Role.png', 0, '2021-07-06 07:22:02', '2021-07-06 08:44:37'),
(11, 1, 'images/1-Role.png', 0, '2021-07-06 07:22:15', '2021-07-06 08:44:37'),
(12, 1, 'images/1-Role.png', 0, '2021-07-06 07:22:29', '2021-07-06 08:44:37'),
(13, 1, 'images/1-Role.png', 0, '2021-07-06 07:42:21', '2021-07-06 08:44:37'),
(14, 1, 'images/1-Role.png', 0, '2021-07-06 07:42:55', '2021-07-06 08:44:37'),
(15, 1, 'images/1-Role.png', 0, '2021-07-06 07:43:13', '2021-07-06 08:44:37'),
(16, 1, 'images/1-Role.png', 0, '2021-07-06 08:36:05', '2021-07-06 08:44:37'),
(17, 2, 'images/1-Role.png', 0, '2021-07-06 08:43:17', '2021-07-06 08:45:01'),
(18, 1, 'images/1-Role.png', 1, '2021-07-06 08:44:37', '2021-07-06 08:44:37'),
(19, 2, 'images/1-Role.png', 1, '2021-07-06 08:45:01', '2021-07-06 08:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(100) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(100) NOT NULL,
  `status` varchar(125) NOT NULL,
  `code` varchar(125) NOT NULL,
  `payment_url` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `product_id`, `user_id`, `amount`, `status`, `code`, `payment_url`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 100000, 'paid', '', '', '2021-07-06 11:24:38', '2021-07-06 11:24:38'),
(2, 2, 1, 50000, 'pending', '', '', '2021-07-06 11:24:38', '2021-07-06 11:24:38'),
(3, 5, 14, 10000000, 'pending', '', '', '2021-07-07 14:20:37', '2021-07-07 14:20:37'),
(4, 5, 14, 1234567, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/677f2a6c-4d48-4e2f-9162-ecf987ba2243', '2021-07-07 17:03:53', '2021-07-07 17:03:54'),
(5, 5, 14, 50000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/7ace2042-238a-4028-82a0-a7423fc9e9f6', '2021-07-07 17:22:08', '2021-07-07 17:22:09'),
(6, 5, 14, 510000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/f7f2fba3-6e5e-485f-922e-87abb84e5e78', '2021-07-07 17:22:34', '2021-07-07 17:22:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `occupation` varchar(40) DEFAULT NULL,
  `password_hash` varchar(100) NOT NULL,
  `avatar_file_name` varchar(100) NOT NULL,
  `role` varchar(30) NOT NULL,
  `token` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `occupation`, `password_hash`, `avatar_file_name`, `role`, `token`, `created_at`, `updated_at`) VALUES
(1, 'adam', 'adam@gmail.com', 'anak mami', '$2a$04$e444Mt/IqbF3PUyUgNBenuZ0P4jnIhZBP.AFMxmjOQbP1Z4E1BjM6', 'images/1-admin.png', 'user', '', '2021-06-28 14:58:23', '2021-07-02 18:38:06'),
(2, 'fahmi', 'fahmi@gmail.com', 'Anak alay', '$2a$04$e444Mt/IqbF3PUyUgNBenuZ0P4jnIhZBP.AFMxmjOQbP1Z4E1BjM6', 'images/2-customer service.png', 'user', '', '2021-06-28 14:58:23', '2021-07-02 18:46:02'),
(14, 'rahman', 'rahman@gmail.com', 'anak futsal', '$2a$04$DVBfjwAYKuF65SW6uvtuw.Vf0CfszGugZZ7pesAwBG5ToxACqgSxS', '', 'user', '', '2021-07-01 18:19:06', '2021-07-01 18:19:06'),
(18, 'Aldo', 'aldo@gmail.com', 'L', '$2a$04$Mjuq9nsxsWM25jXA2utl/OnN4sSGHOxh6hp918BNqTJqNrhxE3uda', '', 'user', '', '2023-07-19 22:03:06', '2023-07-19 22:03:06'),
(19, 'Farihul Rouf', 'farihulrouf@gmail.com', 'Front end', '$2a$04$3P.8ULMX7anSKgruY/yF7O7Zf3iGuveu7CntAsTvGkPnNPklKBa2q', 'images/19-Screenshot 2023-07-11 at 5.33.28 AM.png', 'admin', '', '2023-07-19 22:03:21', '2023-07-21 07:00:52'),
(20, 'Silver', 'silveriz@gmail.com', 'Bakcek end', '$2a$04$999L2Tv7sN2qbCncswcN/.zkLCAmIB80c3UhhQjalUwWtGqjVaScK', '', 'user', '', '2023-07-19 22:07:28', '2023-07-19 22:07:28'),
(25, 'Eli', 'reda@gmail.com', 'Bakcek end', '$2a$04$hHVmJTsR5i5vdpp54DEFuepIP22FiTXwiFcjCwPUYWm4rIyEn2SVa', '', 'user', '', '2023-07-20 17:22:04', '2023-07-20 17:22:04'),
(27, 'andi bratha', 'andi@gmail.com', 'Silver', '$2a$04$opKvjEOTWwsxJVPjwNL4yO//xzzLqUlbIXH2s1N.Z3rd8LlazRpxO', '', 'user', '', '2023-07-21 06:51:33', '2023-07-21 06:51:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
