-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Ápr 16. 12:13
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `dartsmobil`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `belepesek`
--

CREATE TABLE `belepesek` (
  `id` int(11) NOT NULL,
  `belepesek_felhasznalo` int(11) NOT NULL,
  `belepesek_datum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `belepesek`
--

INSERT INTO `belepesek` (`id`, `belepesek_felhasznalo`, `belepesek_datum`) VALUES
(1, 3, '2025-03-12'),
(2, 4, '2025-03-11'),
(3, 3, '2025-03-10'),
(4, 5, '2025-03-12'),
(5, 8, '2025-03-12'),
(6, 4, '2025-03-25'),
(7, 5, '2025-03-25'),
(8, 5, '2025-03-25'),
(9, 3, '2025-03-25'),
(10, 4, '2025-03-25'),
(11, 4, '2025-03-25'),
(12, 4, '2025-03-26'),
(13, 4, '2025-03-26'),
(14, 4, '2025-03-26'),
(15, 4, '2025-03-26'),
(16, 4, '2025-03-26'),
(17, 4, '2025-03-26'),
(18, 4, '2025-03-26'),
(19, 4, '2025-03-27');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalo`
--

CREATE TABLE `felhasznalo` (
  `felhasznalo_id` int(11) NOT NULL,
  `felhasznalo_nev` varchar(255) NOT NULL,
  `felhasznalo_jelszo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `felhasznalo`
--

INSERT INTO `felhasznalo` (`felhasznalo_id`, `felhasznalo_nev`, `felhasznalo_jelszo`) VALUES
(3, 'Szabi', '$2a$10$Y6OHGjd6wxdaNApUQw6t4.UszIdeo2J524gHE9ShkmHwE497zaRSG'),
(4, 'Boti', '$2a$10$HJA.IPE8vdHzDL//DF0BHuKYw.etsOFw4eOAjTl98x7QxlJvSqvh6'),
(5, 'Tanárnő', '$2a$10$FwUpKpo4lwXvtixq2hGDqOQBPXrBulTT2yc4aperyUhQjpm0VpcC6'),
(6, 'Admin', '$2a$10$pMcloMNybE8i7/BoZBG0G.qPM96QI6z61oLdo4WxMN9SXHTuOyL7W'),
(7, 'Blabla', '$2a$10$bp6so0dLHMDuvrJA1pG.VOKJEbGYPOupKagHfdrHr.kkRamOcBoWy'),
(8, 'Blabla2', '$2a$10$ajf46Ea5ZH5p/lHcG.rF9OdSF1INnwNkN4orSTjzpcQw0UDNSbvru'),
(9, 'Sztár', '$2a$10$dv.DFmV7Q86HzM0R4fVzTeMQTQQSxN0h9DbYzC/mO7qIJJ/Qfxcyi'),
(10, '', '$2a$10$n3WXJhJshQZaoqS0dQ8rMerMRXahn/rIbl7KSniWocz5gtje5QXzG');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `meccs`
--

CREATE TABLE `meccs` (
  `meccs_id` int(11) NOT NULL,
  `meccs_elsojatekos` varchar(255) NOT NULL,
  `meccs_masodikjatekos` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `meccs`
--

INSERT INTO `meccs` (`meccs_id`, `meccs_elsojatekos`, `meccs_masodikjatekos`) VALUES
(1, 'Szabi', 'Mazsi'),
(2, 'Boti', 'Mazsi'),
(3, 'Boti', 'Szabi'),
(4, 'Szabi', 'Tanárnő'),
(5, 'Szabi', 'Dávid'),
(6, 'Szabi', 'Dani');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `meccseredmeny`
--

CREATE TABLE `meccseredmeny` (
  `meccseredmeny_id` int(11) NOT NULL,
  `meccseredmeny_meccsid` int(11) NOT NULL,
  `meccseredmeny_datum` datetime NOT NULL,
  `meccseredmeny_eredmeny` varchar(255) NOT NULL,
  `meccseredmeny_gyoztes` varchar(255) NOT NULL,
  `meccseredmeny_vesztes` varchar(255) NOT NULL,
  `meccseredmeny_atlaggyoztes` int(11) NOT NULL,
  `meccseredmeny_atlagvesztes` int(11) NOT NULL,
  `meccseredmeny_veszteskiszallo` int(11) NOT NULL,
  `meccseredmeny_gyozteskiszallo` int(11) NOT NULL,
  `meccseredmeny_veszteslegnagyobb` int(11) NOT NULL,
  `meccseredmeny_gyozteslegnagyobb` int(11) NOT NULL,
  `meccseredmeny_vesztesdobas` int(11) NOT NULL,
  `meccseredmeny_gyoztesdobas` int(11) NOT NULL,
  `felhasznalo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `meccseredmeny`
--

INSERT INTO `meccseredmeny` (`meccseredmeny_id`, `meccseredmeny_meccsid`, `meccseredmeny_datum`, `meccseredmeny_eredmeny`, `meccseredmeny_gyoztes`, `meccseredmeny_vesztes`, `meccseredmeny_atlaggyoztes`, `meccseredmeny_atlagvesztes`, `meccseredmeny_veszteskiszallo`, `meccseredmeny_gyozteskiszallo`, `meccseredmeny_veszteslegnagyobb`, `meccseredmeny_gyozteslegnagyobb`, `meccseredmeny_vesztesdobas`, `meccseredmeny_gyoztesdobas`, `felhasznalo_id`) VALUES
(1, 1, '2024-11-20 09:05:37', '2-3', 'Szabi', 'Mazsi', 60, 50, 20, 40, 60, 80, 13, 11, 3),
(2, 2, '2024-11-20 09:07:26', '1-3', 'Boti', 'Mazsi', 80, 72, 12, 24, 54, 60, 21, 20, 4),
(3, 3, '2024-11-20 09:07:59', '1-3', 'Boti', 'Szabi', 92, 84, 50, 66, 100, 120, 10, 6, 4),
(4, 4, '2024-12-02 09:58:14', '2-3', 'Tanárnő', 'Szabi', 80, 50, 20, 66, 54, 120, 13, 6, 3),
(5, 5, '2024-12-04 09:29:04', '3-3', 'Szabi', 'Dávid', 50, 40, 20, 24, 60, 60, 21, 6, 3),
(6, 6, '2024-12-04 09:38:13', '2-2', 'Szabi', 'Dani', 72, 30, 20, 66, 60, 60, 21, 20, 3),
(7, 2, '2025-01-29 10:36:03', '2-1', 'Szabi', 'Boti', 101, 43, 34, 23, 32, 56, 10, 13, 3),
(8, 2, '2025-01-29 10:36:03', '2-1', 'Szabi', 'Boti', 101, 43, 34, 23, 32, 56, 10, 13, 4),
(9, 2, '2025-01-29 10:36:03', '2-1', 'Szabi', 'Boti', 101, 43, 34, 23, 32, 56, 10, 13, 4),
(10, 2, '2025-01-29 10:36:03', '2-1', 'Szabi', 'Boti', 101, 43, 34, 23, 32, 56, 10, 13, 3),
(11, 2, '2025-01-29 10:36:03', '2-1', 'Szabi', 'Boti', 101, 43, 34, 23, 32, 56, 10, 13, 3),
(12, 2, '2025-01-29 10:36:03', '2-1', 'Szabi', 'Boti', 101, 43, 34, 23, 32, 56, 10, 13, 4),
(13, 2, '2025-01-29 10:36:03', '2-1', 'Szabi', 'Boti', 101, 43, 34, 23, 32, 56, 10, 13, 3),
(14, 2, '2025-01-29 10:50:15', '2-1', 'Szabi', 'Boti', 101, 43, 34, 23, 32, 56, 10, 13, 3),
(15, 2, '2025-01-30 12:48:45', '2-1', 'Szabi', 'Boti', 101, 43, 34, 23, 32, 56, 10, 13, 4),
(16, 2, '2025-02-03 11:28:50', '2-1', 'Szabi', 'Boti', 167, 43, 34, 23, 32, 141, 10, 9, 4),
(17, 2, '2025-02-04 13:33:29', '2-1', 'Szabi', 'Boti', 167, 43, 34, 23, 32, 141, 10, 9, 4),
(18, 2, '2025-02-04 13:34:52', '2-1', 'Szabi', 'Boti', 167, 43, 34, 23, 32, 141, 10, 9, 4),
(19, 2, '2025-02-04 13:35:30', '2-1', 'Szabi', 'Boti', 167, 43, 34, 23, 32, 141, 10, 9, 4),
(20, 2, '2025-02-04 13:38:15', '2-1', 'Szabi', 'Boti', 167, 43, 34, 23, 32, 141, 10, 9, 5),
(21, 2, '2025-02-04 13:45:08', '2-1', 'Szabi', 'Boti', 167, 43, 34, 23, 32, 141, 10, 9, 3),
(22, 2, '2025-02-04 13:47:35', '2-1', 'Boti', 'Boti', 100, 43, 34, 23, 32, 57, 10, 15, 5),
(23, 2, '2025-02-12 09:19:21', '2-1', 'Szabi', 'Boti', 167, 43, 34, 23, 32, 141, 10, 9, 5),
(24, 2, '2025-03-12 09:58:34', '2-1', 'Boti', 'Boti', 167, 43, 34, 23, 32, 141, 10, 9, 5),
(25, 2, '2025-03-12 10:00:02', '2-1', 'Boti', 'Boti', 167, 43, 34, 23, 32, 141, 10, 9, 8),
(26, 2, '2025-03-25 12:09:39', '2-1', 'Szabi', 'Boti', 180, 43, 34, 23, 32, 141, 10, 6, 5),
(27, 2, '2025-03-25 13:09:04', '2-1', 'Szabi', 'Boti', 180, 43, 34, 23, 32, 141, 10, 6, 5),
(28, 2, '2025-03-25 13:09:57', '2-1', 'Szabi', 'Boti', 180, 43, 34, 23, 32, 141, 10, 6, 3),
(29, 2, '2025-03-25 13:33:41', '2-1', 'Boti', 'Boti', 123, 43, 34, 23, 32, 133, 10, 9, 4),
(30, 2, '2025-03-25 13:47:01', '2-1', 'Szabi', 'Boti', 180, 43, 34, 23, 32, 141, 10, 6, 4),
(31, 2, '2025-03-26 08:01:57', '2-1', 'Szabi', 'Boti', 180, 43, 34, 23, 32, 141, 10, 6, 4),
(32, 2, '2025-03-26 08:12:44', '2-1', 'Szabi', 'Boti', 180, 43, 34, 23, 32, 141, 10, 6, 4),
(33, 2, '2025-03-26 08:12:51', '2-1', 'Szabi', 'Boti', 180, 43, 34, 23, 32, 141, 10, 6, 4),
(34, 2, '2025-03-26 08:14:40', '2-1', 'Szabi', 'Boti', 180, 43, 34, 23, 32, 141, 10, 6, 4),
(35, 2, '2025-03-26 08:30:55', '2-1', 'Szabi', 'Boti', 180, 43, 34, 23, 32, 141, 10, 6, 4),
(36, 2, '2025-03-26 08:40:58', '2-1', 'Boti', 'Boti', 180, 43, 34, 23, 32, 141, 10, 6, 4),
(37, 2, '2025-03-26 09:16:42', '2-1', 'Boti', 'Boti', 180, 43, 34, 23, 32, 141, 10, 6, 4),
(38, 2, '2025-03-26 09:23:49', '2-1', 'Szabi', 'Boti', 180, 43, 34, 23, 32, 141, 10, 6, 4),
(39, 2, '2025-03-26 09:27:42', '2-1', 'Szabi', 'Boti', 180, 43, 34, 23, 32, 141, 10, 6, 4),
(40, 2, '2025-03-27 11:49:49', '2-1', 'Szabi', 'Boti', 180, 43, 34, 23, 32, 141, 10, 6, 4),
(41, 2, '2025-03-27 11:50:40', '2-1', 'Szabi', 'Boti', 180, 43, 34, 23, 32, 141, 10, 6, 4);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rang`
--

CREATE TABLE `rang` (
  `rang_id` int(11) NOT NULL,
  `rang_felhasznalo` int(11) NOT NULL,
  `rang_ertek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `rang`
--

INSERT INTO `rang` (`rang_id`, `rang_felhasznalo`, `rang_ertek`) VALUES
(1, 6, 1),
(2, 5, 0),
(3, 4, 1),
(4, 3, 0);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `belepesek`
--
ALTER TABLE `belepesek`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `felhasznalo`
--
ALTER TABLE `felhasznalo`
  ADD PRIMARY KEY (`felhasznalo_id`);

--
-- A tábla indexei `meccs`
--
ALTER TABLE `meccs`
  ADD PRIMARY KEY (`meccs_id`);

--
-- A tábla indexei `meccseredmeny`
--
ALTER TABLE `meccseredmeny`
  ADD PRIMARY KEY (`meccseredmeny_id`),
  ADD KEY `meccseredmeny_meccsid` (`meccseredmeny_meccsid`),
  ADD KEY `felhasznalo_id` (`felhasznalo_id`);

--
-- A tábla indexei `rang`
--
ALTER TABLE `rang`
  ADD PRIMARY KEY (`rang_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `belepesek`
--
ALTER TABLE `belepesek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT a táblához `felhasznalo`
--
ALTER TABLE `felhasznalo`
  MODIFY `felhasznalo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `meccs`
--
ALTER TABLE `meccs`
  MODIFY `meccs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `meccseredmeny`
--
ALTER TABLE `meccseredmeny`
  MODIFY `meccseredmeny_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT a táblához `rang`
--
ALTER TABLE `rang`
  MODIFY `rang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `meccseredmeny`
--
ALTER TABLE `meccseredmeny`
  ADD CONSTRAINT `meccseredmeny_ibfk_1` FOREIGN KEY (`meccseredmeny_meccsid`) REFERENCES `meccs` (`meccs_id`),
  ADD CONSTRAINT `meccseredmeny_ibfk_2` FOREIGN KEY (`felhasznalo_id`) REFERENCES `felhasznalo` (`felhasznalo_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
