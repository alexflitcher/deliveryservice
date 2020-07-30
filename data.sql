-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 30 2020 г., 19:16
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `data`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admins`
--

CREATE TABLE `admins` (
  `username` varchar(255) NOT NULL,
  `password` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `admins`
--

INSERT INTO `admins` (`username`, `password`) VALUES
('admin', '$2y$10$FFmLwUl5HmVzxSOm7f8MfecnNxdPnVRd.HqmsqIjz3TKYjxA8ipgu');

-- --------------------------------------------------------

--
-- Структура таблицы `catalogs`
--

CREATE TABLE `catalogs` (
  `id` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `family` tinytext DEFAULT NULL,
  `email` tinytext DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `verification` enum('false','true') NOT NULL DEFAULT 'false',
  `img` varchar(3000) DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id`, `name`, `family`, `email`, `phone`, `birthday`, `verification`, `img`) VALUES
(25, '123', '123', 'alexflitcher@yandex.ru', '123123123123123', '2020-06-25', 'true', 'false'),
(26, 'q2eqweqw', 'eqweqweqw', 'nicn1kolai@yandex.ru', '12312312342345345', '2020-06-11', 'true', 'false'),
(27, '123', 'dfsdf', '123@yandex.ru', '123123123123', '2020-06-03', 'false', 'false'),
(28, 'wwwwww', 'wwwww', 'qweqwe@asd.qwe', '123123123123123123123123', '2020-05-28', 'false', 'false'),
(29, 'qwe', 'dfsdf', 'nicn1ko222lai@yandex.ru', '123123123123645', '2020-06-03', 'false', 'false'),
(30, 'Привет', 'Николас11', 'qwecraftminecraf@yandex.ru1', '222222221111', '1988-05-17', 'true', '../img/_52683-25766.jpg_8113711_20200623023415.jpeg'),
(31, 'Кирилл', 'Гизатулин', 'craftminecraf@yandex.ru', '89277640847', '2006-06-25', 'true', '../img/shopping-cart_5082238_20200705232951.png'),
(32, 'Ибрагим', 'Зухратов', 'ibragimzuchratov@igil.arab', '1234567890', '2020-07-15', 'false', 'false'),
(33, 'Ибрагим', 'Зухратов', 'vbcorpxqjdoeykautu@ttirv.com', '0987654321', '2020-07-13', 'true', '../img/46825_3173997_20200705232544.png'),
(34, 'К', 'Г', 'nickolaivodnikov@yandex.ru', '123123123126756798433002195768', '2020-07-08', 'true', '../img/noimageuser.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `codesverify`
--

CREATE TABLE `codesverify` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `time_active` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `codesverify`
--

INSERT INTO `codesverify` (`id`, `id_user`, `code`, `time_active`) VALUES
(2, 24, 489526, '2020-06-02 20:47:31'),
(3, 24, 489526, '2020-06-02 20:47:31'),
(4, 24, 489526, '2020-06-06 13:51:57'),
(5, 24, 489526, '2020-06-06 13:51:59'),
(6, 26, 7246520, '2020-06-09 12:02:10'),
(7, 26, 21751961, '2020-06-09 12:15:00'),
(8, 26, 80700914, '2020-06-09 12:15:56'),
(9, 26, 5701904, '2020-06-09 12:16:14'),
(10, 26, 86313661, '2020-06-09 12:19:47'),
(11, 26, 34870459, '2020-06-09 12:30:56'),
(12, 26, 92493844, '2020-06-09 12:31:13'),
(13, 26, 87620854, '2020-06-09 12:31:36'),
(14, 26, 28734802, '2020-06-09 12:33:12'),
(15, 26, 12327205, '2020-06-09 12:33:39'),
(16, 26, 49139088, '2020-06-09 12:33:51'),
(17, 26, 66040753, '2020-06-09 12:35:05'),
(18, 26, 54900079, '2020-06-09 12:35:10'),
(19, 26, 56187650, '2020-06-09 12:36:00'),
(20, 26, 96321891, '2020-06-09 12:36:03'),
(21, 26, 13273395, '2020-06-09 12:36:29'),
(22, 26, 39168862, '2020-06-09 13:02:49'),
(23, 26, 16108540, '2020-06-09 13:13:34'),
(24, 26, 23191859, '2020-06-09 13:13:55'),
(25, 26, 77673874, '2020-06-09 13:14:09'),
(26, 26, 21966621, '2020-06-09 13:15:42'),
(27, 26, 18156385, '2020-06-09 13:15:43'),
(28, 26, 2852092, '2020-06-09 13:15:44'),
(29, 26, 61044437, '2020-06-09 13:15:44'),
(30, 26, 37184370, '2020-06-12 13:19:32'),
(31, 27, 66179673, '2020-06-09 13:24:35'),
(32, 27, 43827059, '2020-06-09 13:24:39'),
(33, 27, 81757707, '2020-06-09 13:26:43'),
(34, 26, 69055011, '2020-06-09 13:32:11'),
(35, 26, 56657456, '2020-06-09 13:33:40'),
(36, 25, 97812161, '2020-06-09 13:34:55'),
(37, 27, 45270370, '2020-06-09 13:38:44'),
(38, 27, 30619923, '2020-06-09 13:44:27'),
(39, 27, 74512795, '2020-06-09 13:44:33'),
(40, 27, 86186880, '2020-06-09 13:44:46'),
(41, 26, 62963030, '2020-06-09 13:46:02'),
(42, 26, 77299021, '2020-06-09 13:47:13'),
(43, 26, 5729769, '2020-06-09 13:49:05'),
(44, 26, 24321086, '2020-06-09 13:50:23'),
(45, 26, 11158221, '2020-06-09 13:54:30'),
(46, 25, 62065146, '2020-06-09 13:55:24'),
(47, 25, 6123553, '2020-06-09 13:55:28'),
(48, 25, 15226488, '2020-06-09 13:56:31'),
(49, 27, 91002428, '2020-06-09 13:57:40'),
(50, 27, 28365801, '2020-06-09 13:57:44'),
(51, 27, 41744387, '2020-06-09 13:58:47'),
(52, 27, 47657006, '2020-06-09 13:58:51'),
(53, 25, 47692751, '2020-06-13 13:57:45'),
(54, 25, 52428566, '2020-06-13 13:59:52'),
(55, 25, 52510908, '2020-06-13 14:01:17'),
(56, 25, 86779204, '2020-06-13 14:04:12'),
(57, 25, 86856621, '2020-06-13 14:05:22'),
(58, 26, 64018590, '2020-06-13 15:23:41'),
(59, 26, 15173159, '2020-06-16 21:17:28'),
(60, 26, 97838473, '2020-06-16 21:17:29'),
(61, 30, 84930610, '2020-06-24 20:21:15'),
(62, 30, 95545959, '2020-06-25 01:32:12'),
(63, 30, 69831698, '2020-06-25 01:33:09'),
(64, 30, 72697073, '2020-06-25 01:33:09'),
(65, 30, 92393883, '2020-06-25 01:33:52'),
(66, 30, 54945698, '2020-06-25 01:33:53'),
(67, 30, 32077175, '2020-06-25 01:36:20'),
(68, 30, 15130847, '2020-06-25 01:36:34'),
(69, 30, 87413817, '2020-06-25 01:36:49'),
(70, 30, 73692845, '2020-06-25 01:41:45'),
(71, 30, 71812837, '2020-06-25 01:41:56'),
(72, 30, 90633525, '2020-06-25 03:34:43'),
(73, 30, 37635955, '2020-06-25 03:43:20'),
(74, 30, 55778272, '2020-06-25 03:51:11'),
(75, 30, 65515275, '2020-06-25 03:52:29'),
(76, 30, 67255324, '2020-06-25 03:52:53'),
(77, 30, 29001561, '2020-06-25 03:53:48'),
(78, 30, 95380139, '2020-06-25 03:55:24'),
(79, 30, 66718360, '2020-06-25 03:56:03'),
(80, 30, 47077928, '2020-06-25 03:56:50'),
(81, 30, 37388674, '2020-06-25 03:57:32'),
(82, 30, 77325568, '2020-06-25 03:58:19'),
(83, 30, 91568886, '2020-06-25 04:00:21'),
(84, 30, 42429450, '2020-06-25 04:04:21'),
(85, 30, 60821098, '2020-06-27 04:06:22'),
(86, 30, 43618856, '2020-06-25 15:46:15'),
(87, 31, 80520309, '2020-06-26 02:55:36'),
(88, 31, 97635919, '2020-06-26 02:56:27'),
(89, 31, 55581943, '2020-06-26 17:00:16'),
(90, 31, 13454027, '2020-06-26 17:00:16'),
(91, 31, 75665834, '2020-06-26 22:53:55'),
(92, 31, 81953547, '2020-06-27 00:13:51'),
(93, 31, 56026710, '2020-06-27 00:13:53'),
(94, 31, 16399737, '2020-06-27 00:31:05'),
(95, 31, 10846562, '2020-06-27 12:33:25'),
(96, 31, 19010685, '2020-06-27 12:52:27'),
(97, 31, 74188609, '2020-07-01 17:20:13'),
(98, 31, 56777841, '2020-07-01 19:07:40'),
(99, 31, 49855836, '2020-07-01 19:09:46'),
(100, 31, 78754547, '2020-07-01 19:09:46'),
(101, 31, 20864418, '2020-07-01 19:10:32'),
(102, 31, 52590031, '2020-07-01 19:10:54'),
(103, 31, 1895172, '2020-07-01 23:13:44'),
(104, 31, 25956771, '2020-07-03 01:44:40'),
(105, 31, 69733382, '2020-07-04 01:42:09'),
(106, 31, 47194398, '2020-07-04 02:16:29'),
(107, 31, 89662590, '2020-07-04 02:40:45'),
(108, 32, 31945115, '2020-07-07 23:14:27'),
(109, 32, 40268940, '2020-07-07 23:14:28'),
(110, 32, 49560175, '2020-07-07 23:14:28'),
(111, 33, 92626111, '2020-07-07 23:16:32'),
(112, 31, 28796858, '2020-07-07 23:17:47'),
(113, 33, 65909391, '2020-07-07 23:24:29'),
(114, 31, 46035005, '2020-07-08 00:26:36'),
(115, 31, 1323566, '2020-07-09 18:42:25'),
(116, 34, 58570443, '2020-07-09 20:09:25'),
(117, 31, 32056265, '2020-07-09 20:13:07'),
(118, 31, 81339735, '2020-07-10 09:55:57'),
(119, 31, 99691123, '2020-07-11 15:06:21'),
(120, 31, 90535155, '2020-07-11 15:06:22'),
(121, 31, 14482161, '2020-07-15 02:20:43'),
(122, 31, 64259629, '2020-07-15 12:46:06'),
(123, 31, 90039414, '2020-07-15 12:46:15');

-- --------------------------------------------------------

--
-- Структура таблицы `executives`
--

CREATE TABLE `executives` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `family` varchar(255) NOT NULL,
  `nick` varchar(255) NOT NULL,
  `phone` varchar(22) NOT NULL,
  `email` varchar(22) NOT NULL,
  `password` varchar(400) NOT NULL,
  `position` enum('admin','moderator','helper','programmer','teamlead','manager') DEFAULT 'helper'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `hash` varchar(200) NOT NULL,
  `ip` varchar(60) NOT NULL,
  `status` enum('admin','moderator','helper','programmer','teamlead','manager') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `price` varchar(20) NOT NULL,
  `rest_id` int(11) NOT NULL DEFAULT 1,
  `catalog_id` int(11) NOT NULL DEFAULT 1,
  `description` text NOT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`id`, `name`, `price`, `rest_id`, `catalog_id`, `description`, `img`) VALUES
