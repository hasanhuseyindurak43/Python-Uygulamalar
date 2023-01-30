-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 30 Oca 2023, 22:39:58
-- Sunucu sürümü: 8.0.32-0ubuntu0.22.04.2
-- PHP Sürümü: 8.1.2-1ubuntu2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `stoktakip`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gelirs`
--

CREATE TABLE `gelirs` (
  `gid` int NOT NULL,
  `uruns_id` int NOT NULL,
  `gelir_title` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `gelir_adet` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `gelir_create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `giders`
--

CREATE TABLE `giders` (
  `giderid` int NOT NULL,
  `uruns_id` int NOT NULL,
  `gider_title` int NOT NULL,
  `gider_adet` int NOT NULL,
  `gider_create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uruns`
--

CREATE TABLE `uruns` (
  `uu_id` int NOT NULL,
  `urun_cat_id` int NOT NULL,
  `urun_title` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `urun_content` text COLLATE utf8mb4_turkish_ci NOT NULL,
  `urun_fiyat` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `urun_adet` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `urun_create_date` datetime NOT NULL,
  `urun_upgrade_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun_cat`
--

CREATE TABLE `urun_cat` (
  `u_İd` int NOT NULL,
  `urun_category_title` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `urun_category_content` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `urun_category_create_date` datetime NOT NULL,
  `urun_category_update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `uid` int NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `user_first_name` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `user_last_name` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `user_telephone_number` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `user_mail` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `user_country` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `user_city` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `user_adress` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `user_statu` enum('mudur','depo_sef','depo_calisan') COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `user_durum` enum('0','1') COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `gelirs`
--
ALTER TABLE `gelirs`
  ADD PRIMARY KEY (`gid`);

--
-- Tablo için indeksler `giders`
--
ALTER TABLE `giders`
  ADD PRIMARY KEY (`giderid`);

--
-- Tablo için indeksler `uruns`
--
ALTER TABLE `uruns`
  ADD PRIMARY KEY (`uu_id`);

--
-- Tablo için indeksler `urun_cat`
--
ALTER TABLE `urun_cat`
  ADD PRIMARY KEY (`u_İd`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `gelirs`
--
ALTER TABLE `gelirs`
  MODIFY `gid` int NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `giders`
--
ALTER TABLE `giders`
  MODIFY `giderid` int NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `uruns`
--
ALTER TABLE `uruns`
  MODIFY `uu_id` int NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `urun_cat`
--
ALTER TABLE `urun_cat`
  MODIFY `u_İd` int NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `uid` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
