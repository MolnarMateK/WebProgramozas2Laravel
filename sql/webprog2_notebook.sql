-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Nov 07. 12:13
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `webprog2_notebook`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `failed_jobs`
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
-- Tábla szerkezet ehhez a táblához `gep`
--

CREATE TABLE `gep` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gyarto` varchar(255) NOT NULL,
  `tipus` varchar(255) NOT NULL,
  `kijelzo` varchar(255) NOT NULL,
  `memoria` int(11) NOT NULL,
  `merevlemez` int(11) NOT NULL,
  `videovezerlo` varchar(255) NOT NULL,
  `ar` int(11) NOT NULL,
  `db` int(11) NOT NULL,
  `processzorid` int(11) NOT NULL,
  `oprendszerid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `gep`
--

INSERT INTO `gep` (`id`, `gyarto`, `tipus`, `kijelzo`, `memoria`, `merevlemez`, `videovezerlo`, `ar`, `db`, `processzorid`, `oprendszerid`) VALUES
(1, 'HP', 'COMPAQ 615 NX556EA', '15,6', 1024, 160, 'ATi Mobility Radeon HD3200 256MB', 95120, 0, 1, 1),
(2, 'ASUS', 'K51AC-SX001D', '15,6', 2048, 250, 'ATi Mobility Radeon HD3200 256MB', 101200, 0, 1, 8),
(3, 'HP', 'COMPAQ 615 NX560EA', '15,6', 2048, 320, 'ATi Mobility Radeon HD3200 256MB', 114800, 0, 1, 4),
(4, 'HP', 'Pavilion DV6-1110EH NL956EA', '15,6', 3072, 250, 'ATi Mobility Radeon HD4530 512MB', 167920, 3, 1, 6),
(5, 'ACER', 'Aspire 5536G-642G25MN', '15,6', 2048, 250, 'ATi Mobility Radeon HD4570 512MB', 111920, 3, 1, 2),
(6, 'ACER', 'Aspire 5536G-643G32MN', '15,6', 3072, 320, 'ATi Mobility Radeon HD4570 512MB', 117520, 2, 1, 2),
(7, 'MSI', 'X410-019HU', '14', 2048, 320, 'ATI Radeon Xpress 1250', 111920, 4, 4, 6),
(8, 'ASUS', 'F83T-VX005X', '14', 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 115920, 1, 4, 8),
(9, 'MSI', 'VR630XL-004HU', '16', 2048, 320, 'NVIDIA GeForce Go 9100M-GS', 90800, 1, 5, 1),
(10, 'ASUS', 'N60DP-JX012V', '16', 4096, 500, 'ATi Mobility Radeon HD4670 512MB', 183920, 4, 6, 10),
(11, 'ASUS', 'K50AB-SX045D', '15,6', 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 134320, 5, 7, 8),
(12, 'FUJITSU', 'Amilo Sa3650', '13,3', 2048, 250, 'ATi Mobility Radeon HD3200 256MB', 223920, 4, 8, 6),
(13, 'MSI', 'WIND U200-064HU', '12', 2048, 320, 'Intel Graphics X4500M / 256MB', 112400, 3, 51, 6),
(14, 'ACER', 'eMachine E525-901G16Mi', '15,6', 1024, 160, 'Intel Graphics 4500MHD ', 82800, 0, 10, 2),
(15, 'DELL', 'Inspiron 1545-106208 RED', '15,6', 1024, 160, 'Intel Graphics 4500MHD ', 103120, 3, 10, 2),
(16, 'TOSHIBA', 'Satellite L500-1EN', '15,6', 2048, 320, 'Intel Graphics X4500M / 256MB', 118800, 1, 10, 1),
(17, 'MSI', 'CR500X-012HU', '15,6', 2048, 320, 'NVIDIA GeForce Go 8200M 128MB', 94800, 1, 10, 1),
(18, 'MSI', 'CR500X-008HU', '15,6', 4096, 320, 'NVIDIA GeForce Go 8200M 128MB', 95920, 3, 10, 1),
(19, 'LENOVO', 'SL500 2746P5G', '15,4', 1024, 160, 'NVIDIA GeForce Go 9300M 256MB', 139920, 0, 12, 4),
(20, 'TOSHIBA', 'Satellite L300-24P', '15,4', 2048, 160, 'Intel Graphics 4500MHD', 98000, 0, 12, 1),
(21, 'MSI', 'VR603X-094HU', '15,4', 4096, 320, 'Intel Graphics 4500MHD', 99600, 5, 12, 1),
(22, 'HP', 'ProBook 4510s NX435EA', '15,6', 2048, 250, 'Intel Graphics 4500MHD', 111920, 1, 12, 1),
(23, 'FUJITSU', 'Esprimo V6535', '15,4', 1024, 160, 'Intel Graphics 4500MHD ', 95920, 4, 13, 2),
(24, 'LENOVO', 'IdeaPad G550L 59-026377', '15,6', 1024, 160, 'Intel Graphics 4500MHD', 94320, 5, 14, 4),
(25, 'HP', 'Presario CQ61-200SH NZ890EA', '15,6', 3072, 320, 'Intel Graphics 4500MHD', 127120, 3, 14, 4),
(26, 'ACER', 'eMachine E525-302G25Mi', '15,6', 2048, 250, 'Intel Graphics 4500MHD ', 89200, 0, 14, 2),
(27, 'HP', 'ProBook 4510s NX668EA', '15,6', 2048, 250, 'Intel Graphics 4500MHD ', 113520, 3, 14, 2),
(28, 'HP', 'ProBook 4310s NX580EA', '13,3', 1024, 160, 'Intel Graphics 4500MHD ', 119920, 3, 14, 2),
(29, 'ASUS', 'K50IJ-SX036L', '15,6', 2048, 250, 'Intel Graphics X4500M', 94320, 2, 14, 8),
(30, 'ASUS', 'K50IJ-SX153L', '15,6', 4096, 320, 'Intel Graphics X4500M / 256MB', 100720, 0, 14, 8),
(31, 'MSI', 'CR700X-023HU', '17,3', 3072, 320, 'NVIDIA GeForce Go 8200M 128MB', 108400, 0, 14, 1),
(32, 'DELL', 'Vostro V860-111696', '15,6', 1024, 250, 'Intel Graphics x3100', 79920, 3, 17, 2),
(33, 'HP', 'Mini 1199 NS528EA', '10,1', 1024, 80, 'Intel Graphics 950', 114000, 3, 18, 12),
(34, 'Asus', 'EEE PC 1001HA-BLK012X BLACK', '10', 1024, 160, 'Intel Graphics 4500MHD', 59920, 4, 19, 12),
(35, 'Asus', 'EEE PC 1001HA-WHI009X XP WHITE', '10', 1024, 160, 'Intel Graphics 4500MHD', 59920, 4, 19, 12),
(36, 'DELL', 'Inspiron 1011 104442 BLUE', '10,1', 1024, 160, 'Intel Graphics 500', 55920, 3, 19, 2),
(37, 'DELL', 'Inspiron 1011 104437 BLUE', '10,1', 1024, 160, 'Intel Graphics 500', 63992, 1, 19, 12),
(38, 'DELL', 'Inspiron 1011 104435 BLACK', '10,1', 1024, 160, 'Intel Graphics 500', 63992, 4, 19, 12),
(39, 'DELL', 'Inspiron 1011 105566 RED', '10,1', 1024, 160, 'Intel Graphics 500', 63992, 1, 19, 12),
(40, 'DELL', 'Inspiron 1011 104434 WHITE', '10,1', 1024, 160, 'Intel Graphics 500', 63992, 5, 19, 12),
(41, 'DELL', 'Inspiron 1011 104436 PINK', '10,1', 1024, 160, 'Intel Graphics 500', 63992, 0, 19, 12),
(42, 'DELL', 'Inspiron 1011 110960 GREEN', '10,1', 1024, 160, 'Intel Graphics 500', 63992, 5, 19, 12),
(43, 'DELL', 'Inspiron 1011 106751 BLACK', '10,1', 1024, 160, 'Intel Graphics 500', 87920, 3, 19, 12),
(44, 'ACER', 'ASPIRE ONE A150-A BLUE', '8,9', 1024, 120, 'Intel Graphics 950', 58320, 1, 19, 2),
(45, 'ACER', 'ASPIRE ONE D250-0Bw', '10,1', 1024, 160, 'Intel Graphics 950', 68720, 5, 19, 12),
(46, 'ACER', 'ASPIRE ONE D250-0Br', '10,1', 1024, 160, 'Intel Graphics 950', 68720, 3, 19, 12),
(47, 'MSI', 'WIND U100-1033HU', '10', 1024, 160, 'Intel Graphics 950', 71920, 2, 19, 12),
(48, 'HP', 'Mini 110c-1010SH NW642EA', '10,1', 1024, 160, 'Intel Graphics 950', 78320, 2, 19, 12),
(49, 'Asus', 'Eee PC 1005HA-WHI059X XP WHITE', '10', 1024, 160, 'Intel Graphics 950', 78320, 3, 19, 12),
(50, 'HP', 'Mini 731 NG660EA', '10,1', 1024, 80, 'Intel Graphics 950', 78320, 3, 19, 12),
(51, 'Asus', 'Eee PC 1005HA-BLK076X XP', '10', 1024, 160, 'Intel Graphics 950', 78400, 3, 19, 12),
(52, 'LENOVO', 'IdeaPad S10e NS9RLHL R', '10,1', 1024, 160, 'Intel Graphics 950', 79920, 3, 19, 12),
(53, 'LENOVO', 'IdeaPad S10e NS9RJHL', '10,1', 1024, 160, 'Intel Graphics 950', 79920, 5, 19, 12),
(54, 'Asus', 'Eee PC 1002HA-BLK022X XP B', '10', 1024, 160, 'Intel Graphics 950', 91999, 5, 19, 12),
(55, 'Asus', 'Eee PC 1004DN-BLK003X GR', '10,1', 1024, 120, 'Intel Graphics 4500MHD', 106700, 4, 20, 12),
(56, 'ACER', 'ASPIRE ONE D250-1Bw', '10,1', 1024, 160, 'Intel Graphics 950', 71120, 5, 20, 12),
(57, 'ACER', 'ASPIRE ONE D250-1B Blue', '10,1', 1024, 160, 'Intel Graphics 950', 71120, 3, 20, 12),
(58, 'MSI', 'WIND U123-013HU BLUE', '10', 1024, 160, 'Intel Graphics 950', 72400, 5, 20, 12),
(59, 'MSI', 'WIND U123-012HU RED', '10', 1024, 160, 'Intel Graphics 950', 72400, 1, 20, 12),
(60, 'LENOVO', 'IdeaPad S10-2 59-027093 POP ART', '10,1', 1024, 160, 'Intel Graphics 950', 73520, 3, 20, 12),
(61, 'LENOVO', 'IdeaPad S10-2 59-027094 FLOWER SEA', '10,1', 1024, 160, 'Intel Graphics 950', 73520, 5, 20, 12),
(62, 'LENOVO', 'IdeaPad S10-2 59-027108 SAILING', '10,1', 1024, 160, 'Intel Graphics 950', 73520, 0, 20, 12),
(63, 'MSI', 'WIND U123-014HU WHITE', '10', 1024, 160, 'Intel Graphics 950', 75600, 3, 20, 12),
(64, 'MSI', 'WIND U123-018HU GRAY', '10', 1024, 160, 'Intel Graphics 950', 75600, 4, 20, 12),
(65, 'LENOVO', 'IdeaPad S10-2 59-027036 WHITE', '10,1', 1024, 160, 'Intel Graphics 950', 77520, 3, 20, 12),
(66, 'Asus', 'Eee PC 1005HA-WHI058X XP W', '10', 1024, 160, 'Intel Graphics 950', 82320, 2, 20, 12),
(67, 'Asus', 'Eee PC 1005HA-BLK075X XP B', '10', 1024, 160, 'Intel Graphics 950', 82400, 3, 20, 12),
(68, 'Asus', 'Eee S101H-BRN073X XP BR', '10', 1024, 160, 'Intel Graphics 950', 87120, 4, 20, 12),
(69, 'Asus', 'Eee PC 1008HA-PIK012X XP P', '10', 1024, 160, 'Intel Graphics 950', 95920, 5, 20, 12),
(70, 'Asus', 'Eee PC 1008HA-RED008X XP R', '10', 1024, 160, 'Intel Graphics 950', 95920, 1, 20, 12),
(71, 'Asus', 'Eee PC 1008HA-BLU021X XP BL', '10', 1024, 160, 'Intel Graphics 950', 95920, 0, 20, 12),
(72, 'Asus', 'Eee PC 1008HA-WHI024X XP', '10', 1024, 160, 'Intel Graphics 950', 95920, 3, 20, 12),
(73, 'Asus', 'Eee PC 1008HA-BLU036X XP BL', '10', 1024, 160, 'Intel Graphics 950', 95920, 5, 20, 12),
(74, 'TOSHIBA', 'NB200-136', '10,1', 1024, 160, 'Intel GMA 950 / 256MB', 95920, 5, 20, 11),
(75, 'Asus', 'Eee PC 1101HA-BLK041X B', '11,6', 1024, 160, 'Intel Graphics 500', 96720, 4, 21, 12),
(76, 'Asus', 'Eee PC 1101HA-BLK028M B', '11,6', 2048, 250, 'Intel Graphics 500', 98000, 5, 21, 11),
(77, 'ACER', 'ASPIRE ONE 751h 52Bb BLACK', '11,6', 1024, 160, 'Intel Graphics 950', 81200, 2, 21, 12),
(78, 'ACER', 'ASPIRE ONE 751h 52Bb WHITE', '11,6', 1024, 160, 'Intel Graphics 950', 81200, 4, 21, 12),
(79, 'ACER', 'ASPIRE ONE 751h 52Bb RED', '11,6', 1024, 160, 'Intel Graphics 950', 81200, 5, 21, 12),
(80, 'ACER', 'ASPIRE ONE 751H PINK', '11,6', 1024, 160, 'Intel Graphics 950', 81200, 3, 21, 12),
(81, 'ACER', 'ASPIRE ONE 751h 52Bb BLUE', '11,6', 1024, 160, 'Intel Graphics 950', 81200, 3, 21, 12),
(82, 'Asus', 'Eee PC 1101HA-BLU018X BLUE', '11,6', 1024, 160, 'Intel Graphics 950', 96720, 1, 21, 12),
(83, 'Asus', 'Eee PC 1101HA-WHI040X W', '11,6', 1024, 160, 'Intel Graphics 950', 96720, 0, 21, 12),
(84, 'Asus', 'Eee PC 1101HA-WHI022M W', '11,6', 2048, 250, 'Intel Graphics 950', 98000, 4, 21, 11),
(85, 'DELL', 'Inspiron 1010 106752 BLACK', '10,1', 1024, 160, 'Intel Graphics 500', 87920, 0, 22, 12),
(86, 'ASUS', 'M51VR-AP184C', '15,4', 2048, 250, 'ATi Mobility Radeon HD3470 256MB', 140720, 4, 23, 6),
(87, 'FUJITSU', 'Esprimo V6535-104060', '15,4', 2048, 250, 'Intel Graphics 4500MHD', 110320, 5, 23, 8),
(88, 'ACER', 'Extensa 5630G-732G16N', '15,4', 2048, 160, 'NVIDIA GeForce Go 9300M 256MB', 127920, 0, 24, 6),
(89, 'DELL', 'Studio XPS 13-711 BLACK', '13,3', 4096, 320, 'NVIDIA GeForce Go 9500M-GS 256MB', 241520, 0, 24, 6),
(90, 'MSI', 'GX723X-271HU', '17', 4096, 500, 'NVIDIA GeForce GT130M 512B DDR3', 216720, 1, 24, 1),
(91, 'TOSHIBA', 'Satellite A300-1GN', '15,4', 3072, 320, 'ATi Mobility Radeon HD3650 512MB', 226800, 0, 25, 6),
(92, 'LENOVO', 'ThinkPad T500 NL34EHV', '15,4', 2048, 160, 'Intel Graphics 4500MHD', 241520, 1, 25, 3),
(93, 'LENOVO', 'ThinkPad T400 NM81UHV', '14,1', 2048, 160, 'Intel Graphics 4500MHD', 244720, 5, 25, 3),
(94, 'FUJITSU', 'Lifebook E8420', '15,4', 4096, 160, 'Intel Graphics 4500MHD', 268720, 5, 25, 3),
(95, 'FUJITSU', 'Lifebook S7220', '14,1', 4096, 320, 'Intel Graphics 4500MHD', 268720, 1, 25, 3),
(96, 'FUJITSU', 'Lifebook S6420', '13,3', 4096, 160, 'Intel Graphics 4500MHD', 279920, 3, 25, 3),
(97, 'LENOVO', 'ThinkPad T500 NL346HV', '15,4', 2048, 320, 'Intel Graphics 4500MHD', 279920, 3, 25, 3),
(98, 'LENOVO', 'ThinkPad T500 NJ253HV', '15,4', 2048, 160, 'ATi Mobility Radeon HD3650', 279920, 3, 26, 3),
(99, 'DELL', 'Studio XPS 16-713 BLACK', '16', 4096, 500, 'ATi Mobility Radeon HD3670 512MB', 266320, 5, 26, 6),
(100, 'DELL', 'Inspiron 1545-106226 Red', '15,6', 2048, 320, 'ATi Mobility Radeon HD4330 256MB', 169200, 0, 26, 6),
(101, 'DELL', 'Inspiron 1545-106227 Blue', '15,6', 2048, 320, 'ATi Mobility Radeon HD4330 256MB', 169200, 5, 26, 6),
(102, 'DELL', 'Studio 1555-110573 RED', '15,6', 2048, 500, 'ATi Mobility Radeon HD4570 512MB', 192720, 2, 26, 6),
(103, 'DELL', 'Studio 1555-110574 BLACK', '15,6', 2048, 500, 'ATi Mobility Radeon HD4570 512MB', 192720, 1, 26, 6),
(104, 'DELL', 'Studio 1555-110575 BLUE', '15,6', 2048, 500, 'ATi Mobility Radeon HD4570 512MB', 192720, 3, 26, 6),
(105, 'TOSHIBA', 'Satellite P300-225', '17,1', 4096, 500, 'ATi Mobility Radeon HD4650 1024MB', 234800, 3, 26, 6),
(106, 'DELL', 'Studio XPS M1640-106257 B', '15,6', 4096, 500, 'ATi Mobility Radeon HD4670 512MB', 268720, 2, 26, 6),
(107, 'DELL', 'Studio XPS M1640-106259 R', '15,6', 4096, 500, 'ATi Mobility Radeon HD4670 512MB', 268720, 5, 26, 6),
(108, 'LENOVO', 'ThinkPad T500 NJ42RHV', '15,4', 2048, 160, 'Intel Graphics 4500MHD', 255920, 1, 26, 3),
(109, 'FUJITSU', 'Lifebook S7220-1', '14,1', 4096, 320, 'Intel Graphics 4500MHD', 279920, 3, 26, 3),
(110, 'TOSHIBA', 'Tecra M10-14Z', '14,1', 3072, 250, 'NVIDIA Quadro NVS 150M 256MB', 271920, 3, 26, 3),
(111, 'DELL', 'Studio XPS M1340-106255 B', '13,3', 4096, 500, 'NVIDIA GeForce Go 9400M-GS 256MB', 251920, 5, 26, 6),
(112, 'DELL', 'Studio XPS M1340-106256 R', '13,3', 4096, 500, 'NVIDIA GeForce Go 9400M-GS 256MB', 251920, 4, 26, 6),
(113, 'ASUS', 'N80VN-GP023C', '14,1', 4096, 320, 'NVIDIA GeForce 9650M GT 1GB', 215920, 4, 26, 6),
(114, 'ASUS', 'U50VG-XX162V', '15,6', 4096, 500, 'NVIDIA GeForce G105/512MB', 219120, 0, 27, 10),
(115, 'TOSHIBA', 'Qosmio X300-14V', '17', 4096, 320, 'NVIDIA GeForce Go 9700M-GT 512MB', 399920, 4, 27, 6),
(116, 'ASUS', 'N71VG-TY046V', '17,3', 4096, 640, 'NVIDIA GeForce GT220M 1GB', 243920, 2, 27, 10),
(117, 'ASUS', 'N61VN-JX069V', '16', 4096, 500, 'NVIDIA GeForce GT240M 1GB', 247920, 4, 27, 10),
(118, 'MSI', 'GT628X-447HU', '15,4', 4096, 500, 'NVIDIA GeForce GTS 160M', 258000, 3, 27, 1),
(119, 'HP', 'EliteBook 2530p FU431EA', '12,1', 2048, 120, 'Intel Graphics 4500MHD', 379920, 0, 28, 3),
(120, 'ThinkPad', 'X200 NRRFWHV', '12,1', 2048, 250, 'Intel Graphics 4500MHD', 387120, 2, 28, 3),
(121, 'ACER', 'Timeline 3810TG-734G50N', '13,3', 4096, 500, 'ATi Mobility Radeon HD4330 256MB', 174320, 5, 29, 6),
(122, 'ACER', 'Aspire Timeline 4810TG-733G25MN', '14', 3072, 250, 'ATi Mobility Radeon HD4330 512MB', 164720, 3, 29, 10),
(123, 'ACER', 'TravelMate 8471-733G25MN', '14', 3072, 250, 'Intel Graphics 4500MHD', 167920, 2, 29, 3),
(124, 'ASUS', 'UL20A-2X022V', '12,1', 3072, 320, 'Intel Graphics X4500M / 256MB', 146800, 3, 29, 10),
(125, 'ASUS', 'UL30A-QX164V', '13,3', 3072, 320, 'Intel Graphics X4500M / 256MB', 148720, 3, 29, 10),
(126, 'ASUS', 'UL50AG-XX007V', '15,6', 4096, 500, 'Intel Graphics X4500M / 256MB', 174320, 3, 29, 10),
(127, 'ASUS', 'UX30-QX096V', '13,3', 3072, 320, 'Intel Graphics X4500M / 256MB', 177520, 1, 29, 10),
(128, 'ASUS', 'UX30-QX085V', '13,3', 4096, 500, 'Intel Graphics X4500M / 256MB', 184720, 0, 29, 10),
(129, 'ASUS', 'UL80AG-WX011V', '14', 3072, 320, 'Intel GMA 950 / 256MB', 162320, 5, 29, 10),
(130, 'ASUS', 'UX50V-XX042V', '15,6', 4096, 500, 'NVIDIA GeForce G105/512MB', 203920, 2, 29, 10),
(131, 'ASUS', 'UL50VT-XX021V', '15,6', 4096, 500, 'NVIDIA GeForce GT210M 512GB', 191120, 2, 29, 10),
(132, 'TOSHIBA', 'Portégé A600-139', '12,1', 2048, 250, 'Intel Graphics 4500MHD', 271920, 5, 30, 3),
(133, 'ACER', 'Timeline 3810TG-944G50N', '13,3', 4096, 500, 'ATi Mobility Radeon HD4330 256MB', 194800, 0, 31, 6),
(134, 'ACER', 'Timeline 3810T-944G32N', '13,3', 4096, 320, 'Intel Graphics 4500MHD', 168720, 2, 31, 6),
(135, 'ACER', 'Aspire Timeline 4810T-943G32MN', '14', 3072, 320, 'Intel Graphics 4500MHD', 189200, 3, 31, 6),
(136, 'ThinkPad', 'X301 NRFC1HV', '13,3', 2048, 120, 'Intel Graphics 4500MHD', 366000, 0, 31, 3),
(137, 'FUJITSU', 'Esprimo V6515-104062', '15,4', 2048, 250, 'NVIDIA GeForce Go 8200M 128MB', 123920, 1, 32, 8),
(138, 'FUJITSU', 'Esprimo V5535 02', '15,4', 2048, 160, 'SiS Mirage 3+ 256M', 103920, 2, 34, 1),
(139, 'HP', 'ProBook 4510s NX621EA', '15,6', 3072, 320, 'ATi Mobility Radeon HD4330 256MB', 146320, 0, 34, 1),
(140, 'HP', 'ProBook 4510s NX624EA', '15,6', 3072, 320, 'ATi Mobility Radeon HD4330 256MB', 157520, 1, 34, 4),
(141, 'HP', 'ProBook 4710s NX628EA', '17,3', 3072, 320, 'ATi Mobility Radeon HD4330 512MB', 159920, 4, 34, 1),
(142, 'HP', 'COMPAQ 610 NX549EA', '15,6', 1024, 160, 'Intel Graphics x3100', 104990, 1, 34, 1),
(143, 'HP', 'COMPAQ 610 NX550EA', '15,6', 2048, 320, 'Intel Graphics x3100', 121520, 3, 34, 1),
(144, 'HP', 'COMPAQ 610 NX552EA', '15,6', 2048, 320, 'Intel Graphics x3100', 125200, 0, 34, 4),
(145, 'DELL', 'Vostro A860-111877', '15,6', 2048, 250, 'Intel Graphics x3100 ', 94320, 0, 34, 2),
(146, 'FUJITSU', 'Esprimo V6555 MPWE5HU', '15,4', 2048, 250, 'NVIDIA GeForce Go 8200M 128MB', 108000, 2, 34, 2),
(147, 'MSI', 'VX600X-053HU', '15,4', 4096, 500, 'ATi Mobility Radeon HD3410 256MB', 136400, 0, 35, 1),
(148, 'FUJITSU', 'Esprimo V6545-104064', '15,4', 2048, 250, 'ATi Mobility Radeon HD3450 256MB', 143920, 4, 35, 2),
(149, 'FUJITSU', 'Amilo PI 3525', '15,4', 2048, 320, 'Intel Graphics 4500MHD', 111111, 3, 35, 8),
(150, 'FUJITSU', 'Esprimo V6505-104063', '15,4', 2048, 250, 'Intel Graphics 4500MHD ', 135920, 0, 35, 2),
(151, 'MSI', 'CX600X-042HU', '16', 4096, 500, 'ATi Mobility Radeon HD4330 256MB', 149600, 1, 36, 8),
(152, 'DELL', 'Inspiron 1545-699 BLUE', '15,6', 4096, 320, 'ATi Mobility Radeon HD4330 256MB', 159920, 2, 36, 6),
(153, 'DELL', 'Studio 1555-635 RED', '15,6', 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 176720, 5, 36, 1),
(154, 'DELL', 'Studio 1555-106249 BLUE', '15,6', 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 190320, 3, 36, 6),
(155, 'ASUS', 'F6A-3P193X', '13,3', 3072, 250, 'Intel Graphics X4500M / 256MB', 159920, 2, 36, 8),
(156, 'ASUS', 'K50IN-SX024L', '15,6', 4096, 250, 'NVIDIA GeForce G102M/512MB', 135920, 1, 36, 8),
(157, 'DELL', 'Studio XPS M1340-110934 B', '13,3', 2048, 320, 'NVIDIA GeForce Go 9400M-GS 256MB', 201520, 5, 36, 6),
(158, 'HP', 'ProBook 4510s VC191EA', '15,6', 3072, 500, 'ATi Mobility Radeon HD4330 256MB', 187600, 5, 37, 6),
(159, 'HP', 'ProBook 4510s NA921EA', '15,6', 2048, 250, 'Intel Graphics 4500MHD', 203920, 2, 37, 3),
(160, 'DELL', 'Inspiron 1545-111827 Red', '15,6', 4096, 320, 'ATi Mobility Radeon HD4330 512MB', 139120, 2, 38, 2),
(161, 'DELL', 'Inspiron 1545-111826 Black', '15,6', 4096, 320, 'ATi Mobility Radeon HD4330 512MB', 139120, 0, 38, 2),
(162, 'DELL', 'Inspiron 1545-111828 Blue', '15,6', 4096, 320, 'ATi Mobility Radeon HD4330 512MB', 139120, 5, 38, 2),
(163, 'DELL', 'Inspiron 1545-111829 White', '15,6', 4096, 320, 'ATi Mobility Radeon HD4330 512MB', 139120, 0, 38, 2),
(164, 'DELL', 'Inspiron 1545-111831 Purple', '15,6', 4096, 320, 'ATi Mobility Radeon HD4330 512MB', 139120, 0, 38, 2),
(165, 'MSI', 'EX627X-400HU', '16', 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 164720, 5, 38, 1),
(166, 'ASUS', 'U80V-WX101V', '14', 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 199120, 3, 38, 10),
(167, 'LENOVO', 'IdeaPad G550A 59-026421', '15,6', 3072, 320, 'Intel Graphics 4500MHD', 135920, 5, 38, 1),
(168, 'ACER', 'Aspire 5738-663G32MN Linux', '15,6', 3072, 320, 'Intel Graphics 4500MHD ', 123920, 2, 38, 2),
(169, 'ASUS', 'K50IJ-SX152L', '15,6', 4096, 320, 'Intel Graphics X4500M / 256MB', 119920, 0, 38, 8),
(170, 'ASUS', 'K50IN-SX155L', '15,6', 3072, 250, 'NVIDIA GeForce G102M/512MB', 126320, 4, 38, 2),
(171, 'ASUS', 'K50IN-SX157L', '15,6', 4096, 500, 'NVIDIA GeForce G102M/512MB', 131920, 2, 38, 2),
(172, 'ASUS', 'U50VG-XX156V', '15,6', 4096, 500, 'NVIDIA GeForce G105/512MB', 195120, 1, 38, 10),
(173, 'MSI', 'EX723X-079HU', '17', 4096, 500, 'NVIDIA GeForce Go 9300M 256MB', 173520, 0, 38, 1),
(174, 'TOSHIBA', 'Satellite U500-17E', '13,3', 2048, 320, 'NVIDIA GeForce GT210M 512GB', 166320, 2, 38, 10),
(175, 'ASUS', 'F50SF-JX061X', '16', 4096, 500, 'NVIDIA GeForce GT220M 1GB', 167680, 2, 38, 8),
(176, 'ASUS', 'N61VG-JX070V', '16', 4096, 500, 'NVIDIA GeForce GT220M 1GB', 207920, 3, 38, 10),
(177, 'TOSHIBA', 'Satellite A500-1DN', '16', 4096, 320, 'NVIDIA GeForce GT230M 1GB', 185520, 2, 38, 10),
(178, 'LENOVO', 'SL500 NRJEBHV', '15,4', 2048, 320, 'Intel Graphics 4500MHD', 169520, 3, 39, 4),
(179, 'FUJITSU', 'Esprimo V5505 02', '15,4', 2048, 250, 'Intel Graphics x3100', 135555, 4, 40, 4),
(180, 'TOSHIBA', 'Satellite A200-23W', '15,4', 2048, 400, 'ATi Mobility Radeon HD2600 512MB', 175920, 0, 41, 6),
(181, 'FUJITSU', 'Esprimo D9500-101571', '15,4', 2048, 160, 'Intel Graphics x3100', 155920, 2, 42, 3),
(182, 'FUJITSU', 'Esprimo D9500-101570', '15,4', 4096, 160, 'Intel Graphics x3100', 179120, 3, 43, 3),
(183, 'Lenovo', 'ThinkPad W500 NRA3KHV', '15,4', 4096, 200, 'Intel Graphics 4500MHD', 380720, 0, 44, 3),
(184, 'ACER', 'Timeline 3810T-352G25N', '13,3', 2048, 250, 'Intel Graphics 4500MHD', 130320, 1, 45, 6),
(185, 'MSI', 'X400-048HU', '14', 2048, 500, 'Intel Graphics 4500MHD', 143920, 4, 45, 6),
(186, 'ASUS', 'UX30-QX032C', '13,3', 3072, 500, 'Intel Graphics X4500M / 256MB', 198800, 5, 45, 6),
(187, 'ASUS', 'U20A-2P027C', '12,1', 4096, 500, 'Intel Graphics X4500M / 256MB', 207920, 0, 45, 6),
(188, 'ASUS', 'UX50V-XX007C', '15,6', 4096, 500, 'NVIDIA GeForce G105/512MB', 244720, 2, 45, 6),
(189, 'ACER', 'Timeline 3810TZ-414G32N', '13,3', 4096, 320, 'Intel Graphics 4500MHD', 138320, 3, 46, 9),
(190, 'ACER', 'Timeline 5810TZ-414G32MN Vista', '15,6', 4096, 320, 'Intel Graphics 4500MHD', 142320, 3, 46, 7),
(191, 'ACER', 'Timeline 5810TZ-414G32MN Win7', '15,6', 4096, 320, 'Intel Graphics 4500MHD', 146320, 3, 46, 9),
(192, 'ACER', 'Aspire Timeline 4810TZ-413G25MN', '14,1', 3072, 250, 'Intel Graphics 4500MHD', 150000, 5, 46, 10),
(193, 'TOSHIBA', 'Satellite T130-10G', '13,3', 4096, 320, 'Intel Graphics X4500M / 256MB', 151920, 5, 46, 10),
(194, 'FUJITSU', 'Esprimo V6545', '15,4', 2048, 250, 'ATi Mobility Radeon HD3450 256MB', 110320, 1, 23, 2),
(195, 'TOSHIBA', 'Satellite A300-22Z', '15,4', 2048, 320, 'ATi Mobility Radeon HD3470 256MB', 126000, 5, 23, 8),
(196, 'FUJITSU', 'Esprimo V6505', '15,4', 2048, 250, 'Intel Graphics 4500MHD ', 111111, 2, 23, 2),
(197, 'FUJITSU', 'Amilo PI 3540-104877', '15,4', 3072, 250, 'NVIDIA GeForce Go 9300M 256MB', 115920, 5, 23, 8),
(198, 'MSI', 'VX600X-206HU', '15,4', 4096, 320, 'ATi Mobility Radeon HD3410 256MB', 121520, 4, 48, 1),
(199, 'TOSHIBA', 'Satellite A300-29K', '15,4', 2048, 320, 'ATi Mobility Radeon HD3470 256MB', 125520, 3, 48, 8),
(200, 'TOSHIBA', 'Satellite A300-22W', '15,4', 3072, 320, 'ATi Mobility Radeon HD3470 256MB', 131920, 5, 48, 6),
(201, 'TOSHIBA', 'Satellite A300-29J', '15,4', 4096, 320, 'ATi Mobility Radeon HD3470 256MB', 135120, 3, 48, 6),
(202, 'MSI', 'CX600X-018HU', '16', 4096, 320, 'ATi Mobility Radeon HD4330 256MB', 114800, 0, 48, 8),
(203, 'MSI', 'CX700X-013HU', '17,3', 4096, 320, 'ATi Mobility Radeon HD4330 256MB', 133520, 1, 48, 8),
(204, 'HP', 'Pavilion DV6-1120EH NM629EA', '15,6', 3072, 250, 'ATi Mobility Radeon HD4530 512MB', 183992, 3, 48, 6),
(205, 'ASUS', 'F83SE-VX039', '14', 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 138320, 5, 48, 8),
(206, 'TOSHIBA', 'Satellite L300-2CE', '15,4', 2048, 250, 'Intel Graphics 4500MHD', 103600, 1, 48, 8),
(207, 'FUJITSU', 'Esprimo V6535-104061', '15,4', 4096, 320, 'Intel Graphics 4500MHD', 118320, 3, 48, 8),
(208, 'FUJITSU', 'Amilo Li 3910-UW5HU', '18,4', 4096, 320, 'Intel Graphics 4500MHD', 123920, 3, 48, 8),
(209, 'ASUS', 'K50IJ-SX025L', '15,6', 4096, 320, 'Intel Graphics 4500MHD', 125520, 3, 48, 8),
(210, 'HP', 'Presario CQ61-110eh NT353EA', '15,6', 2048, 250, 'Intel Graphics 4500MHD', 131920, 4, 48, 4),
(211, 'HP', 'ProBook 4510s VC179ES', '15,6', 3072, 320, 'Intel Graphics 4500MHD', 134320, 3, 48, 1),
(212, 'ASUS', 'F6A-3P154X', '13,3', 3072, 250, 'Intel Graphics X4500M / 256MB', 143120, 4, 48, 8),
(213, 'ASUS', 'K50IN-SX011L', '15,6', 4096, 320, 'NVIDIA GeForce G102M/512MB', 129520, 5, 48, 8),
(214, 'HP', 'Presario CQ61-120eh NL930EA', '15,6', 3072, 250, 'NVIDIA GeForce G103/512MB', 148720, 0, 48, 4),
(215, 'ACER', 'Aspire 5738ZG-422G25MN', '15,6', 2048, 250, 'NVIDIA GeForce G105/512MB', 123120, 4, 48, 4),
(216, 'MSI', 'EX720X-058HU', '17', 4096, 500, 'NVIDIA GeForce Go 9300M 256MB', 150320, 0, 48, 1),
(217, 'MSI', 'CX600X-072HU', '16', 4096, 500, 'ATi Mobility Radeon HD4330 256MB', 119120, 4, 49, 8),
(218, 'DELL', 'Inspiron 1545-110961 Red', '15,6', 2048, 320, 'ATi Mobility Radeon HD4330 512MB', 134320, 3, 49, 6),
(219, 'DELL', 'Inspiron 1545-110963 Blue', '15,6', 2048, 320, 'ATi Mobility Radeon HD4330 512MB', 134320, 0, 49, 6),
(220, 'DELL', 'Inspiron 1545-110964 White', '15,6', 2048, 320, 'ATi Mobility Radeon HD4330 512MB', 134320, 4, 49, 6),
(221, 'DELL', 'Inspiron 1545-110962 Black', '15,6', 2048, 320, 'ATi Mobility Radeon HD4330 512MB', 134320, 3, 49, 6),
(222, 'ASUS', 'F83SE-VX057D', '14', 4096, 500, 'ATi Mobility Radeon HD4570 512MB', 124720, 2, 49, 8),
(223, 'ACER', 'Aspire 5738ZG-432G25MN', '15,6', 2048, 250, 'ATi Mobility Radeon HD4570 512MB', 126320, 5, 49, 5),
(224, 'LENOVO', 'IdeaPad G550L 59-026359', '15,6', 3072, 320, 'Intel Graphics 4500MHD', 103920, 0, 49, 1),
(225, 'TOSHIBA', 'Satellite L300-2C5', '15,4', 2048, 250, 'Intel Graphics 4500MHD', 110320, 3, 49, 6),
(226, 'ACER', 'Aspire 5738Z-434G32MN', '15,6', 4096, 320, 'Intel Graphics 4500MHD', 126320, 3, 49, 6),
(227, 'ACER', 'Extensa 5635Z-431G16MN', '15,6', 1024, 160, 'Intel Graphics 4500MHD ', 94320, 1, 49, 2),
(228, 'TOSHIBA', 'Satellite L500-1EQ', '15,6', 2048, 320, 'Intel Graphics X4500M / 256MB', 103920, 1, 49, 1),
(229, 'ASUS', 'K50IJ-SX148L', '15,6', 2048, 250, 'Intel Graphics X4500M / 256MB', 103920, 1, 49, 8),
(230, 'TOSHIBA', 'Satellite L500-1GE', '15,6', 4096, 320, 'Intel Graphics X4500M / 256MB', 103920, 4, 49, 1),
(231, 'ASUS', 'K50IJ-SX151L', '15,6', 3072, 250, 'Intel Graphics X4500M / 256MB', 110320, 5, 49, 8),
(232, 'ASUS', 'K50IJ-SX151V', '15,6', 3072, 250, 'Intel Graphics X4500M / 256MB', 119920, 0, 49, 9),
(233, 'ASUS', 'K50IJ-SX124L', '15,6', 4096, 320, 'Intel Graphics X4500M / 256MB', 120400, 1, 49, 8),
(234, 'ASUS', 'K70IJ-TY042L', '17,3', 4096, 320, 'Intel Graphics X4500M / 256MB', 131920, 1, 49, 8),
(235, 'ASUS', 'K50IN-SX153L', '15,6', 3072, 250, 'NVIDIA GeForce G102M/512MB', 111920, 2, 49, 2),
(236, 'ASUS', 'K50IN-SX154L', '15,6', 4096, 320, 'NVIDIA GeForce G102M/512MB', 115920, 5, 49, 2),
(237, 'ASUS', 'K50IN-SX153V', '15,6', 3072, 250, 'NVIDIA GeForce G102M/512MB', 127920, 4, 49, 9),
(238, 'ASUS', 'K70IO-TY073L', '17,3', 4096, 320, 'NVIDIA GeForce GT120M 1GB', 138320, 2, 49, 8),
(239, 'ASUS', 'K70IO-TY068V', '17,3', 4096, 250, 'NVIDIA GeForce GT120M 1GB', 156720, 0, 49, 9),
(240, 'ASUS', 'K61IC-JX018D', '15,6', 4096, 500, 'NVIDIA GeForce GT220M 1GB', 143920, 1, 49, 8),
(241, 'LENOVO', 'U350 BLACK', '13,3', 2048, 250, 'Intel Graphics 4500MHD', 111920, 0, 51, 4),
(242, 'MSI', 'X340-037HU', '13,4', 2048, 320, 'Intel Graphics 4500MHD', 135920, 5, 51, 6),
(243, 'LENOVO', 'IdeaPad S12 Black', '12', 1024, 160, 'VIA S3 Chrome 9', 97520, 4, 52, 12),
(244, 'LENOVO', 'IdeaPad S12 White', '12', 1024, 160, 'VIA S3 Chrome 9', 97520, 4, 52, 12),
(245, 'ASUS', 'K51AC-SX037D', '15,6', 2048, 250, 'ATi Mobility Radeon HD3200 256MB', 98320, 1, 53, 8),
(246, 'ASUS', 'K50AB-SX073D', '15,6', 3072, 250, 'ATi Mobility Radeon HD4570 512MB', 107120, 5, 53, 8);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_11_07_080701_create_processzors_table', 1),
(5, '2025_11_07_080705_create_oprendszers_table', 1),
(6, '2025_11_07_080710_create_geps_table', 1),
(7, '2025_11_07_080713_create_messages_table', 1),
(8, '2025_11_07_080716_add_role_to_users_table', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `oprendszer`
--

CREATE TABLE `oprendszer` (
  `id` int(11) NOT NULL,
  `nev` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `oprendszer`
--

INSERT INTO `oprendszer` (`id`, `nev`) VALUES
(1, 'FreeDOS'),
(2, 'Linux'),
(3, 'Microsoft Vista Business'),
(4, 'Microsoft Vista Home Basic HU'),
(5, 'Microsoft Vista Home Premium'),
(6, 'Microsoft Vista Home Premium HU'),
(7, 'Microsoft Vista Home Premium HU notebook'),
(8, 'nincs'),
(9, 'Windows 7 Home Premium HU 32Bit'),
(10, 'Windows 7 Home Premium HU 64Bit'),
(11, 'Windows 7 Starter Edition HU'),
(12, 'Windows XP Home Magyar');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `processzor`
--

CREATE TABLE `processzor` (
  `id` int(11) NOT NULL,
  `gyarto` varchar(255) NOT NULL,
  `tipus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `processzor`
--

INSERT INTO `processzor` (`id`, `gyarto`, `tipus`) VALUES
(1, 'AMDh', 'Athlon 64 X2 QL64'),
(2, 'AMDIN', 'Athlon 64 X2 QL64'),
(4, 'AMD', 'Athlon TM Neo MV-40'),
(5, 'AMD', 'Mobil Sempron SI-40'),
(6, 'AMD', 'Turion64 X2 TL60'),
(7, 'AMD', 'Turion64 X2 TL64'),
(8, 'AMD', 'Turion64 X2 TL62'),
(10, 'Intel', 'Celeron 900'),
(12, 'Intel', 'Celeron Dual-Core T1600'),
(13, 'Intel', 'Celeron Dual-Core T1700'),
(14, 'Intel', 'Celeron Dual-Core T3000'),
(17, 'Intel', 'Celeron M 560'),
(18, 'Intel', 'Centrino Atom 1600'),
(19, 'Intel', 'Centrino Atom N270'),
(20, 'Intel', 'Centrino Atom N280'),
(21, 'Intel', 'Centrino Atom Z520'),
(22, 'Intel', 'Centrino Atom Z530'),
(23, 'Intel', 'Core Duo T3400'),
(24, 'Intel', 'Core2 Duo P7350'),
(25, 'Intel', 'Core2 Duo P8400'),
(26, 'Intel', 'Core2 Duo P8600'),
(27, 'Intel', 'Core2 Duo P8700'),
(28, 'Intel', 'Core2 Duo SL9400'),
(29, 'Intel', 'Core2 Duo SU7300'),
(30, 'Intel', 'Core2 Duo SU9300'),
(31, 'Intel', 'Core2 Duo SU9400'),
(32, 'Intel', 'Core2 Duo T5670'),
(34, 'Intel', 'Core2 Duo T5870'),
(35, 'Intel', 'Core2 Duo T6400'),
(36, 'Intel', 'Core2 Duo T6500'),
(37, 'Intel', 'Core2 Duo T6570'),
(38, 'Intel', 'Core2 Duo T6600'),
(39, 'Intel', 'Core2 Duo T6670'),
(40, 'Intel', 'Core2 Duo T7300'),
(41, 'Intel', 'Core2 Duo T7500'),
(42, 'Intel', 'Core2 Duo T8300'),
(43, 'Intel', 'Core2 Duo T9300'),
(44, 'Intel', 'Core2 Duo T9400'),
(45, 'Intel', 'Core2 Solo SU3500 ULV'),
(46, 'Intel', 'Pentium Dual Core SU4100'),
(48, 'Intel', 'Pentium dual-core T4200'),
(49, 'Intel', 'Pentium dual-core T4300'),
(51, 'Intel', 'Celeron M ULV723'),
(52, 'VIA', 'Via Nano ULV 2250'),
(53, 'AMD', 'Athlon 64 X2 QL65');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$12$8F3v5HsrLkL0a2XdNQ3HWuOhbgBRB71vfETR8AAxPVRybMhSnH5Gq', 'admin', NULL, '2025-11-07 07:56:58', '2025-11-07 07:56:58'),
(2, 'User', 'user@user.com', NULL, '$2y$12$BbAVsd5/WmDLMtNlhsBrFuo1Ndah.1WX1aGZzLtPj4R8dVVTl.1v.', 'user', NULL, '2025-11-07 07:56:59', '2025-11-07 07:56:59'),
(3, 'asdasfa4r2', 'asdasdsa@gmail.com', NULL, '$2y$12$8uge644Jq1WdQtdJmomVpuibnNqyHUTMprrBaNPXOmQs7eVIPja2i', 'user', NULL, '2025-11-07 08:29:17', '2025-11-07 08:29:17'),
(4, 'asdasdasdasd4', 'asdasdsa4@gmail.com', NULL, '$2y$12$qxdQfK6qGUuBeIygp1zmBuYDDRvZVSNYfznYrIb2y.WVPGsxhrhIW', 'user', NULL, '2025-11-07 08:32:19', '2025-11-07 08:32:19');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- A tábla indexei `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- A tábla indexei `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- A tábla indexei `gep`
--
ALTER TABLE `gep`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- A tábla indexei `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `oprendszer`
--
ALTER TABLE `oprendszer`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `processzor`
--
ALTER TABLE `processzor`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `gep`
--
ALTER TABLE `gep`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT a táblához `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
