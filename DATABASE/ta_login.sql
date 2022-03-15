-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2022 at 02:27 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ta_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `nomor` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'admin'),
(2, 'user', 'user biasa');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_permissions`
--

INSERT INTO `auth_groups_permissions` (`group_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 6),
(2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'donnypratamae@gmail.com', NULL, '2022-01-03 22:01:14', 0),
(2, '::1', 'donnypratamae@gmail.com', NULL, '2022-01-03 22:01:38', 0),
(3, '::1', 'donnypratamae@gmail.com', NULL, '2022-01-03 22:01:48', 0),
(4, '::1', 'donnypratamae@gmail.com', 5, '2022-01-03 22:03:17', 0),
(5, '::1', 'donnypratamae@gmail.com', 5, '2022-01-03 22:03:53', 0),
(6, '::1', 'donnypratamae@gmail.com', 6, '2022-01-03 22:04:45', 1),
(7, '::1', 'donnypratamae@gmail.com', 6, '2022-01-03 22:10:54', 1),
(8, '::1', 'donnypratamae@gmail.com', 6, '2022-01-03 22:47:55', 1),
(9, '::1', 'donnypratamae@gmail.com', 6, '2022-01-03 22:51:50', 1),
(10, '::1', 'donnypratamae@gmail.com', 6, '2022-01-04 00:22:27', 1),
(11, '::1', 'donnypratamae@gmail.com', 6, '2022-01-04 02:12:37', 1),
(12, '::1', 'donnypratamae@gmail.com', 6, '2022-01-04 02:16:55', 1),
(13, '::1', 'donnypratamae@gmail.com', 6, '2022-01-04 08:04:52', 1),
(14, '::1', 'donnypratamae@gmail.com', 6, '2022-01-04 22:06:33', 1),
(15, '::1', 'donnypratamae@gmail.com', 6, '2022-01-05 00:33:58', 1),
(16, '::1', 'donnypratamae@gmail.com', 6, '2022-01-05 01:21:14', 1),
(17, '::1', 'donnypratamae@gmail.com', 6, '2022-01-05 01:25:53', 1),
(18, '::1', 'donnypratamae@gmail.com', 6, '2022-01-05 01:36:22', 1),
(19, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 00:24:32', 1),
(20, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 00:25:30', 1),
(21, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 00:35:52', 1),
(22, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 00:59:40', 1),
(23, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 01:08:16', 1),
(24, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 02:10:51', 1),
(25, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 02:13:10', 1),
(26, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 02:18:00', 1),
(27, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 02:33:35', 1),
(28, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 02:47:30', 1),
(29, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 02:50:23', 1),
(30, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 07:19:52', 1),
(31, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 07:27:21', 1),
(32, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 07:27:31', 1),
(33, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 07:27:42', 1),
(34, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 07:28:46', 1),
(35, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 07:30:19', 1),
(36, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 07:30:29', 1),
(37, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 07:30:33', 1),
(38, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 07:30:37', 1),
(39, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 07:30:44', 1),
(40, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 07:30:58', 1),
(41, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 07:32:14', 1),
(42, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 07:51:34', 1),
(43, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 07:54:35', 1),
(44, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 08:02:07', 1),
(45, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 08:02:26', 1),
(46, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 08:02:30', 1),
(47, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 08:02:34', 1),
(48, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 08:11:14', 1),
(49, '::1', 'donnypratamae@gmail.com', 6, '2022-01-06 08:24:10', 1),
(50, '::1', 'donnypratamae@gmail.com', 6, '2022-01-07 07:27:36', 1),
(51, '::1', 'donnypratamae@gmail.com', 6, '2022-01-07 07:33:00', 1),
(52, '::1', 'donnypratamae@gmail.com', 6, '2022-01-07 07:33:45', 1),
(53, '::1', 'donnypratamae@gmail.com', 6, '2022-01-07 07:35:05', 1),
(54, '::1', 'donnypratamae@gmail.com', 6, '2022-01-07 07:43:17', 1),
(55, '::1', 'donnypratamae@gmail.com', 6, '2022-01-07 07:51:49', 1),
(56, '::1', 'bussinesdonny@gmail.com', 7, '2022-01-07 07:52:23', 1),
(57, '::1', 'donnypratamae@gmail.com', 6, '2022-01-07 07:53:08', 1),
(58, '::1', 'bussinesdonny@gmail.com', 7, '2022-01-07 07:54:14', 1),
(59, '::1', 'donnypratamae@gmail.com', 6, '2022-01-07 07:59:14', 1),
(60, '::1', 'bussinesdonny@gmail.com', 7, '2022-01-07 07:59:31', 1),
(61, '::1', 'bussinesdonny@gmail.com', 7, '2022-01-07 08:04:04', 1),
(62, '::1', 'donnypratamae@gmail.com', 6, '2022-01-07 08:07:22', 1),
(63, '::1', 'bussinesdonny@gmail.com', 7, '2022-01-07 08:07:42', 1),
(64, '::1', 'donnypratamae@gmail.com', 6, '2022-01-07 08:08:00', 1),
(65, '::1', 'donnypratamae@gmail.com', 6, '2022-01-07 08:09:34', 1),
(66, '::1', 'donnypratamae@gmail.com', 6, '2022-01-07 08:10:41', 1),
(67, '::1', 'donnypratamae@gmail.com', 6, '2022-01-07 08:11:45', 1),
(68, '::1', 'bussinesdonny@gmail.com', 7, '2022-01-07 08:11:56', 1),
(69, '::1', 'bussinesdonny@gmail.com', 7, '2022-01-07 08:12:23', 1),
(70, '::1', 'donnypratamae@gmail.com', 6, '2022-01-07 08:12:43', 1),
(71, '::1', 'bussinesdonny@gmail.com', 7, '2022-01-07 08:13:05', 1),
(72, '::1', 'bussinesdonny@gmail.com', 7, '2022-01-07 08:55:30', 1),
(73, '::1', 'donnypratamae@gmail.com', 6, '2022-01-07 08:55:54', 1),
(74, '::1', 'bussinesdonny@gmail.com', 7, '2022-01-07 09:02:49', 1),
(75, '::1', 'donnypratamae@gmail.com', 6, '2022-01-07 09:03:48', 1),
(76, '::1', 'bussinesdonny@gmail.com', 7, '2022-01-07 09:04:44', 1),
(77, '::1', 'donnypratamae@gmail.com', 6, '2022-01-07 09:05:31', 1),
(78, '::1', 'bussinesdonny@gmail.com', 7, '2022-01-07 09:05:39', 1),
(79, '::1', 'donnypratamae@gmail.com', 6, '2022-01-07 09:06:10', 1),
(80, '::1', 'bussinesdonny@gmail.com', 7, '2022-01-07 09:08:20', 1),
(81, '::1', 'bussinesdonny@gmail.com', 7, '2022-01-07 09:08:34', 1),
(82, '::1', 'bussinesdonny@gmail.com', 7, '2022-01-07 09:09:21', 1),
(83, '::1', 'bussinesdonny@gmail.com', 7, '2022-01-07 09:12:51', 1),
(84, '::1', 'donnypratamae@gmail.com', 6, '2022-01-07 09:13:59', 1),
(85, '::1', 'donnypratamae@gmail.com', 6, '2022-01-07 09:21:21', 1),
(86, '::1', 'donnypratamae@gmail.com', 6, '2022-01-07 23:26:24', 1),
(87, '::1', 'bussinesdonny@gmail.com', 7, '2022-01-07 23:28:02', 1),
(88, '::1', 'donnypratamae@gmail.com', 6, '2022-01-07 23:28:23', 1),
(89, '::1', 'donnypratamae@gmail.com', 6, '2022-01-07 23:36:07', 1),
(90, '::1', 'bussinesdonny@gmail.com', 7, '2022-01-07 23:48:20', 1),
(91, '::1', 'donnypratamae@gmail.com', 6, '2022-01-07 23:48:28', 1),
(92, '::1', 'bussinesdonny@gmail.com', 7, '2022-01-07 23:48:51', 1),
(93, '::1', 'bussinesdonny@gmail.com', 7, '2022-01-08 00:21:38', 1),
(94, '::1', 'donnypratamae@gmail.com', 6, '2022-01-08 00:23:00', 1),
(95, '::1', 'donnypratamae@gmail.com', 6, '2022-01-08 02:37:47', 1),
(96, '::1', 'bussinesdonny@gmail.com', 7, '2022-01-08 03:56:45', 1),
(97, '::1', 'donnypratamae@gmail.com', 6, '2022-01-08 03:58:39', 1),
(98, '::1', 'donnypratamae@gmail.com', 6, '2022-01-08 03:59:37', 1),
(99, '::1', 'donnypratamae@gmail.com', 6, '2022-01-09 07:51:48', 1),
(100, '::1', 'donnypratamae@gmail.com', 6, '2022-01-09 20:55:02', 1),
(101, '::1', 'bussinesdonny@gmail.com', 7, '2022-01-10 00:16:28', 1),
(102, '::1', 'donnypratamae@gmail.com', 6, '2022-01-10 00:23:03', 1),
(103, '::1', 'bussinesdonny@gmail.com', 7, '2022-01-10 00:55:30', 1),
(104, '::1', 'donnypratamae@gmail.com', 6, '2022-01-10 00:56:21', 1),
(105, '::1', 'donnypratamae@gmail.com', 6, '2022-01-10 00:56:57', 1),
(106, '::1', 'donnypratamae@gmail.com', 6, '2022-01-10 00:57:39', 1),
(107, '::1', 'donnypratamae@gmail.com', 6, '2022-01-10 00:58:03', 1),
(108, '::1', 'bussinesdonny@gmail.com', 7, '2022-01-10 01:57:32', 1),
(109, '::1', 'bussinesdonny@gmail.com', 7, '2022-01-10 01:57:56', 1),
(110, '::1', 'donnypratamae@gmail.com', 6, '2022-01-10 01:58:08', 1),
(111, '::1', 'bussinesdonny@gmail.com', 7, '2022-01-10 02:13:34', 1),
(112, '::1', 'bussinesdonny@gmail.com', 7, '2022-01-10 08:58:43', 1),
(113, '::1', 'donnypratamae@gmail.com', 6, '2022-01-10 09:00:33', 1),
(114, '::1', 'donnypratamae@gmail.com', 6, '2022-01-10 09:10:27', 1),
(115, '::1', 'donnypratamae@gmail.com', 6, '2022-01-23 07:22:09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'manage-users', 'manage all users'),
(2, 'manage-profile', 'manage user\'s profile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1640695453, 1),
(2, '2021-12-02-035453', 'App\\Database\\Migrations\\Anggota', 'default', 'App', 1640695454, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) NOT NULL DEFAULT 'default.svg',
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `fullName`, `user_image`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'donnypratamae@gmail.com', 'donnypratama', 'Donny Pratama', 'default.svg', '$2y$10$0yQXMw.FVpvCBVnYDgApvOmDWsqMKkcw0P.zaxmdYIkgo0xJoWNoW', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-01-03 22:04:31', '2022-01-03 22:04:31', NULL),
(7, 'bussinesdonny@gmail.com', 'ameliaandani', 'Amelia Andani Pratama', 'default.svg', '$2y$10$Vk.y4KCQcq8aZ8tFCu2KxeAwuLH7ZHbESYOR2owZXVUyhEBqjnZ2O', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-01-07 07:44:35', '2022-01-07 07:44:35', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
