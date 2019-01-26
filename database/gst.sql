-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 26, 2019 at 05:43 PM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 7.1.22-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gst`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mob_num` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `nature_of_busines` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_11_28_062727_create_party_manages', 2),
(4, '2018_11_29_053957_change_column_for_party', 3),
(6, '2018_11_29_081000_add_field_in_manage_party', 4),
(7, '2018_11_29_105025_suppliers', 5),
(8, '2018_11_29_105052_customers', 5),
(9, '2018_11_29_104909_mp_purchases', 6),
(10, '2018_11_29_104959_mp_sales', 6);

-- --------------------------------------------------------

--
-- Table structure for table `mp_purchases`
--

CREATE TABLE `mp_purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `party_id` int(10) UNSIGNED NOT NULL,
  `supplier_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gstin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` timestamp NULL DEFAULT NULL,
  `tax_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mp_sales`
--

CREATE TABLE `mp_sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `party_id` int(10) UNSIGNED NOT NULL,
  `customers_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gstin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` timestamp NULL DEFAULT NULL,
  `tax_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `party_manages`
--

CREATE TABLE `party_manages` (
  `id` int(10) UNSIGNED NOT NULL,
  `party_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mob_num` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gstin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `nature_of_busines` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `party_manages`
--

INSERT INTO `party_manages` (`id`, `party_name`, `mob_num`, `address`, `email`, `gstin`, `email_verified_at`, `nature_of_busines`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'aaaaaaaa', '5675', 'bbbbbbbbbbcfb', 'ddddddd@dfh.dfh', '44444444444', NULL, 'cc frth c', NULL, '2018-11-29 01:07:04', '2018-12-01 03:19:18'),
(2, 'fgch', '56756', 'dfhf', 'fgvn@dfgyd.ghj', 'dfhfgh', NULL, 'fgjh', NULL, '2018-11-30 01:49:37', '2018-11-30 01:49:37'),
(3, 'fgch', '56756', 'dfhf', 'fgvn@dfgyd.ghj', 'dfhfgh', NULL, 'fgjh', NULL, '2018-11-30 02:01:49', '2018-11-30 02:01:49'),
(4, 'fgch', '56756', 'dfhf', 'fgvn@dfgyd.ghj', 'dfhfgh', NULL, 'fgjh', NULL, '2018-11-30 02:08:38', '2018-11-30 02:08:38'),
(5, 'cgvbnfgc', '34564', 'dfcgth', 'dxfcgbdxf@dfxhb.ghj', 'fg657', NULL, 'vbj', NULL, '2018-11-30 05:01:06', '2018-11-30 05:01:06'),
(6, 'cgvbnfgc', '34564', 'dfcgth', 'dxfcgbdxf@dfxhb.ghj', 'fg657', NULL, 'vbj', NULL, '2018-11-30 05:44:43', '2018-11-30 05:44:43'),
(7, 'aaaaaaaaaaaaa', '22222222222', 'bbbbbbbbbbbbb', 'aaaaaaaaa@ggg.ccc', 'fg657', NULL, 'vbj', NULL, '2018-11-30 05:46:14', '2018-11-30 05:46:14'),
(9, 'aaaaaaaaaaaaa', '22222222222', 'bbbbbbbbbbbbb', 'aaaaaaaaa@ggg.ccc', 'fg657', NULL, 'vbj', '2018-12-01 04:54:42', '2018-11-30 05:48:26', '2018-12-01 04:54:42'),
(12, 'aaaaaaaaaa', '5675', 'bbbbbbbbbb', 'ddddddd@dfh.dfh', '4444444444444444', NULL, 'cc frth c', '2018-12-01 04:53:05', '2018-11-30 05:51:43', '2018-12-01 04:53:05'),
(13, 'aaaaaaaaaaaaa', '5675', 'cfb', 'ddddddd@dfh.dfh', NULL, NULL, 'cc frth c', '2018-12-01 04:54:28', '2018-11-30 05:53:03', '2018-12-01 04:54:28'),
(14, 'ftgjhnfgth', '5675', 'cfb', 'ddddddd@dfh.dfh', NULL, NULL, 'cc frth c', '2018-12-01 04:54:36', '2018-11-30 06:00:36', '2018-12-01 04:54:36'),
(15, 'ashutosh', '96585476170', 'bbbbbbbbbbbbbb', 'aaa@aaa.com', '768ghj', NULL, 'gjhghij', NULL, '2018-12-01 05:50:05', '2018-12-01 05:50:20');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `supplier_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mob_num` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `nature_of_busines` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ashutosh', 'admin@admin.com', NULL, '$2y$10$6KTqsaxz8UsdnZGsMQG/ieEhU2QmotAhqWSNUDFYlt0MPqYDSBKbC', 'Pv9vqvBA3q7ohzjT8LjEo0MH1j4RG4okNrMJo3J3m8Rzfo98DNk8bvbRHzzM', '2018-11-27 04:51:32', '2018-11-27 04:51:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_purchases`
--
ALTER TABLE `mp_purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mp_purchases_party_id_foreign` (`party_id`);

--
-- Indexes for table `mp_sales`
--
ALTER TABLE `mp_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mp_sales_party_id_foreign` (`party_id`);

--
-- Indexes for table `party_manages`
--
ALTER TABLE `party_manages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `mp_purchases`
--
ALTER TABLE `mp_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mp_sales`
--
ALTER TABLE `mp_sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `party_manages`
--
ALTER TABLE `party_manages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `mp_purchases`
--
ALTER TABLE `mp_purchases`
  ADD CONSTRAINT `mp_purchases_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `party_manages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `mp_sales`
--
ALTER TABLE `mp_sales`
  ADD CONSTRAINT `mp_sales_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `party_manages` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
