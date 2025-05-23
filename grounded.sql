-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2025 at 05:33 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grounded`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`id`, `user_id`, `group`, `created_at`) VALUES
(1, 1, 'user', '2025-05-22 06:47:45');

-- --------------------------------------------------------

--
-- Table structure for table `auth_identities`
--

CREATE TABLE `auth_identities` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `secret` varchar(255) NOT NULL,
  `secret2` varchar(255) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `extra` text DEFAULT NULL,
  `force_reset` tinyint(1) NOT NULL DEFAULT 0,
  `last_used_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_identities`
--

INSERT INTO `auth_identities` (`id`, `user_id`, `type`, `name`, `secret`, `secret2`, `expires`, `extra`, `force_reset`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'email_password', NULL, 'jlrobertson1023@gmail.com', '$2y$12$Pcskw7OSRMfZL0qqTQPMTu4puVflDQaKwUzBnS0CseI7V0/x.dLFG', NULL, NULL, 0, '2025-05-23 12:54:16', '2025-05-22 06:47:44', '2025-05-23 12:54:16');

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `user_agent`, `id_type`, `identifier`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:138.0) Gecko/20100101 Firefox/138.0', 'email_password', 'jlrobertson1023@gmail.com', 1, '2025-05-22 19:17:33', 1),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:138.0) Gecko/20100101 Firefox/138.0', 'email_password', 'jlrobertson1023@gmail.com', 1, '2025-05-22 23:04:38', 1),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:138.0) Gecko/20100101 Firefox/138.0', 'email_password', 'jlrobertson1023@gmail.com', 1, '2025-05-23 12:54:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions_users`
--

CREATE TABLE `auth_permissions_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `permission` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_remember_tokens`
--

CREATE TABLE `auth_remember_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_token_logins`
--

CREATE TABLE `auth_token_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`) VALUES
(1, 'Personal Background'),
(2, 'Life & Values'),
(3, 'Personality & Preferences'),
(4, 'Hobbies & Interests'),
(5, 'Food & Drink'),
(6, 'Travel & Adventure'),
(7, 'Pop Culture'),
(8, 'Relationships & People'),
(9, 'Career & Ambitions'),
(10, 'Reflection & Growth'),
(11, 'Fun & Random'),
(12, 'Tech & Digital Life'),
(13, 'This or That'),
(14, 'Hypotheticals'),
(15, 'Daily Life'),
(16, 'Social Life'),
(17, 'Deep Dives'),
(18, 'Philosophical'),
(19, 'Self-Expression'),
(20, 'Looking Forward');

-- --------------------------------------------------------

--
-- Table structure for table `categoryquestionbank`
--

