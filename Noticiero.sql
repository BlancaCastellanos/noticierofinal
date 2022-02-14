-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 01, 2022 at 01:44 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `Noticiero`
--

-- --------------------------------------------------------

--
-- Table structure for table `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `autor` varchar(128) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` date NOT NULL,
  `noticia` text COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `autor`, `fecha`, `noticia`, `created_at`, `updated_at`) VALUES
(1, 'Gato se cayó', 'Carlos Encinas', '2022-01-24', 'noooooooo se cayó un gatooooo!!!\r\n\r\nMIUAAAAUUUU', '2022-01-13 01:41:31', '2022-01-14 01:41:31'),
(2, 'Se levanto el gato', 'Blanca Castellanos', '2022-01-29', 'Noticia....', '2022-02-01 06:39:21', '2022-02-01 06:39:21'),
(3, 'ddd', 'dddd', '2022-01-06', 'ddd', '2022-02-01 07:01:17', '2022-02-01 07:01:17'),
(4, 'a', 'a', '2022-01-08', 'a', '2022-02-01 01:09:32', '2022-02-01 08:09:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;