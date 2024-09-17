-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 17 Eyl 2024, 10:37:16
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `aipotato`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `all_analysis`
--

CREATE TABLE `all_analysis` (
  `id` int(11) NOT NULL,
  `analysis_img` text NOT NULL,
  `analysis_result` varchar(128) NOT NULL,
  `analysis_rate` float NOT NULL,
  `analysis_user_id` int(11) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `analysis_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `all_analysis`
--

INSERT INTO `all_analysis` (`id`, `analysis_img`, `analysis_result`, `analysis_rate`, `analysis_user_id`, `latitude`, `longitude`, `analysis_date`) VALUES
(1, 'sample3.png', '1', 99.75, 1, 0, 0, '2024-09-17 08:36:51');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `country` varchar(128) NOT NULL,
  `city` int(128) NOT NULL,
  `work` varchar(128) NOT NULL,
  `mail` varchar(128) DEFAULT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`id`, `username`, `country`, `city`, `work`, `mail`, `password`) VALUES
(1, 'ilknursmsr', 'ilknur', 0, '1', 'şimşir', '1234'),
(2, 'bilal.arslan', 'Türkiye', 11, 'farmer', 'ilknursimsir205@gmail.com', '1234'),
(3, 'bilalrslan', 'Almanya', 1, 'farmer', 'ilknursimsir205@gmail.com', '1234'),
(4, 'bilalrslan', 'Almanya', 1, 'farmer', 'ilknursimsir205@gmail.com', '1234'),
(5, 'Bilal.arslan', 'Almanya', 0, 'farmer', 'ilknursimsir205@gmail.com', '1234'),
(6, 'Bilal.arslan', 'Almanya', 0, 'farmer', 'ilknursimsir205@gmail.com', '1234'),
(7, 'Bilal.arslan', 'Almanya', 0, 'farmer', 'ilknursimsir205@gmail.com', '1234');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `all_analysis`
--
ALTER TABLE `all_analysis`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `all_analysis`
--
ALTER TABLE `all_analysis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
