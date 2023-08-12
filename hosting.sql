-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 12, 2023 at 10:22 AM
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
  `price` int(100) NOT NULL,
  `discount` int(11) NOT NULL,
  `discountwo` int(11) NOT NULL,
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

INSERT INTO `products` (`id`, `user_id`, `name`, `short_description`, `description`, `price`, `discount`, `discountwo`, `current_amount`, `perks`, `backer_count`, `slug`, `created_at`, `updated_at`) VALUES
(12, 32, 'Hosting Pro Xy', 'Hosting', 'Kenapa orang PERCAYA HAL-HAL MISTIS DAN GA MASUK AKAL? - Ryu Hasan (Cara Kerja Otak Mistis) barcode', 1800, 10, 20, 0, 'Free Domain,Unimited Storge,Free', 0, 'hosting-pro-silver-32', '2023-07-28 18:51:35', '2023-07-29 16:25:37'),
(13, 32, 'Hosting For Reactjs', 'Server web hosting, WordPress hosting, dan cloud hosting kami berlokasi di: Indonesia, Amerika Serikat, United Kingdom, Prancis, India, Singapura, Brasil, Lituania, dan Belanda.', 'Server web hosting, WordPress hosting, dan cloud hosting kami berlokasi di: Indonesia, Amerika Serikat, United Kingdom, Prancis, India, Singapura, Brasil, Lituania, dan Belanda,Netherlaned', 1600, 10, 30, 0, 'Free Domain, 50 Storage, VPS singapore', 0, 'reactjs-32', '2023-07-28 21:41:12', '2023-07-29 16:21:36'),
(14, 32, 'Hosting For Golang', 'Descripsion', 'Reactjs Silver rest', 3500, 10, 25, 0, 'Free domain.com,5GB free storage,Vps', 0, 'hosting-for-golang-32', '2023-07-28 22:14:54', '2023-07-29 16:26:15'),
(15, 32, 'Hosting 19 GB', 'Dscription', 'tes silver', 50000, 0, 0, 0, 'Freedomain .com', 0, 'hosting-19-gb-32', '2023-08-10 18:40:45', '2023-08-10 18:40:45');

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
(19, 2, 'images/1-Role.png', 1, '2021-07-06 08:45:01', '2021-07-06 08:45:01'),
(20, 7, 'images/32-Screenshot 2023-07-28 at 5.56.04 AM.png', 1, '2023-07-28 13:49:31', '2023-07-28 13:49:31');

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
(34, 5, 32, 1800000, 'paid', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/687e63b1-6605-4050-8734-9650f298381e', '2023-07-28 22:26:15', '2023-08-11 10:49:37'),
(35, 12, 30, 192000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/df23a83e-b50b-4267-8601-5f3539e524b2', '2023-07-29 05:15:03', '2023-07-29 05:15:09'),
(36, 6, 32, 1800000, 'paid', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/93689f07-eaaf-429a-8693-3ee1332ea976', '2023-07-29 07:26:48', '2023-08-11 10:40:42'),
(37, 13, 32, 26880, 'paid', '', '', '2023-08-08 15:43:51', '2023-08-10 18:25:27'),
(38, 14, 32, 3500, 'paid', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/7562f280-96dd-4594-b35a-3a69b74c60ba', '2023-08-08 20:45:10', '2023-08-11 10:41:40'),
(39, 13, 32, 26880, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/593105a0-b904-4f2b-8890-e035951db009', '2023-08-11 18:44:17', '2023-08-11 18:44:21'),
(40, 13, 33, 26880, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/3b3c23be-9022-4972-a820-f3a05749694e', '2023-08-12 13:15:57', '2023-08-12 13:16:01'),
(41, 14, 33, 63000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/3bbdff5b-9d2f-435a-a617-074f07afe647', '2023-08-12 13:17:09', '2023-08-12 13:17:09'),
(42, 13, 34, 17280, 'paid', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/03d51cd9-4444-4115-86b4-dd08b861ae86', '2023-08-12 13:21:30', '2023-08-12 13:47:05'),
(43, 14, 30, 63000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/d1916daf-95ac-4567-8174-2cdb7f01b2bf', '2023-08-12 15:03:14', '2023-08-12 15:03:15'),
(44, 15, 31, 1200000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/879e12d3-7798-40ad-8c9f-40a4fc46f9b7', '2023-08-12 15:03:37', '2023-08-12 15:03:37'),
(45, 15, 30, 1200000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/eac9627c-e744-4fb5-a2ee-cf82a37b3abd', '2023-08-12 15:04:00', '2023-08-12 15:04:00');

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
(27, 'andi bratha', 'andi@gmail.com', 'Silver', '$2a$04$opKvjEOTWwsxJVPjwNL4yO//xzzLqUlbIXH2s1N.Z3rd8LlazRpxO', '', 'user', '', '2023-07-21 06:51:33', '2023-07-21 06:51:33'),
(29, 'Julia Keeva', 'julia@gmail.com', 'Product Designer', '$2a$04$X7/nLaeqXcoIEENrLCyyKupFh1sHKfCF8TFuz0KOefP1bfnQDUcAG', '', 'user', '', '2023-07-21 14:29:30', '2023-07-21 14:29:30'),
(30, 'Sabilah Putri', 'sabilaputrimahardika@gmail.com', 'Product Designer', '$2a$04$K2j6I3Eqro598nhAinvtXOSXlki1N.41bIDLHUzFObS2xtQeFP5a.', '', 'user', '', '2023-07-22 11:57:53', '2023-07-22 11:57:53'),
(31, 'Putri Bahjah najmina', 'farihulrouf99@gmail.com', 'Product Designer', '$2a$04$.Q6WDWnNzFaHp7scLM6UCe3dplq64fATfGc8Sv0suQ8/glHo/QhoC', 'images/31-Screenshot 2023-07-22 at 6.02.36 PM.png', 'user', '', '2023-07-23 18:45:54', '2023-07-23 18:46:12'),
(32, 'putri bahjah', 'putri99@gmail.com', 'Product Designer', '$2a$04$GNA5cA1/TmMf4sZ/1h9Q4.Wi/sfV43gtgFRtNXxJKc1fHG4FyEvdO', 'images/32-Image.png', 'admin', '', '2023-07-28 13:22:34', '2023-07-28 13:22:55'),
(33, 'Julia Keeva', 'juliasilver@gmail.com', 'Product Designer', '$2a$04$g4nnKLj8YxdyTlkEC15MyOcMVsmBhuJOinvzzf3trL8HwmQO4Sbbi', 'images/33-Screenshot 2023-08-10 at 7.00.22 PM.png', 'user', '', '2023-08-12 13:15:04', '2023-08-12 13:15:42'),
(34, 'Aris', 'aries@gmail.com', 'Product Designer', '$2a$04$NPgLqwULBNidUbRCRUNsBeNeKFpehz9/JozTgNrZkhq.qNK..BXV.', 'images/34-Screenshot 2023-08-11 at 6.47.52 PM.png', 'user', '', '2023-08-12 13:21:04', '2023-08-12 13:21:16');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