(123, 'name', '300', 141, 12, 'desc', '../img/logo.jpeg'),
(124, 'name', '300', 141, 12, 'desc', '../img/logo.jpeg'),
(125, 'name', '300', 141, 12, 'desc', '../img/logo.jpeg'),
(126, 'name', '300', 141, 12, 'desc', '../img/logo.jpeg'),
(127, 'name', '300', 141, 12, 'desc', '../img/logo.jpeg'),
(128, 'name', '300', 141, 12, 'desc', '../img/logo.jpeg'),
(129, 'name', '300', 141, 12, 'desc', '../img/logo.jpeg'),
(130, 'name', '300', 142, 12, 'desc', '../img/logo.jpeg'),
(131, 'name', '300', 142, 12, 'desc', '../img/logo.jpeg'),
(132, 'name', '300', 142, 12, 'desc', '../img/logo.jpeg'),
(133, 'name', '300', 142, 12, 'desc', '../img/logo.jpeg'),
(134, 'name', '300', 142, 12, 'desc', '../img/logo.jpeg'),
(135, 'name', '300', 142, 12, 'desc', '../img/logo.jpeg'),
(136, 'name', '300', 142, 12, 'desc', '../img/logo.jpeg');

-- --------------------------------------------------------

--
-- Структура таблицы `productrate`
--