CREATE TABLE `categoryquestionbank` (
  `question_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categoryquestionbank`
--

INSERT INTO `categoryquestionbank` (`question_id`, `category_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4),
(21, 5),
(22, 5),
(23, 5),
(24, 5),
(25, 5),
(26, 6),
(27, 6),
(28, 6),
(29, 6),
(30, 6),
(31, 7),
(32, 7),
(33, 7),
(34, 7),
(35, 7),
(36, 8),
(37, 8),
(38, 8),
(39, 8),
(40, 8),
(41, 9),
(42, 9),
(43, 9),
(44, 9),
(45, 9),
(46, 10),
(47, 10),
(48, 10),
(49, 10),
(50, 10),
(51, 11),
(52, 11),
(53, 11),
(54, 11),
(55, 11),
(56, 12),
(57, 12),
(58, 12),
(59, 12),
(60, 12),
(61, 13),
(62, 13),
(63, 13),
(64, 13),
(65, 13),
(66, 14),
(67, 14),
(68, 14),
(69, 14),
(70, 14),
(71, 15),
(72, 15),
(73, 15),
(74, 15),
(75, 15),
(76, 16),
(77, 16),
(78, 16),
(79, 16),
(80, 16),
(81, 17),
(82, 17),
(83, 17),
(84, 17),
(85, 17),
(86, 18),
(87, 18),
(88, 18),
(89, 18),
(90, 18),
(91, 19),
(92, 19),
(93, 19),
(94, 19),
(95, 19),
(96, 20),
(97, 20),
(98, 20),
(99, 20),
(100, 20);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-12-28-223112', 'CodeIgniter\\Shield\\Database\\Migrations\\CreateAuthTables', 'default', 'CodeIgniter\\Shield', 1747850269, 1),
(2, '2021-07-04-041948', 'CodeIgniter\\Settings\\Database\\Migrations\\CreateSettingsTable', 'default', 'CodeIgniter\\Settings', 1747850269, 1),
(3, '2021-11-14-143905', 'CodeIgniter\\Settings\\Database\\Migrations\\AddContextColumn', 'default', 'CodeIgniter\\Settings', 1747850269, 1);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`) VALUES
(1, 'Where did you grow up?'),
(2, 'What’s your favorite childhood memory?'),
(3, 'Did you have a favorite toy or game as a kid?'),
(4, 'What’s a tradition your family had that you loved?'),
(5, 'What’s the best gift you’ve ever received?'),
(6, 'What does success mean to you?'),
(7, 'What do you value most in a friendship?'),
(8, 'What motivates you every day?'),
(9, 'Have you ever had a life-changing experience?'),
(10, 'What’s one principle you try to live by?'),
(11, 'Are you more introverted or extroverted?'),
(12, 'What’s your love language?'),
(13, 'Do you prefer mornings or nights?'),
(14, 'What’s your zodiac sign, and do you relate to it?'),
(15, 'Do you like surprises?'),
(16, 'What’s your favorite hobby?'),
(17, 'What’s a skill you wish you had?'),
(18, 'Do you play any instruments?'),
(19, 'What’s a creative outlet you enjoy?'),
(20, 'How do you usually spend your weekends?'),
(21, 'What’s your comfort food?'),
(22, 'Do you enjoy cooking or baking?'),
(23, 'What’s your go-to coffee or tea order?'),
(24, 'Have you ever tried a food you hated as a kid but love now?'),
(25, 'What’s the weirdest food you’ve ever tried?'),
(26, 'What’s the best place you’ve ever traveled to?'),
(27, 'Where’s your dream vacation?'),
(28, 'Do you prefer mountains or beaches?'),
(29, 'Would you rather explore a new city or stay in nature?'),
(30, 'Have you ever traveled alone?'),
(31, 'What’s your all-time favorite movie?'),
(32, 'What TV show are you currently watching?'),
(33, 'Who’s your favorite musician or band?'),
(34, 'Do you listen to podcasts? Any favorites?'),
(35, 'What book has impacted you the most?'),
(36, 'What makes someone a good friend?'),
(37, 'Do you believe in soulmates?'),
(38, 'Have you ever had a mentor?'),
(39, 'What’s the best advice someone has given you?'),
(40, 'What’s a quality you admire in others?'),
(41, 'What did you want to be when you were a kid?'),
(42, 'What’s your dream job now?'),
(43, 'What’s a big goal you\'re working toward?'),
(44, 'Have you ever changed careers?'),
(45, 'Do you prefer working in a team or alone?'),
(46, 'What’s something you’ve overcome that you\'re proud of?'),
(47, 'How do you handle failure?'),
(48, 'What’s a mistake that taught you something valuable?'),
(49, 'How do you define personal growth?'),
(50, 'What’s one thing you’re currently working on improving?'),
(51, 'If you could have any superpower, what would it be?'),
(52, 'What’s your guilty pleasure?'),
(53, 'Do you believe in luck?'),
(54, 'What’s a weird talent you have?'),
(55, 'What’s something people often misunderstand about you?'),
(56, 'What app do you use the most?'),
(57, 'Are you more of a texter or caller?'),
(58, 'Do you like social media?'),
(59, 'What’s your favorite meme?'),
(60, 'Have you ever taken a break from technology?'),
(61, 'Coffee or tea?'),
(62, 'Netflix or YouTube?'),
(63, 'Sweet or savory?'),
(64, 'Books or movies?'),
(65, 'Cats or dogs?'),
(66, 'If you won the lottery, what’s the first thing you’d do?'),
(67, 'If you could live anywhere, where would it be?'),
(68, 'If you could meet any historical figure, who would it be?'),
(69, 'If you had to eat one meal for the rest of your life, what would it be?'),
(70, 'If time travel was real, what era would you visit?'),
(71, 'What’s the first thing you do in the morning?'),
(72, 'Do you have any daily rituals?'),
(73, 'What’s your favorite way to relax?'),
(74, 'What helps you recharge after a long day?'),
(75, 'Are you more of a planner or go-with-the-flow type?'),
(76, 'Do you prefer big parties or small gatherings?'),
(77, 'Who’s someone you can always count on?'),
(78, 'Do you enjoy meeting new people?'),
(79, 'What’s your ideal weekend plan?'),
(80, 'How do you maintain long-distance friendships?'),
(81, 'What do you fear most?'),
(82, 'What brings you peace?'),
(83, 'What does love mean to you?'),
(84, 'Have you ever had your heart broken?'),
(85, 'What do you want your legacy to be?'),
(86, 'Do you believe everything happens for a reason?'),
(87, 'What’s the purpose of life, in your opinion?'),
(88, 'Can people truly change?'),
(89, 'What do you think happens after we die?'),
(90, 'What’s something you’ll never understand?'),
(91, 'How do you express yourself creatively?'),
(92, 'What’s your go-to outfit that makes you feel confident?'),
(93, 'Do you journal, write, or create art?'),
(94, 'What song feels like your life anthem?'),
(95, 'What’s your aesthetic or style?'),
(96, 'Where do you see yourself in 5 years?'),
(97, 'What are you most looking forward to this year?'),
(98, 'What’s one thing on your bucket list?'),
(99, 'What’s a habit you’re trying to build?'),
(100, 'What’s one dream you haven’t shared with anyone yet?');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(9) NOT NULL,
  `class` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `type` varchar(31) NOT NULL DEFAULT 'string',
  `context` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `last_active` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `status`, `status_message`, `active`, `last_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'jbldwn', NULL, NULL, 1, NULL, '2025-05-22 06:47:43', '2025-05-22 06:47:45', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_secret` (`type`,`secret`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`,`identifier`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_permissions_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `auth_remember_tokens_user_id_foreign` (`user_id`);

--
-- Indexes for table `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`,`identifier`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_identities`
--
ALTER TABLE `auth_identities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD CONSTRAINT `auth_identities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  ADD CONSTRAINT `auth_permissions_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  ADD CONSTRAINT `auth_remember_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
