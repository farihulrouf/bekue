-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 28, 2023 at 02:50 PM
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
(1, 1, 'Basic', 'Gratis 1 domain!\r\n.com / .online / .site / .cloud / .website / .space / .xyz / .my.id / .web.id / .biz.id / .company', 'Diskripsi panjang lebar disini', 100000, 20, 25, 0, '10 GB SSD Storage, \r\nFree CDN,\r\n1 Website,\r\nFree Domain 1st Year\r\n\r\n\r\n', 0, 'slug satu', '2021-07-03 14:22:50', '2021-07-06 06:24:16'),
(2, 1, 'Choice Plus', 'Gratis 1 domain!\r\n.com / .online / .site / .cloud / .website / .space / .xyz / .my.id / .web.id / .biz.id / .company', 'long long long longggg', 100000, 0, 25, 0, '40 GB SSD Storage, \r\nFree CDN,\r\nUnlimited Websites,\r\nFree Domain 1st Year\r\n\r\n\r\n', 0, 'slug dua', '2021-07-03 14:22:50', '2021-07-03 14:22:50'),
(3, 2, 'Online Store', 'Gratis 1 domain!\r\n.com / .online / .site / .cloud / .website / .space / .xyz / .my.id / .web.id / .biz.id / .company', 'long long long longggg', 100000, 0, 25, 0, '100 GB SSD Storage,\r\nFree CDN,\r\n2 Websites,\r\nFree Domain 1st Year\r\n\r\n\r\n', 0, 'slug tiga', '2021-07-03 14:22:50', '2023-07-21 09:27:00'),
(4, 2, 'Pro Basic', 'Gratis 1 domain!\r\n.com / .online / .site / .cloud / .website / .space / .xyz / .my.id / .web.id / .biz.id / .company', 'Diskripsi panjang lebar disini', 100000, 0, 25, 0, '100 GB SSD Storage,\r\nFree CDN,\r\nUnlimited Websites,\r\nFree Domain 1st Year,\r\nOptimized CPU Resources,\r\nFree Dedicated IP\r\n\r\n\r\n', 0, 'sebuah-campaign-yang-dibuat-hari-senin-2', '2021-07-05 13:21:29', '2021-07-05 13:21:29'),
(5, 14, 'Pro Choice', 'Gratis 1 domain!\r\n.com / .online / .site / .cloud / .website / .space / .xyz / .my.id / .web.id / .biz.id / .company', 'Diskripsi panjang lebar disini', 100000, 0, 25, 0, '100 GB SSD Storage,\r\nFree CDN,\r\nUnlimited Websites,\r\nFree Domain 1st Year,\r\nOptimized CPU Resources,\r\nFree Dedicated IP\r\n\r\n\r\n', 0, 'sebuah-campaign-yang-dibuat-hari-senin-14', '2021-07-05 13:24:06', '2021-07-05 13:24:06'),
(6, 14, 'Pro Store', 'Gratis 1 domain!\r\n.com / .online / .site / .cloud / .website / .space / .xyz / .my.id / .web.id / .biz.id / .company', 'silver', 100000, 0, 25, 0, '100 GB SSD Storage,\r\nFree CDN,\r\nUnlimited Websites,\r\nFree Domain 1st Year,\r\nOptimized CPU Resources,\r\nFree Dedicated IP\r\n\r\n\r\n', 0, 'graphic-designer-14', '2023-07-21 07:26:42', '2023-07-21 07:26:42'),
(12, 32, 'Hosting Pro Xy', 'Silver six n', 'Silver rexs', 10000, 10, 15, 0, 'Free Domain,Unimited Storge,Silver Six', 0, 'hosting-pro-silver-32', '2023-07-28 18:51:35', '2023-07-28 19:38:20');

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
(1, 1, 1, 100000, 'paid', '', '', '2021-07-06 11:24:38', '2021-07-06 11:24:38'),
(2, 2, 1, 50000, 'pending', '', '', '2021-07-06 11:24:38', '2021-07-06 11:24:38'),
(3, 5, 14, 10000000, 'pending', '', '', '2021-07-07 14:20:37', '2021-07-07 14:20:37'),
(4, 5, 14, 1234567, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/677f2a6c-4d48-4e2f-9162-ecf987ba2243', '2021-07-07 17:03:53', '2021-07-07 17:03:54'),
(5, 5, 14, 50000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/7ace2042-238a-4028-82a0-a7423fc9e9f6', '2021-07-07 17:22:08', '2021-07-07 17:22:09'),
(6, 5, 14, 510000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/f7f2fba3-6e5e-485f-922e-87abb84e5e78', '2021-07-07 17:22:34', '2021-07-07 17:22:34'),
(7, 1, 25, 10000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/2c410beb-5bf3-4265-9952-f8aef29e9d5b', '2023-07-22 10:59:27', '2023-07-22 10:59:27'),
(8, 2, 25, 10000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/973f8741-ecdc-46dd-b155-d9d8b3d74254', '2023-07-22 11:05:52', '2023-07-22 11:05:53'),
(9, 1, 30, 200000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/000cfaf8-f552-4bf8-9d58-706406e03ca5', '2023-07-22 12:23:25', '2023-07-22 12:23:26'),
(10, 1, 30, 200000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/b57b2ab0-7538-4194-9d01-6f57f0a9b9ae', '2023-07-22 12:24:40', '2023-07-22 12:24:40'),
(11, 2, 30, 200000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/495bc56b-cc15-4b9e-b98f-aec66e796ddd', '2023-07-23 04:18:16', '2023-07-23 04:18:22'),
(12, 2, 30, 100000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/a6d10e8c-c3bd-4fc6-b3ea-ab61fdb412f5', '2023-07-23 14:44:08', '2023-07-23 14:44:12'),
(13, 1, 30, 180000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/952b4cae-59a2-4965-94b4-0149b1f32c28', '2023-07-23 18:09:33', '2023-07-23 18:09:39'),
(14, 1, 30, 1800000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/3866326a-8ac3-42a4-99b0-3b96ba583f6f', '2023-07-23 18:19:13', '2023-07-23 18:19:14'),
(15, 2, 31, 1800000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/39ea65a6-9b07-456b-b3a5-6d7ab86e15d3', '2023-07-23 18:46:52', '2023-07-23 18:46:52'),
(16, 3, 31, 1800000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/ccb70419-51b9-4736-ac6f-3ca410748cc0', '2023-07-23 18:50:49', '2023-07-23 18:50:50'),
(17, 2, 30, 100000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/cdfdb051-b81b-448e-8482-c0dfc5d148e9', '2023-07-23 18:55:34', '2023-07-23 18:55:35'),
(18, 2, 25, 10000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/869ceb95-0997-4214-bbb9-00e49c8070c4', '2023-07-23 18:57:48', '2023-07-23 18:57:48'),
(19, 3, 30, 100000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/aa280d73-9498-4f4f-afcc-e8e041f52853', '2023-07-23 19:00:10', '2023-07-23 19:00:11'),
(20, 5, 30, 100000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/e1d31879-4a55-4017-9934-16a83c7d1922', '2023-07-23 19:02:55', '2023-07-23 19:02:56'),
(21, 2, 25, 100000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/d6e01531-dbd7-4e12-a62d-aff5fc6222cc', '2023-07-23 19:25:44', '2023-07-23 19:25:45'),
(22, 3, 25, 100000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/51ef37ec-6045-47d2-8ae4-c364bbeab190', '2023-07-23 19:39:59', '2023-07-23 19:39:59'),
(23, 2, 30, 100000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/8b476045-4bd3-47d2-b3e5-db9f07166c3a', '2023-07-23 19:53:37', '2023-07-23 19:53:38'),
(24, 5, 30, 1200000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/3b3da807-b775-4b98-bd6f-d1a23d155439', '2023-07-23 19:55:13', '2023-07-23 19:55:13'),
(25, 4, 30, 100000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/f88615f4-6e00-4acc-ae84-0cbc2f3a0c31', '2023-07-23 20:06:53', '2023-07-23 20:06:53'),
(26, 5, 25, 150000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/f540e205-17bb-41d7-a58b-dea492128b88', '2023-07-23 20:07:52', '2023-07-23 20:07:52'),
(27, 6, 30, 100000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/e805cc35-8b22-40cb-a06d-ac0efef25ba1', '2023-07-23 20:28:37', '2023-07-23 20:28:38'),
(28, 4, 30, 100000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/933ba297-d280-4abc-a246-5773841e7ea7', '2023-07-23 20:30:33', '2023-07-23 20:30:33'),
(29, 5, 30, 1800000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/d8e773bd-f5b6-4ddd-b7e2-73ebeb68a502', '2023-07-23 20:33:42', '2023-07-23 20:33:43'),
(30, 3, 30, 1800000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/fdfecf13-010d-43d1-b3b9-88e159bca7b4', '2023-07-23 20:50:52', '2023-07-23 20:50:52'),
(31, 2, 30, 1200000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/ec1cbfd9-1560-4520-af6f-d3bdba4e87fc', '2023-07-23 20:54:54', '2023-07-23 20:54:54'),
(32, 2, 31, 1200000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/123744cc-9bbb-4fc0-9125-5f310ba4925f', '2023-07-23 20:58:11', '2023-07-23 20:58:11'),
(33, 6, 31, 1800000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/85a02c16-8c69-4faa-bce9-64bb59c4c8e7', '2023-07-23 21:29:23', '2023-07-23 21:29:24');

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
(32, 'putri bahjah', 'putri99@gmail.com', 'Product Designer', '$2a$04$GNA5cA1/TmMf4sZ/1h9Q4.Wi/sfV43gtgFRtNXxJKc1fHG4FyEvdO', 'images/32-Image.png', 'admin', '', '2023-07-28 13:22:34', '2023-07-28 13:22:55');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