CREATE TABLE `productrate` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `updated` int(2) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `productrate`
--

INSERT INTO `productrate` (`id`, `id_user`, `id_product`, `updated`, `message`) VALUES
(6, 31, 128, 1, 'qwerty');

-- --------------------------------------------------------

--
-- Структура таблицы `promocodes`
--

CREATE TABLE `promocodes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateadd` date NOT NULL,
  `datedelete` datetime NOT NULL,
  `adder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `promocodes`
--

INSERT INTO `promocodes` (`id`, `name`, `dateadd`, `datedelete`, `adder`, `category`) VALUES
(2, '#QWERTY', '2016-12-12', '2018-12-12 00:00:00', 'nicolas', 'food'),
(3, '#QWERTY', '2016-12-12', '2018-12-12 00:00:00', 'nicolas', 'food'),
(4, '#QWERTY', '2016-12-12', '2018-12-12 00:00:00', 'nicolas', 'food'),
(5, '#QWERTY', '2016-12-12', '2018-12-12 00:00:00', 'nicolas', 'food'),
(6, '#QWERTY', '2016-12-12', '2018-12-12 00:00:00', 'nicolas', 'food');

-- --------------------------------------------------------

--
-- Структура таблицы `purchases`
--

CREATE TABLE `purchases` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `family` varchar(255) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `pos_menu` text NOT NULL,
  `type_pay` varchar(20) NOT NULL,
  `type_delivery` varchar(20) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` text DEFAULT NULL,
  `totalprice` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `was_pay` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `purchases`
