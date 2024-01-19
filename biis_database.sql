-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2024 at 10:48 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biis_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_17_123626_officer_table', 1),
(6, '2024_01_18_035244_create_profiles_table', 2),
(7, '2024_01_18_042151_create_profiles_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `position` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `first_name`, `last_name`, `date_of_birth`, `email`, `email_verified_at`, `position`, `created_at`, `updated_at`) VALUES
(1, 'Camylle', 'Waelchi', '1977-01-28', 'altenwerth.daren@example.net', '2024-01-17 21:34:06', 'Asia', '2024-01-17 21:34:06', '2024-01-17 21:34:06'),
(2, 'Alberto', 'Daniel', '2006-11-11', 'katelynn.bednar@example.net', '2024-01-17 21:34:06', 'Brennan', '2024-01-17 21:34:06', '2024-01-17 21:34:06'),
(3, 'Bryana', 'Tremblay', '1995-08-06', 'winifred.schultz@example.com', '2024-01-17 21:34:06', 'Isaias', '2024-01-17 21:34:06', '2024-01-17 21:34:06'),
(4, 'Herta', 'Kohler', '1987-12-08', 'jkuvalis@example.com', '2024-01-17 21:34:06', 'Litzy', '2024-01-17 21:34:06', '2024-01-17 21:34:06'),
(5, 'Orie', 'Mills', '2005-04-19', 'laverne92@example.com', '2024-01-17 21:34:06', 'Marty', '2024-01-17 21:34:06', '2024-01-17 21:34:06'),
(6, 'Angelita', 'Macejkovic', '1985-01-02', 'kerluke.gloria@example.org', '2024-01-17 21:34:06', 'Jocelyn', '2024-01-17 21:34:06', '2024-01-17 21:34:06'),
(7, 'Princess', 'Kuhic', '1989-02-09', 'lambert.lesch@example.com', '2024-01-17 21:34:06', 'Gisselle', '2024-01-17 21:34:06', '2024-01-17 21:34:06'),
(8, 'Estrella', 'Ondricka', '1980-09-27', 'pmedhurst@example.com', '2024-01-17 21:34:06', 'Eileen', '2024-01-17 21:34:06', '2024-01-17 21:34:06'),
(9, 'Afton', 'Jerde', '1987-10-30', 'aletha68@example.net', '2024-01-17 21:34:06', 'Jarvis', '2024-01-17 21:34:07', '2024-01-17 21:34:07'),
(10, 'Wiley', 'Nader', '1999-01-11', 'towne.velda@example.org', '2024-01-17 21:34:06', 'Silas', '2024-01-17 21:34:07', '2024-01-17 21:34:07'),
(11, 'Frida', 'Kulas', '1991-05-06', 'treutel.arno@example.net', '2024-01-17 21:34:06', 'Rahsaan', '2024-01-17 21:34:07', '2024-01-17 21:34:07'),
(12, 'Koby', 'Zulauf', '1977-07-25', 'balistreri.nathan@example.com', '2024-01-17 21:34:06', 'Evangeline', '2024-01-17 21:34:07', '2024-01-17 21:34:07'),
(13, 'Vernie', 'Ortiz', '1996-03-12', 'ruthie49@example.com', '2024-01-17 21:34:06', 'Finn', '2024-01-17 21:34:07', '2024-01-17 21:34:07'),
(14, 'Nyah', 'Waters', '2006-08-14', 'brian01@example.com', '2024-01-17 21:34:06', 'Eve', '2024-01-17 21:34:07', '2024-01-17 21:34:07'),
(15, 'Pinkie', 'Schumm', '1991-11-23', 'weber.charlotte@example.org', '2024-01-17 21:34:06', 'Eloise', '2024-01-17 21:34:07', '2024-01-17 21:34:07'),
(16, 'Taya', 'Huels', '1972-06-23', 'cummings.mathilde@example.com', '2024-01-17 21:34:06', 'Forest', '2024-01-17 21:34:07', '2024-01-17 21:34:07'),
(17, 'Jazmyn', 'Jenkins', '2007-11-26', 'mbeer@example.net', '2024-01-17 21:34:06', 'Anika', '2024-01-17 21:34:07', '2024-01-17 21:34:07'),
(18, 'Gaylord', 'Cormier', '2005-08-05', 'ksenger@example.com', '2024-01-17 21:34:06', 'Julie', '2024-01-17 21:34:07', '2024-01-17 21:34:07'),
(19, 'Jackeline', 'Adams', '1981-09-06', 'effertz.marty@example.net', '2024-01-17 21:34:06', 'Christiana', '2024-01-17 21:34:07', '2024-01-17 21:34:07'),
(20, 'Dominic', 'Fadel', '1971-01-11', 'kemmer.rita@example.org', '2024-01-17 21:34:06', 'Amie', '2024-01-17 21:34:07', '2024-01-17 21:34:07'),
(21, 'Brice', 'Zulauf', '1990-06-23', 'araceli.schmeler@example.org', '2024-01-17 21:34:06', 'Glenda', '2024-01-17 21:34:07', '2024-01-17 21:34:07'),
(22, 'Adah', 'Bins', '1990-09-10', 'gdickinson@example.com', '2024-01-17 21:34:06', 'Alan', '2024-01-17 21:34:07', '2024-01-17 21:34:07'),
(23, 'Ashtyn', 'Schuppe', '1997-04-04', 'ywest@example.com', '2024-01-17 21:34:06', 'Jovany', '2024-01-17 21:34:07', '2024-01-17 21:34:07'),
(24, 'Elton', 'Johnston', '2011-12-04', 'lea62@example.org', '2024-01-17 21:34:06', 'Jacky', '2024-01-17 21:34:07', '2024-01-17 21:34:07'),
(25, 'Lavonne', 'Dooley', '2007-04-14', 'wolff.meda@example.org', '2024-01-17 21:34:06', 'Thomas', '2024-01-17 21:34:07', '2024-01-17 21:34:07'),
(26, 'Caroline', 'Champlin', '2002-11-13', 'orpha26@example.org', '2024-01-17 21:34:06', 'Tony', '2024-01-17 21:34:07', '2024-01-17 21:34:07'),
(27, 'Tavares', 'Heller', '2003-02-22', 'zbauch@example.com', '2024-01-17 21:34:06', 'Tessie', '2024-01-17 21:34:07', '2024-01-17 21:34:07'),
(28, 'Eldred', 'Kiehn', '2007-06-04', 'welch.blanche@example.org', '2024-01-17 21:34:06', 'Johnnie', '2024-01-17 21:34:07', '2024-01-17 21:34:07'),
(29, 'Cleo', 'Johnston', '1994-02-08', 'janelle.price@example.com', '2024-01-17 21:34:06', 'Maida', '2024-01-17 21:34:07', '2024-01-17 21:34:07'),
(30, 'Kasey', 'Tillman', '2000-10-05', 'finn.will@example.org', '2024-01-17 21:34:06', 'Isaias', '2024-01-17 21:34:07', '2024-01-17 21:34:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `date_of_birth`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Waldo', 'Okuneva', '1991-11-28', 'earl73@example.com', '2024-01-17 06:43:34', '$2y$12$c4VhZRKHX/2wA9JP0T6xHe9YEn19Mzo./fTrQuXgVw7CEIKQynlTW', 'NAvZXo9xPQ', '2024-01-17 06:43:34', '2024-01-17 06:43:34'),
(2, 'Nathanael', 'Howe', '1978-05-23', 'elouise17@example.org', '2024-01-17 06:43:34', '$2y$12$c4VhZRKHX/2wA9JP0T6xHe9YEn19Mzo./fTrQuXgVw7CEIKQynlTW', 'BEiMoewffF', '2024-01-17 06:43:34', '2024-01-17 06:43:34'),
(3, 'Eloy', 'Nitzsche', '1985-02-23', 'cierra.hayes@example.org', '2024-01-17 06:43:34', '$2y$12$c4VhZRKHX/2wA9JP0T6xHe9YEn19Mzo./fTrQuXgVw7CEIKQynlTW', 'F9PmVyfJbv', '2024-01-17 06:43:34', '2024-01-17 06:43:34'),
(4, 'Toby', 'Williamson', '2012-05-27', 'egutmann@example.org', '2024-01-17 06:43:34', '$2y$12$c4VhZRKHX/2wA9JP0T6xHe9YEn19Mzo./fTrQuXgVw7CEIKQynlTW', 'DCvdg491Yk', '2024-01-17 06:43:34', '2024-01-17 06:43:34'),
(5, 'Roxanne', 'Ortiz', '1972-02-14', 'wmarks@example.net', '2024-01-17 06:43:34', '$2y$12$c4VhZRKHX/2wA9JP0T6xHe9YEn19Mzo./fTrQuXgVw7CEIKQynlTW', 'ZhfWVapG7x', '2024-01-17 06:43:34', '2024-01-17 06:43:34'),
(6, 'Bradford', 'Quigley', '1979-06-18', 'darby30@example.org', '2024-01-17 06:43:34', '$2y$12$c4VhZRKHX/2wA9JP0T6xHe9YEn19Mzo./fTrQuXgVw7CEIKQynlTW', 'Ba0yBFhLP6', '2024-01-17 06:43:34', '2024-01-17 06:43:34'),
(7, 'Jermaine', 'Senger', '1985-05-31', 'zelma.aufderhar@example.com', '2024-01-17 06:43:34', '$2y$12$c4VhZRKHX/2wA9JP0T6xHe9YEn19Mzo./fTrQuXgVw7CEIKQynlTW', 'hIVJOmL31N', '2024-01-17 06:43:34', '2024-01-17 06:43:34'),
(8, 'Zita', 'Sawayn', '1975-06-29', 'awilderman@example.org', '2024-01-17 06:43:34', '$2y$12$c4VhZRKHX/2wA9JP0T6xHe9YEn19Mzo./fTrQuXgVw7CEIKQynlTW', 'Ql6Bysxb2I', '2024-01-17 06:43:34', '2024-01-17 06:43:34'),
(9, 'Cory', 'Purdy', '2000-03-21', 'schoen.tyree@example.com', '2024-01-17 06:43:34', '$2y$12$c4VhZRKHX/2wA9JP0T6xHe9YEn19Mzo./fTrQuXgVw7CEIKQynlTW', 'i0EePuiugq', '2024-01-17 06:43:34', '2024-01-17 06:43:34'),
(10, 'Noble', 'McDermott', '1985-02-09', 'prince40@example.com', '2024-01-17 06:43:34', '$2y$12$c4VhZRKHX/2wA9JP0T6xHe9YEn19Mzo./fTrQuXgVw7CEIKQynlTW', 'w1Hxv2w32Q', '2024-01-17 06:43:34', '2024-01-17 06:43:34'),
(11, 'Shane', 'Kiehn', '2012-02-24', 'lester.greenholt@example.org', '2024-01-17 06:43:34', '$2y$12$c4VhZRKHX/2wA9JP0T6xHe9YEn19Mzo./fTrQuXgVw7CEIKQynlTW', '1f2h0Y8KVQ', '2024-01-17 06:43:34', '2024-01-17 06:43:34'),
(12, 'Nasir', 'Homenick', '1995-05-23', 'domenick09@example.org', '2024-01-17 06:43:34', '$2y$12$c4VhZRKHX/2wA9JP0T6xHe9YEn19Mzo./fTrQuXgVw7CEIKQynlTW', 'vCCBeoGrjS', '2024-01-17 06:43:34', '2024-01-17 06:43:34'),
(13, 'Kaitlin', 'Cronin', '1980-03-09', 'vzemlak@example.org', '2024-01-17 06:43:34', '$2y$12$c4VhZRKHX/2wA9JP0T6xHe9YEn19Mzo./fTrQuXgVw7CEIKQynlTW', 'Yq1Lg3Nf4J', '2024-01-17 06:43:34', '2024-01-17 06:43:34'),
(14, 'Connor', 'Lehner', '2003-12-18', 'kris14@example.net', '2024-01-17 06:43:34', '$2y$12$c4VhZRKHX/2wA9JP0T6xHe9YEn19Mzo./fTrQuXgVw7CEIKQynlTW', 'RGMvyb5h4x', '2024-01-17 06:43:34', '2024-01-17 06:43:34'),
(15, 'Guy', 'Price', '1996-11-03', 'jones.jameson@example.com', '2024-01-17 06:43:34', '$2y$12$c4VhZRKHX/2wA9JP0T6xHe9YEn19Mzo./fTrQuXgVw7CEIKQynlTW', 'qVD8QfbtCM', '2024-01-17 06:43:34', '2024-01-17 06:43:34'),
(16, 'Erick', 'Bednar', '1970-12-20', 'danial.konopelski@example.org', '2024-01-17 06:43:34', '$2y$12$c4VhZRKHX/2wA9JP0T6xHe9YEn19Mzo./fTrQuXgVw7CEIKQynlTW', 'yBAQ3LLVwH', '2024-01-17 06:43:34', '2024-01-17 06:43:34'),
(17, 'Alda', 'Kozey', '2003-04-12', 'dewayne39@example.org', '2024-01-17 06:43:34', '$2y$12$c4VhZRKHX/2wA9JP0T6xHe9YEn19Mzo./fTrQuXgVw7CEIKQynlTW', 'rTN4wAGUQn', '2024-01-17 06:43:34', '2024-01-17 06:43:34'),
(18, 'Freida', 'Jenkins', '2011-08-07', 'fannie06@example.net', '2024-01-17 06:43:34', '$2y$12$c4VhZRKHX/2wA9JP0T6xHe9YEn19Mzo./fTrQuXgVw7CEIKQynlTW', 'flHEXjLtYB', '2024-01-17 06:43:34', '2024-01-17 06:43:34'),
(19, 'Barney', 'Terry', '1976-10-23', 'roberts.adrienne@example.net', '2024-01-17 06:43:34', '$2y$12$c4VhZRKHX/2wA9JP0T6xHe9YEn19Mzo./fTrQuXgVw7CEIKQynlTW', 'OQQYNJ8VIU', '2024-01-17 06:43:34', '2024-01-17 06:43:34'),
(20, 'Rosemarie', 'Mraz', '1992-08-07', 'hettinger.eveline@example.com', '2024-01-17 06:43:34', '$2y$12$c4VhZRKHX/2wA9JP0T6xHe9YEn19Mzo./fTrQuXgVw7CEIKQynlTW', 'Ag5f3JSEnT', '2024-01-17 06:43:34', '2024-01-17 06:43:34'),
(21, 'Germaine', 'Watsica', '1971-12-18', 'marta.feest@example.net', '2024-01-17 06:43:34', '$2y$12$c4VhZRKHX/2wA9JP0T6xHe9YEn19Mzo./fTrQuXgVw7CEIKQynlTW', 'eKEvZXzdAT', '2024-01-17 06:43:34', '2024-01-17 06:43:34'),
(22, 'Kody', 'Ernser', '2003-07-18', 'tlynch@example.org', '2024-01-17 06:43:34', '$2y$12$c4VhZRKHX/2wA9JP0T6xHe9YEn19Mzo./fTrQuXgVw7CEIKQynlTW', 'xU4QPv8DMT', '2024-01-17 06:43:34', '2024-01-17 06:43:34'),
(23, 'Aiden', 'Jacobs', '1976-11-23', 'jacques38@example.com', '2024-01-17 06:43:34', '$2y$12$c4VhZRKHX/2wA9JP0T6xHe9YEn19Mzo./fTrQuXgVw7CEIKQynlTW', 'Dtuv9Qoclm', '2024-01-17 06:43:34', '2024-01-17 06:43:34'),
(24, 'Zula', 'Schuppe', '2010-01-21', 'lakin.sydnee@example.org', '2024-01-17 06:43:34', '$2y$12$c4VhZRKHX/2wA9JP0T6xHe9YEn19Mzo./fTrQuXgVw7CEIKQynlTW', 'vjMoQGKUx5', '2024-01-17 06:43:34', '2024-01-17 06:43:34'),
(25, 'Finn', 'Miller', '2005-10-07', 'hdibbert@example.net', '2024-01-17 06:43:34', '$2y$12$c4VhZRKHX/2wA9JP0T6xHe9YEn19Mzo./fTrQuXgVw7CEIKQynlTW', 'pHP4JRz6O9', '2024-01-17 06:43:34', '2024-01-17 06:43:34'),
(26, 'Frankie', 'Littel', '2006-04-14', 'douglas.orval@example.net', '2024-01-17 06:43:34', '$2y$12$c4VhZRKHX/2wA9JP0T6xHe9YEn19Mzo./fTrQuXgVw7CEIKQynlTW', 'O50YfmN2Xn', '2024-01-17 06:43:34', '2024-01-17 06:43:34'),
(27, 'Matt', 'Schimmel', '1997-10-17', 'tommie.gottlieb@example.com', '2024-01-17 06:43:34', '$2y$12$c4VhZRKHX/2wA9JP0T6xHe9YEn19Mzo./fTrQuXgVw7CEIKQynlTW', 'lSQ7OGHkHw', '2024-01-17 06:43:34', '2024-01-17 06:43:34'),
(28, 'Chaim', 'Sipes', '1981-06-28', 'michael.simonis@example.net', '2024-01-17 06:43:34', '$2y$12$c4VhZRKHX/2wA9JP0T6xHe9YEn19Mzo./fTrQuXgVw7CEIKQynlTW', 'qcjZClvKQS', '2024-01-17 06:43:34', '2024-01-17 06:43:34'),
(29, 'Noemi', 'Howell', '2003-08-23', 'smitham.dane@example.net', '2024-01-17 06:43:34', '$2y$12$c4VhZRKHX/2wA9JP0T6xHe9YEn19Mzo./fTrQuXgVw7CEIKQynlTW', 'UrPCPNEVVq', '2024-01-17 06:43:34', '2024-01-17 06:43:34'),
(30, 'Berry', 'Zieme', '1981-03-23', 'roderick.kilback@example.com', '2024-01-17 06:43:34', '$2y$12$c4VhZRKHX/2wA9JP0T6xHe9YEn19Mzo./fTrQuXgVw7CEIKQynlTW', '9hqHKXjnnJ', '2024-01-17 06:43:34', '2024-01-17 06:43:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profiles_email_unique` (`email`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