--

INSERT INTO `purchases` (`id`, `name`, `family`, `address`, `pos_menu`, `type_pay`, `type_delivery`, `phone`, `message`, `totalprice`, `id_user`, `date`, `was_pay`) VALUES
(17, 'q2eqweqw', 'eqweqweqw', 'sdfsdf', '123,423,4', 'qwe', 'dfg', 'wer', 'sdf', 25, 26, '0000-00-00 00:00:00', 0),
(18, 'q2eqweqw', 'eqweqweqw', 'sdfsdf', '123,423,4', 'qwe', 'dfg', 'wer', 'sdf', 25, 26, '0000-00-00 00:00:00', 0),
(19, 'q2eqweqw', 'eqweqweqw', 'sdfsdf', '123,423,4', 'qwe', 'dfg', 'wer', 'sdf', 25, 26, '0000-00-00 00:00:00', 0),
(20, 'q2eqweqw', 'eqweqweqw', 'sdfsdf', '123,423,4', 'qwe', 'dfg', 'wer', 'sdf', 25, 26, '0000-00-00 00:00:00', 0),
(21, 'q2eqweqw', 'eqweqweqw', 'sdfsdf', '123,423,4', 'qwe', 'dfg', 'wer', 'sdf', 25, 26, '0000-00-00 00:00:00', 0),
(22, 'q2eqweqw', 'eqweqweqw', 'sdfsdf', '123,423,4', 'qwe', 'dfg', 'wer', 'sdf', 25, 26, '0000-00-00 00:00:00', 0),
(23, 'q2eqweqw', 'eqweqweqw', 'sdfsdf', '123,423,4', 'qwe', 'dfg', 'wer', 'sdf', 25, 26, '0000-00-00 00:00:00', 0),
(24, 'q2eqweqw', 'eqweqweqw', 'sdfsdf', '123,423,4', 'qwe', 'dfg', 'wer', 'sdf', 25, 26, '0000-00-00 00:00:00', 0),
(25, 'qwerty', 'qerty', 'st.grove', '12,32,123', 'qweryt', 'yes', '899554', 'sdfsdf', 999999, 27, '0000-00-00 00:00:00', 0),
(26, 'qwerty', 'qerty', 'st.grove', '12,32,123', 'qweryt', 'yes', '899554', 'sdfsdf', 999999, 27, '0000-00-00 00:00:00', 0),
(27, 'qwerty', 'qerty', 'st.grove', '12,32,123', 'qweryt', 'yes', '899554', 'sdfsdf', 999999, 27, '0000-00-00 00:00:00', 0),
(28, 'qwerty', 'qerty', 'st.grove', '12,32,123', 'qweryt', 'yes', '899554', 'sdfsdf', 999999, 27, '0000-00-00 00:00:00', 0),
(29, 'qwerty', 'qerty', 'st.grove', '12,32,123', 'qweryt', 'yes', '899554', 'sdfsdf', 999999, 26, '0000-00-00 00:00:00', 0),
(30, 'qwerty', 'qerty', 'st.grove', '12,32,123', 'qweryt', 'yes', '899554', 'sdfsdf', 999999, 26, '0000-00-00 00:00:00', 0),
(31, 'qwerty', 'qerty', 'st.grove', '12,32,123', 'qweryt', 'yes', '899554', 'sdfsdf', 999999, 26, '0000-00-00 00:00:00', 0),
(32, 'qwerty', 'qerty', 'st.grove', '12,32,123', 'qweryt', 'yes', '899554', 'sdfsdf', 999999, 26, '0000-00-00 00:00:00', 0),
(33, 'qwerty', 'qerty', 'st.grove', '12,32,123', 'qweryt', 'yes', '899554', 'sdfsdf', 999999, 26, '0000-00-00 00:00:00', 0),
(34, 'qwerty', 'qerty', 'st.grove', '12,32,123', 'qweryt', 'yes', '899554', 'sdfsdf', 999999, 26, '0000-00-00 00:00:00', 0),
(35, 'qwerty', 'qerty', 'st.grove', '12,32,123', 'qweryt', 'yes', '899554', 'sdfsdf', 999999, 26, '0000-00-00 00:00:00', 0),
(36, 'qwerty', 'qerty', 'st.grove', '12,32,123', 'qweryt', 'yes', '899554', 'sdfsdf', 999999, 26, '0000-00-00 00:00:00', 0),
(37, 'qwerty', 'qerty', 'st.grove', '12,32,123', 'qweryt', 'yes', '899554', 'sdfsdf', 999999, 26, '0000-00-00 00:00:00', 0),
(38, 'qwerty', 'qerty', 'st.grove', '12,32,123', 'qweryt', 'yes', '899554', 'sdfsdf', 999999, 26, '0000-00-00 00:00:00', 0),
(39, 'qwerty', 'qerty', 'st.grove', '12,32,123', 'qweryt', 'yes', '899554', 'sdfsdf', 99999999, 26, '0000-00-00 00:00:00', 0),
(40, 'qwerty', 'qerty', 'st.grove', '12,32,123', 'qweryt', 'yes', '899554', 'sdfsdf', 99999999, 26, '0000-00-00 00:00:00', 0),
(41, 'qwerty', 'qerty', 'st.grove', '12,32,123', 'qweryt', 'yes', '899554', 'sdfsdf', 99999999, 26, '0000-00-00 00:00:00', 0),
(42, 'qwerty', 'qerty', 'st.grove', '12,32,123', 'qweryt', 'yes', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(43, 'qwerty', 'qerty', 'st.grove', '12,32,123', 'qweryt', 'yes', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(44, 'qwerty', 'qerty', 'st.grove', '12,32,123', 'qweryt', 'yes', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(45, 'qwerty', 'qerty', 'st.grove', '12,32,123', 'qweryt', 'yes', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(46, 'qwerty', 'qerty', 'st.grove', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(47, 'qwerty', 'qerty', 'st.grove', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(48, 'qwerty', 'qerty', 'st.grove', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(49, 'qwerty', 'qerty', 'st.grove', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(50, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgdfgdfggdfgdfgove', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(51, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgdfgdfggdfgdfgove', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(52, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(53, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(54, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(55, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(56, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(57, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(58, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(59, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(60, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(61, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(62, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(63, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(64, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(65, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(66, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(67, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(68, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(69, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(70, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(71, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(72, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(73, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(74, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(75, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(76, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(77, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(78, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(79, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(80, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(81, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(82, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(83, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(84, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(85, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(86, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(87, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(88, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(89, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(90, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(91, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(92, 'qwerty', 'qerty', 'st.grdfgdfgdfgdfgd', '12,32,123', 'qweryt', 'yesyesy', '899554', 'sdfsdf', 999999999, 26, '0000-00-00 00:00:00', 0),
(93, 'Кирилл', 'Гизатулин', 'qwe', '67', 'online_pay', 'courier', '89277640847', 'qweqweqwe', 123, 31, '2020-06-25 14:32:44', 0),
(94, 'Кирилл', 'Гизатулин', 'йцу', '67', 'online_pay', 'courier', '89277640847', 'qweqwew', 123, 31, '2020-06-25 14:36:21', 0),
(95, 'Кирилл', 'Гизатулин', 'йцу', '', 'online_pay', 'courier', '89277640847', 'qweqwew', 0, 31, '2020-06-25 14:37:27', 0),
(96, 'Кирилл', 'Гизатулин', 'qwerty ', '67,67,67,67,67,67,67', 'online_pay', 'courier', '89277640847', 'qweqweqweqwe', 861, 31, '2020-06-25 14:38:25', 0),
(97, 'Кирилл', 'Гизатулин', 'qwe', '92,92,92,92,92,92,92,92,92,92,92,92,92,92,92', 'online_pay', 'courier', '89277640847', 'qweqweqwe', 1845, 31, '2020-06-25 14:39:58', 0),
(98, 'Кирилл', 'Гизатулин', 'qwe', '68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68,68', 'online_pay', 'courier', '89277640847', 'qweqwe', 6519, 31, '2020-06-25 14:40:46', 0),
(99, 'Кирилл', 'Гизатулин', 'qwe', '', 'online_pay', 'courier', '89277640847', 'qweqwe', 0, 31, '2020-06-25 14:40:49', 0),
(100, 'Ибрагим', 'Зухратов', 'Улица Пушкина', '131,131', 'online_pay', 'courier', '0987654321', 'Пусть курьер будет чёрным blm', 600, 33, '2020-07-05 20:29:51', 0),
(101, 'Ибрагим', 'Зухратов', 'Улица Пушкина', '', 'online_pay', 'courier', '0987654321', 'Пусть курьер будет чёрным blm', 0, 33, '2020-07-05 20:30:05', 0),
(102, 'Ибрагим', 'Зухратов', 'Улица Пушкина', '', 'online_pay', 'courier', '0987654321', 'Пусть курьер будет чёрным blm', 0, 33, '2020-07-05 20:30:05', 0),
(103, 'Ибрагим', 'Зухратов', 'Улица Пушкина', '', 'online_pay', 'courier', '0987654321', 'Пусть курьер будет чёрным blm', 0, 33, '2020-07-05 20:30:05', 0),
(104, 'Кирилл', 'Гизатулин', 'qweqwe', '124', 'online_pay', 'courier', '89277640847', '123', 300, 31, '2020-07-05 20:30:29', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `restaraunts`
--

CREATE TABLE `restaraunts` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `director` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(33) DEFAULT NULL,
  `img` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `restaraunts`
--

INSERT INTO `restaraunts` (`id`, `name`, `director`, `address`, `phone`, `img`) VALUES
(141, 'REstname', 'I.I Actor', 'st. Pushkina', '892777641122', '../img/logo.jpeg'),
(142, 'REstname', 'I.I Actor', 'st. Pushkina', '892777641122', '../img/logo.jpeg'),
(143, 'REstname', 'I.I Actor', 'st. Pushkina', '892777641122', '../img/logo.jpeg'),
(144, 'REstname', 'I.I Actor', 'st. Pushkina', '892777641122', '../img/logo.jpeg'),
(145, 'REstname', 'I.I Actor', 'st. Pushkina', '892777641122', '../img/logo.jpeg'),
(146, 'REstname', 'I.I Actor', 'st. Pushkina', '892777641122', '../img/logo.jpeg'),
(147, 'REstname', 'I.I Actor', 'st. Pushkina', '892777641122', '../img/logo.jpeg'),
(148, 'REstname', 'I.I Actor', 'st. Pushkina', '892777641122', '../img/logo.jpeg'),
(149, 'REstname', 'I.I Actor', 'st. Pushkina', '892777641122', '../img/logo.jpeg'),
(150, 'REstname', 'I.I Actor', 'st. Pushkina', '892777641122', '../img/logo.jpeg'),
(151, 'REstname', 'I.I Actor', 'st. Pushkina', '892777641122', '../img/logo.jpeg'),
(152, 'REstname', 'I.I Actor', 'st. Pushkina', '892777641122', '../img/logo.jpeg'),
(153, 'REstname', 'I.I Actor', 'st. Pushkina', '892777641122', '../img/logo.jpeg');

-- --------------------------------------------------------

--
-- Структура таблицы `restrate`
--

CREATE TABLE `restrate` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_rest` int(11) DEFAULT NULL,
  `reply` int(11) NOT NULL DEFAULT 0,
  `updated` int(1) DEFAULT 0,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `restrate`
--

INSERT INTO `restrate` (`id`, `id_user`, `id_rest`, `reply`, `updated`, `message`) VALUES
(34, 31, 141, 0, 1, 'fds'),
(35, 31, 141, 0, 1, 'qqwe'),
(36, 31, 142, 0, 1, 'qwe'),
(37, 31, 142, 0, 1, '&quot;\'qwer'),
(38, 34, 141, 0, 1, 'Кры кря\nйцук');

-- --------------------------------------------------------

--
-- Структура таблицы `verifications`
--

CREATE TABLE `verifications` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `verifications`
--

INSERT INTO `verifications` (`id`, `id_user`, `url`) VALUES
(28, 24, '7e0I7dnDC7JtzWCJTcrOVQiqbAi2cRmL'),
(31, 27, 'PY2pPagOSvVtfNA2DLNZT3d407qgf30A'),
(32, 28, 'tJAQJd6PyuxVTpdIbURD4glMCOVIpNql'),
(33, 29, '3nm8OuIQ9zAiRF6ZRJHuAqA42B7pwh2c'),
(36, 32, 'sahTsu5HLCOQldgJzK0jQrCzdQmF9ku2');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `catalogs`
--
ALTER TABLE `catalogs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `codesverify`
--
ALTER TABLE `codesverify`
  ADD PRIMARY KEY (`id`,`id_user`);

--
-- Индексы таблицы `executives`
--
ALTER TABLE `executives`
  ADD PRIMARY KEY (`id`,`phone`,`email`,`nick`);

--
-- Индексы таблицы `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `productrate`
--
ALTER TABLE `productrate`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `promocodes`
--
ALTER TABLE `promocodes`
  ADD PRIMARY KEY (`id`,`name`);

--
-- Индексы таблицы `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `restaraunts`
--
ALTER TABLE `restaraunts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `restrate`
--
ALTER TABLE `restrate`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `verifications`
--
ALTER TABLE `verifications`
  ADD PRIMARY KEY (`id`,`id_user`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `catalogs`
--
ALTER TABLE `catalogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `codesverify`
--
ALTER TABLE `codesverify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT для таблицы `executives`
--
ALTER TABLE `executives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT для таблицы `productrate`
--
ALTER TABLE `productrate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `promocodes`
--
ALTER TABLE `promocodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT для таблицы `restaraunts`
--
ALTER TABLE `restaraunts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT для таблицы `restrate`
--
ALTER TABLE `restrate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `verifications`
--
ALTER TABLE `verifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
